package org.bouncycastle.pqc.jcajce.provider.ntruprime;

import defpackage.ci;
import defpackage.gy8;
import defpackage.ik8;
import defpackage.jy8;
import defpackage.s1a;
import defpackage.t1a;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;

public class BCSNTRUPrimePublicKey implements PublicKey {
    private static final long serialVersionUID = 1;
    private transient jy8 params;

    public BCSNTRUPrimePublicKey(jy8 jy8Var) {
        this.params = jy8Var;
    }

    private void init(s1a s1aVar) throws IOException {
        this.params = (jy8) ik8.a(s1aVar);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        init(s1a.n((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BCSNTRUPrimePublicKey) {
            return ci.b(this.params.getEncoded(), ((BCSNTRUPrimePublicKey) obj).params.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "NTRULPRime";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return t1a.a(this.params).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public jy8 getKeyParams() {
        return this.params;
    }

    public gy8 getParameterSpec() {
        return gy8.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCSNTRUPrimePublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
