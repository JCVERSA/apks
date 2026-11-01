package x0;

import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;
import java.util.ArrayList;

public final class g {
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
    
        if (r6 == null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String[] a(String str) {
        boolean z2;
        if (Build.VERSION.SDK_INT < 30) {
            return null;
        }
        int iIndexOf = str.indexOf("/Android/data");
        if (iIndexOf < 1) {
            iIndexOf = str.indexOf("/Android/obb");
            z2 = true;
        } else {
            z2 = false;
        }
        if (iIndexOf < 1) {
            return null;
        }
        String strSubstring = str.substring(0, iIndexOf);
        d.a aVarK = d.k(strSubstring);
        if (aVarK == null) {
            try {
                aVarK = d.k(new File(strSubstring).getCanonicalPath());
            } catch (Exception unused) {
            }
        }
        String strA0 = a0.c.a0(str.substring(iIndexOf));
        String[] strArr = new String[4];
        strArr[0] = aVarK.a();
        strArr[1] = !z2 ? "Android/data" : "Android/obb";
        strArr[2] = strA0;
        strArr[3] = strSubstring;
        return strArr;
        return null;
    }

    public static byte b(h0.h hVar) {
        if (hVar.l() || hVar.h()) {
            return (byte) 2;
        }
        if (hVar.m() || hVar.k() || hVar.i()) {
            return (byte) 1;
        }
        return c(hVar.r());
    }

    public static byte c(String str) {
        if (str.startsWith("/SAF")) {
            return (byte) 1;
        }
        if (!str.startsWith("/storage/") && !str.startsWith("/sdcard")) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30) {
                return d.i(str) != null ? (byte) 1 : (byte) 2;
            }
            return (i2 >= 21 || !str.startsWith("/mnt/")) ? (byte) 2 : (byte) 1;
        }
        int iG = g(str);
        if (iG != 0 && t0.b.f(67108864)) {
            return (byte) 2;
        }
        if (iG != 2 || Build.VERSION.SDK_INT < 33) {
            return (byte) 1;
        }
        try {
            if (!Os.access(str, OsConstants.W_OK)) {
                return (byte) 3;
            }
            if (!str.startsWith("/storage/emu") && !str.startsWith("/sdcard")) {
                Os.mkdir(str.concat("/test\\|:<*>?rw"), 511);
            }
            return (byte) 1;
        } catch (Exception e2) {
            String message = e2.getMessage();
            return (message == null || !message.contains("EINVAL")) ? (byte) 3 : (byte) 1;
        }
    }

    public static byte d(h0.h hVar, boolean z2) {
        String absolutePath;
        boolean z3 = true;
        if (hVar.m()) {
            return hVar.n() ? (byte) 2 : (byte) 1;
        }
        boolean zH = hVar.h();
        byte b2 = 5;
        if (!zH && !hVar.j()) {
            return (byte) 5;
        }
        boolean z4 = false;
        if (!hVar.l() && !zH) {
            File file = hVar.toFile();
            try {
                absolutePath = file.getCanonicalPath();
            } catch (Exception unused) {
                absolutePath = file.getAbsolutePath();
            }
            byte bC = c(absolutePath);
            if (bC != 2) {
                if (bC == 3) {
                    b2 = 2;
                } else {
                    d.a aVarI = d.i(absolutePath);
                    if (aVarI == null) {
                        aVarI = d.i(file.getAbsolutePath());
                    }
                    if (aVarI == null ? absolutePath.startsWith("/storage/emulated/") ? file.canWrite() : false : aVarI.f()) {
                        b2 = 1;
                    }
                }
            }
            if (b2 == 2 || b2 == 1) {
                return b2;
            }
        }
        if (!z2) {
            String strR = hVar.r();
            String[] strArr = a.f2237a;
            int i2 = t0.b.i("/") ? 2 : 1;
            if (a.f2243g < i2) {
                a.c(i2);
            }
            File file2 = new File(strR);
            loop0: do {
                String absolutePath2 = file2.getAbsolutePath();
                ArrayList<a.C0041a> arrayList = a.f2242f;
                synchronized (arrayList) {
                    try {
                        for (a.C0041a c0041a : arrayList) {
                            if (c0041a.f2245b.equals(absolutePath2)) {
                                String str = c0041a.f2247d;
                                if (!(str != null && str.contains("rw")) || c0041a.f2248e == 2) {
                                    z3 = false;
                                }
                                z4 = z3;
                                break loop0;
                            }
                        }
                        file2 = file2.getParentFile();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } while (file2 != null);
            if (!z4) {
                return (byte) 4;
            }
        }
        return (byte) 3;
    }

    public static boolean e(String str) {
        return f(str) != null;
    }

    public static d.a f(String str) {
        if (Build.VERSION.SDK_INT < 30) {
            return null;
        }
        int iIndexOf = str.indexOf("/Android/data");
        if (iIndexOf < 1) {
            iIndexOf = str.indexOf("/Android/obb");
        }
        if (iIndexOf < 1) {
            return null;
        }
        String strSubstring = str.substring(0, iIndexOf);
        d.a aVarK = d.k(strSubstring);
        if (aVarK != null) {
            return aVarK;
        }
        try {
            return d.k(new File(strSubstring).getCanonicalPath());
        } catch (Exception unused) {
            return null;
        }
    }

    public static int g(String str) {
        if (f(str) == null) {
            return 0;
        }
        if (Build.VERSION.SDK_INT < 33) {
            return 1;
        }
        String strY = a0.c.Y(str);
        return (strY.endsWith("Android/data") || strY.endsWith("Android/obb")) ? 2 : 1;
    }
}
