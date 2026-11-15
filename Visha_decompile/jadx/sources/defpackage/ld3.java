package defpackage;

import android.os.TransactionTooLargeException;

public abstract class ld3 {
    public static final boolean b(Throwable th) {
        if (th instanceof TransactionTooLargeException) {
            return true;
        }
        Throwable cause = th.getCause();
        return cause != null && b(cause);
    }
}
