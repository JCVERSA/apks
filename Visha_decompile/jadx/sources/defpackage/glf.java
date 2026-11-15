package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;

public final class glf implements fyi {
    public final qyi a;
    public final qyi b;

    public glf(qyi qyiVar, qyi qyiVar2) {
        this.a = qyiVar;
        this.b = qyiVar2;
    }

    @Override
    public final Object zzb() {
        try {
            return mpc.a(((skf) this.a).a()).f(((ApplicationInfo) this.b.zzb()).packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }
}
