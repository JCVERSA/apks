package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.firebase.encoders.EncodingException;
import com.hisavana.common.constant.ComConstants;
import com.lzy.okgo.model.HttpHeaders;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public final class bs0 implements z8b {
    public final bs1 a;
    public final ConnectivityManager b;
    public final Context c;
    public final URL d;
    public final hy0 e;
    public final hy0 f;
    public final int g;

    public static final class a {
        public final URL a;
        public final nd0 b;
        public final String c;

        public a(URL url, nd0 nd0Var, String str) {
            this.a = url;
            this.b = nd0Var;
            this.c = str;
        }

        public a a(URL url) {
            return new a(url, this.b, this.c);
        }
    }

    public static final class b {
        public final int a;
        public final URL b;
        public final long c;

        public b(int i, URL url, long j) {
            this.a = i;
            this.b = url;
            this.c = j;
        }
    }

    public bs0(Context context, hy0 hy0Var, hy0 hy0Var2, int i) {
        this.a = nd0.b();
        this.c = context;
        this.b = (ConnectivityManager) context.getSystemService("connectivity");
        this.d = n(uo0.c);
        this.e = hy0Var2;
        this.f = hy0Var;
        this.g = i;
    }

    public static int f(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return NetworkConnectionInfo.MobileSubtype.UNKNOWN_MOBILE_SUBTYPE.getValue();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return NetworkConnectionInfo.MobileSubtype.COMBINED.getValue();
        }
        if (NetworkConnectionInfo.MobileSubtype.forNumber(subtype) != null) {
            return subtype;
        }
        return 0;
    }

    public static int g(NetworkInfo networkInfo) {
        return networkInfo == null ? NetworkConnectionInfo.NetworkType.NONE.getValue() : networkInfo.getType();
    }

    public static int h(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            vq5.c("CctTransportBackend", "Unable to find version code for package", e);
            return -1;
        }
    }

    public static TelephonyManager j(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    public static long k() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    public static a l(a aVar, b bVar) {
        URL url = bVar.b;
        if (url == null) {
            return null;
        }
        vq5.a("CctTransportBackend", "Following redirect to: %s", url);
        return aVar.a(bVar.b);
    }

    public static InputStream m(InputStream inputStream, String str) {
        return "gzip".equals(str) ? new GZIPInputStream(inputStream) : inputStream;
    }

    public static URL n(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Invalid url: " + str, e);
        }
    }

    @Override
    public BackendResponse a(c50 c50Var) {
        nd0 nd0VarI = i(c50Var);
        URL urlN = this.d;
        String strD = null;
        if (c50Var.c() != null) {
            try {
                uo0 uo0VarC = uo0.c(c50Var.c());
                strD = uo0VarC.d() != null ? uo0VarC.d() : null;
                if (uo0VarC.e() != null) {
                    urlN = n(uo0VarC.e());
                }
            } catch (IllegalArgumentException unused) {
                return BackendResponse.a();
            }
        }
        try {
            b bVar = (b) qu8.a(5, new a(urlN, nd0VarI, strD), new d84() {
                @Override
                public final Object apply(Object obj) {
                    return this.a.e((bs0.a) obj);
                }
            }, new vu8() {
                @Override
                public final Object a(Object obj, Object obj2) {
                    return bs0.l((bs0.a) obj, (bs0.b) obj2);
                }
            });
            int i = bVar.a;
            if (i == 200) {
                return BackendResponse.e(bVar.c);
            }
            if (i < 500 && i != 404) {
                return i == 400 ? BackendResponse.d() : BackendResponse.a();
            }
            return BackendResponse.f();
        } catch (IOException e) {
            vq5.c("CctTransportBackend", "Could not make request to the backend", e);
            return BackendResponse.f();
        }
    }

    @Override
    public xd3 b(xd3 xd3Var) {
        NetworkInfo activeNetworkInfo = this.b.getActiveNetworkInfo();
        return xd3Var.l().a("sdk-version", Build.VERSION.SDK_INT).c(CommonUrlParts.MODEL, Build.MODEL).c("hardware", Build.HARDWARE).c("device", Build.DEVICE).c("product", Build.PRODUCT).c("os-uild", Build.ID).c(CommonUrlParts.MANUFACTURER, Build.MANUFACTURER).c("fingerprint", Build.FINGERPRINT).b("tz-offset", k()).a("net-type", g(activeNetworkInfo)).a("mobile-subtype", f(activeNetworkInfo)).c("country", Locale.getDefault().getCountry()).c(CommonUrlParts.LOCALE, Locale.getDefault().getLanguage()).c("mcc_mnc", j(this.c).getSimOperator()).c("application_build", Integer.toString(h(this.c))).d();
    }

    public final b e(a aVar) throws IOException {
        vq5.e("CctTransportBackend", "Making request to: %s", aVar.a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) aVar.a.openConnection();
        httpURLConnection.setConnectTimeout(ComConstants.AD_TIMEOUT_MILLIS);
        httpURLConnection.setReadTimeout(this.g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "3.1.9"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "gzip");
        String str = aVar.c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    this.a.a(aVar.b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    vq5.e("CctTransportBackend", "Status Code: %d", Integer.valueOf(responseCode));
                    vq5.a("CctTransportBackend", "Content-Type: %s", httpURLConnection.getHeaderField("Content-Type"));
                    vq5.a("CctTransportBackend", "Content-Encoding: %s", httpURLConnection.getHeaderField("Content-Encoding"));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream inputStreamM = m(inputStream, httpURLConnection.getHeaderField("Content-Encoding"));
                        try {
                            b bVar = new b(responseCode, null, yp5.b(new BufferedReader(new InputStreamReader(inputStreamM))).c());
                            if (inputStreamM != null) {
                                inputStreamM.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return bVar;
                        } catch (Throwable th) {
                            if (inputStreamM != null) {
                                try {
                                    inputStreamM.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                        }
                        throw th3;
                    }
                } catch (Throwable th5) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                    }
                    throw th5;
                }
            } catch (Throwable th7) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th8) {
                        th7.addSuppressed(th8);
                    }
                }
                throw th7;
            }
        } catch (EncodingException | IOException e) {
            vq5.c("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new b(400, null, 0L);
        } catch (ConnectException | UnknownHostException e2) {
            vq5.c("CctTransportBackend", "Couldn't open connection, returning with 500", e2);
            return new b(500, null, 0L);
        }
    }

    public final nd0 i(c50 c50Var) {
        sp5.a aVarJ;
        HashMap map = new HashMap();
        for (xd3 xd3Var : c50Var.b()) {
            String strJ = xd3Var.j();
            if (map.containsKey(strJ)) {
                ((List) map.get(strJ)).add(xd3Var);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(xd3Var);
                map.put(strJ, arrayList);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            xd3 xd3Var2 = (xd3) ((List) entry.getValue()).get(0);
            xp5.a aVarB = xp5.a().f(QosTier.DEFAULT).g(this.f.a()).h(this.e.a()).b(ClientInfo.a().c(ClientInfo.ClientType.ANDROID_FIREBASE).b(ob.a().m(Integer.valueOf(xd3Var2.g("sdk-version"))).j(xd3Var2.b(CommonUrlParts.MODEL)).f(xd3Var2.b("hardware")).d(xd3Var2.b("device")).l(xd3Var2.b("product")).k(xd3Var2.b("os-uild")).h(xd3Var2.b(CommonUrlParts.MANUFACTURER)).e(xd3Var2.b("fingerprint")).c(xd3Var2.b("country")).g(xd3Var2.b(CommonUrlParts.LOCALE)).i(xd3Var2.b("mcc_mnc")).b(xd3Var2.b("application_build")).a()).a());
            try {
                aVarB.i(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                aVarB.j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (xd3 xd3Var3 : (List) entry.getValue()) {
                ba3 ba3VarE = xd3Var3.e();
                ka3 ka3VarB = ba3VarE.b();
                if (ka3VarB.equals(ka3.b("proto"))) {
                    aVarJ = sp5.j(ba3VarE.a());
                } else if (ka3VarB.equals(ka3.b("json"))) {
                    aVarJ = sp5.i(new String(ba3VarE.a(), Charset.forName("UTF-8")));
                } else {
                    vq5.f("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", ka3VarB);
                }
                aVarJ.c(xd3Var3.f()).d(xd3Var3.k()).h(xd3Var3.h("tz-offset")).e(NetworkConnectionInfo.a().c(NetworkConnectionInfo.NetworkType.forNumber(xd3Var3.g("net-type"))).b(NetworkConnectionInfo.MobileSubtype.forNumber(xd3Var3.g("mobile-subtype"))).a());
                if (xd3Var3.d() != null) {
                    aVarJ.b(xd3Var3.d());
                }
                arrayList3.add(aVarJ.a());
            }
            aVarB.c(arrayList3);
            arrayList2.add(aVarB.a());
        }
        return nd0.a(arrayList2);
    }

    public bs0(Context context, hy0 hy0Var, hy0 hy0Var2) {
        this(context, hy0Var, hy0Var2, 130000);
    }
}
