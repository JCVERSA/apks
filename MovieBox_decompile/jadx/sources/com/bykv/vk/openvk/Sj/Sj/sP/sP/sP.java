package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import android.os.SystemClock;
import android.provider.BaseColumns;
import android.text.TextUtils;
import android.util.Log;
import com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.TKC;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.List;

public class sP extends Sj {
    final Object Fmk;
    private volatile com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.sP TzV;
    private final int Zq;
    private volatile Dq.Sj dNu;
    final Object sef;
    private final b uvD;

    static final class a {

        String f19641a;

        String f19642b;

        com.bykv.vk.openvk.Sj.Sj.sP.sP.d f19643c;

        com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.a f19644d;

        e f19645e;

        List f19646f;

        int f19647g;

        uA f19648h;

        b f19649i;

        Object f19650j;

        a() {
        }

        a a(int i10) {
            this.f19647g = i10;
            return this;
        }

        a b(com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.a aVar) {
            if (aVar == null) {
                throw new IllegalArgumentException("cache == null");
            }
            this.f19644d = aVar;
            return this;
        }

        a c(com.bykv.vk.openvk.Sj.Sj.sP.sP.d dVar) {
            if (dVar == null) {
                throw new IllegalArgumentException("urls is empty");
            }
            this.f19643c = dVar;
            return this;
        }

        a d(b bVar) {
            this.f19649i = bVar;
            return this;
        }

        a e(e eVar) {
            throw new IllegalArgumentException("db == null");
        }

        a f(uA uAVar) {
            this.f19648h = uAVar;
            return this;
        }

        a g(Object obj) {
            this.f19650j = obj;
            return this;
        }

        a h(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("rawKey == null");
            }
            this.f19641a = str;
            return this;
        }

        a i(List list) {
            this.f19646f = list;
            return this;
        }

        sP j() {
            com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.a aVar = this.f19644d;
            throw new IllegalArgumentException();
        }

        a k(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("key == null");
            }
            this.f19642b = str;
            return this;
        }
    }

    public interface b {
        void a(sP sPVar);
    }

    public abstract class c extends SQLiteOpenHelper {
    }

    public class d {

        public final String f19651a;

        public final String f19652b;

        public final int f19653c;

        public final int f19654d;

        public final String f19655e;

        public d(String str, String str2, int i10, int i11, String str3) {
            this.f19651a = str;
            this.f19652b = str2;
            this.f19653c = i10;
            this.f19654d = i11;
            this.f19655e = str3;
        }
    }

    public abstract class e {

        private final c f19656a;

        private volatile SQLiteStatement f19657b;

        public abstract d c(String str, int i10);

        public abstract void d(d dVar);
    }

    public abstract class f implements BaseColumns {
        public static int a(boolean z10) {
            return z10 ? 1 : 0;
        }
    }

    sP(a aVar) {
        super(aVar.f19644d, aVar.f19645e);
        this.Zq = aVar.f19647g;
        this.uvD = aVar.f19649i;
        this.Fmk = this;
        this.Jcg = aVar.f19641a;
        this.Dq = aVar.f19642b;
        this.vS = aVar.f19646f;
        this.TEQ = aVar.f19643c;
        this.uA = aVar.f19648h;
        this.sef = aVar.f19650j;
    }

    /* JADX WARN: Code duplicated, block: B:92:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:94:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:96:0x01ed  */
    private void Sj(com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVar) throws Throwable {
        File fileC = this.Sj.c(this.Dq);
        long length = fileC.length();
        int i10 = this.Zq;
        if (i10 > 0 && length >= i10) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                StringBuilder sb2 = new StringBuilder("no necessary to download for ");
                sb2.append(this.Dq);
                sb2.append(", cache file size: ");
                sb2.append(length);
                sb2.append(", max: ");
                sb2.append(this.Zq);
                return;
            }
            return;
        }
        int iVS = vS();
        d dVarC = this.sP.c(this.Dq, iVS);
        if (dVarC != null && length >= dVarC.f19653c) {
            if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                new StringBuilder("file download complete, key: ").append(this.Dq);
                return;
            }
            return;
        }
        HiB();
        int i11 = (int) length;
        j6.c cVarSj = Sj(aVar, i11, this.Zq, "GET");
        if (cVarSj == null) {
            return;
        }
        boolean z10 = true;
        Dq dq2 = null;
        try {
            HiB();
            String strH = h6.a.h(cVarSj, this.uA == null && com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19622d, true);
            if (strH != null) {
                throw new TKC(strH + ", rawKey: " + this.Jcg + ", url: " + aVar);
            }
            int iB = h6.a.b(cVarSj);
            if (dVarC != null && dVarC.f19653c != iB) {
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                    Log.e("TAG_PROXY_DownloadTask", "Content-Length not match, old: " + dVarC.f19653c + ", " + iB + ", key: " + this.Dq);
                }
                throw new com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.sP("Content-Length not match, old length: " + dVarC.f19653c + ", new length: " + iB + ", rawKey: " + this.Jcg + ", currentUrl: " + aVar + ", previousInfo: " + dVarC.f19655e);
            }
            h6.a.d(cVarSj, this.sP, this.Dq, iVS);
            d dVarC2 = this.sP.c(this.Dq, iVS);
            int i12 = dVarC2 == null ? 0 : dVarC2.f19653c;
            InputStream inputStreamA = cVarSj.a();
            Dq dq3 = new Dq(fileC, com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19621c ? "rwd" : "rw");
            try {
                dq3.c(length);
                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                    "preload start from: ".concat(String.valueOf(length));
                }
                byte[] bArr = new byte[8192];
                while (true) {
                    int i13 = inputStreamA.read(bArr);
                    if (i13 < 0) {
                        try {
                            TKC();
                            boolean z11 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b;
                            h6.a.m(cVarSj.a());
                            dq3.b();
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            dq2 = dq3;
                            z10 = false;
                            h6.a.m(cVarSj.a());
                            if (dq2 != null) {
                                dq2.b();
                            }
                            if (z10) {
                                Sj();
                                if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                                    Log.w("TAG_PROXY_DownloadTask", "cancel call");
                                }
                            }
                            throw th;
                        }
                    }
                    HiB();
                    if (i13 > 0) {
                        dq3.d(bArr, 0, i13);
                        i11 += i13;
                        if (this.uA != null) {
                            synchronized (this.Fmk) {
                                this.Fmk.notifyAll();
                            }
                        }
                        this.TKC.addAndGet(i13);
                        Sj(i12, i11);
                    }
                    int i14 = this.Zq;
                    if (i14 > 0 && i11 >= i14) {
                        boolean z12 = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b;
                        if (z12) {
                            Log.w("TAG_PROXY_DownloadTask", "download, more data received, currentCacheFileSize: " + i11 + ", max: " + this.Zq);
                        }
                        h6.a.m(cVarSj.a());
                        dq3.b();
                        Sj();
                        if (z12) {
                            Log.w("TAG_PROXY_DownloadTask", "cancel call");
                            return;
                        }
                        return;
                    }
                    HiB();
                }
            } catch (Throwable th3) {
                th = th3;
                dq2 = dq3;
                h6.a.m(cVarSj.a());
                if (dq2 != null) {
                    dq2.b();
                }
                if (z10) {
                    Sj();
                    if (com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19620b) {
                        Log.w("TAG_PROXY_DownloadTask", "cancel call");
                    }
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    private boolean TEQ() throws com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.Sj {
        while (this.TEQ.b()) {
            HiB();
            com.bykv.vk.openvk.Sj.Sj.sP.sP.d.a aVarD = this.TEQ.d();
            try {
                Sj(aVarD);
                return true;
            } catch (Dq.Sj e10) {
                this.dNu = e10;
                Jcg();
                return false;
            } catch (TKC unused) {
                aVarD.a();
                Jcg();
            } catch (com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.sP e11) {
                this.TzV = e11;
                return false;
            } catch (IOException e12) {
                if (e12 instanceof SocketTimeoutException) {
                    aVarD.b();
                }
                if (!sP()) {
                    Jcg();
                }
            } catch (Throwable unused2) {
                return false;
            }
        }
        return false;
    }

    Dq.Sj Dq() {
        return this.dNu;
    }

    @Override
    public void run() {
        this.Sj.b(this.Dq);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            TEQ();
        } catch (Throwable unused) {
        }
        this.EjP.set(SystemClock.elapsedRealtime() - jElapsedRealtime);
        this.Sj.d(this.Dq);
        b bVar = this.uvD;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    com.bykv.vk.openvk.Sj.Sj.sP.sP.TKC.sP uA() {
        return this.TzV;
    }
}
