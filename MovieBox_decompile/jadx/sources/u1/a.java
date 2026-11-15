package u1;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import androidx.media3.common.util.a1;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

public final class a {

    public final CharSequence f72940a;

    public final Layout.Alignment f72941b;

    public final Layout.Alignment f72942c;

    public final Bitmap f72943d;

    public final float f72944e;

    public final int f72945f;

    public final int f72946g;

    public final float f72947h;

    public final int f72948i;

    public final float f72949j;

    public final float f72950k;

    public final boolean f72951l;

    public final int f72952m;

    public final int f72953n;

    public final float f72954o;

    public final int f72955p;

    public final float f72956q;

    public static final a f72931r = new b().o("").a();

    private static final String f72932s = a1.C0(0);

    private static final String f72933t = a1.C0(17);

    private static final String f72934u = a1.C0(1);

    private static final String f72935v = a1.C0(2);

    private static final String f72936w = a1.C0(3);

    private static final String f72937x = a1.C0(18);

    private static final String f72938y = a1.C0(4);

    private static final String f72939z = a1.C0(5);
    private static final String A = a1.C0(6);
    private static final String B = a1.C0(7);
    private static final String C = a1.C0(8);
    private static final String D = a1.C0(9);
    private static final String E = a1.C0(10);
    private static final String F = a1.C0(11);
    private static final String G = a1.C0(12);
    private static final String H = a1.C0(13);
    private static final String I = a1.C0(14);
    private static final String J = a1.C0(15);
    private static final String K = a1.C0(16);

    public static final class b {

        private CharSequence f72957a;

        private Bitmap f72958b;

        private Layout.Alignment f72959c;

        private Layout.Alignment f72960d;

        private float f72961e;

        private int f72962f;

        private int f72963g;

        private float f72964h;

        private int f72965i;

        private int f72966j;

        private float f72967k;

        private float f72968l;

        private float f72969m;

        private boolean f72970n;

        private int f72971o;

        private int f72972p;

        private float f72973q;

        public a a() {
            return new a(this.f72957a, this.f72959c, this.f72960d, this.f72958b, this.f72961e, this.f72962f, this.f72963g, this.f72964h, this.f72965i, this.f72966j, this.f72967k, this.f72968l, this.f72969m, this.f72970n, this.f72971o, this.f72972p, this.f72973q);
        }

        public b b() {
            this.f72970n = false;
            return this;
        }

        public int c() {
            return this.f72963g;
        }

        public int d() {
            return this.f72965i;
        }

        public CharSequence e() {
            return this.f72957a;
        }

        public b f(Bitmap bitmap) {
            this.f72958b = bitmap;
            return this;
        }

        public b g(float f10) {
            this.f72969m = f10;
            return this;
        }

        public b h(float f10, int i10) {
            this.f72961e = f10;
            this.f72962f = i10;
            return this;
        }

        public b i(int i10) {
            this.f72963g = i10;
            return this;
        }

        public b j(Layout.Alignment alignment) {
            this.f72960d = alignment;
            return this;
        }

        public b k(float f10) {
            this.f72964h = f10;
            return this;
        }

        public b l(int i10) {
            this.f72965i = i10;
            return this;
        }

        public b m(float f10) {
            this.f72973q = f10;
            return this;
        }

        public b n(float f10) {
            this.f72968l = f10;
            return this;
        }

        public b o(CharSequence charSequence) {
            this.f72957a = charSequence;
            return this;
        }

        public b p(Layout.Alignment alignment) {
            this.f72959c = alignment;
            return this;
        }

        public b q(float f10, int i10) {
            this.f72967k = f10;
            this.f72966j = i10;
            return this;
        }

        public b r(int i10) {
            this.f72972p = i10;
            return this;
        }

        public b s(int i10) {
            this.f72971o = i10;
            this.f72970n = true;
            return this;
        }

        public b() {
            this.f72957a = null;
            this.f72958b = null;
            this.f72959c = null;
            this.f72960d = null;
            this.f72961e = -3.4028235E38f;
            this.f72962f = Integer.MIN_VALUE;
            this.f72963g = Integer.MIN_VALUE;
            this.f72964h = -3.4028235E38f;
            this.f72965i = Integer.MIN_VALUE;
            this.f72966j = Integer.MIN_VALUE;
            this.f72967k = -3.4028235E38f;
            this.f72968l = -3.4028235E38f;
            this.f72969m = -3.4028235E38f;
            this.f72970n = false;
            this.f72971o = ViewCompat.MEASURED_STATE_MASK;
            this.f72972p = Integer.MIN_VALUE;
        }

        private b(a aVar) {
            this.f72957a = aVar.f72940a;
            this.f72958b = aVar.f72943d;
            this.f72959c = aVar.f72941b;
            this.f72960d = aVar.f72942c;
            this.f72961e = aVar.f72944e;
            this.f72962f = aVar.f72945f;
            this.f72963g = aVar.f72946g;
            this.f72964h = aVar.f72947h;
            this.f72965i = aVar.f72948i;
            this.f72966j = aVar.f72953n;
            this.f72967k = aVar.f72954o;
            this.f72968l = aVar.f72949j;
            this.f72969m = aVar.f72950k;
            this.f72970n = aVar.f72951l;
            this.f72971o = aVar.f72952m;
            this.f72972p = aVar.f72955p;
            this.f72973q = aVar.f72956q;
        }
    }

    public static a b(Bundle bundle) {
        b bVar = new b();
        CharSequence charSequence = bundle.getCharSequence(f72932s);
        if (charSequence != null) {
            bVar.o(charSequence);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(f72933t);
            if (parcelableArrayList != null) {
                SpannableString spannableStringValueOf = SpannableString.valueOf(charSequence);
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    c.c((Bundle) it.next(), spannableStringValueOf);
                }
                bVar.o(spannableStringValueOf);
            }
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(f72934u);
        if (alignment != null) {
            bVar.p(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(f72935v);
        if (alignment2 != null) {
            bVar.j(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(f72936w);
        if (bitmap != null) {
            bVar.f(bitmap);
        } else {
            byte[] byteArray = bundle.getByteArray(f72937x);
            if (byteArray != null) {
                bVar.f(BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length));
            }
        }
        String str = f72938y;
        if (bundle.containsKey(str)) {
            String str2 = f72939z;
            if (bundle.containsKey(str2)) {
                bVar.h(bundle.getFloat(str), bundle.getInt(str2));
            }
        }
        String str3 = A;
        if (bundle.containsKey(str3)) {
            bVar.i(bundle.getInt(str3));
        }
        String str4 = B;
        if (bundle.containsKey(str4)) {
            bVar.k(bundle.getFloat(str4));
        }
        String str5 = C;
        if (bundle.containsKey(str5)) {
            bVar.l(bundle.getInt(str5));
        }
        String str6 = E;
        if (bundle.containsKey(str6)) {
            String str7 = D;
            if (bundle.containsKey(str7)) {
                bVar.q(bundle.getFloat(str6), bundle.getInt(str7));
            }
        }
        String str8 = F;
        if (bundle.containsKey(str8)) {
            bVar.n(bundle.getFloat(str8));
        }
        String str9 = G;
        if (bundle.containsKey(str9)) {
            bVar.g(bundle.getFloat(str9));
        }
        String str10 = H;
        if (bundle.containsKey(str10)) {
            bVar.s(bundle.getInt(str10));
        }
        if (!bundle.getBoolean(I, false)) {
            bVar.b();
        }
        String str11 = J;
        if (bundle.containsKey(str11)) {
            bVar.r(bundle.getInt(str11));
        }
        String str12 = K;
        if (bundle.containsKey(str12)) {
            bVar.m(bundle.getFloat(str12));
        }
        return bVar.a();
    }

    private Bundle c() {
        Bundle bundle = new Bundle();
        CharSequence charSequence = this.f72940a;
        if (charSequence != null) {
            bundle.putCharSequence(f72932s, charSequence);
            CharSequence charSequence2 = this.f72940a;
            if (charSequence2 instanceof Spanned) {
                ArrayList<? extends Parcelable> arrayListA = c.a((Spanned) charSequence2);
                if (!arrayListA.isEmpty()) {
                    bundle.putParcelableArrayList(f72933t, arrayListA);
                }
            }
        }
        bundle.putSerializable(f72934u, this.f72941b);
        bundle.putSerializable(f72935v, this.f72942c);
        bundle.putFloat(f72938y, this.f72944e);
        bundle.putInt(f72939z, this.f72945f);
        bundle.putInt(A, this.f72946g);
        bundle.putFloat(B, this.f72947h);
        bundle.putInt(C, this.f72948i);
        bundle.putInt(D, this.f72953n);
        bundle.putFloat(E, this.f72954o);
        bundle.putFloat(F, this.f72949j);
        bundle.putFloat(G, this.f72950k);
        bundle.putBoolean(I, this.f72951l);
        bundle.putInt(H, this.f72952m);
        bundle.putInt(J, this.f72955p);
        bundle.putFloat(K, this.f72956q);
        return bundle;
    }

    public b a() {
        return new b();
    }

    public Bundle d() {
        Bundle bundleC = c();
        if (this.f72943d != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            androidx.media3.common.util.a.g(this.f72943d.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream));
            bundleC.putByteArray(f72937x, byteArrayOutputStream.toByteArray());
        }
        return bundleC;
    }

    public boolean equals(Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return TextUtils.equals(this.f72940a, aVar.f72940a) && this.f72941b == aVar.f72941b && this.f72942c == aVar.f72942c && ((bitmap = this.f72943d) != null ? !((bitmap2 = aVar.f72943d) == null || !bitmap.sameAs(bitmap2)) : aVar.f72943d == null) && this.f72944e == aVar.f72944e && this.f72945f == aVar.f72945f && this.f72946g == aVar.f72946g && this.f72947h == aVar.f72947h && this.f72948i == aVar.f72948i && this.f72949j == aVar.f72949j && this.f72950k == aVar.f72950k && this.f72951l == aVar.f72951l && this.f72952m == aVar.f72952m && this.f72953n == aVar.f72953n && this.f72954o == aVar.f72954o && this.f72955p == aVar.f72955p && this.f72956q == aVar.f72956q;
    }

    public int hashCode() {
        return Objects.hash(this.f72940a, this.f72941b, this.f72942c, this.f72943d, Float.valueOf(this.f72944e), Integer.valueOf(this.f72945f), Integer.valueOf(this.f72946g), Float.valueOf(this.f72947h), Integer.valueOf(this.f72948i), Float.valueOf(this.f72949j), Float.valueOf(this.f72950k), Boolean.valueOf(this.f72951l), Integer.valueOf(this.f72952m), Integer.valueOf(this.f72953n), Float.valueOf(this.f72954o), Integer.valueOf(this.f72955p), Float.valueOf(this.f72956q));
    }

    private a(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f10, int i10, int i11, float f11, int i12, int i13, float f12, float f13, float f14, boolean z10, int i14, int i15, float f15) {
        if (charSequence == null) {
            androidx.media3.common.util.a.e(bitmap);
        } else {
            androidx.media3.common.util.a.a(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.f72940a = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.f72940a = charSequence.toString();
        } else {
            this.f72940a = null;
        }
        this.f72941b = alignment;
        this.f72942c = alignment2;
        this.f72943d = bitmap;
        this.f72944e = f10;
        this.f72945f = i10;
        this.f72946g = i11;
        this.f72947h = f11;
        this.f72948i = i12;
        this.f72949j = f13;
        this.f72950k = f14;
        this.f72951l = z10;
        this.f72952m = i14;
        this.f72953n = i13;
        this.f72954o = f12;
        this.f72955p = i15;
        this.f72956q = f15;
    }
}
