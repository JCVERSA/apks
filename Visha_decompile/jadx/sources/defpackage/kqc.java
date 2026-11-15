package defpackage;

import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.PSSParameterSpec;

public abstract class kqc {
    public static final h1 a = up1.c;

    public static String a(l1 l1Var) {
        if (yu7.u2.s(l1Var)) {
            return "MD5";
        }
        if (n47.i.s(l1Var)) {
            return "SHA1";
        }
        if (cx6.f.s(l1Var)) {
            return "SHA224";
        }
        if (cx6.c.s(l1Var)) {
            return "SHA256";
        }
        if (cx6.d.s(l1Var)) {
            return "SHA384";
        }
        if (cx6.e.s(l1Var)) {
            return "SHA512";
        }
        if (nea.c.s(l1Var)) {
            return "RIPEMD128";
        }
        if (nea.b.s(l1Var)) {
            return "RIPEMD160";
        }
        if (nea.d.s(l1Var)) {
            return "RIPEMD256";
        }
        return wl1.b.s(l1Var) ? "GOST3411" : l1Var.B();
    }

    public static String b(oa oaVar) {
        x0 x0VarP = oaVar.p();
        if (x0VarP != null && !a.r(x0VarP)) {
            if (oaVar.m().s(yu7.P1)) {
                return a(gn8.n(x0VarP).m().m()) + "withRSAandMGF1";
            }
            if (oaVar.m().s(wqc.n5)) {
                return a(l1.D(s1.z(x0VarP).A(0))) + "withECDSA";
            }
        }
        return oaVar.m().B();
    }

    public static void c(Signature signature, x0 x0Var) throws NoSuchAlgorithmException, SignatureException {
        if (x0Var == null || a.r(x0Var)) {
            return;
        }
        AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(signature.getAlgorithm(), signature.getProvider());
        try {
            algorithmParameters.init(x0Var.j().getEncoded());
            if (signature.getAlgorithm().endsWith("MGF1")) {
                try {
                    signature.setParameter(algorithmParameters.getParameterSpec(PSSParameterSpec.class));
                } catch (GeneralSecurityException e) {
                    throw new SignatureException("Exception extracting parameters: " + e.getMessage());
                }
            }
        } catch (IOException e2) {
            throw new SignatureException("IOException decoding parameters: " + e2.getMessage());
        }
    }
}
