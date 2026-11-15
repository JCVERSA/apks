package org.bouncycastle.pqc.jcajce.provider.sphincs;

import defpackage.av7;
import defpackage.ci;
import defpackage.cw0;
import defpackage.l1;
import defpackage.ng8;
import defpackage.ny8;
import defpackage.oa;
import defpackage.og8;
import defpackage.pg8;
import defpackage.t1;
import defpackage.wp1;
import defpackage.yy8;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.SPHINCSKey;

public class BCSphincs256PrivateKey implements PrivateKey, SPHINCSKey {
    private static final long serialVersionUID = 1;
    private transient t1 attributes;
    private transient yy8 params;
    private transient l1 treeDigest;

    public BCSphincs256PrivateKey(l1 l1Var, yy8 yy8Var) {
        this.treeDigest = l1Var;
        this.params = yy8Var;
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        this.treeDigest = ny8.m(og8Var.p().p()).n().m();
        this.params = (yy8) ng8.b(og8Var);
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
        if (!(obj instanceof BCSphincs256PrivateKey)) {
            return false;
        }
        BCSphincs256PrivateKey bCSphincs256PrivateKey = (BCSphincs256PrivateKey) obj;
        return this.treeDigest.s(bCSphincs256PrivateKey.treeDigest) && ci.b(this.params.c(), bCSphincs256PrivateKey.params.c());
    }

    @Override
    public final String getAlgorithm() {
        return "SPHINCS-256";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return (this.params.b() != null ? pg8.a(this.params, this.attributes) : new og8(new oa(av7.r, new ny8(new oa(this.treeDigest))), new wp1(this.params.c()), this.attributes)).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public byte[] getKeyData() {
        return this.params.c();
    }

    public cw0 getKeyParams() {
        return this.params;
    }

    public l1 getTreeDigest() {
        return this.treeDigest;
    }

    public int hashCode() {
        return this.treeDigest.hashCode() + (ci.v(this.params.c()) * 37);
    }

    public BCSphincs256PrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }
}
