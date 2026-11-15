package i3;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tn.lib.view.FlowLayout;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import h3.k;
import h3.o;
import h3.p;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class a extends e {

    private final int f61747i;

    private final int f61748j;

    private final int f61749k;

    private final long f61750l;

    private List f61753o;

    private List f61754p;

    private int f61755q;

    private int f61756r;

    private boolean f61757s;

    private boolean f61758t;

    private byte f61759u;

    private byte f61760v;

    private boolean f61762x;

    private long f61763y;

    private static final int[] f61745z = {11, 1, 3, 12, 14, 5, 7, 9};
    private static final int[] A = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] B = {-1, -16711936, -16776961, -16711681, FlowLayout.SPACING_AUTO, InputDeviceCompat.SOURCE_ANY, -65281};
    private static final int[] C = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 109, 110, 111, 112, 113, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, 120, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, 231, 247, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, 241, 9632};
    private static final int[] D = {174, 176, PsExtractor.PRIVATE_STREAM_1, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    private static final int[] E = {193, 201, 211, Sdk$SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, PsExtractor.AUDIO_STREAM, 194, 199, 200, Sdk$SDKError.Reason.AD_CONSUMED_VALUE, Sdk$SDKError.Reason.AD_IS_LOADING_VALUE, 235, Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE, Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE, 239, Sdk$SDKError.Reason.PLACEMENT_SLEEP_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE, 249, Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE, 171, 187};
    private static final int[] F = {195, 227, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, 236, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, 242, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 245, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 92, 94, 95, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 126, 196, 228, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, 246, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 165, 164, 9474, 197, 229, Sdk$SDKError.Reason.AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] G = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    private final j0 f61746h = new j0();

    private final ArrayList f61751m = new ArrayList();

    private C0753a f61752n = new C0753a(0, 4);

    private int f61761w = 0;

    private static final class C0753a {

        private final List f61764a = new ArrayList();

        private final List f61765b = new ArrayList();

        private final StringBuilder f61766c = new StringBuilder();

        private int f61767d;

        private int f61768e;

        private int f61769f;

        private int f61770g;

        private int f61771h;

        private static class C0754a {

            public final int f61772a;

            public final boolean f61773b;

            public int f61774c;

            public C0754a(int i10, boolean z10, int i11) {
                this.f61772a = i10;
                this.f61773b = z10;
                this.f61774c = i11;
            }
        }

        public C0753a(int i10, int i11) {
            j(i10);
            this.f61771h = i11;
        }

        private SpannableString h() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f61766c);
            int length = spannableStringBuilder.length();
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = 0;
            int i15 = 0;
            boolean z10 = false;
            while (i14 < this.f61764a.size()) {
                C0754a c0754a = (C0754a) this.f61764a.get(i14);
                boolean z11 = c0754a.f61773b;
                int i16 = c0754a.f61772a;
                if (i16 != 8) {
                    boolean z12 = i16 == 7;
                    if (i16 != 7) {
                        i13 = a.B[i16];
                    }
                    z10 = z12;
                }
                int i17 = c0754a.f61774c;
                i14++;
                if (i17 != (i14 < this.f61764a.size() ? ((C0754a) this.f61764a.get(i14)).f61774c : length)) {
                    if (i10 != -1 && !z11) {
                        q(spannableStringBuilder, i10, i17);
                        i10 = -1;
                    } else if (i10 == -1 && z11) {
                        i10 = i17;
                    }
                    if (i11 != -1 && !z10) {
                        o(spannableStringBuilder, i11, i17);
                        i11 = -1;
                    } else if (i11 == -1 && z10) {
                        i11 = i17;
                    }
                    if (i13 != i12) {
                        n(spannableStringBuilder, i15, i17, i12);
                        i12 = i13;
                        i15 = i17;
                    }
                }
            }
            if (i10 != -1 && i10 != length) {
                q(spannableStringBuilder, i10, length);
            }
            if (i11 != -1 && i11 != length) {
                o(spannableStringBuilder, i11, length);
            }
            if (i15 != length) {
                n(spannableStringBuilder, i15, length, i12);
            }
            return new SpannableString(spannableStringBuilder);
        }

        private static void n(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12) {
            if (i12 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i12), i10, i11, 33);
        }

        private static void o(SpannableStringBuilder spannableStringBuilder, int i10, int i11) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i10, i11, 33);
        }

        private static void q(SpannableStringBuilder spannableStringBuilder, int i10, int i11) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i10, i11, 33);
        }

        public void e(char c10) {
            if (this.f61766c.length() < 32) {
                this.f61766c.append(c10);
            }
        }

        public void f() {
            int length = this.f61766c.length();
            if (length > 0) {
                this.f61766c.delete(length - 1, length);
                for (int size = this.f61764a.size() - 1; size >= 0; size--) {
                    C0754a c0754a = (C0754a) this.f61764a.get(size);
                    int i10 = c0754a.f61774c;
                    if (i10 != length) {
                        return;
                    }
                    c0754a.f61774c = i10 - 1;
                }
            }
        }

        public u1.a g(int i10) {
            float f10;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i11 = 0; i11 < this.f61765b.size(); i11++) {
                spannableStringBuilder.append((CharSequence) this.f61765b.get(i11));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) h());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i12 = this.f61768e + this.f61769f;
            int length = (32 - i12) - spannableStringBuilder.length();
            int i13 = i12 - length;
            if (i10 == Integer.MIN_VALUE) {
                i10 = (this.f61770g != 2 || (Math.abs(i13) >= 3 && length >= 0)) ? (this.f61770g != 2 || i13 <= 0) ? 0 : 2 : 1;
            }
            if (i10 != 1) {
                if (i10 == 2) {
                    i12 = 32 - length;
                }
                f10 = ((i12 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f10 = 0.5f;
            }
            int i14 = this.f61767d;
            if (i14 > 7) {
                i14 -= 17;
            } else if (this.f61770g == 1) {
                i14 -= this.f61771h - 1;
            }
            return new u1.a.b().o(spannableStringBuilder).p(Layout.Alignment.ALIGN_NORMAL).h(i14, 1).k(f10).l(i10).a();
        }

        public boolean i() {
            return this.f61764a.isEmpty() && this.f61765b.isEmpty() && this.f61766c.length() == 0;
        }

        public void j(int i10) {
            this.f61770g = i10;
            this.f61764a.clear();
            this.f61765b.clear();
            this.f61766c.setLength(0);
            this.f61767d = 15;
            this.f61768e = 0;
            this.f61769f = 0;
        }

        public void k() {
            this.f61765b.add(h());
            this.f61766c.setLength(0);
            this.f61764a.clear();
            int iMin = Math.min(this.f61771h, this.f61767d);
            while (this.f61765b.size() >= iMin) {
                this.f61765b.remove(0);
            }
        }

        public void l(int i10) {
            this.f61770g = i10;
        }

        public void m(int i10) {
            this.f61771h = i10;
        }

        public void p(int i10, boolean z10) {
            this.f61764a.add(new C0754a(i10, z10, this.f61766c.length()));
        }
    }

    public a(String str, int i10, long j10) {
        if (j10 != C.TIME_UNSET) {
            androidx.media3.common.util.a.a(j10 >= 16000);
            this.f61750l = j10 * 1000;
        } else {
            this.f61750l = C.TIME_UNSET;
        }
        this.f61747i = MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i10 == 1) {
            this.f61749k = 0;
            this.f61748j = 0;
        } else if (i10 == 2) {
            this.f61749k = 1;
            this.f61748j = 0;
        } else if (i10 == 3) {
            this.f61749k = 0;
            this.f61748j = 1;
        } else if (i10 != 4) {
            u.h("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.f61749k = 0;
            this.f61748j = 0;
        } else {
            this.f61749k = 1;
            this.f61748j = 1;
        }
        K(0);
        J();
        this.f61762x = true;
        this.f61763y = C.TIME_UNSET;
    }

    private static boolean A(byte b10, byte b11) {
        return (b10 & 246) == 20 && (b11 & 240) == 32;
    }

    private static boolean B(byte b10, byte b11) {
        return (b10 & 240) == 16 && (b11 & 192) == 64;
    }

    private static boolean C(byte b10) {
        return (b10 & 240) == 16;
    }

    private boolean D(boolean z10, byte b10, byte b11) {
        if (!z10 || !C(b10)) {
            this.f61758t = false;
        } else {
            if (this.f61758t && this.f61759u == b10 && this.f61760v == b11) {
                this.f61758t = false;
                return true;
            }
            this.f61758t = true;
            this.f61759u = b10;
            this.f61760v = b11;
        }
        return false;
    }

    private static boolean E(byte b10) {
        return (b10 & 246) == 20;
    }

    private static boolean F(byte b10, byte b11) {
        return (b10 & 247) == 17 && (b11 & 240) == 48;
    }

    private static boolean G(byte b10, byte b11) {
        return (b10 & 247) == 23 && b11 >= 33 && b11 <= 35;
    }

    private static boolean H(byte b10) {
        return 1 <= b10 && b10 <= 15;
    }

    private void I(byte b10, byte b11) {
        if (H(b10)) {
            this.f61762x = false;
            return;
        }
        if (E(b10)) {
            if (b11 != 32 && b11 != 47) {
                switch (b11) {
                    case 37:
                    case 38:
                    case 39:
                        break;
                    default:
                        switch (b11) {
                            case 42:
                            case 43:
                                this.f61762x = false;
                                break;
                        }
                }
            }
            this.f61762x = true;
        }
    }

    private void J() {
        this.f61752n.j(this.f61755q);
        this.f61751m.clear();
        this.f61751m.add(this.f61752n);
    }

    private void K(int i10) {
        int i11 = this.f61755q;
        if (i11 == i10) {
            return;
        }
        this.f61755q = i10;
        if (i10 == 3) {
            for (int i12 = 0; i12 < this.f61751m.size(); i12++) {
                ((C0753a) this.f61751m.get(i12)).l(i10);
            }
            return;
        }
        J();
        if (i11 == 3 || i10 == 1 || i10 == 0) {
            this.f61753o = Collections.emptyList();
        }
    }

    private void L(int i10) {
        this.f61756r = i10;
        this.f61752n.m(i10);
    }

    private boolean M() {
        return (this.f61750l == C.TIME_UNSET || this.f61763y == C.TIME_UNSET || h() - this.f61763y < this.f61750l) ? false : true;
    }

    private boolean N(byte b10) {
        if (x(b10)) {
            this.f61761w = o(b10);
        }
        return this.f61761w == this.f61749k;
    }

    private static char n(byte b10) {
        return (char) C[(b10 & 127) - 32];
    }

    private static int o(byte b10) {
        return (b10 >> 3) & 1;
    }

    private List p() {
        int size = this.f61751m.size();
        ArrayList arrayList = new ArrayList(size);
        int iMin = 2;
        for (int i10 = 0; i10 < size; i10++) {
            u1.a aVarG = ((C0753a) this.f61751m.get(i10)).g(Integer.MIN_VALUE);
            arrayList.add(aVarG);
            if (aVarG != null) {
                iMin = Math.min(iMin, aVarG.f72948i);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            u1.a aVar = (u1.a) arrayList.get(i11);
            if (aVar != null) {
                if (aVar.f72948i != iMin) {
                    aVar = (u1.a) androidx.media3.common.util.a.e(((C0753a) this.f61751m.get(i11)).g(iMin));
                }
                arrayList2.add(aVar);
            }
        }
        return arrayList2;
    }

    private static char q(byte b10) {
        return (char) E[b10 & 31];
    }

    private static char r(byte b10) {
        return (char) F[b10 & 31];
    }

    private static char s(byte b10, byte b11) {
        return (b10 & 1) == 0 ? q(b11) : r(b11);
    }

    private static char t(byte b10) {
        return (char) D[b10 & 15];
    }

    private void u(byte b10) {
        this.f61752n.e(' ');
        this.f61752n.p((b10 >> 1) & 7, (b10 & 1) == 1);
    }

    private void v(byte b10) {
        if (b10 == 32) {
            K(2);
            return;
        }
        if (b10 == 41) {
            K(3);
            return;
        }
        switch (b10) {
            case 37:
                K(1);
                L(2);
                break;
            case 38:
                K(1);
                L(3);
                break;
            case 39:
                K(1);
                L(4);
                break;
            default:
                int i10 = this.f61755q;
                if (i10 != 0) {
                    if (b10 != 33) {
                        switch (b10) {
                            case 44:
                                this.f61753o = Collections.emptyList();
                                int i11 = this.f61755q;
                                if (i11 == 1 || i11 == 3) {
                                    J();
                                }
                                break;
                            case 45:
                                if (i10 == 1 && !this.f61752n.i()) {
                                    this.f61752n.k();
                                    break;
                                }
                                break;
                            case 46:
                                J();
                                break;
                            case 47:
                                this.f61753o = p();
                                J();
                                break;
                        }
                    } else {
                        this.f61752n.f();
                        break;
                    }
                }
                break;
        }
    }

    private void w(byte b10, byte b11) {
        int i10 = f61745z[b10 & 7];
        if ((b11 & 32) != 0) {
            i10++;
        }
        if (i10 != this.f61752n.f61767d) {
            if (this.f61755q != 1 && !this.f61752n.i()) {
                C0753a c0753a = new C0753a(this.f61755q, this.f61756r);
                this.f61752n = c0753a;
                this.f61751m.add(c0753a);
            }
            this.f61752n.f61767d = i10;
        }
        boolean z10 = (b11 & 16) == 16;
        boolean z11 = (b11 & 1) == 1;
        int i11 = (b11 >> 1) & 7;
        this.f61752n.p(z10 ? 8 : i11, z11);
        if (z10) {
            this.f61752n.f61768e = A[i11];
        }
    }

    private static boolean x(byte b10) {
        return (b10 & 224) == 0;
    }

    private static boolean y(byte b10, byte b11) {
        return (b10 & 246) == 18 && (b11 & 224) == 32;
    }

    private static boolean z(byte b10, byte b11) {
        return (b10 & 247) == 17 && (b11 & 240) == 32;
    }

    @Override
    protected k c() {
        List list = this.f61753o;
        this.f61754p = list;
        return new f((List) androidx.media3.common.util.a.e(list));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0063  */
    @Override
    protected void d(o oVar) {
        boolean z10;
        ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(oVar.f10606c);
        this.f61746h.U(byteBuffer.array(), byteBuffer.limit());
        boolean z11 = false;
        while (true) {
            int iA = this.f61746h.a();
            int i10 = this.f61747i;
            if (iA < i10) {
                break;
            }
            int iH = i10 == 2 ? -4 : this.f61746h.H();
            int iH2 = this.f61746h.H();
            int iH3 = this.f61746h.H();
            if ((iH & 2) == 0 && (iH & 1) == this.f61748j) {
                byte b10 = (byte) (iH2 & 127);
                byte b11 = (byte) (iH3 & 127);
                if (b10 != 0 || b11 != 0) {
                    boolean z12 = this.f61757s;
                    if ((iH & 4) == 4) {
                        boolean[] zArr = G;
                        if (zArr[iH2] && zArr[iH3]) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                    } else {
                        z10 = false;
                    }
                    this.f61757s = z10;
                    if (!D(z10, b10, b11)) {
                        if (this.f61757s) {
                            I(b10, b11);
                            if (this.f61762x && N(b10)) {
                                if (!x(b10)) {
                                    this.f61752n.e(n(b10));
                                    if ((b11 & 224) != 0) {
                                        this.f61752n.e(n(b11));
                                    }
                                } else if (F(b10, b11)) {
                                    this.f61752n.e(t(b11));
                                } else if (y(b10, b11)) {
                                    this.f61752n.f();
                                    this.f61752n.e(s(b10, b11));
                                } else if (z(b10, b11)) {
                                    u(b11);
                                } else if (B(b10, b11)) {
                                    w(b10, b11);
                                } else if (G(b10, b11)) {
                                    this.f61752n.f61769f = b11 - 32;
                                } else if (A(b10, b11)) {
                                    v(b11);
                                }
                                z11 = true;
                            }
                        } else if (z12) {
                            J();
                            z11 = true;
                        }
                    }
                }
            }
        }
        if (z11) {
            int i11 = this.f61755q;
            if (i11 == 1 || i11 == 3) {
                this.f61753o = p();
                this.f61763y = h();
            }
        }
    }

    @Override
    public o dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    @Override
    public p dequeueOutputBuffer() {
        p pVarG;
        p pVarDequeueOutputBuffer = super.dequeueOutputBuffer();
        if (pVarDequeueOutputBuffer != null) {
            return pVarDequeueOutputBuffer;
        }
        if (!M() || (pVarG = g()) == null) {
            return null;
        }
        this.f61753o = Collections.emptyList();
        this.f61763y = C.TIME_UNSET;
        pVarG.a(h(), c(), Long.MAX_VALUE);
        return pVarG;
    }

    @Override
    public void flush() {
        super.flush();
        this.f61753o = null;
        this.f61754p = null;
        K(0);
        L(4);
        J();
        this.f61757s = false;
        this.f61758t = false;
        this.f61759u = (byte) 0;
        this.f61760v = (byte) 0;
        this.f61761w = 0;
        this.f61762x = true;
        this.f61763y = C.TIME_UNSET;
    }

    @Override
    public String getName() {
        return "Cea608Decoder";
    }

    @Override
    protected boolean i() {
        return this.f61753o != this.f61754p;
    }

    @Override
    public void queueInputBuffer(o oVar) {
        super.queueInputBuffer(oVar);
    }

    @Override
    public void setPositionUs(long j10) {
        super.setPositionUs(j10);
    }

    @Override
    public void release() {
    }
}
