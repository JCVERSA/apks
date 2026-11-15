package com.yandex.mobile.ads.impl;

import androidx.browser.trusted.sharing.ShareTarget;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.r01[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.r01[]) from 0x0056: INVOKE (r0v1 com.yandex.mobile.ads.impl.r01[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class r01 {
    d(ShareTarget.METHOD_GET),
    e("POST"),
    f("PUT"),
    g("DELETE"),
    h("HEAD"),
    i("OPTIONS"),
    j("TRACE"),
    k("PATCH");

    public static final a c;
    private final String b;

    public static final class a {
        private a() {
        }

        public a(int i) {
            this();
        }
    }

    static {
        kotlin.enums.a.a(r01VarArr);
        c = new a(0);
    }

    private r01(String str) {
        super(str, i);
        this.b = str;
    }

    public static r01 valueOf(String str) {
        return (r01) Enum.valueOf(r01.class, str);
    }

    public static r01[] values() {
        return (r01[]) l.clone();
    }

    public final String a() {
        return this.b;
    }
}
