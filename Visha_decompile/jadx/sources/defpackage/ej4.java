package defpackage;

import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;

public class ej4 implements lu8 {
    public Status b;
    public GoogleSignInAccount c;

    public ej4(GoogleSignInAccount googleSignInAccount, Status status) {
        this.c = googleSignInAccount;
        this.b = status;
    }

    public GoogleSignInAccount a() {
        return this.c;
    }

    @Override
    public Status getStatus() {
        return this.b;
    }
}
