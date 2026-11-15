package cn.com.custommma.mobile.tracking.viewability.webjs;

import android.content.Context;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import defpackage.rq5;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.GZIPInputStream;

public abstract class a {

    public static class C0020a {
        public static byte[] a(String str) {
            HttpURLConnection httpURLConnection;
            InputStream inputStream;
            byte[] bArrG;
            rq5.a("Attempting Get to " + str + "\n");
            InputStream inputStream2 = null;
            try {
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                try {
                    httpURLConnection.setConnectTimeout(3000);
                    httpURLConnection.setReadTimeout(3000);
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                    if (httpURLConnection.getResponseCode() == 200) {
                        String contentEncoding = httpURLConnection.getContentEncoding();
                        InputStream inputStream3 = (TextUtils.isEmpty(contentEncoding) || !contentEncoding.contains("gzip")) ? httpURLConnection.getInputStream() : new GZIPInputStream(httpURLConnection.getInputStream());
                        try {
                            InputStream inputStream4 = inputStream3;
                            bArrG = a.g(inputStream3);
                            inputStream2 = inputStream4;
                        } catch (Throwable th) {
                            inputStream = inputStream3;
                            th = th;
                            try {
                                th.printStackTrace();
                            } finally {
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException unused) {
                                    }
                                }
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                            }
                        }
                    } else {
                        bArrG = null;
                    }
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException unused2) {
                        }
                    }
                    httpURLConnection.disconnect();
                    return bArrG;
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection = null;
                inputStream = null;
            }
        }
    }

    public static boolean a(a aVar, boolean z) {
        throw null;
    }

    public static String b(a aVar) {
        throw null;
    }

    public static String c(a aVar) {
        throw null;
    }

    public static String d(a aVar, String str) {
        throw null;
    }

    public static Context e(a aVar) {
        throw null;
    }

    public static String f(a aVar) {
        throw null;
    }

    public static byte[] g(InputStream inputStream) {
        byte[] byteArray = null;
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i);
                    }
                    byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                } catch (Exception e) {
                    e.printStackTrace();
                    byteArrayOutputStream.close();
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            throw th;
        }
    }
}
