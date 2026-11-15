package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.hunantv.media.player.helper.BuildHelper;
import com.sun.jna.ELFAnalyser;
import com.sun.jna.Native;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.BooleanUtils;

public abstract class t18 {
    public static final boolean a;
    public static final boolean b;
    public static final boolean c;
    public static final boolean d;
    public static final String e;
    public static final String f;
    public static final boolean g;
    public static final String h;
    public static final int i;
    public static final String j;

    static {
        boolean z;
        String str;
        String property = System.getProperty("os.name");
        boolean z2 = false;
        if (property.startsWith("Linux")) {
            if ("dalvik".equals(System.getProperty("java.vm.name").toLowerCase())) {
                i = 8;
                System.setProperty("jna.nounpack", BooleanUtils.TRUE);
            } else {
                i = 1;
            }
        } else if (property.startsWith("AIX")) {
            i = 7;
        } else if (property.startsWith("Mac") || property.startsWith("Darwin")) {
            i = 0;
        } else if (property.startsWith("Windows CE")) {
            i = 6;
        } else if (property.startsWith("Windows")) {
            i = 2;
        } else if (property.startsWith("Solaris") || property.startsWith("SunOS")) {
            i = 3;
        } else if (property.startsWith("FreeBSD")) {
            i = 4;
        } else if (property.startsWith("OpenBSD")) {
            i = 5;
        } else if (property.equalsIgnoreCase("gnu")) {
            i = 9;
        } else if (property.equalsIgnoreCase("gnu/kfreebsd")) {
            i = 10;
        } else if (property.equalsIgnoreCase("netbsd")) {
            i = 11;
        } else {
            i = -1;
        }
        try {
            Class.forName("java.nio.Buffer");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        int i2 = i;
        boolean z3 = (i2 == 6 || i2 == 8 || i2 == 7) ? false : true;
        c = z3;
        d = z3 && i2 != 0;
        b = z;
        a = i2 != 6;
        String str2 = "coredll";
        if (i2 == 2) {
            str = "msvcrt";
        } else {
            str = i2 == 6 ? "coredll" : "c";
        }
        f = str;
        if (i2 == 2) {
            str2 = "msvcrt";
        } else if (i2 != 6) {
            str2 = CmcdData.OBJECT_TYPE_MANIFEST;
        }
        e = str2;
        String strA = a(System.getProperty("os.arch"), i2);
        j = strA;
        if (i2 == 2 && !strA.startsWith("aarch")) {
            z2 = true;
        }
        g = z2;
        h = b();
    }

    public static String a(String str, int i2) {
        String strTrim = str.toLowerCase().trim();
        if ("powerpc".equals(strTrim)) {
            strTrim = "ppc";
        } else if ("powerpc64".equals(strTrim)) {
            strTrim = "ppc64";
        } else if ("i386".equals(strTrim) || "i686".equals(strTrim)) {
            strTrim = BuildHelper.ABI_X86;
        } else if ("x86_64".equals(strTrim) || "amd64".equals(strTrim)) {
            strTrim = "x86-64";
        } else if ("zarch_64".equals(strTrim)) {
            strTrim = "s390x";
        }
        if ("ppc64".equals(strTrim) && "little".equals(System.getProperty("sun.cpu.endian"))) {
            strTrim = "ppc64le";
        }
        return ("arm".equals(strTrim) && i2 == 1 && t()) ? "armel" : strTrim;
    }

    public static String b() {
        String property = System.getProperty("jna.prefix");
        return property != null ? property : c(d(), System.getProperty("os.arch"), System.getProperty("os.name"));
    }

    public static String c(int i2, String str, String str2) {
        String strA = a(str, i2);
        switch (i2) {
            case 0:
                return "darwin-" + strA;
            case 1:
                return "linux-" + strA;
            case 2:
                return "win32-" + strA;
            case 3:
                return "sunos-" + strA;
            case 4:
                return "freebsd-" + strA;
            case 5:
                return "openbsd-" + strA;
            case 6:
                return "w32ce-" + strA;
            case 7:
            case 9:
            default:
                String lowerCase = str2.toLowerCase();
                int iIndexOf = lowerCase.indexOf(" ");
                if (iIndexOf != -1) {
                    lowerCase = lowerCase.substring(0, iIndexOf);
                }
                return lowerCase + "-" + strA;
            case 8:
                if (strA.startsWith("arm")) {
                    strA = "arm";
                }
                return "android-" + strA;
            case 10:
                return "kfreebsd-" + strA;
            case 11:
                return "netbsd-" + strA;
        }
    }

    public static final int d() {
        return i;
    }

    public static final boolean e() {
        String property = System.getProperty("sun.arch.data.model", System.getProperty("com.ibm.vm.bitmode"));
        if (property != null) {
            return "64".equals(property);
        }
        String str = j;
        return "x86-64".equals(str) || "ia64".equals(str) || "ppc64".equals(str) || "ppc64le".equals(str) || "sparcv9".equals(str) || "mips64".equals(str) || "mips64el".equals(str) || "loongarch64".equals(str) || "amd64".equals(str) || "aarch64".equals(str) || Native.l == 8;
    }

    public static final boolean f() {
        return i == 7;
    }

    public static final boolean g() {
        String str = j;
        return str.startsWith("arm") || str.startsWith("aarch");
    }

    public static final boolean h() {
        return i == 8;
    }

    public static final boolean i() {
        return i == 4;
    }

    public static final boolean j() {
        return i == 9;
    }

    public static final boolean k() {
        return j.startsWith(BuildHelper.ABI_X86);
    }

    public static final boolean l() {
        return i == 1;
    }

    public static final boolean m() {
        return j.startsWith("loongarch");
    }

    public static final boolean n() {
        String str = j;
        return str.equals("mips") || str.equals("mips64") || str.equals("mipsel") || str.equals("mips64el");
    }

    public static final boolean o() {
        return i == 0;
    }

    public static final boolean p() {
        return i == 11;
    }

    public static final boolean q() {
        return i == 5;
    }

    public static final boolean r() {
        return j.startsWith("ppc");
    }

    public static final boolean s() {
        return j.startsWith("sparc");
    }

    public static boolean t() {
        try {
            File file = new File("/proc/self/exe");
            if (file.exists()) {
                return !ELFAnalyser.a(file.getCanonicalPath()).c();
            }
            return false;
        } catch (IOException e2) {
            Logger.getLogger(t18.class.getName()).log(Level.INFO, "Failed to read '/proc/self/exe' or the target binary.", (Throwable) e2);
            return false;
        } catch (SecurityException e3) {
            Logger.getLogger(t18.class.getName()).log(Level.INFO, "SecurityException while analysing '/proc/self/exe' or the target binary.", (Throwable) e3);
            return false;
        }
    }

    public static final boolean u() {
        return i == 3;
    }

    public static final boolean v() {
        int i2 = i;
        return i2 == 2 || i2 == 6;
    }

    public static final boolean w() {
        return i == 10;
    }
}
