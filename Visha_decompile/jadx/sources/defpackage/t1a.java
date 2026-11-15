package defpackage;

import java.io.IOException;
import org.bouncycastle.pqc.crypto.rainbow.d;

public abstract class t1a {
    public static s1a a(dj djVar) throws IOException {
        if (djVar instanceof sk8) {
            sk8 sk8Var = (sk8) djVar;
            return new s1a(slb.x(sk8Var.c()), sk8Var.b());
        }
        if (djVar instanceof zy8) {
            zy8 zy8Var = (zy8) djVar;
            return new s1a(new oa(av7.r, new ny8(slb.F(zy8Var.b()))), zy8Var.c());
        }
        if (djVar instanceof ax6) {
            return new s1a(new oa(av7.v), ((ax6) djVar).b());
        }
        if (djVar instanceof ki5) {
            return new s1a(new oa(yu7.H3), new wp1(zc1.f().i(1).c((ki5) djVar).b()));
        }
        if (djVar instanceof dm4) {
            dm4 dm4Var = (dm4) djVar;
            return new s1a(new oa(yu7.H3), new wp1(zc1.f().i(dm4Var.c()).c(dm4Var.d()).b()));
        }
        if (djVar instanceof xy8) {
            xy8 xy8Var = (xy8) djVar;
            return new s1a(new oa(slb.H(xy8Var.b())), xy8Var.getEncoded());
        }
        if (djVar instanceof dp0) {
            dp0 dp0Var = (dp0) djVar;
            return new s1a(new oa(slb.p(dp0Var.b())), dp0Var.getEncoded());
        }
        if (djVar instanceof mrc) {
            mrc mrcVar = (mrc) djVar;
            byte[] bArrD = mrcVar.d();
            byte[] bArrE = mrcVar.e();
            byte[] encoded = mrcVar.getEncoded();
            return encoded.length > bArrD.length + bArrE.length ? new s1a(new oa(l55.a), new wp1(encoded)) : new s1a(new oa(av7.w, new zqc(mrcVar.c().b(), slb.J(mrcVar.b()))), new lrc(bArrD, bArrE));
        }
        if (djVar instanceof hrc) {
            hrc hrcVar = (hrc) djVar;
            byte[] bArrD2 = hrcVar.d();
            byte[] bArrE2 = hrcVar.e();
            byte[] encoded2 = hrcVar.getEncoded();
            return encoded2.length > bArrD2.length + bArrE2.length ? new s1a(new oa(l55.b), new wp1(encoded2)) : new s1a(new oa(av7.F, new crc(hrcVar.c().a(), hrcVar.c().b(), slb.J(hrcVar.b()))), new grc(hrcVar.d(), hrcVar.e()));
        }
        if (djVar instanceof r96) {
            r96 r96Var = (r96) djVar;
            return new s1a(new oa(av7.n), new q96(r96Var.e(), r96Var.f(), r96Var.c(), slb.i(r96Var.b())));
        }
        if (djVar instanceof y64) {
            y64 y64Var = (y64) djVar;
            return new s1a(new oa(slb.g(y64Var.b())), new wp1(y64Var.getEncoded()));
        }
        if (djVar instanceof mx8) {
            mx8 mx8Var = (mx8) djVar;
            return new s1a(new oa(slb.B(mx8Var.b())), new aq1(new wp1(mx8Var.getEncoded())));
        }
        if (djVar instanceof h18) {
            h18 h18Var = (h18) djVar;
            return new s1a(new oa(slb.v(h18Var.b())), new wp1(h18Var.getEncoded()));
        }
        if (djVar instanceof xx6) {
            xx6 xx6Var = (xx6) djVar;
            return new s1a(new oa(slb.r(xx6Var.b())), new wp1(xx6Var.getEncoded()));
        }
        if (djVar instanceof yo3) {
            yo3 yo3Var = (yo3) djVar;
            byte[] bArrC = yo3Var.c();
            oa oaVar = new oa(slb.e(yo3Var.b()));
            byte[] bArr = new byte[bArrC.length + 1];
            bArr[0] = (byte) yo3Var.b().a();
            System.arraycopy(bArrC, 0, bArr, 1, bArrC.length);
            return new s1a(oaVar, bArr);
        }
        if (djVar instanceof uh5) {
            uh5 uh5Var = (uh5) djVar;
            return new s1a(new oa(slb.n(uh5Var.b())), uh5Var.getEncoded());
        }
        if (djVar instanceof sx6) {
            sx6 sx6Var = (sx6) djVar;
            return new s1a(new oa(slb.t(sx6Var.b())), new wp1(sx6Var.getEncoded()));
        }
        if (djVar instanceof jy8) {
            jy8 jy8Var = (jy8) djVar;
            return new s1a(new oa(slb.D(jy8Var.b())), new wp1(jy8Var.getEncoded()));
        }
        if (djVar instanceof cc2) {
            cc2 cc2Var = (cc2) djVar;
            return new s1a(new oa(slb.c(cc2Var.b())), cc2Var.getEncoded());
        }
        if (djVar instanceof x40) {
            x40 x40Var = (x40) djVar;
            return new s1a(new oa(slb.a(x40Var.b())), x40Var.getEncoded());
        }
        if (djVar instanceof ml4) {
            ml4 ml4Var = (ml4) djVar;
            return new s1a(new oa(slb.l(ml4Var.b())), ml4Var.getEncoded());
        }
        if (!(djVar instanceof d)) {
            throw new IOException("key parameters not recognized");
        }
        d dVar = (d) djVar;
        return new s1a(new oa(slb.z(dVar.b())), new wp1(dVar.getEncoded()));
    }
}
