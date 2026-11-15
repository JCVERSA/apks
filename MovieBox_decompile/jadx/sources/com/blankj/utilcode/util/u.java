package com.blankj.utilcode.util;

import androidx.collection.x0;
import com.cloud.tmc.miniutils.constant.RegexConstants;
import java.util.regex.Pattern;

public abstract class u {

    private static final x0 f19480a = new x0();

    public static String[] a(String str, String str2) {
        return str == null ? new String[0] : str.split(str2);
    }

    public static boolean b(CharSequence charSequence) {
        return c(RegexConstants.REGEX_EMAIL, charSequence);
    }

    public static boolean c(String str, CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 0 && Pattern.matches(str, charSequence);
    }
}
