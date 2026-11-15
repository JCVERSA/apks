package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzbkl;
import com.google.android.gms.internal.ads.zzbou;

public final class q4f {
    public final Context a;
    public final OnH5AdsEventListener b;
    public zzbkl c;

    public q4f(Context context, OnH5AdsEventListener onH5AdsEventListener) {
        wd8.p(true, "Android version must be Lollipop or higher");
        wd8.l(context);
        wd8.l(onH5AdsEventListener);
        this.a = context;
        this.b = onH5AdsEventListener;
        cye.a(context);
    }

    public static final boolean c(String str) {
        if (!((Boolean) zzbd.zzc().b(cye.aa)).booleanValue()) {
            return false;
        }
        wd8.l(str);
        if (str.length() > ((Integer) zzbd.zzc().b(cye.ca)).intValue()) {
            zzo.zze("H5 GMSG exceeds max length");
            return false;
        }
        Uri uri = Uri.parse(str);
        return "gmsg".equals(uri.getScheme()) && "mobileads.google.com".equals(uri.getHost()) && "/h5ads".equals(uri.getPath());
    }

    public final void a() {
        if (((Boolean) zzbd.zzc().b(cye.aa)).booleanValue()) {
            d();
            zzbkl zzbklVar = this.c;
            if (zzbklVar != null) {
                try {
                    zzbklVar.zze();
                } catch (RemoteException e) {
                    zzo.zzl("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final boolean b(String str) {
        if (!c(str)) {
            return false;
        }
        d();
        zzbkl zzbklVar = this.c;
        if (zzbklVar == null) {
            return false;
        }
        try {
            zzbklVar.zzf(str);
            return true;
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            return true;
        }
    }

    public final void d() {
        if (this.c != null) {
            return;
        }
        this.c = zzbb.zza().zzn(this.a, new zzbou(), this.b);
    }
}
