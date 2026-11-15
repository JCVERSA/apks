package com.yandex.mobile.ads.impl;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.gl0[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.gl0[]) from 0x0036: INVOKE (r0v1 com.yandex.mobile.ads.impl.gl0[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class gl0 {
    c("initialization"),
    d("ad"),
    e("instream"),
    f("bidder_token");

    private final String b;

    static {
        kotlin.enums.a.a(gl0VarArr);
    }

    private gl0(String str) {
        super(str, i);
        this.b = str;
    }

    public static gl0 valueOf(String str) {
        return (gl0) Enum.valueOf(gl0.class, str);
    }

    public static gl0[] values() {
        return (gl0[]) g.clone();
    }

    public final String a() {
        return this.b;
    }
}
