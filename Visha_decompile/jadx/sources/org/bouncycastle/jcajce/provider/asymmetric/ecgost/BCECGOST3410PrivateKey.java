package org.bouncycastle.jcajce.provider.asymmetric.ecgost;

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
import defpackage.wl1;
import defpackage.wp1;
import defpackage.wu7;
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

public class BCECGOST3410PrivateKey implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, wu7 {
    static final long serialVersionUID = 7245981689601667138L;
    private String algorithm;
    private transient xu7 attrCarrier;
    private transient BigInteger d;
    private transient ECParameterSpec ecSpec;
    private transient x0 gostParams;
    private transient s0 publicKey;
    private boolean withCompression;

    public BCECGOST3410PrivateKey() {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new xu7();
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

    private s0 getPublicKeyDetails(BCECGOST3410PublicKey bCECGOST3410PublicKey) {
        try {
            return s1a.n(p1.t(bCECGOST3410PublicKey.getEncoded())).o();
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x011d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0128  */
    private void populateFromPrivKeyInfo(og8 og8Var) throws IOException {
        e53 e53Var;
        x0 x0VarU;
        BigInteger bigIntegerA;
        x0 x0VarP = og8Var.p().p();
        p1 p1VarJ = x0VarP.j();
        if ((p1VarJ instanceof s1) && (s1.z(p1VarJ).size() == 2 || s1.z(p1VarJ).size() == 3)) {
            pa4 pa4VarO = pa4.o(x0VarP);
            this.gostParams = pa4VarO;
            d53 d53VarA = x43.a(y43.l(pa4VarO.p()));
            this.ecSpec = new e53(y43.l(pa4VarO.p()), q43.b(d53VarA.a(), d53VarA.e()), q43.f(d53VarA.b()), d53VarA.d(), d53VarA.c());
            x0 x0VarU2 = og8Var.u();
            if (x0VarU2 instanceof g1) {
                bigIntegerA = g1.y(x0VarU2).z();
            } else {
                byte[] bArrZ = m1.y(x0VarU2).z();
                byte[] bArr = new byte[bArrZ.length];
                for (int i = 0; i != bArrZ.length; i++) {
                    bArr[i] = bArrZ[(bArrZ.length - 1) - i];
                }
                bigIntegerA = new BigInteger(1, bArr);
            }
        } else {
            oqc oqcVarM = oqc.m(x0VarP);
            if (oqcVarM.p()) {
                l1 l1VarD = l1.D(oqcVarM.n());
                qqc qqcVarF = p53.f(l1VarD);
                if (qqcVarF == null) {
                    throw new IllegalStateException();
                }
                e53Var = new e53(p53.c(l1VarD), q43.b(qqcVarF.m(), qqcVarF.r()), q43.f(qqcVarF.n()), qqcVarF.q(), qqcVarF.o());
            } else {
                if (oqcVarM.o()) {
                    e53Var = null;
                } else {
                    qqc qqcVarP = qqc.p(oqcVarM.n());
                    this.ecSpec = new ECParameterSpec(q43.b(qqcVarP.m(), qqcVarP.r()), q43.f(qqcVarP.n()), qqcVarP.q(), qqcVarP.o().intValue());
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
            this.ecSpec = e53Var;
            x0VarU = og8Var.u();
            if (x0VarU instanceof g1) {
                k53 k53VarM2 = k53.m(x0VarU);
                this.d = k53VarM2.n();
                this.publicKey = k53VarM2.p();
                return;
            }
            bigIntegerA = g1.y(x0VarU).A();
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
        if (!(obj instanceof BCECGOST3410PrivateKey)) {
            return false;
        }
        BCECGOST3410PrivateKey bCECGOST3410PrivateKey = (BCECGOST3410PrivateKey) obj;
        return getD().equals(bCECGOST3410PrivateKey.getD()) && engineGetSpec().equals(bCECGOST3410PrivateKey.engineGetSpec());
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

    /* JADX WARN: Code duplicated, block: B:20:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:21:0x00c5  */
    @Override
    public byte[] getEncoded() {
        oqc oqcVar;
        int i;
        k53 k53Var;
        if (this.gostParams != null) {
            byte[] bArr = new byte[32];
            extractBytes(bArr, 0, getS());
            try {
                return new og8(new oa(wl1.m, this.gostParams), new wp1(bArr)).l("DER");
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
                return new og8(new oa(wl1.m, oqcVar.j()), k53Var.j()).l("DER");
            }
            l1 l1VarG = p53.g(((e53) eCParameterSpec).a());
            if (l1VarG == null) {
                l1VarG = new l1(((e53) this.ecSpec).a());
            }
            oqcVar = new oqc(l1VarG);
            return new og8(new oa(wl1.m, oqcVar.j()), k53Var.j()).l("DER");
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

    public BCECGOST3410PrivateKey(m53 m53Var) {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new xu7();
        throw null;
    }

    public BCECGOST3410PrivateKey(og8 og8Var) throws IOException {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new xu7();
        populateFromPrivKeyInfo(og8Var);
    }

    public BCECGOST3410PrivateKey(String str, l53 l53Var) {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = l53Var.c();
        this.ecSpec = null;
    }

    public BCECGOST3410PrivateKey(String str, l53 l53Var, BCECGOST3410PublicKey bCECGOST3410PublicKey, h53 h53Var) {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = l53Var.c();
        if (h53Var == null) {
            u43 u43VarB = l53Var.b();
            this.ecSpec = new ECParameterSpec(q43.b(u43VarB.a(), u43VarB.e()), q43.f(u43VarB.b()), u43VarB.d(), u43VarB.c().intValue());
        } else {
            this.ecSpec = new ECParameterSpec(q43.b(h53Var.a(), h53Var.e()), q43.f(h53Var.b()), h53Var.d(), h53Var.c().intValue());
        }
        this.gostParams = bCECGOST3410PublicKey.getGostParams();
        this.publicKey = getPublicKeyDetails(bCECGOST3410PublicKey);
    }

    public BCECGOST3410PrivateKey(String str, l53 l53Var, BCECGOST3410PublicKey bCECGOST3410PublicKey, ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = l53Var.c();
        if (eCParameterSpec == null) {
            u43 u43VarB = l53Var.b();
            eCParameterSpec = new ECParameterSpec(q43.b(u43VarB.a(), u43VarB.e()), q43.f(u43VarB.b()), u43VarB.d(), u43VarB.c().intValue());
        }
        this.ecSpec = eCParameterSpec;
        this.gostParams = bCECGOST3410PublicKey.getGostParams();
        this.publicKey = getPublicKeyDetails(bCECGOST3410PublicKey);
    }

    public BCECGOST3410PrivateKey(ECPrivateKey eCPrivateKey) {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new xu7();
        this.d = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.ecSpec = eCPrivateKey.getParams();
    }

    public BCECGOST3410PrivateKey(ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new xu7();
        this.d = eCPrivateKeySpec.getS();
        this.ecSpec = eCPrivateKeySpec.getParams();
    }

    public BCECGOST3410PrivateKey(BCECGOST3410PrivateKey bCECGOST3410PrivateKey) {
        this.algorithm = "ECGOST3410";
        this.attrCarrier = new xu7();
        this.d = bCECGOST3410PrivateKey.d;
        this.ecSpec = bCECGOST3410PrivateKey.ecSpec;
        this.withCompression = bCECGOST3410PrivateKey.withCompression;
        this.attrCarrier = bCECGOST3410PrivateKey.attrCarrier;
        this.publicKey = bCECGOST3410PrivateKey.publicKey;
        this.gostParams = bCECGOST3410PrivateKey.gostParams;
    }
}
