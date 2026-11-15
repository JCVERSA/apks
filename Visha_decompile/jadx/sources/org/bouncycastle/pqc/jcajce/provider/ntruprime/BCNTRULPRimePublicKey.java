package org.bouncycastle.pqc.jcajce.provider.ntruprime;

import defpackage.ci;
import defpackage.ik8;
import defpackage.px6;
import defpackage.s1a;
import defpackage.sx6;
import defpackage.t1a;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;

public class BCNTRULPRimePublicKey implements PublicKey {
    private static final long serialVersionUID = 1;
    private transient sx6 params;

    public BCNTRULPRimePublicKey(sx6 sx6Var) {
        this.params = sx6Var;
    }

    private void init(s1a s1aVar) throws IOException {
        this.params = (sx6) ik8.a(s1aVar);
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
        if (obj instanceof BCNTRULPRimePublicKey) {
            return ci.b(this.params.getEncoded(), ((BCNTRULPRimePublicKey) obj).params.getEncoded());
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

    public sx6 getKeyParams() {
        return this.params;
    }

    public px6 getParameterSpec() {
        return px6.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCNTRULPRimePublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
