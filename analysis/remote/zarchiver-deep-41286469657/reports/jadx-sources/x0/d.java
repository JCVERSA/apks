package x0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.UriPermission;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.DocumentsContract;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.io.SAF;

public final class d {

    public static final ArrayList<a> f2251a = new ArrayList<>(5);

    public static final HashSet<Uri> f2252b = new HashSet<>(0);

    public static boolean f2253c = false;

    public static final class a {

        public final String f2255b;

        public String f2256c;

        public byte f2257d;

        public String f2254a = null;

        public Object f2258e = null;

        public int f2259f = 4096;

        public a(String str, byte b2, String str2) {
            this.f2255b = str;
            this.f2256c = str2;
            this.f2257d = b2;
        }

        public final String a() {
            return e() ? "primary" : this.f2256c;
        }

        public final String b(String str) {
            if (str == null) {
                return null;
            }
            int length = str.length();
            String str2 = this.f2255b;
            if (length <= str2.length()) {
                return null;
            }
            return a0.c.a0(str.substring(str2.length()));
        }

        public final Uri c(String str, boolean z2) {
            String strConcat;
            String strA = a();
            if (strA == null) {
                return null;
            }
            if (v0.h.e(str)) {
                strConcat = strA.concat("%3A");
            } else {
                strConcat = Uri.encode(strA + ":" + str);
            }
            return SAF.a(strConcat, "", z2 ? 4 : 0);
        }

        public final boolean d(String str) {
            if (v0.h.e(str)) {
                return a0.c.K(this.f2259f, 8);
            }
            Uri uriC = c(str, true);
            if (uriC == null) {
                return false;
            }
            HashSet<Uri> hashSet = d.f2252b;
            if (hashSet.contains(uriC)) {
                return true;
            }
            ZApp zApp = ZApp.f1434c;
            if (zApp == null || zApp.checkCallingOrSelfUriPermission(uriC, 3) != 0) {
                return false;
            }
            hashSet.add(uriC);
            return true;
        }

        public final boolean e() {
            return a0.c.K(this.f2259f, 1);
        }

        public final boolean f() {
            boolean zA = true;
            if (a0.c.K(this.f2259f, 16384)) {
                return true;
            }
            if (a0.c.K(this.f2259f, 8192)) {
                return false;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 == 19) {
                if (!e()) {
                    zA = d.a(this);
                }
            } else if (i2 < 21 || i2 >= 30) {
                if (a0.c.K(this.f2259f, 4) && !a0.c.K(this.f2259f, 8)) {
                    zA = false;
                }
            } else if (!e() && !a0.c.K(this.f2259f, 8)) {
                zA = d.a(this);
            }
            this.f2259f |= zA ? 16384 : 8192;
            return zA;
        }
    }

    public static abstract class b {

        public Object f2260a;

        public abstract void c(StorageVolume storageVolume, boolean z2);
    }

    public static boolean a(a aVar) {
        boolean zCreateNewFile;
        File file = new File(aVar.f2255b + "/Android");
        if (!file.exists()) {
            file = new File(aVar.f2255b);
        }
        File file2 = new File(file, ".rw");
        if (file2.exists()) {
            zCreateNewFile = true;
        } else {
            try {
                zCreateNewFile = file2.createNewFile();
            } catch (IOException unused) {
                zCreateNewFile = false;
            }
        }
        return (zCreateNewFile && file2.exists()) ? file2.delete() : zCreateNewFile;
    }

    public static synchronized void b(Uri uri) {
        a aVarJ;
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (f2252b.add(uri)) {
            if (uri.toString().endsWith("%3A")) {
                String[] strArrH = v0.h.h(DocumentsContract.getTreeDocumentId(uri), ':');
                if (strArrH.length > 0 && (aVarJ = j(strArrH[0])) != null) {
                    aVarJ.f2259f = (aVarJ.f2259f & (-24577)) | 8;
                }
            }
            f2253c = false;
        }
    }

    public static void c(ArrayList arrayList) {
        String canonicalPath;
        byte b2;
        boolean z2;
        try {
            canonicalPath = Environment.getExternalStorageDirectory().getCanonicalPath();
        } catch (Exception unused) {
            canonicalPath = "/mnt/sdcard";
        }
        if (!arrayList.contains(canonicalPath)) {
            arrayList.add(0, canonicalPath);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            a aVarK = k(str);
            if (aVarK != null) {
                aVarK.f2259f |= 4096;
            } else {
                boolean zEquals = canonicalPath.equals(str);
                if (zEquals) {
                    b2 = (!Environment.isExternalStorageRemovable() || Environment.isExternalStorageEmulated()) ? (byte) 1 : (byte) 2;
                    z2 = false;
                } else {
                    String strI = v0.h.i(str);
                    b2 = (strI.contains("usb") || strI.contains("udisk")) ? (byte) 4 : (byte) 2;
                    z2 = !new File(str).canWrite();
                }
                a aVar = new a(str, b2, null);
                f2251a.add(aVar);
                if (zEquals) {
                    aVar.f2259f |= 1;
                } else if (z2) {
                    aVar.f2259f |= 8192;
                }
            }
        }
    }

    public static synchronized void d(StorageVolume storageVolume) {
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        try {
            File directory = storageVolume.getDirectory();
            if (directory == null) {
                return;
            }
            String absolutePath = directory.getAbsolutePath();
            if (k(absolutePath) != null) {
                return;
            }
            a aVar = new a(absolutePath, absolutePath.startsWith("/mnt/media_rw") ? (byte) 4 : (byte) 2, storageVolume.getUuid());
            if (storageVolume.isRemovable()) {
                aVar.f2259f |= 2;
            }
            f2251a.add(aVar);
            Method methodW = a0.c.w(StorageVolume.class, "getUserLabel", new Class[0]);
            if (methodW != null) {
                aVar.f2254a = (String) methodW.invoke(storageVolume, new Object[0]);
            }
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    public static synchronized void e(Context context) {
        f2251a.clear();
        f2252b.clear();
        f(context);
    }

    public static synchronized void f(Context context) {
        f2253c = true;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 19) {
            ArrayList<String> arrayListR = r();
            g(arrayListR, i2 < 18 ? h(arrayListR) : false);
            c(arrayListR);
            context = null;
        } else if (context == null && (context = ZApp.f1434c) == null) {
            return;
        }
        if (i2 >= 19) {
            if (i2 < 24) {
                q(context);
                s(context);
            } else {
                t(context);
            }
        }
        if (i2 >= 23) {
            p(context);
        }
        if (i2 >= 21) {
            y(context);
        }
        Log.i("StorageList", "Found " + f2251a.size() + " storage");
    }

    public static void g(ArrayList arrayList, boolean z2) {
        int i2 = 0;
        if (!z2) {
            int i3 = 0;
            while (i3 < arrayList.size()) {
                String str = (String) arrayList.get(i3);
                if (str.contains("legacy") || str.contains("/obb")) {
                    arrayList.remove(i3);
                    i3--;
                }
                i3++;
            }
        }
        while (i2 < arrayList.size()) {
            File file = new File((String) arrayList.get(i2));
            try {
                if (!file.exists() || !file.isDirectory() || !file.canRead()) {
                    int i4 = i2 - 1;
                    try {
                        arrayList.remove(i2);
                    } catch (Exception unused) {
                    }
                    i2 = i4;
                }
            } catch (Exception unused2) {
            }
            i2++;
        }
    }

    public static boolean h(ArrayList arrayList) {
        try {
            ArrayList arrayList2 = new ArrayList();
            Scanner scanner = new Scanner(new File("/system/etc/vold.fstab"));
            while (scanner.hasNext()) {
                String strNextLine = scanner.nextLine();
                if (strNextLine.startsWith("dev_mount")) {
                    String[] strArrH = v0.h.h(strNextLine, ' ');
                    if (strArrH.length < 2) {
                        strArrH = v0.h.h(strNextLine, '\t');
                    }
                    if (strArrH.length >= 2) {
                        String strSubstring = strArrH[2];
                        if (strSubstring.contains(":")) {
                            strSubstring = strSubstring.substring(0, strSubstring.indexOf(58));
                        }
                        arrayList2.add(strSubstring);
                    }
                }
            }
            scanner.close();
            int i2 = 0;
            while (i2 < arrayList.size()) {
                String str = (String) arrayList.get(i2);
                if (!arrayList2.contains(str) && !str.startsWith("/storage/sdcard")) {
                    int i3 = i2 - 1;
                    arrayList.remove(i2);
                    i2 = i3;
                }
                i2++;
            }
            return true;
        } catch (FileNotFoundException unused) {
            return false;
        } catch (Exception e2) {
            Log.e("StorageList", e2.getMessage() + ": unknown exception while reading mounts file");
            return false;
        }
    }

    public static synchronized a i(String str) {
        if (str == null) {
            return null;
        }
        ArrayList<a> arrayList = f2251a;
        if (arrayList.size() == 0) {
            f(null);
        }
        if (Build.VERSION.SDK_INT < 19) {
            str = str.replace("emulated/legacy", "emulated/0");
        }
        for (a aVar : arrayList) {
            if (str.startsWith(aVar.f2255b)) {
                return aVar;
            }
        }
        try {
            String canonicalPath = new File(str).getCanonicalPath();
            if (str.equals(canonicalPath)) {
                return null;
            }
            for (a aVar2 : f2251a) {
                if (canonicalPath.startsWith(aVar2.f2255b)) {
                    return aVar2;
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static synchronized a j(String str) {
        if (str == null) {
            return null;
        }
        if ("primary".equals(str)) {
            for (a aVar : f2251a) {
                if (aVar.e()) {
                    return aVar;
                }
            }
        } else {
            for (a aVar2 : f2251a) {
                if (str.equals(aVar2.f2256c)) {
                    return aVar2;
                }
            }
        }
        return null;
    }

    public static synchronized a k(String str) {
        if (str == null) {
            return null;
        }
        for (a aVar : f2251a) {
            if (str.equals(aVar.f2255b)) {
                return aVar;
            }
        }
        return null;
    }

    public static String l(String str, ArrayList<String> arrayList) {
        String str2 = "/dev/block/vold/public" + str.substring(str.indexOf(58), str.length() - 1);
        if (arrayList.size() == 0) {
            try {
                Scanner scanner = new Scanner(new File("/proc/mounts"));
                int i2 = 0;
                while (scanner.hasNextLine() && i2 < 1000) {
                    i2++;
                    String strNextLine = scanner.nextLine();
                    if (strNextLine.startsWith("/dev/block/vold/public")) {
                        arrayList.add(strNextLine);
                    }
                }
                scanner.close();
            } catch (Exception unused) {
            }
        }
        String strSubstring = null;
        for (String str3 : arrayList) {
            if (str3.startsWith(str2)) {
                int iIndexOf = str3.indexOf("/mnt/media_rw/");
                if (iIndexOf < 0) {
                    break;
                }
                int i3 = iIndexOf + 14;
                int iIndexOf2 = str3.indexOf(32, i3);
                if (iIndexOf2 < 0) {
                    iIndexOf2 = str3.indexOf(9, i3);
                }
                if (iIndexOf2 < 0) {
                    iIndexOf2 = i3 + 9;
                }
                strSubstring = str3.substring(i3, iIndexOf2);
            }
        }
        return strSubstring;
    }

    public static synchronized a m() {
        for (a aVar : f2251a) {
            if (aVar.e()) {
                return aVar;
            }
        }
        return new a(Environment.getExternalStorageDirectory().getPath(), (byte) 0, "primary");
    }

    public static String n(String str) {
        String[] strArrG;
        a aVarJ;
        if (str == null || !str.startsWith("/SAF") || (strArrG = SAF.g(str)) == null || (aVarJ = j(strArrG[0])) == null) {
            return str;
        }
        int iIndexOf = str.indexOf(47, 5);
        boolean zK = a0.c.K(aVarJ.f2259f, 4);
        String strReplace = aVarJ.f2255b;
        if (zK) {
            strReplace = strReplace.replace("/SAF", "/mnt/media_rw");
        }
        if (strArrG[1] != null) {
            strReplace = strReplace + "/" + strArrG[1];
        }
        if (iIndexOf == -1) {
            return strReplace;
        }
        return strReplace + str.substring(iIndexOf);
    }

    public static synchronized ArrayList o() {
        ArrayList<a> arrayList;
        arrayList = f2251a;
        if (arrayList.size() == 0) {
            f(null);
        }
        return arrayList;
    }

    public static void p(Context context) {
        List list;
        Boolean bool;
        String str;
        try {
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            if (storageManager == null) {
                return;
            }
            Class<?> cls = Class.forName("android.os.storage.DiskInfo");
            Method method = storageManager.getClass().getMethod("getDisks", new Class[0]);
            Method methodW = a0.c.w(cls, "getId", new Class[0]);
            Method methodW2 = a0.c.w(cls, "isUsb", new Class[0]);
            Field fieldT = a0.c.t(cls, "label");
            if (methodW == null || methodW2 == null || (list = (List) method.invoke(storageManager, new Object[0])) == null) {
                return;
            }
            int size = list.size();
            ArrayList arrayList = null;
            for (int i2 = 0; i2 < size; i2++) {
                Object obj = list.get(i2);
                if (obj != null && (bool = (Boolean) methodW2.invoke(obj, new Object[0])) != null && bool.booleanValue() && (str = (String) methodW.invoke(obj, new Object[0])) != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList(size);
                    }
                    String strL = l(str, arrayList);
                    if (!v0.h.e(strL)) {
                        a aVarJ = j(strL);
                        if (aVarJ == null) {
                            if (Build.VERSION.SDK_INT >= 30 ? new File("/mnt/media_rw/" + strL).isDirectory() : false) {
                                aVarJ = new a("/mnt/media_rw/" + strL, (byte) 4, strL);
                            } else {
                                aVarJ = new a("/SAF/" + strL, (byte) 4, strL);
                                aVarJ.f2259f = aVarJ.f2259f | 4;
                            }
                            f2251a.add(aVarJ);
                        } else {
                            aVarJ.f2257d = (byte) 4;
                            aVarJ.f2259f |= 4096;
                        }
                        if (aVarJ.f2254a == null && fieldT != null) {
                            aVarJ.f2254a = (String) fieldT.get(obj);
                        }
                        aVarJ.f2259f |= 2;
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void q(Context context) {
        String canonicalPath;
        try {
            canonicalPath = Environment.getExternalStorageDirectory().getCanonicalPath();
        } catch (Exception unused) {
            canonicalPath = "/mnt/sdcard";
        }
        File[] externalFilesDirs = context.getExternalFilesDirs(null);
        if (externalFilesDirs == null) {
            return;
        }
        for (File file : externalFilesDirs) {
            if (file != null) {
                String absolutePath = file.getAbsolutePath();
                int iIndexOf = absolutePath.indexOf("/Android");
                if (iIndexOf > 0) {
                    absolutePath = absolutePath.substring(0, iIndexOf);
                }
                a aVarK = k(absolutePath);
                if (aVarK == null) {
                    byte b2 = 2;
                    a aVar = new a(absolutePath, (byte) 2, null);
                    f2251a.add(aVar);
                    if (Build.VERSION.SDK_INT >= 21) {
                        try {
                            if (!Environment.isExternalStorageRemovable(new File(absolutePath))) {
                                b2 = 1;
                            }
                        } catch (IllegalArgumentException unused2) {
                            Log.w("StorageList", "Bad path: " + absolutePath);
                        }
                        aVar.f2257d = b2;
                    } else if (canonicalPath.equals(absolutePath)) {
                        aVar.f2257d = (!Environment.isExternalStorageRemovable() || Environment.isExternalStorageEmulated()) ? (byte) 1 : (byte) 2;
                    }
                } else {
                    aVarK.f2259f |= 4096;
                }
            }
        }
    }

    public static ArrayList<String> r() {
        ArrayList<String> arrayList = new ArrayList<>(4);
        try {
            Scanner scanner = new Scanner(new File("/proc/mounts"));
            int i2 = 0;
            while (scanner.hasNextLine() && i2 < 1000) {
                i2++;
                String strNextLine = scanner.nextLine();
                if (strNextLine.startsWith("/dev/fuse") || strNextLine.startsWith("/dev/block/vold/")) {
                    String[] strArrH = v0.h.h(strNextLine, ' ');
                    if (strArrH.length < 2) {
                        strArrH = v0.h.h(strNextLine, '\t');
                    }
                    if (strArrH.length >= 2) {
                        arrayList.add(strArrH[1]);
                    }
                }
            }
            scanner.close();
        } catch (Exception e2) {
            Log.e("StorageList", e2.getMessage() + ": unknown exception while reading mounts file");
        }
        return arrayList;
    }

    public static void s(Context context) {
        Class<?> cls;
        Object objInvoke;
        String str;
        Boolean bool;
        boolean z2;
        Boolean bool2;
        String str2;
        try {
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            if (storageManager == null) {
                return;
            }
            try {
                cls = Class.forName("android.os.storage.StorageVolume");
            } catch (ClassNotFoundException unused) {
                cls = null;
            }
            if (cls == null) {
                return;
            }
            Method methodW = a0.c.w(storageManager.getClass(), "getVolumeList", new Class[0]);
            Method methodW2 = a0.c.w(cls, "getPath", new Class[0]);
            Method methodW3 = a0.c.w(cls, "getUuid", new Class[0]);
            Method methodW4 = a0.c.w(cls, "getState", new Class[0]);
            Method methodW5 = a0.c.w(cls, "isPrimary", new Class[0]);
            Method methodW6 = a0.c.w(cls, "isRemovable", new Class[0]);
            Method methodW7 = a0.c.w(cls, "getUserLabel", new Class[0]);
            if (methodW == null || methodW2 == null || (objInvoke = methodW.invoke(storageManager, new Object[0])) == null) {
                return;
            }
            int length = Array.getLength(objInvoke);
            for (int i2 = 0; i2 < length; i2++) {
                Object obj = Array.get(objInvoke, i2);
                if (obj != null && ((methodW4 == null || (str2 = (String) methodW4.invoke(obj, new Object[0])) == null || "mounted".equals(str2) || "mounted_ro".equals(str2)) && (str = (String) methodW2.invoke(obj, new Object[0])) != null)) {
                    byte b2 = (methodW6 == null || (bool2 = (Boolean) methodW6.invoke(obj, new Object[0])) == null || bool2.booleanValue()) ? (byte) 2 : (byte) 1;
                    a aVarK = k(str);
                    ArrayList<a> arrayList = f2251a;
                    if (aVarK == null) {
                        aVarK = new a(str, b2, null);
                        arrayList.add(aVarK);
                    } else {
                        aVarK.f2259f |= 4096;
                        if (aVarK.f2258e != null) {
                        }
                    }
                    if (aVarK.f2256c == null && methodW3 != null) {
                        aVarK.f2256c = (String) methodW3.invoke(obj, new Object[0]);
                    }
                    if (b2 == 2) {
                        aVarK.f2259f = 2 | aVarK.f2259f;
                    }
                    if (methodW7 != null) {
                        aVarK.f2254a = (String) methodW7.invoke(obj, new Object[0]);
                    }
                    aVarK.f2258e = obj;
                    if (methodW5 != null && !aVarK.e() && (bool = (Boolean) methodW5.invoke(obj, new Object[0])) != null && bool.booleanValue()) {
                        Iterator<a> it = arrayList.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (it.next().e()) {
                                    z2 = false;
                                    break;
                                }
                            } else {
                                z2 = true;
                                break;
                            }
                        }
                        if (z2) {
                            aVarK.f2259f |= 1;
                        }
                    }
                }
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:104:0x010d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:105:0x010b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:? A[LOOP:1: B:65:0x00f9->B:106:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00ca A[Catch: Exception -> 0x0117, TryCatch #0 {Exception -> 0x0117, blocks: (B:2:0x0000, B:4:0x0007, B:8:0x0015, B:11:0x0020, B:12:0x0028, B:14:0x002e, B:17:0x0037, B:19:0x003d, B:21:0x0045, B:24:0x004e, B:26:0x0052, B:29:0x0059, B:33:0x0069, B:35:0x0073, B:37:0x007a, B:42:0x0087, B:51:0x00b0, B:54:0x00b8, B:59:0x00dc, B:61:0x00e2, B:62:0x00e7, B:64:0x00f5, B:65:0x00f9, B:67:0x00ff, B:72:0x0110, B:55:0x00ca, B:58:0x00d6, B:45:0x0090, B:46:0x00a6, B:30:0x005e), top: B:76:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x00e2 A[Catch: Exception -> 0x0117, TryCatch #0 {Exception -> 0x0117, blocks: (B:2:0x0000, B:4:0x0007, B:8:0x0015, B:11:0x0020, B:12:0x0028, B:14:0x002e, B:17:0x0037, B:19:0x003d, B:21:0x0045, B:24:0x004e, B:26:0x0052, B:29:0x0059, B:33:0x0069, B:35:0x0073, B:37:0x007a, B:42:0x0087, B:51:0x00b0, B:54:0x00b8, B:59:0x00dc, B:61:0x00e2, B:62:0x00e7, B:64:0x00f5, B:65:0x00f9, B:67:0x00ff, B:72:0x0110, B:55:0x00ca, B:58:0x00d6, B:45:0x0090, B:46:0x00a6, B:30:0x005e), top: B:76:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00ff A[Catch: Exception -> 0x0117, TryCatch #0 {Exception -> 0x0117, blocks: (B:2:0x0000, B:4:0x0007, B:8:0x0015, B:11:0x0020, B:12:0x0028, B:14:0x002e, B:17:0x0037, B:19:0x003d, B:21:0x0045, B:24:0x004e, B:26:0x0052, B:29:0x0059, B:33:0x0069, B:35:0x0073, B:37:0x007a, B:42:0x0087, B:51:0x00b0, B:54:0x00b8, B:59:0x00dc, B:61:0x00e2, B:62:0x00e7, B:64:0x00f5, B:65:0x00f9, B:67:0x00ff, B:72:0x0110, B:55:0x00ca, B:58:0x00d6, B:45:0x0090, B:46:0x00a6, B:30:0x005e), top: B:76:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x00f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x0110 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x00b8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x00d6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:0x0028 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x0028 A[SYNTHETIC] */
    public static void t(Context context) {
        Method methodW;
        String state;
        String absolutePath;
        byte b2;
        int i2;
        a aVarK;
        ArrayList<a> arrayList;
        Iterator<a> it;
        boolean z2;
        try {
            if (Build.VERSION.SDK_INT < 30) {
                methodW = a0.c.w(StorageVolume.class, "getPath", new Class[0]);
                if (methodW == null) {
                    return;
                }
            } else {
                methodW = null;
            }
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            if (storageManager == null) {
                return;
            }
            for (StorageVolume storageVolume : storageManager.getStorageVolumes()) {
                if (storageVolume != null && ((state = storageVolume.getState()) == null || "mounted".equals(state) || "mounted_ro".equals(state))) {
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 >= 30) {
                        File directory = storageVolume.getDirectory();
                        if (directory != null) {
                            absolutePath = directory.getAbsolutePath();
                        }
                    } else {
                        absolutePath = (String) methodW.invoke(storageVolume, new Object[0]);
                    }
                    if (absolutePath != null) {
                        if (absolutePath.startsWith("/mnt/media_rw")) {
                            String description = storageVolume.getDescription(context);
                            i2 = 4;
                            b2 = (description == null || !description.contains("SD")) ? (byte) 4 : (byte) 2;
                            if (i3 < 30 || !Os.access(absolutePath, OsConstants.R_OK)) {
                                absolutePath = "/SAF/" + storageVolume.getUuid();
                            }
                            aVarK = k(absolutePath);
                            arrayList = f2251a;
                            if (aVarK == null) {
                                aVarK = new a(absolutePath, b2, storageVolume.getUuid());
                                aVarK.f2259f |= i2;
                                arrayList.add(aVarK);
                            } else {
                                aVarK.f2259f |= 4096;
                                if (aVarK.f2258e != null) {
                                    aVarK.f2256c = storageVolume.getUuid();
                                }
                            }
                            if (storageVolume.isRemovable()) {
                                aVarK.f2259f |= 2;
                            }
                            aVarK.f2258e = storageVolume;
                            aVarK.f2254a = storageVolume.getDescription(context);
                            if (storageVolume.isPrimary()) {
                                it = arrayList.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        if (it.next().e()) {
                                            z2 = false;
                                            break;
                                        }
                                    } else {
                                        z2 = true;
                                        break;
                                    }
                                }
                                if (z2) {
                                    aVarK.f2259f |= 1;
                                }
                            }
                        } else {
                            b2 = storageVolume.isRemovable() ? (byte) 2 : (byte) 1;
                        }
                        i2 = 0;
                        aVarK = k(absolutePath);
                        arrayList = f2251a;
                        if (aVarK == null) {
                            aVarK = new a(absolutePath, b2, storageVolume.getUuid());
                            aVarK.f2259f |= i2;
                            arrayList.add(aVarK);
                        } else {
                            aVarK.f2259f |= 4096;
                            if (aVarK.f2258e != null) {
                                aVarK.f2256c = storageVolume.getUuid();
                            }
                        }
                        if (storageVolume.isRemovable()) {
                            aVarK.f2259f |= 2;
                        }
                        aVarK.f2258e = storageVolume;
                        aVarK.f2254a = storageVolume.getDescription(context);
                        if (storageVolume.isPrimary()) {
                            it = arrayList.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (it.next().e()) {
                                        z2 = false;
                                        break;
                                    }
                                } else {
                                    z2 = true;
                                    break;
                                }
                            }
                            if (z2) {
                                aVarK.f2259f |= 1;
                            }
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public static synchronized boolean u(ArrayList<a> arrayList) {
        int size;
        ArrayList<a> arrayList2 = f2251a;
        size = arrayList2.size();
        Iterator<a> it = arrayList2.iterator();
        while (it.hasNext()) {
            it.next().f2259f &= -4097;
        }
        f(null);
        Iterator<a> it2 = f2251a.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (a0.c.K(next.f2259f, 4096)) {
                next.f2259f &= -4097;
            } else {
                if (arrayList != null) {
                    arrayList.add(next);
                }
                it2.remove();
            }
        }
        return size != f2251a.size();
    }

    public static void v(Context context, ru.zdevs.zarchiver.a aVar) {
        if (aVar.f2260a != null) {
            return;
        }
        try {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30) {
                f.a(context, aVar);
            } else if (i2 >= 21) {
                aVar.f2260a = new x0.b(new Handler(), aVar);
                try {
                    context.getContentResolver().registerContentObserver(DocumentsContract.buildRootsUri("com.android.externalstorage.documents"), false, (ContentObserver) aVar.f2260a);
                } catch (SecurityException unused) {
                    aVar.f2260a = null;
                }
            } else {
                aVar.f2260a = new c(aVar);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
                intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
                intentFilter.addAction("android.intent.action.MEDIA_EJECT");
                intentFilter.addAction("android.intent.action.MEDIA_REMOVED");
                intentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
                intentFilter.addDataScheme("file");
                context.registerReceiver((BroadcastReceiver) aVar.f2260a, intentFilter);
            }
        } catch (Exception unused2) {
            aVar.f2260a = null;
        }
    }

    public static synchronized a w(StorageVolume storageVolume) {
        a aVarJ = j(storageVolume.getUuid());
        if (aVarJ == null || !f2251a.remove(aVarJ)) {
            return null;
        }
        return aVarJ;
    }

    public static void x(Context context, ru.zdevs.zarchiver.a aVar) {
        Object obj = aVar.f2260a;
        if (obj == null) {
            return;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            ((StorageManager) context.getSystemService("storage")).unregisterStorageVolumeCallback((StorageManager.StorageVolumeCallback) aVar.f2260a);
        } else if (i2 >= 21) {
            context.getContentResolver().unregisterContentObserver((ContentObserver) aVar.f2260a);
        } else {
            context.unregisterReceiver((BroadcastReceiver) obj);
        }
        aVar.f2260a = null;
    }

    public static synchronized void y(Context context) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        f2253c = f2252b.isEmpty();
        List<UriPermission> persistedUriPermissions = context.getContentResolver().getPersistedUriPermissions();
        int size = persistedUriPermissions.size();
        for (int i2 = 0; i2 < size; i2++) {
            Uri uri = persistedUriPermissions.get(i2).getUri();
            if (uri != null) {
                b(uri);
            }
        }
    }
}
