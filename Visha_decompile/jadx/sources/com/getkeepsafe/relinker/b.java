package com.getkeepsafe.relinker;

import android.content.Context;
import java.io.File;

public abstract class b {

    public interface a {
        void a(Context context, String[] strArr, String str, File file, ReLinkerInstance reLinkerInstance);
    }

    public interface InterfaceC0072b {
        void a(String str);

        String b(String str);

        String[] c();

        void d(String str);

        String e(String str);
    }

    public interface c {
    }

    public static void a(Context context, String str) {
        b(context, str, null, null);
    }

    public static void b(Context context, String str, String str2, c cVar) {
        new ReLinkerInstance().f(context, str, str2, cVar);
    }
}
