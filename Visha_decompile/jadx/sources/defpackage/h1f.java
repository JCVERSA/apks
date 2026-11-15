package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgn;

public final class h1f {
    public final zzbgn a;

    public h1f(zzbgn zzbgnVar) {
        Context context;
        this.a = zzbgnVar;
        try {
            context = (Context) ObjectWrapper.unwrap(zzbgnVar.zzh());
        } catch (RemoteException | NullPointerException e) {
            zzo.zzh("", e);
            context = null;
        }
        if (context != null) {
            try {
                this.a.zzs(ObjectWrapper.wrap(new MediaView(context)));
            } catch (RemoteException e2) {
                zzo.zzh("", e2);
            }
        }
    }

    public final zzbgn a() {
        return this.a;
    }

    public final String b() {
        try {
            return this.a.zzi();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }
}
