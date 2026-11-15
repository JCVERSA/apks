package defpackage;

import android.os.Build;
import com.google.android.gms.internal.ads.a;
import com.google.android.gms.internal.ads.zzaol;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import okio.Utf8;

public final class owh {
    public static final byte[] c = {61, 122, 18, 35, 1, -102, -93, -99, -98, -96, -29, 67, 106, -73, -64, -119, 107, -5, 79, -74, 121, -12, -34, 95, -25, -62, Utf8.REPLACEMENT_BYTE, 50, 108, SocketData.CLAZZ_TYPE_URI, -103, 74};
    public static final byte[] d = {-110, -13, -34, 70, -83, 43, 97, 21, -44, 16, -54, SocketData.CLAZZ_TYPE_CONNECT_CHECK, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -57, SocketData.CLAZZ_TYPE_CONNECT_CHECK, SocketData.CLAZZ_TYPE_HEART_BEAT, -7, 17, 102, -69, 116, -121, -79, 43, -13, 120, 58, 55, -29, -108, 95, 83};
    public final byte[] a = d;
    public final byte[] b = c;

    public final boolean a(File file) throws GeneralSecurityException {
        try {
            X509Certificate[][] x509CertificateArrA = a.a(file.getAbsolutePath());
            if (x509CertificateArrA.length != 1) {
                throw new GeneralSecurityException("APK has more than one signature.");
            }
            byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(x509CertificateArrA[0][0].getEncoded());
            if (Arrays.equals(this.b, bArrDigest)) {
                return true;
            }
            return !"user".equals(Build.TYPE) && Arrays.equals(this.a, bArrDigest);
        } catch (zzaol e) {
            throw new GeneralSecurityException("Package is not signed", e);
        } catch (IOException | RuntimeException e2) {
            throw new GeneralSecurityException("Failed to verify signatures", e2);
        }
    }
}
