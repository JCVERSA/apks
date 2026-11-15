package org.bouncycastle.pqc.jcajce.provider.frodo;

import defpackage.ci;
import defpackage.ng8;
import defpackage.og8;
import defpackage.pg8;
import defpackage.t1;
import defpackage.v64;
import defpackage.x64;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.FrodoKey;

public class BCFrodoPrivateKey implements PrivateKey, FrodoKey {
    private static final long serialVersionUID = 1;
    private transient t1 attributes;
    private transient x64 params;

    public BCFrodoPrivateKey(x64 x64Var) {
        this.params = x64Var;
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        this.params = (x64) ng8.b(og8Var);
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
        if (obj instanceof BCFrodoPrivateKey) {
            return ci.b(this.params.getEncoded(), ((BCFrodoPrivateKey) obj).params.getEncoded());
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
            return pg8.a(this.params, this.attributes).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public x64 getKeyParams() {
        return this.params;
    }

    @Override
    public v64 getParameterSpec() {
        return v64.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCFrodoPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }
}
