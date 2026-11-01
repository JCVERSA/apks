package p0;

import android.os.Build;

public final class e {

    public static class a {

        public String f1332a;

        public String f1333b;

        public String f1334c;

        public boolean f1335d;
    }

    public static int a(o0.a aVar, String str, x0.a.C0041a c0041a, boolean z2) {
        if (z2 && c0041a != null && Build.VERSION.SDK_INT >= 29) {
            if (!aVar.b("tune2fs -l " + c0041a.f2244a + " | grep 'shared_blocks'")) {
                return -1;
            }
            aVar.k(false);
            if (aVar.f1294h == 0) {
                return -2;
            }
        }
        Object[] objArr = new Object[2];
        objArr[0] = z2 ? "rw" : "ro";
        objArr[1] = str;
        if (!aVar.b(String.format("mount -o %s,remount %s", objArr))) {
            return -1;
        }
        aVar.k(false);
        return aVar.f1294h == 0 ? 0 : -1;
    }
}
