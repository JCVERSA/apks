package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import defpackage.cj4;
import defpackage.e4e;
import defpackage.qfb;
import defpackage.tx9;

public final class zbt extends zbo {
    private final Context zba;

    public zbt(Context context) {
        this.zba = context;
    }

    private final void zbd() {
        if (qfb.a(this.zba, Binder.getCallingUid())) {
            return;
        }
        throw new SecurityException("Calling UID " + Binder.getCallingUid() + " is not Google Play services.");
    }

    @Override
    public final void zbb() {
        zbd();
        e4e.a(this.zba).b();
    }

    @Override
    public final void zbc() {
        zbd();
        tx9 tx9VarB = tx9.b(this.zba);
        GoogleSignInAccount googleSignInAccountC = tx9VarB.c();
        GoogleSignInOptions googleSignInOptionsD = GoogleSignInOptions.DEFAULT_SIGN_IN;
        if (googleSignInAccountC != null) {
            googleSignInOptionsD = tx9VarB.d();
        }
        cj4 cj4VarA = com.google.android.gms.auth.api.signin.a.a(this.zba, googleSignInOptionsD);
        if (googleSignInAccountC != null) {
            cj4VarA.v();
        } else {
            cj4VarA.w();
        }
    }
}
