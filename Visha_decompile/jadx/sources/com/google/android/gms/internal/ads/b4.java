package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.lzy.okgo.model.HttpHeaders;
import defpackage.cfi;
import defpackage.ixi;
import defpackage.lti;
import defpackage.n7g;
import defpackage.p4i;
import defpackage.ssi;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class b4 extends p4i implements lti {
    public static final Pattern v = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    public final int e;
    public final int f;
    public final String g;
    public final ssi h;
    public cfi i;
    public HttpURLConnection j;
    public final Queue k;
    public InputStream l;
    public boolean m;
    public int n;
    public long o;
    public long p;
    public long q;
    public long r;
    public long s;
    public final long t;
    public final long u;

    public b4(String str, ixi ixiVar, int i, int i2, long j, long j2) {
        super(true);
        n7g.c(str);
        this.g = str;
        this.h = new ssi();
        this.e = i;
        this.f = i2;
        this.k = new ArrayDeque();
        this.t = j;
        this.u = j2;
        if (ixiVar != null) {
            c(ixiVar);
        }
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) throws zzgv {
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.o;
            long j2 = this.p;
            if (j - j2 == 0) {
                return -1;
            }
            long j3 = this.q + j2;
            long j4 = i2;
            long j5 = this.u;
            long j6 = j3 + j4 + j5;
            long j7 = this.s;
            long j8 = j7 + 1;
            if (j6 > j8) {
                long j9 = this.r;
                if (j7 < j9) {
                    long jMin = Math.min(j9, Math.max(((this.t + j8) - j5) - 1, (-1) + j8 + j4));
                    n(j8, jMin, 2);
                    this.s = jMin;
                    j7 = jMin;
                }
            }
            int i3 = this.l.read(bArr, i, (int) Math.min(j4, ((j7 + 1) - this.q) - this.p));
            if (i3 == -1) {
                throw new EOFException();
            }
            this.p += (long) i3;
            zzg(i3);
            return i3;
        } catch (IOException e) {
            throw new zzgv(e, this.i, 2000, 2);
        }
    }

    @Override
    public final long j(cfi cfiVar) throws zzgv {
        this.i = cfiVar;
        this.p = 0L;
        long j = cfiVar.e;
        long j2 = cfiVar.f;
        long jMin = j2 == -1 ? this.t : Math.min(this.t, j2);
        this.q = j;
        HttpURLConnection httpURLConnectionN = n(j, (jMin + j) - 1, 1);
        this.j = httpURLConnectionN;
        String headerField = httpURLConnectionN.getHeaderField(HttpHeaders.HEAD_KEY_CONTENT_RANGE);
        if (!TextUtils.isEmpty(headerField)) {
            Matcher matcher = v.matcher(headerField);
            if (matcher.find()) {
                try {
                    Long.parseLong(matcher.group(1));
                    long j3 = Long.parseLong(matcher.group(2));
                    long j4 = Long.parseLong(matcher.group(3));
                    long j5 = cfiVar.f;
                    if (j5 != -1) {
                        this.o = j5;
                        this.r = Math.max(j3, (this.q + j5) - 1);
                    } else {
                        this.o = j4 - this.q;
                        this.r = j4 - 1;
                    }
                    this.s = j3;
                    this.m = true;
                    m(cfiVar);
                    return this.o;
                } catch (NumberFormatException unused) {
                    int i = zze.zza;
                    zzo.zzg("Unexpected Content-Range [" + headerField + "]");
                }
            }
        }
        throw new zzcdu(headerField, cfiVar);
    }

    public final HttpURLConnection n(long j, long j2, int i) throws zzgv {
        String string = this.i.a.toString();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(string).openConnection();
            httpURLConnection.setConnectTimeout(this.e);
            httpURLConnection.setReadTimeout(this.f);
            for (Map.Entry entry : this.h.a().entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            httpURLConnection.setRequestProperty("Range", "bytes=" + j + "-" + j2);
            httpURLConnection.setRequestProperty("User-Agent", this.g);
            httpURLConnection.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "identity");
            httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
            httpURLConnection.connect();
            this.k.add(httpURLConnection);
            String string2 = this.i.a.toString();
            try {
                int responseCode = httpURLConnection.getResponseCode();
                this.n = responseCode;
                if (responseCode < 200 || responseCode > 299) {
                    Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                    o();
                    throw new zzcdv(this.n, headerFields, this.i, i);
                }
                try {
                    InputStream inputStream = httpURLConnection.getInputStream();
                    if (this.l != null) {
                        inputStream = new SequenceInputStream(this.l, inputStream);
                    }
                    this.l = inputStream;
                    return httpURLConnection;
                } catch (IOException e) {
                    o();
                    throw new zzgv(e, this.i, 2000, i);
                }
            } catch (IOException e2) {
                o();
                throw new zzgv("Unable to connect to ".concat(String.valueOf(string2)), e2, this.i, 2000, i);
            }
        } catch (IOException e3) {
            throw new zzgv("Unable to connect to ".concat(String.valueOf(string)), e3, this.i, 2000, i);
        }
    }

    public final void o() {
        while (true) {
            Queue queue = this.k;
            if (queue.isEmpty()) {
                this.j = null;
                return;
            }
            try {
                ((HttpURLConnection) queue.remove()).disconnect();
            } catch (Exception e) {
                int i = zze.zza;
                zzo.zzh("Unexpected error while disconnecting", e);
            }
        }
    }

    @Override
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.j;
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
                try {
                    inputStream.close();
                } catch (IOException e) {
                    throw new zzgv(e, this.i, 2000, 3);
                }
            }
            this.l = null;
            o();
            if (this.m) {
                this.m = false;
                k();
            }
        } catch (Throwable th) {
            this.l = null;
            o();
            if (this.m) {
                this.m = false;
                k();
            }
            throw th;
        }
    }

    @Override
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.j;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }
}
