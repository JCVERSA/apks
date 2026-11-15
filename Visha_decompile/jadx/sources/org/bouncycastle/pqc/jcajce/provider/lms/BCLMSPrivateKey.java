package org.bouncycastle.pqc.jcajce.provider.lms;

import defpackage.ci;
import defpackage.cm4;
import defpackage.cw0;
import defpackage.ii5;
import defpackage.ji5;
import defpackage.ng8;
import defpackage.og8;
import defpackage.pg8;
import defpackage.t1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.LMSPrivateKey;

public class BCLMSPrivateKey implements PrivateKey, LMSPrivateKey {
    private static final long serialVersionUID = 8568701712864512338L;
    private transient t1 attributes;
    private transient ii5 keyParams;

    public BCLMSPrivateKey(ii5 ii5Var) {
        this.keyParams = ii5Var;
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        this.keyParams = (ii5) ng8.b(og8Var);
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
        if (!(obj instanceof BCLMSPrivateKey)) {
            return false;
        }
        try {
            return ci.b(this.keyParams.getEncoded(), ((BCLMSPrivateKey) obj).keyParams.getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("unable to perform equals");
        }
    }

    @Override
    public LMSPrivateKey extractKeyShard(int i) {
        ii5 ii5Var = this.keyParams;
        return ii5Var instanceof ji5 ? new BCLMSPrivateKey(((ji5) ii5Var).c(i)) : new BCLMSPrivateKey(((cm4) ii5Var).b(i));
    }

    @Override
    public String getAlgorithm() {
        return "LMS";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return pg8.a(this.keyParams, this.attributes).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public long getIndex() {
        if (getUsagesRemaining() == 0) {
            throw new IllegalStateException("key exhausted");
        }
        ii5 ii5Var = this.keyParams;
        return ii5Var instanceof ji5 ? ((ji5) ii5Var).h() : ((cm4) ii5Var).c();
    }

    public cw0 getKeyParams() {
        return this.keyParams;
    }

    @Override
    public int getLevels() {
        ii5 ii5Var = this.keyParams;
        if (ii5Var instanceof ji5) {
            return 1;
        }
        return ((cm4) ii5Var).g();
    }

    @Override
    public long getUsagesRemaining() {
        ii5 ii5Var = this.keyParams;
        return ii5Var instanceof ji5 ? ((ji5) ii5Var).p() : ((cm4) ii5Var).k();
    }

    public int hashCode() {
        try {
            return ci.v(this.keyParams.getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("unable to calculate hashCode");
        }
    }

    public BCLMSPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }
}
