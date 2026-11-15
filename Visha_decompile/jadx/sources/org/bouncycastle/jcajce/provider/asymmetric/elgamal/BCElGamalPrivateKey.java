package org.bouncycastle.jcajce.provider.asymmetric.elgamal;

import defpackage.g1;
import defpackage.l1;
import defpackage.n47;
import defpackage.oa;
import defpackage.og8;
import defpackage.v73;
import defpackage.w73;
import defpackage.wu7;
import defpackage.x0;
import defpackage.x73;
import defpackage.xu7;
import defpackage.y73;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;
import org.bouncycastle.jce.interfaces.ElGamalPrivateKey;

public class BCElGamalPrivateKey implements ElGamalPrivateKey, DHPrivateKey, wu7 {
    static final long serialVersionUID = 4819350091141529678L;
    private transient xu7 attrCarrier = new xu7();
    private transient w73 elSpec;
    private BigInteger x;

    public BCElGamalPrivateKey() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.elSpec = new w73((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        this.attrCarrier = new xu7();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.elSpec.b());
        objectOutputStream.writeObject(this.elSpec.a());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHPrivateKey)) {
            return false;
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) obj;
        return getX().equals(dHPrivateKey.getX()) && getParams().getG().equals(dHPrivateKey.getParams().getG()) && getParams().getP().equals(dHPrivateKey.getParams().getP()) && getParams().getL() == dHPrivateKey.getParams().getL();
    }

    @Override
    public String getAlgorithm() {
        return "ElGamal";
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
        try {
            return new og8(new oa(n47.l, new v73(this.elSpec.b(), this.elSpec.a())), new g1(getX())).l("DER");
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public w73 getParameters() {
        return this.elSpec;
    }

    @Override
    public DHParameterSpec getParams() {
        return new DHParameterSpec(this.elSpec.b(), this.elSpec.a());
    }

    @Override
    public BigInteger getX() {
        return this.x;
    }

    public int hashCode() {
        return getParams().getL() ^ ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode());
    }

    @Override
    public void setBagAttribute(l1 l1Var, x0 x0Var) {
        this.attrCarrier.setBagAttribute(l1Var, x0Var);
    }

    public BCElGamalPrivateKey(x73 x73Var) {
        throw null;
    }

    public BCElGamalPrivateKey(y73 y73Var) {
        throw null;
    }

    public BCElGamalPrivateKey(og8 og8Var) throws IOException {
        v73 v73VarN = v73.n(og8Var.p().p());
        this.x = g1.y(og8Var.u()).A();
        this.elSpec = new w73(v73VarN.o(), v73VarN.m());
    }

    public BCElGamalPrivateKey(DHPrivateKey dHPrivateKey) {
        this.x = dHPrivateKey.getX();
        this.elSpec = new w73(dHPrivateKey.getParams().getP(), dHPrivateKey.getParams().getG());
    }

    public BCElGamalPrivateKey(DHPrivateKeySpec dHPrivateKeySpec) {
        this.x = dHPrivateKeySpec.getX();
        this.elSpec = new w73(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }

    public BCElGamalPrivateKey(ElGamalPrivateKey elGamalPrivateKey) {
        this.x = elGamalPrivateKey.getX();
        this.elSpec = elGamalPrivateKey.getParameters();
    }
}
