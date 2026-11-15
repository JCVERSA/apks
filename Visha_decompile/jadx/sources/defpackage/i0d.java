package defpackage;

public class i0d extends f0d {
    public i0d(Throwable th) {
        super(th);
    }

    @Override
    public String a(Object obj) {
        String message = ((Throwable) obj).getMessage();
        return (message == null || message.length() == 0) ? "[No exception message]" : message;
    }
}
