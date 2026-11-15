package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import android.util.Base64;
import android.util.Log;
import android.util.SparseArray;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public class vS {

    private static volatile vS f19673i;

    private volatile ServerSocket f19674a;

    private volatile int f19675b;

    private final AtomicInteger f19676c = new AtomicInteger(0);

    private volatile sP.e f19677d;

    private final SparseArray f19678e;

    private final Jcg.c f19679f;

    private final Runnable f19680g;

    private final AtomicBoolean f19681h;

    class a implements Jcg.c {
        a() {
        }

        @Override
        public void a(Jcg jcg) {
            synchronized (vS.this.f19678e) {
                try {
                    Set set = (Set) vS.this.f19678e.get(jcg.vS());
                    if (set != null) {
                        set.add(jcg);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void b(Jcg jcg) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                "afterExecute, ProxyTask: ".concat(String.valueOf(jcg));
            }
            int iVS = jcg.vS();
            synchronized (vS.this.f19678e) {
                try {
                    Set set = (Set) vS.this.f19678e.get(iVS);
                    if (set != null) {
                        set.remove(jcg);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private static final class b implements Callable {

        private final String f19683a;

        private final int f19684b;

        b(String str, int i10) {
            this.f19683a = str;
            this.f19684b = i10;
        }

        @Override
        public Boolean call() {
            Socket socket;
            Throwable th2;
            try {
                socket = new Socket(this.f19683a, this.f19684b);
                try {
                    socket.setSoTimeout(2000);
                    OutputStream outputStream = socket.getOutputStream();
                    outputStream.write("Ping\n".getBytes(h6.a.f61295b));
                    outputStream.flush();
                    if ("OK".equals(new BufferedReader(new InputStreamReader(socket.getInputStream())).readLine())) {
                        Boolean bool = Boolean.TRUE;
                        h6.a.q(socket);
                        return bool;
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    try {
                        th2.getMessage();
                        vS.l("ping error", Log.getStackTraceString(th2));
                    } finally {
                        h6.a.q(socket);
                    }
                }
            } catch (Throwable th4) {
                socket = null;
                th2 = th4;
            }
            return Boolean.FALSE;
        }
    }

    private vS() {
        SparseArray sparseArray = new SparseArray(2);
        this.f19678e = sparseArray;
        this.f19679f = new a();
        this.f19680g = new Runnable() {

            class AnonymousClass1 extends com.bytedance.sdk.component.Dq.Dq {
                final Jcg Sj;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(String str, int i10, Jcg jcg) {
                    super(str, i10);
                    this.Sj = jcg;
                }

                @Override
                public void run() {
                    this.Sj.run();
                }
            }

            @Override
            public void run() {
                try {
                    int i10 = 0;
                    vS.this.f19674a = new ServerSocket(0, 50, InetAddress.getByName(vS.this.s()));
                    vS vSVar = vS.this;
                    vSVar.f19675b = vSVar.f19674a.getLocalPort();
                    if (vS.this.f19675b == -1) {
                        vS.l("socket not bound", "");
                        vS.this.e();
                        return;
                    }
                    com.bykv.vk.openvk.Sj.Sj.sP.sP.b.a(vS.this.s(), vS.this.f19675b);
                    if (vS.this.g()) {
                        AtomicInteger unused = vS.this.f19676c;
                        if (vS.this.f19676c.compareAndSet(0, 1)) {
                            AtomicInteger unused2 = vS.this.f19676c;
                            boolean z10 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b;
                            while (vS.this.f19676c.get() == 1) {
                                try {
                                    try {
                                        Socket socketAccept = vS.this.f19674a.accept();
                                        sP.e unused3 = vS.this.f19677d;
                                        h6.a.q(socketAccept);
                                    } catch (IOException e10) {
                                        vS.l("accept error", Log.getStackTraceString(e10));
                                        i10++;
                                        if (i10 > 3) {
                                            boolean z11 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b;
                                            vS.this.e();
                                        }
                                    }
                                } catch (Throwable th2) {
                                    String stackTraceString = Log.getStackTraceString(th2);
                                    Log.e("ProxyServer", "proxy server crashed!  ".concat(String.valueOf(stackTraceString)));
                                    vS.l("error", stackTraceString);
                                }
                            }
                            boolean z12 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b;
                            vS.this.e();
                        }
                    }
                } catch (IOException e11) {
                    if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                        Log.e("ProxyServer", "create ServerSocket error!  " + Log.getStackTraceString(e11));
                    }
                    vS.l("create ServerSocket error", Log.getStackTraceString(e11));
                    vS.this.e();
                }
            }
        };
        this.f19681h = new AtomicBoolean();
        sparseArray.put(0, new HashSet());
        sparseArray.put(1, new HashSet());
    }

    private void b() {
        Socket socketAccept = null;
        try {
            socketAccept = this.f19674a.accept();
            socketAccept.setSoTimeout(2000);
            if ("Ping".equals(new BufferedReader(new InputStreamReader(socketAccept.getInputStream())).readLine())) {
                OutputStream outputStream = socketAccept.getOutputStream();
                outputStream.write("OK\n".getBytes(h6.a.f61295b));
                outputStream.flush();
            }
        } catch (IOException e10) {
            Log.getStackTraceString(e10);
        } finally {
            h6.a.q(socketAccept);
        }
    }

    public void e() {
        if (this.f19676c.compareAndSet(1, 2) || this.f19676c.compareAndSet(0, 2)) {
            h6.a.p(this.f19674a);
            t();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean g() {
        com.bytedance.sdk.component.Dq.Jcg jcg = new com.bytedance.sdk.component.Dq.Jcg(new b(s(), this.f19675b), 5, 1);
        com.bytedance.sdk.component.Dq.vS.TKC().submit(jcg);
        b();
        try {
            if (((Boolean) jcg.get()).booleanValue()) {
                boolean z10 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b;
                return true;
            }
            Log.e("ProxyServer", "Ping error");
            e();
            return false;
        } catch (Throwable th2) {
            Log.getStackTraceString(th2);
            e();
            return false;
        }
    }

    public static vS j() {
        if (f19673i == null) {
            synchronized (vS.class) {
                try {
                    if (f19673i == null) {
                        f19673i = new vS();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19673i;
    }

    public String s() {
        return new String(Base64.decode("MTI3LjAuMC4x".getBytes(), 0));
    }

    private void t() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f19678e) {
            try {
                int size = this.f19678e.size();
                for (int i10 = 0; i10 < size; i10++) {
                    SparseArray sparseArray = this.f19678e;
                    Set set = (Set) sparseArray.get(sparseArray.keyAt(i10));
                    if (set != null) {
                        arrayList.addAll(set);
                        set.clear();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Jcg) it.next()).Sj();
        }
    }

    boolean m(int i10, String str) {
        if (str == null) {
            return false;
        }
        synchronized (this.f19678e) {
            Set<Jcg> set = (Set) this.f19678e.get(i10);
            if (set != null) {
                for (Jcg jcg : set) {
                    if (jcg != null && str.equals(jcg.Dq)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    c n() {
        return null;
    }

    c p() {
        return null;
    }

    static void l(String str, String str2) {
    }
}
