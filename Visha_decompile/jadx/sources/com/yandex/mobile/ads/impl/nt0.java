package com.yandex.mobile.ads.impl;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.nt0[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.nt0[]) from 0x00ca: INVOKE (r0v1 com.yandex.mobile.ads.impl.nt0[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class nt0 {
    c("com.yandex.mobile.ads.AUTOMATIC_SDK_INITIALIZATION"),
    d("com.yandex.mobile.ads.AGE_RESTRICTED_USER"),
    e("com.yandex.mobile.ads.ENABLE_LOGGING"),
    f("com.yandex.mobile.ads.AD_HOST"),
    g("com.yandex.mobile.ads.FALLBACK_HOSTS"),
    h("com.yandex.mobile.ads.APPMETRICA_EASY_INTEGRATION_ENABLED"),
    i("com.yandex.mobile.ads.SINGLE_ASSEMBLY_ENABLED");

    private final String b;

    static {
        kotlin.enums.a.a(nt0VarArr);
    }

    private nt0(String str) {
        super(str, i);
        this.b = str;
    }

    public static nt0 valueOf(String str) {
        return (nt0) Enum.valueOf(nt0.class, str);
    }

    public static nt0[] values() {
        return (nt0[]) j.clone();
    }

    public final String a() {
        return this.b;
    }
}
