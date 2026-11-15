package defpackage;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbft;

public final class c1f extends NativeAd.Image {
    public final zzbft a;
    public final Drawable b;
    public final Uri c;
    public final double d;
    public final int e;
    public final int f;

    public c1f(zzbft zzbftVar) {
        Drawable drawable;
        double dZzb;
        int iZzd;
        this.a = zzbftVar;
        Uri uriZze = null;
        try {
            IObjectWrapper iObjectWrapperZzf = zzbftVar.zzf();
            drawable = iObjectWrapperZzf != null ? (Drawable) ObjectWrapper.unwrap(iObjectWrapperZzf) : null;
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
        this.b = drawable;
        try {
            uriZze = this.a.zze();
        } catch (RemoteException e2) {
            zzo.zzh("", e2);
        }
        this.c = uriZze;
        try {
            dZzb = this.a.zzb();
        } catch (RemoteException e3) {
            zzo.zzh("", e3);
            dZzb = 1.0d;
        }
        this.d = dZzb;
        int iZzc = -1;
        try {
            iZzd = this.a.zzd();
        } catch (RemoteException e4) {
            zzo.zzh("", e4);
            iZzd = -1;
        }
        this.e = iZzd;
        try {
            iZzc = this.a.zzc();
        } catch (RemoteException e5) {
            zzo.zzh("", e5);
        }
        this.f = iZzc;
    }

    @Override
    public final Drawable getDrawable() {
        return this.b;
    }

    @Override
    public final double getScale() {
        return this.d;
    }

    @Override
    public final Uri getUri() {
        return this.c;
    }

    @Override
    public final int zza() {
        return this.f;
    }

    @Override
    public final int zzb() {
        return this.e;
    }
}
