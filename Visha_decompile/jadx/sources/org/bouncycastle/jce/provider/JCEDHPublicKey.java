package org.bouncycastle.jce.provider;

import defpackage.g1;
import defpackage.l1;
import defpackage.mq1;
import defpackage.oa;
import defpackage.pq1;
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

public class JCEDHPublicKey implements DHPublicKey {
    static final long serialVersionUID = -216691575254424324L;
    private DHParameterSpec dhSpec;
    private s1a info;
    private BigInteger y;

    public JCEDHPublicKey(pq1 pq1Var) {
        this.y = pq1Var.c();
        this.dhSpec = new DHParameterSpec(pq1Var.b().f(), pq1Var.b().b(), pq1Var.b().d());
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

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.y = (BigInteger) objectInputStream.readObject();
        this.dhSpec = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getY());
        objectOutputStream.writeObject(this.dhSpec.getP());
        objectOutputStream.writeObject(this.dhSpec.getG());
        objectOutputStream.writeInt(this.dhSpec.getL());
    }

    @Override
    public String getAlgorithm() {
        return "DH";
    }

    @Override
    public byte[] getEncoded() {
        s1a s1aVar = this.info;
        return s1aVar != null ? yf5.e(s1aVar) : yf5.c(new oa(yu7.Y1, new mq1(this.dhSpec.getP(), this.dhSpec.getG(), this.dhSpec.getL())), new g1(this.y));
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

    public JCEDHPublicKey(s1a s1aVar) {
        DHParameterSpec dHParameterSpec;
        this.info = s1aVar;
        try {
            this.y = ((g1) s1aVar.p()).A();
            s1 s1VarZ = s1.z(s1aVar.m().p());
            l1 l1VarM = s1aVar.m().m();
            if (l1VarM.s(yu7.Y1) || isPKCSParam(s1VarZ)) {
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
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DH public key");
        }
    }

    public JCEDHPublicKey(BigInteger bigInteger, DHParameterSpec dHParameterSpec) {
        this.y = bigInteger;
        this.dhSpec = dHParameterSpec;
    }

    public JCEDHPublicKey(DHPublicKey dHPublicKey) {
        this.y = dHPublicKey.getY();
        this.dhSpec = dHPublicKey.getParams();
    }

    public JCEDHPublicKey(DHPublicKeySpec dHPublicKeySpec) {
        this.y = dHPublicKeySpec.getY();
        this.dhSpec = new DHParameterSpec(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
    }
}
