package com.google.firebase.perf.network;

import android.os.Build;
import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.Permission;
import java.util.Map;
import wc.f;

class c {

    private static final uc.a f31489f = uc.a.e();

    private final HttpURLConnection f31490a;

    private final i f31491b;

    private long f31492c = -1;

    private long f31493d = -1;

    private final Timer f31494e;

    public c(HttpURLConnection httpURLConnection, Timer timer, i iVar) {
        this.f31490a = httpURLConnection;
        this.f31491b = iVar;
        this.f31494e = timer;
        iVar.q(httpURLConnection.getURL().toString());
    }

    private void a0() {
        if (this.f31492c == -1) {
            this.f31494e.reset();
            long micros = this.f31494e.getMicros();
            this.f31492c = micros;
            this.f31491b.k(micros);
        }
        String strF = F();
        if (strF != null) {
            this.f31491b.f(strF);
        } else if (o()) {
            this.f31491b.f("POST");
        } else {
            this.f31491b.f("GET");
        }
    }

    public boolean A() {
        return this.f31490a.getInstanceFollowRedirects();
    }

    public long B() {
        a0();
        return this.f31490a.getLastModified();
    }

    public OutputStream C() throws IOException {
        try {
            OutputStream outputStream = this.f31490a.getOutputStream();
            return outputStream != null ? new wc.b(outputStream, this.f31491b, this.f31494e) : outputStream;
        } catch (IOException e10) {
            this.f31491b.o(this.f31494e.getDurationMicros());
            f.d(this.f31491b);
            throw e10;
        }
    }

    public Permission D() throws IOException {
        try {
            return this.f31490a.getPermission();
        } catch (IOException e10) {
            this.f31491b.o(this.f31494e.getDurationMicros());
            f.d(this.f31491b);
            throw e10;
        }
    }

    public int E() {
        return this.f31490a.getReadTimeout();
    }

    public String F() {
        return this.f31490a.getRequestMethod();
    }

    public Map G() {
        return this.f31490a.getRequestProperties();
    }

    public String H(String str) {
        return this.f31490a.getRequestProperty(str);
    }

    public int I() throws IOException {
        a0();
        if (this.f31493d == -1) {
            long durationMicros = this.f31494e.getDurationMicros();
            this.f31493d = durationMicros;
            this.f31491b.p(durationMicros);
        }
        try {
            int responseCode = this.f31490a.getResponseCode();
            this.f31491b.g(responseCode);
            return responseCode;
        } catch (IOException e10) {
            this.f31491b.o(this.f31494e.getDurationMicros());
            f.d(this.f31491b);
            throw e10;
        }
    }

    public String J() throws IOException {
        a0();
        if (this.f31493d == -1) {
            long durationMicros = this.f31494e.getDurationMicros();
            this.f31493d = durationMicros;
            this.f31491b.p(durationMicros);
        }
        try {
            String responseMessage = this.f31490a.getResponseMessage();
            this.f31491b.g(this.f31490a.getResponseCode());
            return responseMessage;
        } catch (IOException e10) {
            this.f31491b.o(this.f31494e.getDurationMicros());
            f.d(this.f31491b);
            throw e10;
        }
    }

    public URL K() {
        return this.f31490a.getURL();
    }

    public boolean L() {
        return this.f31490a.getUseCaches();
    }

    public void M(boolean z10) {
        this.f31490a.setAllowUserInteraction(z10);
    }

    public void N(int i10) {
        this.f31490a.setChunkedStreamingMode(i10);
    }

    public void O(int i10) {
        this.f31490a.setConnectTimeout(i10);
    }

    public void P(boolean z10) {
        this.f31490a.setDefaultUseCaches(z10);
    }

    public void Q(boolean z10) {
        this.f31490a.setDoInput(z10);
    }

    public void R(boolean z10) {
        this.f31490a.setDoOutput(z10);
    }

    public void S(int i10) {
        this.f31490a.setFixedLengthStreamingMode(i10);
    }

    public void T(long j10) {
        this.f31490a.setFixedLengthStreamingMode(j10);
    }

    public void U(long j10) {
        this.f31490a.setIfModifiedSince(j10);
    }

    public void V(boolean z10) {
        this.f31490a.setInstanceFollowRedirects(z10);
    }

    public void W(int i10) {
        this.f31490a.setReadTimeout(i10);
    }

    public void X(String str) {
        this.f31490a.setRequestMethod(str);
    }

    public void Y(String str, String str2) {
        if ("User-Agent".equalsIgnoreCase(str)) {
            this.f31491b.r(str2);
        }
        this.f31490a.setRequestProperty(str, str2);
    }

    public void Z(boolean z10) {
        this.f31490a.setUseCaches(z10);
    }

    public void a(String str, String str2) {
        this.f31490a.addRequestProperty(str, str2);
    }

    public void b() {
        if (this.f31492c == -1) {
            this.f31494e.reset();
            long micros = this.f31494e.getMicros();
            this.f31492c = micros;
            this.f31491b.k(micros);
        }
        try {
            this.f31490a.connect();
        } catch (IOException e10) {
            this.f31491b.o(this.f31494e.getDurationMicros());
            f.d(this.f31491b);
            throw e10;
        }
    }

    public boolean b0() {
        return this.f31490a.usingProxy();
    }

    public void c() {
        this.f31491b.o(this.f31494e.getDurationMicros());
        this.f31491b.a();
        this.f31490a.disconnect();
    }

    public boolean d() {
        return this.f31490a.getAllowUserInteraction();
    }

    public int e() {
        return this.f31490a.getConnectTimeout();
    }

    public boolean equals(Object obj) {
        return this.f31490a.equals(obj);
    }

    public Object f() throws IOException {
        a0();
        this.f31491b.g(this.f31490a.getResponseCode());
        try {
            Object content = this.f31490a.getContent();
            if (content instanceof InputStream) {
                this.f31491b.l(this.f31490a.getContentType());
                return new wc.a((InputStream) content, this.f31491b, this.f31494e);
            }
            this.f31491b.l(this.f31490a.getContentType());
            this.f31491b.m(this.f31490a.getContentLength());
            this.f31491b.o(this.f31494e.getDurationMicros());
            this.f31491b.a();
            return content;
        } catch (IOException e10) {
            this.f31491b.o(this.f31494e.getDurationMicros());
            f.d(this.f31491b);
            throw e10;
        }
    }

    public Object g(Class[] clsArr) throws IOException {
        a0();
        this.f31491b.g(this.f31490a.getResponseCode());
        try {
            Object content = this.f31490a.getContent(clsArr);
            if (content instanceof InputStream) {
                this.f31491b.l(this.f31490a.getContentType());
                return new wc.a((InputStream) content, this.f31491b, this.f31494e);
            }
            this.f31491b.l(this.f31490a.getContentType());
            this.f31491b.m(this.f31490a.getContentLength());
            this.f31491b.o(this.f31494e.getDurationMicros());
            this.f31491b.a();
            return content;
        } catch (IOException e10) {
            this.f31491b.o(this.f31494e.getDurationMicros());
            f.d(this.f31491b);
            throw e10;
        }
    }

    public String h() {
        a0();
        return this.f31490a.getContentEncoding();
    }

    public int hashCode() {
        return this.f31490a.hashCode();
    }

    public int i() {
        a0();
        return this.f31490a.getContentLength();
    }

    public long j() {
        a0();
        if (Build.VERSION.SDK_INT >= 24) {
            return this.f31490a.getContentLengthLong();
        }
        return 0L;
    }

    public String k() {
        a0();
        return this.f31490a.getContentType();
    }

    public long l() {
        a0();
        return this.f31490a.getDate();
    }

    public boolean m() {
        return this.f31490a.getDefaultUseCaches();
    }

    public boolean n() {
        return this.f31490a.getDoInput();
    }

    public boolean o() {
        return this.f31490a.getDoOutput();
    }

    public InputStream p() {
        a0();
        try {
            this.f31491b.g(this.f31490a.getResponseCode());
        } catch (IOException unused) {
            f31489f.a("IOException thrown trying to obtain the response code");
        }
        InputStream errorStream = this.f31490a.getErrorStream();
        return errorStream != null ? new wc.a(errorStream, this.f31491b, this.f31494e) : errorStream;
    }

    public long q() {
        a0();
        return this.f31490a.getExpiration();
    }

    public String r(int i10) {
        a0();
        return this.f31490a.getHeaderField(i10);
    }

    public String s(String str) {
        a0();
        return this.f31490a.getHeaderField(str);
    }

    public long t(String str, long j10) {
        a0();
        return this.f31490a.getHeaderFieldDate(str, j10);
    }

    public String toString() {
        return this.f31490a.toString();
    }

    public int u(String str, int i10) {
        a0();
        return this.f31490a.getHeaderFieldInt(str, i10);
    }

    public String v(int i10) {
        a0();
        return this.f31490a.getHeaderFieldKey(i10);
    }

    public long w(String str, long j10) {
        a0();
        if (Build.VERSION.SDK_INT >= 24) {
            return this.f31490a.getHeaderFieldLong(str, j10);
        }
        return 0L;
    }

    public Map x() {
        a0();
        return this.f31490a.getHeaderFields();
    }

    public long y() {
        return this.f31490a.getIfModifiedSince();
    }

    public InputStream z() throws IOException {
        a0();
        this.f31491b.g(this.f31490a.getResponseCode());
        this.f31491b.l(this.f31490a.getContentType());
        try {
            InputStream inputStream = this.f31490a.getInputStream();
            return inputStream != null ? new wc.a(inputStream, this.f31491b, this.f31494e) : inputStream;
        } catch (IOException e10) {
            this.f31491b.o(this.f31494e.getDurationMicros());
            f.d(this.f31491b);
            throw e10;
        }
    }
}
