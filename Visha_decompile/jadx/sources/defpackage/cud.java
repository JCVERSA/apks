package defpackage;

import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

public final class cud implements X509TrustManager {
    public String a;

    public cud(String str) {
        this.a = str;
    }

    public static boolean a(X509Certificate x509Certificate) {
        try {
            String strB = o4d.b(x509Certificate.getEncoded());
            return p3d.a.equals(strB.substring(3, 8)) && p3d.b.equals(strB.substring(20, 25)) && p3d.c.equals(strB.substring(37, 42));
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateNotYetValidException, CertificateExpiredException {
        for (X509Certificate x509Certificate : x509CertificateArr) {
            x509Certificate.checkValidity();
        }
    }

    @Override
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        if (x509CertificateArr == null || x509CertificateArr.length <= 0 || x509CertificateArr.length <= 0 || a(x509CertificateArr[0])) {
            return;
        }
        throw new RuntimeException(this.a + " https invalid");
    }

    @Override
    public final X509Certificate[] getAcceptedIssuers() {
        return new X509Certificate[0];
    }
}
