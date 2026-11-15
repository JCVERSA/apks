package defpackage;

import kotlin.text.Regex;

public final class fy6 {
    public static final fy6 a = new fy6();
    public static final Regex b = new Regex("[^\\p{L}\\p{Digit}]");

    public static final by6 a(int i) {
        by6 by6VarG = by6.g("_context_receiver_" + i);
        y45.i(by6VarG, "identifier(\"_context_receiver_$index\")");
        return by6VarG;
    }

    public static final String b(String str) {
        y45.j(str, "name");
        return b.replace(str, "_");
    }
}
