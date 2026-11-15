package androidx.media3.muxer;

import android.media.MediaCodec;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Util;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4LocationData;
import androidx.media3.container.Mp4TimestampData;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.container.XmpData;
import com.google.android.material.internal.ViewUtils;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.primitives.Bytes;
import com.google.common.primitives.Ints;
import com.transsion.audiotagger.audio.mp3.MPEGFrameHeader;
import com.transsion.socket.pkgdata.SocketData;
import defpackage.v55;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.mozilla.classfile.ByteCode;
import org.mozilla.classfile.ClassFileWriter;

final class Boxes {
    public static final int BOX_HEADER_SIZE = 8;
    private static final int BYTES_PER_INTEGER = 4;
    public static final int LARGE_SIZE_BOX_HEADER_SIZE = 16;
    private static final int MAX_FIXED_LEAF_BOX_SIZE = 200;
    public static final int MFHD_BOX_CONTENT_SIZE = 8;
    private static final long MVHD_TIMEBASE = 10000;
    public static final int TFHD_BOX_CONTENT_SIZE = 16;
    private static final int TRUN_BOX_NON_SYNC_SAMPLE_FLAGS = 16842752;
    private static final int TRUN_BOX_SYNC_SAMPLE_FLAGS = 33554432;
    public static final ImmutableList<Byte> XMP_UUID = ImmutableList.of((byte) -66, (byte) 122, (byte) -49, (byte) -53, (byte) -105, (byte) -87, (byte) 66, (byte) -24, (byte) -100, (byte) 113, (byte) -103, (byte) -108, (byte) -111, (byte) -29, (byte) -81, (byte) -84);

    private Boxes() {
    }

    private static ByteBuffer apvCBox(Format format) {
        Assertions.checkArgument(!format.initializationData.isEmpty(), "csd-0 is not found in the format for avpC box");
        byte[] bArr = format.initializationData.get(0);
        Assertions.checkArgument(bArr.length > 0, "csd-0 is empty for avpC box.");
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length + 4);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.put(bArr);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("apvC", byteBufferAllocate);
    }

    public static ByteBuffer audioSampleEntry(Format format) {
        String strCodecSpecificFourcc = codecSpecificFourcc(format);
        ByteBuffer byteBufferCodecSpecificBox = codecSpecificBox(format);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBufferCodecSpecificBox.remaining() + 200);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putShort((short) 1);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putShort((short) format.channelCount);
        byteBufferAllocate.putShort((short) 16);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putInt(format.sampleRate << 16);
        byteBufferAllocate.put(byteBufferCodecSpecificBox);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox(strCodecSpecificFourcc, byteBufferAllocate);
    }

    private static ByteBuffer av1CBox(Format format) {
        Assertions.checkArgument(!format.initializationData.isEmpty(), "csd-0 is not found in the format for av1C box");
        byte[] bArr = format.initializationData.get(0);
        Assertions.checkArgument(bArr.length > 0, "csd-0 is empty for av1C box.");
        return BoxUtils.wrapIntoBox("av1C", ByteBuffer.wrap(bArr));
    }

    private static ByteBuffer avcCBox(Format format) {
        Assertions.checkArgument(format.initializationData.size() >= 2, "csd-0 and/or csd-1 not found in the format for avcC box.");
        byte[] bArr = format.initializationData.get(0);
        Assertions.checkArgument(bArr.length > 0, "csd-0 is empty for avcC box.");
        byte[] bArr2 = format.initializationData.get(1);
        Assertions.checkArgument(bArr2.length > 0, "csd-1 is empty for avcC box.");
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(bArr2);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBufferWrap.limit() + byteBufferWrap2.limit() + 200);
        byteBufferAllocate.put((byte) 1);
        ImmutableList<ByteBuffer> immutableListFindNalUnits = AnnexBUtils.findNalUnits(byteBufferWrap);
        Assertions.checkArgument(immutableListFindNalUnits.size() == 1, "SPS data not found in csd0 for avcC box.");
        ByteBuffer byteBuffer = immutableListFindNalUnits.get(0);
        int iRemaining = byteBuffer.remaining();
        byte[] bArr3 = new byte[iRemaining];
        byteBuffer.get(bArr3);
        byteBuffer.rewind();
        NalUnitUtil.SpsData spsNalUnit = NalUnitUtil.parseSpsNalUnit(bArr3, 0, iRemaining);
        byteBufferAllocate.put((byte) spsNalUnit.profileIdc);
        byteBufferAllocate.put((byte) spsNalUnit.constraintsFlagsAndReservedZero2Bits);
        byteBufferAllocate.put((byte) spsNalUnit.levelIdc);
        byteBufferAllocate.put((byte) -1);
        byteBufferAllocate.put((byte) -31);
        byteBufferAllocate.putShort((short) byteBuffer.remaining());
        byteBufferAllocate.put(byteBuffer);
        byteBuffer.rewind();
        ImmutableList<ByteBuffer> immutableListFindNalUnits2 = AnnexBUtils.findNalUnits(byteBufferWrap2);
        Assertions.checkState(immutableListFindNalUnits2.size() == 1, "PPS data not found in csd1.");
        byteBufferAllocate.put((byte) 1);
        ByteBuffer byteBuffer2 = immutableListFindNalUnits2.get(0);
        byteBufferAllocate.putShort((short) byteBuffer2.remaining());
        byteBufferAllocate.put(byteBuffer2);
        byteBuffer2.rewind();
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("avcC", byteBufferAllocate);
    }

    private static String bcp47LanguageTagToIso3(String str) {
        if (str == null) {
            return null;
        }
        Locale localeForLanguageTag = Locale.forLanguageTag(str);
        return localeForLanguageTag.getISO3Language().isEmpty() ? str : localeForLanguageTag.getISO3Language();
    }

    public static List<Integer> calculateSampleCompositionTimeOffsets(List<MediaCodec.BufferInfo> list, List<Integer> list2, int i) {
        List<MediaCodec.BufferInfo> list3 = list;
        ArrayList arrayList = new ArrayList(list.size());
        if (list.isEmpty()) {
            return arrayList;
        }
        boolean z = false;
        long j = list3.get(0).presentationTimeUs;
        long jIntValue = 0;
        int i2 = 0;
        boolean z2 = false;
        long j2 = 0;
        while (i2 < list.size()) {
            long j3 = list3.get(i2).presentationTimeUs - j;
            long jVuFromUs = vuFromUs(j3, i) - jIntValue;
            if (jVuFromUs <= 2147483647L) {
                z = true;
            }
            Assertions.checkState(z, "Only 32-bit composition offset is allowed");
            long j4 = j;
            jIntValue += (long) list2.get(i2).intValue();
            arrayList.add(Integer.valueOf((int) jVuFromUs));
            if (j3 < j2) {
                z2 = true;
            }
            i2++;
            list3 = list;
            j2 = j3;
            j = j4;
            z = false;
        }
        if (!z2) {
            arrayList.clear();
        }
        return arrayList;
    }

    public static ByteBuffer co64(List<Long> list) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((list.size() * 8) + 8);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(list.size());
        for (int i = 0; i < list.size(); i++) {
            byteBufferAllocate.putLong(list.get(i).longValue());
        }
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("co64", byteBufferAllocate);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static ByteBuffer codecSpecificBox(Format format) {
        String str = (String) Assertions.checkNotNull(format.sampleMimeType);
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    b = 0;
                }
                break;
            case -1662735862:
                if (str.equals(MimeTypes.VIDEO_AV1)) {
                    b = 1;
                }
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    b = 2;
                }
                break;
            case -1606874997:
                if (str.equals("audio/amr-wb")) {
                    b = 3;
                }
                break;
            case -1003765268:
                if (str.equals("audio/vorbis")) {
                    b = 4;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    b = 5;
                }
                break;
            case 187094639:
                if (str.equals("audio/raw")) {
                    b = 6;
                }
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    b = 7;
                }
                break;
            case 1331836563:
                if (str.equals(MimeTypes.VIDEO_APV)) {
                    b = 8;
                }
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    b = 9;
                }
                break;
            case 1503095341:
                if (str.equals("audio/3gpp")) {
                    b = 10;
                }
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    b = ByteCode.T_LONG;
                }
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    b = 12;
                }
                break;
        }
        switch (b) {
            case 0:
                return d263Box(format);
            case 1:
                return av1CBox(format);
            case 2:
                return hvcCBox(format);
            case 3:
                return damrBox((short) -31745);
            case 4:
            case 5:
                return esdsBox(format);
            case 6:
                return ByteBuffer.allocate(0);
            case 7:
                return esdsBox(format);
            case 8:
                return apvCBox(format);
            case 9:
                return avcCBox(format);
            case 10:
                return damrBox((short) -32257);
            case 11:
                return dOpsBox(format);
            case 12:
                return vpcCBox(format);
            default:
                throw new IllegalArgumentException("Unsupported format: " + str);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static String codecSpecificFourcc(Format format) {
        String str = (String) Assertions.checkNotNull(format.sampleMimeType);
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    b = 0;
                }
                break;
            case -1662735862:
                if (str.equals(MimeTypes.VIDEO_AV1)) {
                    b = 1;
                }
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    b = 2;
                }
                break;
            case -1606874997:
                if (str.equals("audio/amr-wb")) {
                    b = 3;
                }
                break;
            case -1003765268:
                if (str.equals("audio/vorbis")) {
                    b = 4;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    b = 5;
                }
                break;
            case 187094639:
                if (str.equals("audio/raw")) {
                    b = 6;
                }
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    b = 7;
                }
                break;
            case 1331836563:
                if (str.equals(MimeTypes.VIDEO_APV)) {
                    b = 8;
                }
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    b = 9;
                }
                break;
            case 1503095341:
                if (str.equals("audio/3gpp")) {
                    b = 10;
                }
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    b = ByteCode.T_LONG;
                }
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    b = 12;
                }
                break;
        }
        switch (b) {
            case 0:
                return "s263";
            case 1:
                return "av01";
            case 2:
                return "hvc1";
            case 3:
                return "sawb";
            case 4:
            case 5:
                return "mp4a";
            case 6:
                int i = format.pcmEncoding;
                if (i == 2) {
                    return "sowt";
                }
                if (i == 268435456) {
                    return "twos";
                }
                throw new IllegalArgumentException("Unsupported PCM encoding: " + format.pcmEncoding);
            case 7:
                return "mp4v-es";
            case 8:
                return "apv1";
            case 9:
                return "avc1";
            case 10:
                return "samr";
            case 11:
                return "Opus";
            case 12:
                return "vp09";
            default:
                throw new IllegalArgumentException("Unsupported format: " + str);
        }
    }

    private static ByteBuffer colrBox(ColorInfo colorInfo) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(20);
        byteBufferAllocate.put((byte) 110);
        byteBufferAllocate.put((byte) 99);
        byteBufferAllocate.put((byte) 108);
        byteBufferAllocate.put((byte) 120);
        short sColorSpaceToIsoColorPrimaries = (short) ColorInfo.colorSpaceToIsoColorPrimaries(colorInfo.colorSpace);
        short sColorTransferToIsoTransferCharacteristics = (short) ColorInfo.colorTransferToIsoTransferCharacteristics(colorInfo.colorTransfer);
        short sColorSpaceToIsoMatrixCoefficients = (short) ColorInfo.colorSpaceToIsoMatrixCoefficients(colorInfo.colorSpace);
        byte b = colorInfo.colorRange == 1 ? SocketData.CLAZZ_TYPE_END_SOCKET : (byte) 0;
        byteBufferAllocate.putShort(sColorSpaceToIsoColorPrimaries);
        byteBufferAllocate.putShort(sColorTransferToIsoTransferCharacteristics);
        byteBufferAllocate.putShort(sColorSpaceToIsoMatrixCoefficients);
        byteBufferAllocate.put(b);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("colr", byteBufferAllocate);
    }

    public static List<Integer> convertPresentationTimestampsToDurationsVu(List<MediaCodec.BufferInfo> list, int i, int i2, long j) {
        long jVuFromUs;
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        if (list.isEmpty()) {
            return arrayList2;
        }
        long j2 = 0;
        int i3 = 0;
        boolean z = false;
        while (i3 < list.size()) {
            long j3 = list.get(i3).presentationTimeUs;
            arrayList.add(Long.valueOf(j3));
            if (j3 < j2) {
                z = true;
            }
            i3++;
            j2 = j3;
        }
        if (z) {
            Collections.sort(arrayList);
        }
        long jLongValue = ((Long) arrayList.get(0)).longValue();
        int i4 = 1;
        while (i4 < arrayList.size()) {
            long jLongValue2 = ((Long) arrayList.get(i4)).longValue();
            long jVuFromUs2 = vuFromUs(jLongValue2 - jLongValue, i);
            Assertions.checkState(jVuFromUs2 <= 2147483647L, "Only 32-bit sample duration is allowed");
            arrayList2.add(Integer.valueOf((int) jVuFromUs2));
            i4++;
            jLongValue = jLongValue2;
        }
        if (j != C.TIME_UNSET) {
            long j4 = i;
            jVuFromUs = vuFromUs(j, j4) - vuFromUs(jLongValue, j4);
            Assertions.checkState(jVuFromUs <= 2147483647L, "Only 32-bit sample duration is allowed");
        } else {
            jVuFromUs = -1;
        }
        arrayList2.add(Integer.valueOf(getLastSampleDurationVu(arrayList2, i2, (int) jVuFromUs)));
        return arrayList2;
    }

    public static ByteBuffer ctts(List<MediaCodec.BufferInfo> list, List<Integer> list2, int i) {
        List<Integer> listCalculateSampleCompositionTimeOffsets = calculateSampleCompositionTimeOffsets(list, list2, i);
        if (listCalculateSampleCompositionTimeOffsets.isEmpty()) {
            return ByteBuffer.allocate(0);
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((listCalculateSampleCompositionTimeOffsets.size() * 8) + 8);
        byteBufferAllocate.putInt(16777216);
        int iPosition = byteBufferAllocate.position();
        byteBufferAllocate.putInt(0);
        int i2 = -1;
        int i3 = -1;
        int i4 = 0;
        for (int i5 = 0; i5 < listCalculateSampleCompositionTimeOffsets.size(); i5++) {
            int iIntValue = listCalculateSampleCompositionTimeOffsets.get(i5).intValue();
            if (i2 != iIntValue) {
                int iPosition2 = byteBufferAllocate.position();
                byteBufferAllocate.putInt(1);
                byteBufferAllocate.putInt(iIntValue);
                i4++;
                i3 = iPosition2;
                i2 = iIntValue;
            } else {
                byteBufferAllocate.putInt(i3, byteBufferAllocate.getInt(i3) + 1);
            }
        }
        byteBufferAllocate.putInt(iPosition, i4);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("ctts", byteBufferAllocate);
    }

    private static ByteBuffer d263Box(Format format) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(7);
        byteBufferAllocate.put("    ".getBytes(StandardCharsets.UTF_8));
        byteBufferAllocate.put((byte) 0);
        Pair<Integer, Integer> codecProfileAndLevel = CodecSpecificDataUtil.getCodecProfileAndLevel(format);
        if (codecProfileAndLevel == null) {
            codecProfileAndLevel = new Pair<>(1, 1);
        }
        byteBufferAllocate.put(((Integer) codecProfileAndLevel.second).byteValue());
        byteBufferAllocate.put(((Integer) codecProfileAndLevel.first).byteValue());
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("d263", byteBufferAllocate);
    }

    private static ByteBuffer dOpsBox(Format format) {
        Assertions.checkArgument(!format.initializationData.isEmpty(), "csd-0 not found in the format for dOps box.");
        byte[] bArr = format.initializationData.get(0);
        Assertions.checkArgument(bArr.length >= 8, "As csd0 contains 'OpusHead' in first 8 bytes, csd0 length should be greater than 8");
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length);
        byteBufferAllocate.put(bArr, 8, bArr.length - 8);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("dOps", byteBufferAllocate);
    }

    private static ByteBuffer damrBox(short s) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(200);
        byteBufferAllocate.put("    ".getBytes(StandardCharsets.UTF_8));
        byteBufferAllocate.put((byte) 0);
        byteBufferAllocate.putShort(s);
        byteBufferAllocate.put((byte) 0);
        byteBufferAllocate.put((byte) 1);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("damr", byteBufferAllocate);
    }

    public static ByteBuffer dinf(ByteBuffer byteBuffer) {
        return BoxUtils.wrapIntoBox("dinf", byteBuffer);
    }

    public static ByteBuffer dref(ByteBuffer... byteBufferArr) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(byteBufferArr.length);
        byteBufferAllocate.flip();
        ArrayList arrayList = new ArrayList();
        arrayList.add(byteBufferAllocate);
        Collections.addAll(arrayList, byteBufferArr);
        return BoxUtils.wrapBoxesIntoBox("dref", arrayList);
    }

    public static ByteBuffer edts(long j, long j2, long j3, long j4, long j5) {
        long j6 = j2 > 0 ? j - j2 : j;
        return j6 != 0 ? BoxUtils.wrapIntoBox("edts", elst(j6, j3, j4, j5)) : ByteBuffer.allocate(0);
    }

    private static ByteBuffer elst(long j, long j2, long j3, long j4) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(50);
        byteBufferAllocate.putInt(16777216);
        if (j > 0) {
            byteBufferAllocate.putInt(2);
            byteBufferAllocate.put(elstEntry(vuFromUs(j, j3), -1L, 1, 0));
            byteBufferAllocate.put(elstEntry(vuFromUs(j2, j3), 0L, 1, 0));
        } else {
            byteBufferAllocate.putInt(1);
            byteBufferAllocate.put(elstEntry(vuFromUs(j2 - Math.abs(j), j3), vuFromUs(Math.abs(j), j4), 1, 0));
        }
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("elst", byteBufferAllocate);
    }

    private static ByteBuffer elstEntry(long j, long j2, int i, int i2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(20);
        byteBufferAllocate.putLong(j);
        byteBufferAllocate.putLong(j2);
        byteBufferAllocate.putShort((short) i);
        byteBufferAllocate.putShort((short) i2);
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    private static ByteBuffer esdsBox(Format format) {
        Assertions.checkArgument(!format.initializationData.isEmpty(), "csd-0 not found in the format for esds box.");
        byte[] bArr = format.initializationData.get(0);
        Assertions.checkArgument(bArr.length > 0, "csd-0 is empty for esds box.");
        String str = (String) Assertions.checkNotNull(format.sampleMimeType);
        ByteBuffer vorbisInitializationData = str.equals("audio/vorbis") ? getVorbisInitializationData(format) : ByteBuffer.wrap(bArr);
        int i = format.peakBitrate;
        int i2 = format.averageBitrate;
        boolean zIsVideo = MimeTypes.isVideo(str);
        int iRemaining = vorbisInitializationData.remaining();
        ByteBuffer sizeBuffer = getSizeBuffer(iRemaining);
        ByteBuffer sizeBuffer2 = getSizeBuffer(sizeBuffer.remaining() + iRemaining + 14);
        ByteBuffer sizeBuffer3 = getSizeBuffer(sizeBuffer.remaining() + iRemaining + sizeBuffer2.remaining() + 21);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iRemaining + 200);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.put((byte) 3);
        byteBufferAllocate.put(sizeBuffer3);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.put(zIsVideo ? (byte) 31 : (byte) 0);
        byteBufferAllocate.put((byte) 4);
        byteBufferAllocate.put(sizeBuffer2);
        byteBufferAllocate.put(((Byte) Assertions.checkNotNull(MimeTypes.getMp4ObjectTypeFromMimeType(str))).byteValue());
        byteBufferAllocate.put((byte) ((zIsVideo ? 16 : 20) | 1));
        byteBufferAllocate.putShort((short) (((zIsVideo ? 96000 : ViewUtils.EDGE_TO_EDGE_FLAGS) >> 8) & 65535));
        byteBufferAllocate.put((byte) 0);
        if (i == -1) {
            i = 0;
        }
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.putInt(i2 != -1 ? i2 : 0);
        byteBufferAllocate.put((byte) 5);
        byteBufferAllocate.put(sizeBuffer);
        byteBufferAllocate.put(vorbisInitializationData);
        vorbisInitializationData.rewind();
        byteBufferAllocate.put((byte) 6);
        byteBufferAllocate.put((byte) 1);
        byteBufferAllocate.put((byte) 2);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("esds", byteBufferAllocate);
    }

    private static long findMinimumPresentationTimestampUsAcrossTracks(List<Track> list) {
        long jMin = Long.MAX_VALUE;
        for (int i = 0; i < list.size(); i++) {
            Track track = list.get(i);
            if (!track.writtenSamples.isEmpty()) {
                jMin = Math.min(track.writtenSamples.get(0).presentationTimeUs, jMin);
            }
        }
        return jMin != Long.MAX_VALUE ? jMin : C.TIME_UNSET;
    }

    public static ByteBuffer ftyp() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(ByteBuffer.wrap(Util.getUtf8Bytes("isom")));
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(131072);
        byteBufferAllocate.flip();
        arrayList.add(byteBufferAllocate);
        String[] strArr = {"isom", "iso2", "mp41"};
        for (int i = 0; i < 3; i++) {
            arrayList.add(ByteBuffer.wrap(Util.getUtf8Bytes(strArr[i])));
        }
        return BoxUtils.wrapBoxesIntoBox("ftyp", arrayList);
    }

    public static ByteBuffer getAxteBoxHeader(long j) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
        byteBufferAllocate.putInt(1);
        byteBufferAllocate.put(Util.getUtf8Bytes("axte"));
        byteBufferAllocate.putLong(j + 16);
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    private static int getLastSampleDurationVu(List<Integer> list, int i, int i2) {
        if (i == 0) {
            return 0;
        }
        if (i != 1) {
            throw new IllegalArgumentException("Unexpected value for the last frame duration behavior " + i);
        }
        if (i2 != -1) {
            return i2;
        }
        if (list.size() < 2) {
            return 0;
        }
        return ((Integer) v55.g(list)).intValue();
    }

    private static ByteBuffer getSizeBuffer(int i) {
        ArrayDeque arrayDeque = new ArrayDeque();
        int i2 = 0;
        while (true) {
            arrayDeque.push(Byte.valueOf((byte) (i2 | (i & 127))));
            i >>= 7;
            if (i <= 0) {
                break;
            }
            i2 = 128;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(arrayDeque.size());
        while (!arrayDeque.isEmpty()) {
            byteBufferAllocate.put(((Byte) arrayDeque.removeFirst()).byteValue());
        }
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    public static int getTrunBoxContentSize(int i, boolean z) {
        return ((z ? 4 : 3) * i * 4) + 12;
    }

    private static ByteBuffer getVorbisInitializationData(Format format) {
        Assertions.checkArgument(format.initializationData.size() > 1, "csd-1 should contain setup header for Vorbis.");
        byte[] bArr = format.initializationData.get(0);
        int length = bArr.length / 255;
        int i = length + 1;
        byte[] bArr2 = new byte[i];
        Arrays.fill(bArr2, (byte) -1);
        bArr2[length] = (byte) (bArr.length % 255);
        byte[] bArr3 = format.initializationData.get(1);
        Assertions.checkArgument(bArr3.length > 0, "csd-1 should be present and contain setup header for Vorbis.");
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i + bArr.length + bArr3.length + 2);
        byteBufferAllocate.put((byte) 2);
        byteBufferAllocate.put(bArr2);
        byteBufferAllocate.put((byte) 0);
        byteBufferAllocate.put(bArr);
        byteBufferAllocate.put(bArr3);
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    public static ByteBuffer hdlr(String str, String str2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(200);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.put(Util.getUtf8Bytes(str));
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.put(Util.getUtf8Bytes(str2));
        byteBufferAllocate.put((byte) 0);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("hdlr", byteBufferAllocate);
    }

    private static ByteBuffer hvcCBox(Format format) {
        Assertions.checkArgument(!format.initializationData.isEmpty(), "csd-0 not found in the format for hvcC box.");
        byte[] bArr = format.initializationData.get(0);
        Assertions.checkArgument(bArr.length > 0, "csd-0 is empty for hvcC box.");
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBufferWrap.limit() + 200);
        ImmutableList<ByteBuffer> immutableListFindNalUnits = AnnexBUtils.findNalUnits(byteBufferWrap);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < immutableListFindNalUnits.size(); i++) {
            arrayList.add(AnnexBUtils.stripEmulationPrevention(immutableListFindNalUnits.get(i)));
        }
        byteBufferAllocate.put((byte) 1);
        ByteBuffer byteBuffer = (ByteBuffer) arrayList.get(0);
        if (byteBuffer.get(byteBuffer.position()) != 64) {
            throw new IllegalArgumentException("First NALU in csd-0 is not the VPS.");
        }
        byteBufferAllocate.put(byteBuffer.get(6));
        byteBufferAllocate.putInt(byteBuffer.getInt(7));
        byteBufferAllocate.putInt(byteBuffer.getInt(11));
        byteBufferAllocate.putShort(byteBuffer.getShort(15));
        byteBufferAllocate.put(byteBuffer.get(17));
        byteBufferAllocate.putShort((short) -4096);
        byteBufferAllocate.put((byte) -4);
        ByteBuffer byteBuffer2 = immutableListFindNalUnits.get(1);
        int iRemaining = byteBuffer2.remaining();
        byte[] bArr2 = new byte[iRemaining];
        byteBuffer2.get(bArr2);
        byteBuffer2.rewind();
        NalUnitUtil.H265SpsData h265SpsNalUnit = NalUnitUtil.parseH265SpsNalUnit(bArr2, 0, iRemaining, null);
        byte b = (byte) (h265SpsNalUnit.chromaFormatIdc | MPEGFrameHeader.SYNC_BIT_ANDSAMPING_BYTE3);
        byte b2 = (byte) (h265SpsNalUnit.bitDepthLumaMinus8 | 248);
        byte b3 = (byte) (h265SpsNalUnit.bitDepthChromaMinus8 | 248);
        byteBufferAllocate.put(b);
        byteBufferAllocate.put(b2);
        byteBufferAllocate.put(b3);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.put((byte) 15);
        byteBufferAllocate.put((byte) immutableListFindNalUnits.size());
        for (int i2 = 0; i2 < immutableListFindNalUnits.size(); i2++) {
            ByteBuffer byteBuffer3 = immutableListFindNalUnits.get(i2);
            byteBufferAllocate.put((byte) ((byteBuffer3.get(0) >> 1) & 63));
            byteBufferAllocate.putShort((short) 1);
            byteBufferAllocate.putShort((short) byteBuffer3.limit());
            byteBufferAllocate.put(byteBuffer3);
        }
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("hvcC", byteBufferAllocate);
    }

    public static ByteBuffer ilst(List<MdtaMetadataEntry> list) {
        int i = 0;
        int length = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            length += list.get(i2).value.length + 24;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        while (i < list.size()) {
            int i3 = i + 1;
            MdtaMetadataEntry mdtaMetadataEntry = list.get(i);
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(mdtaMetadataEntry.value.length + 8);
            byteBufferAllocate2.putInt(mdtaMetadataEntry.typeIndicator);
            byteBufferAllocate2.putInt(mdtaMetadataEntry.localeIndicator);
            byteBufferAllocate2.put(mdtaMetadataEntry.value);
            byteBufferAllocate2.flip();
            ByteBuffer byteBufferWrapIntoBox = BoxUtils.wrapIntoBox("data", byteBufferAllocate2);
            byteBufferAllocate.putInt(byteBufferWrapIntoBox.remaining() + 8);
            byteBufferAllocate.putInt(i3);
            byteBufferAllocate.put(byteBufferWrapIntoBox);
            i = i3;
        }
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("ilst", byteBufferAllocate);
    }

    public static ByteBuffer keys(List<MdtaMetadataEntry> list) {
        int length = 0;
        for (int i = 0; i < list.size(); i++) {
            length += list.get(i).key.length() + 8;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length + 8);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(list.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            byteBufferAllocate.put(BoxUtils.wrapIntoBox("mdta", ByteBuffer.wrap(Util.getUtf8Bytes(list.get(i2).key))));
        }
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("keys", byteBufferAllocate);
    }

    private static short languageCodeFromString(@Nullable String str) {
        if (str == null) {
            return (short) 0;
        }
        byte[] utf8Bytes = Util.getUtf8Bytes(str);
        if (utf8Bytes.length != 3) {
            return (short) 0;
        }
        return (short) (((utf8Bytes[2] & 31) + ((utf8Bytes[1] & 31) << 5) + ((utf8Bytes[0] & 31) << 10)) & 32767);
    }

    public static ByteBuffer localUrl() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(1);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("url ", byteBufferAllocate);
    }

    public static ByteBuffer mdhd(long j, int i, int i2, int i3, @Nullable String str) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(200);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(i2);
        byteBufferAllocate.putInt(i3);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.putInt((int) j);
        byteBufferAllocate.putShort(languageCodeFromString(str));
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("mdhd", byteBufferAllocate);
    }

    public static ByteBuffer mdia(ByteBuffer... byteBufferArr) {
        return BoxUtils.wrapBoxesIntoBox("mdia", Arrays.asList(byteBufferArr));
    }

    public static ByteBuffer meta(ByteBuffer... byteBufferArr) {
        return BoxUtils.wrapBoxesIntoBox("meta", Arrays.asList(byteBufferArr));
    }

    public static ByteBuffer mfhd(int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("mfhd", byteBufferAllocate);
    }

    public static ByteBuffer minf(ByteBuffer... byteBufferArr) {
        return BoxUtils.wrapBoxesIntoBox("minf", Arrays.asList(byteBufferArr));
    }

    public static ByteBuffer moof(ByteBuffer byteBuffer, List<ByteBuffer> list) {
        return BoxUtils.wrapBoxesIntoBox("moof", new ImmutableList.a().a(byteBuffer).l(list).e());
    }

    public static ByteBuffer moov(List<Track> list, MetadataCollector metadataCollector, boolean z, int i) {
        int i2;
        ByteBuffer byteBufferNmhd;
        ByteBuffer byteBufferStbl;
        String str;
        String str2;
        ArrayList arrayList;
        ArrayList arrayList2;
        MetadataCollector metadataCollector2 = metadataCollector;
        Mp4TimestampData mp4TimestampData = metadataCollector2.timestampData;
        int i3 = (int) mp4TimestampData.creationTimestampSeconds;
        int i4 = (int) mp4TimestampData.modificationTimestampSeconds;
        long jFindMinimumPresentationTimestampUsAcrossTracks = findMinimumPresentationTimestampUsAcrossTracks(list);
        if (!z && jFindMinimumPresentationTimestampUsAcrossTracks == C.TIME_UNSET) {
            return ByteBuffer.allocate(0);
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        int i5 = 0;
        long jMax = 0;
        int i6 = 1;
        while (i5 < list.size()) {
            Track track = list.get(i5);
            if (z || !track.writtenSamples.isEmpty()) {
                Format format = track.format;
                String strBcp47LanguageTagToIso3 = bcp47LanguageTagToIso3(format.language);
                long j = jMax;
                ArrayList arrayList5 = arrayList3;
                List<Integer> listConvertPresentationTimestampsToDurationsVu = convertPresentationTimestampsToDurationsVu(track.writtenSamples, track.videoUnitTimebase(), i, track.endOfStreamTimestampUs);
                long jIntValue = 0;
                int i7 = 0;
                while (i7 < listConvertPresentationTimestampsToDurationsVu.size()) {
                    jIntValue += (long) listConvertPresentationTimestampsToDurationsVu.get(i7).intValue();
                    i7++;
                    i5 = i5;
                }
                i2 = i5;
                long j2 = track.writtenSamples.isEmpty() ? 0L : track.writtenSamples.get(0).presentationTimeUs;
                long jUsFromVu = usFromVu(jIntValue, track.videoUnitTimebase());
                int trackType = MimeTypes.getTrackType(format.sampleMimeType);
                ByteBuffer byteBufferStts = stts(listConvertPresentationTimestampsToDurationsVu);
                long j3 = jIntValue;
                ByteBuffer byteBufferCtts = MimeTypes.isVideo(format.sampleMimeType) ? ctts(track.writtenSamples, listConvertPresentationTimestampsToDurationsVu, track.videoUnitTimebase()) : ByteBuffer.allocate(0);
                ByteBuffer byteBufferStsz = stsz(track.writtenSamples);
                ByteBuffer byteBufferStsc = stsc(track.writtenChunkSampleCounts);
                List<Long> list2 = track.writtenChunkOffsets;
                ByteBuffer byteBufferStco = z ? stco(list2) : co64(list2);
                ArrayList arrayList6 = arrayList4;
                if (trackType == -1 || trackType == 5) {
                    byteBufferNmhd = nmhd();
                    byteBufferStbl = stbl(stsd(textMetaDataSampleEntry(format)), byteBufferStts, byteBufferStsz, byteBufferStsc, byteBufferStco);
                    str = "meta";
                    str2 = "MetaHandle";
                } else if (trackType == 1) {
                    byteBufferNmhd = smhd();
                    byteBufferStbl = stbl(stsd(audioSampleEntry(format)), byteBufferStts, byteBufferStsz, byteBufferStsc, byteBufferStco);
                    str = "soun";
                    str2 = "SoundHandle";
                } else {
                    if (trackType != 2) {
                        throw new IllegalArgumentException("Unsupported track type");
                    }
                    byteBufferNmhd = vmhd();
                    byteBufferStbl = stbl(stsd(videoSampleEntry(format)), byteBufferStts, byteBufferCtts, byteBufferStsz, byteBufferStsc, byteBufferStco, stss(track.writtenSamples));
                    str = "vide";
                    str2 = "VideoHandle";
                }
                int i8 = i6;
                arrayList = arrayList5;
                arrayList.add(trak(tkhd(i6, jUsFromVu, i3, i4, metadataCollector2.orientationData.orientation, format), edts(j2, jFindMinimumPresentationTimestampUsAcrossTracks, jUsFromVu, 10000L, track.videoUnitTimebase()), mdia(mdhd(j3, track.videoUnitTimebase(), i3, i4, strBcp47LanguageTagToIso3), hdlr(str, str2), minf(byteBufferNmhd, dinf(dref(localUrl())), byteBufferStbl))));
                jMax = Math.max(j, jUsFromVu);
                arrayList2 = arrayList6;
                arrayList2.add(trex(i8));
                i6 = i8 + 1;
            } else {
                i2 = i5;
                arrayList = arrayList3;
                arrayList2 = arrayList4;
            }
            i5 = i2 + 1;
            metadataCollector2 = metadataCollector;
            arrayList3 = arrayList;
            arrayList4 = arrayList2;
            jFindMinimumPresentationTimestampUsAcrossTracks = jFindMinimumPresentationTimestampUsAcrossTracks;
        }
        ArrayList arrayList7 = arrayList3;
        ArrayList arrayList8 = arrayList4;
        ByteBuffer byteBufferMvhd = mvhd(i6, i3, i4, jMax);
        ByteBuffer byteBufferUdta = udta(metadataCollector.locationData);
        ByteBuffer byteBufferAllocate = metadataCollector.metadataEntries.isEmpty() ? ByteBuffer.allocate(0) : meta(hdlr("mdta", ""), keys(Lists.j(metadataCollector.metadataEntries)), ilst(Lists.j(metadataCollector.metadataEntries)));
        ArrayList arrayList9 = new ArrayList();
        arrayList9.add(byteBufferMvhd);
        arrayList9.add(byteBufferUdta);
        arrayList9.add(byteBufferAllocate);
        arrayList9.addAll(arrayList7);
        if (z) {
            arrayList9.add(mvex(arrayList8));
        }
        ByteBuffer byteBufferWrapBoxesIntoBox = BoxUtils.wrapBoxesIntoBox("moov", arrayList9);
        XmpData xmpData = metadataCollector.xmpData;
        return xmpData != null ? BoxUtils.concatenateBuffers(byteBufferWrapBoxesIntoBox, uuid(XMP_UUID, ByteBuffer.wrap(xmpData.data))) : byteBufferWrapBoxesIntoBox;
    }

    public static ByteBuffer mvex(List<ByteBuffer> list) {
        return BoxUtils.wrapBoxesIntoBox("mvex", list);
    }

    public static ByteBuffer mvhd(int i, int i2, int i3, long j) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(200);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(i2);
        byteBufferAllocate.putInt(i3);
        byteBufferAllocate.putInt(10000);
        byteBufferAllocate.putInt((int) vuFromUs(j, 10000L));
        byteBufferAllocate.putInt(65536);
        byteBufferAllocate.putShort(ClassFileWriter.ACC_NATIVE);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(0);
        int[] iArr = {65536, 0, 0, 0, 65536, 0, 0, 0, 1073741824};
        for (int i4 = 0; i4 < 9; i4++) {
            byteBufferAllocate.putInt(iArr[i4]);
        }
        for (int i5 = 0; i5 < 6; i5++) {
            byteBufferAllocate.putInt(0);
        }
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("mvhd", byteBufferAllocate);
    }

    public static ByteBuffer nmhd() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(200);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("nmhd", byteBufferAllocate);
    }

    private static ByteBuffer parseVp9CodecPrivateFromCsd(byte[] bArr, int i) {
        byte b = 10;
        int i2 = 8;
        byte b2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < bArr.length; i4 += 3) {
            byte b3 = bArr[i4];
            int i5 = i4 + 2;
            if (b3 == 1) {
                b2 = bArr[i5];
            } else if (b3 == 2) {
                b = bArr[i5];
            } else if (b3 == 3) {
                i2 = bArr[i5];
            } else if (b3 == 4) {
                i3 = bArr[i5];
            }
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(3);
        byteBufferAllocate.put(b2);
        byteBufferAllocate.put(b);
        byteBufferAllocate.put((byte) (i | (i2 << 4) | (i3 << 1)));
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    private static ByteBuffer paspBox() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.putInt(65536);
        byteBufferAllocate.putInt(65536);
        byteBufferAllocate.rewind();
        return BoxUtils.wrapIntoBox("pasp", byteBufferAllocate);
    }

    private static byte[] rotationMatrixFromOrientation(int i) {
        if (i == 0) {
            return Util.toByteArray(65536, 0, 0, 0, 65536, 0, 0, 0, 1073741824);
        }
        if (i == 90) {
            return Util.toByteArray(0, 65536, 0, SupportMenu.CATEGORY_MASK, 0, 0, 0, 0, 1073741824);
        }
        if (i == 180) {
            return Util.toByteArray(SupportMenu.CATEGORY_MASK, 0, 0, 0, SupportMenu.CATEGORY_MASK, 0, 0, 0, 1073741824);
        }
        if (i == 270) {
            return Util.toByteArray(0, SupportMenu.CATEGORY_MASK, 0, 65536, 0, 0, 0, 0, 1073741824);
        }
        throw new IllegalArgumentException("invalid orientation " + i);
    }

    private static ByteBuffer smDmBox(ColorInfo colorInfo) {
        byte[] bArr = colorInfo.hdrStaticInfo;
        if (bArr == null) {
            return ByteBuffer.allocate(0);
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(200);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.put(bArr);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("SmDm", byteBufferAllocate);
    }

    public static ByteBuffer smhd() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(200);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("smhd", byteBufferAllocate);
    }

    public static ByteBuffer stbl(ByteBuffer... byteBufferArr) {
        return BoxUtils.wrapBoxesIntoBox("stbl", Arrays.asList(byteBufferArr));
    }

    public static ByteBuffer stco(List<Long> list) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((list.size() * 4) + 8);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(list.size());
        for (int i = 0; i < list.size(); i++) {
            long jLongValue = list.get(i).longValue();
            Assertions.checkState(jLongValue <= MuxerUtil.UNSIGNED_INT_MAX_VALUE, "Only 32-bit chunk offset is allowed");
            byteBufferAllocate.putInt((int) jLongValue);
        }
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("stco", byteBufferAllocate);
    }

    public static ByteBuffer stsc(List<Integer> list) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((list.size() * 12) + 200);
        byteBufferAllocate.putInt(0);
        int iPosition = byteBufferAllocate.position();
        byteBufferAllocate.putInt(0);
        int i = 1;
        int i2 = -1;
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int iIntValue = list.get(i4).intValue();
            if (iIntValue != i2) {
                byteBufferAllocate.putInt(i);
                byteBufferAllocate.putInt(iIntValue);
                byteBufferAllocate.putInt(1);
                i3++;
                i2 = iIntValue;
            }
            i++;
        }
        byteBufferAllocate.putInt(iPosition, i3);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("stsc", byteBufferAllocate);
    }

    public static ByteBuffer stsd(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBuffer.limit() + 200);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(1);
        byteBufferAllocate.put(byteBuffer);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("stsd", byteBufferAllocate);
    }

    public static ByteBuffer stss(List<MediaCodec.BufferInfo> list) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((list.size() * 4) + 200);
        byteBufferAllocate.putInt(0);
        int iPosition = byteBufferAllocate.position();
        byteBufferAllocate.putInt(list.size());
        int i = 0;
        int i2 = 1;
        for (int i3 = 0; i3 < list.size(); i3++) {
            if ((list.get(i3).flags & 1) > 0) {
                byteBufferAllocate.putInt(i2);
                i++;
            }
            i2++;
        }
        byteBufferAllocate.putInt(iPosition, i);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("stss", byteBufferAllocate);
    }

    public static ByteBuffer stsz(List<MediaCodec.BufferInfo> list) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((list.size() * 4) + 200);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(list.size());
        for (int i = 0; i < list.size(); i++) {
            byteBufferAllocate.putInt(list.get(i).size);
        }
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("stsz", byteBufferAllocate);
    }

    public static ByteBuffer stts(List<Integer> list) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((list.size() * 8) + 200);
        byteBufferAllocate.putInt(0);
        int iPosition = byteBufferAllocate.position();
        byteBufferAllocate.putInt(0);
        int i = -1;
        long j = -1;
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            int iIntValue = list.get(i3).intValue();
            long j2 = iIntValue;
            if (j != j2) {
                int iPosition2 = byteBufferAllocate.position();
                byteBufferAllocate.putInt(1);
                byteBufferAllocate.putInt(iIntValue);
                i2++;
                i = iPosition2;
                j = j2;
            } else {
                byteBufferAllocate.putInt(i, byteBufferAllocate.getInt(i) + 1);
            }
        }
        byteBufferAllocate.putInt(iPosition, i2);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("stts", byteBufferAllocate);
    }

    public static ByteBuffer textMetaDataSampleEntry(Format format) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(200);
        byte[] utf8Bytes = Util.getUtf8Bytes((String) Assertions.checkNotNull(format.sampleMimeType));
        byteBufferAllocate.put(utf8Bytes);
        byteBufferAllocate.put((byte) 0);
        byteBufferAllocate.put(utf8Bytes);
        byteBufferAllocate.put((byte) 0);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("mett", byteBufferAllocate);
    }

    public static ByteBuffer tfhd(int i, long j) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
        byteBufferAllocate.putInt(1);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.putLong(j);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("tfhd", byteBufferAllocate);
    }

    public static ByteBuffer tkhd(int i, long j, int i2, int i3, int i4, Format format) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(200);
        byteBufferAllocate.putInt(7);
        byteBufferAllocate.putInt(i2);
        byteBufferAllocate.putInt(i3);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt((int) vuFromUs(j, 10000L));
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putShort(MimeTypes.isAudio(format.sampleMimeType) ? ClassFileWriter.ACC_NATIVE : (short) 0);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.put(rotationMatrixFromOrientation(i4));
        int i5 = format.width;
        if (i5 == -1) {
            i5 = 0;
        }
        int i6 = format.height;
        int i7 = i6 != -1 ? i6 : 0;
        byteBufferAllocate.putInt(i5 << 16);
        byteBufferAllocate.putInt(i7 << 16);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("tkhd", byteBufferAllocate);
    }

    public static ByteBuffer traf(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        return BoxUtils.wrapBoxesIntoBox("traf", ImmutableList.of(byteBuffer, byteBuffer2));
    }

    public static ByteBuffer trak(ByteBuffer... byteBufferArr) {
        return BoxUtils.wrapBoxesIntoBox("trak", Arrays.asList(byteBufferArr));
    }

    public static ByteBuffer trex(int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(24);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.putInt(1);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("trex", byteBufferAllocate);
    }

    public static ByteBuffer trun(List<FragmentedMp4Writer.SampleMetadata> list, int i, boolean z) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(getTrunBoxContentSize(list.size(), z));
        byteBufferAllocate.putInt(z ? 16781057 : 16779009);
        byteBufferAllocate.putInt(list.size());
        byteBufferAllocate.putInt(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            FragmentedMp4Writer.SampleMetadata sampleMetadata = list.get(i2);
            byteBufferAllocate.putInt(sampleMetadata.durationVu);
            byteBufferAllocate.putInt(sampleMetadata.size);
            byteBufferAllocate.putInt((sampleMetadata.flags & 1) != 0 ? TRUN_BOX_SYNC_SAMPLE_FLAGS : 16842752);
            if (z) {
                byteBufferAllocate.putInt(sampleMetadata.compositionTimeOffsetVu);
            }
        }
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("trun", byteBufferAllocate);
    }

    public static ByteBuffer udta(@Nullable Mp4LocationData mp4LocationData) {
        if (mp4LocationData == null) {
            return ByteBuffer.allocate(0);
        }
        String invariant = Util.formatInvariant("%+.4f%+.4f/", Float.valueOf(mp4LocationData.latitude), Float.valueOf(mp4LocationData.longitude));
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(invariant.length() + 4);
        byteBufferAllocate.putShort((short) (byteBufferAllocate.capacity() - 4));
        byteBufferAllocate.putShort((short) 5575);
        byteBufferAllocate.put(Util.getUtf8Bytes(invariant));
        Assertions.checkState(byteBufferAllocate.limit() == byteBufferAllocate.capacity());
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("udta", BoxUtils.wrapIntoBox(new byte[]{-87, 120, 121, 122}, byteBufferAllocate));
    }

    private static long usFromVu(long j, long j2) {
        return Util.scaleLargeValue(j, 1000000L, j2, RoundingMode.HALF_UP);
    }

    public static ByteBuffer uuid(List<Byte> list, ByteBuffer byteBuffer) {
        Assertions.checkArgument(byteBuffer.remaining() > 0);
        return BoxUtils.wrapBoxesIntoBox("uuid", ImmutableList.of(ByteBuffer.wrap(Bytes.g(list)), byteBuffer));
    }

    public static ByteBuffer videoSampleEntry(Format format) {
        ByteBuffer byteBufferCodecSpecificBox = codecSpecificBox(format);
        String strCodecSpecificFourcc = codecSpecificFourcc(format);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBufferCodecSpecificBox.limit() + 200);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putShort((short) 1);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putInt(0);
        int i = format.width;
        byteBufferAllocate.putShort(i != -1 ? (short) i : (short) 0);
        int i2 = format.height;
        byteBufferAllocate.putShort(i2 != -1 ? (short) i2 : (short) 0);
        byteBufferAllocate.putInt(4718592);
        byteBufferAllocate.putInt(4718592);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putShort((short) 1);
        byteBufferAllocate.putLong(0L);
        byteBufferAllocate.putLong(0L);
        byteBufferAllocate.putLong(0L);
        byteBufferAllocate.putLong(0L);
        byteBufferAllocate.putShort((short) 24);
        byteBufferAllocate.putShort((short) -1);
        byteBufferAllocate.put(byteBufferCodecSpecificBox);
        if (format.colorInfo != null && strCodecSpecificFourcc.equals("vp09")) {
            byteBufferAllocate.put(smDmBox(format.colorInfo));
        }
        byteBufferAllocate.put(paspBox());
        ColorInfo colorInfo = format.colorInfo;
        if (colorInfo != null) {
            byteBufferAllocate.put(colrBox(colorInfo));
        }
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox(strCodecSpecificFourcc, byteBufferAllocate);
    }

    public static ByteBuffer vmhd() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(200);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("vmhd", byteBufferAllocate);
    }

    private static ByteBuffer vpcCBox(Format format) {
        int i;
        int iColorSpaceToIsoMatrixCoefficients;
        int iColorTransferToIsoTransferCharacteristics;
        int iColorSpaceToIsoColorPrimaries = 1;
        Assertions.checkArgument(!format.initializationData.isEmpty(), "csd-0 is not found in the format for vpcC box");
        byte[] bArr = format.initializationData.get(0);
        Assertions.checkArgument(bArr.length > 3, "csd-0 for vp9 is invalid.");
        if (Ints.g(bArr) == 16777216) {
            return BoxUtils.wrapIntoBox("vpcC", ByteBuffer.wrap(bArr));
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(200);
        byteBufferAllocate.putInt(16777216);
        ColorInfo colorInfo = format.colorInfo;
        if (colorInfo == null || (i = colorInfo.colorRange) == -1) {
            i = 0;
        }
        byteBufferAllocate.put(parseVp9CodecPrivateFromCsd(bArr, i));
        ColorInfo colorInfo2 = format.colorInfo;
        if (colorInfo2 != null) {
            iColorSpaceToIsoColorPrimaries = ColorInfo.colorSpaceToIsoColorPrimaries(colorInfo2.colorSpace);
            iColorTransferToIsoTransferCharacteristics = ColorInfo.colorTransferToIsoTransferCharacteristics(format.colorInfo.colorTransfer);
            iColorSpaceToIsoMatrixCoefficients = ColorInfo.colorSpaceToIsoMatrixCoefficients(format.colorInfo.colorSpace);
        } else {
            iColorSpaceToIsoMatrixCoefficients = 1;
            iColorTransferToIsoTransferCharacteristics = 1;
        }
        byteBufferAllocate.put((byte) iColorSpaceToIsoColorPrimaries);
        byteBufferAllocate.put((byte) iColorTransferToIsoTransferCharacteristics);
        byteBufferAllocate.put((byte) iColorSpaceToIsoMatrixCoefficients);
        byteBufferAllocate.putShort((short) 0);
        byteBufferAllocate.flip();
        return BoxUtils.wrapIntoBox("vpcC", byteBufferAllocate);
    }

    private static long vuFromUs(long j, long j2) {
        return Util.scaleLargeValue(j, j2, 1000000L, RoundingMode.HALF_UP);
    }
}
