package com.pgl.ssdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.integration.net.UrlKt;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.Locale;
import org.json.JSONObject;

public abstract class j0 {

    public static String f39324a;

    private Context f39326c;

    private int f39327d;

    private int f39328e;

    private byte[] f39329f;

    private HttpURLConnection f39325b = null;

    private int f39330g = -1;

    private byte[] f39331h = null;

    private int f39332i = 10000;

    private int f39333j = 0;

    private int f39334k = 2;

    private boolean f39335l = true;

    private Runnable f39336m = new a();

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            if (j0.this.c() || j0.this.f39333j >= j0.this.f39334k) {
                return;
            }
            j0.c(j0.this);
            o0.a(this);
        }
    }

    public j0(Context context) {
        this.f39326c = context;
    }

    static int c(j0 j0Var) {
        int i10 = j0Var.f39333j;
        j0Var.f39333j = i10 + 1;
        return i10;
    }

    abstract String a();

    abstract void a(int i10, byte[] bArr);

    public static synchronized void a(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(f39324a)) {
            f39324a = str;
        }
    }

    private void b() {
        Object obj;
        if (this.f39325b == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(f39324a)) {
                jSONObject.put("ipv6", f39324a);
            }
            if (!TextUtils.isEmpty(com.pgl.ssdk.ces.b.f())) {
                jSONObject.put(UrlKt.KEY_MINI_GAID, com.pgl.ssdk.ces.b.f());
            }
            jSONObject.put(TtmlNode.TAG_REGION, k0.a());
            Pair<Integer, String> pairA = n0.a(jSONObject.toString());
            if (pairA == null || (obj = pairA.first) == null || pairA.second == null) {
                return;
            }
            this.f39325b.addRequestProperty("cypher", String.valueOf(obj));
            this.f39325b.addRequestProperty("transfer-param", (String) pairA.second);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00c2 A[Catch: all -> 0x00d6, PHI: r0
      0x00c2: PHI (r0v16 java.io.InputStream) = (r0v15 java.io.InputStream), (r0v22 java.io.InputStream) binds: [B:30:0x00bf, B:27:0x00bb] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {all -> 0x00d6, blocks: (B:3:0x0004, B:5:0x0010, B:10:0x001f, B:12:0x0038, B:14:0x0040, B:15:0x0044, B:17:0x004d, B:19:0x006c, B:21:0x0089, B:23:0x008c, B:24:0x00a2, B:33:0x00c5, B:32:0x00c2, B:18:0x005e), top: B:44:0x0004 }] */
    public boolean c() {
        InputStream inputStream;
        try {
            String strA = k0.a(this.f39326c);
            if (TextUtils.isEmpty(strA)) {
                k0.b(this.f39326c);
                HttpURLConnection httpURLConnection = this.f39325b;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                    this.f39325b = null;
                }
                return false;
            }
            String strConcat = strA + a();
            if (!strConcat.startsWith("https://") && !strConcat.startsWith("http://")) {
                strConcat = "https://".concat(strConcat);
            }
            URL url = new URL(strConcat);
            if (this.f39335l) {
                this.f39325b = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection(Proxy.NO_PROXY)));
            } else {
                this.f39325b = (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
            }
            this.f39325b.setConnectTimeout(this.f39332i);
            this.f39325b.setReadTimeout(this.f39332i);
            a(this.f39327d);
            b(this.f39328e);
            byte[] bArr = this.f39329f;
            if (bArr != null && bArr.length > 0) {
                this.f39325b.setDoOutput(true);
                OutputStream outputStream = this.f39325b.getOutputStream();
                outputStream.write(this.f39329f);
                outputStream.flush();
                outputStream.close();
            }
            this.f39325b.connect();
            try {
                this.f39330g = this.f39325b.getResponseCode();
                inputStream = this.f39325b.getInputStream();
                try {
                    this.f39331h = a(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (Throwable unused) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                }
            } catch (Throwable unused2) {
                inputStream = null;
            }
            a(this.f39330g, this.f39331h);
            HttpURLConnection httpURLConnection2 = this.f39325b;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
                this.f39325b = null;
            }
            return true;
        } catch (Throwable unused3) {
            HttpURLConnection httpURLConnection3 = this.f39325b;
            if (httpURLConnection3 != null) {
                httpURLConnection3.disconnect();
                this.f39325b = null;
            }
            k0.b(this.f39326c);
            return false;
        }
    }

    private void a(int i10) throws ProtocolException {
        String str;
        if (i10 == 1) {
            str = "POST";
        } else if (i10 == 3) {
            str = "PUT";
        } else if (i10 == 4) {
            str = "DELETE";
        } else if (i10 != 5) {
            str = i10 != 6 ? "GET" : "TRACE";
        } else {
            str = "HEAD";
        }
        this.f39325b.setRequestMethod(str);
    }

    private byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = inputStream.read(bArr, 0, 1024);
            if (i10 > 0) {
                byteArrayOutputStream.write(bArr, 0, i10);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public void a(int i10, int i11, byte[] bArr) {
        b(i10, i11, bArr);
        o0.a(this.f39336m);
    }

    private void b(int i10) {
        String str;
        if (i10 != 1) {
            str = i10 != 2 ? "" : OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE;
        } else {
            str = "application/json; charset=utf-8";
        }
        if (!str.isEmpty()) {
            this.f39325b.addRequestProperty(HttpHeaders.CONTENT_TYPE, str);
        }
        String strB = k0.b();
        if (strB != null) {
            this.f39325b.addRequestProperty("x-pangle-target-idc", strB);
        }
        b();
        try {
            String language = Locale.getDefault().getLanguage();
            if (language.equalsIgnoreCase("zh")) {
                this.f39325b.addRequestProperty("Accept-Language", Locale.getDefault().toString() + "," + language + ";q=0.9");
                return;
            }
            this.f39325b.addRequestProperty("Accept-Language", Locale.getDefault().toString() + "," + language + ";q=0.9,en-US;q=0.6,en;q=0.4");
        } catch (Throwable unused) {
        }
    }

    private void b(int i10, int i11, byte[] bArr) {
        this.f39327d = i10;
        this.f39328e = i11;
        this.f39329f = bArr;
    }
}
