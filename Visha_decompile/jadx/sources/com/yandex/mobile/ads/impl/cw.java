package com.yandex.mobile.ads.impl;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.cw[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.cw[]) from 0x0040: INVOKE (r0v1 com.yandex.mobile.ads.impl.cw[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class cw {
    c("cross_clicked"),
    d("cross_timer_start"),
    e("cross_timer_end"),
    f("failed_to_create_download_manager"),
    EF55("listener_is_null_on_loading_finished");

    private final String b;

    static {
        kotlin.enums.a.a(cwVarArr);
    }

    private cw(String str) {
        super(str, i);
        this.b = str;
    }

    public static cw valueOf(String str) {
        return (cw) Enum.valueOf(cw.class, str);
    }

    public static cw[] values() {
        return (cw[]) g.clone();
    }

    public final String a() {
        return this.b;
    }
}
