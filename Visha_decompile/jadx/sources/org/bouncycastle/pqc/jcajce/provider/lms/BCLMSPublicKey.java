package org.bouncycastle.pqc.jcajce.provider.lms;

import defpackage.ci;
import defpackage.cw0;
import defpackage.dm4;
import defpackage.ii5;
import defpackage.ik8;
import defpackage.ki5;
import defpackage.s1a;
import defpackage.t1a;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.pqc.jcajce.interfaces.LMSKey;

public class BCLMSPublicKey implements PublicKey, LMSKey {
    private static final long serialVersionUID = -5617456225328969766L;
    private transient ii5 keyParams;

    public BCLMSPublicKey(ii5 ii5Var) {
        this.keyParams = ii5Var;
    }

    private void init(s1a s1aVar) throws IOException {
        this.keyParams = (ii5) ik8.a(s1aVar);
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
        if (obj instanceof BCLMSPublicKey) {
            try {
                return ci.b(this.keyParams.getEncoded(), ((BCLMSPublicKey) obj).keyParams.getEncoded());
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "LMS";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return t1a.a(this.keyParams).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public cw0 getKeyParams() {
        return this.keyParams;
    }

    @Override
    public int getLevels() {
        ii5 ii5Var = this.keyParams;
        if (ii5Var instanceof ki5) {
            return 1;
        }
        return ((dm4) ii5Var).c();
    }

    public int hashCode() {
        try {
            return ci.v(this.keyParams.getEncoded());
        } catch (IOException unused) {
            return -1;
        }
    }

    public BCLMSPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
