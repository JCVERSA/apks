package org.bouncycastle.jcajce.provider.asymmetric.edec;

import defpackage.b63;
import defpackage.bmb;
import defpackage.c63;
import defpackage.ci;
import defpackage.dj;
import defpackage.e63;
import defpackage.f63;
import defpackage.g63;
import defpackage.m1;
import defpackage.og8;
import defpackage.qg8;
import defpackage.qi8;
import defpackage.t1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.jcajce.interfaces.EdDSAPrivateKey;
import org.bouncycastle.jcajce.interfaces.EdDSAPublicKey;

public class BCEdDSAPrivateKey implements EdDSAPrivateKey {
    static final long serialVersionUID = 1;
    private final byte[] attributes;
    transient dj eddsaPrivateKey;
    transient dj eddsaPublicKey;
    private final boolean hasPublicKey;
    transient int hashCode;

    public BCEdDSAPrivateKey(dj djVar) {
        this.hasPublicKey = true;
        this.attributes = null;
        this.eddsaPrivateKey = djVar;
        this.eddsaPublicKey = djVar instanceof e63 ? ((e63) djVar).b() : ((b63) djVar).b();
        this.hashCode = calculateHashCode();
    }

    private int calculateHashCode() {
        dj djVar = this.eddsaPublicKey;
        return (getAlgorithm().hashCode() * 31) + ci.v(djVar instanceof f63 ? ((f63) djVar).getEncoded() : ((c63) djVar).getEncoded());
    }

    private og8 getPrivateKeyInfo() {
        try {
            t1 t1VarY = t1.y(this.attributes);
            og8 og8VarA = qg8.a(this.eddsaPrivateKey, t1VarY);
            return (!this.hasPublicKey || qi8.c("org.bouncycastle.pkcs8.v1_info_only")) ? new og8(og8VarA.p(), og8VarA.u(), t1VarY) : og8VarA;
        } catch (IOException unused) {
            return null;
        }
    }

    private void populateFromPrivateKeyInfo(og8 og8Var) throws IOException {
        dj djVarB;
        byte[] bArrZ = m1.y(og8Var.u()).z();
        if (g63.e.s(og8Var.p().m())) {
            e63 e63Var = new e63(bArrZ);
            this.eddsaPrivateKey = e63Var;
            djVarB = e63Var.b();
        } else {
            b63 b63Var = new b63(bArrZ);
            this.eddsaPrivateKey = b63Var;
            djVarB = b63Var.b();
        }
        this.eddsaPublicKey = djVarB;
        this.hashCode = calculateHashCode();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        populateFromPrivateKeyInfo(og8.n((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public dj engineGetKeyParameters() {
        return this.eddsaPrivateKey;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PrivateKey)) {
            return false;
        }
        PrivateKey privateKey = (PrivateKey) obj;
        og8 privateKeyInfo = getPrivateKeyInfo();
        og8 privateKeyInfo2 = privateKey instanceof BCEdDSAPrivateKey ? ((BCEdDSAPrivateKey) privateKey).getPrivateKeyInfo() : og8.n(privateKey.getEncoded());
        if (privateKeyInfo != null && privateKeyInfo2 != null) {
            try {
                return ci.o(privateKeyInfo.o().getEncoded(), privateKeyInfo2.o().getEncoded()) & ci.o(privateKeyInfo.p().getEncoded(), privateKeyInfo2.p().getEncoded());
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override
    public String getAlgorithm() {
        if (qi8.c("org.bouncycastle.emulate.oracle")) {
            return "EdDSA";
        }
        return this.eddsaPrivateKey instanceof e63 ? "Ed448" : "Ed25519";
    }

    @Override
    public byte[] getEncoded() {
        try {
            og8 privateKeyInfo = getPrivateKeyInfo();
            if (privateKeyInfo == null) {
                return null;
            }
            return privateKeyInfo.getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public EdDSAPublicKey getPublicKey() {
        return new BCEdDSAPublicKey(this.eddsaPublicKey);
    }

    public int hashCode() {
        return this.hashCode;
    }

    public String toString() {
        return bmb.c("Private Key", getAlgorithm(), this.eddsaPublicKey);
    }

    public BCEdDSAPrivateKey(og8 og8Var) throws IOException {
        this.hasPublicKey = og8Var.t();
        this.attributes = og8Var.m() != null ? og8Var.m().getEncoded() : null;
        populateFromPrivateKeyInfo(og8Var);
    }
}
