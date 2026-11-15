package org.bouncycastle.jcajce.provider.asymmetric.edec;

import defpackage.bmb;
import defpackage.bqc;
import defpackage.ci;
import defpackage.dj;
import defpackage.g63;
import defpackage.qf5;
import defpackage.qi8;
import defpackage.s1a;
import defpackage.xpc;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import org.bouncycastle.jcajce.interfaces.XDHPublicKey;

public class BCXDHPublicKey implements XDHPublicKey {
    static final long serialVersionUID = 1;
    transient dj xdhPublicKey;

    public BCXDHPublicKey(dj djVar) {
        this.xdhPublicKey = djVar;
    }

    private void populateFromPubKeyInfo(s1a s1aVar) {
        byte[] bArrA = s1aVar.o().A();
        this.xdhPublicKey = g63.c.s(s1aVar.m().m()) ? new bqc(bArrA) : new xpc(bArrA);
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
        return this.xdhPublicKey;
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
            return "XDH";
        }
        return this.xdhPublicKey instanceof bqc ? "X448" : "X25519";
    }

    @Override
    public byte[] getEncoded() {
        if (this.xdhPublicKey instanceof bqc) {
            byte[] bArr = qf5.a;
            byte[] bArr2 = new byte[bArr.length + 56];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            ((bqc) this.xdhPublicKey).b(bArr2, bArr.length);
            return bArr2;
        }
        byte[] bArr3 = qf5.b;
        byte[] bArr4 = new byte[bArr3.length + 32];
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        ((xpc) this.xdhPublicKey).b(bArr4, bArr3.length);
        return bArr4;
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public BigInteger getU() {
        byte[] uEncoding = getUEncoding();
        ci.F(uEncoding);
        return new BigInteger(1, uEncoding);
    }

    @Override
    public byte[] getUEncoding() {
        dj djVar = this.xdhPublicKey;
        return djVar instanceof bqc ? ((bqc) djVar).getEncoded() : ((xpc) djVar).getEncoded();
    }

    public int hashCode() {
        return ci.v(getEncoded());
    }

    public String toString() {
        return bmb.c("Public Key", getAlgorithm(), this.xdhPublicKey);
    }

    public BCXDHPublicKey(s1a s1aVar) {
        populateFromPubKeyInfo(s1aVar);
    }

    public BCXDHPublicKey(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException {
        dj xpcVar;
        int length = bArr.length;
        if (!bmb.b(bArr, bArr2)) {
            throw new InvalidKeySpecException("raw key data not recognised");
        }
        if (bArr2.length - length == 56) {
            xpcVar = new bqc(bArr2, length);
        } else {
            if (bArr2.length - length != 32) {
                throw new InvalidKeySpecException("raw key data not recognised");
            }
            xpcVar = new xpc(bArr2, length);
        }
        this.xdhPublicKey = xpcVar;
    }
}
