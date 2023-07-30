package src2.Exeptions;

public class UncorrectDataException extends RuntimeException{
    
    public UncorrectDataException (String msg) {
        super(msg);
    }
}