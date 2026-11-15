package y9;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.n;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import x9.m;
import z9.i;
import z9.j;

public abstract class f {
    public static n a(j jVar, String str, i iVar, int i10) {
        return new n.b().i(iVar.b(str)).h(iVar.f76684a).g(iVar.f76685b).f(g(jVar, iVar)).b(i10).a();
    }

    public static i9.d b(k kVar, int i10, j jVar) {
        return c(kVar, i10, jVar, 0);
    }

    public static i9.d c(k kVar, int i10, j jVar, int i11) {
        if (jVar.m() == null) {
            return null;
        }
        x9.g gVarF = f(i10, jVar.f76689b);
        try {
            e(gVarF, kVar, jVar, i11, true);
            return gVarF.b();
        } finally {
            gVarF.release();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void d(k kVar, j jVar, int i10, x9.g gVar, i iVar) {
        new m(kVar, a(jVar, ((z9.b) jVar.f76690c.get(i10)).f76635a, iVar, 0), jVar.f76689b, 0, null, gVar).load();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void e(x9.g gVar, k kVar, j jVar, int i10, boolean z10) {
        i iVar = (i) com.google.android.exoplayer2.util.a.e(jVar.m());
        if (z10) {
            i iVarL = jVar.l();
            if (iVarL == null) {
                return;
            }
            i iVarA = iVar.a(iVarL, ((z9.b) jVar.f76690c.get(i10)).f76635a);
            if (iVarA == null) {
                d(kVar, jVar, i10, gVar, iVar);
                iVar = iVarL;
            } else {
                iVar = iVarA;
            }
        }
        d(kVar, jVar, i10, gVar, iVar);
    }

    private static x9.g f(int i10, p1 p1Var) {
        String str = p1Var.f24900k;
        return new x9.e((str == null || !(str.startsWith(MimeTypes.VIDEO_WEBM) || str.startsWith(MimeTypes.AUDIO_WEBM))) ? new q9.g() : new o9.e(), i10, p1Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String g(j jVar, i iVar) {
        String strJ = jVar.j();
        return strJ != null ? strJ : iVar.b(((z9.b) jVar.f76690c.get(0)).f76635a).toString();
    }
}
