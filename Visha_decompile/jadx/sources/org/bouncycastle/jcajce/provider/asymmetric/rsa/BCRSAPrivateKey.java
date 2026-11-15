package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import defpackage.cn8;
import defpackage.en8;
import defpackage.hn8;
import defpackage.l1;
import defpackage.oa;
import defpackage.u0a;
import defpackage.wu7;
import defpackage.x0;
import defpackage.xu7;
import defpackage.yf5;
import defpackage.yu7;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.RSAPrivateKey;
import java.security.spec.RSAPrivateKeySpec;
import java.util.Enumeration;

public class BCRSAPrivateKey implements RSAPrivateKey, wu7 {
    private static BigInteger ZERO = BigInteger.valueOf(0);
    static final long serialVersionUID = 5110188922551353628L;
    protected transient oa algorithmIdentifier;
    private byte[] algorithmIdentifierEnc;
    protected transient xu7 attrCarrier;
    protected BigInteger modulus;
    protected BigInteger privateExponent;
    protected transient cn8 rsaPrivateKey;

    public BCRSAPrivateKey(oa oaVar, cn8 cn8Var) {
        oa oaVar2 = BCRSAPublicKey.DEFAULT_ALGORITHM_IDENTIFIER;
        this.algorithmIdentifierEnc = getEncoding(oaVar2);
        this.algorithmIdentifier = oaVar2;
        this.attrCarrier = new xu7();
        this.algorithmIdentifier = oaVar;
        this.algorithmIdentifierEnc = getEncoding(oaVar);
        this.modulus = cn8Var.d();
        this.privateExponent = cn8Var.b();
        this.rsaPrivateKey = cn8Var;
    }

    private static byte[] getEncoding(oa oaVar) {
        try {
            return oaVar.getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        if (this.algorithmIdentifierEnc == null) {
            this.algorithmIdentifierEnc = getEncoding(BCRSAPublicKey.DEFAULT_ALGORITHM_IDENTIFIER);
        }
        this.algorithmIdentifier = oa.o(this.algorithmIdentifierEnc);
        this.attrCarrier = new xu7();
        this.rsaPrivateKey = new cn8(true, this.modulus, this.privateExponent);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
    }

    public cn8 engineGetKeyParameters() {
        return this.rsaPrivateKey;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RSAPrivateKey)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) obj;
        return getModulus().equals(rSAPrivateKey.getModulus()) && getPrivateExponent().equals(rSAPrivateKey.getPrivateExponent());
    }

    @Override
    public String getAlgorithm() {
        return this.algorithmIdentifier.m().s(yu7.P1) ? "RSASSA-PSS" : "RSA";
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
    public byte[] getEncoded() {
        oa oaVar = this.algorithmIdentifier;
        BigInteger modulus = getModulus();
        BigInteger bigInteger = ZERO;
        BigInteger privateExponent = getPrivateExponent();
        BigInteger bigInteger2 = ZERO;
        return yf5.a(oaVar, new en8(modulus, bigInteger, privateExponent, bigInteger2, bigInteger2, bigInteger2, bigInteger2, bigInteger2));
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public BigInteger getModulus() {
        return this.modulus;
    }

    @Override
    public BigInteger getPrivateExponent() {
        return this.privateExponent;
    }

    public int hashCode() {
        return getPrivateExponent().hashCode() ^ getModulus().hashCode();
    }

    @Override
    public void setBagAttribute(l1 l1Var, x0 x0Var) {
        this.attrCarrier.setBagAttribute(l1Var, x0Var);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        stringBuffer.append("RSA Private Key [");
        stringBuffer.append(hn8.b(getModulus()));
        stringBuffer.append("],[]");
        stringBuffer.append(strD);
        stringBuffer.append("            modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }

    public BCRSAPrivateKey(oa oaVar, en8 en8Var) {
        oa oaVar2 = BCRSAPublicKey.DEFAULT_ALGORITHM_IDENTIFIER;
        this.algorithmIdentifierEnc = getEncoding(oaVar2);
        this.algorithmIdentifier = oaVar2;
        this.attrCarrier = new xu7();
        this.algorithmIdentifier = oaVar;
        this.algorithmIdentifierEnc = getEncoding(oaVar);
        this.modulus = en8Var.q();
        this.privateExponent = en8Var.t();
        this.rsaPrivateKey = new cn8(true, this.modulus, this.privateExponent);
    }

    public BCRSAPrivateKey(cn8 cn8Var) {
        oa oaVar = BCRSAPublicKey.DEFAULT_ALGORITHM_IDENTIFIER;
        this.algorithmIdentifierEnc = getEncoding(oaVar);
        this.algorithmIdentifier = oaVar;
        this.attrCarrier = new xu7();
        this.modulus = cn8Var.d();
        this.privateExponent = cn8Var.b();
        this.rsaPrivateKey = cn8Var;
    }

    public BCRSAPrivateKey(RSAPrivateKey rSAPrivateKey) {
        oa oaVar = BCRSAPublicKey.DEFAULT_ALGORITHM_IDENTIFIER;
        this.algorithmIdentifierEnc = getEncoding(oaVar);
        this.algorithmIdentifier = oaVar;
        this.attrCarrier = new xu7();
        this.modulus = rSAPrivateKey.getModulus();
        this.privateExponent = rSAPrivateKey.getPrivateExponent();
        this.rsaPrivateKey = new cn8(true, this.modulus, this.privateExponent);
    }

    public BCRSAPrivateKey(RSAPrivateKeySpec rSAPrivateKeySpec) {
        oa oaVar = BCRSAPublicKey.DEFAULT_ALGORITHM_IDENTIFIER;
        this.algorithmIdentifierEnc = getEncoding(oaVar);
        this.algorithmIdentifier = oaVar;
        this.attrCarrier = new xu7();
        this.modulus = rSAPrivateKeySpec.getModulus();
        this.privateExponent = rSAPrivateKeySpec.getPrivateExponent();
        this.rsaPrivateKey = new cn8(true, this.modulus, this.privateExponent);
    }
}
