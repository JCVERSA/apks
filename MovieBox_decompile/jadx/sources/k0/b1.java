package k0;

import android.text.Layout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;

final class b1 {

    private final CharSequence f63396a;

    private final int f63397b;

    private final int f63398c;

    private final TextPaint f63399d;

    private final int f63400e;

    private final TextDirectionHeuristic f63401f;

    private final Layout.Alignment f63402g;

    private final int f63403h;

    private final TextUtils.TruncateAt f63404i;

    private final int f63405j;

    private final float f63406k;

    private final float f63407l;

    private final int f63408m;

    private final boolean f63409n;

    private final boolean f63410o;

    private final int f63411p;

    private final int f63412q;

    private final int f63413r;

    private final int f63414s;

    private final int[] f63415t;

    private final int[] f63416u;

    public b1(CharSequence charSequence, int i10, int i11, TextPaint textPaint, int i12, TextDirectionHeuristic textDirectionHeuristic, Layout.Alignment alignment, int i13, TextUtils.TruncateAt truncateAt, int i14, float f10, float f11, int i15, boolean z10, boolean z11, int i16, int i17, int i18, int i19, int[] iArr, int[] iArr2) {
        this.f63396a = charSequence;
        this.f63397b = i10;
        this.f63398c = i11;
        this.f63399d = textPaint;
        this.f63400e = i12;
        this.f63401f = textDirectionHeuristic;
        this.f63402g = alignment;
        this.f63403h = i13;
        this.f63404i = truncateAt;
        this.f63405j = i14;
        this.f63406k = f10;
        this.f63407l = f11;
        this.f63408m = i15;
        this.f63409n = z10;
        this.f63410o = z11;
        this.f63411p = i16;
        this.f63412q = i17;
        this.f63413r = i18;
        this.f63414s = i19;
        this.f63415t = iArr;
        this.f63416u = iArr2;
        if (i10 < 0 || i10 > i11) {
            throw new IllegalArgumentException("invalid start value");
        }
        int length = charSequence.length();
        if (i11 < 0 || i11 > length) {
            throw new IllegalArgumentException("invalid end value");
        }
        if (i13 < 0) {
            throw new IllegalArgumentException("invalid maxLines value");
        }
        if (i12 < 0) {
            throw new IllegalArgumentException("invalid width value");
        }
        if (i14 < 0) {
            throw new IllegalArgumentException("invalid ellipsizedWidth value");
        }
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("invalid lineSpacingMultiplier value");
        }
    }

    public final Layout.Alignment a() {
        return this.f63402g;
    }

    public final int b() {
        return this.f63411p;
    }

    public final TextUtils.TruncateAt c() {
        return this.f63404i;
    }

    public final int d() {
        return this.f63405j;
    }

    public final int e() {
        return this.f63398c;
    }

    public final int f() {
        return this.f63414s;
    }

    public final boolean g() {
        return this.f63409n;
    }

    public final int h() {
        return this.f63408m;
    }

    public final int[] i() {
        return this.f63415t;
    }

    public final int j() {
        return this.f63412q;
    }

    public final int k() {
        return this.f63413r;
    }

    public final float l() {
        return this.f63407l;
    }

    public final float m() {
        return this.f63406k;
    }

    public final int n() {
        return this.f63403h;
    }

    public final TextPaint o() {
        return this.f63399d;
    }

    public final int[] p() {
        return this.f63416u;
    }

    public final int q() {
        return this.f63397b;
    }

    public final CharSequence r() {
        return this.f63396a;
    }

    public final TextDirectionHeuristic s() {
        return this.f63401f;
    }

    public final boolean t() {
        return this.f63410o;
    }

    public final int u() {
        return this.f63400e;
    }
}
