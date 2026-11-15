package com.yandex.mobile.ads.impl;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import okio.Utf8;

public final class ao extends bo {
    private final ag1 g = new ag1();
    private final zf1 h = new zf1();
    private int i = -1;
    private final int j;
    private final b[] k;
    private b l;

    @Nullable
    private List<hv> m;

    @Nullable
    private List<hv> n;

    @Nullable
    private c o;
    private int p;

    public static final class a {
        private static final Comparator<a> c = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return ao.a.a((ao.a) obj, (ao.a) obj2);
            }
        };
        public final hv a;
        public final int b;

        public a(SpannableStringBuilder spannableStringBuilder, Layout.Alignment alignment, float f, int i, float f2, int i2, boolean z, int i3, int i4) {
            hv.a aVarD = new hv.a().a(spannableStringBuilder).b(alignment).a(0, f).a(i).b(f2).b(i2).d(-3.4028235E38f);
            if (z) {
                aVarD.d(i3);
            }
            this.a = aVarD.a();
            this.b = i4;
        }

        public static int a(a aVar, a aVar2) {
            return Integer.compare(aVar2.b, aVar.b);
        }
    }

    public static final class b {
        private static final int[] A;
        private static final boolean[] B;
        private static final int[] C;
        private static final int[] D;
        private static final int[] E;
        private static final int[] F;
        public static final int w = a(2, 2, 2, 0);
        public static final int x;
        private static final int[] y;
        private static final int[] z;
        private final ArrayList a = new ArrayList();
        private final SpannableStringBuilder b = new SpannableStringBuilder();
        private boolean c;
        private boolean d;
        private int e;
        private boolean f;
        private int g;
        private int h;
        private int i;
        private int j;
        private boolean k;
        private int l;
        private int m;
        private int n;
        private int o;
        private int p;
        private int q;
        private int r;
        private int s;
        private int t;
        private int u;
        private int v;

        static {
            int iA = a(0, 0, 0, 0);
            x = iA;
            int iA2 = a(0, 0, 0, 3);
            y = new int[]{0, 0, 0, 0, 0, 2, 0};
            z = new int[]{0, 0, 0, 0, 0, 0, 2};
            A = new int[]{3, 3, 3, 3, 3, 3, 1};
            B = new boolean[]{false, false, false, true, true, true, false};
            C = new int[]{iA, iA2, iA, iA, iA2, iA, iA};
            D = new int[]{0, 1, 2, 3, 4, 3, 4};
            E = new int[]{0, 0, 0, 0, 0, 3, 3};
            F = new int[]{iA, iA, iA, iA, iA, iA2, iA2};
        }

        public b() {
            b();
        }

        public final void a(char c) {
            if (c != '\n') {
                this.b.append(c);
                return;
            }
            this.a.add(a());
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

        public final void b() {
            this.a.clear();
            this.b.clear();
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.t = -1;
            this.v = 0;
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

        public static int a(int i, int i2, int i3, int i4) {
            int i5;
            hg.a(i, 4);
            hg.a(i2, 4);
            hg.a(i3, 4);
            hg.a(i4, 4);
            if (i4 != 2) {
                i5 = i4 != 3 ? 255 : 0;
            } else {
                i5 = 127;
            }
            return Color.argb(i5, i > 1 ? 255 : 0, i2 > 1 ? 255 : 0, i3 > 1 ? 255 : 0);
        }

        public final void a(boolean z2, boolean z3) {
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

        public final void a(int i, int i2) {
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

        public final SpannableString a() {
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
    }

    public static final class c {
        public final int a;
        public final int b;
        public final byte[] c;
        int d = 0;

        public c(int i, int i2) {
            this.a = i;
            this.b = i2;
            this.c = new byte[(i2 * 2) - 1];
        }
    }

    public ao(int i, @Nullable List<byte[]> list) {
        this.j = i == -1 ? 1 : i;
        if (list != null) {
            oq.a(list);
        }
        this.k = new b[8];
        for (int i2 = 0; i2 < 8; i2++) {
            this.k[i2] = new b();
        }
        this.l = this.k[0];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:233:0x0643  */
    private void i() {
        boolean z;
        int i;
        char c2;
        c cVar = this.o;
        if (cVar == null) {
            return;
        }
        int i2 = 2;
        boolean z2 = true;
        if (cVar.d != (cVar.b * 2) - 1) {
            et0.a("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.o.b * 2) - 1) + ", but current index is " + this.o.d + " (sequence number " + this.o.a + ");");
        }
        zf1 zf1Var = this.h;
        c cVar2 = this.o;
        zf1Var.a(cVar2.d, cVar2.c);
        boolean z3 = false;
        while (this.h.b() > 0) {
            int i3 = 3;
            int iB = this.h.b(3);
            int iB2 = this.h.b(5);
            int i4 = 7;
            if (iB == 7) {
                this.h.d(i2);
                iB = this.h.b(6);
                if (iB < 7) {
                    xr0.a("Invalid extended service number: ", iB, "Cea708Decoder");
                }
            }
            if (iB2 == 0) {
                if (iB != 0) {
                    et0.d("Cea708Decoder", "serviceNumber is non-zero (" + iB + ") when blockSize is 0");
                }
                if (z3) {
                    this.m = j();
                }
                this.o = null;
            }
            if (iB != this.j) {
                this.h.e(iB2);
            } else {
                int iE = (iB2 * 8) + this.h.e();
                while (this.h.e() < iE) {
                    int iB3 = this.h.b(8);
                    if (iB3 != 16) {
                        if (iB3 <= 31) {
                            if (iB3 != 0) {
                                if (iB3 == i3) {
                                    this.m = j();
                                } else if (iB3 != 8) {
                                    switch (iB3) {
                                        case 12:
                                            for (int i5 = 0; i5 < 8; i5++) {
                                                this.k[i5].b();
                                            }
                                            break;
                                        case 13:
                                            this.l.a('\n');
                                            break;
                                        case 14:
                                            break;
                                        default:
                                            if (iB3 >= 17 && iB3 <= 23) {
                                                xr0.a("Currently unsupported COMMAND_EXT1 Command: ", iB3, "Cea708Decoder");
                                                this.h.d(8);
                                            } else if (iB3 < 24 || iB3 > 31) {
                                                xr0.a("Invalid C0 command: ", iB3, "Cea708Decoder");
                                            } else {
                                                xr0.a("Currently unsupported COMMAND_P16 Command: ", iB3, "Cea708Decoder");
                                                this.h.d(16);
                                            }
                                            break;
                                    }
                                } else {
                                    b bVar = this.l;
                                    int length = bVar.b.length();
                                    if (length > 0) {
                                        bVar.b.delete(length - 1, length);
                                    }
                                }
                            }
                            i = i2;
                            z = true;
                        } else {
                            if (iB3 > 127) {
                                if (iB3 <= 159) {
                                    switch (iB3) {
                                        case 128:
                                        case 129:
                                        case 130:
                                        case 131:
                                        case 132:
                                        case 133:
                                        case 134:
                                        case 135:
                                            z = true;
                                            int i6 = iB3 - 128;
                                            if (this.p != i6) {
                                                this.p = i6;
                                                this.l = this.k[i6];
                                            }
                                            break;
                                        case 136:
                                            z = true;
                                            for (int i7 = 1; i7 <= 8; i7++) {
                                                if (this.h.f()) {
                                                    b bVar2 = this.k[8 - i7];
                                                    bVar2.a.clear();
                                                    bVar2.b.clear();
                                                    bVar2.p = -1;
                                                    bVar2.q = -1;
                                                    bVar2.r = -1;
                                                    bVar2.t = -1;
                                                    bVar2.v = 0;
                                                }
                                            }
                                            break;
                                        case 137:
                                            for (int i8 = 1; i8 <= 8; i8++) {
                                                if (this.h.f()) {
                                                    this.k[8 - i8].d = true;
                                                }
                                            }
                                            z = true;
                                            i = 2;
                                            i4 = 7;
                                            break;
                                        case 138:
                                            for (int i9 = 1; i9 <= 8; i9++) {
                                                if (this.h.f()) {
                                                    this.k[8 - i9].d = false;
                                                }
                                            }
                                            z = true;
                                            i = 2;
                                            i4 = 7;
                                            break;
                                        case 139:
                                            for (int i10 = 1; i10 <= 8; i10++) {
                                                if (this.h.f()) {
                                                    b bVar3 = this.k[8 - i10];
                                                    bVar3.d = !bVar3.d;
                                                }
                                            }
                                            z = true;
                                            i = 2;
                                            i4 = 7;
                                            break;
                                        case 140:
                                            for (int i11 = 1; i11 <= 8; i11++) {
                                                if (this.h.f()) {
                                                    this.k[8 - i11].b();
                                                }
                                            }
                                            z = true;
                                            i = 2;
                                            i4 = 7;
                                            break;
                                        case 141:
                                            this.h.d(8);
                                            z = true;
                                            i = 2;
                                            i4 = 7;
                                            break;
                                        case 142:
                                            break;
                                        case 143:
                                            for (int i12 = 0; i12 < 8; i12++) {
                                                this.k[i12].b();
                                            }
                                            z = true;
                                            i = 2;
                                            i4 = 7;
                                            break;
                                        case 144:
                                            if (this.l.c) {
                                                this.h.b(4);
                                                this.h.b(2);
                                                this.h.b(2);
                                                boolean zF = this.h.f();
                                                boolean zF2 = this.h.f();
                                                i3 = 3;
                                                this.h.b(3);
                                                this.h.b(3);
                                                this.l.a(zF, zF2);
                                                z = true;
                                                i = 2;
                                                i4 = 7;
                                            } else {
                                                this.h.d(16);
                                                z = true;
                                                i = 2;
                                                i3 = 3;
                                                i4 = 7;
                                            }
                                            break;
                                        case 145:
                                            if (this.l.c) {
                                                int iA = b.a(this.h.b(2), this.h.b(2), this.h.b(2), this.h.b(2));
                                                int iA2 = b.a(this.h.b(2), this.h.b(2), this.h.b(2), this.h.b(2));
                                                this.h.d(2);
                                                b.a(this.h.b(2), this.h.b(2), this.h.b(2), 0);
                                                this.l.a(iA, iA2);
                                            } else {
                                                this.h.d(24);
                                            }
                                            z = true;
                                            i = 2;
                                            i3 = 3;
                                            i4 = 7;
                                            break;
                                        case 146:
                                            if (this.l.c) {
                                                this.h.d(4);
                                                int iB4 = this.h.b(4);
                                                this.h.d(2);
                                                this.h.b(6);
                                                b bVar4 = this.l;
                                                if (bVar4.v != iB4) {
                                                    bVar4.a('\n');
                                                }
                                                bVar4.v = iB4;
                                            } else {
                                                this.h.d(16);
                                            }
                                            z = true;
                                            i = 2;
                                            i3 = 3;
                                            i4 = 7;
                                            break;
                                        case 147:
                                        case 148:
                                        case 149:
                                        case 150:
                                        default:
                                            xr0.a("Invalid C1 command: ", iB3, "Cea708Decoder");
                                            break;
                                        case 151:
                                            if (this.l.c) {
                                                int iA3 = b.a(this.h.b(2), this.h.b(2), this.h.b(2), this.h.b(2));
                                                this.h.b(2);
                                                b.a(this.h.b(2), this.h.b(2), this.h.b(2), 0);
                                                this.h.f();
                                                this.h.f();
                                                this.h.b(2);
                                                this.h.b(2);
                                                int iB5 = this.h.b(2);
                                                this.h.d(8);
                                                b bVar5 = this.l;
                                                bVar5.o = iA3;
                                                bVar5.l = iB5;
                                            } else {
                                                this.h.d(32);
                                            }
                                            z = true;
                                            i = 2;
                                            i3 = 3;
                                            i4 = 7;
                                            break;
                                        case 152:
                                        case 153:
                                        case 154:
                                        case 155:
                                        case 156:
                                        case 157:
                                        case 158:
                                        case 159:
                                            int i13 = iB3 - 152;
                                            b bVar6 = this.k[i13];
                                            this.h.d(i2);
                                            boolean zF3 = this.h.f();
                                            boolean zF4 = this.h.f();
                                            this.h.f();
                                            int iB6 = this.h.b(i3);
                                            boolean zF5 = this.h.f();
                                            int iB7 = this.h.b(i4);
                                            int iB8 = this.h.b(8);
                                            int iB9 = this.h.b(4);
                                            int iB10 = this.h.b(4);
                                            this.h.d(i2);
                                            this.h.b(6);
                                            this.h.d(i2);
                                            int iB11 = this.h.b(3);
                                            int iB12 = this.h.b(3);
                                            bVar6.c = true;
                                            bVar6.d = zF3;
                                            bVar6.k = zF4;
                                            bVar6.e = iB6;
                                            bVar6.f = zF5;
                                            bVar6.g = iB7;
                                            bVar6.h = iB8;
                                            bVar6.i = iB9;
                                            int i14 = iB10 + 1;
                                            if (bVar6.j != i14) {
                                                bVar6.j = i14;
                                                while (true) {
                                                    if ((zF4 && bVar6.a.size() >= bVar6.j) || bVar6.a.size() >= 15) {
                                                        bVar6.a.remove(0);
                                                    }
                                                }
                                            }
                                            if (iB11 != 0 && bVar6.m != iB11) {
                                                bVar6.m = iB11;
                                                int i15 = iB11 - 1;
                                                int i16 = b.C[i15];
                                                boolean z4 = b.B[i15];
                                                int i17 = b.z[i15];
                                                int i18 = b.A[i15];
                                                int i19 = b.y[i15];
                                                bVar6.o = i16;
                                                bVar6.l = i19;
                                            }
                                            if (iB12 != 0 && bVar6.n != iB12) {
                                                bVar6.n = iB12;
                                                int i20 = iB12 - 1;
                                                int i21 = b.E[i20];
                                                int i22 = b.D[i20];
                                                bVar6.a(false, false);
                                                bVar6.a(b.w, b.F[i20]);
                                            }
                                            if (this.p != i13) {
                                                this.p = i13;
                                                this.l = this.k[i13];
                                            }
                                            z = true;
                                            i = 2;
                                            i3 = 3;
                                            i4 = 7;
                                            break;
                                    }
                                    c2 = 6;
                                    z3 = z;
                                    i2 = i;
                                    z2 = z3;
                                } else {
                                    z = true;
                                    if (iB3 <= 255) {
                                        this.l.a((char) (iB3 & 255));
                                    } else {
                                        xr0.a("Invalid base command: ", iB3, "Cea708Decoder");
                                        i = 2;
                                        i4 = 7;
                                    }
                                }
                                i = 2;
                                i4 = 7;
                                c2 = 6;
                                z3 = z;
                                i2 = i;
                                z2 = z3;
                            } else if (iB3 == 127) {
                                this.l.a((char) 9835);
                            } else {
                                this.l.a((char) (iB3 & 255));
                            }
                            i = i2;
                            z = true;
                            c2 = 6;
                            z3 = z;
                            i2 = i;
                            z2 = z3;
                        }
                        c2 = 6;
                        int i23 = i;
                        z2 = z;
                        i2 = i23;
                    } else {
                        z = true;
                        int iB13 = this.h.b(8);
                        if (iB13 <= 31) {
                            i4 = 7;
                            if (iB13 > 7) {
                                if (iB13 <= 15) {
                                    this.h.d(8);
                                } else if (iB13 <= 23) {
                                    this.h.d(16);
                                } else if (iB13 <= 31) {
                                    this.h.d(24);
                                }
                            }
                        } else {
                            i4 = 7;
                            if (iB13 <= 127) {
                                if (iB13 == 32) {
                                    this.l.a(' ');
                                } else if (iB13 == 33) {
                                    this.l.a((char) 160);
                                } else if (iB13 == 37) {
                                    this.l.a((char) 8230);
                                } else if (iB13 == 42) {
                                    this.l.a((char) 352);
                                } else if (iB13 == 44) {
                                    this.l.a((char) 338);
                                } else if (iB13 == 63) {
                                    this.l.a((char) 376);
                                } else if (iB13 == 57) {
                                    this.l.a((char) 8482);
                                } else if (iB13 == 58) {
                                    this.l.a((char) 353);
                                } else if (iB13 == 60) {
                                    this.l.a((char) 339);
                                } else if (iB13 != 61) {
                                    switch (iB13) {
                                        case 48:
                                            this.l.a((char) 9608);
                                            break;
                                        case 49:
                                            this.l.a((char) 8216);
                                            break;
                                        case 50:
                                            this.l.a((char) 8217);
                                            break;
                                        case 51:
                                            this.l.a((char) 8220);
                                            break;
                                        case 52:
                                            this.l.a((char) 8221);
                                            break;
                                        case 53:
                                            this.l.a((char) 8226);
                                            break;
                                        default:
                                            switch (iB13) {
                                                case 118:
                                                    this.l.a((char) 8539);
                                                    break;
                                                case 119:
                                                    this.l.a((char) 8540);
                                                    break;
                                                case 120:
                                                    this.l.a((char) 8541);
                                                    break;
                                                case 121:
                                                    this.l.a((char) 8542);
                                                    break;
                                                case 122:
                                                    this.l.a((char) 9474);
                                                    break;
                                                case 123:
                                                    this.l.a((char) 9488);
                                                    break;
                                                case 124:
                                                    this.l.a((char) 9492);
                                                    break;
                                                case 125:
                                                    this.l.a((char) 9472);
                                                    break;
                                                case 126:
                                                    this.l.a((char) 9496);
                                                    break;
                                                case 127:
                                                    this.l.a((char) 9484);
                                                    break;
                                                default:
                                                    xr0.a("Invalid G2 character: ", iB13, "Cea708Decoder");
                                                    break;
                                            }
                                            break;
                                    }
                                } else {
                                    this.l.a((char) 8480);
                                }
                                i = 2;
                                c2 = 6;
                            } else {
                                if (iB13 > 159) {
                                    i = 2;
                                    c2 = 6;
                                    if (iB13 > 255) {
                                        xr0.a("Invalid extended command: ", iB13, "Cea708Decoder");
                                    } else if (iB13 == 160) {
                                        this.l.a((char) 13252);
                                    } else {
                                        xr0.a("Invalid G3 character: ", iB13, "Cea708Decoder");
                                        this.l.a('_');
                                    }
                                } else if (iB13 <= 135) {
                                    this.h.d(32);
                                } else if (iB13 <= 143) {
                                    this.h.d(40);
                                } else if (iB13 <= 159) {
                                    i = 2;
                                    this.h.d(2);
                                    c2 = 6;
                                    this.h.d(this.h.b(6) * 8);
                                }
                                int i24 = i;
                                z2 = z;
                                i2 = i24;
                            }
                            z3 = z;
                            i2 = i;
                            z2 = z3;
                        }
                        i = 2;
                        c2 = 6;
                        int i25 = i;
                        z2 = z;
                        i2 = i25;
                    }
                }
                z2 = z2;
                i2 = i2;
            }
        }
        if (z3) {
            this.m = j();
        }
        this.o = null;
    }

    private List<hv> j() {
        a aVar;
        Layout.Alignment alignment;
        float f;
        float f2;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 8; i++) {
            b bVar = this.k[i];
            if (bVar.c && (!bVar.a.isEmpty() || bVar.b.length() != 0)) {
                b bVar2 = this.k[i];
                if (bVar2.d) {
                    if (!bVar2.c || (bVar2.a.isEmpty() && bVar2.b.length() == 0)) {
                        aVar = null;
                    } else {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        for (int i2 = 0; i2 < bVar2.a.size(); i2++) {
                            spannableStringBuilder.append((CharSequence) bVar2.a.get(i2));
                            spannableStringBuilder.append('\n');
                        }
                        spannableStringBuilder.append((CharSequence) bVar2.a());
                        int i3 = bVar2.l;
                        if (i3 == 0) {
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                        } else if (i3 == 1) {
                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                        } else if (i3 != 2) {
                            if (i3 != 3) {
                                throw new IllegalArgumentException("Unexpected justification value: " + bVar2.l);
                            }
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                        } else {
                            alignment = Layout.Alignment.ALIGN_CENTER;
                        }
                        if (bVar2.f) {
                            f = bVar2.h / 99.0f;
                            f2 = bVar2.g / 99.0f;
                        } else {
                            f = bVar2.h / 209.0f;
                            f2 = bVar2.g / 74.0f;
                        }
                        float f3 = (f * 0.9f) + 0.05f;
                        float f4 = (f2 * 0.9f) + 0.05f;
                        int i4 = bVar2.i;
                        int i5 = i4 / 3;
                        int i6 = i4 % 3;
                        aVar = new a(spannableStringBuilder, alignment, f4, i5 == 0 ? 0 : i5 == 1 ? 1 : 2, f3, i6 == 0 ? 0 : i6 == 1 ? 1 : 2, bVar2.o != b.x, bVar2.o, bVar2.e);
                    }
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        arrayList.add(aVar2);
                    }
                } else {
                    continue;
                }
            }
        }
        Collections.sort(arrayList, a.c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i7 = 0; i7 < arrayList.size(); i7++) {
            arrayList2.add(((a) arrayList.get(i7)).a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    @Override
    public final void b(r32 r32Var) {
        ByteBuffer byteBuffer = r32Var.d;
        byteBuffer.getClass();
        this.g.a(byteBuffer.limit(), byteBuffer.array());
        while (this.g.a() >= 3) {
            int iT = this.g.t();
            int i = iT & 3;
            boolean z = (iT & 4) == 4;
            byte bT = (byte) this.g.t();
            byte bT2 = (byte) this.g.t();
            if (i == 2 || i == 3) {
                if (z) {
                    if (i == 3) {
                        i();
                        int i2 = (bT & 192) >> 6;
                        int i3 = this.i;
                        if (i3 != -1 && i2 != (i3 + 1) % 4) {
                            for (int i4 = 0; i4 < 8; i4++) {
                                this.k[i4].b();
                            }
                            et0.d("Cea708Decoder", "Sequence number discontinuity. previous=" + this.i + " current=" + i2);
                        }
                        this.i = i2;
                        int i5 = bT & Utf8.REPLACEMENT_BYTE;
                        if (i5 == 0) {
                            i5 = 64;
                        }
                        c cVar = new c(i2, i5);
                        this.o = cVar;
                        byte[] bArr = cVar.c;
                        cVar.d = 1;
                        bArr[0] = bT2;
                    } else {
                        if (i != 2) {
                            throw new IllegalArgumentException();
                        }
                        c cVar2 = this.o;
                        if (cVar2 == null) {
                            et0.b("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = cVar2.c;
                            int i6 = cVar2.d;
                            bArr2[i6] = bT;
                            cVar2.d = i6 + 2;
                            bArr2[i6 + 1] = bT2;
                        }
                    }
                    c cVar3 = this.o;
                    if (cVar3.d == (cVar3.b * 2) - 1) {
                        i();
                    }
                } else {
                    continue;
                }
            }
        }
    }

    @Override
    public final n32 c() {
        List<hv> list = this.m;
        this.n = list;
        list.getClass();
        return new co(list);
    }

    @Override
    public final void flush() {
        super.flush();
        this.m = null;
        this.n = null;
        this.p = 0;
        this.l = this.k[0];
        for (int i = 0; i < 8; i++) {
            this.k[i].b();
        }
        this.o = null;
    }

    @Override
    public final boolean h() {
        return this.m != this.n;
    }

    @Override
    public final void release() {
    }
}
