package ea;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.core.view.InputDeviceCompat;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tn.lib.view.FlowLayout;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import da.i;
import da.m;
import da.n;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class a extends e {

    private final int f59473h;

    private final int f59474i;

    private final int f59475j;

    private final long f59476k;

    private List f59479n;

    private List f59480o;

    private int f59481p;

    private int f59482q;

    private boolean f59483r;

    private boolean f59484s;

    private byte f59485t;

    private byte f59486u;

    private boolean f59488w;

    private long f59489x;

    private static final int[] f59470y = {11, 1, 3, 12, 14, 5, 7, 9};

    private static final int[] f59471z = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] A = {-1, -16711936, -16776961, -16711681, FlowLayout.SPACING_AUTO, InputDeviceCompat.SOURCE_ANY, -65281};
    private static final int[] B = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 109, 110, 111, 112, 113, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, 120, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, 231, 247, Sdk$SDKError.Reason.INVALID_JSON_BID_PAYLOAD_VALUE, 241, 9632};
    private static final int[] C = {174, 176, PsExtractor.PRIVATE_STREAM_1, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    private static final int[] D = {193, 201, 211, Sdk$SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, PsExtractor.AUDIO_STREAM, 194, 199, 200, Sdk$SDKError.Reason.AD_CONSUMED_VALUE, Sdk$SDKError.Reason.AD_IS_LOADING_VALUE, 235, Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE, Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE, 239, Sdk$SDKError.Reason.PLACEMENT_SLEEP_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE, 249, Sdk$SDKError.Reason.MRAID_JS_COPY_FAILED_VALUE, 171, 187};
    private static final int[] E = {195, 227, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, 236, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, 242, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 245, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE, Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, 92, 94, 95, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 126, 196, 228, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, 246, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 165, 164, 9474, 197, 229, Sdk$SDKError.Reason.AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] F = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    private final d0 f59472g = new d0();

    private final ArrayList f59477l = new ArrayList();

    private C0718a f59478m = new C0718a(0, 4);

    private int f59487v = 0;

    private static final class C0718a {

        private final List f59490a = new ArrayList();

        private final List f59491b = new ArrayList();

        private final StringBuilder f59492c = new StringBuilder();

        private int f59493d;

        private int f59494e;

        private int f59495f;

        private int f59496g;

        private int f59497h;

        private static class C0719a {

            public final int f59498a;

            public final boolean f59499b;

            public int f59500c;

            public C0719a(int i10, boolean z10, int i11) {
                this.f59498a = i10;
                this.f59499b = z10;
                this.f59500c = i11;
            }
        }

        public C0718a(int i10, int i11) {
            j(i10);
            this.f59497h = i11;
        }

        private SpannableString h() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f59492c);
            int length = spannableStringBuilder.length();
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = 0;
            int i15 = 0;
            boolean z10 = false;
            while (i14 < this.f59490a.size()) {
                C0719a c0719a = (C0719a) this.f59490a.get(i14);
                boolean z11 = c0719a.f59499b;
                int i16 = c0719a.f59498a;
                if (i16 != 8) {
                    boolean z12 = i16 == 7;
                    if (i16 != 7) {
                        i13 = a.A[i16];
                    }
                    z10 = z12;
                }
                int i17 = c0719a.f59500c;
                i14++;
                if (i17 != (i14 < this.f59490a.size() ? ((C0719a) this.f59490a.get(i14)).f59500c : length)) {
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
            if (this.f59492c.length() < 32) {
                this.f59492c.append(c10);
            }
        }

        public void f() {
            int length = this.f59492c.length();
            if (length > 0) {
                this.f59492c.delete(length - 1, length);
                for (int size = this.f59490a.size() - 1; size >= 0; size--) {
                    C0719a c0719a = (C0719a) this.f59490a.get(size);
                    int i10 = c0719a.f59500c;
                    if (i10 != length) {
                        return;
                    }
                    c0719a.f59500c = i10 - 1;
                }
            }
        }

        public da.b g(int i10) {
            float f10;
            int i11 = this.f59494e + this.f59495f;
            int i12 = 32 - i11;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i13 = 0; i13 < this.f59491b.size(); i13++) {
                spannableStringBuilder.append(p0.c1((CharSequence) this.f59491b.get(i13), i12));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(p0.c1(h(), i12));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i12 - spannableStringBuilder.length();
            int i14 = i11 - length;
            if (i10 == Integer.MIN_VALUE) {
                i10 = (this.f59496g != 2 || (Math.abs(i14) >= 3 && length >= 0)) ? (this.f59496g != 2 || i14 <= 0) ? 0 : 2 : 1;
            }
            if (i10 != 1) {
                if (i10 == 2) {
                    i11 = 32 - length;
                }
                f10 = ((i11 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f10 = 0.5f;
            }
            int i15 = this.f59493d;
            if (i15 > 7) {
                i15 -= 17;
            } else if (this.f59496g == 1) {
                i15 -= this.f59497h - 1;
            }
            return new da.b.C0703b().o(spannableStringBuilder).p(Layout.Alignment.ALIGN_NORMAL).h(i15, 1).k(f10).l(i10).a();
        }

        public boolean i() {
            return this.f59490a.isEmpty() && this.f59491b.isEmpty() && this.f59492c.length() == 0;
        }

        public void j(int i10) {
            this.f59496g = i10;
            this.f59490a.clear();
            this.f59491b.clear();
            this.f59492c.setLength(0);
            this.f59493d = 15;
            this.f59494e = 0;
            this.f59495f = 0;
        }

        public void k() {
            this.f59491b.add(h());
            this.f59492c.setLength(0);
            this.f59490a.clear();
            int iMin = Math.min(this.f59497h, this.f59493d);
            while (this.f59491b.size() >= iMin) {
                this.f59491b.remove(0);
            }
        }

        public void l(int i10) {
            this.f59496g = i10;
        }

        public void m(int i10) {
            this.f59497h = i10;
        }

        public void p(int i10, boolean z10) {
            this.f59490a.add(new C0719a(i10, z10, this.f59492c.length()));
        }
    }

    public a(String str, int i10, long j10) {
        this.f59476k = j10 > 0 ? j10 * 1000 : -9223372036854775807L;
        this.f59473h = MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i10 == 1) {
            this.f59475j = 0;
            this.f59474i = 0;
        } else if (i10 == 2) {
            this.f59475j = 1;
            this.f59474i = 0;
        } else if (i10 == 3) {
            this.f59475j = 0;
            this.f59474i = 1;
        } else if (i10 != 4) {
            s.i("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.f59475j = 0;
            this.f59474i = 0;
        } else {
            this.f59475j = 1;
            this.f59474i = 1;
        }
        I(0);
        H();
        this.f59488w = true;
        this.f59489x = C.TIME_UNSET;
    }

    private static boolean A(byte b10) {
        return (b10 & 240) == 16;
    }

    private boolean B(boolean z10, byte b10, byte b11) {
        if (!z10 || !A(b10)) {
            this.f59484s = false;
        } else {
            if (this.f59484s && this.f59485t == b10 && this.f59486u == b11) {
                this.f59484s = false;
                return true;
            }
            this.f59484s = true;
            this.f59485t = b10;
            this.f59486u = b11;
        }
        return false;
    }

    private static boolean C(byte b10) {
        return (b10 & 247) == 20;
    }

    private static boolean D(byte b10, byte b11) {
        return (b10 & 247) == 17 && (b11 & 240) == 48;
    }

    private static boolean E(byte b10, byte b11) {
        return (b10 & 247) == 23 && b11 >= 33 && b11 <= 35;
    }

    private static boolean F(byte b10) {
        return 1 <= b10 && b10 <= 15;
    }

    private void G(byte b10, byte b11) {
        if (F(b10)) {
            this.f59488w = false;
            return;
        }
        if (C(b10)) {
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
                                this.f59488w = false;
                                break;
                        }
                }
            }
            this.f59488w = true;
        }
    }

    private void H() {
        this.f59478m.j(this.f59481p);
        this.f59477l.clear();
        this.f59477l.add(this.f59478m);
    }

    private void I(int i10) {
        int i11 = this.f59481p;
        if (i11 == i10) {
            return;
        }
        this.f59481p = i10;
        if (i10 == 3) {
            for (int i12 = 0; i12 < this.f59477l.size(); i12++) {
                ((C0718a) this.f59477l.get(i12)).l(i10);
            }
            return;
        }
        H();
        if (i11 == 3 || i10 == 1 || i10 == 0) {
            this.f59479n = Collections.emptyList();
        }
    }

    private void J(int i10) {
        this.f59482q = i10;
        this.f59478m.m(i10);
    }

    private boolean K() {
        return (this.f59476k == C.TIME_UNSET || this.f59489x == C.TIME_UNSET || f() - this.f59489x < this.f59476k) ? false : true;
    }

    private boolean L(byte b10) {
        if (v(b10)) {
            this.f59487v = m(b10);
        }
        return this.f59487v == this.f59475j;
    }

    private static char l(byte b10) {
        return (char) B[(b10 & 127) - 32];
    }

    private static int m(byte b10) {
        return (b10 >> 3) & 1;
    }

    private List n() {
        int size = this.f59477l.size();
        ArrayList arrayList = new ArrayList(size);
        int iMin = 2;
        for (int i10 = 0; i10 < size; i10++) {
            da.b bVarG = ((C0718a) this.f59477l.get(i10)).g(Integer.MIN_VALUE);
            arrayList.add(bVarG);
            if (bVarG != null) {
                iMin = Math.min(iMin, bVarG.f58932i);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            da.b bVar = (da.b) arrayList.get(i11);
            if (bVar != null) {
                if (bVar.f58932i != iMin) {
                    bVar = (da.b) com.google.android.exoplayer2.util.a.e(((C0718a) this.f59477l.get(i11)).g(iMin));
                }
                arrayList2.add(bVar);
            }
        }
        return arrayList2;
    }

    private static char o(byte b10) {
        return (char) D[b10 & 31];
    }

    private static char p(byte b10) {
        return (char) E[b10 & 31];
    }

    private static char q(byte b10, byte b11) {
        return (b10 & 1) == 0 ? o(b11) : p(b11);
    }

    private static char r(byte b10) {
        return (char) C[b10 & 15];
    }

    private void s(byte b10) {
        this.f59478m.e(' ');
        this.f59478m.p((b10 >> 1) & 7, (b10 & 1) == 1);
    }

    private void t(byte b10) {
        if (b10 == 32) {
            I(2);
            return;
        }
        if (b10 == 41) {
            I(3);
            return;
        }
        switch (b10) {
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
                int i10 = this.f59481p;
                if (i10 != 0) {
                    if (b10 != 33) {
                        switch (b10) {
                            case 44:
                                this.f59479n = Collections.emptyList();
                                int i11 = this.f59481p;
                                if (i11 == 1 || i11 == 3) {
                                    H();
                                }
                                break;
                            case 45:
                                if (i10 == 1 && !this.f59478m.i()) {
                                    this.f59478m.k();
                                    break;
                                }
                                break;
                            case 46:
                                H();
                                break;
                            case 47:
                                this.f59479n = n();
                                H();
                                break;
                        }
                    } else {
                        this.f59478m.f();
                        break;
                    }
                }
                break;
        }
    }

    private void u(byte b10, byte b11) {
        int i10 = f59470y[b10 & 7];
        if ((b11 & 32) != 0) {
            i10++;
        }
        if (i10 != this.f59478m.f59493d) {
            if (this.f59481p != 1 && !this.f59478m.i()) {
                C0718a c0718a = new C0718a(this.f59481p, this.f59482q);
                this.f59478m = c0718a;
                this.f59477l.add(c0718a);
            }
            this.f59478m.f59493d = i10;
        }
        boolean z10 = (b11 & 16) == 16;
        boolean z11 = (b11 & 1) == 1;
        int i11 = (b11 >> 1) & 7;
        this.f59478m.p(z10 ? 8 : i11, z11);
        if (z10) {
            this.f59478m.f59494e = f59471z[i11];
        }
    }

    private static boolean v(byte b10) {
        return (b10 & 224) == 0;
    }

    private static boolean w(byte b10, byte b11) {
        return (b10 & 246) == 18 && (b11 & 224) == 32;
    }

    private static boolean x(byte b10, byte b11) {
        return (b10 & 247) == 17 && (b11 & 240) == 32;
    }

    private static boolean y(byte b10, byte b11) {
        return (b10 & 246) == 20 && (b11 & 240) == 32;
    }

    private static boolean z(byte b10, byte b11) {
        return (b10 & 240) == 16 && (b11 & 192) == 64;
    }

    @Override
    protected i a() {
        List list = this.f59479n;
        this.f59480o = list;
        return new f((List) com.google.android.exoplayer2.util.a.e(list));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0064  */
    @Override
    protected void b(m mVar) {
        boolean z10;
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(mVar.f24202c);
        this.f59472g.N(byteBuffer.array(), byteBuffer.limit());
        boolean z11 = false;
        while (true) {
            int iA = this.f59472g.a();
            int i10 = this.f59473h;
            if (iA < i10) {
                break;
            }
            byte bD = i10 == 2 ? (byte) -4 : (byte) this.f59472g.D();
            int iD = this.f59472g.D();
            int iD2 = this.f59472g.D();
            if ((bD & 2) == 0 && (bD & 1) == this.f59474i) {
                byte b10 = (byte) (iD & 127);
                byte b11 = (byte) (iD2 & 127);
                if (b10 != 0 || b11 != 0) {
                    boolean z12 = this.f59483r;
                    if ((bD & 4) == 4) {
                        boolean[] zArr = F;
                        if (zArr[iD] && zArr[iD2]) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                    } else {
                        z10 = false;
                    }
                    this.f59483r = z10;
                    if (!B(z10, b10, b11)) {
                        if (this.f59483r) {
                            G(b10, b11);
                            if (this.f59488w && L(b10)) {
                                if (!v(b10)) {
                                    this.f59478m.e(l(b10));
                                    if ((b11 & 224) != 0) {
                                        this.f59478m.e(l(b11));
                                    }
                                } else if (D(b10, b11)) {
                                    this.f59478m.e(r(b11));
                                } else if (w(b10, b11)) {
                                    this.f59478m.f();
                                    this.f59478m.e(q(b10, b11));
                                } else if (x(b10, b11)) {
                                    s(b11);
                                } else if (z(b10, b11)) {
                                    u(b10, b11);
                                } else if (E(b10, b11)) {
                                    this.f59478m.f59495f = b11 - 32;
                                } else if (y(b10, b11)) {
                                    t(b11);
                                }
                                z11 = true;
                            }
                        } else if (z12) {
                            H();
                            z11 = true;
                        }
                    }
                }
            }
        }
        if (z11) {
            int i11 = this.f59481p;
            if (i11 == 1 || i11 == 3) {
                this.f59479n = n();
                this.f59489x = f();
            }
        }
    }

    @Override
    public m dequeueInputBuffer() {
        return super.dequeueInputBuffer();
    }

    @Override
    public n dequeueOutputBuffer() {
        n nVarE;
        n nVarDequeueOutputBuffer = super.dequeueOutputBuffer();
        if (nVarDequeueOutputBuffer != null) {
            return nVarDequeueOutputBuffer;
        }
        if (!K() || (nVarE = e()) == null) {
            return null;
        }
        this.f59479n = Collections.emptyList();
        this.f59489x = C.TIME_UNSET;
        nVarE.m(f(), a(), Long.MAX_VALUE);
        return nVarE;
    }

    @Override
    public void flush() {
        super.flush();
        this.f59479n = null;
        this.f59480o = null;
        I(0);
        J(4);
        H();
        this.f59483r = false;
        this.f59484s = false;
        this.f59485t = (byte) 0;
        this.f59486u = (byte) 0;
        this.f59487v = 0;
        this.f59488w = true;
        this.f59489x = C.TIME_UNSET;
    }

    @Override
    protected boolean g() {
        return this.f59479n != this.f59480o;
    }

    @Override
    public void queueInputBuffer(m mVar) {
        super.queueInputBuffer(mVar);
    }

    @Override
    public void setPositionUs(long j10) {
        super.setPositionUs(j10);
    }

    @Override
    public void release() {
    }
}
