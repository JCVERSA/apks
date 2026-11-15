package org.bouncycastle.pqc.jcajce.provider.sphincs;

import defpackage.av7;
import defpackage.ci;
import defpackage.cw0;
import defpackage.ik8;
import defpackage.l1;
import defpackage.ny8;
import defpackage.oa;
import defpackage.s1a;
import defpackage.t1a;
import defpackage.zy8;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.pqc.jcajce.interfaces.SPHINCSKey;

public class BCSphincs256PublicKey implements PublicKey, SPHINCSKey {
    private static final long serialVersionUID = 1;
    private transient zy8 params;
    private transient l1 treeDigest;

    public BCSphincs256PublicKey(l1 l1Var, zy8 zy8Var) {
        this.treeDigest = l1Var;
        this.params = zy8Var;
    }

    private void init(s1a s1aVar) throws IOException {
        this.treeDigest = ny8.m(s1aVar.m().p()).n().m();
        this.params = (zy8) ik8.a(s1aVar);
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
        if (!(obj instanceof BCSphincs256PublicKey)) {
            return false;
        }
        BCSphincs256PublicKey bCSphincs256PublicKey = (BCSphincs256PublicKey) obj;
        return this.treeDigest.s(bCSphincs256PublicKey.treeDigest) && ci.b(this.params.c(), bCSphincs256PublicKey.params.c());
    }

    @Override
    public final String getAlgorithm() {
        return "SPHINCS-256";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return (this.params.b() != null ? t1a.a(this.params) : new s1a(new oa(av7.r, new ny8(new oa(this.treeDigest))), this.params.c())).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
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

    public BCSphincs256PublicKey(s1a s1aVar) throws IOException {
        init(s1aVar);
    }
}
