package androidx.compose.ui.text;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

public abstract class s {

    private static final long f6044a = o0.w.f67429b.a();

    public static final r a(r rVar, int i10, int i11, long j10, androidx.compose.ui.text.style.n nVar, u uVar, androidx.compose.ui.text.style.g gVar, int i12, int i13, androidx.compose.ui.text.style.o oVar) {
        long j11;
        int iH = i10;
        androidx.compose.ui.text.style.n nVarJ = nVar;
        androidx.compose.ui.text.style.h.a aVar = androidx.compose.ui.text.style.h.f6091b;
        if (androidx.compose.ui.text.style.h.k(iH, aVar.g()) || androidx.compose.ui.text.style.h.k(iH, rVar.h())) {
            if (o0.x.d(j10)) {
                j11 = j10;
            } else {
                j11 = j10;
                if (o0.w.e(j11, rVar.e())) {
                }
            }
            if ((nVarJ == null || Intrinsics.c(nVarJ, rVar.j())) && ((androidx.compose.ui.text.style.j.j(i11, androidx.compose.ui.text.style.j.f6105b.f()) || androidx.compose.ui.text.style.j.j(i11, rVar.i())) && ((uVar == null || Intrinsics.c(uVar, rVar.g())) && ((gVar == null || Intrinsics.c(gVar, rVar.f())) && ((androidx.compose.ui.text.style.e.d(i12, androidx.compose.ui.text.style.e.f6057a.b()) || androidx.compose.ui.text.style.e.d(i12, rVar.d())) && ((androidx.compose.ui.text.style.d.e(i13, androidx.compose.ui.text.style.d.f6053a.c()) || androidx.compose.ui.text.style.d.e(i13, rVar.c())) && (oVar == null || Intrinsics.c(oVar, rVar.k())))))))) {
                return rVar;
            }
        } else {
            j11 = j10;
        }
        long jE = o0.x.d(j10) ? rVar.e() : j11;
        if (nVarJ == null) {
            nVarJ = rVar.j();
        }
        androidx.compose.ui.text.style.n nVar2 = nVarJ;
        if (androidx.compose.ui.text.style.h.k(iH, aVar.g())) {
            iH = rVar.h();
        }
        return new r(iH, !androidx.compose.ui.text.style.j.j(i11, androidx.compose.ui.text.style.j.f6105b.f()) ? i11 : rVar.i(), jE, nVar2, b(rVar, uVar), gVar == null ? rVar.f() : gVar, !androidx.compose.ui.text.style.e.d(i12, androidx.compose.ui.text.style.e.f6057a.b()) ? i12 : rVar.d(), !androidx.compose.ui.text.style.d.e(i13, androidx.compose.ui.text.style.d.f6053a.c()) ? i13 : rVar.c(), oVar == null ? rVar.k() : oVar, null);
    }

    private static final u b(r rVar, u uVar) {
        if (rVar.g() == null) {
            return uVar;
        }
        return uVar == null ? rVar.g() : rVar.g().c(uVar);
    }

    public static final r c(r rVar, LayoutDirection layoutDirection) {
        int iH = rVar.h();
        androidx.compose.ui.text.style.h.a aVar = androidx.compose.ui.text.style.h.f6091b;
        int iF = androidx.compose.ui.text.style.h.k(iH, aVar.g()) ? aVar.f() : rVar.h();
        int iD = e0.d(layoutDirection, rVar.i());
        long jE = o0.x.d(rVar.e()) ? f6044a : rVar.e();
        androidx.compose.ui.text.style.n nVarJ = rVar.j();
        if (nVarJ == null) {
            nVarJ = androidx.compose.ui.text.style.n.f6120c.a();
        }
        androidx.compose.ui.text.style.n nVar = nVarJ;
        u uVarG = rVar.g();
        androidx.compose.ui.text.style.g gVarF = rVar.f();
        int iD2 = rVar.d();
        androidx.compose.ui.text.style.e.a aVar2 = androidx.compose.ui.text.style.e.f6057a;
        int iA = androidx.compose.ui.text.style.e.d(iD2, aVar2.b()) ? aVar2.a() : rVar.d();
        int iC = rVar.c();
        androidx.compose.ui.text.style.d.a aVar3 = androidx.compose.ui.text.style.d.f6053a;
        int iB = androidx.compose.ui.text.style.d.e(iC, aVar3.c()) ? aVar3.b() : rVar.c();
        androidx.compose.ui.text.style.o oVarK = rVar.k();
        if (oVarK == null) {
            oVarK = androidx.compose.ui.text.style.o.f6124c.a();
        }
        return new r(iF, iD, jE, nVar, uVarG, gVarF, iA, iB, oVarK, null);
    }
}
