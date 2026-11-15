package defpackage;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;

public final class p3e implements lu8 {
    public final Status b;
    public final Credential c;

    public p3e(Status status, Credential credential) {
        this.b = status;
        this.c = credential;
    }

    @Override
    public final Status getStatus() {
        return this.b;
    }
}
