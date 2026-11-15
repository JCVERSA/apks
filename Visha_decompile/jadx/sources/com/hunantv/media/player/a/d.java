package com.hunantv.media.player.a;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.utils.StringUtil;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class d {
    private HandlerThread a;
    private a b;
    private boolean c = false;
    private Object d = new Object();
    private b e = new b() {
        @Override
        public void updateIPs(String str, List<String> list) {
            if (d.this.f != null) {
                d.this.f.updateIPs(str, list);
            }
        }
    };
    private b f;

    public static class a extends Handler {
        private volatile boolean a;
        private Map<String, List<String>> b;
        private boolean c;
        private Object d;
        private b e;

        public a(Looper looper, boolean z) {
            super(looper);
            this.a = false;
            this.b = Collections.synchronizedMap(new HashMap());
            this.d = new Object();
            this.c = z;
        }

        private String c() {
            return "DnsThreadManager-EventHandler-" + hashCode();
        }

        public boolean b() {
            return this.a;
        }

        @Override
        public void handleMessage(Message message) {
            if (message.what != 100) {
                return;
            }
            a((String) message.obj);
        }

        public void a() {
            this.a = true;
            synchronized (this.d) {
                this.d.notifyAll();
            }
            this.b.clear();
        }

        public void a(b bVar) {
            this.e = bVar;
        }

        public void a(String str) {
            Message message;
            long j;
            if (StringUtil.isEmpty(str) || e.a(str)) {
                DebugLog.d(c(), "domainResolve invalid");
                return;
            }
            if (this.a) {
                DebugLog.d(c(), "domainResolve iReleased 1");
                this.e = null;
                return;
            }
            com.hunantv.media.player.a.a aVar = new com.hunantv.media.player.a.a();
            aVar.a(new com.hunantv.media.player.a.a.InterfaceC0133a() {
                @Override
                public void onDnsFail(com.hunantv.media.player.a.a aVar2) {
                }

                @Override
                public void onDnsFinish(com.hunantv.media.player.a.a aVar2) {
                    synchronized (a.this.d) {
                        a.this.d.notifyAll();
                    }
                }

                @Override
                public void onDnsStart(com.hunantv.media.player.a.a aVar2) {
                }

                @Override
                public void onDnsSuc(com.hunantv.media.player.a.a aVar2, String[] strArr) {
                }
            });
            aVar.b(1);
            aVar.a(str, com.hunantv.media.player.a.a.b.FREE_HTTP_DNS, this.c);
            synchronized (this.d) {
                while (aVar.a() && !this.a) {
                    DebugLog.d(c(), "domainResolve wait in");
                    try {
                        this.d.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
            if (this.a) {
                this.e = null;
                DebugLog.d(c(), "domainResolve iReleased 2");
                return;
            }
            String[] strArrB = aVar.b();
            if (strArrB == null || strArrB.length <= 0) {
                DebugLog.d(c(), "domainResolve empty out");
                message = new Message();
                message.what = 100;
                message.obj = str;
                j = 600000;
            } else {
                String iPList = MgtvMediaPlayer.IPList.formatIPList(strArrB);
                DebugLog.d(c(), "domainResolve ips:" + iPList);
                List<String> listAsList = Arrays.asList(strArrB);
                b bVar = this.e;
                if (bVar != null) {
                    bVar.updateIPs(str, listAsList);
                }
                message = new Message();
                message.what = 100;
                message.obj = str;
                j = 60000;
            }
            sendMessageDelayed(message, j);
        }
    }

    public interface b {
        void updateIPs(String str, List<String> list);
    }

    private String c() {
        return getClass().getSimpleName() + "-" + hashCode();
    }

    public void b() {
        synchronized (this.d) {
            try {
                DebugLog.i(c(), "release in");
                try {
                    a aVar = this.b;
                    if (aVar != null) {
                        aVar.a();
                        this.b = null;
                    }
                    HandlerThread handlerThread = this.a;
                    if (handlerThread != null) {
                        handlerThread.quitSafely();
                        this.a = null;
                    }
                    DebugLog.i(c(), "release success");
                } catch (Exception e) {
                    DebugLog.i(c(), "release exception");
                    e.printStackTrace();
                }
                DebugLog.i(c(), "release out");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public d a(b bVar) {
        this.f = bVar;
        return this;
    }

    public void a() {
        String strC;
        String str;
        synchronized (this.d) {
            try {
                DebugLog.i(c(), "start in");
                try {
                    if (this.a == null) {
                        HandlerThread handlerThread = new HandlerThread("mgtvmp_jDns", 10);
                        this.a = handlerThread;
                        handlerThread.start();
                        a aVar = new a(this.a.getLooper(), this.c);
                        this.b = aVar;
                        aVar.a(this.e);
                        strC = c();
                        str = "start success";
                    } else {
                        strC = c();
                        str = "start already";
                    }
                    DebugLog.i(strC, str);
                } catch (Exception e) {
                    DebugLog.i(c(), "start error");
                    e.printStackTrace();
                }
                DebugLog.i(c(), "start out");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(String str) {
        synchronized (this.d) {
            try {
                DebugLog.i(c(), "send addDomain Msg:" + str);
                a aVar = this.b;
                if (aVar != null && !aVar.b()) {
                    Message message = new Message();
                    message.what = 100;
                    message.obj = str;
                    this.b.sendMessage(message);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(boolean z) {
        this.c = z;
    }
}
