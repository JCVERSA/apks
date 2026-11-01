package t0;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Build;
import android.os.Environment;
import android.preference.PreferenceManager;
import c0.e;
import h0.h;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import l0.c;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;
import x0.d;

public final class a {

    public static ArrayList<e> f2075c;

    public static final ArrayList<e> f2073a = new ArrayList<>();

    public static final ReentrantReadWriteLock f2074b = new ReentrantReadWriteLock();

    public static boolean f2076d = false;

    public static final String[] f2077e = {Environment.DIRECTORY_DOWNLOADS, Environment.DIRECTORY_MUSIC, "Documents"};

    public static final int[] f2078f = {5, 6, 4};

    public static final int[] f2079g = {R.string.FVR_DOWNLOAD, R.string.FVR_MUSIC, R.string.FVR_DOCUMENTS};

    public static void a(int i2, ZArchiver zArchiver, String str, String str2) {
        ReentrantReadWriteLock reentrantReadWriteLock = f2074b;
        e eVar = new e(i2, 4, str, new h(str2));
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(zArchiver);
        String str3 = defaultSharedPreferences.getString("sFavorite", "") + eVar + "|";
        SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
        editorEdit.putString("sFavorite", str3);
        editorEdit.apply();
        try {
            reentrantReadWriteLock.writeLock().lock();
            f2073a.add(eVar);
        } finally {
            reentrantReadWriteLock.writeLock().unlock();
        }
    }

    public static void b() {
        int i2;
        Iterator it;
        String strReplace;
        int i3;
        Context contextC = ZApp.c(null);
        if (contextC == null) {
            return;
        }
        Resources resources = contextC.getResources();
        ArrayList arrayListO = d.o();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(contextC);
        ArrayList<e> arrayList = f2073a;
        arrayList.clear();
        f2076d = false;
        String[] strArr = b.f2081b;
        int i4 = 2;
        byte b2 = 1;
        if (d.k(strArr[0]) == null || d.k(strArr[1]) == null) {
            arrayList.add(new e(2, 33, resources.getString(R.string.FVR_HOME), new h(strArr[0])));
        }
        if (b.f(16777216)) {
            arrayList.add(new e(-2, 1, "ROOT", new h("/")));
        }
        if (f2075c == null) {
            String string = defaultSharedPreferences.getString("sFavoriteCustomName", null);
            if (v0.h.e(string)) {
                f2075c = new ArrayList<>(0);
            } else {
                String[] strArrH = v0.h.h(string, '|');
                f2075c = new ArrayList<>(strArrH.length);
                for (String str : strArrH) {
                    e eVarA = e.a(64, str);
                    if (eVarA != null) {
                        f2075c.add(eVarA);
                    }
                }
            }
        }
        Iterator it2 = arrayListO.iterator();
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (it2.hasNext()) {
            byte b3 = ((d.a) it2.next()).f2257d;
            if (b3 == 0) {
                i5++;
            } else if (b3 == 2) {
                i6++;
            } else if (b3 == 4) {
                i7++;
            }
        }
        Iterator it3 = arrayListO.iterator();
        int i8 = 1;
        int i9 = 1;
        int i10 = 1;
        while (it3.hasNext()) {
            d.a aVar = (d.a) it3.next();
            e eVarE = e(i4, aVar.f2255b);
            if (eVarE == null) {
                byte b4 = aVar.f2257d;
                it = it3;
                if (b4 != 0) {
                    if (b4 != b2) {
                        if (b4 == 2) {
                            strReplace = resources.getString(R.string.FVR_EXTERNAL).replace("%1", i6 > 1 ? "" + i10 : "");
                            i10++;
                            i3 = 1;
                        } else if (b4 == 4) {
                            strReplace = resources.getString(R.string.FVR_EXTERNAL_USB).replace("%1", i7 > 1 ? "" + i9 : "");
                            i9++;
                            i3 = 0;
                        }
                        eVarE = new e(i3, 2, strReplace, new h(aVar.f2255b));
                    } else {
                        strReplace = resources.getString(R.string.FVR_INTERNAL);
                    }
                    it3 = it;
                    i4 = 2;
                    b2 = 1;
                } else {
                    strReplace = resources.getString(R.string.FVR_DEVICE).replace("%1", i5 > 1 ? "" + i8 : "");
                    i8++;
                }
                i3 = -1;
                eVarE = new e(i3, 2, strReplace, new h(aVar.f2255b));
            } else {
                it = it3;
            }
            arrayList.add(eVarE);
            it3 = it;
            i4 = 2;
            b2 = 1;
        }
        String str2 = b.f2080a;
        if (str2 != null && d.k(str2) == null) {
            e eVarE2 = e(16, b.f2080a);
            if (eVarE2 == null) {
                eVarE2 = new e(3, 16, resources.getString(R.string.FVR_ARCHIVE), new h(b.f2080a));
            }
            arrayList.add(eVarE2);
        }
        String string2 = defaultSharedPreferences.getString("sFavorite", null);
        if (!v0.h.e(string2)) {
            for (String str3 : v0.h.h(string2, '|')) {
                e eVarA2 = e.a(4, str3);
                if (eVarA2 != null) {
                    arrayList.add(eVarA2);
                }
            }
        } else if (!defaultSharedPreferences.getBoolean("sFavoGenerated", false)) {
            StringBuilder sb = new StringBuilder();
            int i11 = 0;
            while (true) {
                String[] strArr2 = f2077e;
                if (i11 >= strArr2.length) {
                    break;
                }
                try {
                    File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(strArr2[i11]);
                    if (externalStoragePublicDirectory.exists()) {
                        e eVar = new e(f2078f[i11], 4, resources.getString(f2079g[i11]), new h(externalStoragePublicDirectory.getAbsolutePath()));
                        arrayList.add(eVar);
                        sb.append(eVar);
                        sb.append('|');
                    }
                } catch (Exception unused) {
                }
                i11++;
            }
            SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
            editorEdit.putBoolean("sFavoGenerated", true);
            editorEdit.putString("sFavorite", sb.toString());
            editorEdit.apply();
        }
        if (Build.VERSION.SDK_INT < 17) {
            String[] strArr3 = c.f1180a;
            return;
        }
        c.i(contextC);
        for (c.C0023c c0023c : c.f1183d) {
            int i12 = c0023c.f1196d & 255;
            if (i12 == 1) {
                i2 = 0;
            } else if (i12 != 2) {
                i2 = i12 != 3 ? 10 : 12;
            } else {
                i2 = 11;
            }
            e eVar2 = new e(i2, 8, c0023c.f1193a, new h("plugin", "/", c0023c.f1195c, c0023c.f1194b));
            a0.b.c(eVar2.f411c);
            arrayList.add(eVar2);
        }
    }

    public static void c() {
        ReentrantReadWriteLock reentrantReadWriteLock = f2074b;
        try {
            reentrantReadWriteLock.readLock().lock();
            ArrayList<e> arrayList = f2073a;
            boolean zIsEmpty = arrayList.isEmpty();
            reentrantReadWriteLock.readLock().unlock();
            if (zIsEmpty) {
                try {
                    reentrantReadWriteLock.writeLock().lock();
                    if (arrayList.isEmpty()) {
                        b();
                    }
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
        } catch (Throwable th) {
            reentrantReadWriteLock.readLock().unlock();
            throw th;
        }
    }

    public static ArrayList<e> d(boolean z2) {
        ArrayList<e> arrayList;
        ReentrantReadWriteLock reentrantReadWriteLock = f2074b;
        c();
        try {
            reentrantReadWriteLock.readLock().lock();
            ArrayList<e> arrayList2 = f2073a;
            if (z2) {
                arrayList = new ArrayList<>(arrayList2.size());
                for (e eVar : arrayList2) {
                    if (eVar.f411c.o()) {
                        arrayList.add(eVar);
                    }
                }
            } else {
                arrayList = new ArrayList<>(arrayList2);
            }
            reentrantReadWriteLock.readLock().unlock();
            return arrayList;
        } catch (Throwable th) {
            reentrantReadWriteLock.readLock().unlock();
            throw th;
        }
    }

    public static e e(int i2, String str) {
        ArrayList<e> arrayList = f2075c;
        if (arrayList == null) {
            return null;
        }
        for (e eVar : arrayList) {
            if (str.equals(eVar.f411c.r())) {
                eVar.f413e = i2 | 64;
                return eVar;
            }
        }
        return null;
    }

    public static e f(int i2) {
        ReentrantReadWriteLock reentrantReadWriteLock = f2074b;
        try {
            reentrantReadWriteLock.readLock().lock();
            ArrayList<e> arrayList = f2073a;
            return (i2 >= arrayList.size() || i2 < 0) ? null : arrayList.get(i2);
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0032  */
    public static boolean g(int i2) {
        boolean z2;
        ReentrantReadWriteLock reentrantReadWriteLock = f2074b;
        try {
            reentrantReadWriteLock.readLock().lock();
            if (i2 >= 1) {
                ArrayList<e> arrayList = f2073a;
                z2 = i2 < arrayList.size() && !arrayList.get(i2 + (-1)).b(19) && arrayList.get(i2).b(4);
            }
            return z2;
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0022  */
    public static boolean h(int i2) {
        boolean z2;
        ReentrantReadWriteLock reentrantReadWriteLock = f2074b;
        try {
            reentrantReadWriteLock.readLock().lock();
            if (i2 >= 0) {
                ArrayList<e> arrayList = f2073a;
                if (i2 >= arrayList.size() || !arrayList.get(i2).b(4)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
            } else {
                z2 = false;
            }
            return z2;
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0023  */
    public static boolean i(int i2) {
        boolean z2;
        ReentrantReadWriteLock reentrantReadWriteLock = f2074b;
        try {
            reentrantReadWriteLock.readLock().lock();
            if (i2 >= 0) {
                ArrayList<e> arrayList = f2073a;
                if (i2 >= arrayList.size() || !arrayList.get(i2).b(22)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
            } else {
                z2 = false;
            }
            return z2;
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    public static void j(ZArchiver zArchiver, int i2, int i3, String str) {
        e eVarF;
        ArrayList<e> arrayList;
        if (i(i2) && (eVarF = f(i2)) != null) {
            if (!eVarF.b(4)) {
                if (!eVarF.b(18) || (arrayList = f2075c) == null) {
                    return;
                }
                if ((eVarF.f413e & 64) != 0) {
                    eVarF.f410b = str;
                    eVarF.f409a = i3;
                } else {
                    arrayList.add(new e(i3, 64, str, eVarF.f411c));
                }
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(zArchiver);
                if (f2075c == null) {
                    return;
                }
                StringBuilder sb = new StringBuilder();
                Iterator<e> it = f2075c.iterator();
                while (it.hasNext()) {
                    sb.append(it.next().toString());
                    sb.append('|');
                }
                SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
                editorEdit.putString("sFavoriteCustomName", sb.toString());
                editorEdit.apply();
                return;
            }
            SharedPreferences defaultSharedPreferences2 = PreferenceManager.getDefaultSharedPreferences(zArchiver);
            String string = defaultSharedPreferences2.getString("sFavorite", "");
            if (v0.h.e(string)) {
                return;
            }
            eVarF.f410b = str;
            eVarF.f409a = i3;
            String[] strArrH = v0.h.h(string, '|');
            StringBuilder sb2 = new StringBuilder();
            for (String string2 : strArrH) {
                e eVarA = e.a(0, string2);
                if (eVarA != null) {
                    if (eVarA.f411c.equals(eVarF.f411c)) {
                        string2 = eVarF.toString();
                    }
                    sb2.append(string2);
                    sb2.append('|');
                }
            }
            SharedPreferences.Editor editorEdit2 = defaultSharedPreferences2.edit();
            editorEdit2.putString("sFavorite", sb2.toString());
            editorEdit2.apply();
        }
    }

    public static void k() {
        h0.e.a aVarD;
        ReentrantReadWriteLock reentrantReadWriteLock = f2074b;
        boolean z2 = f2076d;
        try {
            reentrantReadWriteLock.readLock().lock();
            f2076d = true;
            for (e eVar : f2073a) {
                eVar.f412d = "";
                if (eVar.b(2) && (aVarD = h0.e.d(eVar.f411c)) != null) {
                    eVar.f412d = v0.h.b(aVarD.f1085a, 0, null) + "/\n" + v0.h.b(aVarD.f1086b, 0, null);
                }
            }
            reentrantReadWriteLock.readLock().unlock();
        } catch (Throwable th) {
            reentrantReadWriteLock.readLock().unlock();
            throw th;
        }
    }
}
