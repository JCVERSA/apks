package com.mgtv.irouting.okhttp;

import androidx.browser.trusted.sharing.ShareTarget;
import com.mgtv.irouting.utils.e;
import com.mgtv.irouting.utils.f;
import java.io.IOException;
import java.io.InputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.net.ssl.SSLHandshakeException;
import okhttp3.Headers;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class c extends HttpURLConnection {
    public static long a;
    private static HashMap<String, ArrayList<com.mgtv.irouting.utils.c>> m = new HashMap<>();
    private static Lock n = new ReentrantLock();
    public a b;
    private OkHttpClient.Builder c;
    private Request.Builder d;
    private com.mgtv.irouting.okhttp.a e;
    private Response f;
    private int g;
    private int h;
    private int i;
    private URL j;
    private boolean k;
    private int l;

    public class a {
        public long a = 0;
        public long b = 0;
        public long c = 0;
        public long d = 0;
        public String e = "-1";
        public int f = 0;

        public a() {
        }

        public long a() {
            long j = this.b - this.a;
            if (j <= 0) {
                return 0L;
            }
            return j;
        }

        public long b() {
            long j = this.d - this.c;
            if (j <= 0) {
                return 0L;
            }
            return j;
        }
    }

    public c(URL url) throws HttpDnsException {
        super(url);
        this.c = new OkHttpClient().newBuilder();
        this.d = new Request.Builder();
        this.e = null;
        this.f = null;
        this.g = 5000;
        this.h = 5000;
        this.i = 1;
        this.k = false;
        this.l = 2;
        this.b = new a();
        if (com.mgtv.irouting.a.a) {
            this.l = 1;
        }
        if (this.l != 1) {
            this.e = new com.mgtv.irouting.okhttp.a(this.b);
        } else {
            this.e = new b(this.b);
        }
        this.c.interceptors().add(this.e);
        this.c.hostnameVerifier(d.a());
        if (url != null) {
            a(url);
        }
    }

    public void a(URL url) {
        this.j = url;
        this.d.url(url);
    }

    public void b() {
        com.mgtv.irouting.utils.c cVar = new com.mgtv.irouting.utils.c(this.l != 2 ? "httpdns" : "local");
        cVar.a = this.j.getHost();
        cVar.c = com.mgtv.irouting.net.b.a().d;
        cVar.d = com.mgtv.irouting.net.b.a().b;
        cVar.n = this.b.a();
        cVar.e = String.valueOf(this.b.b());
        a aVar = this.b;
        cVar.b = aVar.e;
        int i = aVar.f;
        cVar.r = i;
        if (i != 0) {
            cVar.m++;
        }
        e.a("[httpdns.speed-v1.0.7]", "toJson : " + cVar.a());
        a(this.j.getHost(), cVar);
    }

    public String c() {
        JSONArray jSONArray = new JSONArray();
        for (String str : m.keySet()) {
            for (int i = 0; i < m.get(str).size(); i++) {
                jSONArray.put(m.get(str).get(i).b());
            }
        }
        if (jSONArray.length() <= 0) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("list", jSONArray);
            jSONObject.put("act", f.b);
            jSONObject.put("bid", f.c);
        } catch (JSONException e) {
            e.printStackTrace();
            e.b("[httpdns-v1.0.7]", "rkey:list,jsonArray:" + jSONArray + ",err:" + e.getMessage());
        }
        return jSONObject.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v26 */
    @Override
    public synchronized void connect() throws IOException {
        String str;
        int i;
        String string;
        if (!this.k) {
            boolean z = 1;
            z = 1;
            z = 1;
            z = 1;
            z = 1;
            ?? r2 = 0;
            r2 = 0;
            r2 = 0;
            r2 = 0;
            r2 = 0;
            r2 = 0;
            r2 = 0;
            r2 = 0;
            r2 = 0;
            try {
                try {
                    try {
                        try {
                            try {
                                try {
                                    try {
                                        try {
                                            this.b.c = System.currentTimeMillis();
                                            this.f = this.c.build().newCall(this.d.build()).execute();
                                            this.b.d = System.currentTimeMillis();
                                            this.k = true;
                                            if (getHeaderField(0) == null) {
                                                this.k = false;
                                                str = "[httpdns-v1.0.7]";
                                                StringBuilder sb = new StringBuilder();
                                                sb.append("connect Exception : ");
                                                int i2 = this.b.f;
                                                sb.append(i2);
                                                string = sb.toString();
                                                i = i2;
                                                e.b(str, string);
                                                z = string;
                                                r2 = i;
                                            }
                                        } catch (ConnectException e) {
                                            e.printStackTrace();
                                            this.b.f = -5;
                                            b();
                                            e.b("[httpdns-v1.0.7]", "[ConnectException]okhttpclient request error : " + e.toString());
                                            this.k = true;
                                            String headerField = getHeaderField(0);
                                            if (headerField == null) {
                                                this.k = false;
                                                throw e;
                                            }
                                            z = headerField;
                                        }
                                    } catch (Exception e2) {
                                        e2.printStackTrace();
                                        this.b.f = -1;
                                        b();
                                        e.b("[httpdns-v1.0.7]", "[Exception]okhttpclient request error : " + e2.toString());
                                        this.k = true;
                                        if (getHeaderField(0) == null) {
                                            this.k = false;
                                            if (!(e2 instanceof RuntimeException)) {
                                                throw ((IOException) e2);
                                            }
                                            throw ((RuntimeException) e2);
                                        }
                                    }
                                } catch (SocketTimeoutException e3) {
                                    e3.printStackTrace();
                                    this.b.f = -2;
                                    b();
                                    e.b("[httpdns-v1.0.7]", "[SocketTimeoutException]okhttpclient request error : " + e3.toString());
                                    this.k = true;
                                    String headerField2 = getHeaderField(0);
                                    if (headerField2 == null) {
                                        this.k = false;
                                        throw e3;
                                    }
                                    z = headerField2;
                                }
                            } catch (UnknownHostException e4) {
                                e4.printStackTrace();
                                this.b.f = -3;
                                b();
                                e.b("[httpdns-v1.0.7]", "[UnknownHostException]okhttpclient request error : " + e4.toString());
                                this.k = true;
                                String headerField3 = getHeaderField(0);
                                if (headerField3 == null) {
                                    this.k = false;
                                    throw e4;
                                }
                                z = headerField3;
                            }
                        } catch (SSLHandshakeException e5) {
                            e5.printStackTrace();
                            this.b.f = -6;
                            b();
                            e.b("[httpdns-v1.0.7]", "[SSLHandshakeException]okhttpclient request error : " + e5.toString());
                            this.k = true;
                            String headerField4 = getHeaderField(0);
                            if (headerField4 == null) {
                                this.k = false;
                                throw e5;
                            }
                            z = headerField4;
                        }
                    } catch (NoRouteToHostException e6) {
                        e6.printStackTrace();
                        this.b.f = -4;
                        b();
                        e.b("[httpdns-v1.0.7]", "[NoRouteToHostException]okhttpclient request error : " + e6.toString());
                        this.k = true;
                        if (getHeaderField(0) == null) {
                            this.k = false;
                            str = "[httpdns-v1.0.7]";
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("connect Exception : ");
                            int i3 = this.b.f;
                            sb2.append(i3);
                            string = sb2.toString();
                            i = i3;
                        }
                    }
                } catch (IOException e7) {
                    e7.printStackTrace();
                    this.b.f = -1;
                    b();
                    e.b("[httpdns-v1.0.7]", "[IOException]okhttpclient request error : " + e7.toString());
                    this.k = true;
                    if (getHeaderField(0) == null) {
                        this.k = false;
                        str = "[httpdns-v1.0.7]";
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("connect Exception : ");
                        int i4 = this.b.f;
                        sb3.append(i4);
                        string = sb3.toString();
                        i = i4;
                    }
                }
            } catch (Throwable th) {
                this.k = z;
                if (getHeaderField((int) r2) == null) {
                    this.k = r2;
                    e.b("[httpdns-v1.0.7]", "connect Exception : " + this.b.f);
                }
                throw th;
            }
        }
    }

    @Override
    public void disconnect() {
    }

    @Override
    public int getContentLength() {
        Response response = this.f;
        if (response == null) {
            e.a("[httpdns-v1.0.7]", "Response is null");
            return -1;
        }
        String str = response.headers().get("content-length");
        e.a("[httpdns-v1.0.7]", "Content-Length : " + str);
        try {
            int i = Integer.parseInt(str);
            if (i >= Integer.MAX_VALUE) {
                return -1;
            }
            return i;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override
    public long getContentLengthLong() {
        Response response = this.f;
        if (response == null) {
            e.a("[httpdns-v1.0.7]", "Response is null");
            return -1L;
        }
        String str = response.headers().get("content-length");
        e.a("[httpdns-v1.0.7]", "Content-Length : " + str);
        try {
            long j = Long.parseLong(str);
            if (j >= 2147483647L) {
                return -1L;
            }
            return j;
        } catch (Exception e) {
            e.printStackTrace();
            return -1L;
        }
    }

    @Override
    public String getHeaderField(String str) {
        Response response = this.f;
        if (response == null) {
            e.a("[httpdns-v1.0.7]", "Response is null");
            return null;
        }
        try {
            Headers headers = response.headers();
            if (headers == null) {
                return null;
            }
            return headers.get(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public String getHeaderFieldKey(int i) {
        Response response = this.f;
        if (response == null) {
            e.a("[httpdns-v1.0.7]", "Response is null");
            return null;
        }
        try {
            Headers headers = response.headers();
            if (headers == null) {
                return null;
            }
            return headers.name(i);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public InputStream getInputStream() {
        Response response = this.f;
        try {
            if (response == null) {
                e.a("[httpdns-v1.0.7]", "Response is null");
                return null;
            }
            try {
                return response.body().byteStream();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public synchronized int getResponseCode() throws IOException {
        if (!this.k) {
            boolean z = 1;
            try {
                try {
                    try {
                        try {
                            try {
                                this.b.c = System.currentTimeMillis();
                                this.f = this.c.build().newCall(this.d.build()).execute();
                                this.b.d = System.currentTimeMillis();
                                this.k = true;
                                String headerField = getHeaderField(0);
                                z = headerField;
                                if (headerField == null) {
                                    this.k = false;
                                    e.b("[httpdns-v1.0.7]", "getResponseCode Exception : " + this.b.f);
                                    int i = this.b.f;
                                    if (i != 0) {
                                        return i;
                                    }
                                    return -1;
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                                this.b.f = -1;
                                b();
                                e.b("[httpdns-v1.0.7]", "[Exception]okhttpclient request error : " + e.toString());
                                this.k = true;
                                String headerField2 = getHeaderField(0);
                                z = headerField2;
                                if (headerField2 == null) {
                                    this.k = false;
                                    if (e instanceof RuntimeException) {
                                        throw ((RuntimeException) e);
                                    }
                                    throw ((IOException) e);
                                }
                            }
                        } catch (SocketTimeoutException e2) {
                            e2.printStackTrace();
                            this.b.f = -2;
                            b();
                            e.b("[httpdns-v1.0.7]", "[SocketTimeoutException]okhttpclient request error : " + e2.toString());
                            this.k = true;
                            String headerField3 = getHeaderField(0);
                            if (headerField3 == null) {
                                this.k = false;
                                throw e2;
                            }
                            z = headerField3;
                        } catch (UnknownHostException e3) {
                            e3.printStackTrace();
                            this.b.f = -3;
                            b();
                            e.b("[httpdns-v1.0.7]", "[UnknownHostException]okhttpclient request error : " + e3.toString());
                            this.k = true;
                            String headerField4 = getHeaderField(0);
                            if (headerField4 == null) {
                                this.k = false;
                                throw e3;
                            }
                            z = headerField4;
                        }
                    } catch (NoRouteToHostException e4) {
                        e4.printStackTrace();
                        this.b.f = -4;
                        b();
                        e.b("[httpdns-v1.0.7]", "[NoRouteToHostException]okhttpclient request error : " + e4.toString());
                        this.k = true;
                        String headerField5 = getHeaderField(0);
                        z = headerField5;
                        if (headerField5 == null) {
                            this.k = false;
                            e.b("[httpdns-v1.0.7]", "getResponseCode Exception : " + this.b.f);
                            int i2 = this.b.f;
                            if (i2 != 0) {
                                return i2;
                            }
                            return -1;
                        }
                    } catch (SSLHandshakeException e5) {
                        e5.printStackTrace();
                        this.b.f = -6;
                        b();
                        e.b("[httpdns-v1.0.7]", "[SSLHandshakeException]okhttpclient request error : " + e5.toString());
                        this.k = true;
                        String headerField6 = getHeaderField(0);
                        if (headerField6 == null) {
                            this.k = false;
                            throw e5;
                        }
                        z = headerField6;
                    }
                } catch (ConnectException e6) {
                    e6.printStackTrace();
                    this.b.f = -5;
                    b();
                    e.b("[httpdns-v1.0.7]", "[ConnectException]okhttpclient request error : " + e6.toString());
                    this.k = true;
                    String headerField7 = getHeaderField(0);
                    if (headerField7 == null) {
                        this.k = false;
                        throw e6;
                    }
                    z = headerField7;
                } catch (IOException e7) {
                    e7.printStackTrace();
                    this.b.f = -1;
                    b();
                    e.b("[httpdns-v1.0.7]", "[IOException]okhttpclient request error : " + e7.toString());
                    this.k = true;
                    String headerField8 = getHeaderField(0);
                    if (headerField8 == null) {
                        this.k = false;
                        throw e7;
                    }
                    z = headerField8;
                }
            } catch (Throwable th) {
                this.k = z;
                if (getHeaderField(0) != null) {
                    throw th;
                }
                this.k = false;
                e.b("[httpdns-v1.0.7]", "getResponseCode Exception : " + this.b.f);
                int i3 = this.b.f;
                if (i3 != 0) {
                    return i3;
                }
                return -1;
            }
        }
        Response response = this.f;
        if (response == null) {
            return -1;
        }
        return response.code();
    }

    @Override
    public void setConnectTimeout(int i) {
        this.g = i;
        this.c.connectTimeout(i, TimeUnit.MILLISECONDS);
    }

    @Override
    public void setReadTimeout(int i) {
        this.h = i;
        this.c.readTimeout(i, TimeUnit.MILLISECONDS);
    }

    @Override
    public void setRequestMethod(String str) {
        if (str == ShareTarget.METHOD_GET) {
            this.i = 1;
        } else if (str == "POST") {
            this.i = 2;
        }
    }

    @Override
    public void setRequestProperty(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.d.addHeader(str, str2);
    }

    @Override
    public boolean usingProxy() {
        return false;
    }

    public a a() {
        return this.b;
    }

    public synchronized void a(String str, com.mgtv.irouting.utils.c cVar) {
        try {
            n.lock();
            if (m.containsKey(str)) {
                m.get(str).add(cVar);
            } else {
                ArrayList<com.mgtv.irouting.utils.c> arrayList = new ArrayList<>();
                arrayList.add(cVar);
                m.put(str, arrayList);
            }
            if (m.get(str) != null) {
                e.a("[httpdns-v1.0.7]", "domain : " + str + ", sIpLoglist : " + m.get(str).toString());
            }
            long j = a + 1;
            a = j;
            if (j > 5) {
                String strC = c();
                if (strC != null) {
                    e.a("[httpdns-v1.0.7]", "put_string : " + strC);
                    f.a("speed", strC);
                }
                m.clear();
                a = 0L;
            }
            n.unlock();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public String getHeaderField(int i) {
        return getHeaderFieldKey(i);
    }
}
