package com.yandex.mobile.ads.impl;

import defpackage.hz9;
import org.greenrobot.greendao.generator.Schema;
import org.json.JSONObject;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.th2[], still in use, count: 1, list:
  (r0v1 com.yandex.mobile.ads.impl.th2[]) from 0x002a: INVOKE (r0v1 com.yandex.mobile.ads.impl.th2[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
public final class th2 implements tq0 {
    c(Schema.DEFAULT_NAME),
    d("loading"),
    e("hidden");

    private final String b;

    static {
        kotlin.enums.a.a(th2VarArr);
    }

    private th2(String str) {
        super(str, i);
        this.b = str;
    }

    public static th2 valueOf(String str) {
        return (th2) Enum.valueOf(th2.class, str);
    }

    public static th2[] values() {
        return (th2[]) f.clone();
    }

    @Override
    public final String a() {
        String strQuote = JSONObject.quote(this.b);
        hz9 hz9Var = hz9.a;
        return z0.a(new Object[]{strQuote}, 1, "state: %s", "format(...)");
    }
}
