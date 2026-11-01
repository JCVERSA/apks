package j0;

import android.os.Build;
import d0.i;
import java.io.File;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;
import ru.zdevs.zarchiver.R;
import v0.h;

public class a implements h0.b {

    public static h1.b f1150b;

    public static h1.b f1151c;

    public int f1152a = 0;

    public static byte l(String str, byte b2) {
        if (b2 == 0) {
            return (byte) 0;
        }
        if (b2 != 1) {
            if (b2 != 3) {
                return b2 != 6 ? (byte) 0 : (byte) 126;
            }
            if (f1150b == null) {
                o();
            }
            return f1150b.a(h.i(str));
        }
        if (f1151c == null) {
            synchronized (a.class) {
                h1.b bVar = new h1.b(17);
                f1151c = bVar;
                bVar.b("alarms", (byte) 2);
                f1151c.b("android", (byte) 1);
                f1151c.b("dcim", (byte) 5);
                f1151c.b("documents", (byte) 7);
                f1151c.b("download", (byte) 8);
                f1151c.b("movies", (byte) 20);
                f1151c.b("music", (byte) 10);
                f1151c.b("notifications", (byte) 11);
                f1151c.b("pictures", (byte) 13);
                f1151c.b("podcasts", (byte) 14);
                f1151c.b("ringtones", (byte) 15);
                f1151c.b("bluetooth", (byte) 21);
                f1151c.b("book", (byte) 24);
                f1151c.b("books", (byte) 24);
                f1151c.b("audio", (byte) 10);
            }
        }
        return f1151c.a(h.i(str));
    }

    public static byte m(String str) {
        try {
            if (str.equals(t0.b.f2080a)) {
                return (byte) 25;
            }
            String[] strArr = t0.b.f2081b;
            if (!str.equals(strArr[0]) && !str.equals(strArr[1])) {
                if (str.equals("/storage/emulated/999")) {
                    return (byte) 27;
                }
            }
            return (byte) 9;
        } catch (Exception unused) {
        }
        return (byte) 0;
    }

    public static byte n(String str, boolean z2) {
        try {
            if (!str.startsWith("/storage/") && !str.startsWith("/mnt/")) {
                if (!str.equals("/") && !str.equals("/vendor")) {
                    if (!str.startsWith("/system") && !str.startsWith("/product")) {
                        if (!str.startsWith("/data")) {
                            if ("/SAF".equals(str)) {
                                return (byte) 1;
                            }
                            return (z2 || x0.d.k(str) == null) ? (byte) 0 : (byte) 1;
                        }
                        if (str.length() < 6) {
                            return (byte) 3;
                        }
                        String strSubstring = str.substring(6);
                        if (strSubstring.equals("system")) {
                            return (byte) 3;
                        }
                        return ((Build.VERSION.SDK_INT < 21 || !strSubstring.equals("app")) && !strSubstring.equals("data")) ? (byte) 0 : (byte) 6;
                    }
                    int iIndexOf = str.indexOf(47, 6);
                    if (iIndexOf == -1) {
                        return (byte) 3;
                    }
                    String strSubstring2 = str.substring(iIndexOf + 1);
                    if (strSubstring2.equals("vendor")) {
                        return (byte) 3;
                    }
                    if (strSubstring2.equals("media")) {
                        return (byte) 1;
                    }
                    return ((Build.VERSION.SDK_INT < 21 || !strSubstring2.equals("app")) && !strSubstring2.equals("priv-app")) ? (byte) 0 : (byte) 6;
                }
                return (byte) 3;
            }
            if (!str.endsWith("/Android/data") && !str.endsWith("/Android/obb") && !str.endsWith("/Android/media")) {
                String strA = a0.c.A(str);
                return (strA.equals("/storage") || strA.equals("/storage/emulated") || strA.equals("/mnt")) ? (byte) 1 : (byte) 0;
            }
            return (byte) 6;
        } catch (Exception unused) {
            return (byte) 0;
        }
    }

    public static synchronized void o() {
        if (f1150b != null) {
            return;
        }
        h1.b bVar = new h1.b(20);
        f1150b = bVar;
        bVar.b("cache", (byte) 1);
        f1150b.b("dev", (byte) 6);
        f1150b.b("etc", (byte) 17);
        f1150b.b("mnt", (byte) 18);
        f1150b.b("proc", (byte) 6);
        f1150b.b("storage", (byte) 18);
        f1150b.b("bin", (byte) 4);
        f1150b.b("sbin", (byte) 4);
        f1150b.b("system", (byte) 26);
        f1150b.b("sdcard", (byte) 12);
        f1150b.b("xbin", (byte) 4);
        f1150b.b("app", (byte) 3);
        f1150b.b("priv-app", (byte) 3);
        f1150b.b("lost+found", (byte) 19);
        f1150b.b("framework", (byte) 22);
        f1150b.b("fonts", (byte) 23);
        f1150b.b("data", (byte) 26);
        f1150b.b("vendor", (byte) 26);
        if (Build.VERSION.SDK_INT >= 30) {
            f1150b.b("system_ext", (byte) 26);
            f1150b.b("product", (byte) 26);
        } else {
            f1150b.b("root", (byte) 16);
        }
    }

    public static void p(File file, Pattern pattern, int[] iArr, int i2, h0.e.c cVar, v0.d dVar) {
        File[] fileArrListFiles;
        if (dVar != null) {
            try {
                if (dVar.isCancelled()) {
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        String lowerCase = file.getName().toLowerCase(Locale.getDefault());
        if (pattern.matcher(lowerCase).matches() && h0.e.g(lowerCase, iArr)) {
            h0.e.b bVar = new h0.e.b();
            bVar.f1088a = file.isFile();
            bVar.f1089b = file.lastModified();
            bVar.f1090c = bVar.f1088a ? file.length() : -1L;
            String parent = file.getParent();
            if (parent == null) {
                return;
            } else {
                cVar.d(bVar, new h0.h(parent), file.getName(), null);
            }
        }
        if (!file.isDirectory() || a0.c.K(i2, 1) || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            p(file2, pattern, iArr, i2, cVar, dVar);
            if (dVar != null && dVar.isCancelled()) {
                return;
            }
        }
    }

    @Override
    public final int a(h0.h hVar) {
        File file = hVar.toFile();
        byte bA = file == null ? (byte) 0 : x0.a.a(file);
        int i2 = !hVar.l() ? 17 : 1;
        if (bA == 1 || bA == 3) {
            i2 |= 8;
        }
        if (bA == 2) {
            i2 |= 2;
        }
        return (bA == 2 || bA == 1) ? i2 | 4 : i2;
    }

    @Override
    public i b(i iVar) {
        i iVar2 = new i(iVar.size());
        Iterator<d0.d> it = iVar.iterator();
        while (it.hasNext()) {
            d0.f fVar = (d0.f) it.next();
            if (n0.e.i(a0.c.i(fVar.f552k.f1108c, fVar.f539a))) {
                iVar2.i(fVar);
            }
        }
        return iVar2;
    }

    @Override
    public final int c(String str, h0.h hVar) {
        String[] list = new File(hVar.f1108c, str).list();
        if (list == null) {
            return -1;
        }
        return list.length;
    }

    @Override
    public final boolean d(h0.h hVar) {
        return hVar.j();
    }

    @Override
    public final boolean e(h0.h hVar, String str, int[] iArr, int i2, h0.e.c cVar, v0.d dVar) {
        File file;
        if (hVar.l() || (file = hVar.toFile()) == null || !file.isDirectory()) {
            return false;
        }
        Pattern patternCompile = Pattern.compile(h.c(str, false)[0]);
        try {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return false;
            }
            int length = fileArrListFiles.length;
            int i3 = 0;
            for (File file2 : fileArrListFiles) {
                p(file2, patternCompile, iArr, i2, cVar, dVar);
                if (dVar != null && dVar.isCancelled()) {
                    return false;
                }
                i3++;
                cVar.b((i3 * 100) / length);
            }
        } catch (Exception unused) {
        }
        return true;
    }

    @Override
    public final int f() {
        return this.f1152a;
    }

    @Override
    public boolean g(h0.h hVar, d0.b bVar, int i2) {
        byte bN;
        long j2;
        byte b2;
        byte b3;
        this.f1152a = 0;
        File file = hVar.toFile();
        if (file != null && file.isDirectory()) {
            bVar.clear();
            try {
                String[] list = file.list();
                if (list == null) {
                    if (!a0.c.K(i2, 2)) {
                        return false;
                    }
                    this.f1152a = R.string.MES_ACCESS_DENIED;
                    return true;
                }
                try {
                    bN = n(file.getCanonicalPath(), false);
                } catch (Exception unused) {
                    bN = 0;
                }
                boolean z2 = !file.getAbsolutePath().startsWith("/storage/");
                boolean z3 = !a0.c.K(i2, 32);
                bVar.ensureCapacity(list.length + 1);
                if (file.getParent() != null && a0.c.K(i2, 4)) {
                    bVar.add(0, new d0.d("..", (byte) 3));
                }
                int size = bVar.size();
                for (String str : list) {
                    if (!z3 || str.isEmpty() || str.charAt(0) != '.') {
                        File file2 = new File(file, str);
                        long length = -2;
                        if (file2.isDirectory()) {
                            byte bL = l(str, bN);
                            if (bL == 0) {
                                bL = m(file2.getAbsolutePath());
                            }
                            if (!z2 || !n0.d.f(file2)) {
                                length = 0;
                            }
                            b3 = bL;
                            j2 = length;
                            b2 = 4;
                        } else {
                            if (!file2.isFile() && t0.b.i(null) && !a0.c.K(i2, 2) && !str.equals(".android_secure")) {
                                return false;
                            }
                            if (!z2 || !n0.d.f(file2)) {
                                length = file2.length();
                            }
                            j2 = length;
                            b2 = -1;
                            b3 = 0;
                        }
                        bVar.add(new d0.d(str, b2, b3, file2.lastModified(), j2));
                    }
                }
                if (bVar.size() <= size) {
                    this.f1152a = R.string.MES_EMPTY_FOLDER;
                }
                hVar.q("file");
                return true;
            } catch (Exception unused2) {
            }
        }
        return false;
    }

    @Override
    public h0.e.a h(h0.h hVar) {
        File file = hVar.toFile();
        if (file == null || !file.exists()) {
            return null;
        }
        try {
            File canonicalFile = file.getCanonicalFile();
            return new h0.e.a("Local", canonicalFile.getFreeSpace(), canonicalFile.getTotalSpace());
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public h0.e.b i(h0.h hVar, v0.d dVar) {
        if (hVar != null && hVar.j() && !hVar.l()) {
            try {
                File file = hVar.toFile();
                if (file != null && file.exists()) {
                    h0.e.b bVar = new h0.e.b();
                    bVar.f1088a = file.isFile();
                    bVar.f1089b = file.lastModified();
                    if (file.isDirectory()) {
                        n0.d.d(file, bVar, dVar);
                    } else {
                        bVar.f1090c = file.length();
                        bVar.f1091d++;
                    }
                    boolean zF = n0.d.f(file);
                    bVar.f1092e = zF;
                    if (zF) {
                        bVar.f1093f = file.getCanonicalFile().getAbsolutePath();
                    }
                    return bVar;
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    @Override
    public final h0.e.b j(h0.h hVar, String[] strArr, v0.d dVar) {
        File file;
        if (!hVar.j() || hVar.l() || (file = hVar.toFile()) == null || strArr == null) {
            return null;
        }
        h0.e.b bVar = new h0.e.b();
        for (String str : strArr) {
            if (str != null) {
                File file2 = new File(file, str);
                if (file2.isDirectory()) {
                    n0.d.d(file2, bVar, dVar);
                } else {
                    bVar.f1090c = file2.length() + bVar.f1090c;
                    bVar.f1091d++;
                }
            }
        }
        return bVar;
    }

    @Override
    public final h0.e.b k(h0.h[] hVarArr, String[] strArr, v0.d dVar) {
        if (!hVarArr[0].j()) {
            return null;
        }
        h0.e.b bVar = new h0.e.b();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (hVarArr[i2] != null && strArr[i2] != null) {
                File file = new File(hVarArr[i2].r(), strArr[i2]);
                if (file.isDirectory()) {
                    n0.d.d(file, bVar, dVar);
                } else {
                    bVar.f1090c = file.length() + bVar.f1090c;
                }
            }
        }
        return bVar;
    }
}
