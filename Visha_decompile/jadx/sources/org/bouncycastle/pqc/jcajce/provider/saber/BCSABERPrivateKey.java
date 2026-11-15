package org.bouncycastle.pqc.jcajce.provider.saber;

import defpackage.ci;
import defpackage.jx8;
import defpackage.lx8;
import defpackage.ng8;
import defpackage.og8;
import defpackage.pg8;
import defpackage.t1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.SABERKey;

public class BCSABERPrivateKey implements PrivateKey, SABERKey {
    private static final long serialVersionUID = 1;
    private transient t1 attributes;
    private transient lx8 params;

    public BCSABERPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        this.params = (lx8) ng8.b(og8Var);
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
        if (obj instanceof BCSABERPrivateKey) {
            return ci.b(this.params.getEncoded(), ((BCSABERPrivateKey) obj).params.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "SABER";
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

    public lx8 getKeyParams() {
        return this.params;
    }

    @Override
    public jx8 getParameterSpec() {
        return jx8.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCSABERPrivateKey(lx8 lx8Var) {
        this.params = lx8Var;
    }
}
