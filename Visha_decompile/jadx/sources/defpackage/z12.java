package defpackage;

import java.security.AlgorithmParameters;
import java.security.MessageDigest;
import java.security.Signature;
import java.security.cert.CertificateFactory;

public class z12 implements i95 {
    @Override
    public AlgorithmParameters a(String str) {
        return AlgorithmParameters.getInstance(str);
    }

    @Override
    public MessageDigest b(String str) {
        return MessageDigest.getInstance(str);
    }

    @Override
    public CertificateFactory c(String str) {
        return CertificateFactory.getInstance(str);
    }

    @Override
    public Signature d(String str) {
        return Signature.getInstance(str);
    }
}
