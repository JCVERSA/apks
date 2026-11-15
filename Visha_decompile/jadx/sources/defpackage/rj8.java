package defpackage;

import java.security.AlgorithmParameters;
import java.security.MessageDigest;
import java.security.Provider;
import java.security.Signature;
import java.security.cert.CertificateFactory;

public abstract class rj8 implements i95 {
    public final Provider a;

    public rj8(Provider provider) {
        this.a = provider;
    }

    @Override
    public AlgorithmParameters a(String str) {
        return AlgorithmParameters.getInstance(str, this.a);
    }

    @Override
    public MessageDigest b(String str) {
        return MessageDigest.getInstance(str, this.a);
    }

    @Override
    public CertificateFactory c(String str) {
        return CertificateFactory.getInstance(str, this.a);
    }

    @Override
    public Signature d(String str) {
        return Signature.getInstance(str, this.a);
    }
}
