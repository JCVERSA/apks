package org.bouncycastle.pqc.jcajce.provider.falcon;

import defpackage.ci;
import defpackage.ik8;
import defpackage.s1a;
import defpackage.to3;
import defpackage.u0a;
import defpackage.xf5;
import defpackage.yo3;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.bouncycastle.pqc.jcajce.interfaces.FalconPublicKey;

public class BCFalconPublicKey implements FalconPublicKey {
    private static final long serialVersionUID = 1;
    private transient String algorithm;
    private transient byte[] encoding;
    private transient yo3 params;

    public BCFalconPublicKey(yo3 yo3Var) {
        init(yo3Var);
    }

    private void init(yo3 yo3Var) {
        this.params = yo3Var;
        this.algorithm = u0a.j(yo3Var.b().b());
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
        if (obj instanceof BCFalconPublicKey) {
            return ci.b(getEncoded(), ((BCFalconPublicKey) obj).getEncoded());
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

    public yo3 getKeyParams() {
        return this.params;
    }

    @Override
    public to3 getParameterSpec() {
        return to3.a(this.params.b().b());
    }

    public int hashCode() {
        return ci.v(getEncoded());
    }

    public BCFalconPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }

    private void init(s1a s1aVar) throws IOException {
        init((yo3) ik8.a(s1aVar));
    }
}
