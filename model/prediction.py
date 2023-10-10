import pickle 
from going_modular.going_modular.predictions import pred_and_plot_image
from temp import temporary_prediction_value

with open('pretrained_vit.pkl','rb') as file:
    mod = pickle.load(file)

class_names = ['adag_i','adag_o','dund_e','eh_a','gedes']



# Setup custom image path
custom_image_path = "test_o.png"


# Make predictions on the custom image
pred, prob = pred_and_plot_image(model=mod,
                    image_path=custom_image_path,
                    class_names=class_names)

prob *= 100
percent_prob = f"{prob:.1f}"

percent_prob = str(percent_prob)
percent_prob +='%'
# print(pred ,percent_prob,'%')

value = temporary_prediction_value(pred, percent_prob)
value.my_method()



