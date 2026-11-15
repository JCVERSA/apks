package org.bouncycastle.pqc.jcajce.provider.hqc;

import defpackage.ci;
import defpackage.jl4;
import defpackage.ll4;
import defpackage.ng8;
import defpackage.og8;
import defpackage.pg8;
import defpackage.t1;
import defpackage.u0a;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.HQCKey;

public class BCHQCPrivateKey implements PrivateKey, HQCKey {
    private static final long serialVersionUID = 1;
    private transient t1 attributes;
    private transient ll4 params;

    public BCHQCPrivateKey(ll4 ll4Var) {
        this.params = ll4Var;
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        this.params = (ll4) ng8.b(og8Var);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        init(og8.n((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BCHQCPrivateKey) {
            return ci.b(this.params.getEncoded(), ((BCHQCPrivateKey) obj).params.getEncoded());
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
            return pg8.a(this.params, this.attributes).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public ll4 getKeyParams() {
        return this.params;
    }

    @Override
    public jl4 getParameterSpec() {
        return jl4.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCHQCPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }
}
