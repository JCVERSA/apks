package com.google.firebase.perf.network;

import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.Permission;
import java.util.Map;

public final class a extends HttpURLConnection {

    private final c f31486a;

    a(HttpURLConnection httpURLConnection, Timer timer, i iVar) {
        super(httpURLConnection.getURL());
        this.f31486a = new c(httpURLConnection, timer, iVar);
    }

    @Override
    public void addRequestProperty(String str, String str2) {
        this.f31486a.a(str, str2);
    }

    @Override
    public void connect() {
        this.f31486a.b();
    }

    @Override
    public void disconnect() {
        this.f31486a.c();
    }

    public boolean equals(Object obj) {
        return this.f31486a.equals(obj);
    }

    @Override
    public boolean getAllowUserInteraction() {
        return this.f31486a.d();
    }

    @Override
    public int getConnectTimeout() {
        return this.f31486a.e();
    }

    @Override
    public Object getContent() {
        return this.f31486a.f();
    }

    @Override
    public String getContentEncoding() {
        return this.f31486a.h();
    }

    @Override
    public int getContentLength() {
        return this.f31486a.i();
    }

    @Override
    public long getContentLengthLong() {
        return this.f31486a.j();
    }

    @Override
    public String getContentType() {
        return this.f31486a.k();
    }

    @Override
    public long getDate() {
        return this.f31486a.l();
    }

    @Override
    public boolean getDefaultUseCaches() {
        return this.f31486a.m();
    }

    @Override
    public boolean getDoInput() {
        return this.f31486a.n();
    }

    @Override
    public boolean getDoOutput() {
        return this.f31486a.o();
    }

    @Override
    public InputStream getErrorStream() {
        return this.f31486a.p();
    }

    @Override
    public long getExpiration() {
        return this.f31486a.q();
    }

    @Override
    public String getHeaderField(int i10) {
        return this.f31486a.r(i10);
    }

    @Override
    public long getHeaderFieldDate(String str, long j10) {
        return this.f31486a.t(str, j10);
    }

    @Override
    public int getHeaderFieldInt(String str, int i10) {
        return this.f31486a.u(str, i10);
    }

    @Override
    public String getHeaderFieldKey(int i10) {
        return this.f31486a.v(i10);
    }

    @Override
    public long getHeaderFieldLong(String str, long j10) {
        return this.f31486a.w(str, j10);
    }

    @Override
    public Map getHeaderFields() {
        return this.f31486a.x();
    }

    @Override
    public long getIfModifiedSince() {
        return this.f31486a.y();
    }

    @Override
    public InputStream getInputStream() {
        return this.f31486a.z();
    }

    @Override
    public boolean getInstanceFollowRedirects() {
        return this.f31486a.A();
    }

    @Override
    public long getLastModified() {
        return this.f31486a.B();
    }

    @Override
    public OutputStream getOutputStream() {
        return this.f31486a.C();
    }

    @Override
    public Permission getPermission() {
        return this.f31486a.D();
    }

    @Override
    public int getReadTimeout() {
        return this.f31486a.E();
    }

    @Override
    public String getRequestMethod() {
        return this.f31486a.F();
    }

    @Override
    public Map getRequestProperties() {
        return this.f31486a.G();
    }

    @Override
    public String getRequestProperty(String str) {
        return this.f31486a.H(str);
    }

    @Override
    public int getResponseCode() {
        return this.f31486a.I();
    }

    @Override
    public String getResponseMessage() {
        return this.f31486a.J();
    }

    @Override
    public URL getURL() {
        return this.f31486a.K();
    }

    @Override
    public boolean getUseCaches() {
        return this.f31486a.L();
    }

    public int hashCode() {
        return this.f31486a.hashCode();
    }

    @Override
    public void setAllowUserInteraction(boolean z10) {
        this.f31486a.M(z10);
    }

    @Override
    public void setChunkedStreamingMode(int i10) {
        this.f31486a.N(i10);
    }

    @Override
    public void setConnectTimeout(int i10) {
        this.f31486a.O(i10);
    }

    @Override
    public void setDefaultUseCaches(boolean z10) {
        this.f31486a.P(z10);
    }

    @Override
    public void setDoInput(boolean z10) {
        this.f31486a.Q(z10);
    }

    @Override
    public void setDoOutput(boolean z10) {
        this.f31486a.R(z10);
    }

    @Override
    public void setFixedLengthStreamingMode(int i10) {
        this.f31486a.S(i10);
    }

    @Override
    public void setIfModifiedSince(long j10) {
        this.f31486a.U(j10);
    }

    @Override
    public void setInstanceFollowRedirects(boolean z10) {
        this.f31486a.V(z10);
    }

    @Override
    public void setReadTimeout(int i10) {
        this.f31486a.W(i10);
    }

    @Override
    public void setRequestMethod(String str) {
        this.f31486a.X(str);
    }

    @Override
    public void setRequestProperty(String str, String str2) {
        this.f31486a.Y(str, str2);
    }

    @Override
    public void setUseCaches(boolean z10) {
        this.f31486a.Z(z10);
    }

    @Override
    public String toString() {
        return this.f31486a.toString();
    }

    @Override
    public boolean usingProxy() {
        return this.f31486a.b0();
    }

    @Override
    public Object getContent(Class[] clsArr) {
        return this.f31486a.g(clsArr);
    }

    @Override
    public String getHeaderField(String str) {
        return this.f31486a.s(str);
    }

    @Override
    public void setFixedLengthStreamingMode(long j10) {
        this.f31486a.T(j10);
    }
}
