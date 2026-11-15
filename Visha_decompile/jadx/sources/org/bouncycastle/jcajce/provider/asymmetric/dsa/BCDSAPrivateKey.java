package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import defpackage.g1;
import defpackage.gr1;
import defpackage.ir1;
import defpackage.kr1;
import defpackage.l1;
import defpackage.oa;
import defpackage.og8;
import defpackage.u0a;
import defpackage.wqc;
import defpackage.wu7;
import defpackage.x0;
import defpackage.xu7;
import defpackage.yf5;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPrivateKeySpec;
import java.util.Enumeration;

public class BCDSAPrivateKey implements DSAPrivateKey, wu7 {
    private static final long serialVersionUID = -4677259546958385734L;
    private transient xu7 attrCarrier = new xu7();
    private transient DSAParams dsaSpec;
    private BigInteger x;

    public BCDSAPrivateKey() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.dsaSpec = new DSAParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        this.attrCarrier = new xu7();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.dsaSpec.getP());
        objectOutputStream.writeObject(this.dsaSpec.getQ());
        objectOutputStream.writeObject(this.dsaSpec.getG());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DSAPrivateKey)) {
            return false;
        }
        DSAPrivateKey dSAPrivateKey = (DSAPrivateKey) obj;
        return getX().equals(dSAPrivateKey.getX()) && getParams().getG().equals(dSAPrivateKey.getParams().getG()) && getParams().getP().equals(dSAPrivateKey.getParams().getP()) && getParams().getQ().equals(dSAPrivateKey.getParams().getQ());
    }

    @Override
    public String getAlgorithm() {
        return "DSA";
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
        return yf5.a(new oa(wqc.Y5, new gr1(this.dsaSpec.getP(), this.dsaSpec.getQ(), this.dsaSpec.getG()).j()), new g1(getX()));
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public DSAParams getParams() {
        return this.dsaSpec;
    }

    @Override
    public BigInteger getX() {
        return this.x;
    }

    public int hashCode() {
        return getParams().getQ().hashCode() ^ ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode());
    }

    @Override
    public void setBagAttribute(l1 l1Var, x0 x0Var) {
        this.attrCarrier.setBagAttribute(l1Var, x0Var);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        BigInteger bigIntegerModPow = getParams().getG().modPow(this.x, getParams().getP());
        stringBuffer.append("DSA Private Key [");
        stringBuffer.append(kr1.a(bigIntegerModPow, getParams()));
        stringBuffer.append("]");
        stringBuffer.append(strD);
        stringBuffer.append("            Y: ");
        stringBuffer.append(bigIntegerModPow.toString(16));
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }

    public BCDSAPrivateKey(ir1 ir1Var) {
        throw null;
    }

    public BCDSAPrivateKey(og8 og8Var) throws IOException {
        gr1 gr1VarN = gr1.n(og8Var.p().p());
        this.x = ((g1) og8Var.u()).A();
        this.dsaSpec = new DSAParameterSpec(gr1VarN.o(), gr1VarN.p(), gr1VarN.m());
    }

    public BCDSAPrivateKey(DSAPrivateKey dSAPrivateKey) {
        this.x = dSAPrivateKey.getX();
        this.dsaSpec = dSAPrivateKey.getParams();
    }

    public BCDSAPrivateKey(DSAPrivateKeySpec dSAPrivateKeySpec) {
        this.x = dSAPrivateKeySpec.getX();
        this.dsaSpec = new DSAParameterSpec(dSAPrivateKeySpec.getP(), dSAPrivateKeySpec.getQ(), dSAPrivateKeySpec.getG());
    }
}
