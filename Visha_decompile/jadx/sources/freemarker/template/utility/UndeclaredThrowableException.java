package freemarker.template.utility;

public class UndeclaredThrowableException extends RuntimeException {
    public UndeclaredThrowableException(Throwable th) {
        super(th);
    }

    public Throwable getUndeclaredThrowable() {
        return getCause();
    }

    public UndeclaredThrowableException(String str, Throwable th) {
        super(str, th);
    }
}
