package defpackage;

import java.io.IOException;
import org.bouncycastle.pqc.crypto.rainbow.c;
import org.bouncycastle.pqc.crypto.xmss.BDS;
import org.bouncycastle.pqc.crypto.xmss.BDSStateMap;
import org.bouncycastle.pqc.crypto.xmss.g;

public abstract class ng8 {
    public static short[] a(byte[] bArr) {
        int length = bArr.length / 2;
        short[] sArr = new short[length];
        for (int i = 0; i != length; i++) {
            sArr[i] = cv7.h(bArr, i * 2);
        }
        return sArr;
    }

    public static dj b(og8 og8Var) throws IOException {
        if (og8Var == null) {
            throw new IllegalArgumentException("keyInfo array null");
        }
        oa oaVarP = og8Var.p();
        l1 l1VarM = oaVarP.m();
        if (l1VarM.G(av7.W)) {
            return new rk8(slb.y(oaVarP), m1.y(og8Var.u()).z());
        }
        if (l1VarM.s(av7.r)) {
            return new yy8(m1.y(og8Var.u()).z(), slb.G(ny8.m(oaVarP.p())));
        }
        if (l1VarM.s(av7.v)) {
            return new zw6(a(m1.y(og8Var.u()).z()));
        }
        if (l1VarM.s(yu7.H3)) {
            byte[] bArrZ = m1.y(og8Var.u()).z();
            s0 s0VarR = og8Var.r();
            if (cv7.a(bArrZ, 0) != 1) {
                if (s0VarR != null) {
                    return cm4.e(ci.q(bArrZ, 4, bArrZ.length), s0VarR.A());
                }
                return cm4.d(ci.q(bArrZ, 4, bArrZ.length));
            }
            if (s0VarR == null) {
                return ji5.i(ci.q(bArrZ, 4, bArrZ.length));
            }
            byte[] bArrA = s0VarR.A();
            return ji5.j(ci.q(bArrZ, 4, bArrZ.length), ci.q(bArrA, 4, bArrA.length));
        }
        if (l1VarM.G(b40.a0) || l1VarM.G(b40.L0)) {
            vy8 vy8VarI = slb.I(l1VarM);
            x0 x0VarU = og8Var.u();
            if (!(x0VarU instanceof s1)) {
                return new wy8(vy8VarI, m1.y(x0VarU).z());
            }
            py8 py8VarM = py8.m(x0VarU);
            qy8 qy8VarN = py8VarM.n();
            return new wy8(vy8VarI, py8VarM.p(), py8VarM.o(), qy8VarN.o(), qy8VarN.n());
        }
        if (l1VarM.G(b40.Y0)) {
            return new g18(slb.w(l1VarM), m1.y(og8Var.u()).z());
        }
        if (l1VarM.G(b40.N1)) {
            ap0 ap0VarQ = ap0.q(og8Var.u());
            return new bp0(slb.q(l1VarM), ap0VarQ.o(), ap0VarQ.n(), ap0VarQ.p(), ap0VarQ.m(), ap0VarQ.r());
        }
        if (l1VarM.G(b40.Y1)) {
            return new x64(slb.h(l1VarM), m1.y(og8Var.u()).z());
        }
        if (l1VarM.G(b40.f2)) {
            return new lx8(slb.C(l1VarM), m1.y(og8Var.u()).z());
        }
        if (l1VarM.G(b40.H2)) {
            return new wx6(slb.s(l1VarM), m1.y(og8Var.u()).z());
        }
        if (l1VarM.G(b40.O2)) {
            return new sh5(slb.o(l1VarM), m1.y(og8Var.u()).z());
        }
        if (l1VarM.G(b40.W2)) {
            s1 s1VarZ = s1.z(og8Var.u());
            return new rx6(slb.u(l1VarM), m1.y(s1VarZ.A(0)).z(), m1.y(s1VarZ.A(1)).z(), m1.y(s1VarZ.A(2)).z(), m1.y(s1VarZ.A(3)).z());
        }
        if (l1VarM.G(b40.d3)) {
            s1 s1VarZ2 = s1.z(og8Var.u());
            return new iy8(slb.E(l1VarM), m1.y(s1VarZ2.A(0)).z(), m1.y(s1VarZ2.A(1)).z(), m1.y(s1VarZ2.A(2)).z(), m1.y(s1VarZ2.A(3)).z(), m1.y(s1VarZ2.A(4)).z());
        }
        if (l1VarM.s(b40.u1) || l1VarM.s(b40.v1) || l1VarM.s(b40.w1)) {
            x0 x0VarU2 = og8Var.u();
            ac2 ac2VarD = slb.d(l1VarM);
            if (!(x0VarU2 instanceof s1)) {
                if (!(x0VarU2 instanceof wp1)) {
                    throw new IOException("not supported");
                }
                byte[] bArrZ2 = m1.y(x0VarU2).z();
                return og8Var.r() != null ? new bc2(ac2VarD, bArrZ2, ik8.d.b(ac2VarD, og8Var.r())) : new bc2(ac2VarD, bArrZ2, null);
            }
            s1 s1VarZ3 = s1.z(x0VarU2);
            int iF = g1.y(s1VarZ3.A(0)).F();
            if (iF == 0) {
                if (og8Var.r() != null) {
                    return new bc2(ac2VarD, s0.z(s1VarZ3.A(1)).A(), s0.z(s1VarZ3.A(2)).A(), s0.z(s1VarZ3.A(3)).A(), s0.z(s1VarZ3.A(4)).A(), s0.z(s1VarZ3.A(5)).A(), s0.z(s1VarZ3.A(6)).A(), ik8.d.b(ac2VarD, og8Var.r()).d());
                }
                return new bc2(ac2VarD, s0.z(s1VarZ3.A(1)).A(), s0.z(s1VarZ3.A(2)).A(), s0.z(s1VarZ3.A(3)).A(), s0.z(s1VarZ3.A(4)).A(), s0.z(s1VarZ3.A(5)).A(), s0.z(s1VarZ3.A(6)).A(), null);
            }
            throw new IOException("unknown private key version: " + iF);
        }
        if (l1VarM.s(b40.r1) || l1VarM.s(b40.s1)) {
            vo3 vo3VarO = vo3.o(og8Var.u());
            return new wo3(slb.f(l1VarM), vo3VarO.q(), vo3VarO.n(), vo3VarO.m(), vo3VarO.p().m());
        }
        if (l1VarM.G(b40.k3)) {
            byte[] bArrZ3 = m1.y(og8Var.u()).z();
            v40 v40VarB = slb.b(l1VarM);
            return new w40(v40VarB, ci.q(bArrZ3, 0, v40VarB.b()), ci.q(bArrZ3, v40VarB.b(), v40VarB.b() * 2), ci.q(bArrZ3, v40VarB.b() * 2, bArrZ3.length));
        }
        if (l1VarM.G(b40.o3)) {
            return new ll4(slb.m(l1VarM), m1.y(og8Var.u()).z());
        }
        if (l1VarM.G(b40.A1)) {
            return new c(slb.A(l1VarM), m1.y(og8Var.u()).z());
        }
        if (l1VarM.s(av7.w)) {
            zqc zqcVarN = zqc.n(oaVarP.p());
            l1 l1VarM2 = zqcVarN.o().m();
            krc krcVarO = krc.o(og8Var.u());
            try {
                g.b bVarO = new g.b(new jrc(zqcVarN.m(), slb.j(l1VarM2))).l(krcVarO.n()).q(krcVarO.t()).p(krcVarO.s()).n(krcVarO.q()).o(krcVarO.r());
                if (krcVarO.u() != 0) {
                    bVarO.m(krcVarO.p());
                }
                if (krcVarO.m() != null) {
                    bVarO.k(((BDS) nrc.f(krcVarO.m(), BDS.class)).withWOTSDigest(l1VarM2));
                }
                return bVarO.j();
            } catch (ClassNotFoundException e) {
                throw new IOException("ClassNotFoundException processing BDS state: " + e.getMessage());
            }
        }
        if (!l1VarM.s(av7.F)) {
            if (!l1VarM.s(av7.n)) {
                throw new RuntimeException("algorithm identifier in private key not recognised");
            }
            o96 o96VarP = o96.p(og8Var.u());
            return new p96(o96VarP.r(), o96VarP.q(), o96VarP.n(), o96VarP.o(), o96VarP.s(), slb.k(o96VarP.m().m()));
        }
        crc crcVarN = crc.n(oaVarP.p());
        l1 l1VarM3 = crcVarN.p().m();
        try {
            erc ercVarO = erc.o(og8Var.u());
            frc.b bVarP = new frc.b(new drc(crcVarN.m(), crcVarN.o(), slb.j(l1VarM3))).m(ercVarO.n()).r(ercVarO.t()).q(ercVarO.s()).o(ercVarO.q()).p(ercVarO.r());
            if (ercVarO.u() != 0) {
                bVarP.n(ercVarO.p());
            }
            if (ercVarO.m() != null) {
                bVarP.l(((BDSStateMap) nrc.f(ercVarO.m(), BDSStateMap.class)).withWOTSDigest(l1VarM3));
            }
            return bVarP.k();
        } catch (ClassNotFoundException e2) {
            throw new IOException("ClassNotFoundException processing BDS state: " + e2.getMessage());
        }
    }
}
