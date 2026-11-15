package androidx.compose.ui.platform;

import android.os.Parcel;
import android.util.Base64;
import androidx.compose.ui.graphics.z4;
import kotlin.ULong;
import kotlin.collections.CollectionsKt;

public final class r0 {

    private final Parcel f5546a;

    public r0(String str) {
        Parcel parcelObtain = Parcel.obtain();
        this.f5546a = parcelObtain;
        byte[] bArrDecode = Base64.decode(str, 0);
        parcelObtain.unmarshall(bArrDecode, 0, bArrDecode.length);
        parcelObtain.setDataPosition(0);
    }

    private final int a() {
        return this.f5546a.dataAvail();
    }

    private final float b() {
        return androidx.compose.ui.text.style.a.c(e());
    }

    private final byte c() {
        return this.f5546a.readByte();
    }

    private final float e() {
        return this.f5546a.readFloat();
    }

    private final int i() {
        return this.f5546a.readInt();
    }

    private final z4 j() {
        return new z4(d(), y.h.a(e(), e()), e(), null);
    }

    private final String l() {
        return this.f5546a.readString();
    }

    private final androidx.compose.ui.text.style.i m() {
        int i10 = i();
        androidx.compose.ui.text.style.i.a aVar = androidx.compose.ui.text.style.i.f6100b;
        boolean z10 = (aVar.b().e() & i10) != 0;
        boolean z11 = (i10 & aVar.d().e()) != 0;
        if (z10 && z11) {
            return aVar.a(CollectionsKt.o(aVar.b(), aVar.d()));
        }
        if (z10) {
            return aVar.b();
        }
        return z11 ? aVar.d() : aVar.c();
    }

    private final androidx.compose.ui.text.style.m n() {
        return new androidx.compose.ui.text.style.m(e(), e());
    }

    private final long p() {
        return ULong.b(this.f5546a.readLong());
    }

    public final long d() {
        return androidx.compose.ui.graphics.u1.h(p());
    }

    public final int f() {
        byte bC = c();
        if (bC == 0) {
            return androidx.compose.ui.text.font.n.f5830b.b();
        }
        return bC == 1 ? androidx.compose.ui.text.font.n.f5830b.a() : androidx.compose.ui.text.font.n.f5830b.b();
    }

    public final int g() {
        byte bC = c();
        if (bC == 0) {
            return androidx.compose.ui.text.font.o.f5834b.b();
        }
        if (bC == 1) {
            return androidx.compose.ui.text.font.o.f5834b.a();
        }
        if (bC == 3) {
            return androidx.compose.ui.text.font.o.f5834b.c();
        }
        return bC == 2 ? androidx.compose.ui.text.font.o.f5834b.d() : androidx.compose.ui.text.font.o.f5834b.b();
    }

    public final androidx.compose.ui.text.font.p h() {
        return new androidx.compose.ui.text.font.p(i());
    }

    public final androidx.compose.ui.text.x k() {
        g1 g1Var;
        g1 g1Var2 = g1Var;
        g1 g1Var3 = new g1(0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, 16383, null);
        while (this.f5546a.dataAvail() > 1) {
            byte bC = c();
            if (bC != 1) {
                g1Var = g1Var2;
                if (bC == 2) {
                    if (a() < 5) {
                        return g1Var.m();
                    }
                    g1Var.e(o());
                    g1Var2 = g1Var;
                } else if (bC == 3) {
                    if (a() < 4) {
                        return g1Var.m();
                    }
                    g1Var.h(h());
                    g1Var2 = g1Var;
                } else if (bC == 4) {
                    if (a() < 1) {
                        return g1Var.m();
                    }
                    g1Var.f(androidx.compose.ui.text.font.n.c(f()));
                    g1Var2 = g1Var;
                } else if (bC != 5) {
                    if (bC == 6) {
                        g1Var.d(l());
                    } else if (bC == 7) {
                        if (a() < 5) {
                            return g1Var.m();
                        }
                        g1Var.i(o());
                    } else if (bC == 8) {
                        if (a() < 4) {
                            return g1Var.m();
                        }
                        g1Var.b(androidx.compose.ui.text.style.a.b(b()));
                    } else if (bC == 9) {
                        if (a() < 8) {
                            return g1Var.m();
                        }
                        g1Var.l(n());
                    } else if (bC == 10) {
                        if (a() < 8) {
                            return g1Var.m();
                        }
                        g1Var.a(d());
                    } else if (bC == 11) {
                        if (a() < 4) {
                            return g1Var.m();
                        }
                        g1Var.k(m());
                    } else if (bC == 12) {
                        if (a() < 20) {
                            return g1Var.m();
                        }
                        g1Var.j(j());
                    }
                    g1Var2 = g1Var;
                } else {
                    if (a() < 1) {
                        return g1Var.m();
                    }
                    g1Var.g(androidx.compose.ui.text.font.o.e(g()));
                    g1Var2 = g1Var;
                }
            } else {
                if (a() < 8) {
                    break;
                }
                g1Var2.c(d());
            }
        }
        g1Var = g1Var2;
        return g1Var.m();
    }

    public final long o() {
        long jA;
        byte bC = c();
        if (bC == 1) {
            jA = o0.y.f67433b.b();
        } else {
            jA = bC == 2 ? o0.y.f67433b.a() : o0.y.f67433b.c();
        }
        return o0.y.g(jA, o0.y.f67433b.c()) ? o0.w.f67429b.a() : o0.x.a(e(), jA);
    }
}
