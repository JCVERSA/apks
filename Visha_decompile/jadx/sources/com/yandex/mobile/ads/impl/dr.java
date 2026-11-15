package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.ImageView;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class dr {
    private final rt a;
    private final int b;
    private final h41 c;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.dr$a[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.dr$a[]) from 0x0024: INVOKE (r0v1 com.yandex.mobile.ads.impl.dr$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
        d;

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
            return (a[]) e.clone();
        }
    }

    public dr(rt rtVar, int i, h41 h41Var) {
        y45.j(rtVar, "nativeAdAssets");
        y45.j(h41Var, "nativeAdAdditionalViewProvider");
        this.a = rtVar;
        this.b = i;
        this.c = h41Var;
    }

    public final ImageView a(View view) {
        y45.j(view, "parentView");
        return a(view, a.b, this.a.e());
    }

    public final ImageView b(View view) {
        y45.j(view, "parentView");
        return a(view, a.c, this.a.g());
    }

    private final ImageView a(View view, a aVar, tt ttVar) {
        a aVar2;
        tt ttVarG = this.a.g();
        tt ttVarE = this.a.e();
        if (ttVarG != null) {
            aVar2 = a.c;
        } else if (ttVarE != null) {
            aVar2 = a.b;
        } else {
            aVar2 = a.d;
        }
        if (ttVar == null || aVar2 != aVar) {
            return null;
        }
        int iD = ttVar.d();
        int iB = ttVar.b();
        int i = this.b;
        if (i <= iD && i <= iB) {
            this.c.getClass();
            y45.j(view, TtmlNode.RUBY_CONTAINER);
            return (ImageView) view.findViewById(R.id.icon_large);
        }
        this.c.getClass();
        y45.j(view, TtmlNode.RUBY_CONTAINER);
        return (ImageView) view.findViewById(R.id.icon_small);
    }
}
