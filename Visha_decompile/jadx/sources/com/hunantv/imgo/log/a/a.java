package com.hunantv.imgo.log.a;

import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import com.hunantv.imgo.log.b.d;
import com.hunantv.imgo.log.entity.b;
import com.hunantv.imgo.log.entity.c;
import com.hunantv.imgo.util.n;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.LinkedBlockingDeque;

public class a {
    private static a c;
    private LinkedBlockingDeque<b> a;
    private C0129a b;

    private a() {
        this.a = null;
        this.a = new LinkedBlockingDeque<>(10000);
        C0129a c0129a = new C0129a();
        this.b = c0129a;
        c0129a.start();
    }

    public static a a() {
        if (c == null) {
            synchronized (a.class) {
                try {
                    if (c == null) {
                        c = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public class C0129a extends Thread {
        private boolean b;
        private LocalSocket c;

        public C0129a() {
            super("LocalClient_WorkThread");
            this.b = false;
        }

        private void a(long j) {
            try {
                n.a("LogClient", "asleep time = " + j);
                Thread.sleep(j);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        private boolean b() {
            LocalSocket localSocket = this.c;
            if (localSocket != null) {
                try {
                    localSocket.close();
                    this.c = null;
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            LocalSocket localSocket2 = new LocalSocket();
            this.c = localSocket2;
            boolean z = true;
            try {
                localSocket2.connect(new LocalSocketAddress("com.hunantv.imgo.log"));
            } catch (Exception e2) {
                e2.printStackTrace();
                if (d.a().b()) {
                    for (int i = 0; i < 3; i++) {
                        try {
                            a(100L);
                            this.c.connect(new LocalSocketAddress("com.hunantv.imgo.log"));
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            n.c("LogClient", "server exception and retry time = " + i);
                            n.c("LogClient", "server start failed");
                        }
                    }
                    z = false;
                } else {
                    z = false;
                }
            }
            n.a("LogClient", "checkServer ret = " + z);
            return z;
        }

        @Override
        public void run() throws IOException {
            while (true) {
                boolean z = true;
                while (true) {
                    if (!z || b()) {
                        int iA = a();
                        n.c("LogClient", "doWork return errorCode + " + iA);
                        switch (iA) {
                            case 101:
                            case 103:
                            case 104:
                                break;
                            case 102:
                            default:
                                z = false;
                                break;
                        }
                    } else {
                        a(1000L);
                    }
                }
            }
        }

        private int a() throws IOException {
            InputStream inputStream;
            int iA;
            OutputStream outputStream;
            c cVar;
            n.a("LogClient", "doWork start");
            byte[] bArr = new byte[com.hunantv.imgo.log.entity.a.c()];
            try {
                inputStream = this.c.getInputStream();
                try {
                    outputStream = this.c.getOutputStream();
                    iA = 100;
                } catch (Exception unused) {
                    iA = 101;
                    outputStream = null;
                }
            } catch (Exception unused2) {
                inputStream = null;
            }
            while (!this.b && iA == 100) {
                try {
                    b bVar = (b) a.this.a.take();
                    if (bVar != null) {
                        try {
                            outputStream.write(bVar.a());
                            outputStream.flush();
                        } catch (Throwable th) {
                            n.a("LogClient", "handle response data and errorCode = " + iA);
                            th.printStackTrace();
                            iA = 103;
                        }
                    }
                    int i = inputStream.read(bArr, 0, com.hunantv.imgo.log.entity.a.c());
                    if (i != com.hunantv.imgo.log.entity.a.c()) {
                        n.c("LogClient", "received response protocol exception, protocol length = " + i);
                    } else {
                        com.hunantv.imgo.log.entity.a aVarA = com.hunantv.imgo.log.entity.a.a(bArr);
                        if (!aVarA.b()) {
                            n.c("LogClient", "received response protocol invalid, and protocl = " + aVarA.toString());
                        } else {
                            int i2 = aVarA.a;
                            if (i2 > 0) {
                                byte[] bArr2 = new byte[i2];
                                cVar = inputStream.read(bArr2) == aVarA.a ? new c(aVarA, bArr2) : null;
                            } else {
                                cVar = new c(aVarA, null);
                                n.a("LogClient", "received response data and cmd = " + ((int) cVar.a.b));
                            }
                            iA = a(cVar);
                        }
                    }
                    iA = 104;
                    break;
                } catch (InterruptedException e) {
                    n.b("LogClient", "requestEntityQueue.take failed" + e.getStackTrace());
                    iA = 102;
                }
            }
            n.a("LogClient", "one msg send complete and errorCode = " + iA);
            return iA;
        }

        private int a(c cVar) {
            com.hunantv.imgo.log.entity.a aVar;
            if (cVar == null || (aVar = cVar.a) == null) {
                return 100;
            }
            switch (aVar.b) {
                case 20:
                case 21:
                case 25:
                    return 100;
                case 22:
                case 23:
                case 24:
                default:
                    return 104;
            }
        }
    }

    public void a(b bVar) {
        if (this.a.offer(bVar)) {
            return;
        }
        n.c("LogClient", "offer to queue failed, remove old and retry");
        try {
            this.a.poll();
            this.a.offer(bVar);
        } catch (IllegalMonitorStateException e) {
            e.printStackTrace();
        }
    }
}
