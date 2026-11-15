package da;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;

public final class b implements com.google.android.exoplayer2.k {

    public static final b f58922r = new C0703b().o("").a();

    public static final com.google.android.exoplayer2.k.a f58923s = new com.google.android.exoplayer2.k.a() {
        @Override
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return b.c(bundle);
        }
    };

    public final CharSequence f58924a;

    public final Layout.Alignment f58925b;

    public final Layout.Alignment f58926c;

    public final Bitmap f58927d;

    public final float f58928e;

    public final int f58929f;

    public final int f58930g;

    public final float f58931h;

    public final int f58932i;

    public final float f58933j;

    public final float f58934k;

    public final boolean f58935l;

    public final int f58936m;

    public final int f58937n;

    public final float f58938o;

    public final int f58939p;

    public final float f58940q;

    public static final class C0703b {

        private CharSequence f58941a;

        private Bitmap f58942b;

        private Layout.Alignment f58943c;

        private Layout.Alignment f58944d;

        private float f58945e;

        private int f58946f;

        private int f58947g;

        private float f58948h;

        private int f58949i;

        private int f58950j;

        private float f58951k;

        private float f58952l;

        private float f58953m;

        private boolean f58954n;

        private int f58955o;

        private int f58956p;

        private float f58957q;

        public b a() {
            return new b(this.f58941a, this.f58943c, this.f58944d, this.f58942b, this.f58945e, this.f58946f, this.f58947g, this.f58948h, this.f58949i, this.f58950j, this.f58951k, this.f58952l, this.f58953m, this.f58954n, this.f58955o, this.f58956p, this.f58957q);
        }

        public C0703b b() {
            this.f58954n = false;
            return this;
        }

        public int c() {
            return this.f58947g;
        }

        public int d() {
            return this.f58949i;
        }

        public CharSequence e() {
            return this.f58941a;
        }

        public C0703b f(Bitmap bitmap) {
            this.f58942b = bitmap;
            return this;
        }

        public C0703b g(float f10) {
            this.f58953m = f10;
            return this;
        }

        public C0703b h(float f10, int i10) {
            this.f58945e = f10;
            this.f58946f = i10;
            return this;
        }

        public C0703b i(int i10) {
            this.f58947g = i10;
            return this;
        }

        public C0703b j(Layout.Alignment alignment) {
            this.f58944d = alignment;
            return this;
        }

        public C0703b k(float f10) {
            this.f58948h = f10;
            return this;
        }

        public C0703b l(int i10) {
            this.f58949i = i10;
            return this;
        }

        public C0703b m(float f10) {
            this.f58957q = f10;
            return this;
        }

        public C0703b n(float f10) {
            this.f58952l = f10;
            return this;
        }

        public C0703b o(CharSequence charSequence) {
            this.f58941a = charSequence;
            return this;
        }

        public C0703b p(Layout.Alignment alignment) {
            this.f58943c = alignment;
            return this;
        }

        public C0703b q(float f10, int i10) {
            this.f58951k = f10;
            this.f58950j = i10;
            return this;
        }

        public C0703b r(int i10) {
            this.f58956p = i10;
            return this;
        }

        public C0703b s(int i10) {
            this.f58955o = i10;
            this.f58954n = true;
            return this;
        }

        public C0703b() {
            this.f58941a = null;
            this.f58942b = null;
            this.f58943c = null;
            this.f58944d = null;
            this.f58945e = -3.4028235E38f;
            this.f58946f = Integer.MIN_VALUE;
            this.f58947g = Integer.MIN_VALUE;
            this.f58948h = -3.4028235E38f;
            this.f58949i = Integer.MIN_VALUE;
            this.f58950j = Integer.MIN_VALUE;
            this.f58951k = -3.4028235E38f;
            this.f58952l = -3.4028235E38f;
            this.f58953m = -3.4028235E38f;
            this.f58954n = false;
            this.f58955o = ViewCompat.MEASURED_STATE_MASK;
            this.f58956p = Integer.MIN_VALUE;
        }

        private C0703b(b bVar) {
            this.f58941a = bVar.f58924a;
            this.f58942b = bVar.f58927d;
            this.f58943c = bVar.f58925b;
            this.f58944d = bVar.f58926c;
            this.f58945e = bVar.f58928e;
            this.f58946f = bVar.f58929f;
            this.f58947g = bVar.f58930g;
            this.f58948h = bVar.f58931h;
            this.f58949i = bVar.f58932i;
            this.f58950j = bVar.f58937n;
            this.f58951k = bVar.f58938o;
            this.f58952l = bVar.f58933j;
            this.f58953m = bVar.f58934k;
            this.f58954n = bVar.f58935l;
            this.f58955o = bVar.f58936m;
            this.f58956p = bVar.f58939p;
            this.f58957q = bVar.f58940q;
        }
    }

    public static final b c(Bundle bundle) {
        C0703b c0703b = new C0703b();
        CharSequence charSequence = bundle.getCharSequence(d(0));
        if (charSequence != null) {
            c0703b.o(charSequence);
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(d(1));
        if (alignment != null) {
            c0703b.p(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(d(2));
        if (alignment2 != null) {
            c0703b.j(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(d(3));
        if (bitmap != null) {
            c0703b.f(bitmap);
        }
        if (bundle.containsKey(d(4)) && bundle.containsKey(d(5))) {
            c0703b.h(bundle.getFloat(d(4)), bundle.getInt(d(5)));
        }
        if (bundle.containsKey(d(6))) {
            c0703b.i(bundle.getInt(d(6)));
        }
        if (bundle.containsKey(d(7))) {
            c0703b.k(bundle.getFloat(d(7)));
        }
        if (bundle.containsKey(d(8))) {
            c0703b.l(bundle.getInt(d(8)));
        }
        if (bundle.containsKey(d(10)) && bundle.containsKey(d(9))) {
            c0703b.q(bundle.getFloat(d(10)), bundle.getInt(d(9)));
        }
        if (bundle.containsKey(d(11))) {
            c0703b.n(bundle.getFloat(d(11)));
        }
        if (bundle.containsKey(d(12))) {
            c0703b.g(bundle.getFloat(d(12)));
        }
        if (bundle.containsKey(d(13))) {
            c0703b.s(bundle.getInt(d(13)));
        }
        if (!bundle.getBoolean(d(14), false)) {
            c0703b.b();
        }
        if (bundle.containsKey(d(15))) {
            c0703b.r(bundle.getInt(d(15)));
        }
        if (bundle.containsKey(d(16))) {
            c0703b.m(bundle.getFloat(d(16)));
        }
        return c0703b.a();
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    public C0703b b() {
        return new C0703b();
    }

    public boolean equals(Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return TextUtils.equals(this.f58924a, bVar.f58924a) && this.f58925b == bVar.f58925b && this.f58926c == bVar.f58926c && ((bitmap = this.f58927d) != null ? !((bitmap2 = bVar.f58927d) == null || !bitmap.sameAs(bitmap2)) : bVar.f58927d == null) && this.f58928e == bVar.f58928e && this.f58929f == bVar.f58929f && this.f58930g == bVar.f58930g && this.f58931h == bVar.f58931h && this.f58932i == bVar.f58932i && this.f58933j == bVar.f58933j && this.f58934k == bVar.f58934k && this.f58935l == bVar.f58935l && this.f58936m == bVar.f58936m && this.f58937n == bVar.f58937n && this.f58938o == bVar.f58938o && this.f58939p == bVar.f58939p && this.f58940q == bVar.f58940q;
    }

    public int hashCode() {
        return com.google.common.base.j.b(this.f58924a, this.f58925b, this.f58926c, this.f58927d, Float.valueOf(this.f58928e), Integer.valueOf(this.f58929f), Integer.valueOf(this.f58930g), Float.valueOf(this.f58931h), Integer.valueOf(this.f58932i), Float.valueOf(this.f58933j), Float.valueOf(this.f58934k), Boolean.valueOf(this.f58935l), Integer.valueOf(this.f58936m), Integer.valueOf(this.f58937n), Float.valueOf(this.f58938o), Integer.valueOf(this.f58939p), Float.valueOf(this.f58940q));
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence(d(0), this.f58924a);
        bundle.putSerializable(d(1), this.f58925b);
        bundle.putSerializable(d(2), this.f58926c);
        bundle.putParcelable(d(3), this.f58927d);
        bundle.putFloat(d(4), this.f58928e);
        bundle.putInt(d(5), this.f58929f);
        bundle.putInt(d(6), this.f58930g);
        bundle.putFloat(d(7), this.f58931h);
        bundle.putInt(d(8), this.f58932i);
        bundle.putInt(d(9), this.f58937n);
        bundle.putFloat(d(10), this.f58938o);
        bundle.putFloat(d(11), this.f58933j);
        bundle.putFloat(d(12), this.f58934k);
        bundle.putBoolean(d(14), this.f58935l);
        bundle.putInt(d(13), this.f58936m);
        bundle.putInt(d(15), this.f58939p);
        bundle.putFloat(d(16), this.f58940q);
        return bundle;
    }

    private b(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f10, int i10, int i11, float f11, int i12, int i13, float f12, float f13, float f14, boolean z10, int i14, int i15, float f15) {
        if (charSequence == null) {
            com.google.android.exoplayer2.util.a.e(bitmap);
        } else {
            com.google.android.exoplayer2.util.a.a(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.f58924a = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.f58924a = charSequence.toString();
        } else {
            this.f58924a = null;
        }
        this.f58925b = alignment;
        this.f58926c = alignment2;
        this.f58927d = bitmap;
        this.f58928e = f10;
        this.f58929f = i10;
        this.f58930g = i11;
        this.f58931h = f11;
        this.f58932i = i12;
        this.f58933j = f13;
        this.f58934k = f14;
        this.f58935l = z10;
        this.f58936m = i14;
        this.f58937n = i13;
        this.f58938o = f12;
        this.f58939p = i15;
        this.f58940q = f15;
    }
}
