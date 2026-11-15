package org.bouncycastle.jce.provider;

import defpackage.e53;
import defpackage.g1;
import defpackage.h1;
import defpackage.h53;
import defpackage.k53;
import defpackage.l1;
import defpackage.l53;
import defpackage.m53;
import defpackage.oa;
import defpackage.og8;
import defpackage.oqc;
import defpackage.p1;
import defpackage.p53;
import defpackage.q43;
import defpackage.qqc;
import defpackage.s0;
import defpackage.s1a;
import defpackage.sqc;
import defpackage.t43;
import defpackage.u0a;
import defpackage.u43;
import defpackage.up1;
import defpackage.wl1;
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

public class JCEECPrivateKey implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, wu7 {
    private String algorithm;
    private xu7 attrCarrier;
    private BigInteger d;
    private ECParameterSpec ecSpec;
    private s0 publicKey;
    private boolean withCompression;

    public JCEECPrivateKey() {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
    }

    private s0 getPublicKeyDetails(JCEECPublicKey jCEECPublicKey) {
        try {
            return s1a.n(p1.t(jCEECPublicKey.getEncoded())).o();
        } catch (IOException unused) {
            return null;
        }
    }

    private void populateFromPrivKeyInfo(og8 og8Var) throws IOException {
        ECParameterSpec eCParameterSpec;
        oqc oqcVarM = oqc.m(og8Var.p().p());
        if (oqcVarM.p()) {
            l1 l1VarD = l1.D(oqcVarM.n());
            qqc qqcVarF = p53.f(l1VarD);
            if (qqcVarF != null) {
                eCParameterSpec = new e53(p53.c(l1VarD), q43.b(qqcVarF.m(), qqcVarF.r()), q43.f(qqcVarF.n()), qqcVarF.q(), qqcVarF.o());
                this.ecSpec = eCParameterSpec;
            }
        } else if (oqcVarM.o()) {
            this.ecSpec = null;
        } else {
            qqc qqcVarP = qqc.p(oqcVarM.n());
            eCParameterSpec = new ECParameterSpec(q43.b(qqcVarP.m(), qqcVarP.r()), q43.f(qqcVarP.n()), qqcVarP.q(), qqcVarP.o().intValue());
            this.ecSpec = eCParameterSpec;
        }
        x0 x0VarU = og8Var.u();
        if (x0VarU instanceof g1) {
            this.d = g1.y(x0VarU).A();
            return;
        }
        k53 k53VarM = k53.m(x0VarU);
        this.d = k53VarM.n();
        this.publicKey = k53VarM.p();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        populateFromPrivKeyInfo(og8.n(p1.t((byte[]) objectInputStream.readObject())));
        this.algorithm = (String) objectInputStream.readObject();
        this.withCompression = objectInputStream.readBoolean();
        xu7 xu7Var = new xu7();
        this.attrCarrier = xu7Var;
        xu7Var.a(objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getEncoded());
        objectOutputStream.writeObject(this.algorithm);
        objectOutputStream.writeBoolean(this.withCompression);
        this.attrCarrier.b(objectOutputStream);
    }

    public h53 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        return eCParameterSpec != null ? q43.g(eCParameterSpec) : BouncyCastleProvider.CONFIGURATION.a();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof JCEECPrivateKey)) {
            return false;
        }
        JCEECPrivateKey jCEECPrivateKey = (JCEECPrivateKey) obj;
        return getD().equals(jCEECPrivateKey.getD()) && engineGetSpec().equals(jCEECPrivateKey.engineGetSpec());
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

    @Override
    public byte[] getEncoded() {
        oqc oqcVar;
        ECParameterSpec eCParameterSpec = this.ecSpec;
        if (eCParameterSpec instanceof e53) {
            l1 l1VarG = p53.g(((e53) eCParameterSpec).a());
            if (l1VarG == null) {
                l1VarG = new l1(((e53) this.ecSpec).a());
            }
            oqcVar = new oqc(l1VarG);
        } else if (eCParameterSpec == null) {
            oqcVar = new oqc((h1) up1.c);
        } else {
            t43 t43VarA = q43.a(eCParameterSpec.getCurve());
            oqcVar = new oqc(new qqc(t43VarA, new sqc(q43.d(t43VarA, this.ecSpec.getGenerator()), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
        }
        ECParameterSpec eCParameterSpec2 = this.ecSpec;
        int i = eCParameterSpec2 == null ? p53.i(null, null, getS()) : p53.i(null, eCParameterSpec2.getOrder(), getS());
        k53 k53Var = this.publicKey != null ? new k53(i, getS(), this.publicKey, oqcVar) : new k53(i, getS(), oqcVar);
        try {
            return (this.algorithm.equals("ECGOST3410") ? new og8(new oa(wl1.m, oqcVar.j()), k53Var.j()) : new og8(new oa(wqc.m5, oqcVar.j()), k53Var.j())).l("DER");
        } catch (IOException unused) {
            return null;
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
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        stringBuffer.append("EC Private Key");
        stringBuffer.append(strD);
        stringBuffer.append("             S: ");
        stringBuffer.append(this.d.toString(16));
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }

    public JCEECPrivateKey(og8 og8Var) throws IOException {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        populateFromPrivKeyInfo(og8Var);
    }

    public JCEECPrivateKey(String str, l53 l53Var) {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = l53Var.c();
        this.ecSpec = null;
    }

    public JCEECPrivateKey(String str, l53 l53Var, JCEECPublicKey jCEECPublicKey, h53 h53Var) {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = l53Var.c();
        if (h53Var == null) {
            u43 u43VarB = l53Var.b();
            this.ecSpec = new ECParameterSpec(q43.b(u43VarB.a(), u43VarB.e()), q43.f(u43VarB.b()), u43VarB.d(), u43VarB.c().intValue());
        } else {
            this.ecSpec = new ECParameterSpec(q43.b(h53Var.a(), h53Var.e()), q43.f(h53Var.b()), h53Var.d(), h53Var.c().intValue());
        }
        this.publicKey = getPublicKeyDetails(jCEECPublicKey);
    }

    public JCEECPrivateKey(String str, l53 l53Var, JCEECPublicKey jCEECPublicKey, ECParameterSpec eCParameterSpec) {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = l53Var.c();
        if (eCParameterSpec == null) {
            u43 u43VarB = l53Var.b();
            eCParameterSpec = new ECParameterSpec(q43.b(u43VarB.a(), u43VarB.e()), q43.f(u43VarB.b()), u43VarB.d(), u43VarB.c().intValue());
        }
        this.ecSpec = eCParameterSpec;
        this.publicKey = getPublicKeyDetails(jCEECPublicKey);
    }

    public JCEECPrivateKey(String str, m53 m53Var) {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        throw null;
    }

    public JCEECPrivateKey(String str, ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = eCPrivateKeySpec.getS();
        this.ecSpec = eCPrivateKeySpec.getParams();
    }

    public JCEECPrivateKey(String str, JCEECPrivateKey jCEECPrivateKey) {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = jCEECPrivateKey.d;
        this.ecSpec = jCEECPrivateKey.ecSpec;
        this.withCompression = jCEECPrivateKey.withCompression;
        this.attrCarrier = jCEECPrivateKey.attrCarrier;
        this.publicKey = jCEECPrivateKey.publicKey;
    }

    public JCEECPrivateKey(ECPrivateKey eCPrivateKey) {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.d = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.ecSpec = eCPrivateKey.getParams();
    }
}
