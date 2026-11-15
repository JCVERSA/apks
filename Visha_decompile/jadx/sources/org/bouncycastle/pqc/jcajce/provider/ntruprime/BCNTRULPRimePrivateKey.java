package org.bouncycastle.pqc.jcajce.provider.ntruprime;

import defpackage.ci;
import defpackage.ng8;
import defpackage.og8;
import defpackage.pg8;
import defpackage.px6;
import defpackage.rx6;
import defpackage.t1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;

public class BCNTRULPRimePrivateKey implements PrivateKey {
    private static final long serialVersionUID = 1;
    private transient t1 attributes;
    private transient rx6 params;

    public BCNTRULPRimePrivateKey(rx6 rx6Var) {
        this.params = rx6Var;
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        this.params = (rx6) ng8.b(og8Var);
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
        if (obj instanceof BCNTRULPRimePrivateKey) {
            return ci.b(this.params.getEncoded(), ((BCNTRULPRimePrivateKey) obj).params.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "NTRULPRime";
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

    public rx6 getKeyParams() {
        return this.params;
    }

    public px6 getParameterSpec() {
        return px6.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCNTRULPRimePrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }
}
