package ru.zdevs.zarchiver.archiver;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import dalvik.annotation.optimization.FastNative;
import e0.b;
import e0.c;
import e0.i;
import f0.d;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.service.ZArchiverService;
import v0.h;

public class C2JBridge {

    public static ZArchiverService f1611a = null;

    public static ContextWrapper f1612b = null;

    public static boolean f1613c = false;

    public static String f1614d;

    public static d f1615e;

    public static final String[] f1616f = new String[5];

    public static final String[] f1617g = new String[5];

    public static final int[] f1618h = new int[5];

    public static final int[] f1619i = new int[5];

    public static final c[] f1620j = new c[5];

    public static final String[] f1621k = new String[5];

    public static final i[] f1622l = new i[5];

    public static final Object[] f1623m = new Object[5];

    public static final Object[] f1624n = new Object[5];

    public interface a {
        void a(int i2, String str);

        void e(int i2, int i3);

        void f(int i2, int i3, String str);
    }

    public static void a(int i2, int i3) {
        Object[] objArr = f1623m;
        Object obj = objArr[i2];
        if (obj == null) {
            return;
        }
        try {
            f1619i[i2] = i3;
            synchronized (obj) {
                try {
                    objArr[i2].notifyAll();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception unused) {
            Log.e("C2JBridge", "Error on set overwrite");
        }
    }

    public static void b(int i2, String str) {
        Object[] objArr = f1624n;
        if (objArr[i2] == null) {
            return;
        }
        if (str != null) {
            try {
                f1616f[i2] = str;
            } catch (Exception unused) {
                Log.e("SetPassword", "Error on set pass");
                return;
            }
        }
        synchronized (objArr[i2]) {
            objArr[i2].notifyAll();
        }
    }

    public static void c(Context context) {
        try {
            f1614d = ZApp.c(context).getApplicationInfo().nativeLibraryDir;
        } catch (Exception unused) {
            f1614d = null;
        }
    }

    public static native boolean cAddFiles(int i2, String str, String str2, String str3, String str4);

    public static native boolean cCompress(int i2, String str, String str2, String str3, String str4);

    public static native boolean cDelFiles(int i2, String str, String str2, String str3, String str4);

    public static native boolean cExtract(int i2, String str, String str2, String str3, String str4, int i3);

    @FastNative
    public static native int cIsExist(String str);

    public static native boolean cList(int i2, String str, String str2);

    public static native boolean cRename(int i2, String str, String str2, String str3, String str4);

    @FastNative
    public static native int cSetMTime(int i2, int i3);

    @FastNative
    public static native void cSetOption(int i2, int i3);

    @FastNative
    public static native void cSetStatus(int i2, int i3);

    public static native boolean cTest(int i2, String str, String str2);

    public static void d(int i2) {
        f1616f[i2] = "";
        f1617g[i2] = "";
        f1618h[i2] = 0;
        f1619i[i2] = 0;
        f1621k[i2] = "";
        f1623m[i2] = null;
        f1624n[i2] = null;
    }

    public static boolean e() {
        try {
            System.loadLibrary("handler");
            System.loadLibrary("mime");
            System.loadLibrary("control");
            System.loadLibrary("iconv");
            f1613c = true;
        } catch (UnsatisfiedLinkError unused) {
            f1613c = false;
        }
        return f1613c;
    }

    public static int jAddFileToList(int i2, String str, int i3, long j2, int i4, int i5) {
        d dVar;
        if (i2 >= 5 || (dVar = f1615e) == null) {
            return -1;
        }
        dVar.c(str, j2, i4, i5);
        return 0;
    }

    public static void jArchiveInfo(int i2, String str, String str2, int i3, long j2, int i4) {
        if (i2 >= 5) {
            b.a aVar = new b.a();
            b.f651a = aVar;
            aVar.f652a = str;
            aVar.f653b = i3;
            aVar.f654c = j2;
            aVar.f655d = i4;
            return;
        }
        if (((byte) (a0.c.f19k[i2] & 127)) != 11) {
            d dVar = f1615e;
            if (dVar != null) {
                dVar.s(str, str2, i3, j2, i4);
                return;
            }
            return;
        }
        i[] iVarArr = f1622l;
        if (iVarArr[i2] == null) {
            return;
        }
        if (!h.e(str)) {
            iVarArr[i2].f693b = str;
        }
        if (!h.e(str2)) {
            iVarArr[i2].f694c = str2;
        }
        if (i3 >= 0) {
            iVarArr[i2].f695d = i3;
        }
        if (j2 >= 0) {
            iVarArr[i2].f696e = j2;
        }
        if (i4 >= 0) {
            iVarArr[i2].f697f = i4;
        }
    }

    public static int jAskOverwrite(int i2, String str, long j2, int i3, String str2, long j3, int i4) {
        if (i2 >= 5) {
            return 18;
        }
        if (!ZArchiverService.i(1)) {
            f1619i[i2] = 17;
            return 17;
        }
        if (f1611a == null) {
            return 18;
        }
        if (a0.c.f19k[i2] == 5) {
            f1619i[i2] = 1;
            return 1;
        }
        Object[] objArr = f1623m;
        if (objArr[i2] != null) {
            int[] iArr = f1619i;
            if (a0.c.K(iArr[i2], 16)) {
                return iArr[i2];
            }
        }
        c[] cVarArr = f1620j;
        c cVar = new c();
        cVarArr[i2] = cVar;
        cVar.f662a = str;
        cVar.f663b = j2;
        cVar.f664c = i3;
        cVar.f665d = str2;
        cVar.f666e = j3;
        cVar.f667f = i4;
        if (objArr[i2] == null) {
            objArr[i2] = new Object();
        }
        f1611a.n(i2, 2);
        synchronized (objArr[i2]) {
            try {
                objArr[i2].wait();
            } catch (Exception unused) {
            }
        }
        f1611a.g(i2, 2);
        return f1619i[i2];
    }

    public static void jFileExtracted(int i2, String str) {
        if (i2 < 5 && f1611a != null && a0.c.f19k[i2] == 5 && !h.e(str)) {
            a0.c.f20l[i2] = a0.c.y(str);
        }
    }

    public static String jGetNativePath() {
        return f1614d;
    }

    public static String jGetPassword(int i2) {
        if (i2 >= 5) {
            return e0.h.d().c(false);
        }
        if (f1615e != null) {
            if (e0.h.d().e(f1615e.l())) {
                return e0.h.d().c(false);
            }
            String strG = b.g(f1615e);
            if (h.e(strG) && f1613c) {
                cSetStatus(0, 15);
            }
            return strG;
        }
        Object[] objArr = f1624n;
        if (objArr[i2] == null) {
            objArr[i2] = new Object();
        }
        ZArchiverService zArchiverService = f1611a;
        if (zArchiverService != null) {
            zArchiverService.n(i2, 1);
        }
        synchronized (objArr[i2]) {
            try {
                objArr[i2].wait();
            } catch (Exception unused) {
            }
        }
        ZArchiverService zArchiverService2 = f1611a;
        if (zArchiverService2 != null) {
            zArchiverService2.g(i2, 1);
        }
        return f1616f[i2];
    }

    public static void jSetComment(int i2, String str) {
        d dVar;
        if (i2 < 5 && (dVar = f1615e) != null) {
            dVar.w(str);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.content.ContextWrapper, ru.zdevs.zarchiver.archiver.C2JBridge$a] */
    public static void jSetProcessPercent(int i2, int i3) {
        if (i2 >= 5) {
            return;
        }
        f1618h[i2] = i3;
        ?? r1 = f1612b;
        if (r1 != 0) {
            r1.e(i2, i3);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.content.ContextWrapper, ru.zdevs.zarchiver.archiver.C2JBridge$a] */
    public static void jSetProcessText(int i2, String str) {
        if (i2 >= 5) {
            return;
        }
        f1617g[i2] = str;
        ?? r1 = f1612b;
        if (r1 != 0) {
            r1.a(i2, str);
        }
    }

    public static void jSetTaskCompleted(int i2, boolean z2) {
        if (i2 >= 5) {
            return;
        }
        boolean zK = a0.c.K(f1619i[i2], 8);
        boolean z3 = (a0.c.f19k[i2] & (-128)) == -128;
        if (!z3) {
            if (zK) {
                a0.c.h0(f1611a, i2, 15);
            }
            a0.c.h0(f1611a, i2, z2 ? 1179648 : 1114112);
        }
        if (!z2 && !a0.c.K(a0.c.f18j[i2], 15)) {
            e0.a.c(i2, zK);
        }
        Object[] objArr = f1623m;
        if (objArr[i2] != null && !z3) {
            objArr[i2] = null;
        }
        Object[] objArr2 = f1624n;
        if (objArr2[i2] != null) {
            objArr2[i2] = null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.content.ContextWrapper, ru.zdevs.zarchiver.archiver.C2JBridge$a] */
    public static void jShowMessage(int i2, int i3, String str) {
        ?? r1;
        if (i2 >= 5) {
            return;
        }
        if (i3 == 2) {
            e0.h.d().a();
            d dVar = f1615e;
            if (dVar != null) {
                dVar.n(2);
            }
        }
        if (e0.a.d(i2, i3, str) || (r1 = f1612b) == 0) {
            return;
        }
        r1.f(i2, i3, str);
    }
}
