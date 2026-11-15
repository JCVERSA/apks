package org.bouncycastle.pqc.jcajce.provider.picnic;

import defpackage.ci;
import defpackage.e18;
import defpackage.h18;
import defpackage.ik8;
import defpackage.s1a;
import defpackage.t1a;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.pqc.jcajce.interfaces.PicnicKey;

public class BCPicnicPublicKey implements PublicKey, PicnicKey {
    private static final long serialVersionUID = 1;
    private transient h18 params;

    public BCPicnicPublicKey(h18 h18Var) {
        this.params = h18Var;
    }

    private void init(s1a s1aVar) throws IOException {
        this.params = (h18) ik8.a(s1aVar);
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
        if (obj instanceof BCPicnicPublicKey) {
            return ci.b(this.params.getEncoded(), ((BCPicnicPublicKey) obj).params.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "Picnic";
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

    public h18 getKeyParams() {
        return this.params;
    }

    @Override
    public e18 getParameterSpec() {
        return e18.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCPicnicPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
