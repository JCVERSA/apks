package androidx.compose.ui.platform;

import androidx.compose.ui.graphics.z4;
import kotlin.jvm.internal.DefaultConstructorMarker;

final class g1 {

    private long f5477a;

    private long f5478b;

    private androidx.compose.ui.text.font.p f5479c;

    private androidx.compose.ui.text.font.n f5480d;

    private androidx.compose.ui.text.font.o f5481e;

    private androidx.compose.ui.text.font.h f5482f;

    private String f5483g;

    private long f5484h;

    private androidx.compose.ui.text.style.a f5485i;

    private androidx.compose.ui.text.style.m f5486j;

    private n0.i f5487k;

    private long f5488l;

    private androidx.compose.ui.text.style.i f5489m;

    private z4 f5490n;

    public g1(long j10, long j11, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j12, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j13, androidx.compose.ui.text.style.i iVar2, z4 z4Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, pVar, nVar, oVar, hVar, str, j12, aVar, mVar, iVar, j13, iVar2, z4Var);
    }

    public final void a(long j10) {
        this.f5488l = j10;
    }

    public final void b(androidx.compose.ui.text.style.a aVar) {
        this.f5485i = aVar;
    }

    public final void c(long j10) {
        this.f5477a = j10;
    }

    public final void d(String str) {
        this.f5483g = str;
    }

    public final void e(long j10) {
        this.f5478b = j10;
    }

    public final void f(androidx.compose.ui.text.font.n nVar) {
        this.f5480d = nVar;
    }

    public final void g(androidx.compose.ui.text.font.o oVar) {
        this.f5481e = oVar;
    }

    public final void h(androidx.compose.ui.text.font.p pVar) {
        this.f5479c = pVar;
    }

    public final void i(long j10) {
        this.f5484h = j10;
    }

    public final void j(z4 z4Var) {
        this.f5490n = z4Var;
    }

    public final void k(androidx.compose.ui.text.style.i iVar) {
        this.f5489m = iVar;
    }

    public final void l(androidx.compose.ui.text.style.m mVar) {
        this.f5486j = mVar;
    }

    public final androidx.compose.ui.text.x m() {
        return new androidx.compose.ui.text.x(this.f5477a, this.f5478b, this.f5479c, this.f5480d, this.f5481e, this.f5482f, this.f5483g, this.f5484h, this.f5485i, this.f5486j, this.f5487k, this.f5488l, this.f5489m, this.f5490n, null, null, 49152, null);
    }

    private g1(long j10, long j11, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j12, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j13, androidx.compose.ui.text.style.i iVar2, z4 z4Var) {
        this.f5477a = j10;
        this.f5478b = j11;
        this.f5479c = pVar;
        this.f5480d = nVar;
        this.f5481e = oVar;
        this.f5482f = hVar;
        this.f5483g = str;
        this.f5484h = j12;
        this.f5485i = aVar;
        this.f5486j = mVar;
        this.f5487k = iVar;
        this.f5488l = j13;
        this.f5489m = iVar2;
        this.f5490n = z4Var;
    }

    public g1(long j10, long j11, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j12, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j13, androidx.compose.ui.text.style.i iVar2, z4 z4Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? androidx.compose.ui.graphics.u1.f4349b.e() : j10, (i10 & 2) != 0 ? o0.w.f67429b.a() : j11, (i10 & 4) != 0 ? null : pVar, (i10 & 8) != 0 ? null : nVar, (i10 & 16) != 0 ? null : oVar, (i10 & 32) != 0 ? null : hVar, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? o0.w.f67429b.a() : j12, (i10 & 256) != 0 ? null : aVar, (i10 & 512) != 0 ? null : mVar, (i10 & 1024) != 0 ? null : iVar, (i10 & 2048) != 0 ? androidx.compose.ui.graphics.u1.f4349b.e() : j13, (i10 & 4096) != 0 ? null : iVar2, (i10 & 8192) != 0 ? null : z4Var, null);
    }
}
