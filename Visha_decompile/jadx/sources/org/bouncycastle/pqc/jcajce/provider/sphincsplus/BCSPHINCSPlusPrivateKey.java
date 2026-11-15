package org.bouncycastle.pqc.jcajce.provider.sphincsplus;

import defpackage.ci;
import defpackage.ng8;
import defpackage.og8;
import defpackage.pg8;
import defpackage.t1;
import defpackage.uy8;
import defpackage.wy8;
import defpackage.xy8;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.SPHINCSPlusPrivateKey;
import org.bouncycastle.pqc.jcajce.interfaces.SPHINCSPlusPublicKey;

public class BCSPHINCSPlusPrivateKey implements PrivateKey, SPHINCSPlusPrivateKey {
    private static final long serialVersionUID = 1;
    private transient t1 attributes;
    private transient wy8 params;

    public BCSPHINCSPlusPrivateKey(og8 og8Var) throws IOException {
        init(og8Var);
    }

    private void init(og8 og8Var) throws IOException {
        this.attributes = og8Var.m();
        this.params = (wy8) ng8.b(og8Var);
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
        if (obj instanceof BCSPHINCSPlusPrivateKey) {
            return ci.b(this.params.getEncoded(), ((BCSPHINCSPlusPrivateKey) obj).params.getEncoded());
        }
        return false;
    }

    @Override
    public final String getAlgorithm() {
        return "SPHINCS+";
    }

    @Override
    public byte[] getEncoded() {
        try {
            return pg8.a(this.params, this.attributes).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    public wy8 getKeyParams() {
        return this.params;
    }

    @Override
    public uy8 getParameterSpec() {
        return uy8.a(this.params.b().c());
    }

    @Override
    public SPHINCSPlusPublicKey getPublicKey() {
        return new BCSPHINCSPlusPublicKey(new xy8(this.params.b(), this.params.c()));
    }

    public int hashCode() {
        return ci.v(this.params.getEncoded());
    }

    public BCSPHINCSPlusPrivateKey(wy8 wy8Var) {
        this.params = wy8Var;
    }
}
