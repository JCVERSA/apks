package com.yandex.mobile.ads.impl;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.mq1[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.mq1[]) from 0x002e: INVOKE (r0v1 com.yandex.mobile.ads.impl.mq1[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class mq1 {
    b,
    c,
    d,
    e;

    static {
        kotlin.enums.a.a(mq1VarArr);
    }

    private mq1() {
        super(str, i);
    }

    public static mq1 valueOf(String str) {
        return (mq1) Enum.valueOf(mq1.class, str);
    }

    public static mq1[] values() {
        return (mq1[]) f.clone();
    }
}
