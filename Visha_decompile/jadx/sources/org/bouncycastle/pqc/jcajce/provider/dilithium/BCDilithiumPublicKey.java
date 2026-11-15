package org.bouncycastle.pqc.jcajce.provider.dilithium;

import defpackage.cc2;
import defpackage.ci;
import defpackage.ik8;
import defpackage.s1a;
import defpackage.u0a;
import defpackage.xf5;
import defpackage.zb2;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.pqc.jcajce.interfaces.DilithiumPublicKey;

public class BCDilithiumPublicKey implements DilithiumPublicKey {
    private static final long serialVersionUID = 1;
    private transient String algorithm;
    private transient byte[] encoding;
    private transient cc2 params;

    public BCDilithiumPublicKey(cc2 cc2Var) {
        init(cc2Var);
    }

    private void init(cc2 cc2Var) {
        this.params = cc2Var;
        this.algorithm = u0a.j(cc2Var.b().b());
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
        if (obj instanceof BCDilithiumPublicKey) {
            return ci.b(getEncoded(), ((BCDilithiumPublicKey) obj).getEncoded());
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

    public cc2 getKeyParams() {
        return this.params;
    }

    @Override
    public zb2 getParameterSpec() {
        return zb2.a(this.params.b().b());
    }

    public int hashCode() {
        return ci.v(getEncoded());
    }

    public BCDilithiumPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }

    private void init(s1a s1aVar) throws IOException {
        init((cc2) ik8.a(s1aVar));
    }
}
