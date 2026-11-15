package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import java.util.Iterator;
import java.util.List;

public abstract class ns8 {
    public static final String a(p54 p54Var) {
        y45.j(p54Var, "<this>");
        List listH = p54Var.h();
        y45.i(listH, "pathSegments()");
        return c(listH);
    }

    public static final String b(by6 by6Var) {
        y45.j(by6Var, "<this>");
        if (!e(by6Var)) {
            String strB = by6Var.b();
            y45.i(strB, "asString()");
            return strB;
        }
        StringBuilder sb = new StringBuilder();
        String strB2 = by6Var.b();
        y45.i(strB2, "asString()");
        sb.append('`' + strB2);
        sb.append('`');
        return sb.toString();
    }

    public static final String c(List list) {
        y45.j(list, "pathSegments");
        StringBuilder sb = new StringBuilder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            by6 by6Var = (by6) it.next();
            if (sb.length() > 0) {
                sb.append(Consts.DOT);
            }
            sb.append(b(by6Var));
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static final String d(String str, String str2, String str3, String str4, String str5) {
        y45.j(str, "lowerRendered");
        y45.j(str2, "lowerPrefix");
        y45.j(str3, "upperRendered");
        y45.j(str4, "upperPrefix");
        y45.j(str5, "foldedPrefix");
        if (g1a.R(str, str2, false, 2, null) && g1a.R(str3, str4, false, 2, null)) {
            String strSubstring = str.substring(str2.length());
            y45.i(strSubstring, "this as java.lang.String).substring(startIndex)");
            String strSubstring2 = str3.substring(str4.length());
            y45.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
            String str6 = str5 + strSubstring;
            if (y45.e(strSubstring, strSubstring2)) {
                return str6;
            }
            if (f(strSubstring, strSubstring2)) {
                return str6 + '!';
            }
        }
        return null;
    }

    public static final boolean e(by6 by6Var) {
        String strB = by6Var.b();
        y45.i(strB, "asString()");
        if (!hg5.a.contains(strB)) {
            for (int i = 0; i < strB.length(); i++) {
                char cCharAt = strB.charAt(i);
                if (Character.isLetterOrDigit(cCharAt) || cCharAt == '_') {
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x003e  */
    /* JADX WARN: Instruction removed from duplicated block: B:8:0x003e, please report this as an issue */
    public static final boolean f(String str, String str2) {
        y45.j(str, "lower");
        y45.j(str2, "upper");
        if (!y45.e(str, g1a.N(str2, "?", "", false, 4, null))) {
            if (g1a.D(str2, "?", false, 2, null)) {
                if (!y45.e(str + '?', str2)) {
                    if (y45.e('(' + str + ")?", str2)) {
                        return false;
                    }
                }
            } else {
                if (y45.e('(' + str + ")?", str2)) {
                    return false;
                }
            }
        }
        return true;
    }
}
