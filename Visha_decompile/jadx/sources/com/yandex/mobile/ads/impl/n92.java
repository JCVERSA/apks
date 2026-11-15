package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class n92 {
    private final a a;
    private String b;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.n92$a[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.n92$a[]) from 0x00a7: INVOKE (r0v1 com.yandex.mobile.ads.impl.n92$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
        c("success"),
        d("application_inactive"),
        e("inconsistent_asset_value"),
        f("no_ad_view"),
        g("no_visible_ads"),
        h("no_visible_required_assets"),
        i("not_added_to_hierarchy"),
        j("not_visible_for_percent"),
        k("required_asset_can_not_be_visible"),
        l("required_asset_is_not_subview"),
        m("superview_hidden"),
        n("too_small"),
        o("visible_area_too_small");

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
            return (a[]) p.clone();
        }

        public final String a() {
            return this.b;
        }
    }

    public n92(a aVar) {
        y45.j(aVar, "status");
        this.a = aVar;
    }

    public final String a() {
        return this.b;
    }

    public final a b() {
        return this.a;
    }

    public final void a(String str) {
        this.b = str;
    }
}
