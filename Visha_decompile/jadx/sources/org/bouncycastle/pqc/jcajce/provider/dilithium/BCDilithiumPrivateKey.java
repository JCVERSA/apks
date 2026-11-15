package org.bouncycastle.pqc.jcajce.provider.dilithium;

import defpackage.bc2;
import defpackage.ci;
import defpackage.ng8;
import defpackage.og8;
import defpackage.t1;
import defpackage.u0a;
import defpackage.xf5;
import defpackage.zb2;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.pqc.jcajce.interfaces.DilithiumPrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.DilithiumPublicKey;

public class BCDilithiumPrivateKey implements DilithiumPrivateKey {
    private static final long serialVersionUID = 1;
    private transient String algorithm;
    private transient t1 attributes;
    private transient byte[] encoding;
    private transient bc2 params;

    public BCDilithiumPrivateKey(bc2 bc2Var) {
        init(bc2Var, null);
    }

    private void init(bc2 bc2Var, t1 t1Var) {
        this.attributes = t1Var;
        this.params = bc2Var;
        this.algorithm = u0a.j(bc2Var.b().b());
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
        if (obj instanceof BCDilithiumPrivateKey) {
            return ci.b(getEncoded(), ((BCDilithiumPrivateKey) obj).getEncoded());
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

    public bc2 getKeyParams() {
        return this.params;
    }

    @Override
    public zb2 getParameterSpec() {
        return zb2.a(this.params.b().b());
    }

    @Override
    public DilithiumPublicKey getPublicKey() {
        return new BCDilithiumPublicKey(this.params.c());
    }

    public int hashCode() {
        return ci.v(getEncoded());
    }

    public BCDilithiumPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }

    private void init(og8 og8Var) throws IOException {
        init((bc2) ng8.b(og8Var), og8Var.m());
    }
}
