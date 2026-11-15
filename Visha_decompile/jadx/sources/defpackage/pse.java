package defpackage;

import android.app.Activity;
import android.view.View;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.e0;

public final class pse extends tte {
    public final Activity i;
    public final View j;

    public pse(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2, View view, Activity activity) {
        super(e0Var, "pU4fz37mUnFskzkjpWeE6FeP4zxun0Vi/cHUa+ShQyzwB7kVjKkTqY+tD4Acjs+V", "Xr6iV2TsXBCx3do6H/9RIpbcZekNyEQeKhEDMIoivd0=", ooeVar, i, 62);
        this.j = view;
        this.i = activity;
    }

    @Override
    public final void a() {
        View view = this.j;
        if (view == null) {
            return;
        }
        Boolean bool = (Boolean) zzbd.zzc().b(cye.P2);
        boolean zBooleanValue = bool.booleanValue();
        Object[] objArr = (Object[]) this.f.invoke(null, view, this.i, bool);
        ooe ooeVar = this.e;
        synchronized (ooeVar) {
            try {
                ooeVar.c0(((Long) objArr[0]).longValue());
                ooeVar.e0(((Long) objArr[1]).longValue());
                if (zBooleanValue) {
                    ooeVar.d0((String) objArr[2]);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
