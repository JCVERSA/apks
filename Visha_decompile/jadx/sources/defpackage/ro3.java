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
import org.bouncycastle.pqc.jcajce.provider.falcon.BCFalconPrivateKey;
import org.bouncycastle.pqc.jcajce.provider.falcon.BCFalconPublicKey;

public class ro3 extends ya0 {
    public static final Set c;

    static {
        HashSet hashSet = new HashSet();
        c = hashSet;
        hashSet.add(b40.r1);
        hashSet.add(b40.s1);
    }

    public ro3() {
        super(c);
    }

    @Override
    public PublicKey a(s1a s1aVar) {
        return new BCFalconPublicKey(s1aVar);
    }

    @Override
    public PrivateKey b(og8 og8Var) {
        return new BCFalconPrivateKey(og8Var);
    }

    @Override
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof BCFalconPrivateKey) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
        } else {
            if (!(key instanceof BCFalconPublicKey)) {
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
        if ((key instanceof BCFalconPrivateKey) || (key instanceof BCFalconPublicKey)) {
            return key;
        }
        throw new InvalidKeyException("Unsupported key type");
    }
}
