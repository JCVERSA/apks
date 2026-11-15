package com.yandex.mobile.ads.impl;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.fg2[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.fg2[]) from 0x0056: INVOKE (r0v1 com.yandex.mobile.ads.impl.fg2[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class fg2 {
    b,
    c,
    d,
    e,
    f,
    g,
    h,
    i;

    static {
        kotlin.enums.a.a(fg2VarArr);
    }

    private fg2() {
        super(str, i);
    }

    public static fg2 valueOf(String str) {
        return (fg2) Enum.valueOf(fg2.class, str);
    }

    public static fg2[] values() {
        return (fg2[]) j.clone();
    }
}
