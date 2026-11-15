package uc;

import android.util.Log;

class c {

    private static c f73041a;

    private c() {
    }

    public static synchronized c c() {
        try {
            if (f73041a == null) {
                f73041a = new c();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f73041a;
    }

    void a(String str) {
    }

    void b(String str) {
        Log.e("FirebasePerformance", str);
    }

    void d(String str) {
    }

    void e(String str) {
        Log.w("FirebasePerformance", str);
    }
}
