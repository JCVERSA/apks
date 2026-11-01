package q0;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import java.io.InvalidObjectException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import ru.zdevs.zarchiver.ZApp;

public final class g {

    public e f1393a;

    public int f1394b = 10;

    public byte f1395c = 0;

    public final i f1396d;

    public final int f1397e;

    public a f1398f;

    public final boolean f1399g;

    public class a extends Thread {

        public final int f1401b;

        public final LinkedList<b> f1400a = new LinkedList<>();

        public int f1402c = 0;

        public byte[] f1403d = null;

        public a(int i2) {
            this.f1401b = i2;
        }

        public final void a(ArrayList<b> arrayList) {
            synchronized (this.f1400a) {
                if (a0.c.K(this.f1402c, 1)) {
                    c();
                }
                this.f1402c |= 1;
                this.f1400a.addAll(arrayList);
                if (g.this.f1395c == 3) {
                    Collections.sort(this.f1400a);
                }
                this.f1400a.notifyAll();
            }
        }

        public final void b(b bVar) {
            g gVar;
            synchronized (this.f1400a) {
                if (a0.c.K(this.f1402c, 1)) {
                    c();
                }
                this.f1400a.add(bVar);
                while (true) {
                    int size = this.f1400a.size();
                    gVar = g.this;
                    if (size <= gVar.f1394b) {
                        break;
                    } else {
                        this.f1400a.remove(0);
                    }
                }
                if (gVar.f1395c == 3) {
                    Collections.sort(this.f1400a);
                }
                this.f1400a.notifyAll();
            }
        }

        public final void c() {
            synchronized (this.f1400a) {
                this.f1402c &= -2;
                if (g.this.f1395c == 3) {
                    Iterator<b> it = this.f1400a.iterator();
                    while (it.hasNext()) {
                        if (it.next().f1409e == null) {
                            it.remove();
                        }
                    }
                } else {
                    this.f1400a.clear();
                }
            }
        }

        public final void d() {
            synchronized (this.f1400a) {
                this.f1402c &= -2;
                this.f1400a.clear();
                this.f1400a.notifyAll();
            }
        }

        /* JADX WARN: Code duplicated, block: B:32:0x006e  */
        @Override
        public final void run() {
            int size;
            b bVarRemove;
            String[] strArr;
            do {
                try {
                    int i2 = 1;
                    if (this.f1400a.size() == 0) {
                        this.f1403d = null;
                        if (a0.c.K(this.f1402c, 1)) {
                            this.f1402c &= -2;
                        }
                        g gVar = g.this;
                        if (gVar.f1393a != null) {
                            try {
                                Handler handlerF = ZApp.f();
                                handlerF.removeCallbacks(gVar.f1393a);
                                e eVar = gVar.f1393a;
                                eVar.f1413b = 0;
                                handlerF.postDelayed(eVar, 300L);
                            } catch (InvalidObjectException unused) {
                            }
                        }
                        synchronized (this.f1400a) {
                            this.f1400a.wait();
                            if (isInterrupted()) {
                                return;
                            }
                            boolean z2 = e instanceof InterruptedException;
                            return;
                        }
                    }
                    if (this.f1400a.size() != 0) {
                        boolean zK = a0.c.K(this.f1402c, 1);
                        synchronized (this.f1400a) {
                            if (zK) {
                                size = 0;
                            } else {
                                try {
                                    if (g.this.f1395c == 0) {
                                        size = this.f1400a.size() - 1;
                                    } else {
                                        size = 0;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            bVarRemove = this.f1400a.remove(size);
                        }
                        if (!zK || bVarRemove.f1409e != null) {
                            i2 = 5;
                        }
                        if (i2 != getPriority()) {
                            setPriority(i2);
                        }
                        if (!zK) {
                            g gVar2 = g.this;
                            int size2 = ((gVar2.f1394b - this.f1400a.size()) * 100) / g.this.f1394b;
                            if (gVar2.f1393a != null) {
                                try {
                                    Handler handlerF2 = ZApp.f();
                                    handlerF2.removeCallbacks(gVar2.f1393a);
                                    e eVar2 = gVar2.f1393a;
                                    eVar2.f1413b = size2;
                                    handlerF2.postDelayed(eVar2, 300L);
                                } catch (InvalidObjectException unused2) {
                                }
                            }
                        }
                        g gVar3 = g.this;
                        if (gVar3.f1398f == null) {
                            return;
                        }
                        q0.e.a aVarB = gVar3.f1396d.b(Integer.valueOf(bVarRemove.f1408d));
                        if (aVarB == null) {
                            if (this.f1403d == null) {
                                this.f1403d = new byte[32768];
                            }
                            h0.h hVar = bVarRemove.f1406b;
                            d0.d dVar = bVarRemove.f1405a;
                            h0.h hVar2 = new h0.h(dVar.f539a, hVar, dVar.f540b);
                            d0.d dVar2 = bVarRemove.f1405a;
                            aVarB = q0.e.e(hVar2, dVar2.f542d, dVar2.d(), bVarRemove.f1407c, this.f1401b, this.f1403d);
                            if (aVarB != null && (strArr = aVarB.f1381c) != null) {
                                bVarRemove.f1405a.f546h = strArr[0];
                            }
                            g.this.f1396d.d(Integer.valueOf(bVarRemove.f1408d), aVarB != null ? aVarB : new q0.e.a(null, null, null));
                        }
                        if (aVarB != null) {
                            try {
                                if (bVarRemove.f1409e != null && aVarB.f1379a != null) {
                                    ZApp.f().post(new d(bVarRemove, aVarB));
                                }
                            } catch (Exception unused3) {
                            }
                        }
                    }
                } catch (Exception e2) {
                    boolean z3 = e2 instanceof InterruptedException;
                    return;
                }
            } while (!isInterrupted());
        }
    }

    public static class b implements Comparable<b> {

        public final d0.d f1405a;

        public final h0.h f1406b;

        public final int f1407c;

        public final int f1408d;

        public d0.g f1409e;

        public b(d0.d dVar, h0.h hVar, int i2, d0.g gVar, int i3) {
            this.f1405a = dVar;
            this.f1406b = hVar;
            this.f1407c = i2;
            this.f1409e = gVar;
            this.f1408d = i3;
        }

        @Override
        public final int compareTo(b bVar) {
            b bVar2 = bVar;
            String str = this.f1405a.f540b;
            int i2 = str == null ? Integer.MAX_VALUE : Integer.parseInt(str);
            String str2 = bVar2.f1405a.f540b;
            int i3 = str2 != null ? Integer.parseInt(str2) : Integer.MAX_VALUE;
            if (i2 == i3) {
                return 0;
            }
            return i2 < i3 ? -1 : 1;
        }
    }

    public interface c {
        void c(int i2);
    }

    public static class d implements Runnable {

        public final b f1410a;

        public final q0.e.a f1411b;

        public d(b bVar, q0.e.a aVar) {
            this.f1410a = bVar;
            this.f1411b = aVar;
        }

        @Override
        public final void run() {
            q0.e.a aVar = this.f1411b;
            try {
                b bVar = this.f1410a;
                if (bVar.f1409e.a(bVar.f1405a, aVar.f1379a, bVar.f1408d)) {
                    aVar.f1382d = 1;
                }
            } catch (Exception unused) {
            }
        }
    }

    public static class e implements Runnable {

        public final WeakReference<c> f1412a;

        public int f1413b = 0;

        public e(c cVar) {
            this.f1412a = new WeakReference<>(cVar);
        }

        @Override
        public final void run() {
            try {
                c cVar = this.f1412a.get();
                if (cVar != null) {
                    cVar.c(this.f1413b);
                }
            } catch (Exception unused) {
            }
        }
    }

    public g(Context context) {
        boolean z2 = false;
        Context contextC = ZApp.c(context);
        int memoryClass = (int) ((contextC != null ? (((long) ((ActivityManager) contextC.getSystemService("activity")).getMemoryClass()) * 1024) * 1024 : (v0.b.a() * 1024) / 3) / 8);
        this.f1396d = new i(memoryClass);
        int i2 = t0.b.f2090k;
        int i3 = ((memoryClass / i2) / i2) / 4;
        this.f1397e = i3;
        if (Runtime.getRuntime().availableProcessors() >= 2 && i3 > 300) {
            z2 = true;
        }
        this.f1399g = z2;
    }

    public final Bitmap a(d0.d dVar, h0.h hVar, d0.g gVar, int i2, boolean z2, boolean z3) {
        try {
            q0.e.a aVarB = this.f1396d.b(Integer.valueOf(i2));
            if (dVar.f544f == 28 && hVar.g() && !e0.h.d().e(hVar.f1108c)) {
                return null;
            }
            if (!z3 && aVarB == null) {
                b(i2, dVar, gVar, hVar, z2);
            } else if (aVarB != null) {
                aVarB.f1382d = 1;
                String[] strArr = aVarB.f1381c;
                if (strArr != null) {
                    dVar.f546h = strArr[0];
                }
                return aVarB.f1379a;
            }
            return null;
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0053  */
    /* JADX WARN: Code duplicated, block: B:39:? A[RETURN, SYNTHETIC] */
    public final void b(int i2, d0.d dVar, d0.g gVar, h0.h hVar, boolean z2) {
        boolean z3;
        a aVar = this.f1398f;
        if (aVar == null) {
            return;
        }
        if (aVar.getState() == Thread.State.NEW) {
            this.f1398f.start();
        }
        a aVar2 = this.f1398f;
        if (g.this.f1395c == 3) {
            synchronized (aVar2.f1400a) {
                Iterator<b> it = aVar2.f1400a.iterator();
                while (true) {
                    if (it.hasNext()) {
                        b next = it.next();
                        if (next.f1408d == i2) {
                            next.f1409e = gVar;
                            z3 = false;
                            break;
                        }
                    }
                }
            }
            if (z3) {
                this.f1398f.b(new b(dVar, hVar, (z2 ? 4 : 0) | 1, gVar, i2));
            }
        }
        z3 = true;
        if (z3) {
            this.f1398f.b(new b(dVar, hVar, (z2 ? 4 : 0) | 1, gVar, i2));
        }
    }

    public final void c(int i2) {
        a aVar = this.f1398f;
        if (aVar != null) {
            aVar.d();
        }
        i iVar = this.f1396d;
        iVar.getClass();
        if (i2 == 0 || Build.VERSION.SDK_INT < 17) {
            iVar.a();
            return;
        }
        iVar.f1415a.size();
        iVar.g();
        int size = iVar.f1415a.size();
        while (size > i2) {
            synchronized (iVar) {
                Iterator<Integer> it = iVar.f1415a.keySet().iterator();
                if (!it.hasNext()) {
                    return;
                }
                iVar.e(it.next());
                size = iVar.f1415a.size();
            }
        }
    }

    public final void d(c cVar, int i2) {
        if (i2 <= 0) {
            i2 = t0.b.f2090k;
        }
        if (this.f1398f == null) {
            a aVar = new a(i2);
            this.f1398f = aVar;
            aVar.setPriority(4);
            this.f1398f.setName("ImageLoader");
        }
        this.f1393a = cVar == null ? null : new e(cVar);
    }

    public final void e(int i2) {
        a aVar = this.f1398f;
        if (aVar != null) {
            aVar.interrupt();
            this.f1398f = null;
        }
        if (this.f1393a != null) {
            try {
                ZApp.f().removeCallbacks(this.f1393a);
            } catch (InvalidObjectException unused) {
            }
            this.f1393a = null;
        }
        if (i2 >= 0) {
            c(i2);
        }
    }
}
