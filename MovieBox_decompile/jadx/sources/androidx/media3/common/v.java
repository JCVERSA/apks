package androidx.media3.common;

import android.net.Uri;
import android.os.Bundle;
import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

public final class v {
    public static final v I = new b().J();
    private static final String J = a1.C0(0);
    private static final String K = a1.C0(1);
    private static final String L = a1.C0(2);
    private static final String M = a1.C0(3);
    private static final String N = a1.C0(4);
    private static final String O = a1.C0(5);
    private static final String P = a1.C0(6);
    private static final String Q = a1.C0(8);
    private static final String R = a1.C0(9);
    private static final String S = a1.C0(10);
    private static final String T = a1.C0(11);
    private static final String U = a1.C0(12);
    private static final String V = a1.C0(13);
    private static final String W = a1.C0(14);
    private static final String X = a1.C0(15);
    private static final String Y = a1.C0(16);
    private static final String Z = a1.C0(17);

    private static final String f10175a0 = a1.C0(18);

    private static final String f10176b0 = a1.C0(19);

    private static final String f10177c0 = a1.C0(20);

    private static final String f10178d0 = a1.C0(21);

    private static final String f10179e0 = a1.C0(22);

    private static final String f10180f0 = a1.C0(23);

    private static final String f10181g0 = a1.C0(24);

    private static final String f10182h0 = a1.C0(25);

    private static final String f10183i0 = a1.C0(26);

    private static final String f10184j0 = a1.C0(27);

    private static final String f10185k0 = a1.C0(28);

    private static final String f10186l0 = a1.C0(29);

    private static final String f10187m0 = a1.C0(30);

    private static final String f10188n0 = a1.C0(31);

    private static final String f10189o0 = a1.C0(32);

    private static final String f10190p0 = a1.C0(33);

    private static final String f10191q0 = a1.C0(34);

    private static final String f10192r0 = a1.C0(1000);
    public final Integer A;
    public final Integer B;
    public final CharSequence C;
    public final CharSequence D;
    public final CharSequence E;
    public final Integer F;
    public final Bundle G;
    public final ImmutableList H;

    public final CharSequence f10193a;

    public final CharSequence f10194b;

    public final CharSequence f10195c;

    public final CharSequence f10196d;

    public final CharSequence f10197e;

    public final CharSequence f10198f;

    public final CharSequence f10199g;

    public final Long f10200h;

    public final byte[] f10201i;

    public final Integer f10202j;

    public final Uri f10203k;

    public final Integer f10204l;

    public final Integer f10205m;

    public final Integer f10206n;

    public final Boolean f10207o;

    public final Boolean f10208p;

    public final Integer f10209q;

    public final Integer f10210r;

    public final Integer f10211s;

    public final Integer f10212t;

    public final Integer f10213u;

    public final Integer f10214v;

    public final Integer f10215w;

    public final CharSequence f10216x;

    public final CharSequence f10217y;

    public final CharSequence f10218z;

    public static final class b {
        private Integer A;
        private CharSequence B;
        private CharSequence C;
        private CharSequence D;
        private Integer E;
        private Bundle F;
        private ImmutableList G;

        private CharSequence f10219a;

        private CharSequence f10220b;

        private CharSequence f10221c;

        private CharSequence f10222d;

        private CharSequence f10223e;

        private CharSequence f10224f;

        private CharSequence f10225g;

        private Long f10226h;

        private byte[] f10227i;

        private Integer f10228j;

        private Uri f10229k;

        private Integer f10230l;

        private Integer f10231m;

        private Integer f10232n;

        private Boolean f10233o;

        private Boolean f10234p;

        private Integer f10235q;

        private Integer f10236r;

        private Integer f10237s;

        private Integer f10238t;

        private Integer f10239u;

        private Integer f10240v;

        private CharSequence f10241w;

        private CharSequence f10242x;

        private CharSequence f10243y;

        private Integer f10244z;

        static d0 d(b bVar) {
            bVar.getClass();
            return null;
        }

        static d0 e(b bVar) {
            bVar.getClass();
            return null;
        }

        public v J() {
            return new v(this);
        }

        public b K(byte[] bArr, int i10) {
            if (this.f10227i == null || i10 == 3 || !Objects.equals(this.f10228j, 3)) {
                this.f10227i = (byte[]) bArr.clone();
                this.f10228j = Integer.valueOf(i10);
            }
            return this;
        }

        public b L(v vVar) {
            if (vVar == null) {
                return this;
            }
            CharSequence charSequence = vVar.f10193a;
            if (charSequence != null) {
                p0(charSequence);
            }
            CharSequence charSequence2 = vVar.f10194b;
            if (charSequence2 != null) {
                Q(charSequence2);
            }
            CharSequence charSequence3 = vVar.f10195c;
            if (charSequence3 != null) {
                P(charSequence3);
            }
            CharSequence charSequence4 = vVar.f10196d;
            if (charSequence4 != null) {
                O(charSequence4);
            }
            CharSequence charSequence5 = vVar.f10197e;
            if (charSequence5 != null) {
                Y(charSequence5);
            }
            CharSequence charSequence6 = vVar.f10198f;
            if (charSequence6 != null) {
                n0(charSequence6);
            }
            CharSequence charSequence7 = vVar.f10199g;
            if (charSequence7 != null) {
                W(charSequence7);
            }
            Long l10 = vVar.f10200h;
            if (l10 != null) {
                Z(l10);
            }
            Uri uri = vVar.f10203k;
            if (uri != null || vVar.f10201i != null) {
                S(uri);
                R(vVar.f10201i, vVar.f10202j);
            }
            Integer num = vVar.f10204l;
            if (num != null) {
                s0(num);
            }
            Integer num2 = vVar.f10205m;
            if (num2 != null) {
                r0(num2);
            }
            Integer num3 = vVar.f10206n;
            if (num3 != null) {
                b0(num3);
            }
            Boolean bool = vVar.f10207o;
            if (bool != null) {
                d0(bool);
            }
            Boolean bool2 = vVar.f10208p;
            if (bool2 != null) {
                e0(bool2);
            }
            Integer num4 = vVar.f10209q;
            if (num4 != null) {
                i0(num4);
            }
            Integer num5 = vVar.f10210r;
            if (num5 != null) {
                i0(num5);
            }
            Integer num6 = vVar.f10211s;
            if (num6 != null) {
                h0(num6);
            }
            Integer num7 = vVar.f10212t;
            if (num7 != null) {
                g0(num7);
            }
            Integer num8 = vVar.f10213u;
            if (num8 != null) {
                l0(num8);
            }
            Integer num9 = vVar.f10214v;
            if (num9 != null) {
                k0(num9);
            }
            Integer num10 = vVar.f10215w;
            if (num10 != null) {
                j0(num10);
            }
            CharSequence charSequence8 = vVar.f10216x;
            if (charSequence8 != null) {
                t0(charSequence8);
            }
            CharSequence charSequence9 = vVar.f10217y;
            if (charSequence9 != null) {
                U(charSequence9);
            }
            CharSequence charSequence10 = vVar.f10218z;
            if (charSequence10 != null) {
                V(charSequence10);
            }
            Integer num11 = vVar.A;
            if (num11 != null) {
                X(num11);
            }
            Integer num12 = vVar.B;
            if (num12 != null) {
                q0(num12);
            }
            CharSequence charSequence11 = vVar.C;
            if (charSequence11 != null) {
                c0(charSequence11);
            }
            CharSequence charSequence12 = vVar.D;
            if (charSequence12 != null) {
                T(charSequence12);
            }
            CharSequence charSequence13 = vVar.E;
            if (charSequence13 != null) {
                m0(charSequence13);
            }
            Integer num13 = vVar.F;
            if (num13 != null) {
                f0(num13);
            }
            Bundle bundle = vVar.G;
            if (bundle != null) {
                a0(bundle);
            }
            if (!vVar.H.isEmpty()) {
                o0(vVar.H);
            }
            return this;
        }

        public b M(x xVar) {
            for (int i10 = 0; i10 < xVar.e(); i10++) {
                xVar.d(i10).a(this);
            }
            return this;
        }

        public b N(List list) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                x xVar = (x) list.get(i10);
                for (int i11 = 0; i11 < xVar.e(); i11++) {
                    xVar.d(i11).a(this);
                }
            }
            return this;
        }

        public b O(CharSequence charSequence) {
            this.f10222d = charSequence;
            return this;
        }

        public b P(CharSequence charSequence) {
            this.f10221c = charSequence;
            return this;
        }

        public b Q(CharSequence charSequence) {
            this.f10220b = charSequence;
            return this;
        }

        public b R(byte[] bArr, Integer num) {
            this.f10227i = bArr == null ? null : (byte[]) bArr.clone();
            this.f10228j = num;
            return this;
        }

        public b S(Uri uri) {
            this.f10229k = uri;
            return this;
        }

        public b T(CharSequence charSequence) {
            this.C = charSequence;
            return this;
        }

        public b U(CharSequence charSequence) {
            this.f10242x = charSequence;
            return this;
        }

        public b V(CharSequence charSequence) {
            this.f10243y = charSequence;
            return this;
        }

        public b W(CharSequence charSequence) {
            this.f10225g = charSequence;
            return this;
        }

        public b X(Integer num) {
            this.f10244z = num;
            return this;
        }

        public b Y(CharSequence charSequence) {
            this.f10223e = charSequence;
            return this;
        }

        public b Z(Long l10) {
            androidx.media3.common.util.a.a(l10 == null || l10.longValue() >= 0);
            this.f10226h = l10;
            return this;
        }

        public b a0(Bundle bundle) {
            this.F = bundle;
            return this;
        }

        public b b0(Integer num) {
            this.f10232n = num;
            return this;
        }

        public b c0(CharSequence charSequence) {
            this.B = charSequence;
            return this;
        }

        public b d0(Boolean bool) {
            this.f10233o = bool;
            return this;
        }

        public b e0(Boolean bool) {
            this.f10234p = bool;
            return this;
        }

        public b f0(Integer num) {
            this.E = num;
            return this;
        }

        public b g0(Integer num) {
            this.f10237s = num;
            return this;
        }

        public b h0(Integer num) {
            this.f10236r = num;
            return this;
        }

        public b i0(Integer num) {
            this.f10235q = num;
            return this;
        }

        public b j0(Integer num) {
            this.f10240v = num;
            return this;
        }

        public b k0(Integer num) {
            this.f10239u = num;
            return this;
        }

        public b l0(Integer num) {
            this.f10238t = num;
            return this;
        }

        public b m0(CharSequence charSequence) {
            this.D = charSequence;
            return this;
        }

        public b n0(CharSequence charSequence) {
            this.f10224f = charSequence;
            return this;
        }

        public b o0(List list) {
            this.G = ImmutableList.copyOf((Collection) list);
            return this;
        }

        public b p0(CharSequence charSequence) {
            this.f10219a = charSequence;
            return this;
        }

        public b q0(Integer num) {
            this.A = num;
            return this;
        }

        public b r0(Integer num) {
            this.f10231m = num;
            return this;
        }

        public b s0(Integer num) {
            this.f10230l = num;
            return this;
        }

        public b t0(CharSequence charSequence) {
            this.f10241w = charSequence;
            return this;
        }

        public b() {
            this.G = ImmutableList.of();
        }

        private b(v vVar) {
            this.f10219a = vVar.f10193a;
            this.f10220b = vVar.f10194b;
            this.f10221c = vVar.f10195c;
            this.f10222d = vVar.f10196d;
            this.f10223e = vVar.f10197e;
            this.f10224f = vVar.f10198f;
            this.f10225g = vVar.f10199g;
            this.f10226h = vVar.f10200h;
            this.f10227i = vVar.f10201i;
            this.f10228j = vVar.f10202j;
            this.f10229k = vVar.f10203k;
            this.f10230l = vVar.f10204l;
            this.f10231m = vVar.f10205m;
            this.f10232n = vVar.f10206n;
            this.f10233o = vVar.f10207o;
            this.f10234p = vVar.f10208p;
            this.f10235q = vVar.f10210r;
            this.f10236r = vVar.f10211s;
            this.f10237s = vVar.f10212t;
            this.f10238t = vVar.f10213u;
            this.f10239u = vVar.f10214v;
            this.f10240v = vVar.f10215w;
            this.f10241w = vVar.f10216x;
            this.f10242x = vVar.f10217y;
            this.f10243y = vVar.f10218z;
            this.f10244z = vVar.A;
            this.A = vVar.B;
            this.B = vVar.C;
            this.C = vVar.D;
            this.D = vVar.E;
            this.E = vVar.F;
            this.G = vVar.H;
            this.F = vVar.G;
        }
    }

    private static int b(int i10) {
        switch (i10) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 32:
            case 33:
            case 34:
            case 35:
                return 1;
            case 20:
            case 26:
            case 27:
            case 28:
            case NOTIFICATION_REDIRECT_VALUE:
            case 30:
            default:
                return 0;
            case 21:
                return 2;
            case 22:
                return 3;
            case 23:
                return 4;
            case 24:
                return 5;
            case 25:
                return 6;
        }
    }

    private static int c(int i10) {
        switch (i10) {
            case 1:
                return 0;
            case 2:
                return 21;
            case 3:
                return 22;
            case 4:
                return 23;
            case 5:
                return 24;
            case 6:
                return 25;
            default:
                return 20;
        }
    }

    public b a() {
        return new b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || v.class != obj.getClass()) {
            return false;
        }
        v vVar = (v) obj;
        if (Objects.equals(this.f10193a, vVar.f10193a) && Objects.equals(this.f10194b, vVar.f10194b) && Objects.equals(this.f10195c, vVar.f10195c) && Objects.equals(this.f10196d, vVar.f10196d) && Objects.equals(this.f10197e, vVar.f10197e) && Objects.equals(this.f10198f, vVar.f10198f) && Objects.equals(this.f10199g, vVar.f10199g) && Objects.equals(this.f10200h, vVar.f10200h) && Arrays.equals(this.f10201i, vVar.f10201i) && Objects.equals(this.f10202j, vVar.f10202j) && Objects.equals(this.f10203k, vVar.f10203k) && Objects.equals(this.f10204l, vVar.f10204l) && Objects.equals(this.f10205m, vVar.f10205m) && Objects.equals(this.f10206n, vVar.f10206n) && Objects.equals(this.f10207o, vVar.f10207o) && Objects.equals(this.f10208p, vVar.f10208p) && Objects.equals(this.f10210r, vVar.f10210r) && Objects.equals(this.f10211s, vVar.f10211s) && Objects.equals(this.f10212t, vVar.f10212t) && Objects.equals(this.f10213u, vVar.f10213u) && Objects.equals(this.f10214v, vVar.f10214v) && Objects.equals(this.f10215w, vVar.f10215w) && Objects.equals(this.f10216x, vVar.f10216x) && Objects.equals(this.f10217y, vVar.f10217y) && Objects.equals(this.f10218z, vVar.f10218z) && Objects.equals(this.A, vVar.A) && Objects.equals(this.B, vVar.B) && Objects.equals(this.C, vVar.C) && Objects.equals(this.D, vVar.D) && Objects.equals(this.E, vVar.E) && Objects.equals(this.F, vVar.F) && Objects.equals(this.H, vVar.H)) {
            if ((this.G == null) == (vVar.G == null)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.f10193a, this.f10194b, this.f10195c, this.f10196d, this.f10197e, this.f10198f, this.f10199g, this.f10200h, null, null, Integer.valueOf(Arrays.hashCode(this.f10201i)), this.f10202j, this.f10203k, this.f10204l, this.f10205m, this.f10206n, this.f10207o, this.f10208p, this.f10210r, this.f10211s, this.f10212t, this.f10213u, this.f10214v, this.f10215w, this.f10216x, this.f10217y, this.f10218z, this.A, this.B, this.C, this.D, this.E, this.F, Boolean.valueOf(this.G == null), this.H);
    }

    private v(b bVar) {
        Boolean boolValueOf = bVar.f10233o;
        Integer numValueOf = bVar.f10232n;
        Integer numValueOf2 = bVar.E;
        if (boolValueOf != null) {
            if (!boolValueOf.booleanValue()) {
                numValueOf = -1;
            } else if (numValueOf == null || numValueOf.intValue() == -1) {
                numValueOf = Integer.valueOf(numValueOf2 != null ? b(numValueOf2.intValue()) : 0);
            }
        } else if (numValueOf != null) {
            boolean z10 = numValueOf.intValue() != -1;
            boolValueOf = Boolean.valueOf(z10);
            if (z10 && numValueOf2 == null) {
                numValueOf2 = Integer.valueOf(c(numValueOf.intValue()));
            }
        }
        this.f10193a = bVar.f10219a;
        this.f10194b = bVar.f10220b;
        this.f10195c = bVar.f10221c;
        this.f10196d = bVar.f10222d;
        this.f10197e = bVar.f10223e;
        this.f10198f = bVar.f10224f;
        this.f10199g = bVar.f10225g;
        this.f10200h = bVar.f10226h;
        b.d(bVar);
        b.e(bVar);
        this.f10201i = bVar.f10227i;
        this.f10202j = bVar.f10228j;
        this.f10203k = bVar.f10229k;
        this.f10204l = bVar.f10230l;
        this.f10205m = bVar.f10231m;
        this.f10206n = numValueOf;
        this.f10207o = boolValueOf;
        this.f10208p = bVar.f10234p;
        this.f10209q = bVar.f10235q;
        this.f10210r = bVar.f10235q;
        this.f10211s = bVar.f10236r;
        this.f10212t = bVar.f10237s;
        this.f10213u = bVar.f10238t;
        this.f10214v = bVar.f10239u;
        this.f10215w = bVar.f10240v;
        this.f10216x = bVar.f10241w;
        this.f10217y = bVar.f10242x;
        this.f10218z = bVar.f10243y;
        this.A = bVar.f10244z;
        this.B = bVar.A;
        this.C = bVar.B;
        this.D = bVar.C;
        this.E = bVar.D;
        this.F = numValueOf2;
        this.H = bVar.G;
        this.G = bVar.F;
    }
}
