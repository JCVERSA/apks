package defpackage;

import android.os.Build;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzcj;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.HashMap;
import java.util.concurrent.Callable;

public final class ehh implements eeh {
    public final g8i a;

    public ehh(g8i g8iVar) {
        this.a = g8iVar;
    }

    @Override
    public final int zza() {
        return 51;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                HashMap map = new HashMap();
                String str = (String) zzbd.zzc().b(cye.Z);
                if (str != null && !str.isEmpty()) {
                    if (Build.VERSION.SDK_INT >= ((Integer) zzbd.zzc().b(cye.a0)).intValue()) {
                        for (String str2 : str.split(StringUtils.COMMA, -1)) {
                            map.put(str2, zzcj.zza(str2));
                        }
                    }
                }
                return new fhh(map);
            }
        });
    }
}
