package defpackage;

public abstract class nd3 {
    public static final String b(Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(th.getMessage());
        for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
            sb.append('\n');
            sb.append(cause.getMessage());
        }
        String string = sb.toString();
        y45.i(string, "result.toString()");
        return string;
    }
}
