package defpackage;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.b;
import com.google.android.gms.dynamite.DynamiteModule;

public class cj4 extends b {
    public static final f3e k = new f3e(null);
    public static int l = 1;

    public cj4(Context context, GoogleSignInOptions googleSignInOptions) {
        super(context, n20.c, googleSignInOptions, new td());
    }

    public xda v() {
        return l08.b(b4e.b(d(), n(), x() == 3));
    }

    public xda w() {
        return l08.b(b4e.c(d(), n(), x() == 3));
    }

    public final synchronized int x() {
        int i;
        try {
            i = l;
            if (i == 1) {
                Context contextN = n();
                zi4 zi4VarO = zi4.o();
                int i2 = zi4VarO.i(contextN, 12451000);
                if (i2 == 0) {
                    i = 4;
                    l = 4;
                } else if (zi4VarO.c(contextN, i2, null) != null || DynamiteModule.a(contextN, "com.google.android.gms.auth.api.fallback") == 0) {
                    i = 2;
                    l = 2;
                } else {
                    i = 3;
                    l = 3;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return i;
    }
}
