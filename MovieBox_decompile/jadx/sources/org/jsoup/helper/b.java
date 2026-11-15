package org.jsoup.helper;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.nio.ByteBuffer;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.jsoup.Connection;
import org.jsoup.HttpStatusException;
import org.jsoup.UnsupportedMimeTypeException;
import org.jsoup.nodes.Document;
import org.jsoup.parser.e;
import org.jsoup.parser.g;

public class b implements Connection {

    private Connection.b f68530a = new c();

    private Connection.c f68531b = new d();

    private static abstract class AbstractC0838b implements Connection.a {

        URL f68532a;

        Connection.Method f68533b;

        Map f68534c;

        Map f68535d;

        private List A(String str) {
            org.jsoup.helper.d.j(str);
            for (Map.Entry entry : this.f68534c.entrySet()) {
                if (str.equalsIgnoreCase((String) entry.getKey())) {
                    return (List) entry.getValue();
                }
            }
            return Collections.emptyList();
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0029  */
        private static boolean F(byte[] bArr) {
            int i10;
            int i11;
            if (bArr.length >= 3 && (bArr[0] & 255) == 239) {
                i10 = (((bArr[1] & 255) == 187) && ((bArr[2] & 255) == 191)) ? 3 : 0;
            }
            int length = bArr.length;
            while (i10 < length) {
                byte b10 = bArr[i10];
                if ((b10 & 128) != 0) {
                    if ((b10 & 224) == 192) {
                        i11 = i10 + 1;
                    } else if ((b10 & 240) == 224) {
                        i11 = i10 + 2;
                    } else {
                        if ((b10 & 248) != 240) {
                            return false;
                        }
                        i11 = i10 + 3;
                    }
                    while (i10 < i11) {
                        i10++;
                        if ((bArr[i10] & 192) != 128) {
                            return false;
                        }
                    }
                }
                i10++;
            }
            return true;
        }

        private Map.Entry G(String str) {
            String strA = sz.b.a(str);
            for (Map.Entry entry : this.f68534c.entrySet()) {
                if (sz.b.a((String) entry.getKey()).equals(strA)) {
                    return entry;
                }
            }
            return null;
        }

        private static String z(String str) {
            try {
                byte[] bytes = str.getBytes("ISO-8859-1");
                return !F(bytes) ? str : new String(bytes, "UTF-8");
            } catch (UnsupportedEncodingException unused) {
                return str;
            }
        }

        public boolean B(String str) {
            org.jsoup.helper.d.i(str, "Cookie name must not be empty");
            return this.f68535d.containsKey(str);
        }

        public boolean C(String str, String str2) {
            org.jsoup.helper.d.h(str);
            org.jsoup.helper.d.h(str2);
            Iterator it = E(str).iterator();
            while (it.hasNext()) {
                if (str2.equalsIgnoreCase((String) it.next())) {
                    return true;
                }
            }
            return false;
        }

        public String D(String str) {
            org.jsoup.helper.d.k(str, "Header name must not be null");
            List listA = A(str);
            if (listA.size() > 0) {
                return org.jsoup.helper.c.i(listA, ", ");
            }
            return null;
        }

        public List E(String str) {
            org.jsoup.helper.d.h(str);
            return A(str);
        }

        @Override
        public URL f() {
            return this.f68532a;
        }

        @Override
        public Connection.a h(String str, String str2) {
            org.jsoup.helper.d.i(str, "Cookie name must not be empty");
            org.jsoup.helper.d.k(str2, "Cookie value must not be null");
            this.f68535d.put(str, str2);
            return this;
        }

        @Override
        public Map k() {
            return this.f68535d;
        }

        @Override
        public Connection.Method method() {
            return this.f68533b;
        }

        @Override
        public Connection.a n(String str) {
            org.jsoup.helper.d.i(str, "Header name must not be empty");
            Map.Entry entryG = G(str);
            if (entryG != null) {
                this.f68534c.remove(entryG.getKey());
            }
            return this;
        }

        @Override
        public Connection.a p(URL url) {
            org.jsoup.helper.d.k(url, "URL must not be null");
            this.f68532a = url;
            return this;
        }

        @Override
        public Connection.a q(String str, String str2) {
            org.jsoup.helper.d.i(str, "Header name must not be empty");
            n(str);
            y(str, str2);
            return this;
        }

        @Override
        public Connection.a r(Connection.Method method) {
            org.jsoup.helper.d.k(method, "Method must not be null");
            this.f68533b = method;
            return this;
        }

        @Override
        public boolean s(String str) {
            org.jsoup.helper.d.i(str, "Header name must not be empty");
            return A(str).size() != 0;
        }

        @Override
        public Map u() {
            return this.f68534c;
        }

        public Connection.a y(String str, String str2) {
            org.jsoup.helper.d.h(str);
            if (str2 == null) {
                str2 = "";
            }
            List listE = E(str);
            if (listE.isEmpty()) {
                listE = new ArrayList();
                this.f68534c.put(str, listE);
            }
            listE.add(z(str2));
            return this;
        }

        private AbstractC0838b() {
            this.f68534c = new LinkedHashMap();
            this.f68535d = new LinkedHashMap();
        }
    }

    public static class c extends AbstractC0838b implements Connection.b {

        private Proxy f68536e;

        private int f68537f;

        private int f68538g;

        private boolean f68539h;

        private Collection f68540i;

        private String f68541j;

        private boolean f68542k;

        private boolean f68543l;

        private e f68544m;

        private boolean f68545n;

        private boolean f68546o;

        private String f68547p;

        private SSLSocketFactory f68548q;

        c() {
            super();
            this.f68541j = null;
            this.f68542k = false;
            this.f68543l = false;
            this.f68545n = false;
            this.f68546o = true;
            this.f68547p = "UTF-8";
            this.f68537f = 30000;
            this.f68538g = 1048576;
            this.f68539h = true;
            this.f68540i = new ArrayList();
            this.f68533b = Connection.Method.GET;
            y("Accept-Encoding", "gzip");
            y("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36");
            this.f68544m = e.a();
        }

        @Override
        public List E(String str) {
            return super.E(str);
        }

        @Override
        public c o(e eVar) {
            this.f68544m = eVar;
            this.f68545n = true;
            return this;
        }

        @Override
        public Connection.b a(boolean z10) {
            this.f68543l = z10;
            return this;
        }

        @Override
        public boolean b() {
            return this.f68542k;
        }

        @Override
        public String c() {
            return this.f68547p;
        }

        @Override
        public Connection.b d(String str) {
            this.f68541j = str;
            return this;
        }

        @Override
        public boolean e() {
            return this.f68546o;
        }

        @Override
        public URL f() {
            return super.f();
        }

        @Override
        public SSLSocketFactory g() {
            return this.f68548q;
        }

        @Override
        public Proxy i() {
            return this.f68536e;
        }

        @Override
        public Collection j() {
            return this.f68540i;
        }

        @Override
        public Map k() {
            return super.k();
        }

        @Override
        public boolean l() {
            return this.f68539h;
        }

        @Override
        public Connection.Method method() {
            return super.method();
        }

        @Override
        public boolean s(String str) {
            return super.s(str);
        }

        @Override
        public boolean t() {
            return this.f68543l;
        }

        @Override
        public int timeout() {
            return this.f68537f;
        }

        @Override
        public Map u() {
            return super.u();
        }

        @Override
        public String v() {
            return this.f68541j;
        }

        @Override
        public int w() {
            return this.f68538g;
        }

        @Override
        public e x() {
            return this.f68544m;
        }
    }

    private b() {
    }

    public static Connection d(String str) {
        b bVar = new b();
        bVar.b(str);
        return bVar;
    }

    private static String e(String str) {
        try {
            return f(new URL(str)).toExternalForm();
        } catch (Exception unused) {
            return str;
        }
    }

    static URL f(URL url) {
        try {
            return new URL(new URI(url.toExternalForm().replaceAll(" ", "%20")).toASCIIString());
        } catch (Exception unused) {
            return url;
        }
    }

    public static boolean h(Connection.b bVar) {
        Iterator it = bVar.j().iterator();
        if (!it.hasNext()) {
            return false;
        }
        android.support.v4.media.session.c.a(it.next());
        throw null;
    }

    @Override
    public Connection a(boolean z10) {
        this.f68530a.a(z10);
        return this;
    }

    @Override
    public Connection b(String str) {
        org.jsoup.helper.d.i(str, "Must supply a valid URL");
        try {
            this.f68530a.p(new URL(e(str)));
            return this;
        } catch (MalformedURLException e10) {
            throw new IllegalArgumentException("Malformed URL: " + str, e10);
        }
    }

    public Connection.c g() {
        d dVarK = d.K(this.f68530a);
        this.f68531b = dVarK;
        return dVarK;
    }

    @Override
    public Document get() {
        this.f68530a.r(Connection.Method.GET);
        g();
        return this.f68531b.m();
    }

    public static class d extends AbstractC0838b implements Connection.c {

        private static SSLSocketFactory f68549o;

        private static final Pattern f68550p = Pattern.compile("(application|text)/\\w*\\+?xml.*");

        private int f68551e;

        private String f68552f;

        private ByteBuffer f68553g;

        private InputStream f68554h;

        private String f68555i;

        private String f68556j;

        private boolean f68557k;

        private boolean f68558l;

        private int f68559m;

        private Connection.b f68560n;

        class a implements HostnameVerifier {
            a() {
            }

            @Override
            public boolean verify(String str, SSLSession sSLSession) {
                return true;
            }
        }

        class C0839b implements X509TrustManager {
            C0839b() {
            }

            @Override
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override
            public X509Certificate[] getAcceptedIssuers() {
                return null;
            }
        }

        d() {
            super();
            this.f68557k = false;
            this.f68558l = false;
            this.f68559m = 0;
        }

        private static HttpURLConnection I(Connection.b bVar) throws ProtocolException {
            HttpURLConnection httpURLConnection = (HttpURLConnection) (bVar.i() == null ? (URLConnection) FirebasePerfUrlConnection.instrument(bVar.f().openConnection()) : (URLConnection) FirebasePerfUrlConnection.instrument(bVar.f().openConnection(bVar.i())));
            httpURLConnection.setRequestMethod(bVar.method().name());
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setConnectTimeout(bVar.timeout());
            httpURLConnection.setReadTimeout(bVar.timeout() / 2);
            if (httpURLConnection instanceof HttpsURLConnection) {
                SSLSocketFactory sSLSocketFactoryG = bVar.g();
                if (sSLSocketFactoryG != null) {
                    ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactoryG);
                } else if (!bVar.e()) {
                    O();
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
                    httpsURLConnection.setSSLSocketFactory(f68549o);
                    httpsURLConnection.setHostnameVerifier(M());
                }
            }
            if (bVar.method().hasBody()) {
                httpURLConnection.setDoOutput(true);
            }
            if (bVar.k().size() > 0) {
                httpURLConnection.addRequestProperty("Cookie", N(bVar));
            }
            for (Map.Entry entry : bVar.u().entrySet()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    httpURLConnection.addRequestProperty((String) entry.getKey(), (String) it.next());
                }
            }
            return httpURLConnection;
        }

        private static LinkedHashMap J(HttpURLConnection httpURLConnection) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int i10 = 0;
            while (true) {
                String headerFieldKey = httpURLConnection.getHeaderFieldKey(i10);
                String headerField = httpURLConnection.getHeaderField(i10);
                if (headerFieldKey == null && headerField == null) {
                    return linkedHashMap;
                }
                i10++;
                if (headerFieldKey != null && headerField != null) {
                    if (linkedHashMap.containsKey(headerFieldKey)) {
                        ((List) linkedHashMap.get(headerFieldKey)).add(headerField);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(headerField);
                        linkedHashMap.put(headerFieldKey, arrayList);
                    }
                }
            }
        }

        static d K(Connection.b bVar) {
            return L(bVar, null);
        }

        /* JADX WARN: Code duplicated, block: B:26:0x0082 A[Catch: IOException -> 0x008a, TryCatch #0 {IOException -> 0x008a, blocks: (B:24:0x0079, B:26:0x0082, B:29:0x008d, B:31:0x00a1, B:35:0x00ab, B:36:0x00bf, B:38:0x00c5, B:40:0x00cd, B:42:0x00d6, B:43:0x00da, B:44:0x00f3, B:46:0x00f9, B:47:0x010f, B:55:0x0122, B:57:0x0128, B:59:0x012e, B:61:0x0136, B:64:0x0143, B:65:0x0152, B:67:0x0155, B:69:0x0161, B:71:0x0165, B:73:0x016e, B:74:0x0175, B:76:0x0183, B:78:0x018b, B:80:0x0193, B:82:0x019c, B:84:0x01a6, B:88:0x01c6, B:85:0x01b0, B:87:0x01b8, B:81:0x0198, B:89:0x01df, B:53:0x011c, B:92:0x01e8, B:93:0x01f7), top: B:96:0x0079 }] */
        /* JADX WARN: Code duplicated, block: B:89:0x01df A[Catch: IOException -> 0x008a, TRY_LEAVE, TryCatch #0 {IOException -> 0x008a, blocks: (B:24:0x0079, B:26:0x0082, B:29:0x008d, B:31:0x00a1, B:35:0x00ab, B:36:0x00bf, B:38:0x00c5, B:40:0x00cd, B:42:0x00d6, B:43:0x00da, B:44:0x00f3, B:46:0x00f9, B:47:0x010f, B:55:0x0122, B:57:0x0128, B:59:0x012e, B:61:0x0136, B:64:0x0143, B:65:0x0152, B:67:0x0155, B:69:0x0161, B:71:0x0165, B:73:0x016e, B:74:0x0175, B:76:0x0183, B:78:0x018b, B:80:0x0193, B:82:0x019c, B:84:0x01a6, B:88:0x01c6, B:85:0x01b0, B:87:0x01b8, B:81:0x0198, B:89:0x01df, B:53:0x011c, B:92:0x01e8, B:93:0x01f7), top: B:96:0x0079 }] */
        static d L(Connection.b bVar, d dVar) throws IOException {
            String strS;
            HttpURLConnection httpURLConnectionI;
            int responseCode;
            d dVar2;
            String strH;
            org.jsoup.helper.d.k(bVar, "Request must not be null");
            String protocol = bVar.f().getProtocol();
            if (!protocol.equals("http") && !protocol.equals("https")) {
                throw new MalformedURLException("Only http & https protocols supported");
            }
            boolean zHasBody = bVar.method().hasBody();
            boolean z10 = bVar.v() != null;
            if (!zHasBody) {
                org.jsoup.helper.d.c(z10, "Cannot set a request body for HTTP method " + bVar.method());
            }
            try {
                if (bVar.j().size() <= 0 || (zHasBody && !z10)) {
                    strS = zHasBody ? S(bVar) : null;
                    long jNanoTime = System.nanoTime();
                    httpURLConnectionI = I(bVar);
                    httpURLConnectionI.connect();
                    if (httpURLConnectionI.getDoOutput()) {
                        U(bVar, httpURLConnectionI.getOutputStream(), strS);
                    }
                    responseCode = httpURLConnectionI.getResponseCode();
                    dVar2 = new d(dVar);
                    dVar2.T(httpURLConnectionI, dVar);
                    dVar2.f68560n = bVar;
                    if (!dVar2.s(HttpHeaders.LOCATION) && bVar.l()) {
                        if (responseCode != 307) {
                            bVar.r(Connection.Method.GET);
                            bVar.j().clear();
                            bVar.d(null);
                            bVar.n(HttpHeaders.CONTENT_TYPE);
                        }
                        String strD = dVar2.D(HttpHeaders.LOCATION);
                        if (strD != null && strD.startsWith("http:/") && strD.charAt(6) != '/') {
                            strD = strD.substring(6);
                        }
                        bVar.p(b.f(org.jsoup.helper.c.n(bVar.f(), strD)));
                        for (Map.Entry entry : dVar2.f68535d.entrySet()) {
                            bVar.h((String) entry.getKey(), (String) entry.getValue());
                        }
                        return L(bVar, dVar2);
                    }
                    if ((responseCode >= 200 || responseCode >= 400) && !bVar.b()) {
                        throw new HttpStatusException("HTTP error fetching URL", responseCode, bVar.f().toString());
                    }
                    strH = dVar2.H();
                    if (strH != null && !bVar.t() && !strH.startsWith("text/") && !f68550p.matcher(strH).matches()) {
                        throw new UnsupportedMimeTypeException("Unhandled content type. Must be text/*, application/xml, or application/xhtml+xml", strH, bVar.f().toString());
                    }
                    if (strH != null && f68550p.matcher(strH).matches() && (bVar instanceof c) && !((c) bVar).f68545n) {
                        bVar.o(e.g());
                    }
                    dVar2.f68555i = org.jsoup.helper.a.c(dVar2.f68556j);
                    if (httpURLConnectionI.getContentLength() != 0 || bVar.method() == Connection.Method.HEAD) {
                        dVar2.f68553g = org.jsoup.helper.a.b();
                    } else {
                        dVar2.f68554h = null;
                        dVar2.f68554h = httpURLConnectionI.getErrorStream() != null ? httpURLConnectionI.getErrorStream() : httpURLConnectionI.getInputStream();
                        if (dVar2.C(HttpHeaders.CONTENT_ENCODING, "gzip")) {
                            dVar2.f68554h = new GZIPInputStream(dVar2.f68554h);
                        } else if (dVar2.C(HttpHeaders.CONTENT_ENCODING, "deflate")) {
                            dVar2.f68554h = new InflaterInputStream(dVar2.f68554h, new Inflater(true));
                        }
                        dVar2.f68554h = sz.a.j(dVar2.f68554h, 32768, bVar.w()).h(jNanoTime, bVar.timeout());
                    }
                    dVar2.f68557k = true;
                    return dVar2;
                }
                R(bVar);
                httpURLConnectionI.connect();
                if (httpURLConnectionI.getDoOutput()) {
                    U(bVar, httpURLConnectionI.getOutputStream(), strS);
                }
                responseCode = httpURLConnectionI.getResponseCode();
                dVar2 = new d(dVar);
                dVar2.T(httpURLConnectionI, dVar);
                dVar2.f68560n = bVar;
                if (!dVar2.s(HttpHeaders.LOCATION)) {
                }
                if (responseCode >= 200) {
                    throw new HttpStatusException("HTTP error fetching URL", responseCode, bVar.f().toString());
                }
                throw new HttpStatusException("HTTP error fetching URL", responseCode, bVar.f().toString());
                strH = dVar2.H();
                if (strH != null) {
                    throw new UnsupportedMimeTypeException("Unhandled content type. Must be text/*, application/xml, or application/xhtml+xml", strH, bVar.f().toString());
                }
                if (strH != null) {
                    bVar.o(e.g());
                }
                dVar2.f68555i = org.jsoup.helper.a.c(dVar2.f68556j);
                if (httpURLConnectionI.getContentLength() != 0) {
                    dVar2.f68553g = org.jsoup.helper.a.b();
                } else {
                    dVar2.f68553g = org.jsoup.helper.a.b();
                }
                dVar2.f68557k = true;
                return dVar2;
            } catch (IOException e10) {
                httpURLConnectionI.disconnect();
                throw e10;
            }
            long jNanoTime2 = System.nanoTime();
            httpURLConnectionI = I(bVar);
        }

        private static HostnameVerifier M() {
            return new a();
        }

        private static String N(Connection.b bVar) {
            StringBuilder sbO = org.jsoup.helper.c.o();
            boolean z10 = true;
            for (Map.Entry entry : bVar.k().entrySet()) {
                if (z10) {
                    z10 = false;
                } else {
                    sbO.append("; ");
                }
                sbO.append((String) entry.getKey());
                sbO.append('=');
                sbO.append((String) entry.getValue());
            }
            return sbO.toString();
        }

        private static synchronized void O() {
            if (f68549o == null) {
                TrustManager[] trustManagerArr = {new C0839b()};
                try {
                    SSLContext sSLContext = SSLContext.getInstance("SSL");
                    sSLContext.init(null, trustManagerArr, new SecureRandom());
                    f68549o = sSLContext.getSocketFactory();
                } catch (KeyManagementException | NoSuchAlgorithmException unused) {
                    throw new IOException("Can't create unsecure trust manager");
                }
            }
        }

        private void Q() {
            InputStream inputStream = this.f68554h;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                } finally {
                    this.f68554h = null;
                }
            }
        }

        private static void R(Connection.b bVar) {
            URL urlF = bVar.f();
            StringBuilder sbO = org.jsoup.helper.c.o();
            sbO.append(urlF.getProtocol());
            sbO.append("://");
            sbO.append(urlF.getAuthority());
            sbO.append(urlF.getPath());
            sbO.append(UrlUtils.QUESTION_MARK);
            if (urlF.getQuery() != null) {
                sbO.append(urlF.getQuery());
            }
            Iterator it = bVar.j().iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                throw null;
            }
            bVar.p(new URL(sbO.toString()));
            bVar.j().clear();
        }

        private static String S(Connection.b bVar) {
            if (!bVar.s(HttpHeaders.CONTENT_TYPE)) {
                if (b.h(bVar)) {
                    String strD = org.jsoup.helper.a.d();
                    bVar.q(HttpHeaders.CONTENT_TYPE, "multipart/form-data; boundary=" + strD);
                    return strD;
                }
                bVar.q(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded; charset=" + bVar.c());
            }
            return null;
        }

        private void T(HttpURLConnection httpURLConnection, Connection.c cVar) {
            this.f68533b = Connection.Method.valueOf(httpURLConnection.getRequestMethod());
            this.f68532a = httpURLConnection.getURL();
            this.f68551e = httpURLConnection.getResponseCode();
            this.f68552f = httpURLConnection.getResponseMessage();
            this.f68556j = httpURLConnection.getContentType();
            P(J(httpURLConnection));
            if (cVar != null) {
                for (Map.Entry entry : cVar.k().entrySet()) {
                    if (!B((String) entry.getKey())) {
                        h((String) entry.getKey(), (String) entry.getValue());
                    }
                }
            }
        }

        private static void U(Connection.b bVar, OutputStream outputStream, String str) throws IOException {
            Collection collectionJ = bVar.j();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, bVar.c()));
            if (str != null) {
                Iterator it = collectionJ.iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.c.a(it.next());
                    bufferedWriter.write("--");
                    bufferedWriter.write(str);
                    bufferedWriter.write("\r\n");
                    bufferedWriter.write("Content-Disposition: form-data; name=\"");
                    throw null;
                }
                bufferedWriter.write("--");
                bufferedWriter.write(str);
                bufferedWriter.write("--");
            } else if (bVar.v() != null) {
                bufferedWriter.write(bVar.v());
            } else {
                Iterator it2 = collectionJ.iterator();
                if (it2.hasNext()) {
                    android.support.v4.media.session.c.a(it2.next());
                    throw null;
                }
            }
            bufferedWriter.close();
        }

        @Override
        public boolean B(String str) {
            return super.B(str);
        }

        @Override
        public boolean C(String str, String str2) {
            return super.C(str, str2);
        }

        @Override
        public String D(String str) {
            return super.D(str);
        }

        @Override
        public List E(String str) {
            return super.E(str);
        }

        public String H() {
            return this.f68556j;
        }

        void P(Map map) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str != null) {
                    List<String> list = (List) entry.getValue();
                    if (str.equalsIgnoreCase("Set-Cookie")) {
                        for (String str2 : list) {
                            if (str2 != null) {
                                g gVar = new g(str2);
                                String strTrim = gVar.b(UrlUtils.EQUAL_MARK).trim();
                                String strTrim2 = gVar.g(";").trim();
                                if (strTrim.length() > 0) {
                                    h(strTrim, strTrim2);
                                }
                            }
                        }
                    }
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        y(str, (String) it.next());
                    }
                }
            }
        }

        @Override
        public URL f() {
            return super.f();
        }

        @Override
        public Map k() {
            return super.k();
        }

        @Override
        public Document m() throws IOException {
            org.jsoup.helper.d.e(this.f68557k, "Request must be executed (with .execute(), .get(), or .post() before parsing response");
            if (this.f68553g != null) {
                this.f68554h = new ByteArrayInputStream(this.f68553g.array());
                this.f68558l = false;
            }
            org.jsoup.helper.d.c(this.f68558l, "Input stream already read and parsed, cannot re-read.");
            Document documentE = org.jsoup.helper.a.e(this.f68554h, this.f68555i, this.f68532a.toExternalForm(), this.f68560n.x());
            this.f68555i = documentE.g1().a().name();
            this.f68558l = true;
            Q();
            return documentE;
        }

        @Override
        public boolean s(String str) {
            return super.s(str);
        }

        private d(d dVar) throws IOException {
            super();
            this.f68557k = false;
            this.f68558l = false;
            this.f68559m = 0;
            if (dVar != null) {
                int i10 = dVar.f68559m + 1;
                this.f68559m = i10;
                if (i10 >= 20) {
                    throw new IOException(String.format("Too many redirects occurred trying to load URL %s", dVar.f()));
                }
            }
        }
    }
}
