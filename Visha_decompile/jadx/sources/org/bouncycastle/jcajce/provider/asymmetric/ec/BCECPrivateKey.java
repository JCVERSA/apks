package org.bouncycastle.jcajce.provider.asymmetric.ec;

import defpackage.ci;
import defpackage.d53;
import defpackage.f53;
import defpackage.g1;
import defpackage.g53;
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
import defpackage.q53;
import defpackage.qj8;
import defpackage.s0;
import defpackage.s1a;
import defpackage.u43;
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

public class BCECPrivateKey implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, wu7 {
    static final long serialVersionUID = 994553197664784084L;
    private String algorithm;
    private transient xu7 attrCarrier;
    private transient l53 baseKey;
    private transient qj8 configuration;
    private transient BigInteger d;
    private transient ECParameterSpec ecSpec;
    private transient byte[] encoding;
    private transient og8 privateKeyInfo;
    private transient s0 publicKey;
    private boolean withCompression;

    public BCECPrivateKey() {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
    }

    private static l53 convertToBaseKey(BCECPrivateKey bCECPrivateKey) {
        String strF;
        h53 parameters = bCECPrivateKey.getParameters();
        if (parameters == null) {
            parameters = BouncyCastleProvider.CONFIGURATION.a();
        }
        return (!(bCECPrivateKey.getParameters() instanceof d53) || (strF = ((d53) bCECPrivateKey.getParameters()).f()) == null) ? new l53(bCECPrivateKey.getD(), new u43(parameters.a(), parameters.b(), parameters.d(), parameters.c(), parameters.e())) : new l53(bCECPrivateKey.getD(), new g53(f53.d(strF), parameters.a(), parameters.b(), parameters.d(), parameters.c(), parameters.e()));
    }

    private og8 getPrivateKeyInfo() {
        if (this.privateKeyInfo == null) {
            oqc oqcVarA = q53.a(this.ecSpec, this.withCompression);
            ECParameterSpec eCParameterSpec = this.ecSpec;
            int i = eCParameterSpec == null ? p53.i(this.configuration, null, getS()) : p53.i(this.configuration, eCParameterSpec.getOrder(), getS());
            try {
                this.privateKeyInfo = new og8(new oa(wqc.m5, oqcVarA), this.publicKey != null ? new k53(i, getS(), this.publicKey, oqcVarA) : new k53(i, getS(), oqcVarA));
            } catch (IOException unused) {
                return null;
            }
        }
        return this.privateKeyInfo;
    }

    private s0 getPublicKeyDetails(BCECPublicKey bCECPublicKey) {
        try {
            return s1a.n(p1.t(bCECPublicKey.getEncoded())).o();
        } catch (IOException unused) {
            return null;
        }
    }

    private void populateFromPrivKeyInfo(og8 og8Var) throws IOException {
        oqc oqcVarM = oqc.m(og8Var.p().p());
        this.ecSpec = q43.i(oqcVarM, q43.k(this.configuration, oqcVarM));
        x0 x0VarU = og8Var.u();
        if (x0VarU instanceof g1) {
            this.d = g1.y(x0VarU).A();
        } else {
            k53 k53VarM = k53.m(x0VarU);
            this.d = k53VarM.n();
            this.publicKey = k53VarM.p();
        }
        this.baseKey = convertToBaseKey(this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        byte[] bArr = (byte[]) objectInputStream.readObject();
        this.configuration = BouncyCastleProvider.CONFIGURATION;
        populateFromPrivKeyInfo(og8.n(p1.t(bArr)));
        this.attrCarrier = new xu7();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public l53 engineGetKeyParameters() {
        return this.baseKey;
    }

    public h53 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        return eCParameterSpec != null ? q43.g(eCParameterSpec) : this.configuration.a();
    }

    public boolean equals(Object obj) {
        if (obj instanceof ECPrivateKey) {
            ECPrivateKey eCPrivateKey = (ECPrivateKey) obj;
            og8 privateKeyInfo = getPrivateKeyInfo();
            og8 privateKeyInfo2 = eCPrivateKey instanceof BCECPrivateKey ? ((BCECPrivateKey) eCPrivateKey).getPrivateKeyInfo() : og8.n(eCPrivateKey.getEncoded());
            if (privateKeyInfo != null && privateKeyInfo2 != null) {
                try {
                    return ci.o(getS().toByteArray(), eCPrivateKey.getS().toByteArray()) & ci.o(privateKeyInfo.p().getEncoded(), privateKeyInfo2.p().getEncoded());
                } catch (IOException unused) {
                }
            }
        }
        return false;
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
        if (this.encoding == null) {
            og8 privateKeyInfo = getPrivateKeyInfo();
            if (privateKeyInfo == null) {
                return null;
            }
            try {
                this.encoding = privateKeyInfo.l("DER");
            } catch (IOException unused) {
                return null;
            }
        }
        return ci.f(this.encoding);
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
        return p53.j("EC", this.d, engineGetSpec());
    }

    public BCECPrivateKey(String str, l53 l53Var, qj8 qj8Var) {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = l53Var.c();
        this.ecSpec = null;
        this.configuration = qj8Var;
        this.baseKey = l53Var;
    }

    public BCECPrivateKey(String str, l53 l53Var, BCECPublicKey bCECPublicKey, h53 h53Var, qj8 qj8Var) {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = l53Var.c();
        this.configuration = qj8Var;
        this.baseKey = l53Var;
        if (h53Var == null) {
            u43 u43VarB = l53Var.b();
            this.ecSpec = new ECParameterSpec(q43.b(u43VarB.a(), u43VarB.e()), q43.f(u43VarB.b()), u43VarB.d(), u43VarB.c().intValue());
        } else {
            this.ecSpec = q43.h(q43.b(h53Var.a(), h53Var.e()), h53Var);
        }
        try {
            this.publicKey = getPublicKeyDetails(bCECPublicKey);
        } catch (Exception unused) {
            this.publicKey = null;
        }
    }

    public BCECPrivateKey(String str, l53 l53Var, BCECPublicKey bCECPublicKey, ECParameterSpec eCParameterSpec, qj8 qj8Var) {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = l53Var.c();
        this.configuration = qj8Var;
        this.baseKey = l53Var;
        if (eCParameterSpec == null) {
            u43 u43VarB = l53Var.b();
            eCParameterSpec = new ECParameterSpec(q43.b(u43VarB.a(), u43VarB.e()), q43.f(u43VarB.b()), u43VarB.d(), u43VarB.c().intValue());
        }
        this.ecSpec = eCParameterSpec;
        this.publicKey = getPublicKeyDetails(bCECPublicKey);
    }

    public BCECPrivateKey(String str, m53 m53Var, qj8 qj8Var) {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        throw null;
    }

    public BCECPrivateKey(String str, og8 og8Var, qj8 qj8Var) throws IOException {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.configuration = qj8Var;
        populateFromPrivKeyInfo(og8Var);
    }

    public BCECPrivateKey(String str, ECPrivateKeySpec eCPrivateKeySpec, qj8 qj8Var) {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = eCPrivateKeySpec.getS();
        this.ecSpec = eCPrivateKeySpec.getParams();
        this.configuration = qj8Var;
        this.baseKey = convertToBaseKey(this);
    }

    public BCECPrivateKey(String str, BCECPrivateKey bCECPrivateKey) {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.algorithm = str;
        this.d = bCECPrivateKey.d;
        this.ecSpec = bCECPrivateKey.ecSpec;
        this.withCompression = bCECPrivateKey.withCompression;
        this.attrCarrier = bCECPrivateKey.attrCarrier;
        this.publicKey = bCECPrivateKey.publicKey;
        this.configuration = bCECPrivateKey.configuration;
        this.baseKey = bCECPrivateKey.baseKey;
    }

    public BCECPrivateKey(ECPrivateKey eCPrivateKey, qj8 qj8Var) {
        this.algorithm = "EC";
        this.attrCarrier = new xu7();
        this.d = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.ecSpec = eCPrivateKey.getParams();
        this.configuration = qj8Var;
        this.baseKey = convertToBaseKey(this);
    }
}
