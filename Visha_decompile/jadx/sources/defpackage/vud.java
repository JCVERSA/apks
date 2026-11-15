package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

public final class vud implements HostnameVerifier {
    @Override
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            String peerHost = sSLSession.getPeerHost();
            for (X509Certificate x509Certificate : (X509Certificate[]) sSLSession.getPeerCertificates()) {
                for (String str2 : x509Certificate.getSubjectX500Principal().getName().split(StringUtils.COMMA)) {
                    if (str2.startsWith("CN") && peerHost.equals(str) && str2.contains("qchannel")) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
