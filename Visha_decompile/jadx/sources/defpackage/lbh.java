package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import com.google.android.gms.ads.internal.client.zzbd;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.Set;
import java.util.concurrent.Callable;

public final class lbh implements eeh {
    public final g8i a;
    public final ViewGroup b;
    public final Context c;
    public final Set d;

    public lbh(g8i g8iVar, ViewGroup viewGroup, Context context, Set set) {
        this.a = g8iVar;
        this.d = set;
        this.b = viewGroup;
        this.c = context;
    }

    public static mbh a(lbh lbhVar) {
        if (((Boolean) zzbd.zzc().b(cye.T5)).booleanValue() && lbhVar.b != null && lbhVar.d.contains("banner")) {
            return new mbh(Boolean.valueOf(lbhVar.b.isHardwareAccelerated()));
        }
        Boolean boolValueOf = null;
        if (((Boolean) zzbd.zzc().b(cye.U5)).booleanValue() && lbhVar.d.contains(PluginErrorDetails.Platform.NATIVE)) {
            Context context = lbhVar.c;
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                Window window = activity.getWindow();
                if (window == null || (window.getAttributes().flags & 16777216) == 0) {
                    try {
                        boolValueOf = Boolean.valueOf((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) != 0);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                } else {
                    boolValueOf = Boolean.TRUE;
                }
                return new mbh(boolValueOf);
            }
        }
        return new mbh(null);
    }

    @Override
    public final int zza() {
        return 22;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return lbh.a(this.b);
            }
        });
    }
}
