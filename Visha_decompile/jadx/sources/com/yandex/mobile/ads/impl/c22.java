package com.yandex.mobile.ads.impl;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.c22[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.c22[]) from 0x0024: INVOKE (r0v1 com.yandex.mobile.ads.impl.c22[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class c22 {
    b,
    c,
    d;

    static {
        kotlin.enums.a.a(c22VarArr);
    }

    private c22() {
        super(str, i);
    }

    public static c22 valueOf(String str) {
        return (c22) Enum.valueOf(c22.class, str);
    }

    public static c22[] values() {
        return (c22[]) e.clone();
    }
}
