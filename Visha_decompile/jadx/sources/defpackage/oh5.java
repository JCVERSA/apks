package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.pqc.jcajce.provider.kyber.BCKyberPrivateKey;
import org.bouncycastle.pqc.jcajce.provider.kyber.BCKyberPublicKey;

public class oh5 extends ya0 {
    public static final Set c;

    static {
        HashSet hashSet = new HashSet();
        c = hashSet;
        hashSet.add(b40.P2);
        hashSet.add(b40.Q2);
        hashSet.add(b40.R2);
        hashSet.add(b40.S2);
        hashSet.add(b40.T2);
        hashSet.add(b40.U2);
    }

    public oh5() {
        super(c);
    }

    @Override
    public PublicKey a(s1a s1aVar) {
        return new BCKyberPublicKey(s1aVar);
    }

    @Override
    public PrivateKey b(og8 og8Var) {
        return new BCKyberPrivateKey(og8Var);
    }

    @Override
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof BCKyberPrivateKey) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
        } else {
            if (!(key instanceof BCKyberPublicKey)) {
                throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + Consts.DOT);
            }
            if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new X509EncodedKeySpec(key.getEncoded());
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + cls + Consts.DOT);
    }

    @Override
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof BCKyberPrivateKey) || (key instanceof BCKyberPublicKey)) {
            return key;
        }
        throw new InvalidKeyException("Unsupported key type");
    }
}
