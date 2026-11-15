package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.HttpHeaders;
import defpackage.y45;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.s21[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.s21[]) from 0x0063: INVOKE (r0v1 com.yandex.mobile.ads.impl.s21[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class s21 {
    EF0("advideocomplete"),
    EF1("impressionTrackingStart"),
    EF2("impressionTrackingSuccess"),
    EF3(HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE),
    EF4("open"),
    EF5("rewardedAdComplete"),
    EF6("usecustomclose"),
    d(""),
    EF90("adRendered");

    public static final a c;
    private final String b;

    public static final class a {
        private a() {
        }

        public static s21 a(String str) {
            for (s21 s21Var : s21.values()) {
                if (y45.e(s21Var.a(), str)) {
                    return s21Var;
                }
            }
            return s21.d;
        }

        public a(int i) {
            this();
        }
    }

    static {
        kotlin.enums.a.a(s21VarArr);
        c = new a(0);
    }

    private s21(String str) {
        super(str, i);
        this.b = str;
    }

    public static s21 valueOf(String str) {
        return (s21) Enum.valueOf(s21.class, str);
    }

    public static s21[] values() {
        return (s21[]) e.clone();
    }

    public final String a() {
        return this.b;
    }
}
