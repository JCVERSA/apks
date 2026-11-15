package org.bouncycastle.pqc.jcajce.provider.falcon;

import defpackage.ci;
import defpackage.ng8;
import defpackage.og8;
import defpackage.t1;
import defpackage.to3;
import defpackage.u0a;
import defpackage.wo3;
import defpackage.xf5;
import defpackage.yo3;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.pqc.jcajce.interfaces.FalconPrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.FalconPublicKey;

public class BCFalconPrivateKey implements FalconPrivateKey {
    private static final long serialVersionUID = 1;
    private transient String algorithm;
    private transient t1 attributes;
    private transient byte[] encoding;
    private transient wo3 params;

    public BCFalconPrivateKey(wo3 wo3Var) {
        init(wo3Var, null);
    }

    private void init(wo3 wo3Var, t1 t1Var) {
        this.attributes = t1Var;
        this.params = wo3Var;
        this.algorithm = u0a.j(wo3Var.b().b());
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
        if (obj instanceof BCFalconPrivateKey) {
            return ci.b(getEncoded(), ((BCFalconPrivateKey) obj).getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return this.algorithm;
    }

    @Override
    public byte[] getEncoded() {
        if (this.encoding == null) {
            this.encoding = xf5.a(this.params, this.attributes);
        }
        return ci.f(this.encoding);
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public wo3 getKeyParams() {
        return this.params;
    }

    @Override
    public to3 getParameterSpec() {
        return to3.a(this.params.b().b());
    }

    @Override
    public FalconPublicKey getPublicKey() {
        return new BCFalconPublicKey(new yo3(this.params.b(), this.params.d()));
    }

    public int hashCode() {
        return ci.v(getEncoded());
    }

    public BCFalconPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }

    private void init(og8 og8Var) throws IOException {
        init((wo3) ng8.b(og8Var), og8Var.m());
    }
}
