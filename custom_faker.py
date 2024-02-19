from faker import Faker
from faker.providers import BaseProvider
import random


class TheMagicSchool(BaseProvider):
    def __init__(self, generator):
        super().__init__(generator)
        self.all_subjects = ["Charms", "Transfiguration", "Potions", "Defense Against the Dark Arts", "Herbology", "History of Magic",
                             "Astronomy", "Divination", "Care of Magical Creatures", "Arithmancy", "Muggle Studies", "Ancient Runes", "Alchemy"]

        self.all_groups = ["Gryffindor", "Ravenclaw", "Hufflepuff",
                           "Slytherin", "Order of the Phoenix", "Death Eaters"]

        self.all_professors = ["Minerva McGonagall", "Severus Snape", "Filius Flitwick", "Sybill Trelawney", "Pomona Sprout", "Quirinus Quirrell", "Gilderoy Lockhart", "Remus Lupin",
                               "Barty Crouch Jr.", "Dolores Umbridge", "Horace Slughorn", "Hagrid", "Cuthbert Binns", "Bathsheda Babbling", "Charity Burbage", "Septima Vector", "Aurora Sinistra"]

        self.subject = self.all_subjects[:]
        self.group = self.all_groups[:]
        self.professor = self.all_professors[:]

    def subjects(self):
        if not self.subject:
            self.subject = self.all_subjects[:]
        random.shuffle(self.subject)
        return self.subject.pop()

    def groups(self):
        if not self.group:
            self.group = self.all_groups[:]
        random.shuffle(self.group)
        return self.group.pop()

    def professors(self):
        if not self.professor:
            self.professor = self.all_professors[:]
        random.shuffle(self.professor)
        return self.professor.pop()


class CustomFaker(Faker):
    def __init__(self, locale='en-US'):
        super().__init__(locale)
        self.add_provider(TheMagicSchool)


if __name__ == "__main__":
    print("custom faker")
