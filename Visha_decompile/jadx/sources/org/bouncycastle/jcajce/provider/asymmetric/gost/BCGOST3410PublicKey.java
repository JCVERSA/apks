package org.bouncycastle.jcajce.provider.asymmetric.gost;

import defpackage.ka4;
import defpackage.l1;
import defpackage.ma4;
import defpackage.oa;
import defpackage.pa4;
import defpackage.qa4;
import defpackage.ra4;
import defpackage.s1a;
import defpackage.sa4;
import defpackage.ta4;
import defpackage.ua4;
import defpackage.wl1;
import defpackage.wp1;
import defpackage.yf5;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import org.bouncycastle.jce.interfaces.GOST3410PublicKey;

public class BCGOST3410PublicKey implements GOST3410PublicKey {
    static final long serialVersionUID = -6251023343619275990L;
    private transient ma4 gost3410Spec;
    private BigInteger y;

    public BCGOST3410PublicKey(ra4 ra4Var, ka4 ka4Var) {
        this.y = ra4Var.c();
        this.gost3410Spec = ka4Var;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        String str = (String) objectInputStream.readObject();
        if (str != null) {
            this.gost3410Spec = new ka4(str, (String) objectInputStream.readObject(), (String) objectInputStream.readObject());
            return;
        }
        this.gost3410Spec = new ka4(new qa4((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject()));
        objectInputStream.readObject();
        objectInputStream.readObject();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        Object objA;
        objectOutputStream.defaultWriteObject();
        if (this.gost3410Spec.b() != null) {
            objA = this.gost3410Spec.b();
        } else {
            objectOutputStream.writeObject(null);
            objectOutputStream.writeObject(this.gost3410Spec.a().b());
            objectOutputStream.writeObject(this.gost3410Spec.a().c());
            objA = this.gost3410Spec.a().a();
        }
        objectOutputStream.writeObject(objA);
        objectOutputStream.writeObject(this.gost3410Spec.d());
        objectOutputStream.writeObject(this.gost3410Spec.c());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BCGOST3410PublicKey)) {
            return false;
        }
        BCGOST3410PublicKey bCGOST3410PublicKey = (BCGOST3410PublicKey) obj;
        return this.y.equals(bCGOST3410PublicKey.y) && this.gost3410Spec.equals(bCGOST3410PublicKey.gost3410Spec);
    }

    @Override
    public String getAlgorithm() {
        return "GOST3410";
    }

    @Override
    public byte[] getEncoded() {
        byte[] byteArray = getY().toByteArray();
        byte[] bArr = new byte[byteArray[0] == 0 ? byteArray.length - 1 : byteArray.length];
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = byteArray[(byteArray.length - 1) - i];
        }
        try {
            ma4 ma4Var = this.gost3410Spec;
            return yf5.e(ma4Var instanceof ka4 ? ma4Var.c() != null ? new s1a(new oa(wl1.l, new pa4(new l1(this.gost3410Spec.b()), new l1(this.gost3410Spec.d()), new l1(this.gost3410Spec.c()))), new wp1(bArr)) : new s1a(new oa(wl1.l, new pa4(new l1(this.gost3410Spec.b()), new l1(this.gost3410Spec.d()))), new wp1(bArr)) : new s1a(new oa(wl1.l), new wp1(bArr)));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    @Override
    public ma4 getParameters() {
        return this.gost3410Spec;
    }

    @Override
    public BigInteger getY() {
        return this.y;
    }

    public int hashCode() {
        return this.gost3410Spec.hashCode() ^ this.y.hashCode();
    }

    public String toString() {
        try {
            return ua4.c("GOST3410", this.y, ((ra4) ta4.b(this)).b());
        } catch (InvalidKeyException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    public BCGOST3410PublicKey(sa4 sa4Var) {
        throw null;
    }

    public BCGOST3410PublicKey(s1a s1aVar) {
        pa4 pa4VarO = pa4.o(s1aVar.m().p());
        try {
            byte[] bArrZ = ((wp1) s1aVar.p()).z();
            byte[] bArr = new byte[bArrZ.length];
            for (int i = 0; i != bArrZ.length; i++) {
                bArr[i] = bArrZ[(bArrZ.length - 1) - i];
            }
            this.y = new BigInteger(1, bArr);
            this.gost3410Spec = ka4.e(pa4VarO);
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in GOST3410 public key");
        }
    }

    public BCGOST3410PublicKey(BigInteger bigInteger, ka4 ka4Var) {
        this.y = bigInteger;
        this.gost3410Spec = ka4Var;
    }

    public BCGOST3410PublicKey(GOST3410PublicKey gOST3410PublicKey) {
        this.y = gOST3410PublicKey.getY();
        this.gost3410Spec = gOST3410PublicKey.getParameters();
    }
}
