package defpackage;

import java.io.IOException;
import org.bouncycastle.pqc.crypto.rainbow.c;
import org.bouncycastle.pqc.crypto.xmss.BDS;
import org.bouncycastle.pqc.crypto.xmss.BDSStateMap;
import org.bouncycastle.pqc.crypto.xmss.g;

public abstract class pg8 {
    public static og8 a(dj djVar, t1 t1Var) throws IOException {
        if (djVar instanceof rk8) {
            rk8 rk8Var = (rk8) djVar;
            return new og8(slb.x(rk8Var.c()), new wp1(rk8Var.b()), t1Var);
        }
        if (djVar instanceof yy8) {
            yy8 yy8Var = (yy8) djVar;
            return new og8(new oa(av7.r, new ny8(slb.F(yy8Var.b()))), new wp1(yy8Var.c()));
        }
        if (djVar instanceof zw6) {
            oa oaVar = new oa(av7.v);
            short[] sArrB = ((zw6) djVar).b();
            byte[] bArr = new byte[sArrB.length * 2];
            for (int i = 0; i != sArrB.length; i++) {
                cv7.o(sArrB[i], bArr, i * 2);
            }
            return new og8(oaVar, new wp1(bArr));
        }
        if (djVar instanceof ji5) {
            ji5 ji5Var = (ji5) djVar;
            byte[] bArrB = zc1.f().i(1).c(ji5Var).b();
            return new og8(new oa(yu7.H3), new wp1(bArrB), t1Var, zc1.f().i(1).c(ji5Var.n()).b());
        }
        if (djVar instanceof cm4) {
            cm4 cm4Var = (cm4) djVar;
            byte[] bArrB2 = zc1.f().i(cm4Var.g()).c(cm4Var).b();
            return new og8(new oa(yu7.H3), new wp1(bArrB2), t1Var, zc1.f().i(cm4Var.g()).c(cm4Var.h().d()).b());
        }
        if (djVar instanceof wy8) {
            wy8 wy8Var = (wy8) djVar;
            return new og8(new oa(slb.H(wy8Var.b())), new wp1(wy8Var.getEncoded()), t1Var, wy8Var.c());
        }
        if (djVar instanceof g18) {
            g18 g18Var = (g18) djVar;
            return new og8(new oa(slb.v(g18Var.b())), new wp1(g18Var.getEncoded()), t1Var);
        }
        if (djVar instanceof bp0) {
            bp0 bp0Var = (bp0) djVar;
            return new og8(new oa(slb.p(bp0Var.b())), new ap0(0, bp0Var.e(), bp0Var.d(), bp0Var.f(), bp0Var.c(), bp0Var.g(), new cp0(bp0Var.h())), t1Var);
        }
        if (djVar instanceof g) {
            g gVar = (g) djVar;
            return new og8(new oa(av7.w, new zqc(gVar.e().b(), slb.J(gVar.b()))), b(gVar), t1Var);
        }
        if (djVar instanceof frc) {
            frc frcVar = (frc) djVar;
            return new og8(new oa(av7.F, new crc(frcVar.e().a(), frcVar.e().b(), slb.J(frcVar.b()))), c(frcVar), t1Var);
        }
        if (djVar instanceof p96) {
            p96 p96Var = (p96) djVar;
            return new og8(new oa(av7.n), new o96(p96Var.g(), p96Var.f(), p96Var.c(), p96Var.d(), p96Var.h(), slb.i(p96Var.b())));
        }
        if (djVar instanceof x64) {
            x64 x64Var = (x64) djVar;
            return new og8(new oa(slb.g(x64Var.b())), new wp1(x64Var.getEncoded()), t1Var);
        }
        if (djVar instanceof lx8) {
            lx8 lx8Var = (lx8) djVar;
            return new og8(new oa(slb.B(lx8Var.b())), new wp1(lx8Var.getEncoded()), t1Var);
        }
        if (djVar instanceof wx6) {
            wx6 wx6Var = (wx6) djVar;
            return new og8(new oa(slb.r(wx6Var.b())), new wp1(wx6Var.getEncoded()), t1Var);
        }
        if (djVar instanceof wo3) {
            wo3 wo3Var = (wo3) djVar;
            return new og8(new oa(slb.e(wo3Var.b())), new vo3(0, wo3Var.f(), wo3Var.c(), wo3Var.e(), new xo3(wo3Var.d())), t1Var);
        }
        if (djVar instanceof sh5) {
            sh5 sh5Var = (sh5) djVar;
            return new og8(new oa(slb.n(sh5Var.b())), new wp1(sh5Var.getEncoded()), t1Var);
        }
        if (djVar instanceof rx6) {
            rx6 rx6Var = (rx6) djVar;
            y0 y0Var = new y0();
            y0Var.a(new wp1(rx6Var.c()));
            y0Var.a(new wp1(rx6Var.e()));
            y0Var.a(new wp1(rx6Var.f()));
            y0Var.a(new wp1(rx6Var.d()));
            return new og8(new oa(slb.t(rx6Var.b())), new aq1(y0Var), t1Var);
        }
        if (djVar instanceof iy8) {
            iy8 iy8Var = (iy8) djVar;
            y0 y0Var2 = new y0();
            y0Var2.a(new wp1(iy8Var.c()));
            y0Var2.a(new wp1(iy8Var.d()));
            y0Var2.a(new wp1(iy8Var.f()));
            y0Var2.a(new wp1(iy8Var.g()));
            y0Var2.a(new wp1(iy8Var.e()));
            return new og8(new oa(slb.D(iy8Var.b())), new aq1(y0Var2), t1Var);
        }
        if (djVar instanceof bc2) {
            bc2 bc2Var = (bc2) djVar;
            return new og8(new oa(slb.c(bc2Var.b())), new wp1(bc2Var.getEncoded()), t1Var, bc2Var.c().getEncoded());
        }
        if (djVar instanceof w40) {
            w40 w40Var = (w40) djVar;
            return new og8(new oa(slb.a(w40Var.b())), new wp1(w40Var.getEncoded()), t1Var);
        }
        if (djVar instanceof ll4) {
            ll4 ll4Var = (ll4) djVar;
            return new og8(new oa(slb.l(ll4Var.b())), new wp1(ll4Var.getEncoded()), t1Var);
        }
        if (!(djVar instanceof c)) {
            throw new IOException("key parameters not recognized");
        }
        c cVar = (c) djVar;
        return new og8(new oa(slb.z(cVar.b())), new wp1(cVar.getEncoded()), t1Var);
    }

    public static krc b(g gVar) throws IOException {
        byte[] encoded = gVar.getEncoded();
        int iH = gVar.e().h();
        int iB = gVar.e().b();
        int iA = (int) nrc.a(encoded, 0, 4);
        if (!nrc.l(iB, iA)) {
            throw new IllegalArgumentException("index out of bounds");
        }
        byte[] bArrG = nrc.g(encoded, 4, iH);
        int i = 4 + iH;
        byte[] bArrG2 = nrc.g(encoded, i, iH);
        int i2 = i + iH;
        byte[] bArrG3 = nrc.g(encoded, i2, iH);
        int i3 = i2 + iH;
        byte[] bArrG4 = nrc.g(encoded, i3, iH);
        int i4 = i3 + iH;
        byte[] bArrG5 = nrc.g(encoded, i4, encoded.length - i4);
        try {
            BDS bds = (BDS) nrc.f(bArrG5, BDS.class);
            return bds.getMaxIndex() != (1 << iB) - 1 ? new krc(iA, bArrG, bArrG2, bArrG3, bArrG4, bArrG5, bds.getMaxIndex()) : new krc(iA, bArrG, bArrG2, bArrG3, bArrG4, bArrG5);
        } catch (ClassNotFoundException e) {
            throw new IOException("cannot parse BDS: " + e.getMessage());
        }
    }

    public static erc c(frc frcVar) throws IOException {
        byte[] encoded = frcVar.getEncoded();
        int iF = frcVar.e().f();
        int iA = frcVar.e().a();
        int i = (iA + 7) / 8;
        long jA = (int) nrc.a(encoded, 0, i);
        if (!nrc.l(iA, jA)) {
            throw new IllegalArgumentException("index out of bounds");
        }
        byte[] bArrG = nrc.g(encoded, i, iF);
        int i2 = i + iF;
        byte[] bArrG2 = nrc.g(encoded, i2, iF);
        int i3 = i2 + iF;
        byte[] bArrG3 = nrc.g(encoded, i3, iF);
        int i4 = i3 + iF;
        byte[] bArrG4 = nrc.g(encoded, i4, iF);
        int i5 = i4 + iF;
        byte[] bArrG5 = nrc.g(encoded, i5, encoded.length - i5);
        try {
            BDSStateMap bDSStateMap = (BDSStateMap) nrc.f(bArrG5, BDSStateMap.class);
            return bDSStateMap.getMaxIndex() != (1 << iA) - 1 ? new erc(jA, bArrG, bArrG2, bArrG3, bArrG4, bArrG5, bDSStateMap.getMaxIndex()) : new erc(jA, bArrG, bArrG2, bArrG3, bArrG4, bArrG5);
        } catch (ClassNotFoundException e) {
            throw new IOException("cannot parse BDSStateMap: " + e.getMessage());
        }
    }
}
