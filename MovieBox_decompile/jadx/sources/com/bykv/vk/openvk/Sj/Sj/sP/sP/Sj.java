package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import j6.e;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

abstract class Sj implements Ym {
    private static final AtomicLong Fmk = new AtomicLong();
    protected volatile String Dq;
    protected i6.a HiB;
    protected volatile String Jcg;
    protected volatile com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.a Sj;
    protected volatile d TEQ;
    protected final sP.e sP;
    protected volatile uA uA;
    protected volatile List<uA.c> vS;
    protected final AtomicInteger TKC = new AtomicInteger();
    protected final AtomicLong EjP = new AtomicLong();
    protected volatile boolean Ym = false;

    public final long f19609aa = Fmk.incrementAndGet();
    private final AtomicInteger sef = new AtomicInteger(0);
    private int Zq = -1;

    public Sj(com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.a aVar, sP.e eVar) {
        this.Sj = aVar;
    }

    public boolean EjP() {
        return this.sef.get() == 2;
    }

    protected void HiB() throws com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.Sj {
        if (sP()) {
            throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.Sj();
        }
    }

    protected boolean Jcg() {
        return vS() == 1;
    }

    protected void TKC() {
        this.sef.compareAndSet(0, 2);
    }

    public boolean sP() {
        return this.sef.get() == 1;
    }

    protected int vS() {
        if (this.uA != null) {
            return this.uA.f19660c.f19661a;
        }
        return 0;
    }

    public void Sj() {
        this.sef.compareAndSet(0, 1);
    }

    protected j6.c Sj(d.a aVar, int i10, int i11, String str) throws IOException {
        e eVarB = j6.d.a().b();
        j6.b bVar = new j6.b();
        HashMap map = new HashMap();
        bVar.f63049b = aVar.f19638a;
        bVar.f63048a = 0;
        if ("HEAD".equalsIgnoreCase(str)) {
            bVar.f63048a = 4;
        }
        List<uA.c> list = this.vS;
        if (list != null && !list.isEmpty()) {
            for (uA.c cVar : list) {
                if (!"Range".equalsIgnoreCase(cVar.f19671a) && !"Connection".equalsIgnoreCase(cVar.f19671a) && !"Proxy-Connection".equalsIgnoreCase(cVar.f19671a) && !HttpHeaders.HOST.equalsIgnoreCase(cVar.f19671a)) {
                    map.put(cVar.f19671a, cVar.f19672b);
                }
            }
        }
        String strE = h6.a.e(i10, i11);
        if (strE != null) {
            map.put("Range", strE);
        }
        if (a.f19623e) {
            map.put(HttpHeaders.CACHE_CONTROL, "no-cache");
        }
        EjP ejPJ = EjP.j();
        vS vSVarJ = vS.j();
        boolean z10 = this.uA == null;
        if (z10) {
            ejPJ.c();
        } else {
            vSVarJ.p();
        }
        if (z10) {
            ejPJ.l();
        } else {
            vSVarJ.n();
        }
        bVar.f63052e = map;
        if (this.Ym) {
            this.Ym = false;
            return null;
        }
        return eVarB.a(bVar);
    }

    protected void Sj(int i10, int i11) {
        if (i10 <= 0 || i11 < 0) {
            return;
        }
        int i12 = a.f19624f;
        int iVS = vS();
        if (i12 == 1 || (i12 == 2 && iVS == 1)) {
            int i13 = (int) ((i11 / i10) * 100.0f);
            if (i13 > 100) {
                i13 = 100;
            }
            synchronized (this) {
                try {
                    if (i13 <= this.Zq) {
                        return;
                    }
                    this.Zq = i13;
                    h6.a.o(new Runnable() {
                        @Override
                        public void run() {
                            Sj.this.getClass();
                        }
                    });
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
