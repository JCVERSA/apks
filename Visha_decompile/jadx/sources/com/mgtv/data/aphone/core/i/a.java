package com.mgtv.data.aphone.core.i;

import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import com.mgtv.data.aphone.core.bean.TraceBasketBean;
import com.mgtv.data.aphone.core.i.b.d;
import com.mgtv.data.aphone.core.j.c;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.LinkedBlockingDeque;

public class a {
    private static a a;
    private LinkedBlockingDeque<com.mgtv.data.aphone.core.i.a.b> b;
    private C0177a c;

    public a() {
        this.b = null;
        c.a("big_data_sdk", "####################  BigDataTrace  ()方法");
        this.b = new LinkedBlockingDeque<>(10000);
        C0177a c0177a = new C0177a();
        this.c = c0177a;
        c0177a.start();
    }

    private static com.mgtv.data.aphone.core.i.a.b b(String str, String str2) {
        TraceBasketBean traceBasketBean = new TraceBasketBean(str, str2);
        return new com.mgtv.data.aphone.core.i.a.b(traceBasketBean.b(), traceBasketBean.a());
    }

    public class C0177a extends Thread {
        private boolean b;
        private LocalSocket c;

        public C0177a() {
            super("BigDataSdk LocalClient_LogWorkThread");
            this.b = false;
        }

        private void a(long j) {
            try {
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
            try {
                localSocket2.connect(new LocalSocketAddress("com.mgtv.data.trace"));
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                if (d.a().b()) {
                    for (int i = 0; i < 3; i++) {
                        try {
                            a(100L);
                            this.c.connect(new LocalSocketAddress("com.mgtv.data.trace"));
                            return true;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                }
                return false;
            }
        }

        @Override
        public void run() {
            while (true) {
                boolean z = true;
                while (true) {
                    if (!z || b()) {
                        switch (a()) {
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
            com.mgtv.data.aphone.core.i.a.c cVar;
            byte[] bArr = new byte[com.mgtv.data.aphone.core.i.a.a.c()];
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
                    com.mgtv.data.aphone.core.i.a.b bVar = (com.mgtv.data.aphone.core.i.a.b) a.this.b.take();
                    if (bVar != null) {
                        try {
                            outputStream.write(bVar.a());
                            outputStream.flush();
                        } catch (Throwable th) {
                            th.printStackTrace();
                            iA = 103;
                        }
                    }
                    if (inputStream.read(bArr, 0, com.mgtv.data.aphone.core.i.a.a.c()) == com.mgtv.data.aphone.core.i.a.a.c()) {
                        com.mgtv.data.aphone.core.i.a.a aVarA = com.mgtv.data.aphone.core.i.a.a.a(bArr);
                        if (aVarA.b()) {
                            int i = aVarA.a;
                            if (i > 0) {
                                byte[] bArr2 = new byte[i];
                                cVar = inputStream.read(bArr2) == aVarA.a ? new com.mgtv.data.aphone.core.i.a.c(aVarA, bArr2) : null;
                            } else {
                                cVar = new com.mgtv.data.aphone.core.i.a.c(aVarA, null);
                            }
                            iA = a(cVar);
                        }
                    }
                    return 104;
                } catch (InterruptedException unused3) {
                    return 102;
                }
            }
            return iA;
        }

        private int a(com.mgtv.data.aphone.core.i.a.c cVar) {
            com.mgtv.data.aphone.core.i.a.a aVar;
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

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                try {
                    if (a == null) {
                        a = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public void a(String str, String str2) {
        if (!b.a) {
            c.a("big_data_sdk", "####################  BigDataTrace  是否打开鹰眼功能： " + b.a);
            return;
        }
        a(b(str, str2));
    }

    public void a(com.mgtv.data.aphone.core.i.a.b bVar) {
        if (this.b.offer(bVar)) {
            return;
        }
        c.c("BigDataTrace", "BigDataSdkTrace offer to queue failed, remove old and retry");
        try {
            this.b.poll();
            this.b.offer(bVar);
        } catch (IllegalMonitorStateException e) {
            e.printStackTrace();
        }
    }
}
