package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class s extends h {

    private static final Pattern f26615g = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);

    private static final Pattern f26616h = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);

    private static final Pattern f26617i = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);

    private s(String str, long j10, long j11, long j12, File file) {
        super(str, j10, j11, j12, file);
    }

    public static s f(File file, long j10, long j11, k kVar) {
        File file2;
        String strK;
        String name = file.getName();
        if (name.endsWith(".v3.exo")) {
            file2 = file;
        } else {
            File fileK = k(file, kVar);
            if (fileK == null) {
                return null;
            }
            file2 = fileK;
            name = fileK.getName();
        }
        Matcher matcher = f26617i.matcher(name);
        if (!matcher.matches() || (strK = kVar.k(Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))))) == null) {
            return null;
        }
        long length = j10 == -1 ? file2.length() : j10;
        if (length == 0) {
            return null;
        }
        return new s(strK, Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(2))), length, j11 == C.TIME_UNSET ? Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(3))) : j11, file2);
    }

    public static s g(File file, long j10, k kVar) {
        return f(file, j10, C.TIME_UNSET, kVar);
    }

    public static s h(String str, long j10, long j11) {
        return new s(str, j10, j11, C.TIME_UNSET, null);
    }

    public static s i(String str, long j10) {
        return new s(str, j10, -1L, C.TIME_UNSET, null);
    }

    public static File j(File file, int i10, long j10, long j11) {
        return new File(file, i10 + "." + j10 + "." + j11 + ".v3.exo");
    }

    private static File k(File file, k kVar) {
        String strD1;
        String name = file.getName();
        Matcher matcher = f26616h.matcher(name);
        if (matcher.matches()) {
            strD1 = p0.d1((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
        } else {
            matcher = f26615g.matcher(name);
            strD1 = matcher.matches() ? (String) com.google.android.exoplayer2.util.a.e(matcher.group(1)) : null;
        }
        if (strD1 == null) {
            return null;
        }
        File fileJ = j((File) com.google.android.exoplayer2.util.a.i(file.getParentFile()), kVar.f(strD1), Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(2))), Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(3))));
        if (file.renameTo(fileJ)) {
            return fileJ;
        }
        return null;
    }

    public s e(File file, long j10) {
        com.google.android.exoplayer2.util.a.g(this.f26568d);
        return new s(this.f26565a, this.f26566b, this.f26567c, j10, file);
    }
}
