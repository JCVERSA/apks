package defpackage;

import com.danikula.videocache.ProxyCacheException;
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

public class k18 {
    public static final qq5 d = sq5.j("Pinger");
    public final ExecutorService a = Executors.newSingleThreadExecutor();
    public final String b;
    public final int c;

    public class b implements Callable {
        public b() {
        }

        @Override
        public Boolean call() {
            return Boolean.valueOf(k18.this.f());
        }
    }

    public k18(String str, int i) {
        this.b = (String) ae8.d(str);
        this.c = i;
    }

    public final List b() {
        try {
            return ProxySelector.getDefault().select(new URI(c()));
        } catch (URISyntaxException e) {
            throw new IllegalStateException(e);
        }
    }

    public final String c() {
        return String.format(Locale.US, "http://%s:%d/%s", this.b, Integer.valueOf(this.c), "ping");
    }

    public boolean d(String str) {
        return "ping".equals(str);
    }

    public boolean e(int i, int i2) {
        ae8.b(i >= 1);
        ae8.b(i2 > 0);
        int i3 = 0;
        while (i3 < i) {
            try {
                if (((Boolean) this.a.submit(new b()).get(i2, TimeUnit.MILLISECONDS)).booleanValue()) {
                    return true;
                }
                i3++;
                i2 *= 2;
            } catch (InterruptedException | ExecutionException e) {
                d.error("Error pinging server due to unexpected error", e);
            } catch (TimeoutException unused) {
                d.warn("Error pinging server (attempt: " + i3 + ", timeout: " + i2 + "). ");
            }
        }
        String str = String.format(Locale.US, "Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, report at https://github.com/danikula/AndroidVideoCache/issues/134. Default proxies are: %s", Integer.valueOf(i3), Integer.valueOf(i2 / 2), b());
        d.error(str, new ProxyCacheException(str));
        return false;
    }

    public final boolean f() {
        ot4 ot4Var = new ot4(c());
        try {
            byte[] bytes = "ping ok".getBytes();
            ot4Var.a(0L);
            byte[] bArr = new byte[bytes.length];
            ot4Var.read(bArr);
            boolean zEquals = Arrays.equals(bytes, bArr);
            d.info("Ping response: `" + new String(bArr) + "`, pinged? " + zEquals);
            return zEquals;
        } catch (ProxyCacheException e) {
            d.error("Error reading ping response", e);
            return false;
        } finally {
            ot4Var.close();
        }
    }

    public void g(Socket socket) throws IOException {
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write("HTTP/1.1 200 OK\n\n".getBytes());
        outputStream.write("ping ok".getBytes());
    }
}
