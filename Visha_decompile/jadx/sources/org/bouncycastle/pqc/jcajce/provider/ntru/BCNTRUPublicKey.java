package org.bouncycastle.pqc.jcajce.provider.ntru;

import defpackage.ci;
import defpackage.ik8;
import defpackage.s1a;
import defpackage.t1a;
import defpackage.ux6;
import defpackage.xx6;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.pqc.jcajce.interfaces.NTRUKey;

public class BCNTRUPublicKey implements PublicKey, NTRUKey {
    private static final long serialVersionUID = 1;
    private transient xx6 params;

    public BCNTRUPublicKey(xx6 xx6Var) {
        this.params = xx6Var;
    }

    private void init(s1a s1aVar) throws IOException {
        this.params = (xx6) ik8.a(s1aVar);
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
        if (obj instanceof BCNTRUPublicKey) {
            return ci.b(this.params.getEncoded(), ((BCNTRUPublicKey) obj).params.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "NTRU";
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

    public xx6 getKeyParams() {
        return this.params;
    }

    @Override
    public ux6 getParameterSpec() {
        return ux6.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCNTRUPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
