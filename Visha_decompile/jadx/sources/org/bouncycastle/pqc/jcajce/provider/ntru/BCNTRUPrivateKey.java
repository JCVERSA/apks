package org.bouncycastle.pqc.jcajce.provider.ntru;

import defpackage.ci;
import defpackage.ng8;
import defpackage.og8;
import defpackage.pg8;
import defpackage.t1;
import defpackage.ux6;
import defpackage.wx6;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.NTRUKey;

public class BCNTRUPrivateKey implements PrivateKey, NTRUKey {
    private static final long serialVersionUID = 1;
    private transient t1 attributes;
    private transient wx6 params;

    public BCNTRUPrivateKey(wx6 wx6Var) {
        this.params = wx6Var;
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        this.params = (wx6) ng8.b(og8Var);
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
        if (obj instanceof BCNTRUPrivateKey) {
            return ci.b(this.params.getEncoded(), ((BCNTRUPrivateKey) obj).params.getEncoded());
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
            return pg8.a(this.params, this.attributes).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public wx6 getKeyParams() {
        return this.params;
    }

    @Override
    public ux6 getParameterSpec() {
        return ux6.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCNTRUPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }
}
