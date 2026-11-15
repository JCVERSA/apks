package org.bouncycastle.pqc.jcajce.provider.saber;

import defpackage.ci;
import defpackage.ik8;
import defpackage.jx8;
import defpackage.mx8;
import defpackage.s1a;
import defpackage.t1a;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.pqc.jcajce.interfaces.SABERKey;

public class BCSABERPublicKey implements PublicKey, SABERKey {
    private static final long serialVersionUID = 1;
    private transient mx8 params;

    public BCSABERPublicKey(mx8 mx8Var) {
        this.params = mx8Var;
    }

    private void init(s1a s1aVar) throws IOException {
        this.params = (mx8) ik8.a(s1aVar);
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
        if (obj instanceof BCSABERPublicKey) {
            return ci.b(this.params.getEncoded(), ((BCSABERPublicKey) obj).params.getEncoded());
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
            return t1a.a(this.params).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public mx8 getKeyParams() {
        return this.params;
    }

    @Override
    public jx8 getParameterSpec() {
        return jx8.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCSABERPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
