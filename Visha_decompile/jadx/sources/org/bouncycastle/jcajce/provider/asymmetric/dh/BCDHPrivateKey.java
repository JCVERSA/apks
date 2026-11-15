package org.bouncycastle.jcajce.provider.asymmetric.dh;

import defpackage.enb;
import defpackage.g1;
import defpackage.kq1;
import defpackage.l1;
import defpackage.mq1;
import defpackage.nq1;
import defpackage.oa;
import defpackage.og8;
import defpackage.oq1;
import defpackage.qq1;
import defpackage.rq1;
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

public class BCDHPrivateKey implements DHPrivateKey, wu7 {
    static final long serialVersionUID = 311058815616901812L;
    private transient xu7 attrCarrier = new xu7();
    private transient oq1 dhPrivateKey;
    private transient DHParameterSpec dhSpec;
    private transient og8 info;
    private BigInteger x;

    public BCDHPrivateKey() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.dhSpec = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
        this.info = null;
        this.attrCarrier = new xu7();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.dhSpec.getP());
        objectOutputStream.writeObject(this.dhSpec.getG());
        objectOutputStream.writeInt(this.dhSpec.getL());
    }

    public oq1 engineGetKeyParameters() {
        oq1 oq1Var = this.dhPrivateKey;
        if (oq1Var != null) {
            return oq1Var;
        }
        DHParameterSpec dHParameterSpec = this.dhSpec;
        return dHParameterSpec instanceof kq1 ? new oq1(this.x, ((kq1) dHParameterSpec).a()) : new oq1(this.x, new nq1(dHParameterSpec.getP(), this.dhSpec.getG(), null, this.dhSpec.getL()));
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
        og8 og8Var;
        try {
            og8 og8Var2 = this.info;
            if (og8Var2 != null) {
                return og8Var2.l("DER");
            }
            DHParameterSpec dHParameterSpec = this.dhSpec;
            if (!(dHParameterSpec instanceof kq1) || ((kq1) dHParameterSpec).b() == null) {
                og8Var = new og8(new oa(yu7.Y1, new mq1(this.dhSpec.getP(), this.dhSpec.getG(), this.dhSpec.getL()).j()), new g1(getX()));
            } else {
                nq1 nq1VarA = ((kq1) this.dhSpec).a();
                rq1 rq1VarH = nq1VarA.h();
                og8Var = new og8(new oa(wqc.f6, new tw2(nq1VarA.f(), nq1VarA.b(), nq1VarA.g(), nq1VarA.c(), rq1VarH != null ? new enb(rq1VarH.b(), rq1VarH.a()) : null).j()), new g1(getX()));
            }
            return og8Var.l("DER");
        } catch (Exception unused) {
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

    public int hashCode() {
        return getParams().getL() ^ ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode());
    }

    @Override
    public void setBagAttribute(l1 l1Var, x0 x0Var) {
        this.attrCarrier.setBagAttribute(l1Var, x0Var);
    }

    public String toString() {
        return qq1.b("DH", this.x, new nq1(this.dhSpec.getP(), this.dhSpec.getG()));
    }

    public BCDHPrivateKey(oq1 oq1Var) {
        this.x = oq1Var.c();
        this.dhSpec = new kq1(oq1Var.b());
    }

    public BCDHPrivateKey(og8 og8Var) throws IOException {
        oq1 oq1Var;
        s1 s1VarZ = s1.z(og8Var.p().p());
        g1 g1Var = (g1) og8Var.u();
        l1 l1VarM = og8Var.p().m();
        this.info = og8Var;
        this.x = g1Var.A();
        if (l1VarM.s(yu7.Y1)) {
            mq1 mq1VarN = mq1.n(s1VarZ);
            if (mq1VarN.o() != null) {
                this.dhSpec = new DHParameterSpec(mq1VarN.p(), mq1VarN.m(), mq1VarN.o().intValue());
                oq1Var = new oq1(this.x, new nq1(mq1VarN.p(), mq1VarN.m(), null, mq1VarN.o().intValue()));
            } else {
                this.dhSpec = new DHParameterSpec(mq1VarN.p(), mq1VarN.m());
                oq1Var = new oq1(this.x, new nq1(mq1VarN.p(), mq1VarN.m()));
            }
        } else {
            if (!l1VarM.s(wqc.f6)) {
                throw new IllegalArgumentException("unknown algorithm type: " + l1VarM);
            }
            tw2 tw2VarN = tw2.n(s1VarZ);
            this.dhSpec = new kq1(tw2VarN.q(), tw2VarN.r(), tw2VarN.m(), tw2VarN.o(), 0);
            oq1Var = new oq1(this.x, new nq1(tw2VarN.q(), tw2VarN.m(), tw2VarN.r(), tw2VarN.o(), null));
        }
        this.dhPrivateKey = oq1Var;
    }

    public BCDHPrivateKey(DHPrivateKey dHPrivateKey) {
        this.x = dHPrivateKey.getX();
        this.dhSpec = dHPrivateKey.getParams();
    }

    public BCDHPrivateKey(DHPrivateKeySpec dHPrivateKeySpec) {
        this.x = dHPrivateKeySpec.getX();
        this.dhSpec = new DHParameterSpec(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }
}
