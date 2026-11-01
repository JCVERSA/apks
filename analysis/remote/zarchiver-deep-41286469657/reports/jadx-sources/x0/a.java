package x0;

import android.os.Build;
import android.os.Process;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import ru.zdevs.zarchiver.ZApp;

public final class a {

    public static final String[] f2237a = {"ext", "rootfs", "yaffs", "f2fs", "ubifs", "reiserfs", "btrfs", "jffs", "unionfs", "aufs"};

    public static final String[] f2238b = {"cramfs", "squashfs"};

    public static final String[] f2239c = {"tmpfs", "proc", "sysfs", "cgroup"};

    public static final String[] f2240d = {"vfat", "msdos", "exfat", "ntfs"};

    public static final String[] f2241e = {"fuse", "sdcardfs"};

    public static final ArrayList<C0041a> f2242f = new ArrayList<>();

    public static int f2243g = 0;

    public static class C0041a implements Comparable<C0041a> {

        public String f2244a;

        public String f2245b;

        public String f2246c;

        public String f2247d;

        public byte f2248e;

        public final byte a() {
            byte b2 = this.f2248e;
            if (b2 != -1) {
                return b2;
            }
            this.f2248e = (byte) 0;
            String[] strArr = a.f2237a;
            for (int i2 = 0; i2 < 10; i2++) {
                if (this.f2246c.startsWith(strArr[i2])) {
                    this.f2248e = (byte) 1;
                    return (byte) 1;
                }
            }
            String[] strArr2 = a.f2238b;
            for (int i3 = 0; i3 < 2; i3++) {
                if (this.f2246c.startsWith(strArr2[i3])) {
                    this.f2248e = (byte) 2;
                    return (byte) 2;
                }
            }
            String[] strArr3 = a.f2239c;
            for (int i4 = 0; i4 < 4; i4++) {
                if (this.f2246c.startsWith(strArr3[i4])) {
                    this.f2248e = (byte) 3;
                    return (byte) 3;
                }
            }
            String[] strArr4 = a.f2240d;
            for (int i5 = 0; i5 < 4; i5++) {
                if (this.f2246c.startsWith(strArr4[i5])) {
                    this.f2248e = (byte) 4;
                    return (byte) 4;
                }
            }
            String[] strArr5 = a.f2241e;
            for (int i6 = 0; i6 < 2; i6++) {
                if (this.f2246c.startsWith(strArr5[i6])) {
                    this.f2248e = (byte) 5;
                    return (byte) 5;
                }
            }
            return this.f2248e;
        }

        @Override
        public final int compareTo(C0041a c0041a) {
            int length = this.f2245b.length();
            int length2 = c0041a.f2245b.length();
            if (length == length2) {
                return 0;
            }
            return length > length2 ? 1 : -1;
        }
    }

    public static byte a(File file) {
        if (f2243g == 0) {
            c(1);
        }
        do {
            String absolutePath = file.getAbsolutePath();
            ArrayList<C0041a> arrayList = f2242f;
            synchronized (arrayList) {
                for (C0041a c0041a : arrayList) {
                    if (c0041a.f2245b.equals(absolutePath)) {
                        return c0041a.a();
                    }
                }
                file = file.getParentFile();
            }
        } while (file != null);
        return (byte) 0;
    }

    public static C0041a b(String str, boolean z2) {
        int i2 = (z2 && t0.b.i("/")) ? 2 : 1;
        if (f2243g < i2) {
            c(i2);
        }
        String str2 = v0.c.f2184a;
        if (!v0.h.e(str2)) {
            String str3 = v0.c.f2185b;
            if (!v0.h.e(str3) && !v0.h.e(v0.c.f2186c)) {
                if (str.startsWith(str3)) {
                    str = str.replace(str3, str2);
                }
                if (v0.c.f2187d == null) {
                    v0.c.f2187d = new File(str3, String.valueOf(Process.myUid() / 100000)).getAbsolutePath();
                }
                if (str.startsWith(v0.c.f2187d)) {
                    str = str.replace(v0.c.f2187d, str2);
                }
            }
        }
        File file = new File(str);
        do {
            String absolutePath = file.getAbsolutePath();
            ArrayList<C0041a> arrayList = f2242f;
            synchronized (arrayList) {
                for (C0041a c0041a : arrayList) {
                    if (c0041a.f2245b.equals(absolutePath)) {
                        return c0041a;
                    }
                }
                file = file.getParentFile();
            }
        } while (file != null);
        return null;
    }

    public static void c(int i2) {
        Throwable th;
        FileInputStream fileInputStream;
        String str;
        String str2;
        f2243g = i2;
        BufferedReader bufferedReader = null;
        if (Build.VERSION.SDK_INT < 18 || i2 == 1 || !d(null)) {
            File file = new File("/proc/mounts");
            ArrayList<C0041a> arrayList = f2242f;
            synchronized (arrayList) {
                arrayList.clear();
                try {
                    if (file.exists()) {
                        try {
                            fileInputStream = new FileInputStream(file);
                            try {
                                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(fileInputStream));
                                while (true) {
                                    try {
                                        String line = bufferedReader2.readLine();
                                        if (line == null) {
                                            break;
                                        }
                                        String[] strArrH = v0.h.h(line, ' ');
                                        if (strArrH.length >= 2) {
                                            C0041a c0041a = new C0041a();
                                            c0041a.f2244a = strArrH[0];
                                            c0041a.f2245b = strArrH[1];
                                            if (strArrH.length <= 2 || (str = strArrH[2]) == null) {
                                                str = "";
                                            }
                                            c0041a.f2246c = str;
                                            if (strArrH.length <= 3 || (str2 = strArrH[3]) == null) {
                                                str2 = "";
                                            }
                                            c0041a.f2247d = str2;
                                            c0041a.f2248e = (byte) -1;
                                            f2242f.add(c0041a);
                                        }
                                    } catch (Exception unused) {
                                        bufferedReader = bufferedReader2;
                                        if (bufferedReader != null) {
                                            bufferedReader.close();
                                        }
                                        if (fileInputStream != null) {
                                        }
                                        Collections.sort(f2242f);
                                    } catch (Throwable th2) {
                                        th = th2;
                                        bufferedReader = bufferedReader2;
                                        if (bufferedReader != null) {
                                            try {
                                                bufferedReader.close();
                                            } catch (Exception unused2) {
                                                throw th;
                                            }
                                        }
                                        if (fileInputStream == null) {
                                            throw th;
                                        }
                                        fileInputStream.close();
                                        throw th;
                                    }
                                }
                                bufferedReader2.close();
                            } catch (Exception unused3) {
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (Exception unused4) {
                            fileInputStream = null;
                        } catch (Throwable th4) {
                            th = th4;
                            fileInputStream = null;
                        }
                        fileInputStream.close();
                    }
                } catch (Exception unused5) {
                }
                Collections.sort(f2242f);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x006d  */
    public static boolean d(o0.a aVar) {
        boolean z2;
        ArrayList<C0041a> arrayList;
        if (aVar == null) {
            int i2 = t0.b.f2092m;
            if ((i2 == 2 && !ZApp.f1438g) || !o0.a.g(i2)) {
                return false;
            }
            aVar = o0.a.c(i2);
            if (!aVar.f()) {
                return false;
            }
        }
        ArrayList<p0.e.a> arrayList2 = new ArrayList();
        if (aVar.b("cat /proc/mounts")) {
            while (true) {
                String strK = aVar.k(true);
                if (strK == null) {
                    break;
                }
                try {
                    String[] strArrH = v0.h.h(strK, ' ');
                    if (strArrH.length >= 6) {
                        p0.e.a aVar2 = new p0.e.a();
                        aVar2.f1332a = strArrH[0];
                        aVar2.f1333b = strArrH[1];
                        aVar2.f1334c = strArrH[2];
                        String str = strArrH[3];
                        aVar2.f1335d = str != null && str.contains("rw");
                        arrayList2.add(aVar2);
                    }
                } catch (Exception unused) {
                }
            }
            if (aVar.f1294h == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        aVar.close();
        if (!z2) {
            return false;
        }
        ArrayList<C0041a> arrayList3 = f2242f;
        synchronized (arrayList3) {
            arrayList3.clear();
            for (p0.e.a aVar3 : arrayList2) {
                C0041a c0041a = new C0041a();
                c0041a.f2244a = aVar3.f1332a;
                c0041a.f2245b = aVar3.f1333b;
                c0041a.f2246c = aVar3.f1334c;
                c0041a.f2247d = aVar3.f1335d ? "rw" : "ro";
                c0041a.f2248e = (byte) -1;
                f2242f.add(c0041a);
            }
            arrayList = f2242f;
            Collections.sort(arrayList);
        }
        return arrayList.size() > 0;
    }
}
