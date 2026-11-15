package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import android.os.SystemClock;
import android.util.Log;
import com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.TKC;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;

class Jcg extends Sj {
    private final Socket Fmk;
    private final EjP Zq;
    private volatile boolean dNu;
    private final c sef;
    private volatile sP uvD;

    class a implements sP.b {
        a() {
        }

        @Override
        public void a(sP sPVar) {
            Jcg.this.TKC.addAndGet(sPVar.TKC.get());
            Jcg.this.EjP.addAndGet(sPVar.EjP.get());
            synchronized (sPVar.Fmk) {
                sPVar.Fmk.notifyAll();
            }
            if (sPVar.EjP()) {
                Jcg.this.Zq.f(Jcg.this.Jcg(), null);
            }
        }
    }

    static final class b {

        com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.a f19602a;

        sP.e f19603b;

        Socket f19604c;

        c f19605d;

        b() {
        }

        b a(c cVar) {
            this.f19605d = cVar;
            return this;
        }

        b b(sP.e eVar) {
            throw new IllegalArgumentException("db == null");
        }

        b c(Socket socket) {
            if (socket == null) {
                throw new IllegalArgumentException("socket == null");
            }
            this.f19604c = socket;
            return this;
        }

        Jcg d() {
            throw new IllegalArgumentException();
        }
    }

    public interface c {
        void a(Jcg jcg);

        void b(Jcg jcg);
    }

    private static class d {

        private final OutputStream f19606a;

        private int f19607b;

        private boolean f19608c;

        d(OutputStream outputStream, int i10) {
            this.f19606a = outputStream;
            this.f19607b = i10;
        }

        void a(byte[] bArr, int i10, int i11) throws com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.EjP {
            if (this.f19608c) {
                return;
            }
            try {
                this.f19606a.write(bArr, i10, i11);
                this.f19608c = true;
            } catch (IOException e10) {
                throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.EjP(e10);
            }
        }

        boolean b() {
            return this.f19608c;
        }

        int c() {
            return this.f19607b;
        }

        void d(byte[] bArr, int i10, int i11) throws com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.EjP {
            try {
                this.f19606a.write(bArr, i10, i11);
                this.f19607b += i11;
            } catch (IOException e10) {
                throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.EjP(e10);
            }
        }
    }

    Jcg(b bVar) {
        super(bVar.f19602a, bVar.f19603b);
        this.dNu = true;
        this.Fmk = bVar.f19604c;
        this.sef = bVar.f19605d;
        this.Zq = EjP.j();
    }

    private d Dq() {
        try {
            this.uA = uA.a(this.Fmk.getInputStream());
            this.Fmk.getOutputStream();
            if (this.uA.f19660c.f19661a == 1) {
                boolean z10 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b;
            } else {
                TKC tkc = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19619a;
            }
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                Log.e("TAG_PROXY_ProxyTask", "cache is null");
            }
            return null;
        } catch (uA.EjP e10) {
            h6.a.q(this.Fmk);
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e10));
            }
            if (this.Sj != null) {
                Jcg();
            }
            return null;
        } catch (IOException e11) {
            h6.a.q(this.Fmk);
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e11));
            }
            if (this.Sj != null) {
                Jcg();
            }
            return null;
        }
    }

    private void EjP(d dVar, com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVar) throws Throwable {
        Dq dq2;
        uA();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int iC = dVar.c();
        j6.c cVarSj = Sj(aVar, iC, this.uA.f19660c.f19665e, "GET");
        if (cVarSj == null) {
            return;
        }
        Dq dq3 = null;
        int i10 = 0;
        try {
            String strH = h6.a.h(cVarSj, false, true);
            if (strH != null) {
                throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.TKC(strH + ", rawKey: " + this.Jcg + ", url: " + aVar);
            }
            sP.d dVarC = this.sP.c(this.Dq, vS());
            int iB = h6.a.b(cVarSj);
            if (dVarC != null && dVarC.f19653c != iB) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                    Log.e("TAG_PROXY_ProxyTask", "Content-Length not match, old: " + dVarC.f19653c + ", " + iB + ", key: " + this.Dq);
                }
                throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.sP("Content-Length not match, old length: " + dVarC.f19653c + ", new length: " + iB + ", rawKey: " + this.Jcg + ", currentUrl: " + aVar + ", previousInfo: " + dVarC.f19655e);
            }
            if (!dVar.b()) {
                String strG = h6.a.g(cVarSj, iC);
                HiB();
                byte[] bytes = strG.getBytes(h6.a.f61295b);
                dVar.a(bytes, 0, bytes.length);
            }
            HiB();
            File fileA = this.Sj.a(this.Dq);
            if (!this.dNu || fileA == null || fileA.length() < dVar.c()) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                    Log.w("TAG_PROXY_ProxyTask", "can't write to cache file in network task, cache file size: " + fileA.length() + ", from: " + dVar.c());
                }
                dq2 = null;
            } else {
                h6.a.d(cVarSj, this.sP, this.Dq, this.uA.f19660c.f19661a);
                try {
                    dq2 = new Dq(fileA, "rwd");
                    try {
                        dq2.c(dVar.c());
                        if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                            StringBuilder sb2 = new StringBuilder("can write to cache file in network task, cache file size: ");
                            sb2.append(fileA.length());
                            sb2.append(", from: ");
                            sb2.append(dVar.c());
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        dq3 = dq2;
                    }
                } catch (Dq.Sj unused) {
                    dq2 = null;
                }
            }
            sP.d dVarC2 = this.sP.c(this.Dq, vS());
            int i11 = dVarC2 == null ? 0 : dVarC2.f19653c;
            byte[] bArr = new byte[8192];
            InputStream inputStreamA = cVarSj.a();
            int i12 = 0;
            while (true) {
                try {
                    int i13 = inputStreamA.read(bArr);
                    if (i13 < 0) {
                        break;
                    }
                    HiB();
                    if (i13 > 0) {
                        dVar.d(bArr, 0, i13);
                        i12 += i13;
                        if (dq2 != null) {
                            try {
                                dq2.d(bArr, 0, i13);
                            } catch (Throwable th3) {
                                dq2.b();
                                try {
                                    if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                                        Log.e("TAG_PROXY_ProxyTask", "append to cache file error in network task!!! " + Log.getStackTraceString(th3));
                                    }
                                    dq2 = null;
                                } catch (Throwable th4) {
                                    th = th4;
                                }
                            }
                        }
                        Sj(i11, dVar.c());
                    }
                    HiB();
                } catch (Throwable th5) {
                    th = th5;
                    dq3 = dq2;
                }
                th = th5;
                dq3 = dq2;
                i10 = i12;
                h6.a.m(cVarSj.a());
                if (dq3 != null) {
                    dq3.b();
                }
                this.TKC.addAndGet(i10);
                this.EjP.addAndGet(SystemClock.elapsedRealtime() - jElapsedRealtime);
                throw th;
            }
            boolean z10 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b;
            TKC();
            h6.a.m(cVarSj.a());
            if (dq2 != null) {
                dq2.b();
            }
            this.TKC.addAndGet(i12);
            this.EjP.addAndGet(SystemClock.elapsedRealtime() - jElapsedRealtime);
        } catch (Throwable th6) {
            th = th6;
        }
    }

    private void TKC(d dVar, com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVar) throws Throwable {
        if (this.dNu) {
            File fileC = this.Sj.c(this.Dq);
            long length = fileC.length();
            sP.d dVarC = this.sP.c(this.Dq, this.uA.f19660c.f19661a);
            int iC = dVar.c();
            if (length > dVar.c()) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                    new StringBuilder("cache hit, remainSize: ").append(length - ((long) iC));
                }
                Sj(dVarC, fileC, dVar, aVar);
                return;
            }
        } else {
            dVar.c();
        }
        EjP(dVar, aVar);
    }

    private void sP(d dVar, com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVar) throws com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.EjP, IOException {
        byte[] bArrSj = Sj(this.sP.c(this.Dq, this.uA.f19660c.f19661a), dVar, aVar);
        if (bArrSj == null) {
            return;
        }
        dVar.a(bArrSj, 0, bArrSj.length);
    }

    private void uA() {
        sP sPVar = this.uvD;
        this.uvD = null;
        if (sPVar != null) {
            sPVar.Sj();
        }
    }

    @Override
    public void run() {
        sP.d dVarC;
        d dVarDq = Dq();
        if (dVarDq == null) {
            return;
        }
        c cVar = this.sef;
        if (cVar != null) {
            cVar.a(this);
        }
        this.Sj.b(this.Dq);
        if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19625g != 0 && ((dVarC = this.sP.c(this.Dq, this.uA.f19660c.f19661a)) == null || this.Sj.c(this.Dq).length() < dVarC.f19653c)) {
            this.Zq.f(Jcg(), this.Dq);
        }
        try {
            Sj(dVarDq);
        } catch (com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.Sj e10) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e10));
            }
        } catch (Throwable th2) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(th2));
            }
        }
        this.Sj.d(this.Dq);
        this.Zq.f(Jcg(), null);
        Sj();
        h6.a.q(this.Fmk);
        c cVar2 = this.sef;
        if (cVar2 != null) {
            cVar2.b(this);
        }
    }

    private boolean Sj(d dVar) throws Throwable {
        while (this.TEQ.b()) {
            HiB();
            com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVarD = this.TEQ.d();
            try {
                Sj(dVar, aVarD);
                return true;
            } catch (Dq.Sj e10) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e10));
                }
                this.dNu = false;
                Jcg();
            } catch (com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.EjP e11) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e11));
                }
                return true;
            } catch (com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.TKC unused) {
                aVarD.a();
                Jcg();
            } catch (com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.sP e12) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e12));
                }
                return false;
            } catch (IOException e13) {
                if (e13 instanceof SocketTimeoutException) {
                    aVarD.b();
                }
                if (!sP()) {
                    Jcg();
                } else if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                    if ("Canceled".equalsIgnoreCase(e13.getMessage())) {
                        Log.w("TAG_PROXY_ProxyTask", "okhttp call canceled");
                    } else {
                        Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e13));
                    }
                }
            } catch (Exception e14) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e14));
                }
            }
        }
        return false;
    }

    private void Sj(d dVar, com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVar) throws Throwable {
        if ("HEAD".equalsIgnoreCase(this.uA.f19658a.f19668a)) {
            sP(dVar, aVar);
        } else {
            TKC(dVar, aVar);
        }
    }

    private byte[] Sj(sP.d dVar, d dVar2, com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVar) throws IOException {
        if (dVar != null) {
            boolean z10 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b;
            return h6.a.f(dVar, dVar2.c()).getBytes(h6.a.f61295b);
        }
        j6.c cVarSj = Sj(aVar, 0, -1, "HEAD");
        if (cVarSj == null) {
            return null;
        }
        try {
            String strH = h6.a.h(cVarSj, false, false);
            if (strH == null) {
                sP.d dVarD = h6.a.d(cVarSj, this.sP, this.Dq, this.uA.f19660c.f19661a);
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                    Log.w("TAG_PROXY_ProxyTask", "get header from network");
                }
                byte[] bytes = h6.a.f(dVarD, dVar2.c()).getBytes(h6.a.f61295b);
                h6.a.m(cVarSj.a());
                return bytes;
            }
            throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.TKC(strH + ", rawKey: " + this.Jcg + ", url: " + aVar);
        } catch (Throwable th2) {
            h6.a.m(cVarSj.a());
            throw th2;
        }
    }

    private void Sj(sP.d dVar, File file, d dVar2, com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVar) throws Throwable {
        final com.bytedance.sdk.component.Dq.Jcg jcg;
        sP sPVar;
        if (!dVar2.b()) {
            byte[] bArrSj = Sj(dVar, dVar2, aVar);
            HiB();
            if (bArrSj == null) {
                return;
            } else {
                dVar2.a(bArrSj, 0, bArrSj.length);
            }
        }
        Dq dq2 = null;
        if (dVar == null && (dVar = this.sP.c(this.Dq, this.uA.f19660c.f19661a)) == null) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                Log.e("TAG_PROXY_ProxyTask", "failed to get video header info from db");
            }
            Sj(null, dVar2, aVar);
            dVar = this.sP.c(this.Dq, this.uA.f19660c.f19661a);
            if (dVar == null) {
                throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.TKC("failed to get header, rawKey: " + this.Jcg + ", url: " + aVar);
            }
        }
        if (file.length() >= dVar.f19653c || !((sPVar = this.uvD) == null || sPVar.sP() || sPVar.EjP())) {
            jcg = null;
        } else {
            sP sPVarJ = new sP.a().b(this.Sj).e(this.sP).h(this.Jcg).k(this.Dq).c(new com.bykv.vk.openvk.Sj.Sj.sP.sP.d(aVar.f19638a)).i(this.vS).f(this.uA).d(new a()).j();
            this.uvD = sPVarJ;
            jcg = new com.bytedance.sdk.component.Dq.Jcg(sPVarJ, null, 10, 1);
            com.bytedance.sdk.component.Dq.vS.sP(new com.bytedance.sdk.component.Dq.Dq("processCacheNetWorkConcurrent") {
                @Override
                public void run() {
                    jcg.run();
                }
            });
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                Log.e("TAG_PROXY_ProxyTask", "fire download in process cache task");
            }
        }
        byte[] bArr = new byte[8192];
        try {
            Dq dq3 = new Dq(file, CampaignEx.JSON_KEY_AD_R);
            try {
                dq3.c(dVar2.c());
                int iMin = this.uA.f19660c.f19665e > 0 ? Math.min(dVar.f19653c, this.uA.f19660c.f19665e) : dVar.f19653c;
                while (dVar2.c() < iMin) {
                    HiB();
                    int iA = dq3.a(bArr);
                    if (iA <= 0) {
                        sP sPVar2 = this.uvD;
                        if (sPVar2 != null) {
                            com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.sP sPVarUA = sPVar2.uA();
                            if (sPVarUA == null) {
                                Dq.Sj sjDq = sPVar2.Dq();
                                if (sjDq != null) {
                                    throw sjDq;
                                }
                            } else {
                                throw sPVarUA;
                            }
                        }
                        if (sPVar2 != null && !sPVar2.sP() && !sPVar2.EjP()) {
                            HiB();
                            synchronized (sPVar2.Fmk) {
                                try {
                                    sPVar2.Fmk.wait(1000L);
                                } catch (InterruptedException unused) {
                                }
                            }
                        }
                        if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                            Log.e("TAG_PROXY_ProxyTask", "download task has finished!!!");
                        }
                        throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.TKC("illegal state download task has finished, rawKey: " + this.Jcg + ", url: " + aVar);
                    }
                    dVar2.d(bArr, 0, iA);
                    HiB();
                }
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                    StringBuilder sb2 = new StringBuilder("read cache file complete: ");
                    sb2.append(dVar2.c());
                    sb2.append(", ");
                    sb2.append(iMin);
                }
                TKC();
                dq3.b();
                if (jcg != null) {
                    try {
                        jcg.get();
                    } catch (Throwable unused2) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                dq2 = dq3;
                if (dq2 != null) {
                    dq2.b();
                }
                if (jcg != null) {
                    try {
                        jcg.get();
                    } catch (Throwable unused3) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override
    public void Sj() {
        super.Sj();
        uA();
    }
}
