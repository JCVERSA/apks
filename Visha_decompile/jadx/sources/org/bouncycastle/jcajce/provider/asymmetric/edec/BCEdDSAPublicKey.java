package org.bouncycastle.jcajce.provider.asymmetric.edec;

import defpackage.bmb;
import defpackage.c63;
import defpackage.ci;
import defpackage.dj;
import defpackage.f63;
import defpackage.g63;
import defpackage.qf5;
import defpackage.qi8;
import defpackage.s1a;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import org.bouncycastle.jcajce.interfaces.EdDSAPublicKey;

public class BCEdDSAPublicKey implements EdDSAPublicKey {
    static final long serialVersionUID = 1;
    transient dj eddsaPublicKey;

    public BCEdDSAPublicKey(dj djVar) {
        this.eddsaPublicKey = djVar;
    }

    private void populateFromPubKeyInfo(s1a s1aVar) {
        byte[] bArrA = s1aVar.o().A();
        this.eddsaPublicKey = g63.e.s(s1aVar.m().m()) ? new f63(bArrA) : new c63(bArrA);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        populateFromPubKeyInfo(s1a.n((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public dj engineGetKeyParameters() {
        return this.eddsaPublicKey;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PublicKey) {
            return ci.b(((PublicKey) obj).getEncoded(), getEncoded());
        }
        return false;
    }

    @Override
    public String getAlgorithm() {
        if (qi8.c("org.bouncycastle.emulate.oracle")) {
            return "EdDSA";
        }
        return this.eddsaPublicKey instanceof f63 ? "Ed448" : "Ed25519";
    }

    @Override
    public byte[] getEncoded() {
        if (this.eddsaPublicKey instanceof f63) {
            byte[] bArr = qf5.c;
            byte[] bArr2 = new byte[bArr.length + 57];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            ((f63) this.eddsaPublicKey).b(bArr2, bArr.length);
            return bArr2;
        }
        byte[] bArr3 = qf5.d;
        byte[] bArr4 = new byte[bArr3.length + 32];
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        ((c63) this.eddsaPublicKey).b(bArr4, bArr3.length);
        return bArr4;
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public byte[] getPointEncoding() {
        dj djVar = this.eddsaPublicKey;
        return djVar instanceof f63 ? ((f63) djVar).getEncoded() : ((c63) djVar).getEncoded();
    }

    public int hashCode() {
        return ci.v(getEncoded());
    }

    public String toString() {
        return bmb.c("Public Key", getAlgorithm(), this.eddsaPublicKey);
    }

    public BCEdDSAPublicKey(s1a s1aVar) {
        populateFromPubKeyInfo(s1aVar);
    }

    public BCEdDSAPublicKey(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException {
        dj c63Var;
        int length = bArr.length;
        if (!bmb.b(bArr, bArr2)) {
            throw new InvalidKeySpecException("raw key data not recognised");
        }
        if (bArr2.length - length == 57) {
            c63Var = new f63(bArr2, length);
        } else {
            if (bArr2.length - length != 32) {
                throw new InvalidKeySpecException("raw key data not recognised");
            }
            c63Var = new c63(bArr2, length);
        }
        this.eddsaPublicKey = c63Var;
    }
}
