package com.danikula.videocache;

import android.content.Context;
import android.net.Uri;
import com.mgtv.downloader.p2p.utils.ImgoP2pConstants;
import defpackage.ae8;
import defpackage.bu9;
import defpackage.by9;
import defpackage.cu9;
import defpackage.hc2;
import defpackage.hh4;
import defpackage.jt4;
import defpackage.k18;
import defpackage.oe1;
import defpackage.p93;
import defpackage.po4;
import defpackage.pua;
import defpackage.qq5;
import defpackage.rq3;
import defpackage.rx4;
import defpackage.sp0;
import defpackage.sq5;
import defpackage.vj8;
import defpackage.w96;
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
    public static final qq5 i = sq5.j("HttpProxyCacheServer");
    public final Object a;
    public final ExecutorService b;
    public final Map c;
    public final ServerSocket d;
    public final int e;
    public final Thread f;
    public final oe1 g;
    public final k18 h;

    public final class SocketProcessorRunnable implements Runnable {
        private final Socket socket;

        public SocketProcessorRunnable(Socket socket) {
            this.socket = socket;
        }

        @Override
        public void run() {
            HttpProxyCacheServer.this.o(this.socket);
        }
    }

    public final class WaitRequestsRunnable implements Runnable {
        private final CountDownLatch startSignal;

        public WaitRequestsRunnable(CountDownLatch countDownLatch) {
            this.startSignal = countDownLatch;
        }

        @Override
        public void run() {
            this.startSignal.countDown();
            HttpProxyCacheServer.this.s();
        }
    }

    public static final class b {
        public File a;
        public bu9 d;
        public hc2 c = new pua(536870912);
        public rq3 b = new w96();
        public po4 e = new p93();

        public b(Context context) {
            this.d = cu9.b(context);
            this.a = by9.c(context);
        }

        public HttpProxyCacheServer a() {
            return new HttpProxyCacheServer(b());
        }

        public final oe1 b() {
            return new oe1(this.a, this.b, this.c, this.d, this.e);
        }

        public b c(File file) {
            this.a = (File) ae8.d(file);
            return this;
        }

        public b d(long j) {
            this.c = new pua(j);
            return this;
        }
    }

    public final String c(String str) {
        return String.format(Locale.US, "http://%s:%d/%s", ImgoP2pConstants.LOCAL_HOST, Integer.valueOf(this.e), vj8.f(str));
    }

    public final void d(Socket socket) {
        try {
            if (socket.isClosed()) {
                return;
            }
            socket.close();
        } catch (IOException e) {
            n(new ProxyCacheException("Error closing socket", e));
        }
    }

    public final void e(Socket socket) {
        try {
            if (socket.isInputShutdown()) {
                return;
            }
            socket.shutdownInput();
        } catch (SocketException unused) {
            i.debug("Releasing input stream… Socket is closed by client.");
        } catch (IOException e) {
            n(new ProxyCacheException("Error closing socket input stream", e));
        }
    }

    public final void f(Socket socket) {
        try {
            if (socket.isOutputShutdown()) {
                return;
            }
            socket.shutdownOutput();
        } catch (IOException e) {
            i.warn("Failed to close socket on proxy side: {}. It seems client have already closed connection.", e.getMessage());
        }
    }

    public final File g(String str) {
        oe1 oe1Var = this.g;
        return new File(oe1Var.a, oe1Var.b.a(str));
    }

    public final jt4 h(String str) {
        jt4 jt4Var;
        synchronized (this.a) {
            try {
                jt4Var = (jt4) this.c.get(str);
                if (jt4Var == null) {
                    jt4Var = new jt4(str, this.g);
                    this.c.put(str, jt4Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return jt4Var;
    }

    public final int i() {
        int iB;
        synchronized (this.a) {
            try {
                Iterator it = this.c.values().iterator();
                iB = 0;
                while (it.hasNext()) {
                    iB += ((jt4) it.next()).b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iB;
    }

    public String j(String str) {
        return k(str, true);
    }

    public String k(String str, boolean z) {
        if (!z || !m(str)) {
            return l() ? c(str) : str;
        }
        File fileG = g(str);
        r(fileG);
        return Uri.fromFile(fileG).toString();
    }

    public final boolean l() {
        return this.h.e(3, 70);
    }

    public boolean m(String str) {
        ae8.e(str, "Url can't be null!");
        return g(str).exists();
    }

    public final void n(Throwable th) {
        i.error("HttpProxyCacheServer error", th);
    }

    public final void o(Socket socket) {
        try {
            try {
                try {
                    hh4 hh4VarC = hh4.c(socket.getInputStream());
                    qq5 qq5Var = i;
                    qq5Var.debug("Request to cache proxy:" + hh4VarC);
                    String strE = vj8.e(hh4VarC.a);
                    if (this.h.d(strE)) {
                        this.h.g(socket);
                    } else {
                        h(strE).d(hh4VarC, socket);
                    }
                    q(socket);
                    qq5Var.debug("Opened connections: " + i());
                } catch (SocketException unused) {
                    qq5 qq5Var2 = i;
                    qq5Var2.debug("Closing socket… Socket is closed by client.");
                    q(socket);
                    qq5Var2.debug("Opened connections: " + i());
                }
            } catch (ProxyCacheException | IOException e) {
                n(new ProxyCacheException("Error processing request", e));
                q(socket);
                i.debug("Opened connections: " + i());
            }
        } catch (Throwable th) {
            q(socket);
            i.debug("Opened connections: " + i());
            throw th;
        }
    }

    public void p(sp0 sp0Var, String str) {
        ae8.a(sp0Var, str);
        synchronized (this.a) {
            try {
                h(str).e(sp0Var);
            } catch (ProxyCacheException e) {
                i.warn("Error registering cache listener", (Throwable) e);
            }
        }
    }

    public final void q(Socket socket) {
        e(socket);
        f(socket);
        d(socket);
    }

    public final void r(File file) {
        try {
            this.g.c.a(file);
        } catch (IOException e) {
            i.error("Error touching file " + file, e);
        }
    }

    public final void s() {
        while (!Thread.currentThread().isInterrupted()) {
            try {
                Socket socketAccept = this.d.accept();
                i.debug("Accept new socket " + socketAccept);
                this.b.submit(new SocketProcessorRunnable(socketAccept));
            } catch (IOException e) {
                n(new ProxyCacheException("Error during waiting connection", e));
                return;
            }
        }
    }

    public HttpProxyCacheServer(oe1 oe1Var) {
        this.a = new Object();
        this.b = Executors.newFixedThreadPool(8);
        this.c = new ConcurrentHashMap();
        this.g = (oe1) ae8.d(oe1Var);
        try {
            ServerSocket serverSocket = new ServerSocket(0, 8, InetAddress.getByName(ImgoP2pConstants.LOCAL_HOST));
            this.d = serverSocket;
            int localPort = serverSocket.getLocalPort();
            this.e = localPort;
            rx4.a(ImgoP2pConstants.LOCAL_HOST, localPort);
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Thread thread = new Thread(new WaitRequestsRunnable(countDownLatch));
            this.f = thread;
            thread.start();
            countDownLatch.await();
            this.h = new k18(ImgoP2pConstants.LOCAL_HOST, localPort);
            i.info("Proxy cache server started. Is it alive? " + l());
        } catch (IOException | InterruptedException e) {
            this.b.shutdown();
            throw new IllegalStateException("Error starting local proxy server", e);
        }
    }
}
