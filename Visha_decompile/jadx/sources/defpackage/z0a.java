package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.text.a;

public abstract class z0a extends w0a {
    public static final e74 d(final String str) {
        return str.length() == 0 ? new e74() {
            @Override
            public final Object invoke(Object obj) {
                return z0a.e((String) obj);
            }
        } : new e74() {
            @Override
            public final Object invoke(Object obj) {
                return z0a.f(str, (String) obj);
            }
        };
    }

    public static final String e(String str) {
        y45.j(str, "line");
        return str;
    }

    public static final String f(String str, String str2) {
        y45.j(str2, "line");
        return str + str2;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0019  */
    /* JADX WARN: Code duplicated, block: B:15:? A[RETURN, SYNTHETIC] */
    public static final int g(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (!a.c(str.charAt(i))) {
                if (i == -1) {
                    return str.length();
                }
                return i;
            }
            i++;
        }
        i = -1;
        if (i == -1) {
            return str.length();
        }
        return i;
    }

    public static final String h(String str, String str2) {
        String str3;
        y45.j(str, "<this>");
        y45.j(str2, "newIndent");
        List listV0 = j1a.v0(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listV0) {
            if (!j1a.o0((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(g((String) it.next())));
        }
        Integer num = (Integer) i81.E0(arrayList2);
        int i = 0;
        int iIntValue = num != null ? num.intValue() : 0;
        int length = str.length() + (str2.length() * listV0.size());
        e74 e74VarD = d(str2);
        int iM = y71.m(listV0);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listV0) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            String str4 = (String) obj2;
            if ((i == 0 || i == iM) && j1a.o0(str4)) {
                str4 = null;
            } else {
                String strN1 = l1a.n1(str4, iIntValue);
                if (strN1 != null && (str3 = (String) e74VarD.invoke(strN1)) != null) {
                    str4 = str3;
                }
            }
            if (str4 != null) {
                arrayList3.add(str4);
            }
            i = i2;
        }
        return ((StringBuilder) i81.v0(arrayList3, new StringBuilder(length), (124 & 2) != 0 ? ", " : "\n", (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null)).toString();
    }

    public static final String i(String str, String str2, String str3) {
        int i;
        String str4;
        y45.j(str, "<this>");
        y45.j(str2, "newIndent");
        y45.j(str3, "marginPrefix");
        if (j1a.o0(str3)) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.");
        }
        List listV0 = j1a.v0(str);
        int length = str.length() + (str2.length() * listV0.size());
        e74 e74VarD = d(str2);
        int iM = y71.m(listV0);
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (Object obj : listV0) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                y71.u();
            }
            String str5 = (String) obj;
            String strSubstring = null;
            if ((i2 == 0 || i2 == iM) && j1a.o0(str5)) {
                str5 = null;
            } else {
                int length2 = str5.length();
                int i4 = 0;
                while (true) {
                    if (i4 >= length2) {
                        i = -1;
                        break;
                    }
                    if (!a.c(str5.charAt(i4))) {
                        i = i4;
                        break;
                    }
                    i4++;
                }
                if (i != -1) {
                    int i5 = i;
                    if (g1a.Q(str5, str3, i, false, 4, null)) {
                        int length3 = i5 + str3.length();
                        y45.h(str5, "null cannot be cast to non-null type java.lang.String");
                        strSubstring = str5.substring(length3);
                        y45.i(strSubstring, "substring(...)");
                    }
                }
                if (strSubstring != null && (str4 = (String) e74VarD.invoke(strSubstring)) != null) {
                    str5 = str4;
                }
            }
            if (str5 != null) {
                arrayList.add(str5);
            }
            i2 = i3;
        }
        return ((StringBuilder) i81.v0(arrayList, new StringBuilder(length), (124 & 2) != 0 ? ", " : "\n", (124 & 4) != 0 ? "" : null, (124 & 8) == 0 ? null : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null)).toString();
    }

    public static String j(String str) {
        y45.j(str, "<this>");
        return h(str, "");
    }

    public static final String k(String str, String str2) {
        y45.j(str, "<this>");
        y45.j(str2, "marginPrefix");
        return i(str, "", str2);
    }

    public static String l(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "|";
        }
        return k(str, str2);
    }
}
