package defpackage;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.internal.ads.zzbfm;
import com.google.android.gms.internal.ads.zzbfs;
import com.google.android.gms.internal.ads.zzbft;
import java.util.ArrayList;
import java.util.List;

public final class caf extends NativeAd.AdChoicesInfo {
    public final List a = new ArrayList();
    public String b;

    public caf(zzbfm zzbfmVar) {
        try {
            this.b = zzbfmVar.zzg();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            this.b = "";
        }
        try {
            for (Object obj : zzbfmVar.zzh()) {
                zzbft zzbftVarZzg = obj instanceof IBinder ? zzbfs.zzg((IBinder) obj) : null;
                if (zzbftVarZzg != null) {
                    this.a.add(new eaf(zzbftVarZzg));
                }
            }
        } catch (RemoteException e2) {
            zzo.zzh("", e2);
        }
    }

    @Override
    public final List getImages() {
        return this.a;
    }

    @Override
    public final CharSequence getText() {
        return this.b;
    }
}
