package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzbfm;
import com.google.android.gms.internal.ads.zzbfr;
import com.google.android.gms.internal.ads.zzbft;
import java.util.ArrayList;
import java.util.List;

public final class b1f extends NativeAd.AdChoicesInfo {
    public final zzbfm a;
    public final List b = new ArrayList();
    public String c;

    public b1f(zzbfm zzbfmVar) {
        IBinder iBinder;
        this.a = zzbfmVar;
        try {
            this.c = zzbfmVar.zzg();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            this.c = "";
        }
        try {
            for (Object obj : zzbfmVar.zzh()) {
                zzbft zzbfrVar = null;
                if ((obj instanceof IBinder) && (iBinder = (IBinder) obj) != null) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    zzbfrVar = iInterfaceQueryLocalInterface instanceof zzbft ? (zzbft) iInterfaceQueryLocalInterface : new zzbfr(iBinder);
                }
                if (zzbfrVar != null) {
                    this.b.add(new c1f(zzbfrVar));
                }
            }
        } catch (RemoteException e2) {
            zzo.zzh("", e2);
        }
    }

    @Override
    public final List getImages() {
        return this.b;
    }

    @Override
    public final CharSequence getText() {
        return this.c;
    }
}
