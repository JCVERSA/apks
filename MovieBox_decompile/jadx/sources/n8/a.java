package n8;

import android.util.Log;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.facebook.biddingkit.http.client.HttpMethod;
import com.facebook.biddingkit.http.client.HttpRequestException;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import javax.net.ssl.HttpsURLConnection;

public class a {

    private Set f66944d;

    private Set f66945e;

    protected int f66941a = 2000;

    protected int f66942b = 8000;

    protected String f66943c = "UTF-8";

    private int f66946f = 3;

    private boolean f66947g = false;

    private Map f66948h = new TreeMap();

    private void a(HttpURLConnection httpURLConnection) {
        for (String str : this.f66948h.keySet()) {
            httpURLConnection.setRequestProperty(str, (String) this.f66948h.get(str));
        }
        httpURLConnection.setRequestProperty("Accept-Charset", this.f66943c);
    }

    private int d(int i10) {
        return (i10 <= 1 || i10 > 20) ? i10 : d(i10 - 1) + d(i10 - 2);
    }

    private byte[] n(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[16384];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:56:0x009b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r4v0, types: [n8.a] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r5v5 */
    protected e b(String str, HttpMethod httpMethod, String str2, byte[] bArr) throws Throwable {
        boolean z10 = false;
        ?? r10 = 0;
        try {
            try {
                this.f66947g = false;
                HttpURLConnection httpURLConnectionI = i(str);
                try {
                    k(httpURLConnectionI, httpMethod, str2);
                    a(httpURLConnectionI);
                    httpURLConnectionI.connect();
                    this.f66947g = true;
                    Set set = this.f66945e;
                    boolean z11 = (set == null || set.isEmpty()) ? false : true;
                    Set set2 = this.f66944d;
                    if (set2 != null && !set2.isEmpty()) {
                        z10 = true;
                    }
                    if ((httpURLConnectionI instanceof HttpsURLConnection) && (z11 || z10)) {
                        try {
                            f.b((HttpsURLConnection) httpURLConnectionI, this.f66945e, this.f66944d);
                        } catch (Exception e10) {
                            Log.e("AndroidHttpClient", "Unable to validate SSL certificates: ", e10);
                        }
                    }
                    if (httpURLConnectionI.getDoOutput() && bArr != null) {
                        t(httpURLConnectionI, bArr);
                    }
                    e eVarM = httpURLConnectionI.getDoInput() ? m(httpURLConnectionI) : new e(httpURLConnectionI, null);
                    httpURLConnectionI.disconnect();
                    return eVarM;
                } catch (Exception e11) {
                    e = e11;
                    str = httpURLConnectionI;
                    try {
                        try {
                            e eVarL = l(str);
                            if (eVarL == null || eVarL.a() <= 0) {
                                throw new HttpRequestException(e, eVarL);
                            }
                            if (str != 0) {
                                str.disconnect();
                            }
                            return eVarL;
                        } catch (Throwable unused) {
                            throw new HttpRequestException(e, null);
                        }
                    } catch (Exception unused2) {
                        Log.e("AndroidHttpClient", "Failed http method: ", e);
                        throw new HttpRequestException(e, null);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                r10 = str;
                if (r10 != 0) {
                    r10.disconnect();
                }
                throw th;
            }
        } catch (Exception e12) {
            e = e12;
            str = 0;
        } catch (Throwable th3) {
            th = th3;
            if (r10 != 0) {
                r10.disconnect();
            }
            throw th;
        }
    }

    public e c(d dVar) {
        try {
            return s(dVar);
        } catch (HttpRequestException e10) {
            Log.e("AndroidHttpClient", "Unable to send request and got a HttpRequestException: ", e10);
            return null;
        } catch (Exception e11) {
            Log.e("AndroidHttpClient", "Unable to send request and got a RuntimeException: ", new HttpRequestException(e11, null));
            return null;
        }
    }

    public e e(String str, Map map) {
        return c(new b(str, map));
    }

    protected int f(int i10) {
        return d(i10 + 2) * 1000;
    }

    public boolean g(HttpRequestException httpRequestException) {
        e httpResponse = httpRequestException.getHttpResponse();
        return httpResponse != null && httpResponse.a() > 0;
    }

    protected boolean h(Throwable th2, long j10) {
        long jCurrentTimeMillis = (System.currentTimeMillis() - j10) + 10;
        if (this.f66947g) {
            return jCurrentTimeMillis >= ((long) this.f66942b);
        }
        return jCurrentTimeMillis >= ((long) this.f66941a);
    }

    protected HttpURLConnection i(String str) {
        try {
            return (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection()));
        } catch (MalformedURLException e10) {
            throw new IllegalArgumentException(str + " is not a valid URL", e10);
        }
    }

    public e j(String str, String str2, byte[] bArr) {
        return c(new c(str, null, str2, bArr));
    }

    protected void k(HttpURLConnection httpURLConnection, HttpMethod httpMethod, String str) throws ProtocolException {
        httpURLConnection.setConnectTimeout(this.f66941a);
        httpURLConnection.setReadTimeout(this.f66942b);
        httpURLConnection.setRequestMethod(httpMethod.getMethodName());
        httpURLConnection.setDoOutput(httpMethod.getDoOutput());
        httpURLConnection.setDoInput(httpMethod.getDoInput());
        if (str != null) {
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, str);
        }
    }

    protected e l(HttpURLConnection httpURLConnection) throws Throwable {
        InputStream inputStream = null;
        byte[] bArrN = null;
        try {
            InputStream errorStream = httpURLConnection.getErrorStream();
            if (errorStream != null) {
                try {
                    bArrN = n(errorStream);
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = errorStream;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception unused) {
                        }
                    }
                    throw th;
                }
            }
            e eVar = new e(httpURLConnection, bArrN);
            if (errorStream != null) {
                try {
                    errorStream.close();
                } catch (Exception unused2) {
                }
            }
            return eVar;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    protected e m(HttpURLConnection httpURLConnection) throws Throwable {
        InputStream inputStream = null;
        byte[] bArrN = null;
        try {
            InputStream inputStream2 = httpURLConnection.getInputStream();
            if (inputStream2 != null) {
                try {
                    bArrN = n(inputStream2);
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = inputStream2;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception unused) {
                        }
                    }
                    throw th;
                }
            }
            e eVar = new e(httpURLConnection, bArrN);
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (Exception unused2) {
                }
            }
            return eVar;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public void o(int i10) {
        this.f66941a = i10;
    }

    public void p(Set set) {
        this.f66945e = set;
    }

    public void q(Set set) {
        this.f66944d = set;
    }

    public void r(int i10) {
        this.f66942b = i10;
    }

    public e s(d dVar) throws Throwable {
        long jCurrentTimeMillis = System.currentTimeMillis();
        e eVarB = null;
        for (int i10 = 0; i10 < this.f66946f; i10++) {
            try {
                o(f(i10));
                jCurrentTimeMillis = System.currentTimeMillis();
                eVarB = b(dVar.d(), dVar.c(), dVar.b(), dVar.a());
                if (eVarB != null) {
                    return eVarB;
                }
            } catch (HttpRequestException e10) {
                if (h(e10, jCurrentTimeMillis) && i10 < this.f66946f - 1) {
                    continue;
                } else {
                    if (!g(e10) || i10 >= this.f66946f - 1) {
                        Log.e("AndroidHttpClient", "Unable to send request: ", e10);
                        return eVarB;
                    }
                    try {
                        Thread.sleep(this.f66941a);
                    } catch (InterruptedException e11) {
                        Log.e("AndroidHttpClient", "App is stopping: ", e11);
                    }
                }
            }
        }
        return eVarB;
    }

    protected int t(HttpURLConnection httpURLConnection, byte[] bArr) throws Throwable {
        OutputStream outputStream;
        try {
            outputStream = httpURLConnection.getOutputStream();
            if (outputStream != null) {
                try {
                    outputStream.write(bArr);
                } catch (Throwable th2) {
                    th = th2;
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Exception unused) {
                        }
                    }
                    throw th;
                }
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Exception unused2) {
                }
            }
            return responseCode;
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
        }
    }
}
