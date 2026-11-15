package org.bouncycastle.jcajce.provider.asymmetric.dstu;

import defpackage.d53;
import defpackage.e53;
import defpackage.g1;
import defpackage.h1;
import defpackage.h53;
import defpackage.k53;
import defpackage.l1;
import defpackage.l53;
import defpackage.m53;
import defpackage.mr1;
import defpackage.nr1;
import defpackage.oa;
import defpackage.og8;
import defpackage.oqc;
import defpackage.or1;
import defpackage.p1;
import defpackage.p53;
import defpackage.pdb;
import defpackage.pr1;
import defpackage.q43;
import defpackage.qqc;
import defpackage.qr1;
import defpackage.s0;
import defpackage.s1;
import defpackage.s1a;
import defpackage.sqc;
import defpackage.t43;
import defpackage.u43;
import defpackage.up1;
import defpackage.wqc;
import defpackage.wu7;
import defpackage.x0;
import defpackage.xu7;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPrivateKeySpec;
import java.util.Enumeration;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

public class BCDSTU4145PrivateKey implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, wu7 {
    static final long serialVersionUID = 7245981689601667138L;
    private String algorithm;
    private transient xu7 attrCarrier;
    private transient BigInteger d;
    private transient ECParameterSpec ecSpec;
    private transient s0 publicKey;
    private boolean withCompression;

    public BCDSTU4145PrivateKey() {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new xu7();
    }

    private s0 getPublicKeyDetails(BCDSTU4145PublicKey bCDSTU4145PublicKey) {
        try {
            return s1a.n(p1.t(bCDSTU4145PublicKey.getEncoded())).o();
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0182  */
    /* JADX WARN: Code duplicated, block: B:29:0x018d  */
    private void populateFromPrivKeyInfo(og8 og8Var) throws IOException {
        h53 h53Var;
        ECParameterSpec eCParameterSpec;
        x0 x0VarU;
        oqc oqcVarM = oqc.m(og8Var.p().p());
        if (!oqcVarM.p()) {
            if (oqcVarM.o()) {
                this.ecSpec = null;
            } else {
                s1 s1VarZ = s1.z(oqcVarM.n());
                if (s1VarZ.A(0) instanceof g1) {
                    qqc qqcVarP = qqc.p(oqcVarM.n());
                    eCParameterSpec = new ECParameterSpec(q43.b(qqcVarP.m(), qqcVarP.r()), q43.f(qqcVarP.n()), qqcVarP.q(), qqcVarP.o().intValue());
                } else {
                    pr1 pr1VarP = pr1.p(s1VarZ);
                    if (pr1VarP.r()) {
                        l1 l1VarQ = pr1VarP.q();
                        u43 u43VarA = or1.a(l1VarQ);
                        h53Var = new d53(l1VarQ.B(), u43VarA.a(), u43VarA.b(), u43VarA.d(), u43VarA.c(), u43VarA.e());
                    } else {
                        nr1 nr1VarO = pr1VarP.o();
                        byte[] bArrN = nr1VarO.n();
                        l1 l1VarM = og8Var.p().m();
                        l1 l1Var = pdb.b;
                        if (l1VarM.s(l1Var)) {
                            reverseBytes(bArrN);
                        }
                        mr1 mr1VarO = nr1VarO.o();
                        t43.e eVar = new t43.e(mr1VarO.q(), mr1VarO.n(), mr1VarO.o(), mr1VarO.p(), nr1VarO.m(), new BigInteger(1, bArrN), (BigInteger) null, (BigInteger) null);
                        byte[] bArrP = nr1VarO.p();
                        if (og8Var.p().m().s(l1Var)) {
                            reverseBytes(bArrP);
                        }
                        h53Var = new h53(eVar, qr1.a(eVar, bArrP), nr1VarO.r());
                    }
                    this.ecSpec = new ECParameterSpec(q43.b(h53Var.a(), h53Var.e()), q43.f(h53Var.b()), h53Var.d(), h53Var.c().intValue());
                }
            }
            x0VarU = og8Var.u();
            if (x0VarU instanceof g1) {
                this.d = g1.y(x0VarU).A();
                return;
            }
            k53 k53VarM = k53.m(x0VarU);
            this.d = k53VarM.n();
            this.publicKey = k53VarM.p();
        }
        l1 l1VarD = l1.D(oqcVarM.n());
        qqc qqcVarF = p53.f(l1VarD);
        if (qqcVarF == null) {
            u43 u43VarA2 = or1.a(l1VarD);
            eCParameterSpec = new e53(l1VarD.B(), q43.b(u43VarA2.a(), u43VarA2.e()), q43.f(u43VarA2.b()), u43VarA2.d(), u43VarA2.c());
        } else {
            eCParameterSpec = new e53(p53.c(l1VarD), q43.b(qqcVarF.m(), qqcVarF.r()), q43.f(qqcVarF.n()), qqcVarF.q(), qqcVarF.o());
        }
        this.ecSpec = eCParameterSpec;
        x0VarU = og8Var.u();
        if (x0VarU instanceof g1) {
            this.d = g1.y(x0VarU).A();
            return;
        }
        k53 k53VarM2 = k53.m(x0VarU);
        this.d = k53VarM2.n();
        this.publicKey = k53VarM2.p();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        populateFromPrivKeyInfo(og8.n(p1.t((byte[]) objectInputStream.readObject())));
        this.attrCarrier = new xu7();
    }

    private void reverseBytes(byte[] bArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            byte b = bArr[i];
            bArr[i] = bArr[(bArr.length - 1) - i];
            bArr[(bArr.length - 1) - i] = b;
        }
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
        if (!(obj instanceof BCDSTU4145PrivateKey)) {
            return false;
        }
        BCDSTU4145PrivateKey bCDSTU4145PrivateKey = (BCDSTU4145PrivateKey) obj;
        return getD().equals(bCDSTU4145PrivateKey.getD()) && engineGetSpec().equals(bCDSTU4145PrivateKey.engineGetSpec());
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

    /* JADX WARN: Code duplicated, block: B:14:0x008e  */
    /* JADX WARN: Code duplicated, block: B:15:0x009a  */
    /* JADX WARN: Code duplicated, block: B:18:0x00ad A[Catch: IOException -> 0x00dd, TryCatch #0 {IOException -> 0x00dd, blocks: (B:16:0x00a3, B:18:0x00ad, B:20:0x00d6, B:19:0x00c2), top: B:23:0x00a3 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x00c2 A[Catch: IOException -> 0x00dd, TryCatch #0 {IOException -> 0x00dd, blocks: (B:16:0x00a3, B:18:0x00ad, B:20:0x00d6, B:19:0x00c2), top: B:23:0x00a3 }] */
    @Override
    public byte[] getEncoded() {
        oqc oqcVar;
        int i;
        k53 k53Var;
        og8 og8Var;
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
                if (this.algorithm.equals("DSTU4145")) {
                    og8Var = new og8(new oa(pdb.c, oqcVar.j()), k53Var.j());
                } else {
                    og8Var = new og8(new oa(wqc.m5, oqcVar.j()), k53Var.j());
                }
                return og8Var.l("DER");
            }
            l1 l1VarG = p53.g(((e53) eCParameterSpec).a());
            if (l1VarG == null) {
                l1VarG = new l1(((e53) this.ecSpec).a());
            }
            oqcVar = new oqc(l1VarG);
            if (this.algorithm.equals("DSTU4145")) {
                og8Var = new og8(new oa(pdb.c, oqcVar.j()), k53Var.j());
            } else {
                og8Var = new og8(new oa(wqc.m5, oqcVar.j()), k53Var.j());
            }
            return og8Var.l("DER");
        } catch (IOException unused) {
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

    public BCDSTU4145PrivateKey(m53 m53Var) {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new xu7();
        throw null;
    }

    public BCDSTU4145PrivateKey(og8 og8Var) throws IOException {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new xu7();
        populateFromPrivKeyInfo(og8Var);
    }

    public BCDSTU4145PrivateKey(String str, l53 l53Var) {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = l53Var.c();
        this.ecSpec = null;
    }

    public BCDSTU4145PrivateKey(String str, l53 l53Var, BCDSTU4145PublicKey bCDSTU4145PublicKey, h53 h53Var) {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new xu7();
        u43 u43VarB = l53Var.b();
        this.algorithm = str;
        this.d = l53Var.c();
        this.ecSpec = h53Var == null ? new ECParameterSpec(q43.b(u43VarB.a(), u43VarB.e()), q43.f(u43VarB.b()), u43VarB.d(), u43VarB.c().intValue()) : new ECParameterSpec(q43.b(h53Var.a(), h53Var.e()), q43.f(h53Var.b()), h53Var.d(), h53Var.c().intValue());
        this.publicKey = getPublicKeyDetails(bCDSTU4145PublicKey);
    }

    public BCDSTU4145PrivateKey(String str, l53 l53Var, BCDSTU4145PublicKey bCDSTU4145PublicKey, ECParameterSpec eCParameterSpec) {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new xu7();
        u43 u43VarB = l53Var.b();
        this.algorithm = str;
        this.d = l53Var.c();
        if (eCParameterSpec == null) {
            this.ecSpec = new ECParameterSpec(q43.b(u43VarB.a(), u43VarB.e()), q43.f(u43VarB.b()), u43VarB.d(), u43VarB.c().intValue());
        } else {
            this.ecSpec = eCParameterSpec;
        }
        this.publicKey = getPublicKeyDetails(bCDSTU4145PublicKey);
    }

    public BCDSTU4145PrivateKey(ECPrivateKey eCPrivateKey) {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new xu7();
        this.d = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.ecSpec = eCPrivateKey.getParams();
    }

    public BCDSTU4145PrivateKey(ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new xu7();
        this.d = eCPrivateKeySpec.getS();
        this.ecSpec = eCPrivateKeySpec.getParams();
    }

    public BCDSTU4145PrivateKey(BCDSTU4145PrivateKey bCDSTU4145PrivateKey) {
        this.algorithm = "DSTU4145";
        this.attrCarrier = new xu7();
        this.d = bCDSTU4145PrivateKey.d;
        this.ecSpec = bCDSTU4145PrivateKey.ecSpec;
        this.withCompression = bCDSTU4145PrivateKey.withCompression;
        this.attrCarrier = bCDSTU4145PrivateKey.attrCarrier;
        this.publicKey = bCDSTU4145PrivateKey.publicKey;
    }
}
