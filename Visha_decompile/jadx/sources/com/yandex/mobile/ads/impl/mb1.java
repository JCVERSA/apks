package com.yandex.mobile.ads.impl;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.mb1[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.mb1[]) from 0x000d: INVOKE (r0v1 com.yandex.mobile.ads.impl.mb1[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class mb1 {
    FIRST_VIDEO_PRELOADING_STRATEGY;

    private final String b;

    static {
        kotlin.enums.a.a(mb1VarArr);
    }

    private mb1() {
        super("FIRST_VIDEO_PRELOADING_STRATEGY", 0);
        this.b = "first_video_preloading_strategy";
    }

    public static mb1 valueOf(String str) {
        return (mb1) Enum.valueOf(mb1.class, str);
    }

    public static mb1[] values() {
        return (mb1[]) d.clone();
    }

    public final String a() {
        return this.b;
    }
}
