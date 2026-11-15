package i3;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.util.i0;
import androidx.media3.common.util.j;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import h3.k;
import h3.o;
import h3.p;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import okio.Utf8;

public final class c extends e {

    private final j0 f61775h = new j0();

    private final i0 f61776i = new i0();

    private int f61777j = -1;

    private final boolean f61778k;

    private final int f61779l;

    private final b[] f61780m;

    private b f61781n;

    private List f61782o;

    private List f61783p;

    private C0755c f61784q;

    private int f61785r;

    static final class a {

        private static final Comparator f61786c = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return c.a.c((c.a) obj, (c.a) obj2);
            }
        };

        public final u1.a f61787a;

        public final int f61788b;

        public a(CharSequence charSequence, Layout.Alignment alignment, float f10, int i10, int i11, float f11, int i12, float f12, boolean z10, int i13, int i14) {
            u1.a.b bVarN = new u1.a.b().o(charSequence).p(alignment).h(f10, i10).i(i11).k(f11).l(i12).n(f12);
            if (z10) {
                bVarN.s(i13);
            }
            this.f61787a = bVarN.a();
            this.f61788b = i14;
        }

        public static int c(a aVar, a aVar2) {
            return Integer.compare(aVar2.f61788b, aVar.f61788b);
        }
    }

    private static final class b {
        private static final int[] A;
        private static final boolean[] B;
        private static final int[] C;
        private static final int[] D;
        private static final int[] E;
        private static final int[] F;

        public static final int f61789v = h(2, 2, 2, 0);

        public static final int f61790w;

        public static final int f61791x;

        private static final int[] f61792y;

        private static final int[] f61793z;

        private final List f61794a = new ArrayList();

        private final SpannableStringBuilder f61795b = new SpannableStringBuilder();

        private boolean f61796c;

        private boolean f61797d;

        private int f61798e;

        private boolean f61799f;

        private int f61800g;

        private int f61801h;

        private int f61802i;

        private int f61803j;

        private int f61804k;

        private int f61805l;

        private int f61806m;

        private int f61807n;

        private int f61808o;

        private int f61809p;

        private int f61810q;

        private int f61811r;

        private int f61812s;

        private int f61813t;

        private int f61814u;

        static {
            int iH = h(0, 0, 0, 0);
            f61790w = iH;
            int iH2 = h(0, 0, 0, 3);
            f61791x = iH2;
            f61792y = new int[]{0, 0, 0, 0, 0, 2, 0};
            f61793z = new int[]{0, 0, 0, 0, 0, 0, 2};
            A = new int[]{3, 3, 3, 3, 3, 3, 1};
            B = new boolean[]{false, false, false, true, true, true, false};
            C = new int[]{iH, iH2, iH, iH, iH2, iH, iH};
            D = new int[]{0, 1, 2, 3, 4, 3, 4};
            E = new int[]{0, 0, 0, 0, 0, 3, 3};
            F = new int[]{iH, iH, iH, iH, iH, iH2, iH2};
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
            androidx.media3.common.util.a.c(i10, 0, 4);
            androidx.media3.common.util.a.c(i11, 0, 4);
            androidx.media3.common.util.a.c(i12, 0, 4);
            androidx.media3.common.util.a.c(i13, 0, 4);
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
                this.f61795b.append(c10);
                return;
            }
            this.f61794a.add(d());
            this.f61795b.clear();
            if (this.f61808o != -1) {
                this.f61808o = 0;
            }
            if (this.f61809p != -1) {
                this.f61809p = 0;
            }
            if (this.f61810q != -1) {
                this.f61810q = 0;
            }
            if (this.f61812s != -1) {
                this.f61812s = 0;
            }
            while (true) {
                if (this.f61794a.size() < this.f61803j && this.f61794a.size() < 15) {
                    this.f61814u = this.f61794a.size();
                    return;
                }
                this.f61794a.remove(0);
            }
        }

        public void b() {
            int length = this.f61795b.length();
            if (length > 0) {
                this.f61795b.delete(length - 1, length);
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
            for (int i10 = 0; i10 < this.f61794a.size(); i10++) {
                spannableStringBuilder.append((CharSequence) this.f61794a.get(i10));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) d());
            int i11 = this.f61804k;
            if (i11 == 0) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i11 == 1) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else if (i11 != 2) {
                if (i11 != 3) {
                    throw new IllegalArgumentException("Unexpected justification value: " + this.f61804k);
                }
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                alignment = Layout.Alignment.ALIGN_CENTER;
            }
            Layout.Alignment alignment2 = alignment;
            if (this.f61799f) {
                f10 = this.f61801h / 99.0f;
                f11 = this.f61800g / 99.0f;
            } else {
                f10 = this.f61801h / 209.0f;
                f11 = this.f61800g / 74.0f;
            }
            float f12 = (f10 * 0.9f) + 0.05f;
            float f13 = (f11 * 0.9f) + 0.05f;
            int i12 = this.f61802i;
            return new a(spannableStringBuilder, alignment2, f13, 0, i12 / 3 == 0 ? 0 : i12 / 3 == 1 ? 1 : 2, f12, i12 % 3 == 0 ? 0 : i12 % 3 == 1 ? 1 : 2, -3.4028235E38f, this.f61807n != f61790w, this.f61807n, this.f61798e);
        }

        public SpannableString d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f61795b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.f61808o != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.f61808o, length, 33);
                }
                if (this.f61809p != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.f61809p, length, 33);
                }
                if (this.f61810q != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f61811r), this.f61810q, length, 33);
                }
                if (this.f61812s != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f61813t), this.f61812s, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void e() {
            this.f61794a.clear();
            this.f61795b.clear();
            this.f61808o = -1;
            this.f61809p = -1;
            this.f61810q = -1;
            this.f61812s = -1;
            this.f61814u = 0;
        }

        public void f(boolean z10, int i10, boolean z11, int i11, int i12, int i13, int i14, int i15, int i16) {
            this.f61796c = true;
            this.f61797d = z10;
            this.f61798e = i10;
            this.f61799f = z11;
            this.f61800g = i11;
            this.f61801h = i12;
            this.f61802i = i14;
            int i17 = i13 + 1;
            if (this.f61803j != i17) {
                this.f61803j = i17;
                while (true) {
                    if (this.f61794a.size() < this.f61803j && this.f61794a.size() < 15) {
                        break;
                    } else {
                        this.f61794a.remove(0);
                    }
                }
            }
            if (i15 != 0 && this.f61805l != i15) {
                this.f61805l = i15;
                int i18 = i15 - 1;
                q(C[i18], f61791x, B[i18], 0, f61793z[i18], A[i18], f61792y[i18]);
            }
            if (i16 == 0 || this.f61806m == i16) {
                return;
            }
            this.f61806m = i16;
            int i19 = i16 - 1;
            m(0, 1, 1, false, false, E[i19], D[i19]);
            n(f61789v, F[i19], f61790w);
        }

        public boolean i() {
            return this.f61796c;
        }

        public boolean j() {
            return !i() || (this.f61794a.isEmpty() && this.f61795b.length() == 0);
        }

        public boolean k() {
            return this.f61797d;
        }

        public void l() {
            e();
            this.f61796c = false;
            this.f61797d = false;
            this.f61798e = 4;
            this.f61799f = false;
            this.f61800g = 0;
            this.f61801h = 0;
            this.f61802i = 0;
            this.f61803j = 15;
            this.f61804k = 0;
            this.f61805l = 0;
            this.f61806m = 0;
            int i10 = f61790w;
            this.f61807n = i10;
            this.f61811r = f61789v;
            this.f61813t = i10;
        }

        public void m(int i10, int i11, int i12, boolean z10, boolean z11, int i13, int i14) {
            if (this.f61808o != -1) {
                if (!z10) {
                    this.f61795b.setSpan(new StyleSpan(2), this.f61808o, this.f61795b.length(), 33);
                    this.f61808o = -1;
                }
            } else if (z10) {
                this.f61808o = this.f61795b.length();
            }
            if (this.f61809p == -1) {
                if (z11) {
                    this.f61809p = this.f61795b.length();
                }
            } else {
                if (z11) {
                    return;
                }
                this.f61795b.setSpan(new UnderlineSpan(), this.f61809p, this.f61795b.length(), 33);
                this.f61809p = -1;
            }
        }

        public void n(int i10, int i11, int i12) {
            if (this.f61810q != -1 && this.f61811r != i10) {
                this.f61795b.setSpan(new ForegroundColorSpan(this.f61811r), this.f61810q, this.f61795b.length(), 33);
            }
            if (i10 != f61789v) {
                this.f61810q = this.f61795b.length();
                this.f61811r = i10;
            }
            if (this.f61812s != -1 && this.f61813t != i11) {
                this.f61795b.setSpan(new BackgroundColorSpan(this.f61813t), this.f61812s, this.f61795b.length(), 33);
            }
            if (i11 != f61790w) {
                this.f61812s = this.f61795b.length();
                this.f61813t = i11;
            }
        }

        public void o(int i10, int i11) {
            if (this.f61814u != i10) {
                a('\n');
            }
            this.f61814u = i10;
        }

        public void p(boolean z10) {
            this.f61797d = z10;
        }

        public void q(int i10, int i11, boolean z10, int i12, int i13, int i14, int i15) {
            this.f61807n = i10;
            this.f61804k = i15;
        }
    }

    private static final class C0755c {

        public final int f61815a;

        public final int f61816b;

        public final byte[] f61817c;

        int f61818d = 0;

        public C0755c(int i10, int i11) {
            this.f61815a = i10;
            this.f61816b = i11;
            this.f61817c = new byte[(i11 * 2) - 1];
        }
    }

    public c(int i10, List list) {
        this.f61779l = i10 == -1 ? 1 : i10;
        this.f61778k = list != null && j.v(list);
        this.f61780m = new b[8];
        for (int i11 = 0; i11 < 8; i11++) {
            this.f61780m[i11] = new b();
        }
        this.f61781n = this.f61780m[0];
    }

    private void A() {
        int iH = b.h(this.f61776i.h(2), this.f61776i.h(2), this.f61776i.h(2), this.f61776i.h(2));
        int iH2 = this.f61776i.h(2);
        int iG = b.g(this.f61776i.h(2), this.f61776i.h(2), this.f61776i.h(2));
        if (this.f61776i.g()) {
            iH2 |= 4;
        }
        boolean zG = this.f61776i.g();
        int iH3 = this.f61776i.h(2);
        int iH4 = this.f61776i.h(2);
        int iH5 = this.f61776i.h(2);
        this.f61776i.r(8);
        this.f61781n.q(iH, iG, zG, iH2, iH3, iH4, iH5);
    }

    private void B() {
        C0755c c0755c = this.f61784q;
        if (c0755c.f61818d != (c0755c.f61816b * 2) - 1) {
            u.b("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.f61784q.f61816b * 2) - 1) + ", but current index is " + this.f61784q.f61818d + " (sequence number " + this.f61784q.f61815a + ");");
        }
        i0 i0Var = this.f61776i;
        C0755c c0755c2 = this.f61784q;
        i0Var.o(c0755c2.f61817c, c0755c2.f61818d);
        boolean z10 = false;
        while (this.f61776i.b() > 0) {
            int iH = this.f61776i.h(3);
            int iH2 = this.f61776i.h(5);
            if (iH == 7) {
                this.f61776i.r(2);
                iH = this.f61776i.h(6);
                if (iH < 7) {
                    u.h("Cea708Decoder", "Invalid extended service number: " + iH);
                }
            }
            if (iH2 == 0) {
                if (iH == 0) {
                    break;
                }
                u.h("Cea708Decoder", "serviceNumber is non-zero (" + iH + ") when blockSize is 0");
                break;
            }
            if (iH != this.f61779l) {
                this.f61776i.s(iH2);
            } else {
                int iE = this.f61776i.e() + (iH2 * 8);
                while (this.f61776i.e() < iE) {
                    int iH3 = this.f61776i.h(8);
                    if (iH3 == 16) {
                        int iH4 = this.f61776i.h(8);
                        if (iH4 <= 31) {
                            q(iH4);
                        } else {
                            if (iH4 <= 127) {
                                v(iH4);
                            } else if (iH4 <= 159) {
                                r(iH4);
                            } else if (iH4 <= 255) {
                                w(iH4);
                            } else {
                                u.h("Cea708Decoder", "Invalid extended command: " + iH4);
                            }
                            z10 = true;
                        }
                    } else if (iH3 <= 31) {
                        o(iH3);
                    } else {
                        if (iH3 <= 127) {
                            t(iH3);
                        } else if (iH3 <= 159) {
                            p(iH3);
                        } else if (iH3 <= 255) {
                            u(iH3);
                        } else {
                            u.h("Cea708Decoder", "Invalid base command: " + iH3);
                        }
                        z10 = true;
                    }
                }
            }
        }
        if (z10) {
            this.f61782o = n();
        }
    }

    private void C() {
        for (int i10 = 0; i10 < 8; i10++) {
            this.f61780m[i10].l();
        }
    }

    private void m() {
        if (this.f61784q == null) {
            return;
        }
        B();
        this.f61784q = null;
    }

    private List n() {
        a aVarC;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < 8; i10++) {
            if (!this.f61780m[i10].j() && this.f61780m[i10].k() && (aVarC = this.f61780m[i10].c()) != null) {
                arrayList.add(aVarC);
            }
        }
        Collections.sort(arrayList, a.f61786c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            arrayList2.add(((a) arrayList.get(i11)).f61787a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    private void o(int i10) {
        if (i10 != 0) {
            if (i10 == 3) {
                this.f61782o = n();
            }
            if (i10 == 8) {
                this.f61781n.b();
                return;
            }
            switch (i10) {
                case 12:
                    C();
                    break;
                case 13:
                    this.f61781n.a('\n');
                    break;
                case 14:
                    break;
                default:
                    if (i10 >= 17 && i10 <= 23) {
                        u.h("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i10);
                        this.f61776i.r(8);
                    } else if (i10 >= 24 && i10 <= 31) {
                        u.h("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i10);
                        this.f61776i.r(16);
                    } else {
                        u.h("Cea708Decoder", "Invalid C0 command: " + i10);
                    }
                    break;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void p(int i10) {
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
                if (this.f61785r != i12) {
                    this.f61785r = i12;
                    this.f61781n = this.f61780m[i12];
                }
                break;
            case PRIVACY_URL_ERROR_VALUE:
                while (i11 <= 8) {
                    if (this.f61776i.g()) {
                        this.f61780m[8 - i11].e();
                    }
                    i11++;
                }
                break;
            case TPAT_RETRY_FAILED_VALUE:
                for (int i13 = 1; i13 <= 8; i13++) {
                    if (this.f61776i.g()) {
                        this.f61780m[8 - i13].p(true);
                    }
                }
                break;
            case 138:
                while (i11 <= 8) {
                    if (this.f61776i.g()) {
                        this.f61780m[8 - i11].p(false);
                    }
                    i11++;
                }
                break;
            case 139:
                for (int i14 = 1; i14 <= 8; i14++) {
                    if (this.f61776i.g()) {
                        b bVar = this.f61780m[8 - i14];
                        bVar.p(!bVar.k());
                    }
                }
                break;
            case 140:
                while (i11 <= 8) {
                    if (this.f61776i.g()) {
                        this.f61780m[8 - i11].l();
                    }
                    i11++;
                }
                break;
            case 141:
                this.f61776i.r(8);
                break;
            case 142:
                break;
            case 143:
                C();
                break;
            case 144:
                if (this.f61781n.i()) {
                    x();
                } else {
                    this.f61776i.r(16);
                }
                break;
            case 145:
                if (this.f61781n.i()) {
                    y();
                } else {
                    this.f61776i.r(24);
                }
                break;
            case 146:
                if (this.f61781n.i()) {
                    z();
                } else {
                    this.f61776i.r(16);
                }
                break;
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                u.h("Cea708Decoder", "Invalid C1 command: " + i10);
                break;
            case 151:
                if (this.f61781n.i()) {
                    A();
                } else {
                    this.f61776i.r(32);
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
                s(i15);
                if (this.f61785r != i15) {
                    this.f61785r = i15;
                    this.f61781n = this.f61780m[i15];
                }
                break;
        }
    }

    private void q(int i10) {
        if (i10 <= 7) {
            return;
        }
        if (i10 <= 15) {
            this.f61776i.r(8);
        } else if (i10 <= 23) {
            this.f61776i.r(16);
        } else if (i10 <= 31) {
            this.f61776i.r(24);
        }
    }

    private void r(int i10) {
        if (i10 <= 135) {
            this.f61776i.r(32);
            return;
        }
        if (i10 <= 143) {
            this.f61776i.r(40);
        } else if (i10 <= 159) {
            this.f61776i.r(2);
            this.f61776i.r(this.f61776i.h(6) * 8);
        }
    }

    private void s(int i10) {
        b bVar = this.f61780m[i10];
        this.f61776i.r(2);
        boolean zG = this.f61776i.g();
        this.f61776i.r(2);
        int iH = this.f61776i.h(3);
        boolean zG2 = this.f61776i.g();
        int iH2 = this.f61776i.h(7);
        int iH3 = this.f61776i.h(8);
        int iH4 = this.f61776i.h(4);
        int iH5 = this.f61776i.h(4);
        this.f61776i.r(2);
        this.f61776i.r(6);
        this.f61776i.r(2);
        bVar.f(zG, iH, zG2, iH2, iH3, iH5, iH4, this.f61776i.h(3), this.f61776i.h(3));
    }

    private void t(int i10) {
        if (i10 == 127) {
            this.f61781n.a((char) 9835);
        } else {
            this.f61781n.a((char) (i10 & 255));
        }
    }

    private void u(int i10) {
        this.f61781n.a((char) (i10 & 255));
    }

    private void v(int i10) {
        if (i10 == 32) {
            this.f61781n.a(' ');
        }
        if (i10 == 33) {
            this.f61781n.a((char) 160);
            return;
        }
        if (i10 == 37) {
            this.f61781n.a((char) 8230);
            return;
        }
        if (i10 == 42) {
            this.f61781n.a((char) 352);
            return;
        }
        if (i10 == 44) {
            this.f61781n.a((char) 338);
            return;
        }
        if (i10 == 63) {
            this.f61781n.a((char) 376);
            return;
        }
        if (i10 == 57) {
            this.f61781n.a((char) 8482);
            return;
        }
        if (i10 == 58) {
            this.f61781n.a((char) 353);
            return;
        }
        if (i10 == 60) {
            this.f61781n.a((char) 339);
            return;
        }
        if (i10 == 61) {
            this.f61781n.a((char) 8480);
            return;
        }
        switch (i10) {
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                this.f61781n.a((char) 9608);
                break;
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                this.f61781n.a((char) 8216);
                break;
            case 50:
                this.f61781n.a((char) 8217);
                break;
            case AD_REWARD_USER_VALUE:
                this.f61781n.a((char) 8220);
                break;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                this.f61781n.a((char) 8221);
                break;
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                this.f61781n.a((char) 8226);
                break;
            default:
                switch (i10) {
                    case PROTOBUF_SERIALIZATION_ERROR_VALUE:
                        this.f61781n.a((char) 8539);
                        break;
                    case JSON_ENCODE_ERROR_VALUE:
                        this.f61781n.a((char) 8540);
                        break;
                    case 120:
                        this.f61781n.a((char) 8541);
                        break;
                    case TPAT_ERROR_VALUE:
                        this.f61781n.a((char) 8542);
                        break;
                    case INVALID_ADS_ENDPOINT_VALUE:
                        this.f61781n.a((char) 9474);
                        break;
                    case INVALID_RI_ENDPOINT_VALUE:
                        this.f61781n.a((char) 9488);
                        break;
                    case INVALID_LOG_ERROR_ENDPOINT_VALUE:
                        this.f61781n.a((char) 9492);
                        break;
                    case INVALID_METRICS_ENDPOINT_VALUE:
                        this.f61781n.a((char) 9472);
                        break;
                    case 126:
                        this.f61781n.a((char) 9496);
                        break;
                    case 127:
                        this.f61781n.a((char) 9484);
                        break;
                    default:
                        u.h("Cea708Decoder", "Invalid G2 character: " + i10);
                        break;
                }
                break;
        }
    }

    private void w(int i10) {
        if (i10 == 160) {
            this.f61781n.a((char) 13252);
            return;
        }
        u.h("Cea708Decoder", "Invalid G3 character: " + i10);
        this.f61781n.a('_');
    }

    private void x() {
        this.f61781n.m(this.f61776i.h(4), this.f61776i.h(2), this.f61776i.h(2), this.f61776i.g(), this.f61776i.g(), this.f61776i.h(3), this.f61776i.h(3));
    }

    private void y() {
        int iH = b.h(this.f61776i.h(2), this.f61776i.h(2), this.f61776i.h(2), this.f61776i.h(2));
        int iH2 = b.h(this.f61776i.h(2), this.f61776i.h(2), this.f61776i.h(2), this.f61776i.h(2));
        this.f61776i.r(2);
        this.f61781n.n(iH, iH2, b.g(this.f61776i.h(2), this.f61776i.h(2), this.f61776i.h(2)));
    }

    private void z() {
        this.f61776i.r(4);
        int iH = this.f61776i.h(4);
        this.f61776i.r(2);
        this.f61781n.o(iH, this.f61776i.h(6));
    }

    @Override
    protected k c() {
        List list = this.f61782o;
        this.f61783p = list;
        return new f((List) androidx.media3.common.util.a.e(list));
    }

    @Override
    protected void d(o oVar) {
        ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(oVar.f10606c);
        this.f61775h.U(byteBuffer.array(), byteBuffer.limit());
        while (this.f61775h.a() >= 3) {
            int iH = this.f61775h.H();
            int i10 = iH & 3;
            boolean z10 = (iH & 4) == 4;
            byte bH = (byte) this.f61775h.H();
            byte bH2 = (byte) this.f61775h.H();
            if (i10 == 2 || i10 == 3) {
                if (z10) {
                    if (i10 == 3) {
                        m();
                        int i11 = (bH & 192) >> 6;
                        int i12 = this.f61777j;
                        if (i12 != -1 && i11 != (i12 + 1) % 4) {
                            C();
                            u.h("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f61777j + " current=" + i11);
                        }
                        this.f61777j = i11;
                        int i13 = bH & Utf8.REPLACEMENT_BYTE;
                        if (i13 == 0) {
                            i13 = 64;
                        }
                        C0755c c0755c = new C0755c(i11, i13);
                        this.f61784q = c0755c;
                        byte[] bArr = c0755c.f61817c;
                        int i14 = c0755c.f61818d;
                        c0755c.f61818d = i14 + 1;
                        bArr[i14] = bH2;
                    } else {
                        androidx.media3.common.util.a.a(i10 == 2);
                        C0755c c0755c2 = this.f61784q;
                        if (c0755c2 == null) {
                            u.c("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c0755c2.f61817c;
                            int i15 = c0755c2.f61818d;
                            int i16 = i15 + 1;
                            c0755c2.f61818d = i16;
                            bArr2[i15] = bH;
                            c0755c2.f61818d = i15 + 2;
                            bArr2[i16] = bH2;
                        }
                    }
                    C0755c c0755c3 = this.f61784q;
                    if (c0755c3.f61818d == (c0755c3.f61816b * 2) - 1) {
                        m();
                    }
                }
            }
        }
    }

    @Override
    public o dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    @Override
    public p dequeueOutputBuffer() {
        return super.dequeueOutputBuffer();
    }

    @Override
    public void flush() {
        super.flush();
        this.f61782o = null;
        this.f61783p = null;
        this.f61785r = 0;
        this.f61781n = this.f61780m[0];
        C();
        this.f61784q = null;
    }

    @Override
    public String getName() {
        return "Cea708Decoder";
    }

    @Override
    protected boolean i() {
        return this.f61782o != this.f61783p;
    }

    @Override
    public void queueInputBuffer(o oVar) {
        super.queueInputBuffer(oVar);
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
