package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.af5;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

public final class xb2 {
    static final af5[] d = {xq8.f(new MutablePropertyReference1Impl(xb2.class, "view", "getView()Landroid/view/View;", 0))};
    private final a a;
    private final String b;
    private final go1 c;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.xb2$a[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.xb2$a[]) from 0x002e: INVOKE (r0v1 com.yandex.mobile.ads.impl.xb2$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
    public static final class a {
        b,
        c,
        d,
        e;

        static {
            kotlin.enums.a.a(aVarArr);
        }

        private a() {
            super(str, i);
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) f.clone();
        }
    }

    public xb2(View view, a aVar, String str) {
        y45.j(view, "view");
        y45.j(aVar, "purpose");
        this.a = aVar;
        this.b = str;
        this.c = ho1.a(view);
    }

    public final String a() {
        return this.b;
    }

    public final a b() {
        return this.a;
    }

    public final View c() {
        return (View) this.c.getValue(this, d[0]);
    }
}
