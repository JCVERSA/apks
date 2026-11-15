package org.bouncycastle.jcajce.provider.asymmetric.ecgost12;

import defpackage.ci;
import defpackage.d53;
import defpackage.e53;
import defpackage.g1;
import defpackage.h1;
import defpackage.h53;
import defpackage.k53;
import defpackage.l1;
import defpackage.l53;
import defpackage.m1;
import defpackage.m53;
import defpackage.oa;
import defpackage.og8;
import defpackage.oqc;
import defpackage.p1;
import defpackage.p53;
import defpackage.pa4;
import defpackage.q43;
import defpackage.qqc;
import defpackage.s0;
import defpackage.s1;
import defpackage.s1a;
import defpackage.sqc;
import defpackage.t43;
import defpackage.u43;
import defpackage.up1;
import defpackage.wp1;
import defpackage.wu7;
import defpackage.wv8;
import defpackage.x0;
import defpackage.x43;
import defpackage.xu7;
import defpackage.y43;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPrivateKeySpec;
import java.util.Enumeration;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

public class BCECGOST3410_2012PrivateKey implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, wu7 {
    static final long serialVersionUID = 7245981689601667138L;
    private String algorithm;
    private transient xu7 attrCarrier;
    private transient BigInteger d;
    private transient ECParameterSpec ecSpec;
    private transient pa4 gostParams;
    private transient s0 publicKey;
    private boolean withCompression;

    public BCECGOST3410_2012PrivateKey() {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new xu7();
    }

    private void extractBytes(byte[] bArr, int i, int i2, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < i) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(byteArray, 0, bArr2, i - byteArray.length, byteArray.length);
            byteArray = bArr2;
        }
        for (int i3 = 0; i3 != i; i3++) {
            bArr[i2 + i3] = byteArray[(byteArray.length - 1) - i3];
        }
    }

    private s0 getPublicKeyDetails(BCECGOST3410_2012PublicKey bCECGOST3410_2012PublicKey) {
        return s1a.n(bCECGOST3410_2012PublicKey.getEncoded()).o();
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0164  */
    /* JADX WARN: Code duplicated, block: B:31:0x016f  */
    private void populateFromPrivKeyInfo(og8 og8Var) throws IOException {
        ECParameterSpec eCParameterSpec;
        x0 x0VarU;
        BigInteger bigIntegerA;
        p1 p1VarJ = og8Var.p().p().j();
        if (!(p1VarJ instanceof s1) || s1.z(p1VarJ).size() > 3) {
            oqc oqcVarM = oqc.m(og8Var.p().p());
            if (oqcVarM.p()) {
                l1 l1VarD = l1.D(oqcVarM.n());
                qqc qqcVarF = p53.f(l1VarD);
                if (qqcVarF == null) {
                    qqc qqcVarK = y43.k(l1VarD);
                    eCParameterSpec = new e53(y43.l(l1VarD), q43.b(qqcVarK.m(), qqcVarK.r()), q43.f(qqcVarK.n()), qqcVarK.q(), qqcVarK.o());
                } else {
                    eCParameterSpec = new e53(p53.c(l1VarD), q43.b(qqcVarF.m(), qqcVarF.r()), q43.f(qqcVarF.n()), qqcVarF.q(), qqcVarF.o());
                }
            } else {
                if (oqcVarM.o()) {
                    this.ecSpec = null;
                } else {
                    qqc qqcVarP = qqc.p(oqcVarM.n());
                    eCParameterSpec = new ECParameterSpec(q43.b(qqcVarP.m(), qqcVarP.r()), q43.f(qqcVarP.n()), qqcVarP.q(), qqcVarP.o().intValue());
                }
                x0VarU = og8Var.u();
                if (x0VarU instanceof g1) {
                    k53 k53VarM = k53.m(x0VarU);
                    this.d = k53VarM.n();
                    this.publicKey = k53VarM.p();
                    return;
                }
                bigIntegerA = g1.y(x0VarU).A();
            }
            this.ecSpec = eCParameterSpec;
            x0VarU = og8Var.u();
            if (x0VarU instanceof g1) {
                k53 k53VarM2 = k53.m(x0VarU);
                this.d = k53VarM2.n();
                this.publicKey = k53VarM2.p();
                return;
            }
            bigIntegerA = g1.y(x0VarU).A();
        } else {
            pa4 pa4VarO = pa4.o(og8Var.p().p());
            this.gostParams = pa4VarO;
            d53 d53VarA = x43.a(y43.l(pa4VarO.p()));
            this.ecSpec = new e53(y43.l(this.gostParams.p()), q43.b(d53VarA.a(), d53VarA.e()), q43.f(d53VarA.b()), d53VarA.d(), d53VarA.c());
            m1 m1VarO = og8Var.o();
            if (m1VarO.z().length == 32 || m1VarO.z().length == 64) {
                bigIntegerA = new BigInteger(1, ci.E(m1VarO.z()));
            } else {
                x0 x0VarU2 = og8Var.u();
                if (!(x0VarU2 instanceof g1)) {
                    this.d = new BigInteger(1, ci.E(m1.y(x0VarU2).z()));
                    return;
                }
                bigIntegerA = g1.y(x0VarU2).z();
            }
        }
        this.d = bigIntegerA;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        populateFromPrivKeyInfo(og8.n(p1.t((byte[]) objectInputStream.readObject())));
        this.attrCarrier = new xu7();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public h53 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        return eCParameterSpec != null ? q43.g(eCParameterSpec) : BouncyCastleProvider.CONFIGURATION.a();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BCECGOST3410_2012PrivateKey)) {
            return false;
        }
        BCECGOST3410_2012PrivateKey bCECGOST3410_2012PrivateKey = (BCECGOST3410_2012PrivateKey) obj;
        return getD().equals(bCECGOST3410_2012PrivateKey.getD()) && engineGetSpec().equals(bCECGOST3410_2012PrivateKey.engineGetSpec());
    }

    @Override
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override
    public x0 getBagAttribute(l1 l1Var) {
        return this.attrCarrier.getBagAttribute(l1Var);
    }

    @Override
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override
    public BigInteger getD() {
        return this.d;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:31:0x00dc  */
    @Override
    public byte[] getEncoded() {
        oqc oqcVar;
        int i;
        k53 k53Var;
        boolean z = this.d.bitLength() > 256;
        l1 l1Var = z ? wv8.h : wv8.g;
        int i2 = z ? 64 : 32;
        if (this.gostParams != null) {
            byte[] bArr = new byte[i2];
            extractBytes(bArr, i2, 0, getS());
            try {
                return new og8(new oa(l1Var, this.gostParams), new wp1(bArr)).l("DER");
            } catch (IOException unused) {
                return null;
            }
        }
        ECParameterSpec eCParameterSpec = this.ecSpec;
        try {
            if (!(eCParameterSpec instanceof e53)) {
                if (eCParameterSpec == null) {
                    oqcVar = new oqc((h1) up1.c);
                    i = p53.i(BouncyCastleProvider.CONFIGURATION, null, getS());
                } else {
                    t43 t43VarA = q43.a(eCParameterSpec.getCurve());
                    oqcVar = new oqc(new qqc(t43VarA, new sqc(q43.d(t43VarA, this.ecSpec.getGenerator()), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
                }
                if (this.publicKey != null) {
                    k53Var = new k53(i, getS(), this.publicKey, oqcVar);
                } else {
                    k53Var = new k53(i, getS(), oqcVar);
                }
                return new og8(new oa(l1Var, oqcVar.j()), k53Var.j()).l("DER");
            }
            l1 l1VarG = p53.g(((e53) eCParameterSpec).a());
            if (l1VarG == null) {
                l1VarG = new l1(((e53) this.ecSpec).a());
            }
            oqcVar = new oqc(l1VarG);
            return new og8(new oa(l1Var, oqcVar.j()), k53Var.j()).l("DER");
        } catch (IOException unused2) {
            return null;
        }
        i = p53.i(BouncyCastleProvider.CONFIGURATION, this.ecSpec.getOrder(), getS());
        if (this.publicKey != null) {
            k53Var = new k53(i, getS(), this.publicKey, oqcVar);
        } else {
            k53Var = new k53(i, getS(), oqcVar);
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
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
    public BigInteger getS() {
        return this.d;
    }

    public int hashCode() {
        return engineGetSpec().hashCode() ^ getD().hashCode();
    }

    @Override
    public void setBagAttribute(l1 l1Var, x0 x0Var) {
        this.attrCarrier.setBagAttribute(l1Var, x0Var);
    }

    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return p53.j(this.algorithm, this.d, engineGetSpec());
    }

    public BCECGOST3410_2012PrivateKey(m53 m53Var) {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new xu7();
        throw null;
    }

    public BCECGOST3410_2012PrivateKey(og8 og8Var) throws IOException {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new xu7();
        populateFromPrivKeyInfo(og8Var);
    }

    public BCECGOST3410_2012PrivateKey(String str, l53 l53Var) {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = l53Var.c();
        this.ecSpec = null;
    }

    public BCECGOST3410_2012PrivateKey(String str, l53 l53Var, BCECGOST3410_2012PublicKey bCECGOST3410_2012PublicKey, h53 h53Var) {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new xu7();
        u43 u43VarB = l53Var.b();
        this.algorithm = str;
        this.d = l53Var.c();
        this.ecSpec = h53Var == null ? new ECParameterSpec(q43.b(u43VarB.a(), u43VarB.e()), q43.f(u43VarB.b()), u43VarB.d(), u43VarB.c().intValue()) : new ECParameterSpec(q43.b(h53Var.a(), h53Var.e()), q43.f(h53Var.b()), h53Var.d(), h53Var.c().intValue());
        this.gostParams = bCECGOST3410_2012PublicKey.getGostParams();
        this.publicKey = getPublicKeyDetails(bCECGOST3410_2012PublicKey);
    }

    public BCECGOST3410_2012PrivateKey(String str, l53 l53Var, BCECGOST3410_2012PublicKey bCECGOST3410_2012PublicKey, ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new xu7();
        u43 u43VarB = l53Var.b();
        this.algorithm = str;
        this.d = l53Var.c();
        if (eCParameterSpec == null) {
            this.ecSpec = new ECParameterSpec(q43.b(u43VarB.a(), u43VarB.e()), q43.f(u43VarB.b()), u43VarB.d(), u43VarB.c().intValue());
        } else {
            this.ecSpec = eCParameterSpec;
        }
        this.gostParams = bCECGOST3410_2012PublicKey.getGostParams();
        this.publicKey = getPublicKeyDetails(bCECGOST3410_2012PublicKey);
    }

    public BCECGOST3410_2012PrivateKey(ECPrivateKey eCPrivateKey) {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new xu7();
        this.d = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.ecSpec = eCPrivateKey.getParams();
    }

    public BCECGOST3410_2012PrivateKey(ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new xu7();
        this.d = eCPrivateKeySpec.getS();
        this.ecSpec = eCPrivateKeySpec.getParams();
    }

    public BCECGOST3410_2012PrivateKey(BCECGOST3410_2012PrivateKey bCECGOST3410_2012PrivateKey) {
        this.algorithm = "ECGOST3410-2012";
        this.attrCarrier = new xu7();
        this.d = bCECGOST3410_2012PrivateKey.d;
        this.ecSpec = bCECGOST3410_2012PrivateKey.ecSpec;
        this.withCompression = bCECGOST3410_2012PrivateKey.withCompression;
        this.attrCarrier = bCECGOST3410_2012PrivateKey.attrCarrier;
        this.publicKey = bCECGOST3410_2012PrivateKey.publicKey;
        this.gostParams = bCECGOST3410_2012PrivateKey.gostParams;
    }
}
