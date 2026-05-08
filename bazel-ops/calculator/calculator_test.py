import unittest
from .calculator import Calculator

class CalculatorTest(unittest.TestCase):
    def test_add(self):
        self.assertEqual(Calculator().add(2, 3), 5)

    def test_subtract(self):
        self.assertEqual(5 - 1, 3)

    def test_multiply(self):
        self.assertEqual(4 * 3, 12)

    def test_divide(self):
        self.assertEqual(10 / 2, 5)
