package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.container.NalUnitUtil;
import java.util.Collections;
import java.util.List;

@UnstableApi
public final class HevcConfig {
    public final int bitdepthChroma;
    public final int bitdepthLuma;

    @Nullable
    public final String codecs;
    public final int colorRange;
    public final int colorSpace;
    public final int colorTransfer;
    public final int height;
    public final List<byte[]> initializationData;
    public final int maxNumReorderPics;
    public final int maxSubLayers;
    public final int nalUnitLengthFieldLength;
    public final float pixelWidthHeightRatio;
    public final int stereoMode;

    @Nullable
    public final NalUnitUtil.H265VpsData vpsData;
    public final int width;

    private HevcConfig(List<byte[]> list, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, float f, int i11, @Nullable String str, @Nullable NalUnitUtil.H265VpsData h265VpsData) {
        this.initializationData = list;
        this.nalUnitLengthFieldLength = i;
        this.maxSubLayers = i2;
        this.width = i3;
        this.height = i4;
        this.bitdepthLuma = i5;
        this.bitdepthChroma = i6;
        this.colorSpace = i7;
        this.colorRange = i8;
        this.colorTransfer = i9;
        this.stereoMode = i10;
        this.pixelWidthHeightRatio = f;
        this.maxNumReorderPics = i11;
        this.codecs = str;
        this.vpsData = h265VpsData;
    }

    public static HevcConfig parse(ParsableByteArray parsableByteArray) throws ParserException {
        return parseImpl(parsableByteArray, false, null);
    }

    private static HevcConfig parseImpl(ParsableByteArray parsableByteArray, boolean z, @Nullable NalUnitUtil.H265VpsData h265VpsData) throws ParserException {
        int i;
        NalUnitUtil.H265Sei3dRefDisplayInfoData h265Sei3dRefDisplayInfo;
        try {
            if (z) {
                parsableByteArray.skipBytes(4);
            } else {
                parsableByteArray.skipBytes(21);
            }
            int unsignedByte = parsableByteArray.readUnsignedByte() & 3;
            int unsignedByte2 = parsableByteArray.readUnsignedByte();
            int position = parsableByteArray.getPosition();
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < unsignedByte2; i4++) {
                parsableByteArray.skipBytes(1);
                int unsignedShort = parsableByteArray.readUnsignedShort();
                for (int i5 = 0; i5 < unsignedShort; i5++) {
                    int unsignedShort2 = parsableByteArray.readUnsignedShort();
                    i3 += unsignedShort2 + 4;
                    parsableByteArray.skipBytes(unsignedShort2);
                }
            }
            parsableByteArray.setPosition(position);
            byte[] bArr = new byte[i3];
            NalUnitUtil.H265VpsData h265VpsData2 = h265VpsData;
            int i6 = -1;
            int i7 = -1;
            int i8 = -1;
            int i9 = -1;
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            float f = 1.0f;
            String strBuildHevcCodecString = null;
            int i16 = 0;
            int i17 = 0;
            while (i16 < unsignedByte2) {
                int unsignedByte3 = parsableByteArray.readUnsignedByte() & 63;
                int unsignedShort3 = parsableByteArray.readUnsignedShort();
                int i18 = i2;
                NalUnitUtil.H265VpsData h265VpsNalUnit = h265VpsData2;
                while (i18 < unsignedShort3) {
                    int unsignedShort4 = parsableByteArray.readUnsignedShort();
                    byte[] bArr2 = NalUnitUtil.NAL_START_CODE;
                    int i19 = unsignedByte2;
                    System.arraycopy(bArr2, i2, bArr, i17, bArr2.length);
                    int length = i17 + bArr2.length;
                    System.arraycopy(parsableByteArray.getData(), parsableByteArray.getPosition(), bArr, length, unsignedShort4);
                    if (unsignedByte3 == 32 && i18 == 0) {
                        h265VpsNalUnit = NalUnitUtil.parseH265VpsNalUnit(bArr, length, length + unsignedShort4);
                        i = i2;
                        unsignedShort3 = unsignedShort3;
                    } else if (unsignedByte3 == 33 && i18 == 0) {
                        NalUnitUtil.H265SpsData h265SpsNalUnit = NalUnitUtil.parseH265SpsNalUnit(bArr, length, length + unsignedShort4, h265VpsNalUnit);
                        int i20 = h265SpsNalUnit.maxSubLayersMinus1 + 1;
                        int i21 = h265SpsNalUnit.width;
                        int i22 = h265SpsNalUnit.height;
                        i9 = h265SpsNalUnit.bitDepthLumaMinus8 + 8;
                        i10 = h265SpsNalUnit.bitDepthChromaMinus8 + 8;
                        int i23 = h265SpsNalUnit.colorSpace;
                        int i24 = h265SpsNalUnit.colorRange;
                        int i25 = h265SpsNalUnit.colorTransfer;
                        float f2 = h265SpsNalUnit.pixelWidthHeightRatio;
                        int i26 = h265SpsNalUnit.maxNumReorderPics;
                        NalUnitUtil.H265ProfileTierLevel h265ProfileTierLevel = h265SpsNalUnit.profileTierLevel;
                        if (h265ProfileTierLevel != null) {
                            strBuildHevcCodecString = CodecSpecificDataUtil.buildHevcCodecString(h265ProfileTierLevel.generalProfileSpace, h265ProfileTierLevel.generalTierFlag, h265ProfileTierLevel.generalProfileIdc, h265ProfileTierLevel.generalProfileCompatibilityFlags, h265ProfileTierLevel.constraintBytes, h265ProfileTierLevel.generalLevelIdc);
                        }
                        i6 = i20;
                        i7 = i21;
                        i = 0;
                        i11 = i23;
                        i8 = i22;
                        i15 = i26;
                        f = f2;
                        i13 = i25;
                        i12 = i24;
                    } else {
                        unsignedShort3 = unsignedShort3;
                        if (unsignedByte3 != 39 || i18 != 0 || (h265Sei3dRefDisplayInfo = NalUnitUtil.parseH265Sei3dRefDisplayInfo(bArr, length, length + unsignedShort4)) == null || h265VpsNalUnit == null) {
                            i = 0;
                        } else {
                            i = 0;
                            i14 = h265Sei3dRefDisplayInfo.leftViewId == h265VpsNalUnit.layerInfos.get(0).viewId ? 4 : 5;
                        }
                    }
                    i17 = length + unsignedShort4;
                    parsableByteArray.skipBytes(unsignedShort4);
                    i18++;
                    i2 = i;
                    unsignedByte2 = i19;
                    unsignedShort3 = unsignedShort3;
                }
                i16++;
                h265VpsData2 = h265VpsNalUnit;
            }
            return new HevcConfig(i3 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), unsignedByte + 1, i6, i7, i8, i9, i10, i11, i12, i13, i14, f, i15, strBuildHevcCodecString, h265VpsData2);
        } catch (ArrayIndexOutOfBoundsException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("Error parsing");
            sb.append(z ? "L-HEVC config" : "HEVC config");
            throw ParserException.createForMalformedContainer(sb.toString(), e);
        }
    }

    public static HevcConfig parseLayered(ParsableByteArray parsableByteArray, NalUnitUtil.H265VpsData h265VpsData) throws ParserException {
        return parseImpl(parsableByteArray, true, h265VpsData);
    }
}
