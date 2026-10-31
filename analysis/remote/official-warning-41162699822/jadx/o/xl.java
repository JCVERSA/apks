package o;

import android.content.Context;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class xl {
    public static String a;

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b)));
        }
        return sb.toString();
    }

    public static X509Certificate b(Context context) {
        try {
            ZipFile zipFile = new ZipFile(context.getPackageCodePath());
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    String name = zipEntryNextElement.getName();
                    if (!name.startsWith("META-INF/") || (!name.endsWith(".RSA") && !name.endsWith(".DSA") && !name.endsWith(".EC"))) {
                    }
                    InputStream inputStream = zipFile.getInputStream(zipEntryNextElement);
                    try {
                        X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(inputStream);
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        zipFile.close();
                        return x509Certificate;
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                }
                zipFile.close();
            } catch (Throwable th3) {
                try {
                    zipFile.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String c(Context context) {
        String str = a;
        if (str != null) {
            return str;
        }
        String strD = d(context, "SHA1");
        a = strD;
        if (strD == null) {
            a = "";
        }
        return a;
    }

    public static String d(Context context, String str) {
        try {
            X509Certificate x509CertificateB = b(context);
            if (x509CertificateB == null) {
                return null;
            }
            return a(MessageDigest.getInstance(str).digest(x509CertificateB.getEncoded()));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
