package defpackage;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.a;
import java.util.Objects;

public abstract class b5e extends hgf {
    public final int d;
    public final Bundle e;
    public final a f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b5e(a aVar, int i, Bundle bundle) {
        super(aVar, Boolean.TRUE);
        Objects.requireNonNull(aVar);
        this.f = aVar;
        this.d = i;
        this.e = bundle;
    }

    @Override
    public final void a(Object obj) {
        int i = this.d;
        if (i != 0) {
            this.f.v(1, null);
            Bundle bundle = this.e;
            f(new ConnectionResult(i, bundle != null ? (PendingIntent) bundle.getParcelable(a.KEY_PENDING_INTENT) : null));
        } else {
            if (e()) {
                return;
            }
            this.f.v(1, null);
            f(new ConnectionResult(8, null));
        }
    }

    public abstract boolean e();

    public abstract void f(ConnectionResult connectionResult);
}
