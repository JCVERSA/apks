package org.bouncycastle.jcajce.provider.asymmetric.dh;

import defpackage.enb;
import defpackage.g1;
import defpackage.kq1;
import defpackage.l1;
import defpackage.mq1;
import defpackage.nq1;
import defpackage.oa;
import defpackage.pq1;
import defpackage.qq1;
import defpackage.rq1;
import defpackage.s1;
import defpackage.s1a;
import defpackage.tw2;
import defpackage.wqc;
import defpackage.yf5;
import defpackage.yu7;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;

public class BCDHPublicKey implements DHPublicKey {
    static final long serialVersionUID = -216691575254424324L;
    private transient pq1 dhPublicKey;
    private transient DHParameterSpec dhSpec;
    private transient s1a info;
    private BigInteger y;

    public BCDHPublicKey(pq1 pq1Var) {
        this.y = pq1Var.c();
        this.dhSpec = new kq1(pq1Var.b());
        this.dhPublicKey = pq1Var;
    }

    private boolean isPKCSParam(s1 s1Var) {
        if (s1Var.size() == 2) {
            return true;
        }
        if (s1Var.size() > 3) {
            return false;
        }
        return g1.y(s1Var.A(2)).A().compareTo(BigInteger.valueOf((long) g1.y(s1Var.A(0)).A().bitLength())) <= 0;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.dhSpec = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
        this.info = null;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.dhSpec.getP());
        objectOutputStream.writeObject(this.dhSpec.getG());
        objectOutputStream.writeInt(this.dhSpec.getL());
    }

    public pq1 engineGetKeyParameters() {
        return this.dhPublicKey;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHPublicKey)) {
            return false;
        }
        DHPublicKey dHPublicKey = (DHPublicKey) obj;
        return getY().equals(dHPublicKey.getY()) && getParams().getG().equals(dHPublicKey.getParams().getG()) && getParams().getP().equals(dHPublicKey.getParams().getP()) && getParams().getL() == dHPublicKey.getParams().getL();
    }

    @Override
    public String getAlgorithm() {
        return "DH";
    }

    @Override
    public byte[] getEncoded() {
        s1a s1aVar = this.info;
        if (s1aVar != null) {
            return yf5.e(s1aVar);
        }
        DHParameterSpec dHParameterSpec = this.dhSpec;
        if (!(dHParameterSpec instanceof kq1) || ((kq1) dHParameterSpec).b() == null) {
            return yf5.c(new oa(yu7.Y1, new mq1(this.dhSpec.getP(), this.dhSpec.getG(), this.dhSpec.getL()).j()), new g1(this.y));
        }
        nq1 nq1VarA = ((kq1) this.dhSpec).a();
        rq1 rq1VarH = nq1VarA.h();
        return yf5.c(new oa(wqc.f6, new tw2(nq1VarA.f(), nq1VarA.b(), nq1VarA.g(), nq1VarA.c(), rq1VarH != null ? new enb(rq1VarH.b(), rq1VarH.a()) : null).j()), new g1(this.y));
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public DHParameterSpec getParams() {
        return this.dhSpec;
    }

    @Override
    public BigInteger getY() {
        return this.y;
    }

    public int hashCode() {
        return getParams().getL() ^ ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode());
    }

    public String toString() {
        return qq1.c("DH", this.y, new nq1(this.dhSpec.getP(), this.dhSpec.getG()));
    }

    public BCDHPublicKey(s1a s1aVar) {
        pq1 pq1Var;
        this.info = s1aVar;
        try {
            this.y = ((g1) s1aVar.p()).A();
            s1 s1VarZ = s1.z(s1aVar.m().p());
            l1 l1VarM = s1aVar.m().m();
            if (l1VarM.s(yu7.Y1) || isPKCSParam(s1VarZ)) {
                mq1 mq1VarN = mq1.n(s1VarZ);
                if (mq1VarN.o() != null) {
                    this.dhSpec = new DHParameterSpec(mq1VarN.p(), mq1VarN.m(), mq1VarN.o().intValue());
                    pq1Var = new pq1(this.y, new nq1(this.dhSpec.getP(), this.dhSpec.getG(), null, this.dhSpec.getL()));
                } else {
                    this.dhSpec = new DHParameterSpec(mq1VarN.p(), mq1VarN.m());
                    pq1Var = new pq1(this.y, new nq1(this.dhSpec.getP(), this.dhSpec.getG()));
                }
                this.dhPublicKey = pq1Var;
                return;
            }
            if (!l1VarM.s(wqc.f6)) {
                throw new IllegalArgumentException("unknown algorithm type: " + l1VarM);
            }
            tw2 tw2VarN = tw2.n(s1VarZ);
            enb enbVarS = tw2VarN.s();
            if (enbVarS != null) {
                this.dhPublicKey = new pq1(this.y, new nq1(tw2VarN.q(), tw2VarN.m(), tw2VarN.r(), tw2VarN.o(), new rq1(enbVarS.o(), enbVarS.n().intValue())));
            } else {
                this.dhPublicKey = new pq1(this.y, new nq1(tw2VarN.q(), tw2VarN.m(), tw2VarN.r(), tw2VarN.o(), null));
            }
            this.dhSpec = new kq1(this.dhPublicKey.b());
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DH public key");
        }
    }

    public BCDHPublicKey(BigInteger bigInteger, DHParameterSpec dHParameterSpec) {
        this.y = bigInteger;
        this.dhSpec = dHParameterSpec;
        this.dhPublicKey = dHParameterSpec instanceof kq1 ? new pq1(bigInteger, ((kq1) dHParameterSpec).a()) : new pq1(bigInteger, new nq1(dHParameterSpec.getP(), dHParameterSpec.getG()));
    }

    public BCDHPublicKey(DHPublicKey dHPublicKey) {
        this.y = dHPublicKey.getY();
        DHParameterSpec params = dHPublicKey.getParams();
        this.dhSpec = params;
        if (params instanceof kq1) {
            this.dhPublicKey = new pq1(this.y, ((kq1) params).a());
        } else {
            this.dhPublicKey = new pq1(this.y, new nq1(this.dhSpec.getP(), this.dhSpec.getG()));
        }
    }

    public BCDHPublicKey(DHPublicKeySpec dHPublicKeySpec) {
        this.y = dHPublicKeySpec.getY();
        DHParameterSpec dHParameterSpec = new DHParameterSpec(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
        this.dhSpec = dHParameterSpec;
        if (dHParameterSpec instanceof kq1) {
            this.dhPublicKey = new pq1(this.y, ((kq1) dHParameterSpec).a());
        } else {
            this.dhPublicKey = new pq1(this.y, new nq1(dHPublicKeySpec.getP(), dHPublicKeySpec.getG()));
        }
    }
}
