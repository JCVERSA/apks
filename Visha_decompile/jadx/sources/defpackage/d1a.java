package defpackage;

import org.mozilla.javascript.ES6Iterator;

public abstract class d1a extends c1a {
    public static StringBuilder n(StringBuilder sb, String... strArr) {
        y45.j(sb, "<this>");
        y45.j(strArr, ES6Iterator.VALUE_PROPERTY);
        for (String str : strArr) {
            sb.append(str);
        }
        return sb;
    }
}
