package org.bouncycastle.pqc.jcajce.provider.sphincsplus;

import defpackage.ci;
import defpackage.cw0;
import defpackage.ik8;
import defpackage.s1a;
import defpackage.t1a;
import defpackage.u0a;
import defpackage.uy8;
import defpackage.xy8;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.pqc.jcajce.interfaces.SPHINCSPlusPublicKey;

public class BCSPHINCSPlusPublicKey implements SPHINCSPlusPublicKey {
    private static final long serialVersionUID = 1;
    private transient xy8 params;

    public BCSPHINCSPlusPublicKey(xy8 xy8Var) {
        this.params = xy8Var;
    }

    private void init(s1a s1aVar) throws IOException {
        this.params = (xy8) ik8.a(s1aVar);
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
        if (obj instanceof BCSPHINCSPlusPublicKey) {
            return ci.b(this.params.getEncoded(), ((BCSPHINCSPlusPublicKey) obj).params.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "SPHINCS+-" + u0a.j(this.params.b().c());
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
    public uy8 getParameterSpec() {
        return uy8.a(this.params.b().c());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCSPHINCSPlusPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
