package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzdvg;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Map;

public final class jsg implements lsg {
    public final Map a;
    public final g8i b;
    public final j2g c;

    public jsg(Map map, g8i g8iVar, j2g j2gVar) {
        this.a = map;
        this.b = g8iVar;
        this.c = j2gVar;
    }

    @Override
    public final im5 a(final zzbuy zzbuyVar) {
        this.c.g(zzbuyVar);
        im5 im5VarG = j8.g(new zzdvg(3));
        for (String str : ((String) zzbd.zzc().b(cye.o8)).split(StringUtils.COMMA)) {
            final vyi vyiVar = (vyi) this.a.get(str.trim());
            if (vyiVar != null) {
                im5VarG = j8.f(im5VarG, zzdvg.class, new k7i() {
                    @Override
                    public final im5 zza(Object obj) {
                        return ((lsg) vyiVar.zzb()).a(zzbuyVar);
                    }
                }, this.b);
            }
        }
        j8.r(im5VarG, new isg(this), zef.g);
        return im5VarG;
    }
}
