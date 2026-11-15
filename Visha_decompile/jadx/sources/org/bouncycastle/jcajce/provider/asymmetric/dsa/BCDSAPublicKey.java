package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import defpackage.g1;
import defpackage.gr1;
import defpackage.jr1;
import defpackage.kr1;
import defpackage.oa;
import defpackage.s1a;
import defpackage.u0a;
import defpackage.up1;
import defpackage.wqc;
import defpackage.x0;
import defpackage.yf5;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPublicKeySpec;

public class BCDSAPublicKey implements DSAPublicKey {
    private static BigInteger ZERO = BigInteger.valueOf(0);
    private static final long serialVersionUID = 1752452449903495175L;
    private transient DSAParams dsaSpec;
    private transient jr1 lwKeyParams;
    private BigInteger y;

    public BCDSAPublicKey(jr1 jr1Var) {
        this.y = jr1Var.c();
        this.dsaSpec = jr1Var.b() != null ? new DSAParameterSpec(jr1Var.b().b(), jr1Var.b().c(), jr1Var.b().a()) : null;
        this.lwKeyParams = jr1Var;
    }

    private boolean isNotNull(x0 x0Var) {
        return (x0Var == null || up1.c.s(x0Var.j())) ? false : true;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        BigInteger bigInteger = (BigInteger) objectInputStream.readObject();
        if (bigInteger.equals(ZERO)) {
            this.dsaSpec = null;
        } else {
            this.dsaSpec = new DSAParameterSpec(bigInteger, (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        }
        this.lwKeyParams = new jr1(this.y, kr1.b(this.dsaSpec));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        BigInteger g;
        objectOutputStream.defaultWriteObject();
        DSAParams dSAParams = this.dsaSpec;
        if (dSAParams == null) {
            g = ZERO;
        } else {
            objectOutputStream.writeObject(dSAParams.getP());
            objectOutputStream.writeObject(this.dsaSpec.getQ());
            g = this.dsaSpec.getG();
        }
        objectOutputStream.writeObject(g);
    }

    public jr1 engineGetKeyParameters() {
        return this.lwKeyParams;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DSAPublicKey)) {
            return false;
        }
        DSAPublicKey dSAPublicKey = (DSAPublicKey) obj;
        if (this.dsaSpec != null) {
            return getY().equals(dSAPublicKey.getY()) && dSAPublicKey.getParams() != null && getParams().getG().equals(dSAPublicKey.getParams().getG()) && getParams().getP().equals(dSAPublicKey.getParams().getP()) && getParams().getQ().equals(dSAPublicKey.getParams().getQ());
        }
        return getY().equals(dSAPublicKey.getY()) && dSAPublicKey.getParams() == null;
    }

    @Override
    public String getAlgorithm() {
        return "DSA";
    }

    @Override
    public byte[] getEncoded() {
        DSAParams dSAParams = this.dsaSpec;
        return dSAParams == null ? yf5.c(new oa(wqc.Y5), new g1(this.y)) : yf5.c(new oa(wqc.Y5, new gr1(dSAParams.getP(), this.dsaSpec.getQ(), this.dsaSpec.getG()).j()), new g1(this.y));
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public DSAParams getParams() {
        return this.dsaSpec;
    }

    @Override
    public BigInteger getY() {
        return this.y;
    }

    public int hashCode() {
        if (this.dsaSpec == null) {
            return getY().hashCode();
        }
        return getParams().getQ().hashCode() ^ ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode());
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        stringBuffer.append("DSA Public Key [");
        stringBuffer.append(kr1.a(this.y, getParams()));
        stringBuffer.append("]");
        stringBuffer.append(strD);
        stringBuffer.append("            Y: ");
        stringBuffer.append(getY().toString(16));
        stringBuffer.append(strD);
        return stringBuffer.toString();
    }

    public BCDSAPublicKey(s1a s1aVar) {
        try {
            this.y = ((g1) s1aVar.p()).A();
            if (isNotNull(s1aVar.m().p())) {
                gr1 gr1VarN = gr1.n(s1aVar.m().p());
                this.dsaSpec = new DSAParameterSpec(gr1VarN.o(), gr1VarN.p(), gr1VarN.m());
            } else {
                this.dsaSpec = null;
            }
            this.lwKeyParams = new jr1(this.y, kr1.b(this.dsaSpec));
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    public BCDSAPublicKey(DSAPublicKey dSAPublicKey) {
        this.y = dSAPublicKey.getY();
        this.dsaSpec = dSAPublicKey.getParams();
        this.lwKeyParams = new jr1(this.y, kr1.b(this.dsaSpec));
    }

    public BCDSAPublicKey(DSAPublicKeySpec dSAPublicKeySpec) {
        this.y = dSAPublicKeySpec.getY();
        this.dsaSpec = new DSAParameterSpec(dSAPublicKeySpec.getP(), dSAPublicKeySpec.getQ(), dSAPublicKeySpec.getG());
        this.lwKeyParams = new jr1(this.y, kr1.b(this.dsaSpec));
    }
}
