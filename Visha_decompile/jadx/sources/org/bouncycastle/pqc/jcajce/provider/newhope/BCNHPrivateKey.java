package org.bouncycastle.pqc.jcajce.provider.newhope;

import defpackage.ci;
import defpackage.cw0;
import defpackage.ng8;
import defpackage.og8;
import defpackage.pg8;
import defpackage.t1;
import defpackage.zw6;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.pqc.jcajce.interfaces.NHPrivateKey;

public class BCNHPrivateKey implements NHPrivateKey {
    private static final long serialVersionUID = 1;
    private transient t1 attributes;
    private transient zw6 params;

    public BCNHPrivateKey(zw6 zw6Var) {
        this.params = zw6Var;
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        this.params = (zw6) ng8.b(og8Var);
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
        if (obj instanceof BCNHPrivateKey) {
            return ci.e(this.params.b(), ((BCNHPrivateKey) obj).params.b());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "NH";
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

    public cw0 getKeyParams() {
        return this.params;
    }

    @Override
    public short[] getSecretData() {
        return this.params.b();
    }

    public int hashCode() {
        return ci.B(this.params.b());
    }

    public BCNHPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }
}
