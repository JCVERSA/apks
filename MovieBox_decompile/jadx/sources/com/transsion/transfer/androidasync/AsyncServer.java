package com.transsion.transfer.androidasync;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.ClosedSelectorException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.nio.channels.spi.SelectorProvider;
import java.util.Arrays;
import java.util.Comparator;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class AsyncServer {

    static AsyncServer f53065g = new AsyncServer();

    private static ExecutorService f53066h = A("AsyncServer-worker-");

    private static final Comparator f53067i = new Comparator<InetAddress>() {
        @Override
        public int compare(InetAddress inetAddress, InetAddress inetAddress2) {
            boolean z10 = inetAddress instanceof Inet4Address;
            if (z10 && (inetAddress2 instanceof Inet4Address)) {
                return 0;
            }
            if ((inetAddress instanceof Inet6Address) && (inetAddress2 instanceof Inet6Address)) {
                return 0;
            }
            return (z10 && (inetAddress2 instanceof Inet6Address)) ? -1 : 1;
        }
    };

    private static ExecutorService f53068j = A("AsyncServer-resolver-");

    private static final ThreadLocal f53069k = new ThreadLocal();

    private x f53070a;

    String f53071b;

    boolean f53072c;

    int f53073d;

    PriorityQueue f53074e;

    Thread f53075f;

    class AnonymousClass7 implements Runnable {
        final AsyncDatagramSocket val$handler;
        final String val$host;
        final int val$port;
        final DatagramChannel val$socket;

        AnonymousClass7(String str, int i10, AsyncDatagramSocket asyncDatagramSocket, DatagramChannel datagramChannel) {
            this.val$host = str;
            this.val$port = i10;
            this.val$handler = asyncDatagramSocket;
            this.val$socket = datagramChannel;
        }

        @Override
        public void run() {
            try {
                InetSocketAddress inetSocketAddress = new InetSocketAddress(this.val$host, this.val$port);
                AsyncServer.this.s(this.val$handler);
                this.val$socket.connect(inetSocketAddress);
            } catch (IOException e10) {
                Log.e("NIO", "Datagram error", e10);
                com.transsion.transfer.androidasync.util.d.a(this.val$socket);
            }
        }
    }

    class AnonymousClass9 implements Runnable {
        AnonymousClass9() {
        }

        @Override
        public void run() {
            if (AsyncServer.this.f53070a == null) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Key Count: ");
            sb2.append(AsyncServer.this.f53070a.h().size());
            for (SelectionKey selectionKey : AsyncServer.this.f53070a.h()) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Key: ");
                sb3.append(selectionKey);
            }
        }
    }

    private static class AsyncSelectorException extends IOException {
        public AsyncSelectorException(Exception exc) {
            super(exc);
        }
    }

    private static class RunnableWrapper implements Runnable {
        Handler handler;
        boolean hasRun;
        Runnable runnable;
        ThreadQueue threadQueue;

        private RunnableWrapper() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void run() {
            synchronized (this) {
                try {
                    if (this.hasRun) {
                        return;
                    }
                    this.hasRun = true;
                    try {
                        this.runnable.run();
                    } finally {
                        this.threadQueue.remove(this);
                        this.handler.removeCallbacks(this);
                        this.threadQueue = null;
                        this.handler = null;
                        this.runnable = null;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private static class Scheduled implements com.transsion.transfer.androidasync.future.a, Runnable {
        boolean cancelled;
        public Runnable runnable;
        public AsyncServer server;
        public long time;

        public Scheduled(AsyncServer asyncServer, Runnable runnable, long j10) {
            this.server = asyncServer;
            this.runnable = runnable;
            this.time = j10;
        }

        @Override
        public boolean cancel() {
            boolean zRemove;
            synchronized (this.server) {
                zRemove = this.server.f53074e.remove(this);
                this.cancelled = zRemove;
            }
            return zRemove;
        }

        @Override
        public boolean isCancelled() {
            return this.cancelled;
        }

        public boolean isDone() {
            boolean z10;
            synchronized (this.server) {
                try {
                    z10 = (this.cancelled || this.server.f53074e.contains(this)) ? false : true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return z10;
        }

        @Override
        public void run() {
            this.runnable.run();
        }
    }

    static class Scheduler implements Comparator<Scheduled> {
        public static Scheduler INSTANCE = new Scheduler();

        private Scheduler() {
        }

        @Override
        public int compare(Scheduled scheduled, Scheduled scheduled2) {
            long j10 = scheduled.time;
            long j11 = scheduled2.time;
            if (j10 == j11) {
                return 0;
            }
            return j10 > j11 ? 1 : -1;
        }
    }

    class a implements com.transsion.transfer.androidasync.future.g {

        final st.b f53080a;

        final com.transsion.transfer.androidasync.future.w f53081b;

        final InetSocketAddress f53082c;

        a(st.b bVar, com.transsion.transfer.androidasync.future.w wVar, InetSocketAddress inetSocketAddress) {
            this.f53080a = bVar;
            this.f53081b = wVar;
            this.f53082c = inetSocketAddress;
        }

        @Override
        public void a(Exception exc, InetAddress inetAddress) {
            if (exc == null) {
                this.f53081b.E((b) AsyncServer.this.l(new InetSocketAddress(inetAddress, this.f53082c.getPort()), this.f53080a));
            } else {
                this.f53080a.a(exc, null);
                this.f53081b.G(exc);
            }
        }
    }

    private class b extends com.transsion.transfer.androidasync.future.w {

        SocketChannel f53084f;

        st.b f53085g;

        @Override
        protected void cancelCleanup() {
            super.cancelCleanup();
            try {
                SocketChannel socketChannel = this.f53084f;
                if (socketChannel != null) {
                    socketChannel.close();
                }
            } catch (IOException unused) {
            }
        }

        private b() {
        }
    }

    private static class c implements ThreadFactory {

        private final ThreadGroup f53087a;

        private final AtomicInteger f53088b = new AtomicInteger(1);

        private final String f53089c;

        c(String str) {
            SecurityManager securityManager = System.getSecurityManager();
            this.f53087a = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
            this.f53089c = str;
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.f53087a, runnable, this.f53089c + this.f53088b.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    private static class d {

        Object f53090a;

        private d() {
        }
    }

    public AsyncServer() {
        this(null);
    }

    private static ExecutorService A(String str) {
        return new ThreadPoolExecutor(0, 4, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new c(str));
    }

    private void F() {
        synchronized (this) {
            try {
                x xVar = this.f53070a;
                if (xVar != null) {
                    PriorityQueue priorityQueue = this.f53074e;
                    try {
                        try {
                            I(this, xVar, priorityQueue);
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    } catch (AsyncSelectorException unused2) {
                        xVar.d().close();
                        return;
                    }
                }
                try {
                    final x xVar2 = new x(SelectorProvider.provider().openSelector());
                    this.f53070a = xVar2;
                    final PriorityQueue priorityQueue2 = this.f53074e;
                    Thread thread = new Thread(this.f53071b) {
                        @Override
                        public void run() {
                            try {
                                AsyncServer.f53069k.set(AsyncServer.this);
                                AsyncServer.G(AsyncServer.this, xVar2, priorityQueue2);
                            } finally {
                                AsyncServer.f53069k.remove();
                            }
                        }
                    };
                    this.f53075f = thread;
                    thread.start();
                } catch (IOException e10) {
                    throw new RuntimeException("unable to create selector?", e10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void G(AsyncServer asyncServer, x xVar, PriorityQueue priorityQueue) {
        while (true) {
            try {
                I(asyncServer, xVar, priorityQueue);
            } catch (AsyncSelectorException e10) {
                boolean z10 = e10.getCause() instanceof ClosedSelectorException;
                com.transsion.transfer.androidasync.util.d.a(xVar);
            }
            synchronized (asyncServer) {
                try {
                    if (!xVar.isOpen() || (xVar.h().size() <= 0 && priorityQueue.size() <= 0)) {
                        break;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        J(xVar);
        if (asyncServer.f53070a == xVar) {
            asyncServer.f53074e = new PriorityQueue(1, Scheduler.INSTANCE);
            asyncServer.f53070a = null;
            asyncServer.f53075f = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r3v18, types: [st.b] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.nio.channels.SelectionKey] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.nio.channels.SelectionKey] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v7, types: [st.f] */
    /* JADX WARN: Type inference failed for: r4v11, types: [com.transsion.transfer.androidasync.AsyncServer$b, com.transsion.transfer.androidasync.future.w] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.nio.channels.SelectionKey] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r6v4, types: [com.transsion.transfer.androidasync.AsyncNetworkSocket, com.transsion.transfer.androidasync.j, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v4, types: [com.transsion.transfer.androidasync.AsyncNetworkSocket, com.transsion.transfer.androidasync.j, java.lang.Object] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private static void I(AsyncServer asyncServer, x xVar, PriorityQueue priorityQueue) throws AsyncSelectorException {
        ?? r11;
        ?? r10;
        long jZ = z(asyncServer, priorityQueue);
        try {
            synchronized (asyncServer) {
                try {
                    if (xVar.m() != 0) {
                        r11 = false;
                    } else if (xVar.h().size() == 0 && jZ == Long.MAX_VALUE) {
                        return;
                    } else {
                        r11 = true;
                    }
                    if (r11 != false) {
                        if (jZ == Long.MAX_VALUE) {
                            xVar.k();
                        } else {
                            xVar.l(jZ);
                        }
                    }
                    Set<??> setN = xVar.n();
                    for (?? r12 : setN) {
                        try {
                            SocketChannel socketChannel = null;
                            ?? Register = 0;
                            if (r12.isAcceptable()) {
                                try {
                                    SocketChannel socketChannelAccept = ((ServerSocketChannel) r12.channel()).accept();
                                    if (socketChannelAccept != null) {
                                        try {
                                            socketChannelAccept.configureBlocking(false);
                                            socketChannelAccept.socket().setKeepAlive(true);
                                            socketChannelAccept.socket().setTcpNoDelay(true);
                                            socketChannelAccept.socket().setSoLinger(true, 0);
                                            Register = socketChannelAccept.register(xVar.d(), 1);
                                            ?? r13 = (st.f) r12.attachment();
                                            ?? asyncNetworkSocket = new AsyncNetworkSocket();
                                            asyncNetworkSocket.f(socketChannelAccept, (InetSocketAddress) socketChannelAccept.socket().getRemoteSocketAddress());
                                            asyncNetworkSocket.C(asyncServer, Register);
                                            Register.attach(asyncNetworkSocket);
                                            r13.t(asyncNetworkSocket);
                                        } catch (IOException unused) {
                                            r10 = Register;
                                            socketChannel = socketChannelAccept;
                                            com.transsion.transfer.androidasync.util.d.a(socketChannel);
                                            if (r10 != 0) {
                                                r10.cancel();
                                            }
                                        }
                                    }
                                } catch (IOException unused2) {
                                    r10 = 0;
                                }
                            } else if (r12.isReadable()) {
                                asyncServer.B(((AsyncNetworkSocket) r12.attachment()).p());
                            } else if (r12.isWritable()) {
                                ((AsyncNetworkSocket) r12.attachment()).o();
                            } else {
                                if (!r12.isConnectable()) {
                                    throw new RuntimeException("Unknown key state.");
                                }
                                ?? r14 = (b) r12.attachment();
                                SocketChannel socketChannel2 = (SocketChannel) r12.channel();
                                r12.interestOps(1);
                                try {
                                    socketChannel2.finishConnect();
                                    ?? asyncNetworkSocket2 = new AsyncNetworkSocket();
                                    asyncNetworkSocket2.C(asyncServer, r12);
                                    asyncNetworkSocket2.f(socketChannel2, (InetSocketAddress) socketChannel2.socket().getRemoteSocketAddress());
                                    r12.attach(asyncNetworkSocket2);
                                    if (r14.J(asyncNetworkSocket2)) {
                                        r14.f53085g.a(null, asyncNetworkSocket2);
                                    }
                                } catch (IOException e10) {
                                    r12.cancel();
                                    com.transsion.transfer.androidasync.util.d.a(socketChannel2);
                                    if (r14.G(e10)) {
                                        r14.f53085g.a(e10, null);
                                    }
                                }
                            }
                        } catch (CancelledKeyException unused3) {
                        }
                    }
                    setN.clear();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Exception e11) {
            throw new AsyncSelectorException(e11);
        }
    }

    public static void J(x xVar) {
        K(xVar);
        com.transsion.transfer.androidasync.util.d.a(xVar);
    }

    private static void K(x xVar) {
        try {
            for (SelectionKey selectionKey : xVar.h()) {
                com.transsion.transfer.androidasync.util.d.a(selectionKey.channel());
                try {
                    selectionKey.cancel();
                } catch (Exception unused) {
                }
            }
        } catch (Exception unused2) {
        }
    }

    private static void N(final x xVar) {
        f53066h.execute(new Runnable() {
            @Override
            public final void run() {
                AsyncServer.x(xVar);
            }
        });
    }

    public static AsyncServer r() {
        return f53065g;
    }

    public void s(AsyncNetworkSocket asyncNetworkSocket) {
        SelectionKey selectionKeyJ = asyncNetworkSocket.l().j(this.f53070a.d());
        selectionKeyJ.attach(asyncNetworkSocket);
        asyncNetworkSocket.C(this, selectionKeyJ);
    }

    public static InetAddress u(InetAddress[] inetAddressArr) {
        return inetAddressArr[0];
    }

    public static void v(Runnable runnable, Semaphore semaphore) {
        runnable.run();
        semaphore.release();
    }

    public static void w(x xVar) {
        try {
            xVar.p();
        } catch (Exception unused) {
        }
    }

    public static void x(x xVar) {
        try {
            xVar.p();
        } catch (Exception unused) {
        }
    }

    private static long z(AsyncServer asyncServer, PriorityQueue priorityQueue) {
        Scheduled scheduled;
        long j10 = Long.MAX_VALUE;
        while (true) {
            synchronized (asyncServer) {
                try {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    scheduled = null;
                    if (priorityQueue.size() > 0) {
                        Scheduled scheduled2 = (Scheduled) priorityQueue.remove();
                        long j11 = scheduled2.time;
                        if (j11 <= jElapsedRealtime) {
                            scheduled = scheduled2;
                        } else {
                            priorityQueue.add(scheduled2);
                            j10 = j11 - jElapsedRealtime;
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (scheduled == null) {
                asyncServer.f53073d = 0;
                return j10;
            }
            scheduled.run();
        }
    }

    protected void B(int i10) {
    }

    protected void C(int i10) {
    }

    public com.transsion.transfer.androidasync.future.a D(Runnable runnable) {
        return E(runnable, 0L);
    }

    public com.transsion.transfer.androidasync.future.a E(Runnable runnable, long j10) {
        synchronized (this) {
            try {
                if (this.f53072c) {
                    return com.transsion.transfer.androidasync.future.n.CANCELLED;
                }
                long jMin = 0;
                if (j10 > 0) {
                    jMin = SystemClock.elapsedRealtime() + j10;
                } else if (j10 == 0) {
                    int i10 = this.f53073d;
                    this.f53073d = i10 + 1;
                    jMin = i10;
                } else if (this.f53074e.size() > 0) {
                    jMin = Math.min(0L, ((Scheduled) this.f53074e.peek()).time - 1);
                }
                PriorityQueue priorityQueue = this.f53074e;
                Scheduled scheduled = new Scheduled(this, runnable, jMin);
                priorityQueue.add(scheduled);
                if (this.f53070a == null) {
                    F();
                }
                if (!t()) {
                    N(this.f53070a);
                }
                return scheduled;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void H(final Runnable runnable) {
        if (Thread.currentThread() == this.f53075f) {
            D(runnable);
            z(this, this.f53074e);
            return;
        }
        synchronized (this) {
            try {
                if (this.f53072c) {
                    return;
                }
                final Semaphore semaphore = new Semaphore(0);
                D(new Runnable() {
                    @Override
                    public final void run() {
                        AsyncServer.v(runnable, semaphore);
                    }
                });
                try {
                    semaphore.acquire();
                } catch (InterruptedException e10) {
                    Log.e("NIO", "run", e10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void L() {
        M(false);
    }

    public void M(boolean z10) {
        synchronized (this) {
            try {
                boolean zT = t();
                final x xVar = this.f53070a;
                if (xVar == null) {
                    return;
                }
                final Semaphore semaphore = new Semaphore(0);
                this.f53074e.add(new Scheduled(this, new Runnable() {
                    @Override
                    public void run() {
                        AsyncServer.J(xVar);
                        semaphore.release();
                    }
                }, 0L));
                f53066h.execute(new Runnable() {
                    @Override
                    public final void run() {
                        AsyncServer.w(xVar);
                    }
                });
                K(xVar);
                this.f53074e = new PriorityQueue(1, Scheduler.INSTANCE);
                this.f53070a = null;
                this.f53075f = null;
                if (zT || !z10) {
                    return;
                }
                try {
                    semaphore.acquire();
                } catch (Exception unused) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public b k(InetSocketAddress inetSocketAddress, st.b bVar, st.h hVar) {
        b bVar2 = new b();
        D(new Runnable(bVar2, bVar, hVar, inetSocketAddress) {
            final InetSocketAddress val$address;
            final st.b val$callback;
            final b val$cancel;
            final st.h val$createCallback;

            {
                this.val$address = inetSocketAddress;
            }

            @Override
            public void run() {
                SocketChannel socketChannelOpen;
                if (this.val$cancel.isCancelled()) {
                    return;
                }
                b bVar3 = this.val$cancel;
                bVar3.f53085g = this.val$callback;
                SelectionKey selectionKeyRegister = null;
                try {
                    socketChannelOpen = SocketChannel.open();
                    bVar3.f53084f = socketChannelOpen;
                    try {
                        socketChannelOpen.configureBlocking(false);
                        selectionKeyRegister = socketChannelOpen.register(AsyncServer.this.f53070a.d(), 8);
                        selectionKeyRegister.attach(this.val$cancel);
                        socketChannelOpen.connect(this.val$address);
                    } catch (Throwable th2) {
                        th = th2;
                        if (selectionKeyRegister != null) {
                            selectionKeyRegister.cancel();
                        }
                        com.transsion.transfer.androidasync.util.d.a(socketChannelOpen);
                        this.val$cancel.G(new RuntimeException(th));
                    }
                } catch (Throwable th3) {
                    th = th3;
                    socketChannelOpen = null;
                }
            }
        });
        return bVar2;
    }

    public com.transsion.transfer.androidasync.future.a l(InetSocketAddress inetSocketAddress, st.b bVar) {
        return k(inetSocketAddress, bVar, null);
    }

    public com.transsion.transfer.androidasync.future.a m(String str, int i10, st.b bVar) {
        return n(InetSocketAddress.createUnresolved(str, i10), bVar);
    }

    public com.transsion.transfer.androidasync.future.a n(InetSocketAddress inetSocketAddress, st.b bVar) {
        if (!inetSocketAddress.isUnresolved()) {
            return l(inetSocketAddress, bVar);
        }
        com.transsion.transfer.androidasync.future.w wVar = new com.transsion.transfer.androidasync.future.w();
        com.transsion.transfer.androidasync.future.f fVarQ = q(inetSocketAddress.getHostName());
        wVar.setParent(fVarQ);
        fVarQ.f(new a(bVar, wVar, inetSocketAddress));
        return wVar;
    }

    public Thread o() {
        return this.f53075f;
    }

    public com.transsion.transfer.androidasync.future.f p(final String str) {
        final com.transsion.transfer.androidasync.future.w wVar = new com.transsion.transfer.androidasync.future.w();
        f53068j.execute(new Runnable() {
            @Override
            public void run() {
                try {
                    final InetAddress[] allByName = InetAddress.getAllByName(str);
                    Arrays.sort(allByName, AsyncServer.f53067i);
                    if (allByName == null || allByName.length == 0) {
                        throw new HostnameResolutionException("no addresses for host");
                    }
                    AsyncServer.this.D(new Runnable() {
                        @Override
                        public void run() {
                            wVar.H(null, allByName);
                        }
                    });
                } catch (Exception e10) {
                    AsyncServer.this.D(new Runnable() {
                        @Override
                        public void run() {
                            wVar.H(e10, null);
                        }
                    });
                }
            }
        });
        return wVar;
    }

    public com.transsion.transfer.androidasync.future.f q(String str) {
        return p(str).i(new com.transsion.transfer.androidasync.future.y() {
            @Override
            public final Object then(Object obj) {
                return AsyncServer.u((InetAddress[]) obj);
            }
        });
    }

    public boolean t() {
        return this.f53075f == Thread.currentThread();
    }

    public i y(final InetAddress inetAddress, final int i10, final st.f fVar) {
        final d dVar = new d();
        H(new Runnable() {

            class a implements i {

                final ServerSocketChannel f53076a;

                final y f53077b;

                final SelectionKey f53078c;

                a(ServerSocketChannel serverSocketChannel, y yVar, SelectionKey selectionKey) {
                    this.f53076a = serverSocketChannel;
                    this.f53077b = yVar;
                    this.f53078c = selectionKey;
                }

                @Override
                public void stop() {
                    com.transsion.transfer.androidasync.util.d.a(this.f53077b);
                    try {
                        this.f53078c.cancel();
                    } catch (Exception unused) {
                    }
                }
            }

            @Override
            public void run() {
                y yVar;
                IOException e10;
                ServerSocketChannel serverSocketChannelOpen;
                try {
                    serverSocketChannelOpen = ServerSocketChannel.open();
                    try {
                        yVar = new y(serverSocketChannelOpen);
                        try {
                            serverSocketChannelOpen.socket().bind(inetAddress == null ? new InetSocketAddress(i10) : new InetSocketAddress(inetAddress, i10));
                            SelectionKey selectionKeyJ = yVar.j(AsyncServer.this.f53070a.d());
                            selectionKeyJ.attach(fVar);
                            st.f fVar2 = fVar;
                            d dVar2 = dVar;
                            a aVar = new a(serverSocketChannelOpen, yVar, selectionKeyJ);
                            dVar2.f53090a = aVar;
                            fVar2.p(aVar);
                        } catch (IOException e11) {
                            e10 = e11;
                            Log.e("NIO", "wtf", e10);
                            com.transsion.transfer.androidasync.util.d.a(yVar, serverSocketChannelOpen);
                            fVar.g(e10);
                        }
                    } catch (IOException e12) {
                        yVar = null;
                        e10 = e12;
                    }
                } catch (IOException e13) {
                    yVar = null;
                    e10 = e13;
                    serverSocketChannelOpen = null;
                }
            }
        });
        return (i) dVar.f53090a;
    }

    public AsyncServer(String str) {
        this.f53073d = 0;
        this.f53074e = new PriorityQueue(1, Scheduler.INSTANCE);
        this.f53071b = str == null ? "AsyncServer" : str;
    }
}
