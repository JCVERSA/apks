package androidx.core.os;

import android.os.Build;
import android.os.ext.SdkExtensions;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f7843a = new a();

    public static final int f7844b;

    public static final int f7845c;

    public static final int f7846d;

    public static final int f7847e;

    private static final class C0059a {

        public static final C0059a f7848a = new C0059a();

        private C0059a() {
        }

        public final int a(int i10) {
            return SdkExtensions.getExtensionVersion(i10);
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        f7844b = i10 >= 30 ? C0059a.f7848a.a(30) : 0;
        f7845c = i10 >= 30 ? C0059a.f7848a.a(31) : 0;
        f7846d = i10 >= 30 ? C0059a.f7848a.a(33) : 0;
        f7847e = i10 >= 30 ? C0059a.f7848a.a(1000000) : 0;
    }

    private a() {
    }

    public static final boolean a(String codename, String buildCodename) {
        Intrinsics.h(codename, "codename");
        Intrinsics.h(buildCodename, "buildCodename");
        if (Intrinsics.c("REL", buildCodename)) {
            return false;
        }
        Integer numB = b(buildCodename);
        Integer numB2 = b(codename);
        if (numB != null && numB2 != null) {
            return numB.intValue() >= numB2.intValue();
        }
        if (numB != null || numB2 != null) {
            return numB != null;
        }
        Locale locale = Locale.ROOT;
        String upperCase = buildCodename.toUpperCase(locale);
        Intrinsics.g(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        String upperCase2 = codename.toUpperCase(locale);
        Intrinsics.g(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return upperCase.compareTo(upperCase2) >= 0;
    }

    private static final Integer b(String str) {
        String upperCase = str.toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return Intrinsics.c(upperCase, "BAKLAVA") ? 0 : null;
    }

    public static final boolean c() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 34) {
            if (i10 >= 33) {
                String CODENAME = Build.VERSION.CODENAME;
                Intrinsics.g(CODENAME, "CODENAME");
                if (a("UpsideDownCake", CODENAME)) {
                }
            }
            return false;
        }
        return true;
    }

    public static final boolean d() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 35) {
            if (i10 >= 34) {
                String CODENAME = Build.VERSION.CODENAME;
                Intrinsics.g(CODENAME, "CODENAME");
                if (a("VanillaIceCream", CODENAME)) {
                }
            }
            return false;
        }
        return true;
    }
}
