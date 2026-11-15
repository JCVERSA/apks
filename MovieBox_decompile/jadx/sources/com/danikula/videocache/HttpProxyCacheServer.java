package com.danikula.videocache;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class HttpProxyCacheServer {

    private final Object f23357a;

    private final ExecutorService f23358b;

    private final Map f23359c;

    private ServerSocket f23360d;

    private int f23361e;

    private Thread f23362f;

    private c f23363g;

    private j f23364h;

    private final class SocketProcessorRunnable implements Runnable {
        private final d request;
        private final Socket socket;

        public SocketProcessorRunnable(Socket socket, d dVar) {
            this.socket = socket;
            this.request = dVar;
        }

        @Override
        public void run() {
            HttpProxyCacheServer.this.n(this.socket, this.request);
        }
    }

    private final class WaitRequestsRunnable implements Runnable {
        private final CountDownLatch startSignal;

        public WaitRequestsRunnable(CountDownLatch countDownLatch) {
            this.startSignal = countDownLatch;
        }

        @Override
        public void run() {
            this.startSignal.countDown();
            HttpProxyCacheServer.this.p();
        }
    }

    public static final class a {

        private File f23365a;

        private r7.b f23366b = new r7.a();

        private com.danikula.videocache.a f23367c;

        public a(Context context) {
            this.f23365a = p.b(context);
        }

        private c b() {
            return new c(this.f23365a, this.f23366b, this.f23367c);
        }

        public HttpProxyCacheServer a() {
            return new HttpProxyCacheServer(b());
        }

        public a c(File file) {
            this.f23365a = (File) l.c(file);
            return this;
        }

        public a d(com.danikula.videocache.a aVar) {
            this.f23367c = aVar;
            return this;
        }
    }

    private String c(String str) {
        return String.format(Locale.US, "http://%s:%d/%s", "127.0.0.1", Integer.valueOf(this.f23361e), n.c(str));
    }

    private void d(Socket socket) {
        try {
            if (socket.isClosed()) {
                return;
            }
            socket.close();
        } catch (IOException e10) {
            m(new ProxyCacheException("Error closing socket", e10));
        }
    }

    private void e(Socket socket) {
        try {
            if (socket.isInputShutdown()) {
                return;
            }
            socket.shutdownInput();
        } catch (SocketException unused) {
            q.a("Releasing input stream… Socket is closed by client.");
        } catch (IOException e10) {
            m(new ProxyCacheException("Error closing socket input stream", e10));
        }
    }

    private void f(Socket socket) {
        try {
            if (socket.isOutputShutdown()) {
                return;
            }
            socket.shutdownOutput();
        } catch (IOException unused) {
            q.f("Failed to close socket on proxy side: {}. It seems client have already closed connection.");
        }
    }

    private g h(String str) {
        g gVar;
        synchronized (this.f23357a) {
            try {
                gVar = (g) this.f23359c.get(str);
                if (gVar == null) {
                    gVar = new g(str, this.f23363g);
                    this.f23359c.put(str, gVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVar;
    }

    private int i() {
        int iB;
        synchronized (this.f23357a) {
            try {
                Iterator it = this.f23359c.values().iterator();
                iB = 0;
                while (it.hasNext()) {
                    iB += ((g) it.next()).b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iB;
    }

    private boolean l() {
        return this.f23364h.e(3, 70);
    }

    private void m(Throwable th2) {
        q.b("HttpProxyCacheServer error");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.danikula.videocache.HttpProxyCacheServer] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.net.Socket] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.net.Socket] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.StringBuilder] */
    public void n(Socket socket, d dVar) {
        g gVarH = null;
        try {
            try {
                String strB = n.b(dVar.f23373a);
                q.a("Request to cache proxy， " + Thread.currentThread().getName() + "， " + dVar + ", url = " + strB);
                if (this.f23364h.d(strB)) {
                    this.f23364h.g(socket);
                } else {
                    gVarH = h(strB);
                    gVarH.d(dVar, socket);
                }
                o(socket);
                if (gVarH != null) {
                    gVarH.f();
                }
                socket = new StringBuilder();
            } catch (Throwable th2) {
                o(socket);
                if (0 != 0) {
                    gVarH.f();
                }
                q.a("Opened connections: " + i());
                throw th2;
            }
        } catch (SocketException unused) {
            q.a("Closing socket… Socket is closed by client.");
            o(socket);
            if (0 != 0) {
                gVarH.f();
            }
            socket = new StringBuilder();
        } catch (Throwable th3) {
            m(new ProxyCacheException("Error processing request", th3));
            o(socket);
            if (0 != 0) {
                gVarH.f();
            }
            socket = new StringBuilder();
        }
        socket.append("Opened connections: ");
        socket.append(i());
        q.a(socket.toString());
    }

    private void o(Socket socket) {
        e(socket);
        f(socket);
        d(socket);
    }

    public void p() {
        try {
            q.a("waitForRequest~ isInterrupted = " + Thread.currentThread().isInterrupted());
            while (!Thread.currentThread().isInterrupted()) {
                Socket socketAccept = this.f23360d.accept();
                q.c("Accept new socket " + socketAccept);
                d dVarC = d.c(socketAccept.getInputStream());
                String strB = n.b(dVarC.f23373a);
                g gVar = (g) this.f23359c.get(strB);
                if (gVar != null) {
                    gVar.f();
                }
                if (!this.f23364h.d(strB)) {
                    com.transsnet.downloader.util.h.f57716a.b("3");
                }
                this.f23358b.submit(new SocketProcessorRunnable(socketAccept, dVarC));
            }
        } catch (Throwable th2) {
            q.c("waitForRequest error = " + th2.toString());
            m(new ProxyCacheException("Error during waiting connection", th2));
        }
    }

    public void g() {
        synchronized (this.f23357a) {
            try {
                Iterator it = this.f23359c.values().iterator();
                while (it.hasNext()) {
                    ((g) it.next()).a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String j(String str, String str2, boolean z10) {
        return k(str, str2, false, z10);
    }

    public String k(String str, String str2, boolean z10, boolean z11) {
        if (z11) {
            return l() ? c(str) : str;
        }
        return c(str);
    }

    private HttpProxyCacheServer(c cVar) {
        this.f23357a = new Object();
        this.f23358b = Executors.newFixedThreadPool(8);
        this.f23359c = new ConcurrentHashMap();
        this.f23363g = (c) l.c(cVar);
        try {
            ServerSocket serverSocket = new ServerSocket(0, 8, InetAddress.getByName("127.0.0.1"));
            this.f23360d = serverSocket;
            int localPort = serverSocket.getLocalPort();
            this.f23361e = localPort;
            i.a("127.0.0.1", localPort);
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Thread thread = new Thread(new WaitRequestsRunnable(countDownLatch));
            this.f23362f = thread;
            thread.start();
            countDownLatch.await();
            this.f23364h = new j("127.0.0.1", this.f23361e);
            q.a("init success");
        } catch (Throwable unused) {
            this.f23358b.shutdown();
        }
    }
}
