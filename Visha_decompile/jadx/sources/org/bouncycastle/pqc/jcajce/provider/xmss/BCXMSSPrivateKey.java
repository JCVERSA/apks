package org.bouncycastle.pqc.jcajce.provider.xmss;

import defpackage.ci;
import defpackage.cw0;
import defpackage.l1;
import defpackage.ng8;
import defpackage.og8;
import defpackage.pg8;
import defpackage.t1;
import defpackage.vb2;
import defpackage.zqc;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.pqc.crypto.xmss.g;
import org.bouncycastle.pqc.jcajce.interfaces.XMSSPrivateKey;

public class BCXMSSPrivateKey implements PrivateKey, XMSSPrivateKey {
    private static final long serialVersionUID = 8568701712864512338L;
    private transient t1 attributes;
    private transient g keyParams;
    private transient l1 treeDigest;

    public BCXMSSPrivateKey(l1 l1Var, g gVar) {
        this.treeDigest = l1Var;
        this.keyParams = gVar;
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        this.treeDigest = zqc.n(og8Var.p().p()).o().m();
        this.keyParams = (g) ng8.b(og8Var);
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
        if (!(obj instanceof BCXMSSPrivateKey)) {
            return false;
        }
        BCXMSSPrivateKey bCXMSSPrivateKey = (BCXMSSPrivateKey) obj;
        return this.treeDigest.s(bCXMSSPrivateKey.treeDigest) && ci.b(this.keyParams.g(), bCXMSSPrivateKey.keyParams.g());
    }

    @Override
    public XMSSPrivateKey extractKeyShard(int i) {
        return new BCXMSSPrivateKey(this.treeDigest, this.keyParams.c(i));
    }

    @Override
    public String getAlgorithm() {
        return "XMSS";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return pg8.a(this.keyParams, this.attributes).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public int getHeight() {
        return this.keyParams.e().b();
    }

    @Override
    public long getIndex() {
        if (getUsagesRemaining() != 0) {
            return this.keyParams.d();
        }
        throw new IllegalStateException("key exhausted");
    }

    public cw0 getKeyParams() {
        return this.keyParams;
    }

    @Override
    public String getTreeDigest() {
        return vb2.b(this.treeDigest);
    }

    public l1 getTreeDigestOID() {
        return this.treeDigest;
    }

    @Override
    public long getUsagesRemaining() {
        return this.keyParams.f();
    }

    public int hashCode() {
        return this.treeDigest.hashCode() + (ci.v(this.keyParams.g()) * 37);
    }

    public BCXMSSPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }
}
