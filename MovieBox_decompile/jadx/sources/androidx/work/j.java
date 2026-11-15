package androidx.work;

import android.util.Log;

public abstract class j {

    private static final Object f15401a = new Object();

    private static volatile j f15402b = null;

    private static final int f15403c = 20;

    public j(int i10) {
    }

    public static j e() {
        j jVar;
        synchronized (f15401a) {
            try {
                if (f15402b == null) {
                    f15402b = new a(3);
                }
                jVar = f15402b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return jVar;
    }

    public static void h(j jVar) {
        synchronized (f15401a) {
            f15402b = jVar;
        }
    }

    public static String i(String str) {
        int length = str.length();
        StringBuilder sb2 = new StringBuilder(23);
        sb2.append("WM-");
        int i10 = f15403c;
        if (length >= i10) {
            sb2.append(str.substring(0, i10));
        } else {
            sb2.append(str);
        }
        return sb2.toString();
    }

    public abstract void a(String str, String str2);

    public abstract void b(String str, String str2, Throwable th2);

    public abstract void c(String str, String str2);

    public abstract void d(String str, String str2, Throwable th2);

    public abstract void f(String str, String str2);

    public abstract void g(String str, String str2, Throwable th2);

    public abstract void j(String str, String str2);

    public abstract void k(String str, String str2);

    public abstract void l(String str, String str2, Throwable th2);

    public static class a extends j {

        private final int f15404d;

        public a(int i10) {
            super(i10);
            this.f15404d = i10;
        }

        @Override
        public void c(String str, String str2) {
            if (this.f15404d <= 6) {
                Log.e(str, str2);
            }
        }

        @Override
        public void d(String str, String str2, Throwable th2) {
            if (this.f15404d <= 6) {
                Log.e(str, str2, th2);
            }
        }

        @Override
        public void j(String str, String str2) {
            if (this.f15404d <= 2) {
                Log.v(str, str2);
            }
        }

        @Override
        public void k(String str, String str2) {
            if (this.f15404d <= 5) {
                Log.w(str, str2);
            }
        }

        @Override
        public void l(String str, String str2, Throwable th2) {
            if (this.f15404d <= 5) {
                Log.w(str, str2, th2);
            }
        }

        @Override
        public void a(String str, String str2) {
        }

        @Override
        public void f(String str, String str2) {
        }

        @Override
        public void b(String str, String str2, Throwable th2) {
        }

        @Override
        public void g(String str, String str2, Throwable th2) {
        }
    }
}
