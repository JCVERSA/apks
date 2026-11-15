package defpackage;

import androidx.media3.common.C;
import com.alibaba.android.arouter.utils.Consts;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class wl9 extends yp0 {
    public static final Pattern h = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);
    public static final Pattern i = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);
    public static final Pattern j = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);

    public wl9(String str, long j2, long j3, long j4, File file) {
        super(str, j2, j3, j4, file);
    }

    public static wl9 f(File file, long j2, long j3, fq0 fq0Var) {
        File file2;
        String strK;
        String name = file.getName();
        if (name.endsWith(".v3.exo")) {
            file2 = file;
        } else {
            File fileK = k(file, fq0Var);
            if (fileK == null) {
                return null;
            }
            file2 = fileK;
            name = fileK.getName();
        }
        Matcher matcher = j.matcher(name);
        if (!matcher.matches() || (strK = fq0Var.k(Integer.parseInt((String) zi.e(matcher.group(1))))) == null) {
            return null;
        }
        long length = j2 == -1 ? file2.length() : j2;
        if (length == 0) {
            return null;
        }
        return new wl9(strK, Long.parseLong((String) zi.e(matcher.group(2))), length, j3 == C.TIME_UNSET ? Long.parseLong((String) zi.e(matcher.group(3))) : j3, file2);
    }

    public static wl9 g(File file, long j2, fq0 fq0Var) {
        return f(file, j2, C.TIME_UNSET, fq0Var);
    }

    public static wl9 h(String str, long j2, long j3) {
        return new wl9(str, j2, j3, C.TIME_UNSET, null);
    }

    public static wl9 i(String str, long j2) {
        return new wl9(str, j2, -1L, C.TIME_UNSET, null);
    }

    public static File j(File file, int i2, long j2, long j3) {
        return new File(file, i2 + Consts.DOT + j2 + Consts.DOT + j3 + ".v3.exo");
    }

    public static File k(File file, fq0 fq0Var) {
        String strO0;
        String name = file.getName();
        Matcher matcher = i.matcher(name);
        if (matcher.matches()) {
            strO0 = blb.O0((String) zi.e(matcher.group(1)));
        } else {
            matcher = h.matcher(name);
            strO0 = matcher.matches() ? (String) zi.e(matcher.group(1)) : null;
        }
        if (strO0 == null) {
            return null;
        }
        File fileJ = j((File) zi.i(file.getParentFile()), fq0Var.f(strO0), Long.parseLong((String) zi.e(matcher.group(2))), Long.parseLong((String) zi.e(matcher.group(3))));
        if (file.renameTo(fileJ)) {
            return fileJ;
        }
        return null;
    }

    public wl9 e(File file, long j2) {
        zi.g(this.e);
        return new wl9(this.b, this.c, this.d, j2, file);
    }
}
