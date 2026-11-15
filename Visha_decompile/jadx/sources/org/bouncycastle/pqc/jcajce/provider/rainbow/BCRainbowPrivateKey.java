package org.bouncycastle.pqc.jcajce.provider.rainbow;

import defpackage.ci;
import defpackage.ng8;
import defpackage.nn8;
import defpackage.og8;
import defpackage.t1;
import defpackage.u0a;
import defpackage.xf5;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.pqc.crypto.rainbow.c;
import org.bouncycastle.pqc.crypto.rainbow.d;
import org.bouncycastle.pqc.jcajce.interfaces.RainbowPrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.RainbowPublicKey;

public class BCRainbowPrivateKey implements RainbowPrivateKey {
    private static final long serialVersionUID = 1;
    private transient String algorithm;
    private transient t1 attributes;
    private transient byte[] encoding;
    private transient c params;

    public BCRainbowPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }

    private void init(og8 og8Var) throws IOException {
        init((c) ng8.b(og8Var), og8Var.m());
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
        if (obj instanceof BCRainbowPrivateKey) {
            return ci.b(getEncoded(), ((BCRainbowPrivateKey) obj).getEncoded());
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

    public c getKeyParams() {
        return this.params;
    }

    @Override
    public nn8 getParameterSpec() {
        return nn8.a(this.params.b().f());
    }

    @Override
    public RainbowPublicKey getPublicKey() {
        return new BCRainbowPublicKey(new d(this.params.b(), this.params.d()));
    }

    public int hashCode() {
        return ci.v(getEncoded());
    }

    public BCRainbowPrivateKey(c cVar) {
        init(cVar, null);
    }

    private void init(c cVar, t1 t1Var) {
        this.attributes = t1Var;
        this.params = cVar;
        this.algorithm = u0a.j(cVar.b().f());
    }
}
