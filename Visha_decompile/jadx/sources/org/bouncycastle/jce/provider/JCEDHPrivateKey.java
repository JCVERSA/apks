package org.bouncycastle.jce.provider;

import defpackage.g1;
import defpackage.l1;
import defpackage.mq1;
import defpackage.oa;
import defpackage.og8;
import defpackage.oq1;
import defpackage.s1;
import defpackage.tw2;
import defpackage.wqc;
import defpackage.wu7;
import defpackage.x0;
import defpackage.xu7;
import defpackage.yu7;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;

public class JCEDHPrivateKey implements DHPrivateKey, wu7 {
    static final long serialVersionUID = 311058815616901812L;
    private wu7 attrCarrier = new xu7();
    private DHParameterSpec dhSpec;
    private og8 info;
    BigInteger x;

    public JCEDHPrivateKey() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.x = (BigInteger) objectInputStream.readObject();
        this.dhSpec = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getX());
        objectOutputStream.writeObject(this.dhSpec.getP());
        objectOutputStream.writeObject(this.dhSpec.getG());
        objectOutputStream.writeInt(this.dhSpec.getL());
    }

    @Override
    public String getAlgorithm() {
        return "DH";
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
            og8 og8Var = this.info;
            return og8Var != null ? og8Var.l("DER") : new og8(new oa(yu7.Y1, new mq1(this.dhSpec.getP(), this.dhSpec.getG(), this.dhSpec.getL())), new g1(getX())).l("DER");
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public DHParameterSpec getParams() {
        return this.dhSpec;
    }

    @Override
    public BigInteger getX() {
        return this.x;
    }

    @Override
    public void setBagAttribute(l1 l1Var, x0 x0Var) {
        this.attrCarrier.setBagAttribute(l1Var, x0Var);
    }

    public JCEDHPrivateKey(oq1 oq1Var) {
        this.x = oq1Var.c();
        this.dhSpec = new DHParameterSpec(oq1Var.b().f(), oq1Var.b().b(), oq1Var.b().d());
    }

    public JCEDHPrivateKey(og8 og8Var) throws IOException {
        DHParameterSpec dHParameterSpec;
        s1 s1VarZ = s1.z(og8Var.p().p());
        g1 g1VarY = g1.y(og8Var.u());
        l1 l1VarM = og8Var.p().m();
        this.info = og8Var;
        this.x = g1VarY.A();
        if (l1VarM.s(yu7.Y1)) {
            mq1 mq1VarN = mq1.n(s1VarZ);
            dHParameterSpec = mq1VarN.o() != null ? new DHParameterSpec(mq1VarN.p(), mq1VarN.m(), mq1VarN.o().intValue()) : new DHParameterSpec(mq1VarN.p(), mq1VarN.m());
        } else {
            if (!l1VarM.s(wqc.f6)) {
                throw new IllegalArgumentException("unknown algorithm type: " + l1VarM);
            }
            tw2 tw2VarN = tw2.n(s1VarZ);
            dHParameterSpec = new DHParameterSpec(tw2VarN.q(), tw2VarN.m());
        }
        this.dhSpec = dHParameterSpec;
    }

    public JCEDHPrivateKey(DHPrivateKey dHPrivateKey) {
        this.x = dHPrivateKey.getX();
        this.dhSpec = dHPrivateKey.getParams();
    }

    public JCEDHPrivateKey(DHPrivateKeySpec dHPrivateKeySpec) {
        this.x = dHPrivateKeySpec.getX();
        this.dhSpec = new DHParameterSpec(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }
}
