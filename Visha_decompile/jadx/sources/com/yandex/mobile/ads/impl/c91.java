package com.yandex.mobile.ads.impl;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.c91[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.c91[]) from 0x001e: INVOKE (r0v1 com.yandex.mobile.ads.impl.c91[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class c91 {
    c("loading_on_show"),
    d("loading_on_back");

    private final String b;

    static {
        kotlin.enums.a.a(c91VarArr);
    }

    private c91(String str) {
        super(str, i);
        this.b = str;
    }

    public static c91 valueOf(String str) {
        return (c91) Enum.valueOf(c91.class, str);
    }

    public static c91[] values() {
        return (c91[]) e.clone();
    }

    public final String a() {
        return this.b;
    }
}
