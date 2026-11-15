package com.facebook.biddingkit.http.client;

import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;

public class KeyPinningValidator {
    private KeyPinningValidator() {
    }

    private static String bytesToBase64Hash(byte[] bArr, String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.reset();
        return Base64.encodeToString(messageDigest.digest(bArr), 0);
    }

    public static void validatePinning(HttpsURLConnection httpsURLConnection, Set<String> set, Set<String> set2) throws Exception {
        for (Certificate certificate : httpsURLConnection.getServerCertificates()) {
            X509Certificate x509Certificate = (X509Certificate) certificate;
            String strBytesToBase64Hash = bytesToBase64Hash(x509Certificate.getEncoded(), "SHA-1");
            if (set != null && set.contains(strBytesToBase64Hash)) {
                return;
            }
            String strBytesToBase64Hash2 = bytesToBase64Hash(x509Certificate.getPublicKey().getEncoded(), "SHA-1");
            if (set2 != null && set2.contains(strBytesToBase64Hash2)) {
                return;
            }
        }
        throw new CertificateException("Unable to find valid certificate or public key.");
    }
}
