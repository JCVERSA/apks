package defpackage;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.bouncycastle.jce.interfaces.GOST3410PrivateKey;
import org.bouncycastle.jce.interfaces.GOST3410PublicKey;

public abstract class ta4 {
    public static dj a(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof GOST3410PrivateKey)) {
            throw new InvalidKeyException("can't identify GOST3410 private key.");
        }
        GOST3410PrivateKey gOST3410PrivateKey = (GOST3410PrivateKey) privateKey;
        qa4 qa4VarA = gOST3410PrivateKey.getParameters().a();
        return new na4(gOST3410PrivateKey.getX(), new la4(qa4VarA.b(), qa4VarA.c(), qa4VarA.a()));
    }

    public static dj b(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof GOST3410PublicKey) {
            GOST3410PublicKey gOST3410PublicKey = (GOST3410PublicKey) publicKey;
            qa4 qa4VarA = gOST3410PublicKey.getParameters().a();
            return new ra4(gOST3410PublicKey.getY(), new la4(qa4VarA.b(), qa4VarA.c(), qa4VarA.a()));
        }
        throw new InvalidKeyException("can't identify GOST3410 public key: " + publicKey.getClass().getName());
    }
}
