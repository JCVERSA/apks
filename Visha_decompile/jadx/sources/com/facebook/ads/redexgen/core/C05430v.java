package com.facebook.ads.redexgen.core;

import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.C;
import com.facebook.ads.androidx.media3.common.text.Cue;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.audiotagger.audio.mp3.MPEGFrameHeader;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.mozilla.classfile.ByteCode;

public final class C05430v extends AbstractC07097h {
    public static byte[] A0I;
    public static String[] A0J = {"xyPuKzK0jyL2a", "iL7bHi", "xWOCeVedudZJs", "eDpkr1uq432y6tY7AB6w", "Ypq0mJEh8s3UPXcAK8ds", "IbMgmnX", "KmOfE4b", "2YMQiowZDjtDDRtBYtxBF6amitwY9A2K"};
    public static final int[] A0K;
    public static final int[] A0L;
    public static final int[] A0M;
    public static final int[] A0N;
    public static final int[] A0O;
    public static final int[] A0P;
    public static final int[] A0Q;
    public static final boolean[] A0R;
    public byte A00;
    public byte A01;
    public int A02;
    public int A03;
    public long A05;
    public List<C2263o2> A07;
    public List<C2263o2> A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public final int A0C;
    public final int A0D;
    public final int A0E;
    public final long A0F;
    public final C4J A0G = new C4J();
    public final ArrayList<JA> A0H = new ArrayList<>();
    public JA A06 = new JA(0, 4);
    public int A04 = 0;

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 50);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A0I = new byte[]{10, 44, 40, 127, 121, 113, 13, 44, 42, 38, 45, 44, 59, 90, 125, 101, 114, 127, 122, 119, 51, 112, 123, 114, 125, 125, 118, 127, 61, 51, 87, 118, 117, 114, 102, 127, 103, 122, 125, 116, 51, 103, 124, 51, 80, 80, 34, 61, 7, 22, 22, 10, 15, 5, 7, 18, 15, 9, 8, 73, 30, 75, ByteCode.T_LONG, 22, 82, 75, 5, 3, 7, 75, 80, 86, 94};
    }

    static {
        A09();
        A0M = new int[]{11, 1, 3, 12, 14, 5, 7, 9};
        A0L = new int[]{0, 4, 8, 12, 16, 20, 24, 28};
        A0Q = new int[]{-1, -16711936, -16776961, -16711681, SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -65281};
        A0K = new int[]{32, 33, 34, 35, 36, 37, 38, 39, 40, 41, TranSceneConfig.TSCENE_TYPE_VOICE_ASSISTANT_SMILE, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, IDrmSession.ERROR_SESSION_DRM_PSSHS_NOT_SUPPORT, 241, 9632};
        A0N = new int[]{ByteCode.FRETURN, 176, 189, ByteCode.ATHROW, 8482, 162, 163, 9834, 224, 32, 232, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_BLINK, 234, 238, 244, 251};
        A0O = new int[]{193, 201, IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_NONE, IDrmSession.ERROR_SESSION_DRM_INFO_INVALID, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT, MPEGFrameHeader.SYNC_BIT_ANDSAMPING_BYTE3, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT, IDrmSession.ERROR_SESSION_DRM_LICENSE_URL_EMPTY, 239, IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_ERROR, IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY, 249, 219, ByteCode.LOOKUPSWITCH, 187};
        A0P = new int[]{ByteCode.MONITOREXIT, 227, IDrmSession.ERROR_SESSION_KEY_REQUEST_NULL, IDrmSession.ERROR_SESSION_DRM_NULL, 236, 210, 242, IDrmSession.ERROR_SESSION_PROVISION_ERROR, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES, 165, 164, 9474, ByteCode.MULTIANEWARRAY, 229, IDrmSession.ERROR_SESSION_PROVISION_ERROR_KEYID_INVALID, 248, 9484, 9488, 9492, 9496};
        A0R = new boolean[]{false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    }

    public C05430v(String str, int i, long j) {
        this.A0F = j > 0 ? 1000 * j : -9223372036854775807L;
        this.A0C = A06(48, 25, 84).equals(str) ? 2 : 3;
        switch (i) {
            case 1:
                this.A0D = 0;
                this.A0E = 0;
                break;
            case 2:
                this.A0D = 1;
                this.A0E = 0;
                break;
            case 3:
                this.A0D = 0;
                this.A0E = 1;
                break;
            case 4:
                this.A0D = 1;
                this.A0E = 1;
                break;
            default:
                AnonymousClass44.A07(A06(0, 13, 123), A06(13, 35, 33));
                this.A0D = 0;
                this.A0E = 0;
                break;
        }
        A0E(0);
        A08();
        this.A0A = true;
        this.A05 = C.TIME_UNSET;
    }

    public static char A00(byte b) {
        int index = A0K[(b & 127) - 32];
        return (char) index;
    }

    public static char A01(byte b) {
        int index = A0O[b & 31];
        return (char) index;
    }

    public static char A02(byte b) {
        int index = A0P[b & 31];
        return (char) index;
    }

    public static char A03(byte b) {
        int index = A0N[b & 15];
        return (char) index;
    }

    public static char A04(byte b, byte b2) {
        if ((b & 1) == 0) {
            return A01(b2);
        }
        return A02(b2);
    }

    public static int A05(byte b) {
        return (b >> 3) & 1;
    }

    private List<C2263o2> A07() {
        int iMin = 2;
        int size = this.A0H.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            C2263o2 c2263o2A08 = this.A0H.get(i).A08(Integer.MIN_VALUE);
            arrayList.add(c2263o2A08);
            if (c2263o2A08 != null) {
                int positionAnchor = c2263o2A08.A08;
                iMin = Math.min(iMin, positionAnchor);
            }
        }
        List<Cue> displayCues = new ArrayList<>(size);
        for (int i2 = 0; i2 < size; i2++) {
            C2263o2 c2263o2 = (C2263o2) arrayList.get(i2);
            if (c2263o2 != null) {
                int cueBuilderCount = c2263o2.A08;
                if (cueBuilderCount != iMin) {
                    c2263o2 = (C2263o2) C3M.A01(this.A0H.get(i2).A08(iMin));
                }
                displayCues.add(c2263o2);
            }
        }
        return displayCues;
    }

    private void A08() {
        this.A06.A0C(this.A02);
        this.A0H.clear();
        this.A0H.add(this.A06);
    }

    private void A0A(byte b) {
        this.A06.A0B(' ');
        int style = (b >> 1) & 7;
        this.A06.A0F(style, (b & 1) == 1);
    }

    private void A0B(byte b) {
        switch (b) {
            case 32:
                A0E(2);
                return;
            case 33:
            case 34:
            case 35:
            case 36:
            case 40:
            default:
                if (this.A02 == 0) {
                    return;
                }
                switch (b) {
                    case 33:
                        this.A06.A09();
                        return;
                    case 36:
                    default:
                        return;
                    case 44:
                        this.A07 = Collections.emptyList();
                        if (this.A02 != 1) {
                            int i = this.A02;
                            String[] strArr = A0J;
                            if (strArr[3].length() != strArr[4].length()) {
                                throw new RuntimeException();
                            }
                            String[] strArr2 = A0J;
                            strArr2[6] = "b3deduR";
                            strArr2[5] = "v1SkHRN";
                            if (i != 3) {
                                return;
                            }
                        }
                        A08();
                        return;
                    case 45:
                        int i2 = this.A02;
                        String[] strArr3 = A0J;
                        if (strArr3[0].length() != strArr3[2].length()) {
                            String[] strArr4 = A0J;
                            strArr4[3] = "HCAfJwwR1nZZ2pYCiapM";
                            strArr4[4] = "hVuFMnq3D5R8fxepiPSv";
                            if (i2 != 1) {
                                return;
                            }
                        } else {
                            String[] strArr5 = A0J;
                            strArr5[6] = "UkNz47z";
                            strArr5[5] = "ECTKBDG";
                            if (i2 != 1) {
                                return;
                            }
                        }
                        if (this.A06.A0G()) {
                            return;
                        }
                        this.A06.A0A();
                        return;
                    case 46:
                        A08();
                        return;
                    case 47:
                        this.A07 = A07();
                        if (A0J[1].length() != 6) {
                            throw new RuntimeException();
                        }
                        String[] strArr6 = A0J;
                        strArr6[0] = "wlzHXutwvMVrg";
                        strArr6[2] = "RfwTYRDUxUGrE";
                        A08();
                        return;
                }
            case 37:
                A0E(1);
                String[] strArr7 = A0J;
                if (strArr7[6].length() != strArr7[5].length()) {
                    A0J[7] = "zMKPmeCrWxL39kxcGHJTHFiYR7RUOgb0";
                    A0F(2);
                    return;
                } else {
                    String[] strArr8 = A0J;
                    strArr8[3] = "sWiniOu4qAad1WdM0urN";
                    strArr8[4] = "Trq384lR27iyv87KhrGz";
                    A0F(2);
                    return;
                }
            case 38:
                A0E(1);
                A0F(3);
                return;
            case 39:
                A0E(1);
                A0F(4);
                return;
            case 41:
                A0E(3);
                return;
        }
    }

    private void A0C(byte b, byte b2) {
        int i = A0M[b & 7];
        int row = b2 & 32;
        int row2 = row != 0 ? 1 : 0;
        if (row2 != 0) {
            i++;
        }
        int row3 = this.A06.A03;
        if (i != row3) {
            int row4 = this.A02;
            if (row4 != 1) {
                JA ja = this.A06;
                String[] strArr = A0J;
                String str = strArr[6];
                String str2 = strArr[5];
                int length = str.length();
                int row5 = str2.length();
                if (length != row5) {
                    throw new RuntimeException();
                }
                A0J[7] = "S2lulK2aovW1jS0uX55S7WO6vUVtsAxG";
                if (!ja.A0G()) {
                    this.A06 = new JA(this.A02, this.A03);
                    this.A0H.add(this.A06);
                }
            }
            this.A06.A03 = i;
        }
        int cursorOrStyle = (b2 & 16) == 16 ? 1 : 0;
        int row6 = b2 & 1;
        boolean isCursor = row6 == 1;
        int row7 = b2 >> 1;
        int i2 = row7 & 7;
        JA ja2 = this.A06;
        int row8 = cursorOrStyle != 0 ? 8 : i2;
        ja2.A0F(row8, isCursor);
        if (cursorOrStyle != 0) {
            JA ja3 = this.A06;
            int row9 = A0L[i2];
            ja3.A02 = row9;
        }
    }

    private void A0D(byte b, byte b2) {
        if (A0L(b)) {
            this.A0A = false;
        }
        if (!A0K(b)) {
            return;
        }
        switch (b2) {
            case 32:
            case 37:
            case 38:
            case 39:
            case 41:
            case 47:
                this.A0A = true;
                break;
            case 42:
            case 43:
                this.A0A = false;
                break;
        }
    }

    private void A0E(int i) {
        if (this.A02 == i) {
            return;
        }
        int i2 = this.A02;
        this.A02 = i;
        if (i == 3) {
            for (int i3 = 0; i3 < oldCaptionMode; i3++) {
                this.A0H.get(i3).A0D(i);
            }
            return;
        }
        A08();
        if (i2 == 3 || i == 1 || i == 0) {
            this.A07 = Collections.emptyList();
        }
    }

    private void A0F(int i) {
        this.A03 = i;
        this.A06.A0E(i);
    }

    private boolean A0G() {
        return (this.A0F == C.TIME_UNSET || this.A05 == C.TIME_UNSET || A0V() - this.A05 < this.A0F) ? false : true;
    }

    private boolean A0H(byte b) {
        if (A0I(b)) {
            this.A04 = A05(b);
        }
        return this.A04 == this.A0D;
    }

    public static boolean A0I(byte b) {
        return (b & 224) == 0;
    }

    public static boolean A0J(byte b) {
        return (b & 240) == 16;
    }

    public static boolean A0K(byte b) {
        return (b & 247) == 20;
    }

    public static boolean A0L(byte b) {
        return 1 <= b && b <= 15;
    }

    public static boolean A0M(byte b, byte b2) {
        return (b & 246) == 18 && (b2 & 224) == 32;
    }

    public static boolean A0N(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 32;
    }

    public static boolean A0O(byte b, byte b2) {
        return (b & 246) == 20 && (b2 & 240) == 32;
    }

    public static boolean A0P(byte b, byte b2) {
        return (b & 240) == 16 && (b2 & 192) == 64;
    }

    public static boolean A0Q(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 48;
    }

    public static boolean A0R(byte b, byte b2) {
        if ((b & 247) == 23) {
            String[] strArr = A0J;
            if (strArr[0].length() == strArr[2].length()) {
                A0J[7] = "7sgcSwZzVixk1cNRVVtuUYOxON5VA7NQ";
                if (b2 >= 33) {
                    if (A0J[7].charAt(24) != '4') {
                        A0J[1] = "zvE6QP";
                        if (b2 <= 35) {
                            return true;
                        }
                    }
                }
            }
            throw new RuntimeException();
        }
        return false;
    }

    private boolean A0S(boolean z, byte b, byte b2) {
        if (z && A0J(b)) {
            if (this.A0B && this.A00 == b && this.A01 == b2) {
                this.A0B = false;
                return true;
            }
            this.A0B = true;
            this.A00 = b;
            this.A01 = b2;
        } else {
            this.A0B = false;
        }
        return false;
    }

    @Override
    public final C07117j A5j() throws C2050kM {
        return super.A5j();
    }

    @Override
    public final AbstractC07107i A5l() throws C2050kM {
        AbstractC07107i abstractC07107iA0Y;
        AbstractC07107i outputBuffer = super.A5l();
        if (outputBuffer != null) {
            return outputBuffer;
        }
        if (A0G() && (abstractC07107iA0Y = A0Y()) != null) {
            this.A07 = Collections.emptyList();
            this.A05 = C.TIME_UNSET;
            abstractC07107iA0Y.A0C(A0V(), A0Z(), Long.MAX_VALUE);
            return abstractC07107iA0Y;
        }
        return null;
    }

    @Override
    public final C2046kI A0Z() {
        this.A08 = this.A07;
        return new C2046kI((List) C3M.A01(this.A07));
    }

    @Override
    public final void AGZ(C07117j c07117j) throws C2050kM {
        super.AGZ(c07117j);
    }

    @Override
    public final void A0b(C07117j c07117j) {
        ByteBuffer subtitleData = (ByteBuffer) C3M.A01(c07117j.A02);
        this.A0G.A0j(subtitleData.array(), subtitleData.limit());
        boolean z = false;
        while (true) {
            if (this.A0G.A07() >= this.A0C) {
                byte bA0I = this.A0C == 2 ? (byte) -4 : (byte) this.A0G.A0I();
                int iA0I = this.A0G.A0I();
                int iA0I2 = this.A0G.A0I();
                if ((bA0I & 2) == 0 && (bA0I & 1) == this.A0E) {
                    byte b = (byte) (iA0I & 127);
                    byte ccHeader = (byte) (iA0I2 & 127);
                    if (b != 0 || ccHeader != 0) {
                        boolean z2 = this.A09;
                        this.A09 = (bA0I & 4) == 4 && A0R[iA0I] && A0R[iA0I2];
                        if (A0S(this.A09, b, ccHeader)) {
                            continue;
                        } else if (!this.A09) {
                            if (z2) {
                                A08();
                                String[] strArr = A0J;
                                if (strArr[0].length() != strArr[2].length()) {
                                    throw new RuntimeException();
                                }
                                String[] strArr2 = A0J;
                                strArr2[3] = "7LYQsBtV1mB8cg17zlGC";
                                strArr2[4] = "4QeECkpa3Q5V1bGzM4Sw";
                                z = true;
                            } else {
                                continue;
                            }
                        } else {
                            A0D(b, ccHeader);
                            if (this.A0A && A0H(b)) {
                                if (A0I(b)) {
                                    if (A0Q(b, ccHeader)) {
                                        this.A06.A0B(A03(ccHeader));
                                    } else if (A0M(b, ccHeader)) {
                                        this.A06.A09();
                                        this.A06.A0B(A04(b, ccHeader));
                                    } else if (A0N(b, ccHeader)) {
                                        A0A(ccHeader);
                                    } else if (A0P(b, ccHeader)) {
                                        A0C(b, ccHeader);
                                    } else if (!A0R(b, ccHeader)) {
                                        if (A0O(b, ccHeader)) {
                                            A0B(ccHeader);
                                        }
                                    } else {
                                        this.A06.A04 = ccHeader - 32;
                                    }
                                } else {
                                    this.A06.A0B(A00(b));
                                    if ((ccHeader & 224) != 0) {
                                        this.A06.A0B(A00(ccHeader));
                                    }
                                }
                                z = true;
                            }
                        }
                    }
                }
            } else {
                if (z) {
                    if (this.A02 == 1 || this.A02 == 3) {
                        this.A07 = A07();
                        this.A05 = A0V();
                        return;
                    }
                    return;
                }
                return;
            }
        }
    }

    @Override
    public final boolean A0d() {
        return this.A07 != this.A08;
    }

    @Override
    public final void AGr() {
    }

    @Override
    public final void AIx(long j) {
        super.AIx(j);
    }

    @Override
    public final void flush() {
        super.flush();
        this.A07 = null;
        this.A08 = null;
        A0E(0);
        A0F(4);
        A08();
        this.A09 = false;
        this.A0B = false;
        this.A00 = (byte) 0;
        this.A01 = (byte) 0;
        this.A04 = 0;
        this.A0A = true;
        this.A05 = C.TIME_UNSET;
    }
}
