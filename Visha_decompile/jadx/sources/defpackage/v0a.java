package defpackage;

import java.util.regex.Pattern;

public abstract class v0a {
    public static final Pattern a = Pattern.compile("\\$\\{(.*?)\\}");

    public static boolean a(String str) {
        return str == null || str.trim().isEmpty();
    }
}
