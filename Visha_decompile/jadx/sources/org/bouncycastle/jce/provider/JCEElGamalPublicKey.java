package org.bouncycastle.jce.provider;

import defpackage.a83;
import defpackage.g1;
import defpackage.n47;
import defpackage.oa;
import defpackage.s1a;
import defpackage.v73;
import defpackage.w73;
import defpackage.yf5;
import defpackage.z73;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import org.bouncycastle.jce.interfaces.ElGamalPublicKey;

public class JCEElGamalPublicKey implements ElGamalPublicKey, DHPublicKey {
    static final long serialVersionUID = 8712728417091216948L;
    private w73 elSpec;
    private BigInteger y;

    public JCEElGamalPublicKey(z73 z73Var) {
        throw null;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.y = (BigInteger) objectInputStream.readObject();
        this.elSpec = new w73((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getY());
        objectOutputStream.writeObject(this.elSpec.b());
        objectOutputStream.writeObject(this.elSpec.a());
    }

    @Override
    public String getAlgorithm() {
        return "ElGamal";
    }

    @Override
    public byte[] getEncoded() {
        return yf5.c(new oa(n47.l, new v73(this.elSpec.b(), this.elSpec.a())), new g1(this.y));
    }

    @Override
    public String getFormat() {
        return "X.509";
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
    public BigInteger getY() {
        return this.y;
    }

    public JCEElGamalPublicKey(a83 a83Var) {
        throw null;
    }

    public JCEElGamalPublicKey(s1a s1aVar) {
        v73 v73VarN = v73.n(s1aVar.m().p());
        try {
            this.y = ((g1) s1aVar.p()).A();
            this.elSpec = new w73(v73VarN.o(), v73VarN.m());
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    public JCEElGamalPublicKey(BigInteger bigInteger, w73 w73Var) {
        this.y = bigInteger;
        this.elSpec = w73Var;
    }

    public JCEElGamalPublicKey(DHPublicKey dHPublicKey) {
        this.y = dHPublicKey.getY();
        this.elSpec = new w73(dHPublicKey.getParams().getP(), dHPublicKey.getParams().getG());
    }

    public JCEElGamalPublicKey(DHPublicKeySpec dHPublicKeySpec) {
        this.y = dHPublicKeySpec.getY();
        this.elSpec = new w73(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
    }

    public JCEElGamalPublicKey(ElGamalPublicKey elGamalPublicKey) {
        this.y = elGamalPublicKey.getY();
        this.elSpec = elGamalPublicKey.getParameters();
    }
}
