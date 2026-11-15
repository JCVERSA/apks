package com.google.firebase.perf.network;

import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public final class b extends HttpsURLConnection {

    private final c f31487a;

    private final HttpsURLConnection f31488b;

    b(HttpsURLConnection httpsURLConnection, Timer timer, i iVar) {
        super(httpsURLConnection.getURL());
        this.f31488b = httpsURLConnection;
        this.f31487a = new c(httpsURLConnection, timer, iVar);
    }

    @Override
    public void addRequestProperty(String str, String str2) {
        this.f31487a.a(str, str2);
    }

    @Override
    public void connect() {
        this.f31487a.b();
    }

    @Override
    public void disconnect() {
        this.f31487a.c();
    }

    public boolean equals(Object obj) {
        return this.f31487a.equals(obj);
    }

    @Override
    public boolean getAllowUserInteraction() {
        return this.f31487a.d();
    }

    @Override
    public String getCipherSuite() {
        return this.f31488b.getCipherSuite();
    }

    @Override
    public int getConnectTimeout() {
        return this.f31487a.e();
    }

    @Override
    public Object getContent() {
        return this.f31487a.f();
    }

    @Override
    public String getContentEncoding() {
        return this.f31487a.h();
    }

    @Override
    public int getContentLength() {
        return this.f31487a.i();
    }

    @Override
    public long getContentLengthLong() {
        return this.f31487a.j();
    }

    @Override
    public String getContentType() {
        return this.f31487a.k();
    }

    @Override
    public long getDate() {
        return this.f31487a.l();
    }

    @Override
    public boolean getDefaultUseCaches() {
        return this.f31487a.m();
    }

    @Override
    public boolean getDoInput() {
        return this.f31487a.n();
    }

    @Override
    public boolean getDoOutput() {
        return this.f31487a.o();
    }

    @Override
    public InputStream getErrorStream() {
        return this.f31487a.p();
    }

    @Override
    public long getExpiration() {
        return this.f31487a.q();
    }

    @Override
    public String getHeaderField(int i10) {
        return this.f31487a.r(i10);
    }

    @Override
    public long getHeaderFieldDate(String str, long j10) {
        return this.f31487a.t(str, j10);
    }

    @Override
    public int getHeaderFieldInt(String str, int i10) {
        return this.f31487a.u(str, i10);
    }

    @Override
    public String getHeaderFieldKey(int i10) {
        return this.f31487a.v(i10);
    }

    @Override
    public long getHeaderFieldLong(String str, long j10) {
        return this.f31487a.w(str, j10);
    }

    @Override
    public Map getHeaderFields() {
        return this.f31487a.x();
    }

    @Override
    public HostnameVerifier getHostnameVerifier() {
        return this.f31488b.getHostnameVerifier();
    }

    @Override
    public long getIfModifiedSince() {
        return this.f31487a.y();
    }

    @Override
    public InputStream getInputStream() {
        return this.f31487a.z();
    }

    @Override
    public boolean getInstanceFollowRedirects() {
        return this.f31487a.A();
    }

    @Override
    public long getLastModified() {
        return this.f31487a.B();
    }

    @Override
    public Certificate[] getLocalCertificates() {
        return this.f31488b.getLocalCertificates();
    }

    @Override
    public Principal getLocalPrincipal() {
        return this.f31488b.getLocalPrincipal();
    }

    @Override
    public OutputStream getOutputStream() {
        return this.f31487a.C();
    }

    @Override
    public Principal getPeerPrincipal() {
        return this.f31488b.getPeerPrincipal();
    }

    @Override
    public Permission getPermission() {
        return this.f31487a.D();
    }

    @Override
    public int getReadTimeout() {
        return this.f31487a.E();
    }

    @Override
    public String getRequestMethod() {
        return this.f31487a.F();
    }

    @Override
    public Map getRequestProperties() {
        return this.f31487a.G();
    }

    @Override
    public String getRequestProperty(String str) {
        return this.f31487a.H(str);
    }

    @Override
    public int getResponseCode() {
        return this.f31487a.I();
    }

    @Override
    public String getResponseMessage() {
        return this.f31487a.J();
    }

    @Override
    public SSLSocketFactory getSSLSocketFactory() {
        return this.f31488b.getSSLSocketFactory();
    }

    @Override
    public Certificate[] getServerCertificates() {
        return this.f31488b.getServerCertificates();
    }

    @Override
    public URL getURL() {
        return this.f31487a.K();
    }

    @Override
    public boolean getUseCaches() {
        return this.f31487a.L();
    }

    public int hashCode() {
        return this.f31487a.hashCode();
    }

    @Override
    public void setAllowUserInteraction(boolean z10) {
        this.f31487a.M(z10);
    }

    @Override
    public void setChunkedStreamingMode(int i10) {
        this.f31487a.N(i10);
    }

    @Override
    public void setConnectTimeout(int i10) {
        this.f31487a.O(i10);
    }

    @Override
    public void setDefaultUseCaches(boolean z10) {
        this.f31487a.P(z10);
    }

    @Override
    public void setDoInput(boolean z10) {
        this.f31487a.Q(z10);
    }

    @Override
    public void setDoOutput(boolean z10) {
        this.f31487a.R(z10);
    }

    @Override
    public void setFixedLengthStreamingMode(int i10) {
        this.f31487a.S(i10);
    }

    @Override
    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.f31488b.setHostnameVerifier(hostnameVerifier);
    }

    @Override
    public void setIfModifiedSince(long j10) {
        this.f31487a.U(j10);
    }

    @Override
    public void setInstanceFollowRedirects(boolean z10) {
        this.f31487a.V(z10);
    }

    @Override
    public void setReadTimeout(int i10) {
        this.f31487a.W(i10);
    }

    @Override
    public void setRequestMethod(String str) {
        this.f31487a.X(str);
    }

    @Override
    public void setRequestProperty(String str, String str2) {
        this.f31487a.Y(str, str2);
    }

    @Override
    public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.f31488b.setSSLSocketFactory(sSLSocketFactory);
    }

    @Override
    public void setUseCaches(boolean z10) {
        this.f31487a.Z(z10);
    }

    @Override
    public String toString() {
        return this.f31487a.toString();
    }

    @Override
    public boolean usingProxy() {
        return this.f31487a.b0();
    }

    @Override
    public Object getContent(Class[] clsArr) {
        return this.f31487a.g(clsArr);
    }

    @Override
    public String getHeaderField(String str) {
        return this.f31487a.s(str);
    }

    @Override
    public void setFixedLengthStreamingMode(long j10) {
        this.f31487a.T(j10);
    }
}
