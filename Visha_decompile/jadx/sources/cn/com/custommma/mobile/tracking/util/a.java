package cn.com.custommma.mobile.tracking.util;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.webkit.internal.AssetHelper;
import com.hisavana.common.constant.ComConstants;
import com.lzy.okgo.model.HttpHeaders;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import defpackage.rq5;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HttpsURLConnection;

public class a {
    public static a a;

    public interface InterfaceC0019a {
        void a(String str);
    }

    public static byte[] a(byte[] bArr) throws Throwable {
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(bArr);
                gZIPOutputStream.finish();
                gZIPOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            } catch (Exception unused) {
                if (gZIPOutputStream != null) {
                    try {
                        gZIPOutputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                return null;
            } catch (Throwable th) {
                th = th;
                gZIPOutputStream2 = gZIPOutputStream;
                if (gZIPOutputStream2 != null) {
                    try {
                        gZIPOutputStream2.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception unused4) {
            gZIPOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static a b() {
        if (a == null) {
            synchronized (a.class) {
                try {
                    if (a == null) {
                        a = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public static byte[] g(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr, 0, 8192);
            if (i == -1) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x009c  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:61:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x00a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:? A[SYNTHETIC] */
    public byte[] c(String str) throws Throwable {
        InputStream inputStream;
        Throwable th;
        HttpURLConnection httpURLConnection;
        byte[] bArr;
        HttpURLConnection httpURLConnection2;
        byte[] bArr2;
        if (str.startsWith("https:")) {
            return d(str);
        }
        InputStream inputStream2 = null;
        byte[] bArrG = null;
        InputStream inputStream3 = null;
        inputStream2 = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(Uri.encode(str, "@#&=*+-_.,:!?()/~'%")).openConnection();
            try {
                try {
                    httpURLConnection.setConnectTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                    httpURLConnection.setReadTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                    httpURLConnection.setRequestProperty("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED);
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 200 || responseCode == 301 || responseCode == 302) {
                        try {
                            inputStream = httpURLConnection.getInputStream();
                            try {
                                try {
                                    bArrG = g(inputStream);
                                } catch (Exception unused) {
                                    try {
                                        bArrG = new byte[0];
                                    } catch (Exception unused2) {
                                        InputStream inputStream4 = inputStream;
                                        bArr = bArrG;
                                        inputStream2 = inputStream4;
                                        if (inputStream2 != null) {
                                            try {
                                                inputStream2.close();
                                            } catch (IOException unused3) {
                                            }
                                        }
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                        }
                                        return bArr;
                                    }
                                }
                                String headerField = httpURLConnection.getHeaderField("Location");
                                if (TextUtils.isEmpty(headerField)) {
                                    httpURLConnection2 = httpURLConnection;
                                } else {
                                    httpURLConnection2 = (HttpURLConnection) new URL(headerField).openConnection();
                                    try {
                                        httpURLConnection2.getResponseCode();
                                    } catch (Exception unused4) {
                                        httpURLConnection = httpURLConnection2;
                                        InputStream inputStream5 = inputStream;
                                        bArr = bArrG;
                                        inputStream2 = inputStream5;
                                        if (inputStream2 != null) {
                                            inputStream2.close();
                                        }
                                        if (httpURLConnection != null) {
                                            httpURLConnection.disconnect();
                                        }
                                        return bArr;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        httpURLConnection = httpURLConnection2;
                                        if (inputStream != null) {
                                            try {
                                                inputStream.close();
                                            } catch (IOException unused5) {
                                            }
                                        }
                                        if (httpURLConnection != null) {
                                            throw th;
                                        }
                                        httpURLConnection.disconnect();
                                        throw th;
                                    }
                                }
                                bArr2 = bArrG;
                                inputStream3 = inputStream;
                            } catch (Throwable th3) {
                                th = th3;
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (httpURLConnection != null) {
                                    throw th;
                                }
                                httpURLConnection.disconnect();
                                throw th;
                            }
                        } catch (Exception unused6) {
                            inputStream = null;
                        }
                    } else {
                        httpURLConnection2 = httpURLConnection;
                        bArr2 = null;
                    }
                    if (inputStream3 != null) {
                        try {
                            inputStream3.close();
                        } catch (IOException unused7) {
                        }
                    }
                    httpURLConnection2.disconnect();
                    return bArr2;
                } catch (Exception unused8) {
                    bArr = null;
                }
            } catch (Throwable th4) {
                inputStream = null;
                th = th4;
            }
        } catch (Exception unused9) {
            httpURLConnection = null;
            bArr = null;
        } catch (Throwable th5) {
            inputStream = null;
            th = th5;
            httpURLConnection = null;
        }
    }

    public byte[] d(String str) throws Throwable {
        InputStream inputStream;
        Throwable th;
        HttpsURLConnection httpsURLConnection;
        byte[] bArr;
        InputStream inputStream2 = null;
        byte[] bArrG = null;
        InputStream inputStream3 = null;
        inputStream2 = null;
        inputStream2 = null;
        try {
            httpsURLConnection = (HttpsURLConnection) new URL(Uri.encode(str, "@#&=*+-_.,:!?()/~'%")).openConnection();
            try {
                try {
                    httpsURLConnection.setConnectTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                    httpsURLConnection.setReadTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                    httpsURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                    httpsURLConnection.setRequestProperty("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED);
                    int responseCode = httpsURLConnection.getResponseCode();
                    if (responseCode == 200 || responseCode == 301 || responseCode == 302) {
                        try {
                            inputStream = httpsURLConnection.getInputStream();
                            try {
                                try {
                                    bArrG = g(inputStream);
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException unused) {
                                        }
                                    }
                                    if (httpsURLConnection == null) {
                                        throw th;
                                    }
                                    httpsURLConnection.disconnect();
                                    throw th;
                                }
                            } catch (Exception unused2) {
                                try {
                                    bArrG = new byte[0];
                                } catch (Exception e) {
                                    e = e;
                                    InputStream inputStream4 = inputStream;
                                    bArr = bArrG;
                                    inputStream2 = inputStream4;
                                    rq5.c("upload error: " + e.toString());
                                    if (inputStream2 != null) {
                                        try {
                                            inputStream2.close();
                                        } catch (IOException unused3) {
                                        }
                                    }
                                    if (httpsURLConnection != null) {
                                    }
                                    return bArr;
                                }
                            }
                        } catch (Exception unused4) {
                            inputStream = null;
                        }
                        String headerField = httpsURLConnection.getHeaderField("Location");
                        if (!TextUtils.isEmpty(headerField)) {
                            ((HttpsURLConnection) new URL(headerField).openConnection()).getResponseCode();
                        }
                        InputStream inputStream5 = inputStream;
                        bArr = bArrG;
                        inputStream3 = inputStream5;
                    } else {
                        bArr = null;
                    }
                    if (inputStream3 != null) {
                        try {
                            inputStream3.close();
                        } catch (IOException unused5) {
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    bArr = null;
                }
            } catch (Throwable th3) {
                inputStream = inputStream2;
                th = th3;
            }
        } catch (Exception e3) {
            e = e3;
            httpsURLConnection = null;
            bArr = null;
        } catch (Throwable th4) {
            inputStream = null;
            th = th4;
            httpsURLConnection = null;
        }
        httpsURLConnection.disconnect();
        return bArr;
    }

    /* JADX WARN: Code duplicated, block: B:101:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:71:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x00b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x00cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x00c6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.io.BufferedOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r6v8 */
    public byte[] e(String str, String str2, boolean z) throws Throwable {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        InputStream inputStream2;
        Throwable th;
        InputStream inputStream3;
        ?? bufferedOutputStream;
        ?? outputStream;
        ?? r0;
        byte[] bArrG;
        ?? r3 = 0;
        InputStream inputStream4 = null;
        r3 = 0;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setConnectTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                httpURLConnection.setReadTimeout(ComConstants.AD_TIMEOUT_MILLIS);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("Content-Type", AssetHelper.DEFAULT_MIME_TYPE);
                if (z) {
                    httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
                }
                outputStream = httpURLConnection.getOutputStream();
                try {
                    if (z) {
                        outputStream.write(a(str2.getBytes("UTF-8")));
                        outputStream.flush();
                        bufferedOutputStream = 0;
                    } else {
                        bufferedOutputStream = new BufferedOutputStream(outputStream);
                        try {
                            bufferedOutputStream.write(str2.getBytes("UTF-8"));
                            bufferedOutputStream.flush();
                            bufferedOutputStream = bufferedOutputStream;
                        } catch (Exception unused) {
                            inputStream2 = null;
                            if (bufferedOutputStream != 0) {
                                try {
                                    bufferedOutputStream.close();
                                } catch (IOException unused2) {
                                }
                            }
                            if (outputStream != 0) {
                                try {
                                    outputStream.close();
                                } catch (IOException unused3) {
                                }
                            }
                            if (inputStream2 != null) {
                                try {
                                    inputStream2.close();
                                } catch (IOException unused4) {
                                }
                            }
                            if (httpURLConnection == null) {
                                return null;
                            }
                            httpURLConnection.disconnect();
                            return null;
                        } catch (Throwable th2) {
                            inputStream3 = null;
                            r3 = bufferedOutputStream;
                            th = th2;
                            r0 = outputStream;
                            if (r3 != 0) {
                                try {
                                    r3.close();
                                } catch (IOException unused5) {
                                }
                            }
                            if (r0 != 0) {
                                try {
                                    r0.close();
                                } catch (IOException unused6) {
                                }
                            }
                            if (inputStream3 != null) {
                                try {
                                    inputStream3.close();
                                } catch (IOException unused7) {
                                }
                            }
                            if (httpURLConnection == null) {
                                throw th;
                            }
                            httpURLConnection.disconnect();
                            throw th;
                        }
                    }
                    if (httpURLConnection.getResponseCode() == 200) {
                        inputStream2 = httpURLConnection.getInputStream();
                        try {
                            bArrG = g(inputStream2);
                            inputStream4 = inputStream2;
                        } catch (Exception unused8) {
                            if (bufferedOutputStream != 0) {
                                bufferedOutputStream.close();
                            }
                            if (outputStream != 0) {
                                outputStream.close();
                            }
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                            if (httpURLConnection == null) {
                                return null;
                            }
                            httpURLConnection.disconnect();
                            return null;
                        } catch (Throwable th3) {
                            ?? r2 = bufferedOutputStream;
                            th = th3;
                            r3 = r2;
                            r0 = outputStream;
                            inputStream3 = inputStream2;
                            if (r3 != 0) {
                                r3.close();
                            }
                            if (r0 != 0) {
                                r0.close();
                            }
                            if (inputStream3 != null) {
                                inputStream3.close();
                            }
                            if (httpURLConnection == null) {
                                throw th;
                            }
                            httpURLConnection.disconnect();
                            throw th;
                        }
                    } else {
                        bArrG = null;
                    }
                    if (bufferedOutputStream != 0) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException unused9) {
                        }
                    }
                    if (outputStream != 0) {
                        try {
                            outputStream.close();
                        } catch (IOException unused10) {
                        }
                    }
                    if (inputStream4 != null) {
                        try {
                            inputStream4.close();
                        } catch (IOException unused11) {
                        }
                    }
                    httpURLConnection.disconnect();
                    return bArrG;
                } catch (Exception unused12) {
                    inputStream2 = null;
                    bufferedOutputStream = 0;
                } catch (Throwable th4) {
                    th = th4;
                    inputStream3 = null;
                    r0 = outputStream;
                }
            } catch (Exception unused13) {
                inputStream2 = null;
                bufferedOutputStream = inputStream2;
                outputStream = bufferedOutputStream;
                if (bufferedOutputStream != 0) {
                    bufferedOutputStream.close();
                }
                if (outputStream != 0) {
                    outputStream.close();
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                if (httpURLConnection == null) {
                    return null;
                }
                httpURLConnection.disconnect();
                return null;
            } catch (Throwable th5) {
                th = th5;
                inputStream = null;
                th = th;
                inputStream3 = inputStream;
                r0 = inputStream;
                if (r3 != 0) {
                    r3.close();
                }
                if (r0 != 0) {
                    r0.close();
                }
                if (inputStream3 != null) {
                    inputStream3.close();
                }
                if (httpURLConnection == null) {
                    throw th;
                }
                httpURLConnection.disconnect();
                throw th;
            }
        } catch (Exception unused14) {
            httpURLConnection = null;
            inputStream2 = null;
        } catch (Throwable th6) {
            th = th6;
            httpURLConnection = null;
            inputStream = null;
        }
    }

    public String f(Context context, String str, InterfaceC0019a interfaceC0019a) {
        String str2 = "";
        try {
            CookieHandler.setDefault(new CookieManager());
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(ComConstants.AD_TIMEOUT_MILLIS);
            httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
            httpURLConnection.getResponseCode();
            List<String> list = httpURLConnection.getHeaderFields().get(HttpHeaders.HEAD_KEY_SET_COOKIE);
            for (int i = 0; i < list.size(); i++) {
                String str3 = list.get(i);
                if (str3 != null && str3.contains("a=")) {
                    str2 = str3.split(ProcessInfo.SPLIT_NEW_VERSION)[0].split("=")[1];
                    interfaceC0019a.a(str2);
                }
            }
            httpURLConnection.disconnect();
        } catch (IOException unused) {
        }
        return str2;
    }
}
