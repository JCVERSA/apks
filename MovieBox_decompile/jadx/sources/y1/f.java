package y1;

import androidx.media3.common.r;
import com.google.common.collect.ImmutableMap;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import g2.l;
import h3.s;
import java.util.Map;
import w1.h;
import z1.i;
import z1.j;

public abstract class f {
    public static h a(j jVar, String str, i iVar, int i10, Map map) {
        return new h.b().i(iVar.b(str)).h(iVar.f76551a).g(iVar.f76552b).f(g(jVar, iVar)).b(i10).e(map).a();
    }

    public static k2.h b(androidx.media3.datasource.a aVar, int i10, j jVar) {
        return c(aVar, i10, jVar, 0);
    }

    public static k2.h c(androidx.media3.datasource.a aVar, int i10, j jVar, int i11) {
        if (jVar.m() == null) {
            return null;
        }
        g2.f fVarF = f(i10, jVar.f76556b);
        try {
            e(fVarF, aVar, jVar, i11, true);
            return fVarF.b();
        } finally {
            fVarF.release();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void d(androidx.media3.datasource.a aVar, j jVar, int i10, g2.f fVar, i iVar) {
        new l(aVar, a(jVar, ((z1.b) jVar.f76557c.get(i10)).f76501a, iVar, 0, ImmutableMap.of()), jVar.f76556b, 0, null, fVar).load();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void e(g2.f fVar, androidx.media3.datasource.a aVar, j jVar, int i10, boolean z10) {
        i iVar = (i) androidx.media3.common.util.a.e(jVar.m());
        if (z10) {
            i iVarL = jVar.l();
            if (iVarL == null) {
                return;
            }
            i iVarA = iVar.a(iVarL, ((z1.b) jVar.f76557c.get(i10)).f76501a);
            if (iVarA == null) {
                d(aVar, jVar, i10, fVar, iVar);
                iVar = iVarL;
            } else {
                iVar = iVarA;
            }
        }
        d(aVar, jVar, i10, fVar, iVar);
    }

    private static g2.f f(int i10, r rVar) {
        String str = rVar.f9848n;
        return new g2.d((str == null || !(str.startsWith(MimeTypes.VIDEO_WEBM) || str.startsWith(MimeTypes.AUDIO_WEBM))) ? new e3.h(s.a.f61264a, 32) : new c3.e(s.a.f61264a, 2), i10, rVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String g(j jVar, i iVar) {
        String strJ = jVar.j();
        return strJ != null ? strJ : iVar.b(((z1.b) jVar.f76557c.get(0)).f76501a).toString();
    }
}
