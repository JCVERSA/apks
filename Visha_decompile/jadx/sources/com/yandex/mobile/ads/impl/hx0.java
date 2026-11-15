package com.yandex.mobile.ads.impl;

import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public abstract class hx0 extends vg2<CustomizableMediaView, ex0> {
    private final ox0 c;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.hx0$a[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.hx0$a[]) from 0x0042: INVOKE (r0v1 com.yandex.mobile.ads.impl.hx0$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
        c("webview"),
        d("video"),
        e("multibanner"),
        f("image"),
        g("mediation");

        private final String b;

        static {
            kotlin.enums.a.a(aVarArr);
        }

        private a(String str) {
            super(str, i);
            this.b = str;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) h.clone();
        }

        public final String a() {
            return this.b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hx0(CustomizableMediaView customizableMediaView, ox0 ox0Var) {
        super(customizableMediaView);
        y45.j(customizableMediaView, "mediaView");
        y45.j(ox0Var, "mediaViewRenderController");
        this.c = ox0Var;
    }

    public abstract void a(CustomizableMediaView customizableMediaView);

    @Override
    public void b(CustomizableMediaView customizableMediaView, ex0 ex0Var) {
        y45.j(customizableMediaView, "mediaView");
        y45.j(ex0Var, ES6Iterator.VALUE_PROPERTY);
        this.c.a(customizableMediaView, d());
    }

    public abstract void a(ex0 ex0Var);

    public abstract a d();
}
