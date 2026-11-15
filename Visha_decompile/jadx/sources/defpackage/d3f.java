package defpackage;

import com.google.android.gms.ads.internal.util.client.zzl;
import com.google.android.gms.ads.internal.util.zzbo;
import java.util.Collections;
import java.util.Map;

public final class d3f extends ine {
    public final byte[] p;
    public final Map q;
    public final zzl r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d3f(zzbo zzboVar, int i, String str, jme jmeVar, ime imeVar, byte[] bArr, Map map, zzl zzlVar) {
        super(i, str, jmeVar, imeVar);
        this.p = bArr;
        this.q = map;
        this.r = zzlVar;
    }

    @Override
    public final void d(Object obj) {
        j((String) obj);
    }

    @Override
    public final void j(String str) {
        this.r.zzg(str);
        super.j(str);
    }

    @Override
    public final Map zzl() {
        Map map = this.q;
        return map == null ? Collections.emptyMap() : map;
    }

    @Override
    public final byte[] zzx() {
        byte[] bArr = this.p;
        if (bArr == null) {
            return null;
        }
        return bArr;
    }
}
