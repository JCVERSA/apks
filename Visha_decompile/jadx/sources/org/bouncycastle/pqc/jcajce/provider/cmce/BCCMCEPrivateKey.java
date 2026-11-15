package org.bouncycastle.pqc.jcajce.provider.cmce;

import defpackage.bp0;
import defpackage.ci;
import defpackage.ng8;
import defpackage.og8;
import defpackage.pg8;
import defpackage.t1;
import defpackage.u0a;
import defpackage.yo0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.CMCEKey;

public class BCCMCEPrivateKey implements PrivateKey, CMCEKey {
    private static final long serialVersionUID = 1;
    private transient t1 attributes;
    private transient bp0 params;

    public BCCMCEPrivateKey(bp0 bp0Var) {
        this.params = bp0Var;
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        this.params = (bp0) ng8.b(og8Var);
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
        if (obj instanceof BCCMCEPrivateKey) {
            return ci.b(this.params.getEncoded(), ((BCCMCEPrivateKey) obj).params.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return u0a.j(this.params.b().b());
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

    public bp0 getKeyParams() {
        return this.params;
    }

    @Override
    public yo0 getParameterSpec() {
        return yo0.a(this.params.b().b());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCCMCEPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }
}
