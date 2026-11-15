package org.bouncycastle.pqc.jcajce.provider.bike;

import defpackage.ci;
import defpackage.ik8;
import defpackage.s1a;
import defpackage.t1a;
import defpackage.u0a;
import defpackage.u40;
import defpackage.x40;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.pqc.jcajce.interfaces.BIKEKey;

public class BCBIKEPublicKey implements PublicKey, BIKEKey {
    private static final long serialVersionUID = 1;
    private transient x40 params;

    public BCBIKEPublicKey(x40 x40Var) {
        this.params = x40Var;
    }

    private void init(s1a s1aVar) throws IOException {
        this.params = (x40) ik8.a(s1aVar);
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
        if (obj instanceof BCBIKEPublicKey) {
            return ci.b(this.params.getEncoded(), ((BCBIKEPublicKey) obj).params.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return u0a.j(this.params.b().a());
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

    public x40 getKeyParams() {
        return this.params;
    }

    @Override
    public u40 getParameterSpec() {
        return u40.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCBIKEPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
