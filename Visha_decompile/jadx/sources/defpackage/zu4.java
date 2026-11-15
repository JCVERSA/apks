package defpackage;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import org.apache.commons.io.IOUtils;

public abstract class zu4 {
    public static void a(eqc eqcVar, dqc dqcVar, fqc fqcVar) {
        String strB = fqcVar.b();
        if (strB == null) {
            throw new IllegalArgumentException("badly formatted directory string");
        }
        if (!fqcVar.a()) {
            b(eqcVar, dqcVar, strB);
            return;
        }
        Vector vector = new Vector();
        Vector vector2 = new Vector();
        do {
            i(eqcVar, vector, vector2, strB);
            strB = fqcVar.b();
        } while (strB != null);
        dqcVar.b(r(vector), s(vector2));
    }

    public static void b(eqc eqcVar, dqc dqcVar, String str) {
        fqc fqcVar = new fqc(str, '=');
        dqcVar.e(eqcVar.d(n(fqcVar, true).trim()), t(n(fqcVar, false)));
    }

    public static void c(eqc eqcVar, dqc dqcVar, fqc fqcVar) {
        while (true) {
            String strB = fqcVar.b();
            if (strB == null) {
                return;
            }
            if (strB.indexOf(43) >= 0) {
                a(eqcVar, dqcVar, new fqc(strB, '+'));
            } else {
                b(eqcVar, dqcVar, strB);
            }
        }
    }

    public static void d(StringBuffer stringBuffer, wm8 wm8Var, Hashtable hashtable) {
        if (!wm8Var.p()) {
            if (wm8Var.m() != null) {
                e(stringBuffer, wm8Var.m(), hashtable);
                return;
            }
            return;
        }
        nl[] nlVarArrO = wm8Var.o();
        boolean z = true;
        for (int i = 0; i != nlVarArrO.length; i++) {
            if (z) {
                z = false;
            } else {
                stringBuffer.append('+');
            }
            e(stringBuffer, nlVarArrO[i], hashtable);
        }
    }

    public static void e(StringBuffer stringBuffer, nl nlVar, Hashtable hashtable) {
        String strB = (String) hashtable.get(nlVar.n());
        if (strB == null) {
            strB = nlVar.n().B();
        }
        stringBuffer.append(strB);
        stringBuffer.append('=');
        stringBuffer.append(v(nlVar.o()));
    }

    public static boolean f(nl nlVar, nl nlVar2) {
        if (nlVar == nlVar2) {
            return true;
        }
        return nlVar != null && nlVar2 != null && nlVar.n().s(nlVar2.n()) && g(nlVar.o()).equals(g(nlVar2.o()));
    }

    public static String g(x0 x0Var) {
        return h(v(x0Var));
    }

    public static String h(String str) {
        int i = 0;
        if (str.length() > 0 && str.charAt(0) == '#') {
            y93 y93VarL = l(str);
            if (y93VarL instanceof v1) {
                str = ((v1) y93VarL).getString();
            }
        }
        String strF = u0a.f(str);
        int length = strF.length();
        if (length < 2) {
            return strF;
        }
        int i2 = length - 1;
        while (i < i2 && strF.charAt(i) == '\\' && strF.charAt(i + 1) == ' ') {
            i += 2;
        }
        int i3 = i + 1;
        int i4 = i2;
        while (i4 > i3 && strF.charAt(i4 - 1) == '\\' && strF.charAt(i4) == ' ') {
            i4 -= 2;
        }
        if (i > 0 || i4 < i2) {
            strF = strF.substring(i, i4 + 1);
        }
        return q(strF);
    }

    public static void i(eqc eqcVar, Vector vector, Vector vector2, String str) {
        fqc fqcVar = new fqc(str, '=');
        String strN = n(fqcVar, true);
        String strN2 = n(fqcVar, false);
        l1 l1VarD = eqcVar.d(strN.trim());
        String strT = t(strN2);
        vector.addElement(l1VarD);
        vector2.addElement(strT);
    }

    public static int j(char c) {
        if ('0' > c || c > '9') {
            return ('a' > c || c > 'f') ? c - '7' : c - 'W';
        }
        return c - '0';
    }

    public static l1 k(String str, Hashtable hashtable) {
        if (str.regionMatches(true, 0, "OID.", 0, 4)) {
            return new l1(str.substring(4));
        }
        l1 l1VarJ = l1.J(str);
        if (l1VarJ != null) {
            return l1VarJ;
        }
        l1 l1Var = (l1) hashtable.get(u0a.f(str));
        if (l1Var != null) {
            return l1Var;
        }
        throw new IllegalArgumentException("Unknown object id - " + str + " - passed to distinguished name");
    }

    public static p1 l(String str) {
        try {
            return p1.t(jp4.c(str, 1, str.length() - 1));
        } catch (IOException e) {
            throw new IllegalStateException("unknown encoding in name: " + e);
        }
    }

    public static boolean m(char c) {
        return ('0' <= c && c <= '9') || ('a' <= c && c <= 'f') || ('A' <= c && c <= 'F');
    }

    public static String n(fqc fqcVar, boolean z) {
        String strB = fqcVar.b();
        if (strB == null || fqcVar.a() != z) {
            throw new IllegalArgumentException("badly formatted directory string");
        }
        return strB;
    }

    public static boolean o(wm8 wm8Var, wm8 wm8Var2) {
        if (wm8Var.size() != wm8Var2.size()) {
            return false;
        }
        nl[] nlVarArrO = wm8Var.o();
        nl[] nlVarArrO2 = wm8Var2.o();
        if (nlVarArrO.length != nlVarArrO2.length) {
            return false;
        }
        for (int i = 0; i != nlVarArrO.length; i++) {
            if (!f(nlVarArrO[i], nlVarArrO2[i])) {
                return false;
            }
        }
        return true;
    }

    public static wm8[] p(String str, eqc eqcVar) {
        fqc fqcVar = new fqc(str);
        dqc dqcVar = new dqc(eqcVar);
        c(eqcVar, dqcVar, fqcVar);
        return dqcVar.f().p();
    }

    public static String q(String str) {
        if (str.indexOf("  ") < 0) {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer();
        char cCharAt = str.charAt(0);
        stringBuffer.append(cCharAt);
        for (int i = 1; i < str.length(); i++) {
            char cCharAt2 = str.charAt(i);
            if (cCharAt != ' ' || cCharAt2 != ' ') {
                stringBuffer.append(cCharAt2);
                cCharAt = cCharAt2;
            }
        }
        return stringBuffer.toString();
    }

    public static l1[] r(Vector vector) {
        int size = vector.size();
        l1[] l1VarArr = new l1[size];
        for (int i = 0; i != size; i++) {
            l1VarArr[i] = (l1) vector.elementAt(i);
        }
        return l1VarArr;
    }

    public static String[] s(Vector vector) {
        int size = vector.size();
        String[] strArr = new String[size];
        for (int i = 0; i != size; i++) {
            strArr[i] = (String) vector.elementAt(i);
        }
        return strArr;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0058  */
    public static String t(String str) {
        int i;
        if (str.length() == 0) {
            return str;
        }
        if (str.indexOf(92) < 0 && str.indexOf(34) < 0) {
            return str.trim();
        }
        StringBuffer stringBuffer = new StringBuffer(str.length());
        if (str.charAt(0) == '\\' && str.charAt(1) == '#') {
            stringBuffer.append("\\#");
            i = 2;
        } else {
            i = 0;
        }
        boolean z = false;
        int length = 0;
        boolean z2 = false;
        boolean z3 = false;
        char c = 0;
        while (i != str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt != ' ') {
                z3 = true;
            }
            if (cCharAt == '\"') {
                if (z) {
                    stringBuffer.append(cCharAt);
                    z = false;
                } else {
                    z2 = !z2;
                }
            } else if (cCharAt == '\\' && !z && !z2) {
                length = stringBuffer.length();
                z = true;
            } else if (cCharAt != ' ' || z || z3) {
                if (!z || !m(cCharAt)) {
                    stringBuffer.append(cCharAt);
                    z = false;
                } else if (c != 0) {
                    stringBuffer.append((char) ((j(c) * 16) + j(cCharAt)));
                    z = false;
                    c = 0;
                } else {
                    c = cCharAt;
                }
            }
            i++;
        }
        if (stringBuffer.length() > 0) {
            while (stringBuffer.charAt(stringBuffer.length() - 1) == ' ' && length != stringBuffer.length() - 1) {
                stringBuffer.setLength(stringBuffer.length() - 1);
            }
        }
        return stringBuffer.toString();
    }

    public static x0 u(String str, int i) {
        int length = (str.length() - i) / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 != length; i2++) {
            int i3 = (i2 * 2) + i;
            char cCharAt = str.charAt(i3);
            char cCharAt2 = str.charAt(i3 + 1);
            bArr[i2] = (byte) (j(cCharAt2) | (j(cCharAt) << 4));
        }
        return p1.t(bArr);
    }

    public static String v(x0 x0Var) {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        if (!(x0Var instanceof v1) || (x0Var instanceof c2)) {
            try {
                stringBuffer.append('#');
                stringBuffer.append(jp4.f(x0Var.j().l("DER")));
            } catch (IOException unused) {
                throw new IllegalArgumentException("Other value has no encoded form");
            }
        } else {
            String string = ((v1) x0Var).getString();
            if (string.length() > 0 && string.charAt(0) == '#') {
                stringBuffer.append(IOUtils.DIR_SEPARATOR_WINDOWS);
            }
            stringBuffer.append(string);
        }
        int length = stringBuffer.length();
        int i2 = (stringBuffer.length() >= 2 && stringBuffer.charAt(0) == '\\' && stringBuffer.charAt(1) == '#') ? 2 : 0;
        while (i2 != length) {
            char cCharAt = stringBuffer.charAt(i2);
            if (cCharAt != '\"' && cCharAt != '\\' && cCharAt != '+' && cCharAt != ',') {
                switch (cCharAt) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        break;
                    default:
                        i2++;
                        break;
                }
            }
            stringBuffer.insert(i2, "\\");
            i2 += 2;
            length++;
        }
        if (stringBuffer.length() > 0) {
            while (stringBuffer.length() > i && stringBuffer.charAt(i) == ' ') {
                stringBuffer.insert(i, "\\");
                i += 2;
            }
        }
        for (int length2 = stringBuffer.length() - 1; length2 >= i && stringBuffer.charAt(length2) == ' '; length2--) {
            stringBuffer.insert(length2, IOUtils.DIR_SEPARATOR_WINDOWS);
        }
        return stringBuffer.toString();
    }
}
