package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.abb;
import defpackage.hz9;
import defpackage.wn8;
import defpackage.y45;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import kotlin.Pair;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r4v2 com.yandex.mobile.ads.impl.i8[], still in use, count: 1, list:
  (r4v2 com.yandex.mobile.ads.impl.i8[]) from 0x0024: INVOKE (r4v2 com.yandex.mobile.ads.impl.i8[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
final class i8 {
    d,
    e,
    f;

    public static final a b;
    private static final Map<String, Integer> c;

    public static final class a {
        private a() {
        }

        public static String a(String str, String str2) {
            y45.j(str, "template");
            y45.j(str2, "resource");
            hz9 hz9Var = hz9.a;
            String str3 = String.format(Locale.US, str, Arrays.copyOf(new Object[]{str2}, 1));
            y45.i(str3, "format(...)");
            return str3;
        }

        public a(int i) {
            this();
        }
    }

    static {
        i8 i8Var = d;
        i8 i8Var2 = e;
        i8 i8Var3 = f;
        kotlin.enums.a.a(i8VarArr);
        b = new a(0);
        y45.j("values_dimen_%s", "template");
        Pair pairA = abb.a(a.a("values_dimen_%s", i8Var.name()), 48);
        y45.j("values_dimen_%s_sw600dp", "template");
        Pair pairA2 = abb.a(a.a("values_dimen_%s_sw600dp", i8Var.name()), 56);
        y45.j("values_dimen_%s", "template");
        Pair pairA3 = abb.a(a.a("values_dimen_%s", i8Var2.name()), 15);
        y45.j("values_dimen_%s_sw600dp", "template");
        Pair pairA4 = abb.a(a.a("values_dimen_%s_sw600dp", i8Var2.name()), 17);
        y45.j("values_dimen_%s", "template");
        Pair pairA5 = abb.a(a.a("values_dimen_%s", i8Var3.name()), 19);
        y45.j("values_dimen_%s_sw600dp", "template");
        c = kotlin.collections.a.q(pairA, pairA2, pairA3, pairA4, pairA5, abb.a(a.a("values_dimen_%s_sw600dp", i8Var3.name()), 23));
    }

    private i8() {
        super(str, i);
    }

    public static i8 valueOf(String str) {
        return (i8) Enum.valueOf(i8.class, str);
    }

    public static i8[] values() {
        return (i8[]) g.clone();
    }

    public final int a(Context context) {
        y45.j(context, "context");
        try {
            a aVar = b;
            String strB = b(context);
            aVar.getClass();
            y45.j(strB, "resourceId");
            Integer num = c.get(a.a("values_dimen_%s", strB));
            if (num != null) {
                return num.intValue();
            }
        } catch (Exception unused) {
        }
        try {
            a aVar2 = b;
            String strName = name();
            aVar2.getClass();
            y45.j(strName, "resourceId");
            Integer num2 = c.get(a.a("values_dimen_%s", strName));
            if (num2 != null) {
                return num2.intValue();
            }
            return 0;
        } catch (Exception unused2) {
            return 0;
        }
    }

    public final String b(Context context) {
        y45.j(context, "context");
        StringBuilder sb = new StringBuilder(name());
        int i = wh2.b;
        y45.j(context, "context");
        if (wn8.g(wh2.c(context), wh2.b(context)) >= 600) {
            sb.append("_sw600dp");
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }

    @Override
    public final String toString() {
        return name();
    }
}
