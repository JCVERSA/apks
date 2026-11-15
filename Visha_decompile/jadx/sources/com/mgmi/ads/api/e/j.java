package com.mgmi.ads.api.e;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class j {
    private List<a> a = new ArrayList();
    private List<c> b = new ArrayList();
    private b c = new b(Looper.myLooper(), this);

    public interface a {
        void a(d dVar);

        void b(d dVar);

        void c(d dVar);
    }

    public static class b extends Handler {
        WeakReference<j> a;

        public b(Looper looper, j jVar) {
            super(looper);
            this.a = new WeakReference<>(jVar);
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            WeakReference<j> weakReference = this.a;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            int i = message.what;
            if (i == 45825) {
                j jVar = this.a.get();
                if (jVar != null) {
                    try {
                        jVar.d((d) message.obj);
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                return;
            }
            if (i == 45840) {
                j jVar2 = this.a.get();
                if (jVar2 != null) {
                    try {
                        jVar2.g((d) message.obj);
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                return;
            }
            switch (i) {
                case 45831:
                    j jVar3 = this.a.get();
                    if (jVar3 != null) {
                        try {
                            jVar3.f((d) message.obj);
                            return;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    }
                    return;
                case 45832:
                    j jVar4 = this.a.get();
                    if (jVar4 != null) {
                        try {
                            jVar4.e((d) message.obj);
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                    break;
                case 45833:
                    break;
                default:
                    return;
            }
            j jVar5 = this.a.get();
            if (jVar5 != null) {
                try {
                    jVar5.h((d) message.obj);
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
        }
    }

    public interface c {
        void a(d dVar);

        void b(d dVar);
    }

    public static class d {
        public ArrayList<String> a;
        public String b;
        public int c;
        public boolean d;
    }

    public void f(d dVar) {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            this.b.get(i).a(dVar);
        }
    }

    public void g(d dVar) {
        int size = this.b.size();
        if (size != 0) {
            for (int i = 0; i < size; i++) {
                this.b.get(i).b(dVar);
            }
            return;
        }
        int size2 = this.a.size();
        for (int i2 = 0; i2 < size2; i2++) {
            a aVar = this.a.get(i2);
            dVar.d = false;
            aVar.b(dVar);
        }
    }

    public void h(d dVar) {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            this.a.get(i).b(dVar);
        }
    }

    public void d(d dVar) {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            this.a.get(i).c(dVar);
        }
    }

    public void e(d dVar) {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            this.a.get(i).a(dVar);
        }
    }

    public synchronized void a(a aVar) {
        List<a> list = this.a;
        if (list != null && !list.contains(aVar)) {
            this.a.add(aVar);
        }
    }

    public synchronized void b(a aVar) {
        List<a> list = this.a;
        if (list != null && list.size() > 0 && this.a.contains(aVar)) {
            this.a.remove(aVar);
        }
    }

    public void c(d dVar) {
        List<a> list = this.a;
        if (list == null || list.size() <= 0) {
            return;
        }
        Message message = new Message();
        message.what = 45840;
        message.obj = dVar;
        this.c.sendMessage(message);
    }

    public void a(d dVar) {
        List<a> list = this.a;
        if (list == null || list.size() <= 0) {
            return;
        }
        Message message = new Message();
        message.what = 45831;
        message.obj = dVar;
        this.c.sendMessage(message);
    }

    public void b(d dVar) {
        List<a> list = this.a;
        if (list == null || list.size() <= 0) {
            return;
        }
        Message message = new Message();
        message.what = 45833;
        message.obj = dVar;
        this.c.sendMessage(message);
    }
}
