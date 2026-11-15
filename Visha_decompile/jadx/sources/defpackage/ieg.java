package defpackage;

import android.os.RemoteException;
import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzbhk;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public final class ieg implements View.OnClickListener {
    public final hig b;
    public final fy0 c;
    public zzbhk d;
    public n3f e;
    public String f;
    public Long g;
    public WeakReference h;

    public ieg(hig higVar, fy0 fy0Var) {
        this.b = higVar;
        this.c = fy0Var;
    }

    public final zzbhk a() {
        return this.d;
    }

    public final void b() {
        if (this.d == null || this.g == null) {
            return;
        }
        d();
        try {
            this.d.zze();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void c(final zzbhk zzbhkVar) {
        this.d = zzbhkVar;
        n3f n3fVar = this.e;
        if (n3fVar != null) {
            this.b.n("/unconfirmedClick", n3fVar);
        }
        n3f n3fVar2 = new n3f() {
            @Override
            public final void a(Object obj, Map map) {
                ieg iegVar = this.a;
                try {
                    iegVar.g = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException unused) {
                    int i = zze.zza;
                    zzo.zzg("Failed to call parse unconfirmedClickTimestamp.");
                }
                zzbhk zzbhkVar2 = zzbhkVar;
                iegVar.f = (String) map.get(TtmlNode.ATTR_ID);
                String str = (String) map.get("asset_id");
                if (zzbhkVar2 == null) {
                    int i2 = zze.zza;
                    zzo.zze("Received unconfirmed click but UnconfirmedClickListener is null.");
                } else {
                    try {
                        zzbhkVar2.zzf(str);
                    } catch (RemoteException e) {
                        zzo.zzl("#007 Could not call remote method.", e);
                    }
                }
            }
        };
        this.e = n3fVar2;
        this.b.l("/unconfirmedClick", n3fVar2);
    }

    public final void d() {
        View view;
        this.f = null;
        this.g = null;
        WeakReference weakReference = this.h;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        view.setClickable(false);
        view.setOnClickListener(null);
        this.h = null;
    }

    @Override
    public final void onClick(View view) {
        WeakReference weakReference = this.h;
        if (weakReference == null || weakReference.get() != view) {
            return;
        }
        if (this.f != null && this.g != null) {
            HashMap map = new HashMap();
            map.put(TtmlNode.ATTR_ID, this.f);
            map.put("time_interval", String.valueOf(this.c.currentTimeMillis() - this.g.longValue()));
            map.put("messageType", "onePointFiveClick");
            this.b.j("sendMessageToNativeJs", map);
        }
        d();
    }
}
