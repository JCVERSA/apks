package org.bouncycastle.pqc.jcajce.provider.ntruprime;

import defpackage.ci;
import defpackage.gy8;
import defpackage.iy8;
import defpackage.ng8;
import defpackage.og8;
import defpackage.pg8;
import defpackage.t1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;

public class BCSNTRUPrimePrivateKey implements PrivateKey {
    private static final long serialVersionUID = 1;
    private transient t1 attributes;
    private transient iy8 params;

    public BCSNTRUPrimePrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        this.params = (iy8) ng8.b(og8Var);
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
        if (obj instanceof BCSNTRUPrimePrivateKey) {
            return ci.b(this.params.getEncoded(), ((BCSNTRUPrimePrivateKey) obj).params.getEncoded());
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

    public iy8 getKeyParams() {
        return this.params;
    }

    public gy8 getParameterSpec() {
        return gy8.a(this.params.b().a());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCSNTRUPrimePrivateKey(iy8 iy8Var) {
        this.params = iy8Var;
    }
}
