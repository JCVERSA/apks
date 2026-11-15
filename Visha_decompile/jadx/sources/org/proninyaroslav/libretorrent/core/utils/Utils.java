package org.proninyaroslav.libretorrent.core.utils;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.nio.charset.StandardCharsets;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.commons.io.IOUtils;
import org.libtorrent4j.FileStorage;
import org.proninyaroslav.libretorrent.core.HttpConnection;
import org.proninyaroslav.libretorrent.core.exception.FetchLinkException;
import org.proninyaroslav.libretorrent.core.model.data.metainfo.BencodeFileItem;
import org.proninyaroslav.libretorrent.core.system.SafFileSystem;

public class Utils {

    class AnonymousClass1 implements HttpConnection.Listener {
        public final byte[][] a;
        public final ArrayList b;

        @Override
        public void a(String str) {
        }

        @Override
        public void b(IOException iOException) {
            this.b.add(iOException);
        }

        @Override
        public void c(HttpURLConnection httpURLConnection) {
        }

        @Override
        public void d() {
            this.b.add(new FetchLinkException("Too many redirects"));
        }

        @Override
        public void e(HttpURLConnection httpURLConnection, int i, String str) {
            if (i != 200) {
                this.b.add(new FetchLinkException("Failed to fetch link, response code: " + i));
                return;
            }
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    this.a[0] = IOUtils.toByteArray(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
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
            } catch (IOException e) {
                this.b.add(e);
            }
        }
    }

    public static String a(String str) {
        int iIndexOf = str.indexOf("-");
        return iIndexOf >= 0 ? str.substring(0, iIndexOf) : str;
    }

    public static int b() {
        return Resources.getSystem().getInteger(Resources.getSystem().getIdentifier("config_lowBatteryWarningLevel", TypedValues.Custom.S_INT, ConstantDeviceInfo.APP_PLATFORM));
    }

    public static ArrayList c(FileStorage fileStorage) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < fileStorage.numFiles(); i++) {
            arrayList.add(new BencodeFileItem(fileStorage.filePath(i), i, fileStorage.fileSize(i)));
        }
        return arrayList;
    }

    public static SSLContext d() throws NoSuchAlgorithmException, KeyStoreException, KeyManagementException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        final X509TrustManager x509TrustManager = (X509TrustManager) trustManagerFactory.getTrustManagers()[0];
        TrustManager[] trustManagerArr = {new X509TrustManager() {
            @Override
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                x509TrustManager.checkClientTrusted(x509CertificateArr, str);
            }

            @Override
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
            }

            @Override
            public X509Certificate[] getAcceptedIssuers() {
                return x509TrustManager.getAcceptedIssuers();
            }
        }};
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.init(null, trustManagerArr, null);
        return sSLContext;
    }

    public static int[] e(String str) {
        int[] iArr = new int[3];
        String[] strArrSplit = a(str).split("\\.");
        if (strArrSplit.length < 2) {
            return iArr;
        }
        try {
            iArr[0] = Integer.parseInt(strArrSplit[0]);
            iArr[1] = Integer.parseInt(strArrSplit[1]);
            if (strArrSplit.length >= 3) {
                iArr[2] = Integer.parseInt(strArrSplit[2]);
            }
        } catch (NumberFormatException unused) {
        }
        return iArr;
    }

    public static boolean f(Uri uri) {
        String scheme = uri.getScheme();
        if (scheme != null) {
            return scheme.equals("file");
        }
        throw new IllegalArgumentException("Scheme of " + uri.getPath() + " is null");
    }

    public static boolean g(Context context, Uri uri) {
        return SafFileSystem.e(context).f(uri);
    }

    public static String h(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            messageDigest.update(str.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (byte b : messageDigest.digest()) {
                int i = b & 255;
                if (i < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }
}
