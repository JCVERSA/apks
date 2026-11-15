package org.bouncycastle.pqc.jcajce.provider.hqc;

import defpackage.ci;
import defpackage.ik8;
import defpackage.jl4;
import defpackage.ml4;
import defpackage.s1a;
import defpackage.t1a;
import defpackage.u0a;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.pqc.jcajce.interfaces.HQCKey;

public class BCHQCPublicKey implements PublicKey, HQCKey {
    private static final long serialVersionUID = 1;
    private transient ml4 params;

    public BCHQCPublicKey(ml4 ml4Var) {
        this.params = ml4Var;
    }

    private void init(s1a s1aVar) throws IOException {
        this.params = (ml4) ik8.a(s1aVar);
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
        if (obj instanceof BCHQCPublicKey) {
            return ci.b(this.params.getEncoded(), ((BCHQCPublicKey) obj).params.getEncoded());
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

    public ml4 getKeyParams() {
        return this.params;
    }

    @Override
    public jl4 getParameterSpec() {
        return jl4.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCHQCPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
