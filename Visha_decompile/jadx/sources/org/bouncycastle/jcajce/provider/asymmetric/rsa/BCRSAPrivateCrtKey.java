package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import defpackage.dn8;
import defpackage.en8;
import defpackage.hn8;
import defpackage.oa;
import defpackage.og8;
import defpackage.u0a;
import defpackage.xu7;
import defpackage.yf5;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;

public class BCRSAPrivateCrtKey extends BCRSAPrivateKey implements RSAPrivateCrtKey {
    static final long serialVersionUID = 7834723820638524718L;
    private BigInteger crtCoefficient;
    private BigInteger primeExponentP;
    private BigInteger primeExponentQ;
    private BigInteger primeP;
    private BigInteger primeQ;
    private BigInteger publicExponent;

    public BCRSAPrivateCrtKey(oa oaVar, dn8 dn8Var) {
        super(oaVar, dn8Var);
        this.publicExponent = dn8Var.j();
        this.primeP = dn8Var.i();
        this.primeQ = dn8Var.k();
        this.primeExponentP = dn8Var.g();
        this.primeExponentQ = dn8Var.h();
        this.crtCoefficient = dn8Var.l();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.attrCarrier = new xu7();
        this.rsaPrivateKey = new dn8(getModulus(), getPublicExponent(), getPrivateExponent(), getPrimeP(), getPrimeQ(), getPrimeExponentP(), getPrimeExponentQ(), getCrtCoefficient());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RSAPrivateCrtKey)) {
            return false;
        }
        RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) obj;
        return getModulus().equals(rSAPrivateCrtKey.getModulus()) && getPublicExponent().equals(rSAPrivateCrtKey.getPublicExponent()) && getPrivateExponent().equals(rSAPrivateCrtKey.getPrivateExponent()) && getPrimeP().equals(rSAPrivateCrtKey.getPrimeP()) && getPrimeQ().equals(rSAPrivateCrtKey.getPrimeQ()) && getPrimeExponentP().equals(rSAPrivateCrtKey.getPrimeExponentP()) && getPrimeExponentQ().equals(rSAPrivateCrtKey.getPrimeExponentQ()) && getCrtCoefficient().equals(rSAPrivateCrtKey.getCrtCoefficient());
    }

    @Override
    public BigInteger getCrtCoefficient() {
        return this.crtCoefficient;
    }

    @Override
    public byte[] getEncoded() {
        return yf5.a(this.algorithmIdentifier, new en8(getModulus(), getPublicExponent(), getPrivateExponent(), getPrimeP(), getPrimeQ(), getPrimeExponentP(), getPrimeExponentQ(), getCrtCoefficient()));
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public BigInteger getPrimeExponentP() {
        return this.primeExponentP;
    }

    @Override
    public BigInteger getPrimeExponentQ() {
        return this.primeExponentQ;
    }

    @Override
    public BigInteger getPrimeP() {
        return this.primeP;
    }

    @Override
    public BigInteger getPrimeQ() {
        return this.primeQ;
    }

    @Override
    public BigInteger getPublicExponent() {
        return this.publicExponent;
    }

    @Override
    public int hashCode() {
        return getPrivateExponent().hashCode() ^ (getModulus().hashCode() ^ getPublicExponent().hashCode());
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        stringBuffer.append("RSA Private CRT Key [");
        stringBuffer.append(hn8.b(getModulus()));
        stringBuffer.append("]");
        stringBuffer.append(",[");
        stringBuffer.append(hn8.a(getPublicExponent()));
        stringBuffer.append("]");
        stringBuffer.append(strD);
        stringBuffer.append("             modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(strD);
        stringBuffer.append("     public exponent: ");
        stringBuffer.append(getPublicExponent().toString(16));
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }

    public BCRSAPrivateCrtKey(oa oaVar, en8 en8Var) {
        super(oaVar, new dn8(en8Var.q(), en8Var.u(), en8Var.t(), en8Var.r(), en8Var.s(), en8Var.n(), en8Var.o(), en8Var.m()));
        this.modulus = en8Var.q();
        this.publicExponent = en8Var.u();
        this.privateExponent = en8Var.t();
        this.primeP = en8Var.r();
        this.primeQ = en8Var.s();
        this.primeExponentP = en8Var.n();
        this.primeExponentQ = en8Var.o();
        this.crtCoefficient = en8Var.m();
    }

    public BCRSAPrivateCrtKey(og8 og8Var) throws IOException {
        this(og8Var.p(), en8.p(og8Var.u()));
    }

    public BCRSAPrivateCrtKey(dn8 dn8Var) {
        super(dn8Var);
        this.publicExponent = dn8Var.j();
        this.primeP = dn8Var.i();
        this.primeQ = dn8Var.k();
        this.primeExponentP = dn8Var.g();
        this.primeExponentQ = dn8Var.h();
        this.crtCoefficient = dn8Var.l();
    }

    public BCRSAPrivateCrtKey(en8 en8Var) {
        this(BCRSAPublicKey.DEFAULT_ALGORITHM_IDENTIFIER, en8Var);
    }

    public BCRSAPrivateCrtKey(RSAPrivateCrtKey rSAPrivateCrtKey) {
        super(new dn8(rSAPrivateCrtKey.getModulus(), rSAPrivateCrtKey.getPublicExponent(), rSAPrivateCrtKey.getPrivateExponent(), rSAPrivateCrtKey.getPrimeP(), rSAPrivateCrtKey.getPrimeQ(), rSAPrivateCrtKey.getPrimeExponentP(), rSAPrivateCrtKey.getPrimeExponentQ(), rSAPrivateCrtKey.getCrtCoefficient()));
        this.modulus = rSAPrivateCrtKey.getModulus();
        this.publicExponent = rSAPrivateCrtKey.getPublicExponent();
        this.privateExponent = rSAPrivateCrtKey.getPrivateExponent();
        this.primeP = rSAPrivateCrtKey.getPrimeP();
        this.primeQ = rSAPrivateCrtKey.getPrimeQ();
        this.primeExponentP = rSAPrivateCrtKey.getPrimeExponentP();
        this.primeExponentQ = rSAPrivateCrtKey.getPrimeExponentQ();
        this.crtCoefficient = rSAPrivateCrtKey.getCrtCoefficient();
    }

    public BCRSAPrivateCrtKey(RSAPrivateCrtKeySpec rSAPrivateCrtKeySpec) {
        super(new dn8(rSAPrivateCrtKeySpec.getModulus(), rSAPrivateCrtKeySpec.getPublicExponent(), rSAPrivateCrtKeySpec.getPrivateExponent(), rSAPrivateCrtKeySpec.getPrimeP(), rSAPrivateCrtKeySpec.getPrimeQ(), rSAPrivateCrtKeySpec.getPrimeExponentP(), rSAPrivateCrtKeySpec.getPrimeExponentQ(), rSAPrivateCrtKeySpec.getCrtCoefficient()));
        this.modulus = rSAPrivateCrtKeySpec.getModulus();
        this.publicExponent = rSAPrivateCrtKeySpec.getPublicExponent();
        this.privateExponent = rSAPrivateCrtKeySpec.getPrivateExponent();
        this.primeP = rSAPrivateCrtKeySpec.getPrimeP();
        this.primeQ = rSAPrivateCrtKeySpec.getPrimeQ();
        this.primeExponentP = rSAPrivateCrtKeySpec.getPrimeExponentP();
        this.primeExponentQ = rSAPrivateCrtKeySpec.getPrimeExponentQ();
        this.crtCoefficient = rSAPrivateCrtKeySpec.getCrtCoefficient();
    }
}
