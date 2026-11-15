package com.google.android.libraries.places.internal;

import java.security.cert.Certificate;
import java.util.logging.Level;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

public final class zzbag {
    public final String zza;
    public final Certificate zzb;
    public final Certificate zzc;

    public zzbag(SSLSession sSLSession) {
        String cipherSuite = sSLSession.getCipherSuite();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        Certificate certificate = null;
        Certificate certificate2 = localCertificates != null ? localCertificates[0] : null;
        try {
            Certificate[] peerCertificates = sSLSession.getPeerCertificates();
            if (peerCertificates != null) {
                certificate = peerCertificates[0];
            }
        } catch (SSLPeerUnverifiedException e10) {
            zzbah.zza.logp(Level.FINE, "io.grpc.InternalChannelz$Tls", "<init>", String.format("Peer cert not available for peerHost=%s", sSLSession.getPeerHost()), (Throwable) e10);
        }
        this.zza = cipherSuite;
        this.zzb = certificate2;
        this.zzc = certificate;
    }
}
