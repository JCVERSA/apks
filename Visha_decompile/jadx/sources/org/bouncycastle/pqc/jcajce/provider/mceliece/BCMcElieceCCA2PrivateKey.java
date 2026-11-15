package org.bouncycastle.pqc.jcajce.provider.mceliece;

import defpackage.av7;
import defpackage.dj;
import defpackage.ng8;
import defpackage.o96;
import defpackage.oa;
import defpackage.og8;
import defpackage.p96;
import defpackage.sn6;
import defpackage.tc8;
import defpackage.u08;
import defpackage.u94;
import defpackage.x94;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;

public class BCMcElieceCCA2PrivateKey implements PrivateKey {
    private static final long serialVersionUID = 1;
    private transient p96 params;

    public BCMcElieceCCA2PrivateKey(p96 p96Var) {
        this.params = p96Var;
    }

    private void init(og8 og8Var) throws IOException {
        this.params = (p96) ng8.b(og8Var);
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
        if (obj == null || !(obj instanceof BCMcElieceCCA2PrivateKey)) {
            return false;
        }
        BCMcElieceCCA2PrivateKey bCMcElieceCCA2PrivateKey = (BCMcElieceCCA2PrivateKey) obj;
        return getN() == bCMcElieceCCA2PrivateKey.getN() && getK() == bCMcElieceCCA2PrivateKey.getK() && getField().equals(bCMcElieceCCA2PrivateKey.getField()) && getGoppaPoly().equals(bCMcElieceCCA2PrivateKey.getGoppaPoly()) && getP().equals(bCMcElieceCCA2PrivateKey.getP()) && getH().equals(bCMcElieceCCA2PrivateKey.getH());
    }

    @Override
    public String getAlgorithm() {
        return "McEliece-CCA2";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return new og8(new oa(av7.n), new o96(getN(), getK(), getField(), getGoppaPoly(), getP(), sn6.a(this.params.b()))).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    public x94 getField() {
        return this.params.c();
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public tc8 getGoppaPoly() {
        return this.params.d();
    }

    public u94 getH() {
        return this.params.e();
    }

    public int getK() {
        return this.params.f();
    }

    public dj getKeyParams() {
        return this.params;
    }

    public int getN() {
        return this.params.g();
    }

    public u08 getP() {
        return this.params.h();
    }

    public tc8[] getQInv() {
        return this.params.i();
    }

    public int getT() {
        return this.params.d().g();
    }

    public int hashCode() {
        return (((((((((this.params.f() * 37) + this.params.g()) * 37) + this.params.c().hashCode()) * 37) + this.params.d().hashCode()) * 37) + this.params.h().hashCode()) * 37) + this.params.e().hashCode();
    }
}
