package defpackage;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;

public final class e4e {
    public static e4e d;
    public final tx9 a;
    public GoogleSignInAccount b;
    public GoogleSignInOptions c;

    public e4e(Context context) {
        tx9 tx9VarB = tx9.b(context);
        this.a = tx9VarB;
        this.b = tx9VarB.c();
        this.c = tx9VarB.d();
    }

    public static synchronized e4e a(Context context) {
        return d(context.getApplicationContext());
    }

    public static synchronized e4e d(Context context) {
        e4e e4eVar = d;
        if (e4eVar != null) {
            return e4eVar;
        }
        e4e e4eVar2 = new e4e(context);
        d = e4eVar2;
        return e4eVar2;
    }

    public final synchronized void b() {
        this.a.a();
        this.b = null;
        this.c = null;
    }

    public final synchronized void c(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        this.a.f(googleSignInAccount, googleSignInOptions);
        this.b = googleSignInAccount;
        this.c = googleSignInOptions;
    }
}
