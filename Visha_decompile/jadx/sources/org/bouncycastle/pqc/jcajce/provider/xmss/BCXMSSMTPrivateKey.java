package org.bouncycastle.pqc.jcajce.provider.xmss;

import defpackage.ci;
import defpackage.crc;
import defpackage.cw0;
import defpackage.frc;
import defpackage.l1;
import defpackage.ng8;
import defpackage.og8;
import defpackage.pg8;
import defpackage.t1;
import defpackage.vb2;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.XMSSMTPrivateKey;

public class BCXMSSMTPrivateKey implements PrivateKey, XMSSMTPrivateKey {
    private static final long serialVersionUID = 7682140473044521395L;
    private transient t1 attributes;
    private transient frc keyParams;
    private transient l1 treeDigest;

    public BCXMSSMTPrivateKey(l1 l1Var, frc frcVar) {
        this.treeDigest = l1Var;
        this.keyParams = frcVar;
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        this.treeDigest = crc.n(og8Var.p().p()).p().m();
        this.keyParams = (frc) ng8.b(og8Var);
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
        if (!(obj instanceof BCXMSSMTPrivateKey)) {
            return false;
        }
        BCXMSSMTPrivateKey bCXMSSMTPrivateKey = (BCXMSSMTPrivateKey) obj;
        return this.treeDigest.s(bCXMSSMTPrivateKey.treeDigest) && ci.b(this.keyParams.h(), bCXMSSMTPrivateKey.keyParams.h());
    }

    @Override
    public XMSSMTPrivateKey extractKeyShard(int i) {
        return new BCXMSSMTPrivateKey(this.treeDigest, this.keyParams.c(i));
    }

    @Override
    public String getAlgorithm() {
        return "XMSSMT";
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
        return this.keyParams.e().a();
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
    public int getLayers() {
        return this.keyParams.e().b();
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
        return this.treeDigest.hashCode() + (ci.v(this.keyParams.h()) * 37);
    }

    public BCXMSSMTPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }
}
