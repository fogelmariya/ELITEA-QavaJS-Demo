
public class calculator {
    public static double add(double num1, double num2){
        return num1 + num2;
    }
    public static double subtract(double num1, double num2){
        return num1 - num2;
    }

    public static double multiply(double num1, double num2){
        return num1 * num2;
    }
    public static double divide(double num1, double num2){
        return num1 / num2;
    }

    public static void main(String[] args) {
        System.out.println("Addition: " + add(5, 3));
        System.out.println("Subtraction: " + subtract(5, 3));
        System.out.println("Multiplication: " + multiply(5, 3));
        System.out.println("Division: " + divide(5, 3));
    }
}

