package defpackage;

import android.util.Log;
import com.transsion.log.common.a;
import java.io.File;
import java.util.Arrays;
import java.util.List;

public abstract class fq5 {
    public static String a = "Logan";
    public static ef7 b = null;
    public static a c = null;
    public static boolean d = false;

    public static void a(yb9 yb9Var) {
        a aVar = c;
        if (aVar == null) {
            Log.e(a, "Please initialize Logan first");
        } else {
            aVar.g(yb9Var);
        }
    }

    public static void b(String str) {
        if (c == null) {
            Log.e(a, "Please initialize Logan first");
        }
        c.a(str);
    }

    public static List c() {
        File[] fileArrListFiles;
        a aVar = c;
        if (aVar == null) {
            Log.e(a, "Please initialize Logan first");
            return null;
        }
        File fileC = aVar.c();
        if (fileC.exists() && (fileArrListFiles = fileC.listFiles()) != null) {
            return Arrays.asList(fileArrListFiles);
        }
        return null;
    }

    public static sr3 d() {
        a aVar = c;
        if (aVar != null) {
            return aVar.d();
        }
        Log.e(a, "Please initialize Logan first");
        return null;
    }

    public static void e(wdb wdbVar) {
        c = a.f(wdbVar);
    }

    public static void f(String str, int i) {
        ef7 ef7Var = b;
        if (ef7Var != null) {
            ef7Var.a(str, i);
        }
    }

    public static void g(String str, int i) {
        a aVar = c;
        if (aVar == null) {
            Log.e(a, "Please initialize Logan first");
        } else {
            aVar.h(str, i);
        }
    }
}
