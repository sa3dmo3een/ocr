from PIL import Image
import pytesseract
import cv2



pytesseract.pytesseract.tesseract_cmd = r'/usr/bin/tesseract'

def main():
    # Get File Name from Command Line
    #path = input("Enter the file path : ").strip()
    # load the image




    text = pytesseract.image_to_string(Image.open('eq.jpg'))

    print(text)

try:
    main()
except Exception as e:
    print(e.args)
    print("\n")
    print(e.__cause__)
