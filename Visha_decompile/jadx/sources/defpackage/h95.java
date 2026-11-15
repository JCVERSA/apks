package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.bouncycastle.jcajce.CompositePrivateKey;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.operator.RuntimeOperatorException;
import org.bouncycastle.operator.jcajce.OperatorHelper;

public class h95 {
    public static final Set f;
    public final String a;
    public OperatorHelper b = new OperatorHelper(new z12());
    public SecureRandom c;
    public oa d;
    public AlgorithmParameterSpec e;

    public class a implements ch1 {
        public OutputStream a;
        public final Signature b;
        public final oa c;

        public a(Signature signature, oa oaVar) {
            this.b = signature;
            this.c = oaVar;
            this.a = tt7.a(signature);
        }

        @Override
        public OutputStream a() {
            return this.a;
        }

        @Override
        public oa b() {
            return this.c;
        }

        @Override
        public byte[] c() {
            try {
                return this.b.sign();
            } catch (SignatureException e) {
                throw new RuntimeOperatorException("exception obtaining signature: " + e.getMessage(), e);
            }
        }
    }

    public class b implements ch1 {
        public OutputStream a;
        public final OutputStream b;
        public final Signature[] c;

        public b(OutputStream outputStream, Signature[] signatureArr) {
            this.b = outputStream;
            this.c = signatureArr;
            this.a = outputStream;
        }

        @Override
        public OutputStream a() {
            return this.a;
        }

        @Override
        public oa b() {
            return h95.this.d;
        }

        @Override
        public byte[] c() {
            try {
                y0 y0Var = new y0();
                for (int i = 0; i != this.c.length; i++) {
                    y0Var.a(new np1(this.c[i].sign()));
                }
                return new aq1(y0Var).l("DER");
            } catch (IOException e) {
                throw new RuntimeOperatorException("exception encoding signature: " + e.getMessage(), e);
            } catch (SignatureException e2) {
                throw new RuntimeOperatorException("exception obtaining signature: " + e2.getMessage(), e2);
            }
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f = hashSet;
        hashSet.add("DILITHIUM");
        hashSet.add("SPHINCS+");
        hashSet.add("SPHINCSPlus");
    }

    public h95(String str) {
        this.a = str;
    }

    public ch1 b(PrivateKey privateKey) throws OperatorCreationException {
        if (privateKey instanceof CompositePrivateKey) {
            CompositePrivateKey compositePrivateKey = (CompositePrivateKey) privateKey;
            if (compositePrivateKey.getAlgorithmIdentifier().s(wp6.Q)) {
                return c(compositePrivateKey);
            }
        }
        try {
            if (this.e == null) {
                if (f.contains(u0a.j(this.a))) {
                    this.d = og8.n(privateKey.getEncoded()).p();
                } else {
                    this.d = new j42().b(this.a);
                }
                this.e = null;
            }
            oa oaVar = this.d;
            Signature signatureB = this.b.b(oaVar);
            SecureRandom secureRandom = this.c;
            if (secureRandom != null) {
                signatureB.initSign(privateKey, secureRandom);
            } else {
                signatureB.initSign(privateKey);
            }
            return new a(signatureB, oaVar);
        } catch (GeneralSecurityException e) {
            throw new OperatorCreationException("cannot create signer: " + e.getMessage(), e);
        }
    }

    public final ch1 c(CompositePrivateKey compositePrivateKey) throws OperatorCreationException {
        try {
            List<PrivateKey> privateKeys = compositePrivateKey.getPrivateKeys();
            s1 s1VarZ = s1.z(this.d.p());
            int size = s1VarZ.size();
            Signature[] signatureArr = new Signature[size];
            for (int i = 0; i != s1VarZ.size(); i++) {
                Signature signatureB = this.b.b(oa.o(s1VarZ.A(i)));
                signatureArr[i] = signatureB;
                if (this.c != null) {
                    signatureB.initSign(privateKeys.get(i), this.c);
                } else {
                    signatureB.initSign(privateKeys.get(i));
                }
            }
            OutputStream outputStreamA = tt7.a(signatureArr[0]);
            int i2 = 1;
            while (i2 != size) {
                lea leaVar = new lea(outputStreamA, tt7.a(signatureArr[i2]));
                i2++;
                outputStreamA = leaVar;
            }
            return new b(outputStreamA, signatureArr);
        } catch (GeneralSecurityException e) {
            throw new OperatorCreationException("cannot create signer: " + e.getMessage(), e);
        }
    }
}
