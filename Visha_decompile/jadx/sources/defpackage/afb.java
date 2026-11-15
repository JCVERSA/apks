package defpackage;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URL;
import java.net.URLConnection;

public class afb {
    public final URL a;
    public URLConnection b;
    public InputStream c;
    public Boolean d;

    public afb(URL url, Boolean bool) throws IOException {
        this.a = url;
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        this.b = uRLConnectionOpenConnection;
        this.d = bool;
        if (bool != null) {
            uRLConnectionOpenConnection.setUseCaches(bool.booleanValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a() {
        try {
            InputStream inputStream = this.c;
            if (inputStream != null) {
                inputStream.close();
            } else {
                this.b.getInputStream().close();
            }
        } finally {
            this.c = null;
            this.b = null;
        }
    }

    public InputStream b() throws IOException {
        InputStream inputStream = this.c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
            this.b = this.a.openConnection();
        }
        InputStream inputStream2 = this.b.getInputStream();
        this.c = inputStream2;
        return inputStream2;
    }

    public Boolean c() {
        return this.d;
    }

    public long d() {
        URLConnection uRLConnection = this.b;
        if (!(uRLConnection instanceof JarURLConnection)) {
            long lastModified = uRLConnection.getLastModified();
            return (lastModified == -1 && this.a.getProtocol().equals("file")) ? new File(this.a.getFile()).lastModified() : lastModified;
        }
        URL jarFileURL = ((JarURLConnection) uRLConnection).getJarFileURL();
        if (jarFileURL.getProtocol().equals("file")) {
            return new File(jarFileURL.getFile()).lastModified();
        }
        URLConnection uRLConnectionOpenConnection = null;
        try {
            uRLConnectionOpenConnection = jarFileURL.openConnection();
            long lastModified2 = uRLConnectionOpenConnection.getLastModified();
            try {
                uRLConnectionOpenConnection.getInputStream().close();
            } catch (IOException unused) {
            }
            return lastModified2;
        } catch (IOException unused2) {
            if (uRLConnectionOpenConnection != null) {
                try {
                    uRLConnectionOpenConnection.getInputStream().close();
                } catch (IOException unused3) {
                }
            }
            return -1L;
        } catch (Throwable th) {
            if (uRLConnectionOpenConnection != null) {
                try {
                    uRLConnectionOpenConnection.getInputStream().close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    public void e(boolean z) {
        URLConnection uRLConnection = this.b;
        if (uRLConnection != null) {
            uRLConnection.setUseCaches(z);
            this.d = Boolean.valueOf(z);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof afb) {
            return this.a.equals(((afb) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a.toString();
    }
}
