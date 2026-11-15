package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.lang.ref.WeakReference;

public final class mkf {
    public VersionInfoParcel a;
    public Context b;
    public long c;
    public WeakReference d;

    public final mkf d(long j) {
        this.c = j;
        return this;
    }

    public final mkf e(Context context) {
        this.d = new WeakReference(context);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        this.b = context;
        return this;
    }

    public final mkf f(VersionInfoParcel versionInfoParcel) {
        this.a = versionInfoParcel;
        return this;
    }
}
