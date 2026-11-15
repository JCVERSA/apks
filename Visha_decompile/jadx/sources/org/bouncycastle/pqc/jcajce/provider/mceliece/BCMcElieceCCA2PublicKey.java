package org.bouncycastle.pqc.jcajce.provider.mceliece;

import defpackage.av7;
import defpackage.cw0;
import defpackage.dj;
import defpackage.ik8;
import defpackage.oa;
import defpackage.q96;
import defpackage.r96;
import defpackage.s1a;
import defpackage.sn6;
import defpackage.u94;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;

public class BCMcElieceCCA2PublicKey implements cw0, PublicKey {
    private static final long serialVersionUID = 1;
    private transient r96 params;

    public BCMcElieceCCA2PublicKey(r96 r96Var) {
        this.params = r96Var;
    }

    private void init(s1a s1aVar) throws IOException {
        this.params = (r96) ik8.a(s1aVar);
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
        if (obj == null || !(obj instanceof BCMcElieceCCA2PublicKey)) {
            return false;
        }
        BCMcElieceCCA2PublicKey bCMcElieceCCA2PublicKey = (BCMcElieceCCA2PublicKey) obj;
        return this.params.e() == bCMcElieceCCA2PublicKey.getN() && this.params.f() == bCMcElieceCCA2PublicKey.getT() && this.params.c().equals(bCMcElieceCCA2PublicKey.getG());
    }

    @Override
    public String getAlgorithm() {
        return "McEliece-CCA2";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return new s1a(new oa(av7.n), new q96(this.params.e(), this.params.f(), this.params.c(), sn6.a(this.params.b()))).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public u94 getG() {
        return this.params.c();
    }

    public int getK() {
        return this.params.d();
    }

    public dj getKeyParams() {
        return this.params;
    }

    public int getN() {
        return this.params.e();
    }

    public int getT() {
        return this.params.f();
    }

    public int hashCode() {
        return ((this.params.e() + (this.params.f() * 37)) * 37) + this.params.c().hashCode();
    }

    public String toString() {
        return (("McEliecePublicKey:\n length of the code         : " + this.params.e() + "\n") + " error correction capability: " + this.params.f() + "\n") + " generator matrix           : " + this.params.c().toString();
    }
}
