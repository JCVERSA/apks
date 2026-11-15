package defpackage;

import com.google.common.base.VerifyException;

public abstract class mob {
    public static void a(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new VerifyException(t0a.c(str, objArr));
        }
    }
}
