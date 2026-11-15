package com.yandex.mobile.ads.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.ts[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.ts[]) from 0x005a: INVOKE (r0v1 com.yandex.mobile.ads.impl.ts[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class ts {
    d("banner"),
    e("interstitial"),
    f("rewarded"),
    g(PluginErrorDetails.Platform.NATIVE),
    h("instream"),
    i("appopenad"),
    j("feed");

    public static final a c;
    private final String b;

    public static final class a {
        private a() {
        }

        public a(int i) {
            this();
        }
    }

    static {
        kotlin.enums.a.a(tsVarArr);
        c = new a(0);
    }

    private ts(String str) {
        super(str, i);
        this.b = str;
    }

    public static ts valueOf(String str) {
        return (ts) Enum.valueOf(ts.class, str);
    }

    public static ts[] values() {
        return (ts[]) k.clone();
    }

    public final String a() {
        return this.b;
    }
}
