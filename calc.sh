###############################################################################
#             Generated with copilot and modified by Marco Guido              #
###############################################################################
# When the program is first loaded, display a greeting to the user.
# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit
# Then, capture the user selection.
# If the selection matches a supported operation, execute the operation.
# If the selection does not match a support operation, display an error message.
# When the operation is complete, redisplay the menu.

calc(){
    echo ""
    echo "Welcome to the calculator!"
    echo "Please select an operation:"
    echo "1. Add"
    echo "2. Subtract"
    echo "3. Exit"
    read operation
    operation="${operation,,}"
    echo "You've selected ${operation}"
    case $operation in
      1 | add)
        echo "Please enter two numbers to add:"
        read -p "Enter the first number: " num1
        read -p "Enter the second number: " num2
        echo "The sum of $num1 and $num2 is: " $((num1 + num2))
	calc
        ;;
      2 | sustract)
        echo "Please enter two numbers to subtract:"
        read -p "Enter the first number: " num1
        read -p "Enter the second number: " num2
        echo "The difference of $num1 and $num2 is: " $((num1 - num2))
	calc
        ;;
      3 | exit)
        echo "Goodbye!"
        exit
        ;;
      *)
        echo "Invalid operation. Please try again."
        calc
        ;;
    esac
}
calc
