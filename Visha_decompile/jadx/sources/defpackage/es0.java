package defpackage;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import okio.Utf8;

public final class es0 extends gs0 {
    public final qw7 g = new qw7();
    public final pw7 h = new pw7();
    public int i = -1;
    public final boolean j;
    public final int k;
    public final b[] l;
    public b m;
    public List n;
    public List o;
    public c p;
    public int q;

    public static final class a {
        public static final Comparator c = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return es0.a.c((es0.a) obj, (es0.a) obj2);
            }
        };
        public final jm1 a;
        public final int b;

        public a(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4, int i5) {
            jm1.b bVarN = new jm1.b().o(charSequence).p(alignment).h(f, i).i(i2).k(f2).l(i3).n(f3);
            if (z) {
                bVarN.s(i4);
            }
            this.a = bVarN.a();
            this.b = i5;
        }

        public static int c(a aVar, a aVar2) {
            return Integer.compare(aVar2.b, aVar.b);
        }
    }

    public static final class b {
        public static final int[] A;
        public static final int[] B;
        public static final boolean[] C;
        public static final int[] D;
        public static final int[] E;
        public static final int[] F;
        public static final int[] G;
        public static final int w = h(2, 2, 2, 0);
        public static final int x;
        public static final int y;
        public static final int[] z;
        public final List a = new ArrayList();
        public final SpannableStringBuilder b = new SpannableStringBuilder();
        public boolean c;
        public boolean d;
        public int e;
        public boolean f;
        public int g;
        public int h;
        public int i;
        public int j;
        public boolean k;
        public int l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;

        static {
            int iH = h(0, 0, 0, 0);
            x = iH;
            int iH2 = h(0, 0, 0, 3);
            y = iH2;
            z = new int[]{0, 0, 0, 0, 0, 2, 0};
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

        public static int g(int i, int i2, int i3) {
            return h(i, i2, i3, 0);
        }

        /* JADX WARN: Code duplicated, block: B:9:0x001b  */
        public static int h(int i, int i2, int i3, int i4) {
            int i5;
            zi.c(i, 0, 4);
            zi.c(i2, 0, 4);
            zi.c(i3, 0, 4);
            zi.c(i4, 0, 4);
            if (i4 == 0 || i4 == 1) {
                i5 = 255;
            } else if (i4 == 2) {
                i5 = 127;
            } else if (i4 != 3) {
                i5 = 255;
            } else {
                i5 = 0;
            }
            return Color.argb(i5, i > 1 ? 255 : 0, i2 > 1 ? 255 : 0, i3 > 1 ? 255 : 0);
        }

        public void a(char c) {
            if (c != '\n') {
                this.b.append(c);
                return;
            }
            this.a.add(d());
            this.b.clear();
            if (this.p != -1) {
                this.p = 0;
            }
            if (this.q != -1) {
                this.q = 0;
            }
            if (this.r != -1) {
                this.r = 0;
            }
            if (this.t != -1) {
                this.t = 0;
            }
            while (true) {
                if ((!this.k || this.a.size() < this.j) && this.a.size() < 15) {
                    return;
                } else {
                    this.a.remove(0);
                }
            }
        }

        public void b() {
            int length = this.b.length();
            if (length > 0) {
                this.b.delete(length - 1, length);
            }
        }

        public a c() {
            Layout.Alignment alignment;
            float f;
            float f2;
            if (j()) {
                return null;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i = 0; i < this.a.size(); i++) {
                spannableStringBuilder.append((CharSequence) this.a.get(i));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) d());
            int i2 = this.l;
            if (i2 == 0) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i2 == 1) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else if (i2 != 2) {
                if (i2 != 3) {
                    throw new IllegalArgumentException("Unexpected justification value: " + this.l);
                }
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                alignment = Layout.Alignment.ALIGN_CENTER;
            }
            if (this.f) {
                f = this.h / 99.0f;
                f2 = this.g / 99.0f;
            } else {
                f = this.h / 209.0f;
                f2 = this.g / 74.0f;
            }
            float f3 = (f * 0.9f) + 0.05f;
            float f4 = (f2 * 0.9f) + 0.05f;
            int i3 = this.i;
            return new a(spannableStringBuilder, alignment, f4, 0, i3 / 3 == 0 ? 0 : i3 / 3 == 1 ? 1 : 2, f3, i3 % 3 == 0 ? 0 : i3 % 3 == 1 ? 1 : 2, -3.4028235E38f, this.o != x, this.o, this.e);
        }

        public SpannableString d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.p != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.p, length, 33);
                }
                if (this.q != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.q, length, 33);
                }
                if (this.r != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.s), this.r, length, 33);
                }
                if (this.t != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.u), this.t, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void e() {
            this.a.clear();
            this.b.clear();
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.t = -1;
            this.v = 0;
        }

        public void f(boolean z2, boolean z3, boolean z4, int i, boolean z5, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.c = true;
            this.d = z2;
            this.k = z3;
            this.e = i;
            this.f = z5;
            this.g = i2;
            this.h = i3;
            this.i = i6;
            int i9 = i4 + 1;
            if (this.j != i9) {
                this.j = i9;
                while (true) {
                    if ((!z3 || this.a.size() < this.j) && this.a.size() < 15) {
                        break;
                    } else {
                        this.a.remove(0);
                    }
                }
            }
            if (i7 != 0 && this.m != i7) {
                this.m = i7;
                int i10 = i7 - 1;
                q(D[i10], y, C[i10], 0, A[i10], B[i10], z[i10]);
            }
            if (i8 == 0 || this.n == i8) {
                return;
            }
            this.n = i8;
            int i11 = i8 - 1;
            m(0, 1, 1, false, false, F[i11], E[i11]);
            n(w, G[i11], x);
        }

        public boolean i() {
            return this.c;
        }

        public boolean j() {
            return !i() || (this.a.isEmpty() && this.b.length() == 0);
        }

        public boolean k() {
            return this.d;
        }

        public void l() {
            e();
            this.c = false;
            this.d = false;
            this.e = 4;
            this.f = false;
            this.g = 0;
            this.h = 0;
            this.i = 0;
            this.j = 15;
            this.k = true;
            this.l = 0;
            this.m = 0;
            this.n = 0;
            int i = x;
            this.o = i;
            this.s = w;
            this.u = i;
        }

        public void m(int i, int i2, int i3, boolean z2, boolean z3, int i4, int i5) {
            if (this.p != -1) {
                if (!z2) {
                    this.b.setSpan(new StyleSpan(2), this.p, this.b.length(), 33);
                    this.p = -1;
                }
            } else if (z2) {
                this.p = this.b.length();
            }
            if (this.q == -1) {
                if (z3) {
                    this.q = this.b.length();
                }
            } else {
                if (z3) {
                    return;
                }
                this.b.setSpan(new UnderlineSpan(), this.q, this.b.length(), 33);
                this.q = -1;
            }
        }

        public void n(int i, int i2, int i3) {
            if (this.r != -1 && this.s != i) {
                this.b.setSpan(new ForegroundColorSpan(this.s), this.r, this.b.length(), 33);
            }
            if (i != w) {
                this.r = this.b.length();
                this.s = i;
            }
            if (this.t != -1 && this.u != i2) {
                this.b.setSpan(new BackgroundColorSpan(this.u), this.t, this.b.length(), 33);
            }
            if (i2 != x) {
                this.t = this.b.length();
                this.u = i2;
            }
        }

        public void o(int i, int i2) {
            if (this.v != i) {
                a('\n');
            }
            this.v = i;
        }

        public void p(boolean z2) {
            this.d = z2;
        }

        public void q(int i, int i2, boolean z2, int i3, int i4, int i5, int i6) {
            this.o = i;
            this.l = i6;
        }
    }

    public static final class c {
        public final int a;
        public final int b;
        public final byte[] c;
        public int d = 0;

        public c(int i, int i2) {
            this.a = i;
            this.b = i2;
            this.c = new byte[(i2 * 2) - 1];
        }
    }

    public es0(int i, List list) {
        this.k = i == -1 ? 1 : i;
        this.j = list != null && b51.f(list);
        this.l = new b[8];
        for (int i2 = 0; i2 < 8; i2++) {
            this.l[i2] = new b();
        }
        this.m = this.l[0];
    }

    private void A() {
        for (int i = 0; i < 8; i++) {
            this.l[i].l();
        }
    }

    private List l() {
        a aVarC;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 8; i++) {
            if (!this.l[i].j() && this.l[i].k() && (aVarC = this.l[i].c()) != null) {
                arrayList.add(aVarC);
            }
        }
        Collections.sort(arrayList, a.c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList2.add(((a) arrayList.get(i2)).a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    @Override
    public l2a a() {
        List list = this.n;
        this.o = list;
        return new hs0((List) zi.e(list));
    }

    @Override
    public void b(y4a y4aVar) {
        ByteBuffer byteBuffer = (ByteBuffer) zi.e(y4aVar.d);
        this.g.M(byteBuffer.array(), byteBuffer.limit());
        while (this.g.a() >= 3) {
            int iC = this.g.C();
            int i = iC & 3;
            boolean z = (iC & 4) == 4;
            byte bC = (byte) this.g.C();
            byte bC2 = (byte) this.g.C();
            if (i == 2 || i == 3) {
                if (z) {
                    if (i == 3) {
                        k();
                        int i2 = (bC & 192) >> 6;
                        int i3 = this.i;
                        if (i3 != -1 && i2 != (i3 + 1) % 4) {
                            A();
                            op5.i("Cea708Decoder", "Sequence number discontinuity. previous=" + this.i + " current=" + i2);
                        }
                        this.i = i2;
                        int i4 = bC & Utf8.REPLACEMENT_BYTE;
                        if (i4 == 0) {
                            i4 = 64;
                        }
                        c cVar = new c(i2, i4);
                        this.p = cVar;
                        byte[] bArr = cVar.c;
                        int i5 = cVar.d;
                        cVar.d = i5 + 1;
                        bArr[i5] = bC2;
                    } else {
                        zi.a(i == 2);
                        c cVar2 = this.p;
                        if (cVar2 == null) {
                            op5.c("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = cVar2.c;
                            int i6 = cVar2.d;
                            int i7 = i6 + 1;
                            cVar2.d = i7;
                            bArr2[i6] = bC;
                            cVar2.d = i6 + 2;
                            bArr2[i7] = bC2;
                        }
                    }
                    c cVar3 = this.p;
                    if (cVar3.d == (cVar3.b * 2) - 1) {
                        k();
                    }
                }
            }
        }
    }

    @Override
    public y4a dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    @Override
    public k5a dequeueOutputBuffer() {
        return super.dequeueOutputBuffer();
    }

    @Override
    public void flush() {
        super.flush();
        this.n = null;
        this.o = null;
        this.q = 0;
        this.m = this.l[0];
        A();
        this.p = null;
    }

    @Override
    public boolean g() {
        return this.n != this.o;
    }

    @Override
    public void queueInputBuffer(y4a y4aVar) {
        super.queueInputBuffer(y4aVar);
    }

    public final void k() {
        if (this.p == null) {
            return;
        }
        z();
        this.p = null;
    }

    public final void m(int i) {
        if (i != 0) {
            if (i == 3) {
                this.n = l();
            }
            if (i == 8) {
                this.m.b();
                return;
            }
            switch (i) {
                case 12:
                    A();
                    break;
                case 13:
                    this.m.a('\n');
                    break;
                case 14:
                    break;
                default:
                    if (i >= 17 && i <= 23) {
                        op5.i("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i);
                        this.h.r(8);
                    } else if (i >= 24 && i <= 31) {
                        op5.i("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i);
                        this.h.r(16);
                    } else {
                        op5.i("Cea708Decoder", "Invalid C0 command: " + i);
                    }
                    break;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void n(int i) {
        int i2 = 1;
        switch (i) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                int i3 = i - 128;
                if (this.q != i3) {
                    this.q = i3;
                    this.m = this.l[i3];
                }
                break;
            case 136:
                while (i2 <= 8) {
                    if (this.h.g()) {
                        this.l[8 - i2].e();
                    }
                    i2++;
                }
                break;
            case 137:
                for (int i4 = 1; i4 <= 8; i4++) {
                    if (this.h.g()) {
                        this.l[8 - i4].p(true);
                    }
                }
                break;
            case 138:
                while (i2 <= 8) {
                    if (this.h.g()) {
                        this.l[8 - i2].p(false);
                    }
                    i2++;
                }
                break;
            case 139:
                for (int i5 = 1; i5 <= 8; i5++) {
                    if (this.h.g()) {
                        b bVar = this.l[8 - i5];
                        bVar.p(!bVar.k());
                    }
                }
                break;
            case 140:
                while (i2 <= 8) {
                    if (this.h.g()) {
                        this.l[8 - i2].l();
                    }
                    i2++;
                }
                break;
            case 141:
                this.h.r(8);
                break;
            case 142:
                break;
            case 143:
                A();
                break;
            case 144:
                if (this.m.i()) {
                    v();
                } else {
                    this.h.r(16);
                }
                break;
            case 145:
                if (this.m.i()) {
                    w();
                } else {
                    this.h.r(24);
                }
                break;
            case 146:
                if (this.m.i()) {
                    x();
                } else {
                    this.h.r(16);
                }
                break;
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                op5.i("Cea708Decoder", "Invalid C1 command: " + i);
                break;
            case 151:
                if (this.m.i()) {
                    y();
                } else {
                    this.h.r(32);
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
                int i6 = i - 152;
                q(i6);
                if (this.q != i6) {
                    this.q = i6;
                    this.m = this.l[i6];
                }
                break;
        }
    }

    public final void o(int i) {
        if (i <= 7) {
            return;
        }
        if (i <= 15) {
            this.h.r(8);
        } else if (i <= 23) {
            this.h.r(16);
        } else if (i <= 31) {
            this.h.r(24);
        }
    }

    public final void p(int i) {
        if (i <= 135) {
            this.h.r(32);
            return;
        }
        if (i <= 143) {
            this.h.r(40);
        } else if (i <= 159) {
            this.h.r(2);
            this.h.r(this.h.h(6) * 8);
        }
    }

    public final void q(int i) {
        b bVar = this.l[i];
        this.h.r(2);
        boolean zG = this.h.g();
        boolean zG2 = this.h.g();
        boolean zG3 = this.h.g();
        int iH = this.h.h(3);
        boolean zG4 = this.h.g();
        int iH2 = this.h.h(7);
        int iH3 = this.h.h(8);
        int iH4 = this.h.h(4);
        int iH5 = this.h.h(4);
        this.h.r(2);
        int iH6 = this.h.h(6);
        this.h.r(2);
        bVar.f(zG, zG2, zG3, iH, zG4, iH2, iH3, iH5, iH6, iH4, this.h.h(3), this.h.h(3));
    }

    public final void r(int i) {
        if (i == 127) {
            this.m.a((char) 9835);
        } else {
            this.m.a((char) (i & 255));
        }
    }

    @Override
    public void release() {
        super.release();
    }

    public final void s(int i) {
        this.m.a((char) (i & 255));
    }

    @Override
    public void setPositionUs(long j) {
        super.setPositionUs(j);
    }

    public final void t(int i) {
        if (i == 32) {
            this.m.a(' ');
        }
        if (i == 33) {
            this.m.a((char) 160);
            return;
        }
        if (i == 37) {
            this.m.a((char) 8230);
            return;
        }
        if (i == 42) {
            this.m.a((char) 352);
            return;
        }
        if (i == 44) {
            this.m.a((char) 338);
            return;
        }
        if (i == 63) {
            this.m.a((char) 376);
            return;
        }
        if (i == 57) {
            this.m.a((char) 8482);
            return;
        }
        if (i == 58) {
            this.m.a((char) 353);
            return;
        }
        if (i == 60) {
            this.m.a((char) 339);
            return;
        }
        if (i == 61) {
            this.m.a((char) 8480);
            return;
        }
        switch (i) {
            case 48:
                this.m.a((char) 9608);
                break;
            case 49:
                this.m.a((char) 8216);
                break;
            case 50:
                this.m.a((char) 8217);
                break;
            case 51:
                this.m.a((char) 8220);
                break;
            case 52:
                this.m.a((char) 8221);
                break;
            case 53:
                this.m.a((char) 8226);
                break;
            default:
                switch (i) {
                    case 118:
                        this.m.a((char) 8539);
                        break;
                    case 119:
                        this.m.a((char) 8540);
                        break;
                    case 120:
                        this.m.a((char) 8541);
                        break;
                    case 121:
                        this.m.a((char) 8542);
                        break;
                    case 122:
                        this.m.a((char) 9474);
                        break;
                    case 123:
                        this.m.a((char) 9488);
                        break;
                    case 124:
                        this.m.a((char) 9492);
                        break;
                    case 125:
                        this.m.a((char) 9472);
                        break;
                    case 126:
                        this.m.a((char) 9496);
                        break;
                    case 127:
                        this.m.a((char) 9484);
                        break;
                    default:
                        op5.i("Cea708Decoder", "Invalid G2 character: " + i);
                        break;
                }
                break;
        }
    }

    public final void u(int i) {
        if (i == 160) {
            this.m.a((char) 13252);
            return;
        }
        op5.i("Cea708Decoder", "Invalid G3 character: " + i);
        this.m.a('_');
    }

    public final void v() {
        this.m.m(this.h.h(4), this.h.h(2), this.h.h(2), this.h.g(), this.h.g(), this.h.h(3), this.h.h(3));
    }

    public final void w() {
        int iH = b.h(this.h.h(2), this.h.h(2), this.h.h(2), this.h.h(2));
        int iH2 = b.h(this.h.h(2), this.h.h(2), this.h.h(2), this.h.h(2));
        this.h.r(2);
        this.m.n(iH, iH2, b.g(this.h.h(2), this.h.h(2), this.h.h(2)));
    }

    public final void x() {
        this.h.r(4);
        int iH = this.h.h(4);
        this.h.r(2);
        this.m.o(iH, this.h.h(6));
    }

    public final void y() {
        int iH = b.h(this.h.h(2), this.h.h(2), this.h.h(2), this.h.h(2));
        int iH2 = this.h.h(2);
        int iG = b.g(this.h.h(2), this.h.h(2), this.h.h(2));
        if (this.h.g()) {
            iH2 |= 4;
        }
        boolean zG = this.h.g();
        int iH3 = this.h.h(2);
        int iH4 = this.h.h(2);
        int iH5 = this.h.h(2);
        this.h.r(8);
        this.m.q(iH, iG, zG, iH2, iH3, iH4, iH5);
    }

    public final void z() {
        c cVar = this.p;
        if (cVar.d != (cVar.b * 2) - 1) {
            op5.b("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.p.b * 2) - 1) + ", but current index is " + this.p.d + " (sequence number " + this.p.a + ");");
        }
        pw7 pw7Var = this.h;
        c cVar2 = this.p;
        pw7Var.o(cVar2.c, cVar2.d);
        boolean z = false;
        while (this.h.b() > 0) {
            int iH = this.h.h(3);
            int iH2 = this.h.h(5);
            if (iH == 7) {
                this.h.r(2);
                iH = this.h.h(6);
                if (iH < 7) {
                    op5.i("Cea708Decoder", "Invalid extended service number: " + iH);
                }
            }
            if (iH2 == 0) {
                if (iH == 0) {
                    break;
                }
                op5.i("Cea708Decoder", "serviceNumber is non-zero (" + iH + ") when blockSize is 0");
                break;
            }
            if (iH != this.k) {
                this.h.s(iH2);
            } else {
                int iE = this.h.e() + (iH2 * 8);
                while (this.h.e() < iE) {
                    int iH3 = this.h.h(8);
                    if (iH3 == 16) {
                        int iH4 = this.h.h(8);
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
                                op5.i("Cea708Decoder", "Invalid extended command: " + iH4);
                            }
                            z = true;
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
                            op5.i("Cea708Decoder", "Invalid base command: " + iH3);
                        }
                        z = true;
                    }
                }
            }
        }
        if (z) {
            this.n = l();
        }
    }
}
