package com.google.android.gms.internal.ads;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;

final class zzaom extends zzaon {
    private final byte[] zza;

    public zzaom(X509Certificate x509Certificate, byte[] bArr) {
        super(x509Certificate);
        this.zza = bArr;
    }

    @Override
    public final byte[] getEncoded() throws CertificateEncodingException {
        return this.zza;
    }
}
