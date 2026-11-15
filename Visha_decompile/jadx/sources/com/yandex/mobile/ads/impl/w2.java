package com.yandex.mobile.ads.impl;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.w2[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.w2[]) from 0x002e: INVOKE (r0v1 com.yandex.mobile.ads.impl.w2[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class w2 {
    b,
    c,
    d,
    e;

    static {
        kotlin.enums.a.a(w2VarArr);
    }

    private w2() {
        super(str, i);
    }

    public static w2 valueOf(String str) {
        return (w2) Enum.valueOf(w2.class, str);
    }

    public static w2[] values() {
        return (w2[]) f.clone();
    }
}
