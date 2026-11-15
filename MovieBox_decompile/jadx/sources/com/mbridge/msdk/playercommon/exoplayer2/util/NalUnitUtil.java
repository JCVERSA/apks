package com.mbridge.msdk.playercommon.exoplayer2.util;

import android.util.Log;
import java.nio.ByteBuffer;
import java.util.Arrays;

public final class NalUnitUtil {
    public static final int EXTENDED_SAR = 255;
    private static final int H264_NAL_UNIT_TYPE_SEI = 6;
    private static final int H264_NAL_UNIT_TYPE_SPS = 7;
    private static final int H265_NAL_UNIT_TYPE_PREFIX_SEI = 39;
    private static final String TAG = "NalUnitUtil";
    public static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    public static final float[] ASPECT_RATIO_IDC_VALUES = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object scratchEscapePositionsLock = new Object();
    private static int[] scratchEscapePositions = new int[10];

    public static final class PpsData {
        public final boolean bottomFieldPicOrderInFramePresentFlag;
        public final int picParameterSetId;
        public final int seqParameterSetId;

        public PpsData(int i10, int i11, boolean z10) {
            this.picParameterSetId = i10;
            this.seqParameterSetId = i11;
            this.bottomFieldPicOrderInFramePresentFlag = z10;
        }
    }

    public static final class SpsData {
        public final boolean deltaPicOrderAlwaysZeroFlag;
        public final boolean frameMbsOnlyFlag;
        public final int frameNumLength;
        public final int height;
        public final int picOrderCntLsbLength;
        public final int picOrderCountType;
        public final float pixelWidthAspectRatio;
        public final boolean separateColorPlaneFlag;
        public final int seqParameterSetId;
        public final int width;

        public SpsData(int i10, int i11, int i12, float f10, boolean z10, boolean z11, int i13, int i14, int i15, boolean z12) {
            this.seqParameterSetId = i10;
            this.width = i11;
            this.height = i12;
            this.pixelWidthAspectRatio = f10;
            this.separateColorPlaneFlag = z10;
            this.frameMbsOnlyFlag = z11;
            this.frameNumLength = i13;
            this.picOrderCountType = i14;
            this.picOrderCntLsbLength = i15;
            this.deltaPicOrderAlwaysZeroFlag = z12;
        }
    }

    private NalUnitUtil() {
    }

    public static void clearPrefixFlags(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static void discardToSps(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = i10 + 1;
            if (i12 >= iPosition) {
                byteBuffer.clear();
                return;
            }
            int i13 = byteBuffer.get(i10) & 255;
            if (i11 == 3) {
                if (i13 == 1 && (byteBuffer.get(i12) & 31) == 7) {
                    ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                    byteBufferDuplicate.position(i10 - 3);
                    byteBufferDuplicate.limit(iPosition);
                    byteBuffer.position(0);
                    byteBuffer.put(byteBufferDuplicate);
                    return;
                }
            } else if (i13 == 0) {
                i11++;
            }
            if (i13 != 0) {
                i11 = 0;
            }
            i10 = i12;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0093, code lost:
    
        r9 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int findNalUnit(byte[] bArr, int i10, int i11, boolean[] zArr) {
        int i12 = i11 - i10;
        Assertions.checkState(i12 >= 0);
        if (i12 == 0) {
            return i11;
        }
        if (zArr != null) {
            if (zArr[0]) {
                clearPrefixFlags(zArr);
                return i10 - 3;
            }
            if (i12 > 1 && zArr[1] && bArr[i10] == 1) {
                clearPrefixFlags(zArr);
                return i10 - 2;
            }
            if (i12 > 2 && zArr[2] && bArr[i10] == 0 && bArr[i10 + 1] == 1) {
                clearPrefixFlags(zArr);
                return i10 - 1;
            }
        }
        int i13 = i11 - 1;
        int i14 = i10 + 2;
        while (i14 < i13) {
            byte b10 = bArr[i14];
            if ((b10 & 254) == 0) {
                int i15 = i14 - 2;
                if (bArr[i15] == 0 && bArr[i14 - 1] == 0 && b10 == 1) {
                    if (zArr != null) {
                        clearPrefixFlags(zArr);
                    }
                    return i15;
                }
                i14 -= 2;
            }
            i14 += 3;
        }
        if (zArr != null) {
            boolean z10 = i12 > 2 ? false : false;
            zArr[0] = z10;
            zArr[1] = i12 <= 1 ? zArr[2] && bArr[i13] == 0 : bArr[i11 + (-2)] == 0 && bArr[i13] == 0;
            zArr[2] = bArr[i13] == 0;
        }
        return i11;
    }

    private static int findNextUnescapeIndex(byte[] bArr, int i10, int i11) {
        while (i10 < i11 - 2) {
            if (bArr[i10] == 0 && bArr[i10 + 1] == 0 && bArr[i10 + 2] == 3) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static int getH265NalUnitType(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 126) >> 1;
    }

    public static int getNalUnitType(byte[] bArr, int i10) {
        return bArr[i10 + 3] & 31;
    }

    public static boolean isNalUnitSei(String str, byte b10) {
        if (MimeTypes.VIDEO_H264.equals(str) && (b10 & 31) == 6) {
            return true;
        }
        return MimeTypes.VIDEO_H265.equals(str) && ((b10 & 126) >> 1) == 39;
    }

    public static PpsData parsePpsNalUnit(byte[] bArr, int i10, int i11) {
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i10, i11);
        parsableNalUnitBitArray.skipBits(8);
        int unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int unsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.skipBit();
        return new PpsData(unsignedExpGolombCodedInt, unsignedExpGolombCodedInt2, parsableNalUnitBitArray.readBit());
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:63:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:66:0x0100  */
    /* JADX WARN: Code duplicated, block: B:68:0x0104  */
    /* JADX WARN: Code duplicated, block: B:86:0x0158  */
    public static SpsData parseSpsNalUnit(byte[] bArr, int i10, int i11) {
        int unsignedExpGolombCodedInt;
        boolean z10;
        int unsignedExpGolombCodedInt2;
        boolean z11;
        boolean bit;
        int i12;
        int i13;
        int i14;
        float f10;
        float f11;
        int i15;
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i10, i11);
        parsableNalUnitBitArray.skipBits(8);
        int bits = parsableNalUnitBitArray.readBits(8);
        parsableNalUnitBitArray.skipBits(16);
        int unsignedExpGolombCodedInt3 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int i16 = 1;
        if (bits == 100 || bits == 110 || bits == 122 || bits == 244 || bits == 44 || bits == 83 || bits == 86 || bits == 118 || bits == 128 || bits == 138) {
            unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            boolean bit2 = unsignedExpGolombCodedInt == 3 ? parsableNalUnitBitArray.readBit() : false;
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.skipBit();
            if (parsableNalUnitBitArray.readBit()) {
                int i17 = unsignedExpGolombCodedInt != 3 ? 8 : 12;
                int i18 = 0;
                while (i18 < i17) {
                    if (parsableNalUnitBitArray.readBit()) {
                        skipScalingList(parsableNalUnitBitArray, i18 < 6 ? 16 : 64);
                    }
                    i18++;
                }
            }
            z10 = bit2;
        } else {
            unsignedExpGolombCodedInt = 1;
            z10 = false;
        }
        int unsignedExpGolombCodedInt4 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 4;
        int unsignedExpGolombCodedInt5 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        if (unsignedExpGolombCodedInt5 != 0) {
            if (unsignedExpGolombCodedInt5 == 1) {
                boolean bit3 = parsableNalUnitBitArray.readBit();
                parsableNalUnitBitArray.readSignedExpGolombCodedInt();
                parsableNalUnitBitArray.readSignedExpGolombCodedInt();
                long unsignedExpGolombCodedInt6 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                z10 = z10;
                for (int i19 = 0; i19 < unsignedExpGolombCodedInt6; i19++) {
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                }
                z11 = bit3;
                unsignedExpGolombCodedInt2 = 0;
            } else {
                unsignedExpGolombCodedInt2 = 0;
            }
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.skipBit();
            int unsignedExpGolombCodedInt7 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1;
            int unsignedExpGolombCodedInt8 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1;
            bit = parsableNalUnitBitArray.readBit();
            i12 = 2 - (bit ? 1 : 0);
            int i20 = unsignedExpGolombCodedInt8 * i12;
            if (!bit) {
                parsableNalUnitBitArray.skipBit();
            }
            parsableNalUnitBitArray.skipBit();
            i13 = unsignedExpGolombCodedInt7 * 16;
            i14 = i20 * 16;
            if (parsableNalUnitBitArray.readBit()) {
                int unsignedExpGolombCodedInt9 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                int unsignedExpGolombCodedInt10 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                int unsignedExpGolombCodedInt11 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                int unsignedExpGolombCodedInt12 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                if (unsignedExpGolombCodedInt != 0) {
                    if (unsignedExpGolombCodedInt == 3) {
                        i15 = 1;
                    } else {
                        i15 = 2;
                    }
                    i12 *= unsignedExpGolombCodedInt == 1 ? 2 : 1;
                    i16 = i15;
                }
                i13 -= (unsignedExpGolombCodedInt9 + unsignedExpGolombCodedInt10) * i16;
                i14 -= (unsignedExpGolombCodedInt11 + unsignedExpGolombCodedInt12) * i12;
            }
            int i21 = i13;
            int i22 = i14;
            if (parsableNalUnitBitArray.readBit() || !parsableNalUnitBitArray.readBit()) {
                f10 = 1.0f;
                f11 = f10;
            } else {
                int bits2 = parsableNalUnitBitArray.readBits(8);
                if (bits2 == 255) {
                    int bits3 = parsableNalUnitBitArray.readBits(16);
                    int bits4 = parsableNalUnitBitArray.readBits(16);
                    if (bits3 != 0 && bits4 != 0) {
                        f11 = bits3 / bits4;
                    }
                } else {
                    float[] fArr = ASPECT_RATIO_IDC_VALUES;
                    if (bits2 < fArr.length) {
                        f10 = fArr[bits2];
                    } else {
                        Log.w(TAG, "Unexpected aspect_ratio_idc value: " + bits2);
                    }
                    f11 = f10;
                }
                f10 = 1.0f;
                f11 = f10;
            }
            return new SpsData(unsignedExpGolombCodedInt3, i21, i22, f11, z10, bit, unsignedExpGolombCodedInt4, unsignedExpGolombCodedInt5, unsignedExpGolombCodedInt2, z11);
        }
        unsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 4;
        z11 = false;
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.skipBit();
        int unsignedExpGolombCodedInt13 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1;
        int unsignedExpGolombCodedInt14 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1;
        bit = parsableNalUnitBitArray.readBit();
        i12 = 2 - (bit ? 1 : 0);
        int i23 = unsignedExpGolombCodedInt14 * i12;
        if (!bit) {
            parsableNalUnitBitArray.skipBit();
        }
        parsableNalUnitBitArray.skipBit();
        i13 = unsignedExpGolombCodedInt13 * 16;
        i14 = i23 * 16;
        if (parsableNalUnitBitArray.readBit()) {
            int unsignedExpGolombCodedInt15 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt16 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt17 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt18 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            if (unsignedExpGolombCodedInt != 0) {
                if (unsignedExpGolombCodedInt == 3) {
                    i15 = 1;
                } else {
                    i15 = 2;
                }
                i12 *= unsignedExpGolombCodedInt == 1 ? 2 : 1;
                i16 = i15;
            }
            i13 -= (unsignedExpGolombCodedInt15 + unsignedExpGolombCodedInt16) * i16;
            i14 -= (unsignedExpGolombCodedInt17 + unsignedExpGolombCodedInt18) * i12;
        }
        int i24 = i13;
        int i25 = i14;
        if (parsableNalUnitBitArray.readBit()) {
            f10 = 1.0f;
            f11 = f10;
        } else {
            f10 = 1.0f;
            f11 = f10;
        }
        return new SpsData(unsignedExpGolombCodedInt3, i24, i25, f11, z10, bit, unsignedExpGolombCodedInt4, unsignedExpGolombCodedInt5, unsignedExpGolombCodedInt2, z11);
    }

    private static void skipScalingList(ParsableNalUnitBitArray parsableNalUnitBitArray, int i10) {
        int signedExpGolombCodedInt = 8;
        int i11 = 8;
        for (int i12 = 0; i12 < i10; i12++) {
            if (signedExpGolombCodedInt != 0) {
                signedExpGolombCodedInt = ((parsableNalUnitBitArray.readSignedExpGolombCodedInt() + i11) + 256) % 256;
            }
            if (signedExpGolombCodedInt != 0) {
                i11 = signedExpGolombCodedInt;
            }
        }
    }

    public static int unescapeStream(byte[] bArr, int i10) {
        int i11;
        synchronized (scratchEscapePositionsLock) {
            int iFindNextUnescapeIndex = 0;
            int i12 = 0;
            while (iFindNextUnescapeIndex < i10) {
                try {
                    iFindNextUnescapeIndex = findNextUnescapeIndex(bArr, iFindNextUnescapeIndex, i10);
                    if (iFindNextUnescapeIndex < i10) {
                        int[] iArr = scratchEscapePositions;
                        if (iArr.length <= i12) {
                            scratchEscapePositions = Arrays.copyOf(iArr, iArr.length * 2);
                        }
                        scratchEscapePositions[i12] = iFindNextUnescapeIndex;
                        iFindNextUnescapeIndex += 3;
                        i12++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            i11 = i10 - i12;
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < i12; i15++) {
                int i16 = scratchEscapePositions[i15] - i13;
                System.arraycopy(bArr, i13, bArr, i14, i16);
                int i17 = i14 + i16;
                int i18 = i17 + 1;
                bArr[i17] = 0;
                i14 = i17 + 2;
                bArr[i18] = 0;
                i13 += i16 + 3;
            }
            System.arraycopy(bArr, i13, bArr, i14, i11 - i14);
        }
        return i11;
    }
}
