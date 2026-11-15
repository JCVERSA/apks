package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;

public class C2263o2 implements C1S {
    public final float A00;
    public final float A01;
    public final float A02;
    public final float A03;
    public final float A04;
    public final float A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final int A0A;
    public final int A0B;
    public final Bitmap A0C;
    public final Layout.Alignment A0D;
    public final Layout.Alignment A0E;
    public final CharSequence A0F;
    public final boolean A0G;
    public static String[] A0H = {"KUNE", "raA8kdJusqhSRQUihDErH9yYSlb7Q0pc", "a1YC1OeN6dpIjzX6IUyhBFBaZFiOBPar", "NtybfxE4AhM4u1v", "wsqusZh9gWXwGZdOs5jqqsOsuYO68ouK", "hrWhj8FC8bQIQnfwmhsxP3BdiVuQ0H3H", "RcL5HtL", "cuPzI7wmuuTc6v"};
    public static final C2263o2 A0J = new C3C().A0G("").A0H();
    public static final String A0U = AbstractC06244a.A0h(0);
    public static final String A0V = AbstractC06244a.A0h(1);
    public static final String A0P = AbstractC06244a.A0h(2);
    public static final String A0K = AbstractC06244a.A0h(3);
    public static final String A0M = AbstractC06244a.A0h(4);
    public static final String A0O = AbstractC06244a.A0h(5);
    public static final String A0N = AbstractC06244a.A0h(6);
    public static final String A0Q = AbstractC06244a.A0h(7);
    public static final String A0R = AbstractC06244a.A0h(8);
    public static final String A0X = AbstractC06244a.A0h(9);
    public static final String A0W = AbstractC06244a.A0h(10);
    public static final String A0T = AbstractC06244a.A0h(11);
    public static final String A0L = AbstractC06244a.A0h(12);
    public static final String A0Z = AbstractC06244a.A0h(13);
    public static final String A0a = AbstractC06244a.A0h(14);
    public static final String A0Y = AbstractC06244a.A0h(15);
    public static final String A0S = AbstractC06244a.A0h(16);
    public static final C1R<C2263o2> A0I = new C1R() {
        @Override
        public final C1S A6X(Bundle bundle) {
            return C2263o2.A00(bundle);
        }
    };

    public C2263o2(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z, int i5, int i6, float f6) {
        if (charSequence == null) {
            C3M.A01(bitmap);
        } else {
            C3M.A07(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.A0F = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.A0F = charSequence.toString();
        } else {
            this.A0F = null;
        }
        this.A0E = alignment;
        this.A0D = alignment2;
        this.A0C = bitmap;
        this.A01 = f;
        this.A07 = i;
        this.A06 = i2;
        this.A02 = f2;
        this.A08 = i3;
        this.A04 = f4;
        this.A00 = f5;
        this.A0G = z;
        this.A0B = i5;
        this.A09 = i4;
        this.A05 = f3;
        this.A0A = i6;
        this.A03 = f6;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0112  */
    public static final C2263o2 A00(Bundle bundle) {
        C3C c3c = new C3C();
        CharSequence charSequence = bundle.getCharSequence(A0U);
        if (charSequence != null) {
            c3c.A0G(charSequence);
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(A0V);
        if (alignment != null) {
            c3c.A0F(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(A0P);
        if (alignment2 != null) {
            c3c.A0E(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(A0K);
        if (bitmap != null) {
            c3c.A0D(bitmap);
        }
        if (bundle.containsKey(A0M)) {
            boolean zContainsKey = bundle.containsKey(A0O);
            if (A0H[1].charAt(14) == 'v') {
                throw new RuntimeException();
            }
            A0H[6] = "SnlpZ584xa2urjPIz8YdoedqgUv4xZ";
            if (zContainsKey) {
                c3c.A07(bundle.getFloat(A0M), bundle.getInt(A0O));
            }
        }
        if (bundle.containsKey(A0N)) {
            int i = bundle.getInt(A0N);
            if (A0H[4].charAt(16) != 'F') {
                A0H[1] = "ya89OHr1nN19FgUSnedhVAiJJHnMxvW6";
                c3c.A09(i);
            } else {
                c3c.A09(i);
            }
        }
        if (bundle.containsKey(A0Q)) {
            c3c.A04(bundle.getFloat(A0Q));
        }
        if (bundle.containsKey(A0R)) {
            c3c.A0A(bundle.getInt(A0R));
        }
        if (bundle.containsKey(A0W) && bundle.containsKey(A0X)) {
            c3c.A08(bundle.getFloat(A0W), bundle.getInt(A0X));
        }
        if (bundle.containsKey(A0T)) {
            c3c.A06(bundle.getFloat(A0T));
        }
        if (bundle.containsKey(A0L)) {
            c3c.A03(bundle.getFloat(A0L));
        }
        String str = A0Z;
        if (A0H[6].length() != 9) {
            A0H[6] = "";
            if (bundle.containsKey(str)) {
                c3c.A0C(bundle.getInt(A0Z));
            }
        } else if (bundle.containsKey(str)) {
            c3c.A0C(bundle.getInt(A0Z));
        }
        if (!bundle.getBoolean(A0a, false)) {
            c3c.A02();
        }
        if (bundle.containsKey(A0Y)) {
            c3c.A0B(bundle.getInt(A0Y));
        }
        if (bundle.containsKey(A0S)) {
            c3c.A05(bundle.getFloat(A0S));
        }
        return c3c.A0H();
    }

    public final C3C A02() {
        return new C3C(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2263o2 c2263o2 = (C2263o2) obj;
        if (TextUtils.equals(this.A0F, c2263o2.A0F) && this.A0E == c2263o2.A0E && this.A0D == c2263o2.A0D && (this.A0C != null ? !(c2263o2.A0C == null || !this.A0C.sameAs(c2263o2.A0C)) : c2263o2.A0C == null) && this.A01 == c2263o2.A01 && this.A07 == c2263o2.A07 && this.A06 == c2263o2.A06) {
            float f = this.A02;
            if (A0H[4].charAt(16) == 'F') {
                throw new RuntimeException();
            }
            A0H[6] = "OaHYrPsvOOcaJ1wPKUjhJjBsa";
            if (f == c2263o2.A02 && this.A08 == c2263o2.A08 && this.A04 == c2263o2.A04 && this.A00 == c2263o2.A00 && this.A0G == c2263o2.A0G && this.A0B == c2263o2.A0B && this.A09 == c2263o2.A09 && this.A05 == c2263o2.A05 && this.A0A == c2263o2.A0A && this.A03 == c2263o2.A03) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return BX.A00(this.A0F, this.A0E, this.A0D, this.A0C, Float.valueOf(this.A01), Integer.valueOf(this.A07), Integer.valueOf(this.A06), Float.valueOf(this.A02), Integer.valueOf(this.A08), Float.valueOf(this.A04), Float.valueOf(this.A00), Boolean.valueOf(this.A0G), Integer.valueOf(this.A0B), Integer.valueOf(this.A09), Float.valueOf(this.A05), Integer.valueOf(this.A0A), Float.valueOf(this.A03));
    }
}
