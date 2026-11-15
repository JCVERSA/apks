package org.bouncycastle.pqc.jcajce.provider.xmss;

import defpackage.ci;
import defpackage.cw0;
import defpackage.ik8;
import defpackage.l1;
import defpackage.mrc;
import defpackage.s1a;
import defpackage.t1a;
import defpackage.vb2;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;

public class BCXMSSPublicKey implements PublicKey {
    private static final long serialVersionUID = -5617456225328969766L;
    private transient mrc keyParams;
    private transient l1 treeDigest;

    public BCXMSSPublicKey(l1 l1Var, mrc mrcVar) {
        this.treeDigest = l1Var;
        this.keyParams = mrcVar;
    }

    private void init(s1a s1aVar) throws IOException {
        mrc mrcVar = (mrc) ik8.a(s1aVar);
        this.keyParams = mrcVar;
        this.treeDigest = vb2.a(mrcVar.b());
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
        if (obj instanceof BCXMSSPublicKey) {
            BCXMSSPublicKey bCXMSSPublicKey = (BCXMSSPublicKey) obj;
            try {
                return this.treeDigest.s(bCXMSSPublicKey.treeDigest) && ci.b(this.keyParams.getEncoded(), bCXMSSPublicKey.keyParams.getEncoded());
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "XMSS";
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
        return this.keyParams.c().b();
    }

    public cw0 getKeyParams() {
        return this.keyParams;
    }

    public String getTreeDigest() {
        return vb2.b(this.treeDigest);
    }

    public int hashCode() {
        try {
            return this.treeDigest.hashCode() + (ci.v(this.keyParams.getEncoded()) * 37);
        } catch (IOException unused) {
            return this.treeDigest.hashCode();
        }
    }

    public BCXMSSPublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
