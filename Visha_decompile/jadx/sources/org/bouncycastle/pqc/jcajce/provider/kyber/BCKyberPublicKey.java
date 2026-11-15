package org.bouncycastle.pqc.jcajce.provider.kyber;

import defpackage.ci;
import defpackage.ik8;
import defpackage.qh5;
import defpackage.s1a;
import defpackage.u0a;
import defpackage.uh5;
import defpackage.xf5;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.pqc.jcajce.interfaces.KyberPublicKey;

public class BCKyberPublicKey implements KyberPublicKey {
    private static final long serialVersionUID = 1;
    private transient String algorithm;
    private transient byte[] encoding;
    private transient uh5 params;

    public BCKyberPublicKey(uh5 uh5Var) {
        init(uh5Var);
    }

    private void init(uh5 uh5Var) {
        this.params = uh5Var;
        this.algorithm = u0a.j(uh5Var.b().b());
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
        if (obj instanceof BCKyberPublicKey) {
            return ci.b(getEncoded(), ((BCKyberPublicKey) obj).getEncoded());
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

    public uh5 getKeyParams() {
        return this.params;
    }

    @Override
    public qh5 getParameterSpec() {
        return qh5.a(this.params.b().b());
    }

    public int hashCode() {
        return ci.v(getEncoded());
    }

    public BCKyberPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }

    private void init(s1a s1aVar) throws IOException {
        init((uh5) ik8.a(s1aVar));
    }
}
