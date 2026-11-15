package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Typeface;
import androidx.core.content.res.ResourcesCompat;
import com.yandex.mobile.ads.R;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class fc0 {

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.fc0$a[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.fc0$a[]) from 0x0013: INVOKE (r0v1 com.yandex.mobile.ads.impl.fc0$a[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
        EF10(R.font.monetization_ads_internal_font_medium, R.font.monetization_ads_internal_font_bold);

        public static final int g = 0;
        private final int b;
        private final int c;
        private final int d;
        private final int e;

        static {
            kotlin.enums.a.a(aVarArr);
        }

        private a(int i, int i2) {
            super("YSText", 0);
            this.b = i;
            this.c = i;
            this.d = i;
            this.e = i2;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) f.clone();
        }

        public final int a() {
            return this.e;
        }

        public final int b() {
            return this.b;
        }

        public final int c() {
            return this.d;
        }

        public final int d() {
            return this.c;
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[a.values().length];
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public static ec0 a(Context context) {
        Typeface font;
        Typeface font2;
        Typeface font3;
        Typeface font4;
        y45.j(context, "context");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        String strT = ju1VarA != null ? ju1VarA.t() : null;
        if (strT == null) {
            return null;
        }
        try {
            a aVarValueOf = a.valueOf(strT);
            if (b.a[aVarValueOf.ordinal()] != 1) {
                throw new NoWhenBranchMatchedException();
            }
            try {
                font = ResourcesCompat.getFont(context, aVarValueOf.b());
            } catch (Throwable unused) {
                font = null;
            }
            try {
                font2 = ResourcesCompat.getFont(context, aVarValueOf.d());
            } catch (Throwable unused2) {
                font2 = null;
            }
            try {
                font3 = ResourcesCompat.getFont(context, aVarValueOf.c());
            } catch (Throwable unused3) {
                font3 = null;
            }
            try {
                font4 = ResourcesCompat.getFont(context, aVarValueOf.a());
            } catch (Throwable unused4) {
                font4 = null;
            }
            return new ec0(font, font2, font3, font4);
        } catch (Throwable unused5) {
            return null;
        }
    }
}
