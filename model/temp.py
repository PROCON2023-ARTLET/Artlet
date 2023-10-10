# import prediction 

class temporary_prediction_value:
    # Constructor method (called when an object is created)
    def __init__(self, name_pred, percent_pred ):
        self.pred = name_pred
        self.percent_prob = percent_pred
    # Instance method
    def my_method(self):
        print(f"{self.pred}, {self.percent_prob}")

# Creating an instance of MyClass
# temporary_prediction_value = temporary_prediction_value()

# # Accessing instance variables
# print(temporary_prediction_value.pred)  # Output: Hello
# print(temporary_prediction_value.percent_prob)  # Output: World

# Calling an instance method
# temporary_prediction_value.my_method()  # Output: This is an instance method. Parameters: Hello, World
