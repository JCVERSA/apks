package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzgf;
import com.google.android.gms.internal.ads.zzgv;
import com.google.android.gms.internal.ads.zzgx;
import com.lzy.okgo.model.HttpHeaders;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.Socket;
import java.net.SocketException;
import java.net.URL;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public final class cif extends p4i implements lti {
    public static final Pattern u = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    public static final AtomicReference v = new AtomicReference();
    public final SSLSocketFactory e;
    public final int f;
    public final int g;
    public final String h;
    public final ssi i;
    public cfi j;
    public HttpURLConnection k;
    public InputStream l;
    public boolean m;
    public int n;
    public long o;
    public long p;
    public long q;
    public long r;
    public int s;
    public final Set t;

    public cif(String str, ixi ixiVar, int i, int i2, int i3) {
        super(true);
        this.e = new bif(this);
        this.t = new HashSet();
        n7g.c(str);
        this.h = str;
        this.i = new ssi();
        this.f = i;
        this.g = i2;
        this.s = i3;
        if (ixiVar != null) {
            c(ixiVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0079 A[Catch: IOException -> 0x001b, TryCatch #0 {IOException -> 0x001b, blocks: (B:2:0x0000, B:23:0x0058, B:25:0x0060, B:28:0x006b, B:29:0x0071, B:31:0x0079, B:34:0x0080, B:35:0x0085, B:36:0x0086, B:5:0x000b, B:7:0x0016, B:10:0x001e, B:12:0x0026, B:15:0x003c, B:16:0x0046, B:17:0x004b, B:18:0x004c, B:19:0x0051, B:20:0x0052), top: B:40:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x007f  */
    /* JADX WARN: Code duplicated, block: B:34:0x0080 A[Catch: IOException -> 0x001b, TryCatch #0 {IOException -> 0x001b, blocks: (B:2:0x0000, B:23:0x0058, B:25:0x0060, B:28:0x006b, B:29:0x0071, B:31:0x0079, B:34:0x0080, B:35:0x0085, B:36:0x0086, B:5:0x000b, B:7:0x0016, B:10:0x001e, B:12:0x0026, B:15:0x003c, B:16:0x0046, B:17:0x004b, B:18:0x004c, B:19:0x0051, B:20:0x0052), top: B:40:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0086 A[Catch: IOException -> 0x001b, TRY_LEAVE, TryCatch #0 {IOException -> 0x001b, blocks: (B:2:0x0000, B:23:0x0058, B:25:0x0060, B:28:0x006b, B:29:0x0071, B:31:0x0079, B:34:0x0080, B:35:0x0085, B:36:0x0086, B:5:0x000b, B:7:0x0016, B:10:0x001e, B:12:0x0026, B:15:0x003c, B:16:0x0046, B:17:0x004b, B:18:0x004c, B:19:0x0051, B:20:0x0052), top: B:40:0x0000 }] */
    @Override
    public final int b(byte[] bArr, int i, int i2) throws zzgv {
        int i3;
        try {
            if (this.q != this.o) {
                AtomicReference atomicReference = v;
                byte[] bArr2 = (byte[]) atomicReference.getAndSet(null);
                if (bArr2 == null) {
                    bArr2 = new byte[4096];
                }
                while (true) {
                    long j = this.q;
                    long j2 = this.o;
                    if (j == j2) {
                        atomicReference.set(bArr2);
                        break;
                    }
                    int i4 = this.l.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (i4 == -1) {
                        throw new EOFException();
                    }
                    this.q += (long) i4;
                    zzg(i4);
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.p;
            if (j3 != -1) {
                long j4 = j3 - this.r;
                if (j4 != 0) {
                    i2 = (int) Math.min(i2, j4);
                    i3 = this.l.read(bArr, i, i2);
                    if (i3 == -1) {
                        this.r += (long) i3;
                        zzg(i3);
                        return i3;
                    }
                    if (this.p == -1) {
                        throw new EOFException();
                    }
                }
            } else {
                i3 = this.l.read(bArr, i, i2);
                if (i3 == -1) {
                    this.r += (long) i3;
                    zzg(i3);
                    return i3;
                }
                if (this.p == -1) {
                    throw new EOFException();
                }
            }
            return -1;
        } catch (IOException e) {
            throw new zzgv(e, this.j, 2000, 2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:120:0x0279 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x00bb A[Catch: IOException -> 0x003c, TryCatch #4 {IOException -> 0x003c, blocks: (B:3:0x000f, B:4:0x0023, B:6:0x0029, B:8:0x0033, B:11:0x003f, B:12:0x0057, B:14:0x005d, B:21:0x0081, B:23:0x009b, B:24:0x00ad, B:25:0x00b2, B:27:0x00bb, B:28:0x00c2, B:41:0x00ed, B:94:0x023d, B:96:0x0248, B:98:0x0259, B:101:0x0262, B:102:0x0271, B:104:0x0279, B:105:0x0280, B:106:0x0281, B:107:0x0297), top: B:118:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0109  */
    /* JADX WARN: Code duplicated, block: B:96:0x0248 A[Catch: IOException -> 0x003c, TryCatch #4 {IOException -> 0x003c, blocks: (B:3:0x000f, B:4:0x0023, B:6:0x0029, B:8:0x0033, B:11:0x003f, B:12:0x0057, B:14:0x005d, B:21:0x0081, B:23:0x009b, B:24:0x00ad, B:25:0x00b2, B:27:0x00bb, B:28:0x00c2, B:41:0x00ed, B:94:0x023d, B:96:0x0248, B:98:0x0259, B:101:0x0262, B:102:0x0271, B:104:0x0279, B:105:0x0280, B:106:0x0281, B:107:0x0297), top: B:118:0x000f }] */
    @Override
    public final long j(cfi cfiVar) throws zzgv {
        int responseCode;
        String headerField;
        String protocol;
        long j;
        long jMax;
        this.j = cfiVar;
        long j2 = 0;
        this.r = 0L;
        this.q = 0L;
        try {
            URL url = new URL(cfiVar.a.toString());
            long j3 = cfiVar.e;
            long j4 = cfiVar.f;
            boolean zB = cfiVar.b(1);
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (i > 20) {
                    throw new NoRouteToHostException("Too many redirects: " + i2);
                }
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                if (httpURLConnection instanceof HttpsURLConnection) {
                    ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(this.e);
                }
                httpURLConnection.setConnectTimeout(this.f);
                httpURLConnection.setReadTimeout(this.g);
                for (Map.Entry entry : this.i.a().entrySet()) {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                if (j3 == j2) {
                    if (j4 != -1) {
                    }
                    httpURLConnection.setRequestProperty("User-Agent", this.h);
                    if (!zB) {
                        httpURLConnection.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "identity");
                    }
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setDoOutput(false);
                    httpURLConnection.connect();
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode == 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && responseCode != 307 && responseCode != 308) {
                        this.k = httpURLConnection;
                        try {
                            int responseCode2 = httpURLConnection.getResponseCode();
                            this.n = responseCode2;
                            if (responseCode2 < 200 || responseCode2 > 299) {
                                Map<String, List<String>> headerFields = this.k.getHeaderFields();
                                q();
                                zzgx zzgxVar = new zzgx(this.n, null, null, headerFields, cfiVar, kfh.c);
                                if (this.n != 416) {
                                    throw zzgxVar;
                                }
                                zzgxVar.initCause(new zzgf(2008));
                                throw zzgxVar;
                            }
                            if (responseCode2 == 200) {
                                j = cfiVar.e;
                                if (j == 0) {
                                    j = 0;
                                }
                            } else {
                                j = 0;
                            }
                            this.o = j;
                            if (cfiVar.b(1)) {
                                this.p = cfiVar.f;
                            } else {
                                long j5 = cfiVar.f;
                                if (j5 != -1) {
                                    this.p = j5;
                                } else {
                                    HttpURLConnection httpURLConnection2 = this.k;
                                    String headerField2 = httpURLConnection2.getHeaderField("Content-Length");
                                    if (TextUtils.isEmpty(headerField2)) {
                                        jMax = -1;
                                    } else {
                                        try {
                                            jMax = Long.parseLong(headerField2);
                                        } catch (NumberFormatException unused) {
                                            int i3 = zze.zza;
                                            zzo.zzg("Unexpected Content-Length [" + headerField2 + "]");
                                            jMax = -1;
                                        }
                                    }
                                    String headerField3 = httpURLConnection2.getHeaderField(HttpHeaders.HEAD_KEY_CONTENT_RANGE);
                                    if (!TextUtils.isEmpty(headerField3)) {
                                        Matcher matcher = u.matcher(headerField3);
                                        if (matcher.find()) {
                                            try {
                                                long j6 = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
                                                if (jMax < 0) {
                                                    jMax = j6;
                                                } else if (jMax != j6) {
                                                    int i4 = zze.zza;
                                                    zzo.zzj("Inconsistent headers [" + headerField2 + "] [" + headerField3 + "]");
                                                    jMax = Math.max(jMax, j6);
                                                }
                                            } catch (NumberFormatException unused2) {
                                                int i5 = zze.zza;
                                                zzo.zzg("Unexpected Content-Range [" + headerField3 + "]");
                                            }
                                        }
                                    }
                                    this.p = jMax != -1 ? jMax - this.o : -1L;
                                }
                            }
                            try {
                                this.l = this.k.getInputStream();
                                this.m = true;
                                m(cfiVar);
                                return this.p;
                            } catch (IOException e) {
                                q();
                                throw new zzgv(e, cfiVar, 2000, 1);
                            }
                        } catch (IOException e2) {
                            q();
                            throw new zzgv("Unable to connect to ".concat(String.valueOf(cfiVar.a.toString())), e2, cfiVar, 2000, 1);
                        }
                    }
                    headerField = httpURLConnection.getHeaderField("Location");
                    httpURLConnection.disconnect();
                    if (headerField != null) {
                        throw new ProtocolException("Null location redirect");
                    }
                    URL url2 = new URL(url, headerField);
                    protocol = url2.getProtocol();
                    if (!ProxyConfig.MATCH_HTTPS.equals(protocol) && !ProxyConfig.MATCH_HTTP.equals(protocol)) {
                        throw new ProtocolException("Unsupported protocol redirect: ".concat(String.valueOf(protocol)));
                    }
                    url = url2;
                    i = i2;
                    j2 = 0;
                } else {
                    j2 = j3;
                }
                String string = "bytes=" + j2 + "-";
                if (j4 != -1) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(string);
                    sb.append((j2 + j4) - 1);
                    string = sb.toString();
                }
                httpURLConnection.setRequestProperty("Range", string);
                httpURLConnection.setRequestProperty("User-Agent", this.h);
                if (!zB) {
                    httpURLConnection.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "identity");
                }
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.setDoOutput(false);
                httpURLConnection.connect();
                responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 300) {
                }
                headerField = httpURLConnection.getHeaderField("Location");
                httpURLConnection.disconnect();
                if (headerField != null) {
                    throw new ProtocolException("Null location redirect");
                }
                URL url3 = new URL(url, headerField);
                protocol = url3.getProtocol();
                if (!ProxyConfig.MATCH_HTTPS.equals(protocol)) {
                    throw new ProtocolException("Unsupported protocol redirect: ".concat(String.valueOf(protocol)));
                }
                url = url3;
                i = i2;
                j2 = 0;
            }
        } catch (IOException e3) {
            throw new zzgv("Unable to connect to ".concat(String.valueOf(cfiVar.a.toString())), e3, cfiVar, 2000, 1);
        }
    }

    public final void p(int i) {
        this.s = i;
        for (Socket socket : this.t) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.s);
                } catch (SocketException e) {
                    int i2 = zze.zza;
                    zzo.zzk("Failed to update receive buffer size.", e);
                }
            }
        }
    }

    public final void q() {
        HttpURLConnection httpURLConnection = this.k;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                int i = zze.zza;
                zzo.zzh("Unexpected error while disconnecting", e);
            }
            this.k = null;
        }
    }

    @Override
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.k;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override
    public final void zzd() {
        try {
            InputStream inputStream = this.l;
            if (inputStream != null) {
                int i = kfh.a;
                try {
                    inputStream.close();
                } catch (IOException e) {
                    throw new zzgv(e, this.j, 2000, 3);
                }
            }
            this.l = null;
            q();
            if (this.m) {
                this.m = false;
                k();
            }
            this.t.clear();
        } catch (Throwable th) {
            this.l = null;
            q();
            if (this.m) {
                this.m = false;
                k();
            }
            this.t.clear();
            throw th;
        }
    }

    @Override
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.k;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }
}
