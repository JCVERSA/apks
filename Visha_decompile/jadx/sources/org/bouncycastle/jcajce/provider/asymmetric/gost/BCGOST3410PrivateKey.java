package org.bouncycastle.jcajce.provider.asymmetric.gost;

import defpackage.g1;
import defpackage.ka4;
import defpackage.l1;
import defpackage.m1;
import defpackage.ma4;
import defpackage.na4;
import defpackage.oa;
import defpackage.oa4;
import defpackage.og8;
import defpackage.pa4;
import defpackage.qa4;
import defpackage.ta4;
import defpackage.ua4;
import defpackage.wl1;
import defpackage.wp1;
import defpackage.wu7;
import defpackage.x0;
import defpackage.xu7;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.util.Enumeration;
import org.bouncycastle.jce.interfaces.GOST3410PrivateKey;

public class BCGOST3410PrivateKey implements GOST3410PrivateKey, wu7 {
    static final long serialVersionUID = 8581661527592305464L;
    private transient wu7 attrCarrier = new xu7();
    private transient ma4 gost3410Spec;
    private BigInteger x;

    public BCGOST3410PrivateKey() {
    }

    private boolean compareObj(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        String str = (String) objectInputStream.readObject();
        if (str != null) {
            this.gost3410Spec = new ka4(str, (String) objectInputStream.readObject(), (String) objectInputStream.readObject());
        } else {
            this.gost3410Spec = new ka4(new qa4((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject()));
            objectInputStream.readObject();
            objectInputStream.readObject();
        }
        this.attrCarrier = new xu7();
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
        if (!(obj instanceof GOST3410PrivateKey)) {
            return false;
        }
        GOST3410PrivateKey gOST3410PrivateKey = (GOST3410PrivateKey) obj;
        return getX().equals(gOST3410PrivateKey.getX()) && getParameters().a().equals(gOST3410PrivateKey.getParameters().a()) && compareObj(getParameters().d(), gOST3410PrivateKey.getParameters().d()) && compareObj(getParameters().c(), gOST3410PrivateKey.getParameters().c());
    }

    @Override
    public String getAlgorithm() {
        return "GOST3410";
    }

    @Override
    public x0 getBagAttribute(l1 l1Var) {
        return this.attrCarrier.getBagAttribute(l1Var);
    }

    @Override
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override
    public byte[] getEncoded() {
        byte[] byteArray = getX().toByteArray();
        byte[] bArr = new byte[byteArray[0] == 0 ? byteArray.length - 1 : byteArray.length];
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = byteArray[(byteArray.length - 1) - i];
        }
        try {
            return (this.gost3410Spec instanceof ka4 ? new og8(new oa(wl1.l, new pa4(new l1(this.gost3410Spec.b()), new l1(this.gost3410Spec.d()))), new wp1(bArr)) : new og8(new oa(wl1.l), new wp1(bArr))).l("DER");
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "PKCS#8";
    }

    @Override
    public ma4 getParameters() {
        return this.gost3410Spec;
    }

    @Override
    public BigInteger getX() {
        return this.x;
    }

    public int hashCode() {
        return this.gost3410Spec.hashCode() ^ getX().hashCode();
    }

    @Override
    public void setBagAttribute(l1 l1Var, x0 x0Var) {
        this.attrCarrier.setBagAttribute(l1Var, x0Var);
    }

    public String toString() {
        try {
            return ua4.b("GOST3410", this.x, ((na4) ta4.a(this)).b());
        } catch (InvalidKeyException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    public BCGOST3410PrivateKey(na4 na4Var, ka4 ka4Var) {
        this.x = na4Var.c();
        this.gost3410Spec = ka4Var;
        if (ka4Var == null) {
            throw new IllegalArgumentException("spec is null");
        }
    }

    public BCGOST3410PrivateKey(oa4 oa4Var) {
        throw null;
    }

    public BCGOST3410PrivateKey(og8 og8Var) throws IOException {
        BigInteger bigInteger;
        pa4 pa4VarO = pa4.o(og8Var.p().p());
        x0 x0VarU = og8Var.u();
        if (x0VarU instanceof g1) {
            bigInteger = g1.y(x0VarU).z();
        } else {
            byte[] bArrZ = m1.y(og8Var.u()).z();
            byte[] bArr = new byte[bArrZ.length];
            for (int i = 0; i != bArrZ.length; i++) {
                bArr[i] = bArrZ[(bArrZ.length - 1) - i];
            }
            bigInteger = new BigInteger(1, bArr);
        }
        this.x = bigInteger;
        this.gost3410Spec = ka4.e(pa4VarO);
    }

    public BCGOST3410PrivateKey(GOST3410PrivateKey gOST3410PrivateKey) {
        this.x = gOST3410PrivateKey.getX();
        this.gost3410Spec = gOST3410PrivateKey.getParameters();
    }
}
