package com.yandex.mobile.ads.impl;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.f60[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.f60[]) from 0x001a: INVOKE (r0v1 com.yandex.mobile.ads.impl.f60[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class f60 {
    b,
    c;

    static {
        kotlin.enums.a.a(f60VarArr);
    }

    private f60() {
        super(str, i);
    }

    public static f60 valueOf(String str) {
        return (f60) Enum.valueOf(f60.class, str);
    }

    public static f60[] values() {
        return (f60[]) d.clone();
    }
}
