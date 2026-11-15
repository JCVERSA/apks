package ea;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.s;
import da.i;
import da.m;
import da.n;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import okio.Utf8;

public final class c extends e {

    private final d0 f59501g = new d0();

    private final c0 f59502h = new c0();

    private int f59503i = -1;

    private final boolean f59504j;

    private final int f59505k;

    private final b[] f59506l;

    private b f59507m;

    private List f59508n;

    private List f59509o;

    private C0720c f59510p;

    private int f59511q;

    static final class a {

        private static final Comparator f59512c = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return c.a.c((c.a) obj, (c.a) obj2);
            }
        };

        public final da.b f59513a;

        public final int f59514b;

        public a(CharSequence charSequence, Layout.Alignment alignment, float f10, int i10, int i11, float f11, int i12, float f12, boolean z10, int i13, int i14) {
            da.b.C0703b c0703bN = new da.b.C0703b().o(charSequence).p(alignment).h(f10, i10).i(i11).k(f11).l(i12).n(f12);
            if (z10) {
                c0703bN.s(i13);
            }
            this.f59513a = c0703bN.a();
            this.f59514b = i14;
        }

        public static int c(a aVar, a aVar2) {
            return Integer.compare(aVar2.f59514b, aVar.f59514b);
        }
    }

    private static final class b {
        private static final int[] A;
        private static final int[] B;
        private static final boolean[] C;
        private static final int[] D;
        private static final int[] E;
        private static final int[] F;
        private static final int[] G;

        public static final int f59515w = h(2, 2, 2, 0);

        public static final int f59516x;

        public static final int f59517y;

        private static final int[] f59518z;

        private final List f59519a = new ArrayList();

        private final SpannableStringBuilder f59520b = new SpannableStringBuilder();

        private boolean f59521c;

        private boolean f59522d;

        private int f59523e;

        private boolean f59524f;

        private int f59525g;

        private int f59526h;

        private int f59527i;

        private int f59528j;

        private boolean f59529k;

        private int f59530l;

        private int f59531m;

        private int f59532n;

        private int f59533o;

        private int f59534p;

        private int f59535q;

        private int f59536r;

        private int f59537s;

        private int f59538t;

        private int f59539u;

        private int f59540v;

        static {
            int iH = h(0, 0, 0, 0);
            f59516x = iH;
            int iH2 = h(0, 0, 0, 3);
            f59517y = iH2;
            f59518z = new int[]{0, 0, 0, 0, 0, 2, 0};
            A = new int[]{0, 0, 0, 0, 0, 0, 2};
            B = new int[]{3, 3, 3, 3, 3, 3, 1};
            C = new boolean[]{false, false, false, true, true, true, false};
            D = new int[]{iH, iH2, iH, iH, iH2, iH, iH};
            E = new int[]{0, 1, 2, 3, 4, 3, 4};
            F = new int[]{0, 0, 0, 0, 0, 3, 3};
            G = new int[]{iH, iH, iH, iH, iH, iH2, iH2};
        }

        public b() {
            l();
        }

        public static int g(int i10, int i11, int i12) {
            return h(i10, i11, i12, 0);
        }

        /* JADX WARN: Code duplicated, block: B:9:0x001b  */
        public static int h(int i10, int i11, int i12, int i13) {
            int i14;
            com.google.android.exoplayer2.util.a.c(i10, 0, 4);
            com.google.android.exoplayer2.util.a.c(i11, 0, 4);
            com.google.android.exoplayer2.util.a.c(i12, 0, 4);
            com.google.android.exoplayer2.util.a.c(i13, 0, 4);
            if (i13 == 0 || i13 == 1) {
                i14 = 255;
            } else if (i13 == 2) {
                i14 = 127;
            } else if (i13 != 3) {
                i14 = 255;
            } else {
                i14 = 0;
            }
            return Color.argb(i14, i10 > 1 ? 255 : 0, i11 > 1 ? 255 : 0, i12 > 1 ? 255 : 0);
        }

        public void a(char c10) {
            if (c10 != '\n') {
                this.f59520b.append(c10);
                return;
            }
            this.f59519a.add(d());
            this.f59520b.clear();
            if (this.f59534p != -1) {
                this.f59534p = 0;
            }
            if (this.f59535q != -1) {
                this.f59535q = 0;
            }
            if (this.f59536r != -1) {
                this.f59536r = 0;
            }
            if (this.f59538t != -1) {
                this.f59538t = 0;
            }
            while (true) {
                if ((!this.f59529k || this.f59519a.size() < this.f59528j) && this.f59519a.size() < 15) {
                    return;
                } else {
                    this.f59519a.remove(0);
                }
            }
        }

        public void b() {
            int length = this.f59520b.length();
            if (length > 0) {
                this.f59520b.delete(length - 1, length);
            }
        }

        public a c() {
            Layout.Alignment alignment;
            float f10;
            float f11;
            if (j()) {
                return null;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i10 = 0; i10 < this.f59519a.size(); i10++) {
                spannableStringBuilder.append((CharSequence) this.f59519a.get(i10));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) d());
            int i11 = this.f59530l;
            if (i11 == 0) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i11 == 1) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else if (i11 != 2) {
                if (i11 != 3) {
                    throw new IllegalArgumentException("Unexpected justification value: " + this.f59530l);
                }
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                alignment = Layout.Alignment.ALIGN_CENTER;
            }
            Layout.Alignment alignment2 = alignment;
            if (this.f59524f) {
                f10 = this.f59526h / 99.0f;
                f11 = this.f59525g / 99.0f;
            } else {
                f10 = this.f59526h / 209.0f;
                f11 = this.f59525g / 74.0f;
            }
            float f12 = (f10 * 0.9f) + 0.05f;
            float f13 = (f11 * 0.9f) + 0.05f;
            int i12 = this.f59527i;
            return new a(spannableStringBuilder, alignment2, f13, 0, i12 / 3 == 0 ? 0 : i12 / 3 == 1 ? 1 : 2, f12, i12 % 3 == 0 ? 0 : i12 % 3 == 1 ? 1 : 2, -3.4028235E38f, this.f59533o != f59516x, this.f59533o, this.f59523e);
        }

        public SpannableString d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f59520b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.f59534p != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.f59534p, length, 33);
                }
                if (this.f59535q != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.f59535q, length, 33);
                }
                if (this.f59536r != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f59537s), this.f59536r, length, 33);
                }
                if (this.f59538t != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f59539u), this.f59538t, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void e() {
            this.f59519a.clear();
            this.f59520b.clear();
            this.f59534p = -1;
            this.f59535q = -1;
            this.f59536r = -1;
            this.f59538t = -1;
            this.f59540v = 0;
        }

        public void f(boolean z10, boolean z11, boolean z12, int i10, boolean z13, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.f59521c = true;
            this.f59522d = z10;
            this.f59529k = z11;
            this.f59523e = i10;
            this.f59524f = z13;
            this.f59525g = i11;
            this.f59526h = i12;
            this.f59527i = i15;
            int i18 = i13 + 1;
            if (this.f59528j != i18) {
                this.f59528j = i18;
                while (true) {
                    if ((!z11 || this.f59519a.size() < this.f59528j) && this.f59519a.size() < 15) {
                        break;
                    } else {
                        this.f59519a.remove(0);
                    }
                }
            }
            if (i16 != 0 && this.f59531m != i16) {
                this.f59531m = i16;
                int i19 = i16 - 1;
                q(D[i19], f59517y, C[i19], 0, A[i19], B[i19], f59518z[i19]);
            }
            if (i17 == 0 || this.f59532n == i17) {
                return;
            }
            this.f59532n = i17;
            int i20 = i17 - 1;
            m(0, 1, 1, false, false, F[i20], E[i20]);
            n(f59515w, G[i20], f59516x);
        }

        public boolean i() {
            return this.f59521c;
        }

        public boolean j() {
            return !i() || (this.f59519a.isEmpty() && this.f59520b.length() == 0);
        }

        public boolean k() {
            return this.f59522d;
        }

        public void l() {
            e();
            this.f59521c = false;
            this.f59522d = false;
            this.f59523e = 4;
            this.f59524f = false;
            this.f59525g = 0;
            this.f59526h = 0;
            this.f59527i = 0;
            this.f59528j = 15;
            this.f59529k = true;
            this.f59530l = 0;
            this.f59531m = 0;
            this.f59532n = 0;
            int i10 = f59516x;
            this.f59533o = i10;
            this.f59537s = f59515w;
            this.f59539u = i10;
        }

        public void m(int i10, int i11, int i12, boolean z10, boolean z11, int i13, int i14) {
            if (this.f59534p != -1) {
                if (!z10) {
                    this.f59520b.setSpan(new StyleSpan(2), this.f59534p, this.f59520b.length(), 33);
                    this.f59534p = -1;
                }
            } else if (z10) {
                this.f59534p = this.f59520b.length();
            }
            if (this.f59535q == -1) {
                if (z11) {
                    this.f59535q = this.f59520b.length();
                }
            } else {
                if (z11) {
                    return;
                }
                this.f59520b.setSpan(new UnderlineSpan(), this.f59535q, this.f59520b.length(), 33);
                this.f59535q = -1;
            }
        }

        public void n(int i10, int i11, int i12) {
            if (this.f59536r != -1 && this.f59537s != i10) {
                this.f59520b.setSpan(new ForegroundColorSpan(this.f59537s), this.f59536r, this.f59520b.length(), 33);
            }
            if (i10 != f59515w) {
                this.f59536r = this.f59520b.length();
                this.f59537s = i10;
            }
            if (this.f59538t != -1 && this.f59539u != i11) {
                this.f59520b.setSpan(new BackgroundColorSpan(this.f59539u), this.f59538t, this.f59520b.length(), 33);
            }
            if (i11 != f59516x) {
                this.f59538t = this.f59520b.length();
                this.f59539u = i11;
            }
        }

        public void o(int i10, int i11) {
            if (this.f59540v != i10) {
                a('\n');
            }
            this.f59540v = i10;
        }

        public void p(boolean z10) {
            this.f59522d = z10;
        }

        public void q(int i10, int i11, boolean z10, int i12, int i13, int i14, int i15) {
            this.f59533o = i10;
            this.f59530l = i15;
        }
    }

    private static final class C0720c {

        public final int f59541a;

        public final int f59542b;

        public final byte[] f59543c;

        int f59544d = 0;

        public C0720c(int i10, int i11) {
            this.f59541a = i10;
            this.f59542b = i11;
            this.f59543c = new byte[(i11 * 2) - 1];
        }
    }

    public c(int i10, List list) {
        this.f59505k = i10 == -1 ? 1 : i10;
        this.f59504j = list != null && com.google.android.exoplayer2.util.f.i(list);
        this.f59506l = new b[8];
        for (int i11 = 0; i11 < 8; i11++) {
            this.f59506l[i11] = new b();
        }
        this.f59507m = this.f59506l[0];
    }

    private void A() {
        for (int i10 = 0; i10 < 8; i10++) {
            this.f59506l[i10].l();
        }
    }

    private void k() {
        if (this.f59510p == null) {
            return;
        }
        z();
        this.f59510p = null;
    }

    private List l() {
        a aVarC;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < 8; i10++) {
            if (!this.f59506l[i10].j() && this.f59506l[i10].k() && (aVarC = this.f59506l[i10].c()) != null) {
                arrayList.add(aVarC);
            }
        }
        Collections.sort(arrayList, a.f59512c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            arrayList2.add(((a) arrayList.get(i11)).f59513a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    private void m(int i10) {
        if (i10 != 0) {
            if (i10 == 3) {
                this.f59508n = l();
            }
            if (i10 == 8) {
                this.f59507m.b();
                return;
            }
            switch (i10) {
                case 12:
                    A();
                    break;
                case 13:
                    this.f59507m.a('\n');
                    break;
                case 14:
                    break;
                default:
                    if (i10 >= 17 && i10 <= 23) {
                        s.i("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i10);
                        this.f59502h.r(8);
                    } else if (i10 >= 24 && i10 <= 31) {
                        s.i("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i10);
                        this.f59502h.r(16);
                    } else {
                        s.i("Cea708Decoder", "Invalid C0 command: " + i10);
                    }
                    break;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void n(int i10) {
        int i11 = 1;
        switch (i10) {
            case 128:
            case 129:
            case 130:
            case MRAID_JS_WRITE_FAILED_VALUE:
            case OMSDK_DOWNLOAD_JS_ERROR_VALUE:
            case OMSDK_JS_WRITE_FAILED_VALUE:
            case 134:
            case 135:
                int i12 = i10 - 128;
                if (this.f59511q != i12) {
                    this.f59511q = i12;
                    this.f59507m = this.f59506l[i12];
                }
                break;
            case PRIVACY_URL_ERROR_VALUE:
                while (i11 <= 8) {
                    if (this.f59502h.g()) {
                        this.f59506l[8 - i11].e();
                    }
                    i11++;
                }
                break;
            case TPAT_RETRY_FAILED_VALUE:
                for (int i13 = 1; i13 <= 8; i13++) {
                    if (this.f59502h.g()) {
                        this.f59506l[8 - i13].p(true);
                    }
                }
                break;
            case 138:
                while (i11 <= 8) {
                    if (this.f59502h.g()) {
                        this.f59506l[8 - i11].p(false);
                    }
                    i11++;
                }
                break;
            case 139:
                for (int i14 = 1; i14 <= 8; i14++) {
                    if (this.f59502h.g()) {
                        b bVar = this.f59506l[8 - i14];
                        bVar.p(!bVar.k());
                    }
                }
                break;
            case 140:
                while (i11 <= 8) {
                    if (this.f59502h.g()) {
                        this.f59506l[8 - i11].l();
                    }
                    i11++;
                }
                break;
            case 141:
                this.f59502h.r(8);
                break;
            case 142:
                break;
            case 143:
                A();
                break;
            case 144:
                if (this.f59507m.i()) {
                    v();
                } else {
                    this.f59502h.r(16);
                }
                break;
            case 145:
                if (this.f59507m.i()) {
                    w();
                } else {
                    this.f59502h.r(24);
                }
                break;
            case 146:
                if (this.f59507m.i()) {
                    x();
                } else {
                    this.f59502h.r(16);
                }
                break;
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                s.i("Cea708Decoder", "Invalid C1 command: " + i10);
                break;
            case 151:
                if (this.f59507m.i()) {
                    y();
                } else {
                    this.f59502h.r(32);
                }
                break;
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                int i15 = i10 - 152;
                q(i15);
                if (this.f59511q != i15) {
                    this.f59511q = i15;
                    this.f59507m = this.f59506l[i15];
                }
                break;
        }
    }

    private void o(int i10) {
        if (i10 <= 7) {
            return;
        }
        if (i10 <= 15) {
            this.f59502h.r(8);
        } else if (i10 <= 23) {
            this.f59502h.r(16);
        } else if (i10 <= 31) {
            this.f59502h.r(24);
        }
    }

    private void p(int i10) {
        if (i10 <= 135) {
            this.f59502h.r(32);
            return;
        }
        if (i10 <= 143) {
            this.f59502h.r(40);
        } else if (i10 <= 159) {
            this.f59502h.r(2);
            this.f59502h.r(this.f59502h.h(6) * 8);
        }
    }

    private void q(int i10) {
        b bVar = this.f59506l[i10];
        this.f59502h.r(2);
        boolean zG = this.f59502h.g();
        boolean zG2 = this.f59502h.g();
        boolean zG3 = this.f59502h.g();
        int iH = this.f59502h.h(3);
        boolean zG4 = this.f59502h.g();
        int iH2 = this.f59502h.h(7);
        int iH3 = this.f59502h.h(8);
        int iH4 = this.f59502h.h(4);
        int iH5 = this.f59502h.h(4);
        this.f59502h.r(2);
        int iH6 = this.f59502h.h(6);
        this.f59502h.r(2);
        bVar.f(zG, zG2, zG3, iH, zG4, iH2, iH3, iH5, iH6, iH4, this.f59502h.h(3), this.f59502h.h(3));
    }

    private void r(int i10) {
        if (i10 == 127) {
            this.f59507m.a((char) 9835);
        } else {
            this.f59507m.a((char) (i10 & 255));
        }
    }

    private void s(int i10) {
        this.f59507m.a((char) (i10 & 255));
    }

    private void t(int i10) {
        if (i10 == 32) {
            this.f59507m.a(' ');
        }
        if (i10 == 33) {
            this.f59507m.a((char) 160);
            return;
        }
        if (i10 == 37) {
            this.f59507m.a((char) 8230);
            return;
        }
        if (i10 == 42) {
            this.f59507m.a((char) 352);
            return;
        }
        if (i10 == 44) {
            this.f59507m.a((char) 338);
            return;
        }
        if (i10 == 63) {
            this.f59507m.a((char) 376);
            return;
        }
        if (i10 == 57) {
            this.f59507m.a((char) 8482);
            return;
        }
        if (i10 == 58) {
            this.f59507m.a((char) 353);
            return;
        }
        if (i10 == 60) {
            this.f59507m.a((char) 339);
            return;
        }
        if (i10 == 61) {
            this.f59507m.a((char) 8480);
            return;
        }
        switch (i10) {
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                this.f59507m.a((char) 9608);
                break;
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                this.f59507m.a((char) 8216);
                break;
            case 50:
                this.f59507m.a((char) 8217);
                break;
            case AD_REWARD_USER_VALUE:
                this.f59507m.a((char) 8220);
                break;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                this.f59507m.a((char) 8221);
                break;
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                this.f59507m.a((char) 8226);
                break;
            default:
                switch (i10) {
                    case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                        this.f59507m.a((char) 8539);
                        break;
                    case JSON_ENCODE_ERROR_VALUE:
                        this.f59507m.a((char) 8540);
                        break;
                    case 120:
                        this.f59507m.a((char) 8541);
                        break;
                    case TPAT_ERROR_VALUE:
                        this.f59507m.a((char) 8542);
                        break;
                    case INVALID_ADS_ENDPOINT_VALUE:
                        this.f59507m.a((char) 9474);
                        break;
                    case INVALID_RI_ENDPOINT_VALUE:
                        this.f59507m.a((char) 9488);
                        break;
                    case INVALID_LOG_ERROR_ENDPOINT_VALUE:
                        this.f59507m.a((char) 9492);
                        break;
                    case INVALID_METRICS_ENDPOINT_VALUE:
                        this.f59507m.a((char) 9472);
                        break;
                    case 126:
                        this.f59507m.a((char) 9496);
                        break;
                    case 127:
                        this.f59507m.a((char) 9484);
                        break;
                    default:
                        s.i("Cea708Decoder", "Invalid G2 character: " + i10);
                        break;
                }
                break;
        }
    }

    private void u(int i10) {
        if (i10 == 160) {
            this.f59507m.a((char) 13252);
            return;
        }
        s.i("Cea708Decoder", "Invalid G3 character: " + i10);
        this.f59507m.a('_');
    }

    private void v() {
        this.f59507m.m(this.f59502h.h(4), this.f59502h.h(2), this.f59502h.h(2), this.f59502h.g(), this.f59502h.g(), this.f59502h.h(3), this.f59502h.h(3));
    }

    private void w() {
        int iH = b.h(this.f59502h.h(2), this.f59502h.h(2), this.f59502h.h(2), this.f59502h.h(2));
        int iH2 = b.h(this.f59502h.h(2), this.f59502h.h(2), this.f59502h.h(2), this.f59502h.h(2));
        this.f59502h.r(2);
        this.f59507m.n(iH, iH2, b.g(this.f59502h.h(2), this.f59502h.h(2), this.f59502h.h(2)));
    }

    private void x() {
        this.f59502h.r(4);
        int iH = this.f59502h.h(4);
        this.f59502h.r(2);
        this.f59507m.o(iH, this.f59502h.h(6));
    }

    private void y() {
        int iH = b.h(this.f59502h.h(2), this.f59502h.h(2), this.f59502h.h(2), this.f59502h.h(2));
        int iH2 = this.f59502h.h(2);
        int iG = b.g(this.f59502h.h(2), this.f59502h.h(2), this.f59502h.h(2));
        if (this.f59502h.g()) {
            iH2 |= 4;
        }
        boolean zG = this.f59502h.g();
        int iH3 = this.f59502h.h(2);
        int iH4 = this.f59502h.h(2);
        int iH5 = this.f59502h.h(2);
        this.f59502h.r(8);
        this.f59507m.q(iH, iG, zG, iH2, iH3, iH4, iH5);
    }

    private void z() {
        C0720c c0720c = this.f59510p;
        if (c0720c.f59544d != (c0720c.f59542b * 2) - 1) {
            s.b("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.f59510p.f59542b * 2) - 1) + ", but current index is " + this.f59510p.f59544d + " (sequence number " + this.f59510p.f59541a + ");");
        }
        c0 c0Var = this.f59502h;
        C0720c c0720c2 = this.f59510p;
        c0Var.o(c0720c2.f59543c, c0720c2.f59544d);
        boolean z10 = false;
        while (this.f59502h.b() > 0) {
            int iH = this.f59502h.h(3);
            int iH2 = this.f59502h.h(5);
            if (iH == 7) {
                this.f59502h.r(2);
                iH = this.f59502h.h(6);
                if (iH < 7) {
                    s.i("Cea708Decoder", "Invalid extended service number: " + iH);
                }
            }
            if (iH2 == 0) {
                if (iH == 0) {
                    break;
                }
                s.i("Cea708Decoder", "serviceNumber is non-zero (" + iH + ") when blockSize is 0");
                break;
            }
            if (iH != this.f59505k) {
                this.f59502h.s(iH2);
            } else {
                int iE = this.f59502h.e() + (iH2 * 8);
                while (this.f59502h.e() < iE) {
                    int iH3 = this.f59502h.h(8);
                    if (iH3 == 16) {
                        int iH4 = this.f59502h.h(8);
                        if (iH4 <= 31) {
                            o(iH4);
                        } else {
                            if (iH4 <= 127) {
                                t(iH4);
                            } else if (iH4 <= 159) {
                                p(iH4);
                            } else if (iH4 <= 255) {
                                u(iH4);
                            } else {
                                s.i("Cea708Decoder", "Invalid extended command: " + iH4);
                            }
                            z10 = true;
                        }
                    } else if (iH3 <= 31) {
                        m(iH3);
                    } else {
                        if (iH3 <= 127) {
                            r(iH3);
                        } else if (iH3 <= 159) {
                            n(iH3);
                        } else if (iH3 <= 255) {
                            s(iH3);
                        } else {
                            s.i("Cea708Decoder", "Invalid base command: " + iH3);
                        }
                        z10 = true;
                    }
                }
            }
        }
        if (z10) {
            this.f59508n = l();
        }
    }

    @Override
    protected i a() {
        List list = this.f59508n;
        this.f59509o = list;
        return new f((List) com.google.android.exoplayer2.util.a.e(list));
    }

    @Override
    protected void b(m mVar) {
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(mVar.f24202c);
        this.f59501g.N(byteBuffer.array(), byteBuffer.limit());
        while (this.f59501g.a() >= 3) {
            int iD = this.f59501g.D();
            int i10 = iD & 3;
            boolean z10 = (iD & 4) == 4;
            byte bD = (byte) this.f59501g.D();
            byte bD2 = (byte) this.f59501g.D();
            if (i10 == 2 || i10 == 3) {
                if (z10) {
                    if (i10 == 3) {
                        k();
                        int i11 = (bD & 192) >> 6;
                        int i12 = this.f59503i;
                        if (i12 != -1 && i11 != (i12 + 1) % 4) {
                            A();
                            s.i("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f59503i + " current=" + i11);
                        }
                        this.f59503i = i11;
                        int i13 = bD & Utf8.REPLACEMENT_BYTE;
                        if (i13 == 0) {
                            i13 = 64;
                        }
                        C0720c c0720c = new C0720c(i11, i13);
                        this.f59510p = c0720c;
                        byte[] bArr = c0720c.f59543c;
                        int i14 = c0720c.f59544d;
                        c0720c.f59544d = i14 + 1;
                        bArr[i14] = bD2;
                    } else {
                        com.google.android.exoplayer2.util.a.a(i10 == 2);
                        C0720c c0720c2 = this.f59510p;
                        if (c0720c2 == null) {
                            s.c("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c0720c2.f59543c;
                            int i15 = c0720c2.f59544d;
                            int i16 = i15 + 1;
                            c0720c2.f59544d = i16;
                            bArr2[i15] = bD;
                            c0720c2.f59544d = i15 + 2;
                            bArr2[i16] = bD2;
                        }
                    }
                    C0720c c0720c3 = this.f59510p;
                    if (c0720c3.f59544d == (c0720c3.f59542b * 2) - 1) {
                        k();
                    }
                }
            }
        }
    }

    @Override
    public m dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    @Override
    public n dequeueOutputBuffer() {
        return super.dequeueOutputBuffer();
    }

    @Override
    public void flush() {
        super.flush();
        this.f59508n = null;
        this.f59509o = null;
        this.f59511q = 0;
        this.f59507m = this.f59506l[0];
        A();
        this.f59510p = null;
    }

    @Override
    protected boolean g() {
        return this.f59508n != this.f59509o;
    }

    @Override
    public void queueInputBuffer(m mVar) {
        super.queueInputBuffer(mVar);
    }

    @Override
    public void release() {
        super.release();
    }

    @Override
    public void setPositionUs(long j10) {
        super.setPositionUs(j10);
    }
}
