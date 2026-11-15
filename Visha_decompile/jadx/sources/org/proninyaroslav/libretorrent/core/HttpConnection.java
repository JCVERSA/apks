package org.proninyaroslav.libretorrent.core;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.GeneralSecurityException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import org.proninyaroslav.libretorrent.core.utils.Utils;

public class HttpConnection implements Runnable {
    private static final int DEFAULT_TIMEOUT = 20000;
    private static final int MAX_REDIRECTS = 5;
    private Listener listener;
    private SSLContext sslContext = Utils.d();
    private URL url;

    public interface Listener {
        void a(String str);

        void b(IOException iOException);

        void c(HttpURLConnection httpURLConnection);

        void d();

        void e(HttpURLConnection httpURLConnection, int i, String str);
    }

    public HttpConnection(String str) throws GeneralSecurityException, MalformedURLException {
        this.url = new URL(str);
    }

    @Override
    public void run() throws Throwable {
        Listener listener;
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i >= 5) {
                Listener listener2 = this.listener;
                if (listener2 != null) {
                    listener2.d();
                    return;
                }
                return;
            }
            HttpURLConnection httpURLConnection = null;
            try {
                try {
                    HttpURLConnection httpURLConnection2 = (HttpURLConnection) this.url.openConnection();
                    try {
                        httpURLConnection2.setInstanceFollowRedirects(false);
                        httpURLConnection2.setConnectTimeout(20000);
                        httpURLConnection2.setReadTimeout(20000);
                        if (httpURLConnection2 instanceof HttpsURLConnection) {
                            ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(this.sslContext.getSocketFactory());
                        }
                        Listener listener3 = this.listener;
                        if (listener3 != null) {
                            listener3.c(httpURLConnection2);
                        }
                        int responseCode = httpURLConnection2.getResponseCode();
                        switch (responseCode) {
                            case 301:
                            case 302:
                            case 303:
                                URL url = new URL(this.url, httpURLConnection2.getHeaderField("Location"));
                                this.url = url;
                                if (responseCode == 301 && (listener = this.listener) != null) {
                                    listener.a(url.toString());
                                }
                                httpURLConnection2.disconnect();
                                i = i2;
                                break;
                            default:
                                Listener listener4 = this.listener;
                                if (listener4 != null) {
                                    listener4.e(httpURLConnection2, responseCode, httpURLConnection2.getResponseMessage());
                                    break;
                                }
                                httpURLConnection2.disconnect();
                                return;
                        }
                    } catch (IOException e) {
                        e = e;
                        httpURLConnection = httpURLConnection2;
                        Listener listener5 = this.listener;
                        if (listener5 != null) {
                            listener5.b(e);
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        httpURLConnection = httpURLConnection2;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e2) {
                e = e2;
            }
        }
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }
}
