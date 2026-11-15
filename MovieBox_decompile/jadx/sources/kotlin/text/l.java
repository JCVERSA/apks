package kotlin.text;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

public class l extends h {
    private static final Function1 e(final String str) {
        return str.length() == 0 ? new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l.f((String) obj);
            }
        } : new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l.g(str, (String) obj);
            }
        };
    }

    public static final String f(String line) {
        Intrinsics.h(line, "line");
        return line;
    }

    public static final String g(String str, String line) {
        Intrinsics.h(line, "line");
        return str + line;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0019  */
    /* JADX WARN: Code duplicated, block: B:15:? A[RETURN, SYNTHETIC] */
    private static final int h(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            if (!CharsKt.c(str.charAt(i10))) {
                if (i10 == -1) {
                    return str.length();
                }
                return i10;
            }
            i10++;
        }
        i10 = -1;
        if (i10 == -1) {
            return str.length();
        }
        return i10;
    }

    public static final String i(String str, final String indent) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(indent, "indent");
        return SequencesKt.w(SequencesKt.y(StringsKt__StringsKt.x0(str), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l.k(indent, (String) obj);
            }
        }), "\n", null, null, 0, null, null, 62, null);
    }

    public static String j(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = "    ";
        }
        return i(str, str2);
    }

    public static final String k(String str, String it) {
        Intrinsics.h(it, "it");
        if (StringsKt.q0(it)) {
            return it.length() < str.length() ? str : it;
        }
        return str + it;
    }

    public static final String l(String str, String newIndent) {
        String str2;
        Intrinsics.h(str, "<this>");
        Intrinsics.h(newIndent, "newIndent");
        List listY0 = StringsKt.y0(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listY0) {
            if (!StringsKt.q0((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(h((String) it.next())));
        }
        Integer num = (Integer) CollectionsKt.y0(arrayList2);
        int i10 = 0;
        int iIntValue = num != null ? num.intValue() : 0;
        int length = str.length() + (newIndent.length() * listY0.size());
        Function1 function1E = e(newIndent);
        int iN = CollectionsKt.n(listY0);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listY0) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            String str3 = (String) obj2;
            if ((i10 == 0 || i10 == iN) && StringsKt.q0(str3)) {
                str3 = null;
            } else {
                String strU1 = StringsKt.u1(str3, iIntValue);
                if (strU1 != null && (str2 = (String) function1E.invoke(strU1)) != null) {
                    str3 = str2;
                }
            }
            if (str3 != null) {
                arrayList3.add(str3);
            }
            i10 = i11;
        }
        return ((StringBuilder) CollectionsKt___CollectionsKt.p0(arrayList3, new StringBuilder(length), (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 2) != 0 ? ", " : "\n", (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 4) != 0 ? "" : null, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 8) == 0 ? null : "", (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 16) != 0 ? -1 : 0, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 32) != 0 ? "..." : null, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 64) != 0 ? null : null)).toString();
    }

    public static final String m(String str, String newIndent, String marginPrefix) {
        int i10;
        String str2;
        Intrinsics.h(str, "<this>");
        Intrinsics.h(newIndent, "newIndent");
        Intrinsics.h(marginPrefix, "marginPrefix");
        if (StringsKt.q0(marginPrefix)) {
            throw new IllegalArgumentException("marginPrefix must be non-blank string.");
        }
        List listY0 = StringsKt.y0(str);
        int length = str.length() + (newIndent.length() * listY0.size());
        Function1 function1E = e(newIndent);
        int iN = CollectionsKt.n(listY0);
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        for (Object obj : listY0) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            String str3 = (String) obj;
            String strSubstring = null;
            if ((i11 == 0 || i11 == iN) && StringsKt.q0(str3)) {
                str3 = null;
            } else {
                int length2 = str3.length();
                int i13 = 0;
                while (true) {
                    if (i13 >= length2) {
                        i10 = -1;
                        break;
                    }
                    if (!CharsKt.c(str3.charAt(i13))) {
                        i10 = i13;
                        break;
                    }
                    i13++;
                }
                if (i10 != -1) {
                    int i14 = i10;
                    if (StringsKt.V(str3, marginPrefix, i10, false, 4, null)) {
                        int length3 = i14 + marginPrefix.length();
                        Intrinsics.f(str3, "null cannot be cast to non-null type java.lang.String");
                        strSubstring = str3.substring(length3);
                        Intrinsics.g(strSubstring, "substring(...)");
                    }
                }
                if (strSubstring != null && (str2 = (String) function1E.invoke(strSubstring)) != null) {
                    str3 = str2;
                }
            }
            if (str3 != null) {
                arrayList.add(str3);
            }
            i11 = i12;
        }
        return ((StringBuilder) CollectionsKt___CollectionsKt.p0(arrayList, new StringBuilder(length), (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 2) != 0 ? ", " : "\n", (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 4) != 0 ? "" : null, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 8) == 0 ? null : "", (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 16) != 0 ? -1 : 0, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 32) != 0 ? "..." : null, (Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE & 64) != 0 ? null : null)).toString();
    }

    public static String n(String str) {
        Intrinsics.h(str, "<this>");
        return l(str, "");
    }

    public static final String o(String str, String marginPrefix) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(marginPrefix, "marginPrefix");
        return m(str, "", marginPrefix);
    }

    public static String p(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = "|";
        }
        return o(str, str2);
    }
}
