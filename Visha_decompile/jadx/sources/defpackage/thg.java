package defpackage;

import android.os.RemoteException;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzbgn;
import com.google.android.gms.internal.ads.zzbgx;
import java.util.Map;

public final class thg implements n3f {
    public final zzbgx a;
    public final hig b;
    public final zxi c;

    public thg(sdg sdgVar, ddg ddgVar, hig higVar, zxi zxiVar) {
        this.a = sdgVar.c(ddgVar.a());
        this.b = higVar;
        this.c = zxiVar;
    }

    @Override
    public final void a(Object obj, Map map) {
        String str = (String) map.get("asset");
        try {
            this.a.zze((zzbgn) this.c.zzb(), str);
        } catch (RemoteException e) {
            String str2 = "Failed to call onCustomClick for asset " + str + Consts.DOT;
            int i = zze.zza;
            zzo.zzk(str2, e);
        }
    }

    public final void b() {
        if (this.a == null) {
            return;
        }
        this.b.l("/nativeAdCustomClick", this);
    }
}
