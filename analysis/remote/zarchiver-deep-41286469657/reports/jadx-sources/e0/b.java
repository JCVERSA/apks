package e0;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Build;
import android.os.PowerManager;
import g0.k;
import java.io.File;
import java.util.List;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.archiver.C2JBridge;

public final class b {

    public static a f651a;

    public static class a {

        public String f652a;

        public int f653b;

        public long f654c;

        public int f655d;
    }

    public static final class C0010b extends Exception {
    }

    public static class c implements Runnable {

        public final Context f656a;

        public final ru.zdevs.zarchiver.d f657b;

        public final StringBuilder f658c;

        public final f0.d f659d;

        public class a implements g0.i.d {
            public a() {
            }

            @Override
            public final boolean a(g0.i iVar) {
                String str = ((k) iVar).f974i;
                c.this.f658c.append(str);
                if (c.this.f659d != null) {
                    h.d().g(c.this.f659d.l(), str);
                }
                synchronized (c.this.f658c) {
                    c.this.f658c.notifyAll();
                }
                return true;
            }
        }

        public class C0011b implements g0.i.c {
            public C0011b() {
            }

            @Override
            public final void b(g0.i iVar) {
                f0.d dVar = c.this.f659d;
                if (dVar != null) {
                    dVar.n(13);
                }
                synchronized (c.this.f658c) {
                    c.this.f658c.notifyAll();
                }
            }
        }

        public c(ru.zdevs.zarchiver.d dVar, ZArchiver zArchiver, StringBuilder sb, f0.d dVar2) {
            this.f657b = dVar;
            this.f656a = zArchiver;
            this.f658c = sb;
            this.f659d = dVar2;
        }

        @Override
        public final void run() {
            k kVar = new k(this.f657b, this.f656a);
            kVar.f962c = -2;
            kVar.f961b = new a();
            kVar.f960a = new C0011b();
            kVar.f963d |= 65536;
            AlertDialog alertDialog = kVar.f972g;
            if (alertDialog != null) {
                g0.i.s(alertDialog);
            }
        }
    }

    public static int a(int i2, int i3) {
        if (v0.b.a() >= 225280 || !(i2 == 16 || i2 == 32)) {
            return 0;
        }
        if (i3 == 5) {
            return 8;
        }
        if (i3 != 7) {
            return i3 != 9 ? 0 : 32;
        }
        return 16;
    }

    public static long b(int i2, int i3) {
        float f2;
        float f3;
        long j2;
        long j3 = 1024;
        long jA = ((long) a(i2, i3)) * 1024;
        if (jA != 0) {
            j3 = jA;
        } else if (i3 == 1) {
            j3 = 64;
        } else if (i3 != 3) {
            if (i3 != 7) {
                j3 = i3 != 9 ? 16384L : 65536L;
            } else {
                j3 = 32768;
            }
        }
        long jA2 = t0.b.a();
        if (jA2 == 0) {
            jA2 = Runtime.getRuntime().availableProcessors();
        }
        if (i2 != 16 && i2 != 32) {
            if (i2 == 128) {
                j2 = ((jA2 - 1) * 25) + 60;
            } else if (i2 == 64) {
                f2 = j3;
                f3 = 6.1f;
            } else {
                j2 = 16;
            }
            return ((jA2 - 1) * 4) + j2 + 4;
        }
        if (i3 < 5) {
            f2 = j3;
            f3 = 7.5f;
        } else {
            f2 = j3;
            f3 = i3 < 9 ? 11.5f : 10.5f;
        }
        j2 = (int) ((f2 * f3) / 1024.0f);
        return ((jA2 - 1) * 4) + j2 + 4;
    }

    public static a c(String str) throws C0010b {
        f651a = null;
        if (!C2JBridge.f1613c && !C2JBridge.e()) {
            throw new C0010b();
        }
        C2JBridge.cSetOption(4, t0.b.f(4) ? 1 : 0);
        C2JBridge.cList(5, str, "");
        a aVar = f651a;
        f651a = null;
        if (aVar != null && a0.c.s(str).startsWith("0")) {
            aVar.f655d |= 32;
        }
        return aVar;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0120 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x0118 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x0074 A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:99:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:39:0x008e  */
    /* JADX WARN: Code duplicated, block: B:41:0x0092  */
    /* JADX WARN: Code duplicated, block: B:42:0x0094  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a0 A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:99:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00b0 A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:99:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00be A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:99:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00d8 A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:99:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00e1 A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:99:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:72:0x010b A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:99:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:73:0x010f A[Catch: all -> 0x0123, TryCatch #0 {all -> 0x0123, blocks: (B:36:0x006a, B:38:0x0074, B:43:0x0095, B:45:0x00a0, B:48:0x00b0, B:50:0x00be, B:52:0x00c8, B:54:0x00ce, B:56:0x00d4, B:58:0x00dd, B:70:0x0107, B:72:0x010b, B:74:0x0112, B:76:0x0118, B:73:0x010f, B:57:0x00d8, B:59:0x00e1, B:63:0x00ef, B:65:0x00f8, B:67:0x00fe, B:69:0x0104), top: B:99:0x006a }] */
    /* JADX WARN: Code duplicated, block: B:84:0x012a A[Catch: all -> 0x013a, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0007, B:9:0x000e, B:10:0x0013, B:11:0x0014, B:13:0x0018, B:82:0x0126, B:84:0x012a, B:90:0x0132, B:92:0x0136, B:93:0x0139), top: B:101:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x006a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:38:0x0074, please report this as an issue */
    public static synchronized void d(h0.h hVar) {
        PowerManager.WakeLock wakeLockNewWakeLock;
        long length;
        boolean z2;
        boolean z3;
        String str;
        boolean z4;
        f0.d dVarJ;
        int i2;
        f0.d dVar;
        o0.a aVarC;
        if (!C2JBridge.f1613c && !C2JBridge.e()) {
            throw new C0010b();
        }
        ZApp zApp = ZApp.f1434c;
        PowerManager powerManager = zApp != null ? (PowerManager) zApp.getSystemService("power") : null;
        try {
            String str2 = hVar.f1108c;
            if (hVar.h()) {
                length = 0;
            } else {
                File file = new File(str2);
                length = file.length();
                if ((file.exists() && file.canRead()) || str2.startsWith("/SAF") || str2.startsWith("/uri/") || !t0.b.i(str2) || x0.g.b(hVar) != 2) {
                    z2 = false;
                }
                z3 = true;
                wakeLockNewWakeLock = null;
                while (z3) {
                    try {
                        if (h.d().e(str2)) {
                            str = "\\-p" + h.d().b(str2, true);
                        } else {
                            str = "";
                        }
                        if (z2) {
                            z4 = false;
                        } else {
                            z4 = true;
                        }
                        dVarJ = f0.a.j(z4);
                        C2JBridge.f1615e = dVarJ;
                        dVarJ.a(length, str2);
                        if (powerManager != null) {
                            wakeLockNewWakeLock = powerManager.newWakeLock(1, "ZArchiver:List");
                            wakeLockNewWakeLock.acquire(1200000L);
                        }
                        if (z2) {
                            aVarC = o0.a.c(t0.b.f2092m);
                            aVarC.f1287a = 0;
                            if (aVarC.f()) {
                                dVarJ.n(200);
                            } else if (!a0.c.f0(str2, str, aVarC, t0.b.f(4)) && dVarJ.e() <= 0 && dVarJ.g() == 0) {
                                dVarJ.n(3);
                            }
                            aVarC.close();
                        } else {
                            C2JBridge.cSetOption(1, t0.b.f2086g);
                            if (t0.b.f(4)) {
                                i2 = 1;
                            } else {
                                i2 = 0;
                            }
                            C2JBridge.cSetOption(4, i2);
                            if (!C2JBridge.cList(0, str2, str) && dVarJ.e() <= 0 && dVarJ.g() == 0) {
                                dVarJ.n(3);
                            }
                        }
                        dVar = C2JBridge.f1615e;
                        if (dVar != null) {
                            dVar.i();
                        } else {
                            dVarJ.clear();
                        }
                        if (dVarJ.g() == 2) {
                            ZApp.i(R.string.ERROR_WRONG_PASSWORD);
                        } else {
                            z3 = false;
                        }
                    } catch (Throwable th) {
                        th = th;
                        C2JBridge.f1615e = null;
                        if (wakeLockNewWakeLock != null) {
                            wakeLockNewWakeLock.release();
                        }
                        throw th;
                    }
                }
                C2JBridge.f1615e = null;
                if (wakeLockNewWakeLock != null) {
                    wakeLockNewWakeLock.release();
                }
            }
            z2 = true;
            z3 = true;
            wakeLockNewWakeLock = null;
            while (z3) {
                if (h.d().e(str2)) {
                    str = "\\-p" + h.d().b(str2, true);
                } else {
                    str = "";
                }
                if (z2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                dVarJ = f0.a.j(z4);
                C2JBridge.f1615e = dVarJ;
                dVarJ.a(length, str2);
                if (powerManager != null) {
                    wakeLockNewWakeLock = powerManager.newWakeLock(1, "ZArchiver:List");
                    wakeLockNewWakeLock.acquire(1200000L);
                }
                if (z2) {
                    aVarC = o0.a.c(t0.b.f2092m);
                    aVarC.f1287a = 0;
                    if (aVarC.f()) {
                        dVarJ.n(200);
                    } else if (!a0.c.f0(str2, str, aVarC, t0.b.f(4))) {
                        dVarJ.n(3);
                    }
                    aVarC.close();
                } else {
                    C2JBridge.cSetOption(1, t0.b.f2086g);
                    if (t0.b.f(4)) {
                        i2 = 1;
                    } else {
                        i2 = 0;
                    }
                    C2JBridge.cSetOption(4, i2);
                    if (!C2JBridge.cList(0, str2, str)) {
                        dVarJ.n(3);
                    }
                }
                dVar = C2JBridge.f1615e;
                if (dVar != null) {
                    dVar.i();
                } else {
                    dVarJ.clear();
                }
                if (dVarJ.g() == 2) {
                    ZApp.i(R.string.ERROR_WRONG_PASSWORD);
                } else {
                    z3 = false;
                }
            }
            C2JBridge.f1615e = null;
            if (wakeLockNewWakeLock != null) {
                wakeLockNewWakeLock.release();
            }
        } catch (Throwable th2) {
            th = th2;
            wakeLockNewWakeLock = null;
        }
    }

    public static String e(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            sb.append('\\');
            sb.append(str);
        }
        return sb.toString();
    }

    public static int f(boolean z2) {
        int i2 = z2 ? 32 : t0.b.f2085f & 4080;
        long jA = v0.b.a() - 10240;
        if (jA >= b(i2, 9) * 1024) {
            return 9;
        }
        return jA >= b(i2, 7) * 1024 ? 7 : 5;
    }

    public static String g(f0.d dVar) {
        StringBuilder sb = new StringBuilder();
        try {
            ZArchiver zArchiverZ = ZArchiver.z();
            if (zArchiverZ == null) {
                return "";
            }
            if (dVar != null) {
                h.d().a();
            }
            ZApp.f().post(new c(zArchiverZ.f1445h, zArchiverZ, sb, dVar));
            synchronized (sb) {
                try {
                    sb.wait();
                } catch (InterruptedException unused) {
                }
            }
            try {
                ZArchiver zArchiverZ2 = ZArchiver.z();
                if (zArchiverZ2 == null) {
                    return "";
                }
                g0.i iVarB = zArchiverZ2.f1445h.b(-2, 2, -1);
                if (iVarB != null) {
                    iVarB.f();
                }
            } catch (Exception unused2) {
            }
            return sb.toString();
        } catch (Exception unused3) {
            return "";
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0085  */
    public static boolean h(h0.h hVar, long j2) {
        boolean z2;
        long j3;
        if (Build.VERSION.SDK_INT >= 26 && t0.b.f(8)) {
            int iH = f0.a.m().h();
            if (a0.c.K(iH, 16777216)) {
                return false;
            }
            String str = hVar.f1108c;
            if (str == null) {
                z2 = false;
            } else {
                String strU = a0.c.u(str);
                if (strU.equals("zip") || strU.equals("apk") || strU.equals("mtz") || strU.equals("7z") || strU.equals("rar") || strU.equals("lzo") || strU.equals("lzh") || strU.equals("lha") || strU.equals("wim") || strU.equals("egg") || strU.equals("alz")) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            }
            if ((z2 || j2 != 0) && j2 >= 0 && j2 <= 41943040) {
                if ((iH & 1) != 0) {
                    j3 = 10485760;
                } else {
                    j3 = (iH & 16) != 0 ? 52428800L : 0L;
                }
                if (hVar.i()) {
                    if (str.startsWith("/uri/ru.zdevs.zarchiver.archive")) {
                        return false;
                    }
                    if (j3 != 0) {
                        long jD = f0.a.m().d();
                        return jD > 0 && jD <= j3;
                    }
                } else if (j3 != 0) {
                    long jG = n0.e.g(str);
                    return jG > 0 && jG <= j3;
                }
                return true;
            }
        }
        return false;
    }
}
