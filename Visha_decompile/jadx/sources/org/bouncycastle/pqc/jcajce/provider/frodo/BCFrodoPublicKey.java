package org.bouncycastle.pqc.jcajce.provider.frodo;

import defpackage.ci;
import defpackage.ik8;
import defpackage.s1a;
import defpackage.t1a;
import defpackage.v64;
import defpackage.y64;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.pqc.jcajce.interfaces.FrodoKey;

public class BCFrodoPublicKey implements PublicKey, FrodoKey {
    private static final long serialVersionUID = 1;
    private transient y64 params;

    public BCFrodoPublicKey(y64 y64Var) {
        this.params = y64Var;
    }

    private void init(s1a s1aVar) throws IOException {
        this.params = (y64) ik8.a(s1aVar);
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
        if (obj instanceof BCFrodoPublicKey) {
            return ci.b(this.params.getEncoded(), ((BCFrodoPublicKey) obj).params.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "Frodo";
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

    public y64 getKeyParams() {
        return this.params;
    }

    @Override
    public v64 getParameterSpec() {
        return v64.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCFrodoPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
