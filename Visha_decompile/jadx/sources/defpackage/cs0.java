package defpackage;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.audiotagger.audio.mp3.MPEGFrameHeader;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.mozilla.classfile.ByteCode;

public final class cs0 extends gs0 {
    public final int h;
    public final int i;
    public final int j;
    public final long k;
    public List n;
    public List o;
    public int p;
    public int q;
    public boolean r;
    public boolean s;
    public byte t;
    public byte u;
    public boolean w;
    public long x;
    public static final int[] y = {11, 1, 3, 12, 14, 5, 7, 9};
    public static final int[] z = {0, 4, 8, 12, 16, 20, 24, 28};
    public static final int[] A = {-1, -16711936, -16776961, -16711681, SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -65281};
    public static final int[] B = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, TranSceneConfig.TSCENE_TYPE_VOICE_ASSISTANT_SMILE, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, IDrmSession.ERROR_SESSION_DRM_PSSHS_NOT_SUPPORT, 241, 9632};
    public static final int[] C = {ByteCode.FRETURN, 176, 189, ByteCode.ATHROW, 8482, 162, 163, 9834, 224, 32, 232, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK, 234, 238, 244, 251};
    public static final int[] D = {193, 201, IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_NONE, IDrmSession.ERROR_SESSION_DRM_INFO_INVALID, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT, MPEGFrameHeader.SYNC_BIT_ANDSAMPING_BYTE3, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT, IDrmSession.ERROR_SESSION_DRM_LICENSE_URL_EMPTY, 239, IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_ERROR, IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY, 249, 219, ByteCode.LOOKUPSWITCH, 187};
    public static final int[] E = {ByteCode.MONITOREXIT, 227, IDrmSession.ERROR_SESSION_KEY_REQUEST_NULL, IDrmSession.ERROR_SESSION_DRM_NULL, 236, 210, 242, IDrmSession.ERROR_SESSION_PROVISION_ERROR, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 165, 164, 9474, ByteCode.MULTIANEWARRAY, 229, IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID, 248, 9484, 9488, 9492, 9496};
    public static final boolean[] F = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    public final qw7 g = new qw7();
    public final ArrayList l = new ArrayList();
    public a m = new a(0, 4);
    public int v = 0;

    public static final class a {
        public final List a = new ArrayList();
        public final List b = new ArrayList();
        public final StringBuilder c = new StringBuilder();
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;

        public static class C0338a {
            public final int a;
            public final boolean b;
            public int c;

            public C0338a(int i, boolean z, int i2) {
                this.a = i;
                this.b = z;
                this.c = i2;
            }
        }

        public a(int i, int i2) {
            j(i);
            this.h = i2;
        }

        public static void n(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
            if (i3 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
        }

        public static void o(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
        }

        public static void q(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }

        public void e(char c) {
            if (this.c.length() < 32) {
                this.c.append(c);
            }
        }

        public void f() {
            int length = this.c.length();
            if (length > 0) {
                this.c.delete(length - 1, length);
                for (int size = this.a.size() - 1; size >= 0; size--) {
                    C0338a c0338a = (C0338a) this.a.get(size);
                    int i = c0338a.c;
                    if (i != length) {
                        return;
                    }
                    c0338a.c = i - 1;
                }
            }
        }

        public jm1 g(int i) {
            float f;
            int i2 = this.e + this.f;
            int i3 = 32 - i2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i4 = 0; i4 < this.b.size(); i4++) {
                spannableStringBuilder.append(blb.N0((CharSequence) this.b.get(i4), i3));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(blb.N0(h(), i3));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i3 - spannableStringBuilder.length();
            int i5 = i2 - length;
            if (i == Integer.MIN_VALUE) {
                i = (this.g != 2 || (Math.abs(i5) >= 3 && length >= 0)) ? (this.g != 2 || i5 <= 0) ? 0 : 2 : 1;
            }
            if (i != 1) {
                if (i == 2) {
                    i2 = 32 - length;
                }
                f = ((i2 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f = 0.5f;
            }
            int i6 = this.d;
            if (i6 > 7) {
                i6 -= 17;
            } else if (this.g == 1) {
                i6 -= this.h - 1;
            }
            return new jm1.b().o(spannableStringBuilder).p(Layout.Alignment.ALIGN_NORMAL).h(i6, 1).k(f).l(i).a();
        }

        public final SpannableString h() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.c);
            int length = spannableStringBuilder.length();
            int i = -1;
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = 0;
            int i6 = 0;
            boolean z = false;
            while (i5 < this.a.size()) {
                C0338a c0338a = (C0338a) this.a.get(i5);
                boolean z2 = c0338a.b;
                int i7 = c0338a.a;
                if (i7 != 8) {
                    boolean z3 = i7 == 7;
                    if (i7 != 7) {
                        i4 = cs0.A[i7];
                    }
                    z = z3;
                }
                int i8 = c0338a.c;
                i5++;
                if (i8 != (i5 < this.a.size() ? ((C0338a) this.a.get(i5)).c : length)) {
                    if (i != -1 && !z2) {
                        q(spannableStringBuilder, i, i8);
                        i = -1;
                    } else if (i == -1 && z2) {
                        i = i8;
                    }
                    if (i2 != -1 && !z) {
                        o(spannableStringBuilder, i2, i8);
                        i2 = -1;
                    } else if (i2 == -1 && z) {
                        i2 = i8;
                    }
                    if (i4 != i3) {
                        n(spannableStringBuilder, i6, i8, i3);
                        i3 = i4;
                        i6 = i8;
                    }
                }
            }
            if (i != -1 && i != length) {
                q(spannableStringBuilder, i, length);
            }
            if (i2 != -1 && i2 != length) {
                o(spannableStringBuilder, i2, length);
            }
            if (i6 != length) {
                n(spannableStringBuilder, i6, length, i3);
            }
            return new SpannableString(spannableStringBuilder);
        }

        public boolean i() {
            return this.a.isEmpty() && this.b.isEmpty() && this.c.length() == 0;
        }

        public void j(int i) {
            this.g = i;
            this.a.clear();
            this.b.clear();
            this.c.setLength(0);
            this.d = 15;
            this.e = 0;
            this.f = 0;
        }

        public void k() {
            this.b.add(h());
            this.c.setLength(0);
            this.a.clear();
            int iMin = Math.min(this.h, this.d);
            while (this.b.size() >= iMin) {
                this.b.remove(0);
            }
        }

        public void l(int i) {
            this.g = i;
        }

        public void m(int i) {
            this.h = i;
        }

        public void p(int i, boolean z) {
            this.a.add(new C0338a(i, z, this.c.length()));
        }
    }

    public cs0(String str, int i, long j) {
        this.k = j > 0 ? j * 1000 : -9223372036854775807L;
        this.h = MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i == 1) {
            this.j = 0;
            this.i = 0;
        } else if (i == 2) {
            this.j = 1;
            this.i = 0;
        } else if (i == 3) {
            this.j = 0;
            this.i = 1;
        } else if (i != 4) {
            op5.i("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.j = 0;
            this.i = 0;
        } else {
            this.j = 1;
            this.i = 1;
        }
        I(0);
        H();
        this.w = true;
        this.x = C.TIME_UNSET;
    }

    public static boolean A(byte b) {
        return (b & 240) == 16;
    }

    public static boolean C(byte b) {
        return (b & 247) == 20;
    }

    public static boolean D(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 48;
    }

    public static boolean E(byte b, byte b2) {
        return (b & 247) == 23 && b2 >= 33 && b2 <= 35;
    }

    public static boolean F(byte b) {
        return 1 <= b && b <= 15;
    }

    public static char l(byte b) {
        return (char) B[(b & 127) - 32];
    }

    public static int m(byte b) {
        return (b >> 3) & 1;
    }

    public static char o(byte b) {
        return (char) D[b & 31];
    }

    public static char p(byte b) {
        return (char) E[b & 31];
    }

    public static char q(byte b, byte b2) {
        return (b & 1) == 0 ? o(b2) : p(b2);
    }

    public static char r(byte b) {
        return (char) C[b & 15];
    }

    public static boolean v(byte b) {
        return (b & 224) == 0;
    }

    public static boolean w(byte b, byte b2) {
        return (b & 246) == 18 && (b2 & 224) == 32;
    }

    public static boolean x(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 32;
    }

    public static boolean y(byte b, byte b2) {
        return (b & 246) == 20 && (b2 & 240) == 32;
    }

    public static boolean z(byte b, byte b2) {
        return (b & 240) == 16 && (b2 & 192) == 64;
    }

    public final boolean B(boolean z2, byte b, byte b2) {
        if (!z2 || !A(b)) {
            this.s = false;
        } else {
            if (this.s && this.t == b && this.u == b2) {
                this.s = false;
                return true;
            }
            this.s = true;
            this.t = b;
            this.u = b2;
        }
        return false;
    }

    public final void G(byte b, byte b2) {
        if (F(b)) {
            this.w = false;
            return;
        }
        if (C(b)) {
            if (b2 != 32 && b2 != 47) {
                switch (b2) {
                    case 37:
                    case 38:
                    case 39:
                        break;
                    default:
                        switch (b2) {
                            case 42:
                            case 43:
                                this.w = false;
                                break;
                        }
                }
            }
            this.w = true;
        }
    }

    public final void H() {
        this.m.j(this.p);
        this.l.clear();
        this.l.add(this.m);
    }

    public final void I(int i) {
        int i2 = this.p;
        if (i2 == i) {
            return;
        }
        this.p = i;
        if (i == 3) {
            for (int i3 = 0; i3 < this.l.size(); i3++) {
                ((a) this.l.get(i3)).l(i);
            }
            return;
        }
        H();
        if (i2 == 3 || i == 1 || i == 0) {
            this.n = Collections.emptyList();
        }
    }

    public final void J(int i) {
        this.q = i;
        this.m.m(i);
    }

    public final boolean K() {
        return (this.k == C.TIME_UNSET || this.x == C.TIME_UNSET || f() - this.x < this.k) ? false : true;
    }

    public final boolean L(byte b) {
        if (v(b)) {
            this.v = m(b);
        }
        return this.v == this.j;
    }

    @Override
    public l2a a() {
        List list = this.n;
        this.o = list;
        return new hs0((List) zi.e(list));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0064  */
    @Override
    public void b(y4a y4aVar) {
        boolean z2;
        ByteBuffer byteBuffer = (ByteBuffer) zi.e(y4aVar.d);
        this.g.M(byteBuffer.array(), byteBuffer.limit());
        boolean z3 = false;
        while (true) {
            int iA = this.g.a();
            int i = this.h;
            if (iA < i) {
                break;
            }
            byte bC = i == 2 ? (byte) -4 : (byte) this.g.C();
            int iC = this.g.C();
            int iC2 = this.g.C();
            if ((bC & 2) == 0 && (bC & 1) == this.i) {
                byte b = (byte) (iC & 127);
                byte b2 = (byte) (iC2 & 127);
                if (b != 0 || b2 != 0) {
                    boolean z4 = this.r;
                    if ((bC & 4) == 4) {
                        boolean[] zArr = F;
                        if (zArr[iC] && zArr[iC2]) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        z2 = false;
                    }
                    this.r = z2;
                    if (!B(z2, b, b2)) {
                        if (this.r) {
                            G(b, b2);
                            if (this.w && L(b)) {
                                if (!v(b)) {
                                    this.m.e(l(b));
                                    if ((b2 & 224) != 0) {
                                        this.m.e(l(b2));
                                    }
                                } else if (D(b, b2)) {
                                    this.m.e(r(b2));
                                } else if (w(b, b2)) {
                                    this.m.f();
                                    this.m.e(q(b, b2));
                                } else if (x(b, b2)) {
                                    s(b2);
                                } else if (z(b, b2)) {
                                    u(b, b2);
                                } else if (E(b, b2)) {
                                    this.m.f = b2 - 32;
                                } else if (y(b, b2)) {
                                    t(b2);
                                }
                                z3 = true;
                            }
                        } else if (z4) {
                            H();
                            z3 = true;
                        }
                    }
                }
            }
        }
        if (z3) {
            int i2 = this.p;
            if (i2 == 1 || i2 == 3) {
                this.n = n();
                this.x = f();
            }
        }
    }

    @Override
    public y4a dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    @Override
    public k5a dequeueOutputBuffer() {
        k5a k5aVarE;
        k5a k5aVarDequeueOutputBuffer = super.dequeueOutputBuffer();
        if (k5aVarDequeueOutputBuffer != null) {
            return k5aVarDequeueOutputBuffer;
        }
        if (!K() || (k5aVarE = e()) == null) {
            return null;
        }
        this.n = Collections.emptyList();
        this.x = C.TIME_UNSET;
        k5aVarE.m(f(), a(), Long.MAX_VALUE);
        return k5aVarE;
    }

    @Override
    public void flush() {
        super.flush();
        this.n = null;
        this.o = null;
        I(0);
        J(4);
        H();
        this.r = false;
        this.s = false;
        this.t = (byte) 0;
        this.u = (byte) 0;
        this.v = 0;
        this.w = true;
        this.x = C.TIME_UNSET;
    }

    @Override
    public boolean g() {
        return this.n != this.o;
    }

    @Override
    public void queueInputBuffer(y4a y4aVar) {
        super.queueInputBuffer(y4aVar);
    }

    public final List n() {
        int size = this.l.size();
        ArrayList arrayList = new ArrayList(size);
        int iMin = 2;
        for (int i = 0; i < size; i++) {
            jm1 jm1VarG = ((a) this.l.get(i)).g(Integer.MIN_VALUE);
            arrayList.add(jm1VarG);
            if (jm1VarG != null) {
                iMin = Math.min(iMin, jm1VarG.j);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            jm1 jm1Var = (jm1) arrayList.get(i2);
            if (jm1Var != null) {
                if (jm1Var.j != iMin) {
                    jm1Var = (jm1) zi.e(((a) this.l.get(i2)).g(iMin));
                }
                arrayList2.add(jm1Var);
            }
        }
        return arrayList2;
    }

    @Override
    public void release() {
    }

    public final void s(byte b) {
        this.m.e(' ');
        this.m.p((b >> 1) & 7, (b & 1) == 1);
    }

    @Override
    public void setPositionUs(long j) {
        super.setPositionUs(j);
    }

    public final void t(byte b) {
        if (b == 32) {
            I(2);
            return;
        }
        if (b == 41) {
            I(3);
            return;
        }
        switch (b) {
            case 37:
                I(1);
                J(2);
                break;
            case 38:
                I(1);
                J(3);
                break;
            case 39:
                I(1);
                J(4);
                break;
            default:
                int i = this.p;
                if (i != 0) {
                    if (b != 33) {
                        switch (b) {
                            case 44:
                                this.n = Collections.emptyList();
                                int i2 = this.p;
                                if (i2 == 1 || i2 == 3) {
                                    H();
                                }
                                break;
                            case 45:
                                if (i == 1 && !this.m.i()) {
                                    this.m.k();
                                    break;
                                }
                                break;
                            case 46:
                                H();
                                break;
                            case 47:
                                this.n = n();
                                H();
                                break;
                        }
                    } else {
                        this.m.f();
                        break;
                    }
                }
                break;
        }
    }

    public final void u(byte b, byte b2) {
        int i = y[b & 7];
        if ((b2 & 32) != 0) {
            i++;
        }
        if (i != this.m.d) {
            if (this.p != 1 && !this.m.i()) {
                a aVar = new a(this.p, this.q);
                this.m = aVar;
                this.l.add(aVar);
            }
            this.m.d = i;
        }
        boolean z2 = (b2 & 16) == 16;
        boolean z3 = (b2 & 1) == 1;
        int i2 = (b2 >> 1) & 7;
        this.m.p(z2 ? 8 : i2, z3);
        if (z2) {
            this.m.e = z[i2];
        }
    }
}
