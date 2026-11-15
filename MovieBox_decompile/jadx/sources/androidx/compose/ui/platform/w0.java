package androidx.compose.ui.platform;

import android.os.Parcel;
import android.util.Base64;
import androidx.compose.ui.graphics.z4;

public final class w0 {

    private Parcel f5560a = Parcel.obtain();

    public final void a(byte b10) {
        this.f5560a.writeByte(b10);
    }

    public final void b(float f10) {
        this.f5560a.writeFloat(f10);
    }

    public final void c(int i10) {
        this.f5560a.writeInt(i10);
    }

    public final void d(z4 z4Var) {
        m(z4Var.c());
        b(y.g.m(z4Var.d()));
        b(y.g.n(z4Var.d()));
        b(z4Var.b());
    }

    public final void e(androidx.compose.ui.text.x xVar) {
        long jG = xVar.g();
        androidx.compose.ui.graphics.u1.a aVar = androidx.compose.ui.graphics.u1.f4349b;
        if (!androidx.compose.ui.graphics.u1.m(jG, aVar.e())) {
            a((byte) 1);
            m(xVar.g());
        }
        long jK = xVar.k();
        o0.w.a aVar2 = o0.w.f67429b;
        if (!o0.w.e(jK, aVar2.a())) {
            a((byte) 2);
            j(xVar.k());
        }
        androidx.compose.ui.text.font.p pVarN = xVar.n();
        if (pVarN != null) {
            a((byte) 3);
            f(pVarN);
        }
        androidx.compose.ui.text.font.n nVarL = xVar.l();
        if (nVarL != null) {
            int i10 = nVarL.i();
            a((byte) 4);
            o(i10);
        }
        androidx.compose.ui.text.font.o oVarM = xVar.m();
        if (oVarM != null) {
            int iK = oVarM.k();
            a((byte) 5);
            l(iK);
        }
        String strJ = xVar.j();
        if (strJ != null) {
            a((byte) 6);
            i(strJ);
        }
        if (!o0.w.e(xVar.o(), aVar2.a())) {
            a((byte) 7);
            j(xVar.o());
        }
        androidx.compose.ui.text.style.a aVarE = xVar.e();
        if (aVarE != null) {
            float fH = aVarE.h();
            a((byte) 8);
            k(fH);
        }
        androidx.compose.ui.text.style.m mVarU = xVar.u();
        if (mVarU != null) {
            a((byte) 9);
            h(mVarU);
        }
        if (!androidx.compose.ui.graphics.u1.m(xVar.d(), aVar.e())) {
            a((byte) 10);
            m(xVar.d());
        }
        androidx.compose.ui.text.style.i iVarS = xVar.s();
        if (iVarS != null) {
            a((byte) 11);
            g(iVarS);
        }
        z4 z4VarR = xVar.r();
        if (z4VarR != null) {
            a((byte) 12);
            d(z4VarR);
        }
    }

    public final void f(androidx.compose.ui.text.font.p pVar) {
        c(pVar.h());
    }

    public final void g(androidx.compose.ui.text.style.i iVar) {
        c(iVar.e());
    }

    public final void h(androidx.compose.ui.text.style.m mVar) {
        b(mVar.b());
        b(mVar.c());
    }

    public final void i(String str) {
        this.f5560a.writeString(str);
    }

    public final void j(long j10) {
        long jG = o0.w.g(j10);
        o0.y.a aVar = o0.y.f67433b;
        byte b10 = 0;
        if (!o0.y.g(jG, aVar.c())) {
            if (o0.y.g(jG, aVar.b())) {
                b10 = 1;
            } else if (o0.y.g(jG, aVar.a())) {
                b10 = 2;
            }
        }
        a(b10);
        if (o0.y.g(o0.w.g(j10), aVar.c())) {
            return;
        }
        b(o0.w.h(j10));
    }

    public final void k(float f10) {
        b(f10);
    }

    public final void l(int i10) {
        androidx.compose.ui.text.font.o.a aVar = androidx.compose.ui.text.font.o.f5834b;
        byte b10 = 0;
        if (!androidx.compose.ui.text.font.o.h(i10, aVar.b())) {
            if (androidx.compose.ui.text.font.o.h(i10, aVar.a())) {
                b10 = 1;
            } else if (androidx.compose.ui.text.font.o.h(i10, aVar.d())) {
                b10 = 2;
            } else if (androidx.compose.ui.text.font.o.h(i10, aVar.c())) {
                b10 = 3;
            }
        }
        a(b10);
    }

    public final void m(long j10) {
        n(j10);
    }

    public final void n(long j10) {
        this.f5560a.writeLong(j10);
    }

    public final void o(int i10) {
        androidx.compose.ui.text.font.n.a aVar = androidx.compose.ui.text.font.n.f5830b;
        byte b10 = 0;
        if (!androidx.compose.ui.text.font.n.f(i10, aVar.b()) && androidx.compose.ui.text.font.n.f(i10, aVar.a())) {
            b10 = 1;
        }
        a(b10);
    }

    public final String p() {
        return Base64.encodeToString(this.f5560a.marshall(), 0);
    }

    public final void q() {
        this.f5560a.recycle();
        this.f5560a = Parcel.obtain();
    }
}
