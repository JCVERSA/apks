package z;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.c5;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.p4;
import androidx.compose.ui.graphics.v1;
import java.util.List;
import o0.p;
import o0.u;
import y.n;

public abstract class f {
    static {
        g.a aVar = g.f76450o1;
    }

    public static long a(g gVar) {
        return n.b(gVar.G0().i());
    }

    public static long b(g gVar) {
        return gVar.G0().i();
    }

    public static long c(g gVar, long j10, long j11) {
        return n.a(y.m.i(j10) - y.g.m(j11), y.m.g(j10) - y.g.n(j11));
    }

    public static void d(g gVar, long j10, float f10, long j11, float f11, h hVar, v1 v1Var, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawCircle-VaOC9Bg");
        }
        gVar.J0(j10, (i11 & 2) != 0 ? y.m.h(gVar.i()) / 2.0f : f10, (i11 & 4) != 0 ? gVar.N0() : j11, (i11 & 8) != 0 ? 1.0f : f11, (i11 & 16) != 0 ? l.f76454a : hVar, (i11 & 32) != 0 ? null : v1Var, (i11 & 64) != 0 ? g.f76450o1.a() : i10);
    }

    public static void e(g gVar, e4 e4Var, long j10, long j11, long j12, long j13, float f10, h hVar, v1 v1Var, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawImage-AZ2fEMs");
        }
        long jA = (i12 & 2) != 0 ? p.f67416b.a() : j10;
        long jA2 = (i12 & 4) != 0 ? u.a(e4Var.getWidth(), e4Var.getHeight()) : j11;
        gVar.T0(e4Var, jA, jA2, (i12 & 8) != 0 ? p.f67416b.a() : j12, (i12 & 16) != 0 ? jA2 : j13, (i12 & 32) != 0 ? 1.0f : f10, (i12 & 64) != 0 ? l.f76454a : hVar, (i12 & 128) != 0 ? null : v1Var, (i12 & 256) != 0 ? g.f76450o1.a() : i10, (i12 & 512) != 0 ? g.f76450o1.b() : i11);
    }

    public static void f(g gVar, long j10, long j11, long j12, float f10, int i10, p4 p4Var, float f11, v1 v1Var, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawLine-NGM6Ib0");
        }
        gVar.q0(j10, j11, j12, (i12 & 8) != 0 ? 0.0f : f10, (i12 & 16) != 0 ? m.f76455e.a() : i10, (i12 & 32) != 0 ? null : p4Var, (i12 & 64) != 0 ? 1.0f : f11, (i12 & 128) != 0 ? null : v1Var, (i12 & 256) != 0 ? g.f76450o1.a() : i11);
    }

    public static void g(g gVar, Path path, j1 j1Var, float f10, h hVar, v1 v1Var, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawPath-GBMwjPU");
        }
        if ((i11 & 4) != 0) {
            f10 = 1.0f;
        }
        float f11 = f10;
        if ((i11 & 8) != 0) {
            hVar = l.f76454a;
        }
        h hVar2 = hVar;
        if ((i11 & 16) != 0) {
            v1Var = null;
        }
        v1 v1Var2 = v1Var;
        if ((i11 & 32) != 0) {
            i10 = g.f76450o1.a();
        }
        gVar.i0(path, j1Var, f11, hVar2, v1Var2, i10);
    }

    public static void h(g gVar, List list, int i10, long j10, float f10, int i11, p4 p4Var, float f11, v1 v1Var, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawPoints-F8ZwMP8");
        }
        gVar.F0(list, i10, j10, (i13 & 8) != 0 ? 0.0f : f10, (i13 & 16) != 0 ? c5.f4009a.a() : i11, (i13 & 32) != 0 ? null : p4Var, (i13 & 64) != 0 ? 1.0f : f11, (i13 & 128) != 0 ? null : v1Var, (i13 & 256) != 0 ? g.f76450o1.a() : i12);
    }

    public static void i(g gVar, j1 j1Var, long j10, long j11, float f10, h hVar, v1 v1Var, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRect-AsUm42w");
        }
        long jC = (i11 & 2) != 0 ? y.g.f75999b.c() : j10;
        gVar.M0(j1Var, jC, (i11 & 4) != 0 ? c(gVar, gVar.i(), jC) : j11, (i11 & 8) != 0 ? 1.0f : f10, (i11 & 16) != 0 ? l.f76454a : hVar, (i11 & 32) != 0 ? null : v1Var, (i11 & 64) != 0 ? g.f76450o1.a() : i10);
    }

    public static void j(g gVar, long j10, long j11, long j12, float f10, h hVar, v1 v1Var, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRect-n-J9OG0");
        }
        long jC = (i11 & 2) != 0 ? y.g.f75999b.c() : j11;
        gVar.K0(j10, jC, (i11 & 4) != 0 ? c(gVar, gVar.i(), jC) : j12, (i11 & 8) != 0 ? 1.0f : f10, (i11 & 16) != 0 ? l.f76454a : hVar, (i11 & 32) != 0 ? null : v1Var, (i11 & 64) != 0 ? g.f76450o1.a() : i10);
    }

    public static void k(g gVar, j1 j1Var, long j10, long j11, long j12, float f10, h hVar, v1 v1Var, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRoundRect-ZuiqVtQ");
        }
        long jC = (i11 & 2) != 0 ? y.g.f75999b.c() : j10;
        gVar.U0(j1Var, jC, (i11 & 4) != 0 ? c(gVar, gVar.i(), jC) : j11, (i11 & 8) != 0 ? y.a.f75993a.a() : j12, (i11 & 16) != 0 ? 1.0f : f10, (i11 & 32) != 0 ? l.f76454a : hVar, (i11 & 64) != 0 ? null : v1Var, (i11 & 128) != 0 ? g.f76450o1.a() : i10);
    }
}
