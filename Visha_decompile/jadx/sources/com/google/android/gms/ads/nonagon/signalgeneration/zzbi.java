package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbuy;
import com.transsion.gslb.NetResponse;
import defpackage.grg;
import defpackage.im5;
import defpackage.k7i;
import defpackage.msg;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
import org.json.JSONException;

public final class zzbi implements k7i {
    public final Executor a;
    public final grg b;

    public zzbi(Executor executor, grg grgVar) {
        this.a = executor;
        this.b = grgVar;
    }

    @Override
    public final im5 zza(Object obj) throws Exception {
        final zzbuy zzbuyVar = (zzbuy) obj;
        return j8.n(this.b.c(zzbuyVar), new k7i() {
            @Override
            public final im5 zza(Object obj2) {
                msg msgVar = (msg) obj2;
                zzbk zzbkVar = new zzbk(new JsonReader(new InputStreamReader(msgVar.b())), msgVar.a());
                zzbuy zzbuyVar2 = zzbuyVar;
                try {
                    zzbkVar.zzb = com.google.android.gms.ads.internal.client.zzbb.zzb().zzj(zzbuyVar2.zza).toString();
                } catch (JSONException unused) {
                    zzbkVar.zzb = NetResponse.EMPTY_RESPONSE;
                }
                Bundle bundle = zzbuyVar2.zzn;
                if (!bundle.isEmpty()) {
                    try {
                        zzbkVar.zzc = com.google.android.gms.ads.internal.client.zzbb.zzb().zzj(bundle).toString();
                    } catch (JSONException unused2) {
                    }
                }
                return j8.h(zzbkVar);
            }
        }, this.a);
    }
}
