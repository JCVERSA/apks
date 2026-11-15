package org.bouncycastle.pqc.jcajce.provider.newhope;

import defpackage.ax6;
import defpackage.ci;
import defpackage.cw0;
import defpackage.ik8;
import defpackage.s1a;
import defpackage.t1a;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.pqc.jcajce.interfaces.NHPublicKey;

public class BCNHPublicKey implements NHPublicKey {
    private static final long serialVersionUID = 1;
    private transient ax6 params;

    public BCNHPublicKey(ax6 ax6Var) {
        this.params = ax6Var;
    }

    private void init(s1a s1aVar) throws IOException {
        this.params = (ax6) ik8.a(s1aVar);
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
        if (obj == null || !(obj instanceof BCNHPublicKey)) {
            return false;
        }
        return ci.b(this.params.b(), ((BCNHPublicKey) obj).params.b());
    }

    @Override
    public final String getAlgorithm() {
        return "NH";
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

    public cw0 getKeyParams() {
        return this.params;
    }

    @Override
    public byte[] getPublicData() {
        return this.params.b();
    }

    public int hashCode() {
        return ci.v(this.params.b());
    }

    public BCNHPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
