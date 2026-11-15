package org.bouncycastle.pqc.jcajce.provider.picnic;

import defpackage.ci;
import defpackage.e18;
import defpackage.g18;
import defpackage.ng8;
import defpackage.og8;
import defpackage.pg8;
import defpackage.t1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.PicnicKey;

public class BCPicnicPrivateKey implements PrivateKey, PicnicKey {
    private static final long serialVersionUID = 1;
    private transient t1 attributes;
    private transient g18 params;

    public BCPicnicPrivateKey(g18 g18Var) {
        this.params = g18Var;
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        this.params = (g18) ng8.b(og8Var);
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
        if (obj instanceof BCPicnicPrivateKey) {
            return ci.b(this.params.getEncoded(), ((BCPicnicPrivateKey) obj).params.getEncoded());
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
            return pg8.a(this.params, this.attributes).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public g18 getKeyParams() {
        return this.params;
    }

    @Override
    public e18 getParameterSpec() {
        return e18.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCPicnicPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }
}
