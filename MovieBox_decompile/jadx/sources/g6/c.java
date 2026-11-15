package g6;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Ym;
import com.bytedance.sdk.component.sP.Sj.Zq;
import com.bytedance.sdk.component.sP.Sj.sP;
import com.bytedance.sdk.component.sP.Sj.uvD;
import com.cloud.tmc.miniapp.bridge.PermissionScopeBridge;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class c {

    private Context f60666a;

    private TKC f60667b;

    private File f60669d;

    private File f60670e;

    private volatile boolean f60668c = false;

    private final List f60671f = new ArrayList();

    private volatile boolean f60672g = false;

    public c(Context context, TKC tkc) {
        this.f60669d = null;
        this.f60670e = null;
        this.f60666a = context;
        this.f60667b = tkc;
        this.f60669d = e6.b.d(tkc.sP(), tkc.sef());
        this.f60670e = e6.b.c(tkc.sP(), tkc.sef());
    }

    public void a() {
        try {
            this.f60670e.delete();
            this.f60669d.delete();
        } catch (Throwable unused) {
        }
    }

    public void c() {
        try {
            if (this.f60669d.renameTo(this.f60670e)) {
                return;
            }
            throw new IOException("Error renaming file " + this.f60669d + " to " + this.f60670e + " for completion!");
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    public void g(TKC tkc, int i10) {
        synchronized (x5.a.InterfaceC0938a.class) {
            try {
                for (x5.a.InterfaceC0938a interfaceC0938a : this.f60671f) {
                    if (interfaceC0938a != null) {
                        interfaceC0938a.Sj(tkc, i10);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void h(TKC tkc, int i10, String str) {
        synchronized (x5.a.InterfaceC0938a.class) {
            try {
                for (x5.a.InterfaceC0938a interfaceC0938a : this.f60671f) {
                    if (interfaceC0938a != null) {
                        interfaceC0938a.Sj(tkc, i10, str);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void l(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    private void o() {
        Ym.Sj sjSP = v5.b.a() != null ? v5.b.a().sP() : new Ym.Sj("v_preload");
        long jUvD = this.f60667b.uvD();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        sjSP.Sj(jUvD, timeUnit).sP(this.f60667b.dNu(), timeUnit).TKC(this.f60667b.TzV(), timeUnit);
        Ym ymSj = sjSP.Sj();
        Fmk.Sj sj2 = new Fmk.Sj();
        long length = this.f60669d.length();
        int iTKC = this.f60667b.TKC();
        boolean zTEQ = this.f60667b.TEQ();
        int iSj = this.f60667b.Sj();
        if (iSj > 0) {
            if (iSj >= this.f60667b.uA()) {
                zTEQ = true;
            } else {
                iTKC = iSj;
            }
        }
        sj2.Sj("videoPreload").Sj(6);
        if (zTEQ) {
            sj2.Sj("RANGE", "bytes=" + length + "-").sP(this.f60667b.Fmk()).Sj().sP();
        } else {
            sj2.Sj("RANGE", "bytes=" + length + "-" + iTKC).sP(this.f60667b.Fmk()).Sj().sP();
        }
        ymSj.Sj(sj2.sP()).Sj(new a(length));
    }

    public void r(TKC tkc, int i10) {
        synchronized (x5.a.InterfaceC0938a.class) {
            try {
                for (x5.a.InterfaceC0938a interfaceC0938a : this.f60671f) {
                    if (interfaceC0938a != null) {
                        interfaceC0938a.sP(tkc, i10);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private boolean t() {
        if (this.f60670e.exists()) {
            return true;
        }
        if (!this.f60667b.TEQ()) {
            if (this.f60669d.length() >= this.f60667b.TKC()) {
                return true;
            }
            if (this.f60667b.Sj() > 0 && this.f60669d.length() >= this.f60667b.Sj()) {
                return true;
            }
        }
        return false;
    }

    public TKC e() {
        return this.f60667b;
    }

    public void m(x5.a.InterfaceC0938a interfaceC0938a) {
        if (this.f60672g) {
            synchronized (x5.a.InterfaceC0938a.class) {
                this.f60671f.add(interfaceC0938a);
            }
            return;
        }
        this.f60671f.add(interfaceC0938a);
        if (t()) {
            this.f60667b.Jcg(1);
            g(this.f60667b, 200);
            b.b(this.f60667b);
        } else {
            this.f60672g = true;
            this.f60667b.Jcg(0);
            o();
        }
    }

    public void n(boolean z10) {
        this.f60668c = z10;
    }

    class a implements com.bytedance.sdk.component.sP.Sj.TKC {

        final long f60673a;

        a(long j10) {
            this.f60673a = j10;
        }

        @Override
        public void Sj(sP sPVar, IOException iOException) {
            c cVar = c.this;
            cVar.h(cVar.f60667b, PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_IS_EMPTY, iOException.getMessage());
            b.b(c.this.f60667b);
        }

        /* JADX WARN: Code duplicated, block: B:65:0x0159 A[Catch: all -> 0x015e, TryCatch #6 {all -> 0x015e, blocks: (B:63:0x014c, B:65:0x0159, B:68:0x0160), top: B:83:0x014c }] */
        @Override
        public void Sj(sP sPVar, Zq zq2) {
            int iTKC;
            InputStream inputStreamTKC;
            RandomAccessFile randomAccessFile;
            uvD uvdVS;
            long jSj;
            long j10 = this.f60673a;
            uvD uvd = null;
            uvd = null;
            randomAccessFile = null;
            randomAccessFile = null;
            uvd = null;
            RandomAccessFile randomAccessFile2 = null;
            if (zq2 != null) {
                try {
                    boolean zEjP = zq2.EjP();
                    if (!zEjP) {
                        c cVar = c.this;
                        cVar.h(cVar.f60667b, zq2.TKC(), zq2.HiB());
                        c.this.l(null);
                        c.this.l(null);
                        c.this.l(uvd);
                    }
                    uvdVS = zq2.vS();
                    try {
                        uvdVS = zq2.vS();
                        if (!zEjP || uvdVS == null) {
                            inputStreamTKC = null;
                            jSj = 0;
                        } else {
                            jSj = this.f60673a + uvdVS.Sj();
                            inputStreamTKC = uvdVS.TKC();
                        }
                        try {
                            if (inputStreamTKC == null) {
                                c cVar2 = c.this;
                                cVar2.h(cVar2.f60667b, zq2.TKC(), zq2.HiB());
                            } else {
                                randomAccessFile = new RandomAccessFile(c.this.f60669d, "rw");
                                try {
                                    byte[] bArr = new byte[8192];
                                    long j11 = 0;
                                    while (true) {
                                        int i10 = 0;
                                        while (true) {
                                            int i11 = inputStreamTKC.read(bArr, i10, 8192 - i10);
                                            if (i11 != -1) {
                                                if (c.this.f60668c) {
                                                    c cVar3 = c.this;
                                                    cVar3.r(cVar3.f60667b, zq2.TKC());
                                                    c.this.l(randomAccessFile);
                                                } else {
                                                    i10 += i11;
                                                    j11 += (long) i11;
                                                    if (j11 % PlaybackStateCompat.ACTION_PLAY_FROM_URI == 0 || j11 == jSj - this.f60673a) {
                                                        e6.b.b(randomAccessFile, bArr, Long.valueOf(j10).intValue(), i10, c.this.f60667b.sef());
                                                        j10 += (long) i10;
                                                    }
                                                }
                                            } else {
                                                if (c.this.f60667b.TEQ() && jSj == c.this.f60669d.length()) {
                                                    c.this.c();
                                                }
                                                c cVar4 = c.this;
                                                cVar4.g(cVar4.f60667b, zq2.TKC());
                                                randomAccessFile2 = randomAccessFile;
                                            }
                                        }
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    uvd = uvdVS;
                                    iTKC = PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_IS_EMPTY;
                                    try {
                                        c.this.a();
                                        c cVar5 = c.this;
                                        TKC tkc = cVar5.f60667b;
                                        if (zq2 != null) {
                                            iTKC = zq2.TKC();
                                        }
                                        cVar5.h(tkc, iTKC, th.getMessage());
                                        c.this.l(randomAccessFile);
                                        c.this.l(inputStreamTKC);
                                        c.this.l(uvd);
                                    } finally {
                                        c.this.l(randomAccessFile);
                                        c.this.l(inputStreamTKC);
                                        c.this.l(uvd);
                                        c.this.l(zq2);
                                        c.this.f60667b.Fmk();
                                        c.this.f60667b.TKC();
                                        b.b(c.this.f60667b);
                                    }
                                }
                            }
                            c.this.l(randomAccessFile2);
                        } catch (Throwable th3) {
                            th = th3;
                            randomAccessFile = randomAccessFile2;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        inputStreamTKC = null;
                        randomAccessFile = null;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    inputStreamTKC = null;
                    randomAccessFile = null;
                }
            } else {
                try {
                    c cVar6 = c.this;
                    TKC tkc2 = cVar6.f60667b;
                    iTKC = PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_IS_EMPTY;
                    try {
                        cVar6.h(tkc2, PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_IS_EMPTY, "Network link failed.");
                        uvdVS = null;
                        inputStreamTKC = null;
                        c.this.l(randomAccessFile2);
                    } catch (Throwable th6) {
                        th = th6;
                        inputStreamTKC = null;
                        randomAccessFile = null;
                        c.this.a();
                        c cVar7 = c.this;
                        TKC tkc3 = cVar7.f60667b;
                        if (zq2 != null) {
                            iTKC = zq2.TKC();
                        }
                        cVar7.h(tkc3, iTKC, th.getMessage());
                        c.this.l(randomAccessFile);
                        c.this.l(inputStreamTKC);
                        c.this.l(uvd);
                    }
                } catch (Throwable th7) {
                    th = th7;
                    iTKC = PermissionScopeBridge.ERROR_CODE_SCOPE_NAME_IS_EMPTY;
                }
            }
            c.this.l(inputStreamTKC);
            c.this.l(uvdVS);
        }
    }
}
