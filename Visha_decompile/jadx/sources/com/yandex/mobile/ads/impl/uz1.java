package com.yandex.mobile.ads.impl;

import org.mozilla.javascript.ES6Iterator;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.uz1[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.uz1[]) from 0x001c: INVOKE (r0v1 com.yandex.mobile.ads.impl.uz1[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class uz1 {
    EF0(ES6Iterator.NEXT_METHOD),
    c("last");

    private final String b;

    static {
        kotlin.enums.a.a(uz1VarArr);
    }

    private uz1(String str) {
        super(str, i);
        this.b = str;
    }

    public static uz1 valueOf(String str) {
        return (uz1) Enum.valueOf(uz1.class, str);
    }

    public static uz1[] values() {
        return (uz1[]) d.clone();
    }

    public final String a() {
        return this.b;
    }
}
