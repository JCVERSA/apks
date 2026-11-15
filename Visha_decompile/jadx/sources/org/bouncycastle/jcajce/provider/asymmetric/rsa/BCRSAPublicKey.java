package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import defpackage.cn8;
import defpackage.fn8;
import defpackage.hn8;
import defpackage.oa;
import defpackage.s1a;
import defpackage.u0a;
import defpackage.up1;
import defpackage.yf5;
import defpackage.yu7;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;

public class BCRSAPublicKey implements RSAPublicKey {
    static final oa DEFAULT_ALGORITHM_IDENTIFIER = new oa(yu7.F1, up1.c);
    static final long serialVersionUID = 2675817738516720772L;
    private transient oa algorithmIdentifier;
    private BigInteger modulus;
    private BigInteger publicExponent;
    private transient cn8 rsaPublicKey;

    public BCRSAPublicKey(oa oaVar, cn8 cn8Var) {
        this.algorithmIdentifier = oaVar;
        this.modulus = cn8Var.d();
        this.publicExponent = cn8Var.b();
        this.rsaPublicKey = cn8Var;
    }

    private void populateFromPublicKeyInfo(s1a s1aVar) {
        try {
            fn8 fn8VarM = fn8.m(s1aVar.p());
            this.algorithmIdentifier = s1aVar.m();
            this.modulus = fn8VarM.n();
            this.publicExponent = fn8VarM.o();
            this.rsaPublicKey = new cn8(false, this.modulus, this.publicExponent);
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in RSA public key");
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        try {
            this.algorithmIdentifier = oa.o(objectInputStream.readObject());
        } catch (Exception unused) {
            this.algorithmIdentifier = DEFAULT_ALGORITHM_IDENTIFIER;
        }
        this.rsaPublicKey = new cn8(false, this.modulus, this.publicExponent);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        if (this.algorithmIdentifier.equals(DEFAULT_ALGORITHM_IDENTIFIER)) {
            return;
        }
        objectOutputStream.writeObject(this.algorithmIdentifier.getEncoded());
    }

    public cn8 engineGetKeyParameters() {
        return this.rsaPublicKey;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RSAPublicKey)) {
            return false;
        }
        RSAPublicKey rSAPublicKey = (RSAPublicKey) obj;
        return getModulus().equals(rSAPublicKey.getModulus()) && getPublicExponent().equals(rSAPublicKey.getPublicExponent());
    }

    @Override
    public String getAlgorithm() {
        return this.algorithmIdentifier.m().s(yu7.P1) ? "RSASSA-PSS" : "RSA";
    }

    @Override
    public byte[] getEncoded() {
        return yf5.c(this.algorithmIdentifier, new fn8(getModulus(), getPublicExponent()));
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public BigInteger getModulus() {
        return this.modulus;
    }

    @Override
    public BigInteger getPublicExponent() {
        return this.publicExponent;
    }

    public int hashCode() {
        return getPublicExponent().hashCode() ^ getModulus().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        stringBuffer.append("RSA Public Key [");
        stringBuffer.append(hn8.b(getModulus()));
        stringBuffer.append("]");
        stringBuffer.append(",[");
        stringBuffer.append(hn8.a(getPublicExponent()));
        stringBuffer.append("]");
        stringBuffer.append(strD);
        stringBuffer.append("        modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(strD);
        stringBuffer.append("public exponent: ");
        stringBuffer.append(getPublicExponent().toString(16));
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }

    public BCRSAPublicKey(cn8 cn8Var) {
        this(DEFAULT_ALGORITHM_IDENTIFIER, cn8Var);
    }

    public BCRSAPublicKey(s1a s1aVar) {
        populateFromPublicKeyInfo(s1aVar);
    }

    public BCRSAPublicKey(RSAPublicKey rSAPublicKey) {
        this.algorithmIdentifier = DEFAULT_ALGORITHM_IDENTIFIER;
        this.modulus = rSAPublicKey.getModulus();
        this.publicExponent = rSAPublicKey.getPublicExponent();
        this.rsaPublicKey = new cn8(false, this.modulus, this.publicExponent);
    }

    public BCRSAPublicKey(RSAPublicKeySpec rSAPublicKeySpec) {
        this.algorithmIdentifier = DEFAULT_ALGORITHM_IDENTIFIER;
        this.modulus = rSAPublicKeySpec.getModulus();
        this.publicExponent = rSAPublicKeySpec.getPublicExponent();
        this.rsaPublicKey = new cn8(false, this.modulus, this.publicExponent);
    }
}
