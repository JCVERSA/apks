package com.danikula.videocache;

import java.io.IOException;
import java.io.OutputStream;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

class j {

    private final ExecutorService f23394a = Executors.newSingleThreadExecutor();

    private final String f23395b;

    private final int f23396c;

    private class a implements Callable {
        @Override
        public Boolean call() {
            return Boolean.valueOf(j.this.f());
        }

        private a() {
        }
    }

    j(String str, int i10) {
        this.f23395b = (String) l.c(str);
        this.f23396c = i10;
    }

    private List b() {
        try {
            return ProxySelector.getDefault().select(new URI(c()));
        } catch (URISyntaxException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private String c() {
        return String.format(Locale.US, "http://%s:%d/%s", this.f23395b, Integer.valueOf(this.f23396c), "ping");
    }

    public boolean f() {
        h hVar = new h(c());
        try {
            byte[] bytes = "ping ok".getBytes();
            hVar.d(0L);
            byte[] bArr = new byte[bytes.length];
            hVar.f(bArr);
            boolean zEquals = Arrays.equals(bytes, bArr);
            q.c("Ping response: `" + new String(bArr) + "`, pinged? " + zEquals);
            return zEquals;
        } catch (ProxyCacheException unused) {
            q.b("Error reading ping response");
            return false;
        } finally {
            hVar.a();
        }
    }

    boolean d(String str) {
        return "ping".equals(str);
    }

    boolean e(int i10, int i11) {
        l.a(i10 >= 1);
        l.a(i11 > 0);
        int i12 = 0;
        while (i12 < i10) {
            try {
                if (((Boolean) this.f23394a.submit(new a()).get(i11, TimeUnit.MILLISECONDS)).booleanValue()) {
                    return true;
                }
                i12++;
                i11 *= 2;
            } catch (InterruptedException | ExecutionException unused) {
                q.b("Error pinging server due to unexpected error");
            } catch (TimeoutException unused2) {
                q.f("Error pinging server (attempt: " + i12 + ", timeout: " + i11 + "). ");
            }
        }
        q.b(String.format(Locale.US, "Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, report at https://github.com/danikula/AndroidVideoCache/issues/134. Default proxies are: %s", Integer.valueOf(i12), Integer.valueOf(i11 / 2), b()));
        return false;
    }

    void g(Socket socket) throws IOException {
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write("HTTP/1.1 200 OK\n\n".getBytes());
        outputStream.write("ping ok".getBytes());
    }
}
