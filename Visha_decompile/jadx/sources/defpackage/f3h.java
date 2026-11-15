package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzbqx;
import java.util.concurrent.ConcurrentHashMap;

public final class f3h {
    public final ConcurrentHashMap a = new ConcurrentHashMap();
    public final jkg b;

    public f3h(jkg jkgVar) {
        this.b = jkgVar;
    }

    public final zzbqx a(String str) {
        ConcurrentHashMap concurrentHashMap = this.a;
        if (concurrentHashMap.containsKey(str)) {
            return (zzbqx) concurrentHashMap.get(str);
        }
        return null;
    }

    public final void b(String str) {
        try {
            this.a.put(str, this.b.b(str));
        } catch (RemoteException e) {
            zze.zzb("Couldn't create RTB adapter : ", e);
        }
    }
}
