package org.bouncycastle.pqc.jcajce.provider.cmce;

import defpackage.ci;
import defpackage.dp0;
import defpackage.ik8;
import defpackage.s1a;
import defpackage.t1a;
import defpackage.u0a;
import defpackage.yo0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.pqc.jcajce.interfaces.CMCEKey;

public class BCCMCEPublicKey implements PublicKey, CMCEKey {
    private static final long serialVersionUID = 1;
    private transient dp0 params;

    public BCCMCEPublicKey(dp0 dp0Var) {
        this.params = dp0Var;
    }

    private void init(s1a s1aVar) throws IOException {
        this.params = (dp0) ik8.a(s1aVar);
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
        if (obj instanceof BCCMCEPublicKey) {
            return ci.b(this.params.getEncoded(), ((BCCMCEPublicKey) obj).params.getEncoded());
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
            return t1a.a(this.params).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public dp0 getKeyParams() {
        return this.params;
    }

    @Override
    public yo0 getParameterSpec() {
        return yo0.a(this.params.b().b());
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCCMCEPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
