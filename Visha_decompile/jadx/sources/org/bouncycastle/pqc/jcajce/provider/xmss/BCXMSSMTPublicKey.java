package org.bouncycastle.pqc.jcajce.provider.xmss;

import defpackage.ci;
import defpackage.cw0;
import defpackage.hrc;
import defpackage.ik8;
import defpackage.l1;
import defpackage.s1a;
import defpackage.t1a;
import defpackage.vb2;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;

public class BCXMSSMTPublicKey implements PublicKey {
    private static final long serialVersionUID = 3230324130542413475L;
    private transient hrc keyParams;
    private transient l1 treeDigest;

    public BCXMSSMTPublicKey(l1 l1Var, hrc hrcVar) {
        this.treeDigest = l1Var;
        this.keyParams = hrcVar;
    }

    private void init(s1a s1aVar) throws IOException {
        hrc hrcVar = (hrc) ik8.a(s1aVar);
        this.keyParams = hrcVar;
        this.treeDigest = vb2.a(hrcVar.b());
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
        if (!(obj instanceof BCXMSSMTPublicKey)) {
            return false;
        }
        BCXMSSMTPublicKey bCXMSSMTPublicKey = (BCXMSSMTPublicKey) obj;
        return this.treeDigest.s(bCXMSSMTPublicKey.treeDigest) && ci.b(this.keyParams.f(), bCXMSSMTPublicKey.keyParams.f());
    }

    @Override
    public final String getAlgorithm() {
        return "XMSSMT";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return t1a.a(this.keyParams).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public int getHeight() {
        return this.keyParams.c().a();
    }

    public cw0 getKeyParams() {
        return this.keyParams;
    }

    public int getLayers() {
        return this.keyParams.c().b();
    }

    public String getTreeDigest() {
        return vb2.b(this.treeDigest);
    }

    public int hashCode() {
        return this.treeDigest.hashCode() + (ci.v(this.keyParams.f()) * 37);
    }

    public BCXMSSMTPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
