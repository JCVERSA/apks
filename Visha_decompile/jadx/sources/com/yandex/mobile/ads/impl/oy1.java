package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.alibaba.android.arouter.utils.Consts;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class oy1 extends fn {
    private static final Pattern h = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);
    private static final Pattern i = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);
    private static final Pattern j = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);
    public static final int k = 0;

    private oy1(String str, long j2, long j3, long j4, @Nullable File file) {
        super(str, j2, j3, j4, file);
    }

    public final oy1 a(File file, long j2) {
        if (this.e) {
            return new oy1(this.b, this.c, this.d, j2, file);
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0091  */
    @Nullable
    public static oy1 a(File file, long j2, long j3, kn knVar) {
        File file2;
        long j4;
        String strGroup;
        File file3;
        String name = file.getName();
        if (name.endsWith(".v3.exo")) {
            file2 = file;
        } else {
            String name2 = file.getName();
            Matcher matcher = i.matcher(name2);
            if (matcher.matches()) {
                String strGroup2 = matcher.group(1);
                strGroup2.getClass();
                strGroup = f92.f(strGroup2);
            } else {
                matcher = h.matcher(name2);
                if (matcher.matches()) {
                    strGroup = matcher.group(1);
                    strGroup.getClass();
                } else {
                    strGroup = null;
                }
            }
            if (strGroup != null) {
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    int i2 = knVar.c(strGroup).a;
                    String strGroup3 = matcher.group(2);
                    strGroup3.getClass();
                    long j5 = Long.parseLong(strGroup3);
                    String strGroup4 = matcher.group(3);
                    strGroup4.getClass();
                    file3 = new File(parentFile, i2 + Consts.DOT + j5 + Consts.DOT + Long.parseLong(strGroup4) + ".v3.exo");
                    if (!file.renameTo(file3)) {
                        file3 = null;
                    }
                } else {
                    throw new IllegalStateException();
                }
            } else {
                file3 = null;
            }
            if (file3 == null) {
                return null;
            }
            name = file3.getName();
            file2 = file3;
        }
        Matcher matcher2 = j.matcher(name);
        if (!matcher2.matches()) {
            return null;
        }
        String strGroup5 = matcher2.group(1);
        strGroup5.getClass();
        String strA = knVar.a(Integer.parseInt(strGroup5));
        if (strA == null) {
            return null;
        }
        long length = j2 == -1 ? file2.length() : j2;
        if (length == 0) {
            return null;
        }
        String strGroup6 = matcher2.group(2);
        strGroup6.getClass();
        long j6 = Long.parseLong(strGroup6);
        if (j3 == C.TIME_UNSET) {
            String strGroup7 = matcher2.group(3);
            strGroup7.getClass();
            j4 = Long.parseLong(strGroup7);
        } else {
            j4 = j3;
        }
        return new oy1(strA, j6, length, j4, file2);
    }

    public static oy1 a(String str, long j2) {
        return new oy1(str, j2, -1L, C.TIME_UNSET, null);
    }

    public static oy1 a(String str, long j2, long j3) {
        return new oy1(str, j2, j3, C.TIME_UNSET, null);
    }
}
