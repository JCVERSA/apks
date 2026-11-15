package org.bouncycastle.jce.provider;

import defpackage.d53;
import defpackage.e53;
import defpackage.h1;
import defpackage.h53;
import defpackage.i53;
import defpackage.l1;
import defpackage.m1;
import defpackage.n53;
import defpackage.o53;
import defpackage.oa;
import defpackage.oqc;
import defpackage.p1;
import defpackage.p53;
import defpackage.pa4;
import defpackage.q43;
import defpackage.qqc;
import defpackage.s0;
import defpackage.s1a;
import defpackage.sqc;
import defpackage.t43;
import defpackage.u0a;
import defpackage.u43;
import defpackage.up1;
import defpackage.vqc;
import defpackage.wl1;
import defpackage.wp1;
import defpackage.wqc;
import defpackage.x0;
import defpackage.x43;
import defpackage.y43;
import defpackage.yf5;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;

public class JCEECPublicKey implements ECPublicKey, org.bouncycastle.jce.interfaces.ECPublicKey {
    private String algorithm;
    private ECParameterSpec ecSpec;
    private pa4 gostParams;
    private i53 q;
    private boolean withCompression;

    public JCEECPublicKey(s1a s1aVar) {
        this.algorithm = "EC";
        populateFromPubKeyInfo(s1aVar);
    }

    private ECParameterSpec createSpec(EllipticCurve ellipticCurve, u43 u43Var) {
        return new ECParameterSpec(ellipticCurve, q43.f(u43Var.b()), u43Var.d(), u43Var.c().intValue());
    }

    private void extractBytes(byte[] bArr, int i, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < 32) {
            byte[] bArr2 = new byte[32];
            System.arraycopy(byteArray, 0, bArr2, 32 - byteArray.length, byteArray.length);
            byteArray = bArr2;
        }
        for (int i2 = 0; i2 != 32; i2++) {
            bArr[i + i2] = byteArray[(byteArray.length - 1) - i2];
        }
    }

    private void populateFromPubKeyInfo(s1a s1aVar) {
        t43 t43VarM;
        ECParameterSpec eCParameterSpec;
        byte[] bArrX;
        m1 wp1Var;
        byte b;
        oa oaVarM = s1aVar.m();
        if (oaVarM.m().s(wl1.m)) {
            s0 s0VarO = s1aVar.o();
            this.algorithm = "ECGOST3410";
            try {
                byte[] bArrZ = ((m1) p1.t(s0VarO.x())).z();
                byte[] bArr = new byte[65];
                bArr[0] = 4;
                for (int i = 1; i <= 32; i++) {
                    bArr[i] = bArrZ[32 - i];
                    bArr[i + 32] = bArrZ[64 - i];
                }
                pa4 pa4VarO = pa4.o(oaVarM.p());
                this.gostParams = pa4VarO;
                d53 d53VarA = x43.a(y43.l(pa4VarO.p()));
                t43 t43VarA = d53VarA.a();
                EllipticCurve ellipticCurveB = q43.b(t43VarA, d53VarA.e());
                this.q = t43VarA.i(bArr);
                this.ecSpec = new e53(y43.l(this.gostParams.p()), ellipticCurveB, q43.f(d53VarA.b()), d53VarA.d(), d53VarA.c());
                return;
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering public key");
            }
        }
        oqc oqcVarM = oqc.m(oaVarM.p());
        if (!oqcVarM.p()) {
            if (oqcVarM.o()) {
                this.ecSpec = null;
                t43VarM = BouncyCastleProvider.CONFIGURATION.a().a();
            } else {
                qqc qqcVarP = qqc.p(oqcVarM.n());
                t43VarM = qqcVarP.m();
                eCParameterSpec = new ECParameterSpec(q43.b(t43VarM, qqcVarP.r()), q43.f(qqcVarP.n()), qqcVarP.q(), qqcVarP.o().intValue());
            }
            bArrX = s1aVar.o().x();
            wp1Var = new wp1(bArrX);
            if (bArrX[0] == 4 && bArrX[1] == bArrX.length - 2 && (((b = bArrX[2]) == 2 || b == 3) && new vqc().a(t43VarM) >= bArrX.length - 3)) {
                try {
                    wp1Var = (m1) p1.t(bArrX);
                } catch (IOException unused2) {
                    throw new IllegalArgumentException("error recovering public key");
                }
            }
            this.q = new sqc(t43VarM, wp1Var).m();
        }
        l1 l1Var = (l1) oqcVarM.n();
        qqc qqcVarF = p53.f(l1Var);
        t43VarM = qqcVarF.m();
        eCParameterSpec = new e53(p53.c(l1Var), q43.b(t43VarM, qqcVarF.r()), q43.f(qqcVarF.n()), qqcVarF.q(), qqcVarF.o());
        this.ecSpec = eCParameterSpec;
        bArrX = s1aVar.o().x();
        wp1Var = new wp1(bArrX);
        if (bArrX[0] == 4) {
            wp1Var = (m1) p1.t(bArrX);
        }
        this.q = new sqc(t43VarM, wp1Var).m();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        populateFromPubKeyInfo(s1a.n(p1.t((byte[]) objectInputStream.readObject())));
        this.algorithm = (String) objectInputStream.readObject();
        this.withCompression = objectInputStream.readBoolean();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getEncoded());
        objectOutputStream.writeObject(this.algorithm);
        objectOutputStream.writeBoolean(this.withCompression);
    }

    public i53 engineGetQ() {
        return this.q;
    }

    public h53 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        return eCParameterSpec != null ? q43.g(eCParameterSpec) : BouncyCastleProvider.CONFIGURATION.a();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof JCEECPublicKey)) {
            return false;
        }
        JCEECPublicKey jCEECPublicKey = (JCEECPublicKey) obj;
        return engineGetQ().e(jCEECPublicKey.engineGetQ()) && engineGetSpec().equals(jCEECPublicKey.engineGetSpec());
    }

    @Override
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override
    public byte[] getEncoded() {
        oqc oqcVar;
        s1a s1aVar;
        x0 oqcVar2;
        if (this.algorithm.equals("ECGOST3410")) {
            x0 x0Var = this.gostParams;
            if (x0Var == null) {
                ECParameterSpec eCParameterSpec = this.ecSpec;
                if (eCParameterSpec instanceof e53) {
                    oqcVar2 = new pa4(y43.m(((e53) eCParameterSpec).a()), wl1.p);
                } else {
                    t43 t43VarA = q43.a(eCParameterSpec.getCurve());
                    oqcVar2 = new oqc(new qqc(t43VarA, new sqc(q43.d(t43VarA, this.ecSpec.getGenerator()), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
                }
                x0Var = oqcVar2;
            }
            BigInteger bigIntegerT = this.q.f().t();
            BigInteger bigIntegerT2 = this.q.g().t();
            byte[] bArr = new byte[64];
            extractBytes(bArr, 0, bigIntegerT);
            extractBytes(bArr, 32, bigIntegerT2);
            try {
                s1aVar = new s1a(new oa(wl1.m, x0Var), new wp1(bArr));
            } catch (IOException unused) {
                return null;
            }
        } else {
            ECParameterSpec eCParameterSpec2 = this.ecSpec;
            if (eCParameterSpec2 instanceof e53) {
                l1 l1VarG = p53.g(((e53) eCParameterSpec2).a());
                if (l1VarG == null) {
                    l1VarG = new l1(((e53) this.ecSpec).a());
                }
                oqcVar = new oqc(l1VarG);
            } else if (eCParameterSpec2 == null) {
                oqcVar = new oqc((h1) up1.c);
            } else {
                t43 t43VarA2 = q43.a(eCParameterSpec2.getCurve());
                oqcVar = new oqc(new qqc(t43VarA2, new sqc(q43.d(t43VarA2, this.ecSpec.getGenerator()), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
            }
            s1aVar = new s1a(new oa(wqc.m5, oqcVar), getQ().l(this.withCompression));
        }
        return yf5.e(s1aVar);
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public h53 getParameters() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        if (eCParameterSpec == null) {
            return null;
        }
        return q43.g(eCParameterSpec);
    }

    @Override
    public ECParameterSpec getParams() {
        return this.ecSpec;
    }

    @Override
    public i53 getQ() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        i53 i53Var = this.q;
        return eCParameterSpec == null ? i53Var.k() : i53Var;
    }

    @Override
    public ECPoint getW() {
        return q43.f(this.q);
    }

    public int hashCode() {
        return engineGetSpec().hashCode() ^ engineGetQ().hashCode();
    }

    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        stringBuffer.append("EC Public Key");
        stringBuffer.append(strD);
        stringBuffer.append("            X: ");
        stringBuffer.append(this.q.f().t().toString(16));
        stringBuffer.append(strD);
        stringBuffer.append("            Y: ");
        stringBuffer.append(this.q.g().t().toString(16));
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }

    public JCEECPublicKey(String str, n53 n53Var) {
        this.algorithm = str;
        this.q = n53Var.c();
        this.ecSpec = null;
    }

    public JCEECPublicKey(String str, n53 n53Var, h53 h53Var) {
        this.algorithm = "EC";
        u43 u43VarB = n53Var.b();
        this.algorithm = str;
        this.q = n53Var.c();
        this.ecSpec = h53Var == null ? createSpec(q43.b(u43VarB.a(), u43VarB.e()), u43VarB) : q43.h(q43.b(h53Var.a(), h53Var.e()), h53Var);
    }

    public JCEECPublicKey(String str, n53 n53Var, ECParameterSpec eCParameterSpec) {
        this.algorithm = "EC";
        u43 u43VarB = n53Var.b();
        this.algorithm = str;
        this.q = n53Var.c();
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(q43.b(u43VarB.a(), u43VarB.e()), u43VarB);
        } else {
            this.ecSpec = eCParameterSpec;
        }
    }

    public JCEECPublicKey(String str, o53 o53Var) {
        this.algorithm = str;
        throw null;
    }

    public JCEECPublicKey(String str, ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = str;
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.ecSpec = params;
        this.q = q43.e(params, eCPublicKeySpec.getW());
    }

    public JCEECPublicKey(String str, JCEECPublicKey jCEECPublicKey) {
        this.algorithm = str;
        this.q = jCEECPublicKey.q;
        this.ecSpec = jCEECPublicKey.ecSpec;
        this.withCompression = jCEECPublicKey.withCompression;
        this.gostParams = jCEECPublicKey.gostParams;
    }

    public JCEECPublicKey(ECPublicKey eCPublicKey) {
        this.algorithm = "EC";
        this.algorithm = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.ecSpec = params;
        this.q = q43.e(params, eCPublicKey.getW());
    }
}
