package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Set;

public abstract class ya0 extends KeyFactorySpi implements cj {
    public final Set a;
    public final l1 b = null;

    public ya0(Set set) {
        this.a = set;
    }

    public final void c(l1 l1Var) throws InvalidKeySpecException {
        l1 l1Var2 = this.b;
        if (l1Var2 != null) {
            if (l1Var2.s(l1Var)) {
                return;
            }
            throw new InvalidKeySpecException("incorrect algorithm OID for key: " + l1Var);
        }
        if (this.a.contains(l1Var)) {
            return;
        }
        throw new InvalidKeySpecException("incorrect algorithm OID for key: " + l1Var);
    }

    @Override
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof PKCS8EncodedKeySpec) {
            try {
                og8 og8VarN = og8.n(((PKCS8EncodedKeySpec) keySpec).getEncoded());
                c(og8VarN.p().m());
                return b(og8VarN);
            } catch (Exception e) {
                throw new InvalidKeySpecException(e.toString());
            }
        }
        throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + Consts.DOT);
    }

    @Override
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof X509EncodedKeySpec) {
            try {
                s1a s1aVarN = s1a.n(((X509EncodedKeySpec) keySpec).getEncoded());
                c(s1aVarN.m().m());
                return a(s1aVarN);
            } catch (Exception e) {
                throw new InvalidKeySpecException(e.toString());
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + keySpec + Consts.DOT);
    }
}
