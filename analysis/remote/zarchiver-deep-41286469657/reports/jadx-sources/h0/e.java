package h0;

import android.os.Build;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class e {

    public static h0.b[] f1084a;

    public static class a {

        public final long f1085a;

        public final long f1086b;

        public final String f1087c;

        public a(String str, long j2, long j3) {
            this.f1085a = j2;
            this.f1086b = j3;
            this.f1087c = str;
        }
    }

    public static class b {

        public boolean f1088a = false;

        public long f1090c = 0;

        public long f1089b = 0;

        public int f1091d = 0;

        public boolean f1092e = false;

        public String f1093f = null;

        public String f1095h = null;

        public String f1094g = null;

        public int f1096i = -1;
    }

    public interface c {
        void b(int i2);

        void d(b bVar, h hVar, String str, String str2);
    }

    public static int[] a(String[] strArr) {
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if ("[APK]".equals(str)) {
                arrayList.add(6);
                arrayList.add(20);
            } else if ("[ARC]".equals(str)) {
                arrayList.add(1);
                arrayList.add(2);
                arrayList.add(17);
                arrayList.add(18);
                arrayList.add(19);
            } else if ("[MP3]".equals(str)) {
                arrayList.add(7);
            } else if ("[DOC]".equals(str)) {
                arrayList.add(5);
                arrayList.add(8);
                arrayList.add(10);
                arrayList.add(13);
                arrayList.add(11);
                arrayList.add(12);
            } else if ("[IMG]".equals(str)) {
                arrayList.add(9);
            } else if ("[VID]".equals(str)) {
                arrayList.add(14);
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        Collections.sort(arrayList);
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
        }
        return iArr;
    }

    public static synchronized h0.b[] b() {
        if (f1084a == null) {
            int i2 = Build.VERSION.SDK_INT;
            boolean z2 = i2 >= 23;
            h0.b[] bVarArr = new h0.b[z2 ? 5 : 4];
            f1084a = bVarArr;
            bVarArr[0] = new i0.a();
            if (i2 < 21) {
                bVarArr[1] = new j0.a();
            } else {
                bVarArr[1] = new j0.b();
            }
            int i3 = 2;
            if (z2) {
                bVarArr[2] = new m0.a();
                i3 = 3;
            }
            bVarArr[i3] = new k0.a();
            bVarArr[i3 + 1] = new j0.c();
        }
        return f1084a;
    }

    public static int c(h hVar) {
        for (h0.b bVar : b()) {
            if (bVar.d(hVar)) {
                return bVar.a(hVar);
            }
        }
        return 0;
    }

    public static a d(h hVar) {
        for (h0.b bVar : b()) {
            a aVarH = bVar.h(hVar);
            if (aVarH != null) {
                return aVarH;
            }
        }
        return null;
    }

    public static b e(h hVar, v0.d dVar) {
        if (hVar == null) {
            return null;
        }
        for (h0.b bVar : b()) {
            b bVarI = bVar.i(hVar, dVar);
            if (bVarI != null) {
                return bVarI;
            }
            if (dVar != null && dVar.isCancelled()) {
                break;
            }
        }
        return null;
    }

    public static b f(h hVar, String[] strArr, v0.d dVar) {
        if (hVar != null && strArr != null) {
            for (h0.b bVar : b()) {
                b bVarJ = bVar.j(hVar, strArr, dVar);
                if (bVarJ != null) {
                    return bVarJ;
                }
                if (dVar != null && dVar.isCancelled()) {
                    break;
                }
            }
        }
        return null;
    }

    public static boolean g(String str, int[] iArr) {
        if (iArr == null) {
            return true;
        }
        byte bE = a0.c.E(str);
        if (bE == 0) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == bE) {
                return true;
            }
            if (i2 > bE) {
                break;
            }
        }
        return false;
    }

    public static void h(h hVar, String str, int[] iArr, int i2, c cVar, v0.d dVar) {
        if (cVar == null) {
            return;
        }
        h0.b[] bVarArrB = b();
        int length = bVarArrB.length;
        for (int i3 = 0; i3 < length && !bVarArrB[i3].e(hVar, str, iArr, i2, cVar, dVar); i3++) {
            if (dVar != null && dVar.isCancelled()) {
                return;
            }
        }
    }

    public static void i(int i2, d0.b bVar) {
        h1.d dVarJ = j(bVar, i2);
        synchronized (bVar) {
            bVar.f523c = null;
            Collections.sort(bVar, dVarJ);
        }
    }

    public static h1.d j(List list, int i2) {
        int i3 = i2 & 240;
        boolean zK = a0.c.K(i2, 8);
        if (list.size() > 10000) {
            if (i3 == 16) {
                return new h1.d(7, zK);
            }
            if (i3 != 32) {
                return i3 != 48 ? new h1.d(3, zK) : new h1.d(1, zK);
            }
            return new h1.d(5, zK);
        }
        if (i3 == 16) {
            return new h1.d(6, zK);
        }
        if (i3 != 32) {
            return i3 != 48 ? new h1.d(2, zK) : new h1.d(0, zK);
        }
        return new h1.d(4, zK);
    }
}
