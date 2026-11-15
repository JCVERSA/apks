package org.bouncycastle.pqc.jcajce.provider.kyber;

import defpackage.ci;
import defpackage.ng8;
import defpackage.og8;
import defpackage.pg8;
import defpackage.qh5;
import defpackage.sh5;
import defpackage.t1;
import defpackage.u0a;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.pqc.jcajce.interfaces.KyberPrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.KyberPublicKey;

public class BCKyberPrivateKey implements KyberPrivateKey {
    private static final long serialVersionUID = 1;
    private transient String algorithm;
    private transient t1 attributes;
    private transient sh5 params;

    public BCKyberPrivateKey(sh5 sh5Var) {
        this.params = sh5Var;
        this.algorithm = u0a.j(sh5Var.b().b());
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        sh5 sh5Var = (sh5) ng8.b(og8Var);
        this.params = sh5Var;
        this.algorithm = u0a.j(sh5Var.b().b());
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
        if (obj instanceof BCKyberPrivateKey) {
            return ci.b(getEncoded(), ((BCKyberPrivateKey) obj).getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return this.algorithm;
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

    public sh5 getKeyParams() {
        return this.params;
    }

    @Override
    public qh5 getParameterSpec() {
        return qh5.a(this.params.b().b());
    }

    @Override
    public KyberPublicKey getPublicKey() {
        return new BCKyberPublicKey(this.params.c());
    }

    public int hashCode() {
        return ci.v(getEncoded());
    }

    public BCKyberPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }
}
