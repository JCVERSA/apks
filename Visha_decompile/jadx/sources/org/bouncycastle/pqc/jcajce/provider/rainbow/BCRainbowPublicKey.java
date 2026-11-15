package org.bouncycastle.pqc.jcajce.provider.rainbow;

import defpackage.ci;
import defpackage.ik8;
import defpackage.nn8;
import defpackage.s1a;
import defpackage.u0a;
import defpackage.xf5;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.pqc.crypto.rainbow.d;
import org.bouncycastle.pqc.jcajce.interfaces.RainbowPublicKey;

public class BCRainbowPublicKey implements RainbowPublicKey {
    private static final long serialVersionUID = 1;
    private transient String algorithm;
    private transient byte[] encoding;
    private transient d params;

    public BCRainbowPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }

    private void init(s1a s1aVar) throws IOException {
        init((d) ik8.a(s1aVar));
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
        if (obj instanceof BCRainbowPublicKey) {
            return ci.b(getEncoded(), ((BCRainbowPublicKey) obj).getEncoded());
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
            this.encoding = xf5.c(this.params);
        }
        return ci.f(this.encoding);
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public d getKeyParams() {
        return this.params;
    }

    @Override
    public nn8 getParameterSpec() {
        return nn8.a(this.params.b().f());
    }

    public int hashCode() {
        return ci.v(getEncoded());
    }

    public BCRainbowPublicKey(d dVar) {
        init(dVar);
    }

    private void init(d dVar) {
        this.params = dVar;
        this.algorithm = u0a.j(dVar.b().f());
    }
}
