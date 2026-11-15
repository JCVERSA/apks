package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yanzhenjie.recyclerview.widget.StickyNestedScrollView;

public interface gz1 {

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.gz1$a[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.gz1$a[]) from 0x0034: INVOKE (r0v1 com.yandex.mobile.ads.impl.gz1$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
        c("fixed"),
        d("flexible"),
        EF2("screen"),
        e(StickyNestedScrollView.STICKY_TAG);

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
            return (a[]) f.clone();
        }

        public final String a() {
            return this.b;
        }
    }

    int a(Context context);

    a a();

    int b(Context context);

    int c(Context context);

    int d(Context context);

    int getHeight();

    int getWidth();
}
