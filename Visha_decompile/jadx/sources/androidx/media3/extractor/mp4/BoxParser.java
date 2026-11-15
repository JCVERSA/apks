package androidx.media3.extractor.mp4;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4AlternateGroupData;
import androidx.media3.container.Mp4Box;
import androidx.media3.container.Mp4LocationData;
import androidx.media3.container.Mp4TimestampData;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.DolbyVisionConfig;
import androidx.media3.extractor.ExtractorUtil;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.HevcConfig;
import androidx.media3.extractor.OpusUtil;
import androidx.media3.extractor.VorbisUtil;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import defpackage.o74;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

@UnstableApi
public final class BoxParser {
    private static final int MAX_GAPLESS_TRIM_SIZE_SAMPLES = 4;
    private static final int SAMPLE_RATE_AMR_NB = 8000;
    private static final int SAMPLE_RATE_AMR_WB = 16000;
    private static final String TAG = "BoxParsers";
    private static final int TYPE_clcp = 1668047728;
    private static final int TYPE_mdta = 1835299937;
    private static final int TYPE_meta = 1835365473;
    private static final int TYPE_nclc = 1852009571;
    private static final int TYPE_nclx = 1852009592;
    private static final int TYPE_sbtl = 1935832172;
    private static final int TYPE_soun = 1936684398;
    private static final int TYPE_subt = 1937072756;
    private static final int TYPE_text = 1952807028;
    private static final int TYPE_vide = 1986618469;
    private static final byte[] opusMagic = Util.getUtf8Bytes("OpusHead");

    public static final class BtrtData {
        private final long avgBitrate;
        private final long maxBitrate;

        public BtrtData(long j, long j2) {
            this.avgBitrate = j;
            this.maxBitrate = j2;
        }
    }

    public static final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) throws ParserException {
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z;
            parsableByteArray2.setPosition(12);
            this.length = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.readUnsignedIntToInt();
            ExtractorUtil.checkContainerInput(parsableByteArray.readInt() == 1, "first_chunk must be 1");
            this.index = -1;
        }

        public boolean moveNext() {
            int i = this.index + 1;
            this.index = i;
            if (i == this.length) {
                return false;
            }
            this.offset = this.chunkOffsetsAreLongs ? this.chunkOffsets.readUnsignedLongToLong() : this.chunkOffsets.readUnsignedInt();
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.readUnsignedIntToInt();
                this.stsc.skipBytes(4);
                int i2 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i2;
                this.nextSamplesPerChunkChangeIndex = i2 > 0 ? this.stsc.readUnsignedIntToInt() - 1 : -1;
            }
            return true;
        }
    }

    public static final class EsdsData {
        private final long bitrate;
        private final byte[] initializationData;
        private final String mimeType;
        private final long peakBitrate;

        public EsdsData(String str, byte[] bArr, long j, long j2) {
            this.mimeType = str;
            this.initializationData = bArr;
            this.bitrate = j;
            this.peakBitrate = j2;
        }
    }

    public static final class EyesData {
        private final StriData striData;

        public EyesData(StriData striData) {
            this.striData = striData;
        }
    }

    public static final class MdhdData {

        @Nullable
        private final String language;
        private final long mediaDurationUs;
        private final long timescale;

        public MdhdData(long j, long j2, @Nullable String str) {
            this.timescale = j;
            this.mediaDurationUs = j2;
            this.language = str;
        }
    }

    public interface SampleSizeBox {
        int getFixedSampleSize();

        int getSampleCount();

        int readNextSampleSize();
    }

    public static final class StriData {
        private final boolean eyeViewsReversed;
        private final boolean hasLeftEyeView;
        private final boolean hasRightEyeView;

        public StriData(boolean z, boolean z2, boolean z3) {
            this.hasLeftEyeView = z;
            this.hasRightEyeView = z2;
            this.eyeViewsReversed = z3;
        }
    }

    public static final class StsdData {
        public static final int STSD_HEADER_SIZE = 8;

        @Nullable
        public Format format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i];
        }
    }

    public static final class StszSampleSizeBox implements SampleSizeBox {
        private final ParsableByteArray data;
        private final int fixedSampleSize;
        private final int sampleCount;

        public StszSampleSizeBox(Mp4Box.LeafBox leafBox, Format format) {
            ParsableByteArray parsableByteArray = leafBox.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            if ("audio/raw".equals(format.sampleMimeType)) {
                int pcmFrameSize = Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
                if (unsignedIntToInt == 0 || unsignedIntToInt % pcmFrameSize != 0) {
                    Log.w(BoxParser.TAG, "Audio sample size mismatch. stsd sample size: " + pcmFrameSize + ", stsz sample size: " + unsignedIntToInt);
                    unsignedIntToInt = pcmFrameSize;
                }
            }
            this.fixedSampleSize = unsignedIntToInt == 0 ? -1 : unsignedIntToInt;
            this.sampleCount = parsableByteArray.readUnsignedIntToInt();
        }

        @Override
        public int getFixedSampleSize() {
            return this.fixedSampleSize;
        }

        @Override
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override
        public int readNextSampleSize() {
            int i = this.fixedSampleSize;
            return i == -1 ? this.data.readUnsignedIntToInt() : i;
        }
    }

    public static final class Stz2SampleSizeBox implements SampleSizeBox {
        private int currentByte;
        private final ParsableByteArray data;
        private final int fieldSize;
        private final int sampleCount;
        private int sampleIndex;

        public Stz2SampleSizeBox(Mp4Box.LeafBox leafBox) {
            ParsableByteArray parsableByteArray = leafBox.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            this.fieldSize = parsableByteArray.readUnsignedIntToInt() & 255;
            this.sampleCount = parsableByteArray.readUnsignedIntToInt();
        }

        @Override
        public int getFixedSampleSize() {
            return -1;
        }

        @Override
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override
        public int readNextSampleSize() {
            int i = this.fieldSize;
            if (i == 8) {
                return this.data.readUnsignedByte();
            }
            if (i == 16) {
                return this.data.readUnsignedShort();
            }
            int i2 = this.sampleIndex;
            this.sampleIndex = i2 + 1;
            if (i2 % 2 != 0) {
                return this.currentByte & 15;
            }
            int unsignedByte = this.data.readUnsignedByte();
            this.currentByte = unsignedByte;
            return (unsignedByte & 240) >> 4;
        }
    }

    public static final class TkhdData {
        private final int alternateGroup;
        private final long duration;
        private final int id;
        private final int rotationDegrees;

        public TkhdData(int i, long j, int i2, int i3) {
            this.id = i;
            this.duration = j;
            this.alternateGroup = i2;
            this.rotationDegrees = i3;
        }
    }

    public static final class VexuData {

        @Nullable
        private final EyesData eyesData;

        public VexuData(EyesData eyesData) {
            this.eyesData = eyesData;
        }

        public boolean hasBothEyeViews() {
            EyesData eyesData = this.eyesData;
            return eyesData != null && eyesData.striData.hasLeftEyeView && this.eyesData.striData.hasRightEyeView;
        }
    }

    private BoxParser() {
    }

    private static ByteBuffer allocateHdrStaticInfo() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static boolean canApplyEditWithGaplessInfo(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        return jArr[0] <= j2 && j2 < jArr[Util.constrainValue(4, 0, length)] && jArr[Util.constrainValue(jArr.length - 4, 0, length)] < j3 && j3 <= j;
    }

    private static int findBoxPosition(ParsableByteArray parsableByteArray, int i, int i2, int i3) throws ParserException {
        int position = parsableByteArray.getPosition();
        ExtractorUtil.checkContainerInput(position >= i2, null);
        while (position - i2 < i3) {
            parsableByteArray.setPosition(position);
            int i4 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(i4 > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == i) {
                return position;
            }
            position += i4;
        }
        return -1;
    }

    @Nullable
    private static String getLanguageFromCode(int i) {
        char[] cArr = {(char) (((i >> 10) & 31) + 96), (char) (((i >> 5) & 31) + 96), (char) ((i & 31) + 96)};
        for (int i2 = 0; i2 < 3; i2++) {
            char c = cArr[i2];
            if (c < 'a' || c > 'z') {
                return null;
            }
        }
        return new String(cArr);
    }

    private static int getTrackTypeForHdlr(int i) {
        if (i == TYPE_soun) {
            return 1;
        }
        if (i == TYPE_vide) {
            return 2;
        }
        if (i == TYPE_text || i == TYPE_sbtl || i == TYPE_subt || i == TYPE_clcp) {
            return 3;
        }
        return i == 1835365473 ? 5 : -1;
    }

    public static void maybeSkipRemainingMetaBoxHeaderBytes(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() != 1751411826) {
            position += 4;
        }
        parsableByteArray.setPosition(position);
    }

    private static ColorInfo parseApvc(ParsableByteArray parsableByteArray) {
        ColorInfo.Builder builder = new ColorInfo.Builder();
        ParsableBitArray parsableBitArray = new ParsableBitArray(parsableByteArray.getData());
        parsableBitArray.setPosition(parsableByteArray.getPosition() * 8);
        parsableBitArray.skipBytes(1);
        int bits = parsableBitArray.readBits(8);
        for (int i = 0; i < bits; i++) {
            parsableBitArray.skipBytes(1);
            int bits2 = parsableBitArray.readBits(8);
            for (int i2 = 0; i2 < bits2; i2++) {
                parsableBitArray.skipBits(6);
                boolean bit = parsableBitArray.readBit();
                parsableBitArray.skipBit();
                parsableBitArray.skipBytes(11);
                parsableBitArray.skipBits(4);
                int bits3 = parsableBitArray.readBits(4) + 8;
                builder.setLumaBitdepth(bits3);
                builder.setChromaBitdepth(bits3);
                parsableBitArray.skipBytes(1);
                if (bit) {
                    int bits4 = parsableBitArray.readBits(8);
                    int bits5 = parsableBitArray.readBits(8);
                    parsableBitArray.skipBytes(1);
                    builder.setColorSpace(ColorInfo.isoColorPrimariesToColorSpace(bits4)).setColorRange(parsableBitArray.readBit() ? 1 : 2).setColorTransfer(ColorInfo.isoTransferCharacteristicsToColorTransfer(bits5));
                }
            }
        }
        return builder.build();
    }

    /* JADX WARN: Code duplicated, block: B:143:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:145:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:146:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:149:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:151:0x020c  */
    /* JADX WARN: Code duplicated, block: B:153:0x021c  */
    /* JADX WARN: Code duplicated, block: B:156:0x0239  */
    /* JADX WARN: Code duplicated, block: B:158:0x023f  */
    /* JADX WARN: Code duplicated, block: B:163:0x025d  */
    /* JADX WARN: Code duplicated, block: B:165:0x0262  */
    /* JADX WARN: Code duplicated, block: B:167:0x026d  */
    /* JADX WARN: Code duplicated, block: B:169:0x0277  */
    /* JADX WARN: Code duplicated, block: B:170:0x027c  */
    /* JADX WARN: Code duplicated, block: B:171:0x0287  */
    /* JADX WARN: Code duplicated, block: B:176:0x0295  */
    /* JADX WARN: Code duplicated, block: B:218:0x040a  */
    /* JADX WARN: Code duplicated, block: B:220:0x040d  */
    /* JADX WARN: Code duplicated, block: B:222:0x0414  */
    /* JADX WARN: Code duplicated, block: B:224:0x0422  */
    /* JADX WARN: Code duplicated, block: B:226:0x042a  */
    /* JADX WARN: Code duplicated, block: B:227:0x042f  */
    /* JADX WARN: Code duplicated, block: B:229:0x0437  */
    /* JADX WARN: Code duplicated, block: B:249:0x044b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:0x044b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x008d  */
    /* JADX WARN: Code duplicated, block: B:95:0x0150  */
    private static void parseAudioSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, @Nullable String str, boolean z, @Nullable DrmInitData drmInitData, StsdData stsdData, int i5) throws ParserException {
        int unsignedShort;
        int unsignedShort2;
        int unsignedFixedPoint1616;
        int i6;
        int i7;
        String str2;
        int i8;
        String str3;
        List<byte[]> listOf;
        EsdsData esdsFromParent;
        int i9;
        boolean z2;
        int i10;
        String str4;
        int iFindBoxPosition;
        byte[] bArr;
        int unsignedByte;
        byte[] bArr2;
        int unsignedByte2;
        String str5;
        byte[] bArr3;
        ImmutableList immutableListOf;
        int iIntValue = i;
        int i11 = i2;
        int i12 = i3;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        parsableByteArray.setPosition(i11 + 16);
        if (z) {
            unsignedShort = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
        } else {
            parsableByteArray.skipBytes(8);
            unsignedShort = 0;
        }
        if (unsignedShort == 0 || unsignedShort == 1) {
            unsignedShort2 = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(6);
            unsignedFixedPoint1616 = parsableByteArray.readUnsignedFixedPoint1616();
            parsableByteArray.setPosition(parsableByteArray.getPosition() - 4);
            i6 = parsableByteArray.readInt();
            if (unsignedShort == 1) {
                parsableByteArray.skipBytes(16);
            }
            i7 = -1;
        } else {
            if (unsignedShort != 2) {
                return;
            }
            parsableByteArray.skipBytes(16);
            unsignedFixedPoint1616 = (int) Math.round(parsableByteArray.readDouble());
            unsignedShort2 = parsableByteArray.readUnsignedIntToInt();
            parsableByteArray.skipBytes(4);
            int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            int unsignedIntToInt2 = parsableByteArray.readUnsignedIntToInt();
            boolean z3 = (unsignedIntToInt2 & 1) != 0;
            boolean z4 = (unsignedIntToInt2 & 2) != 0;
            if (z3) {
                if (unsignedIntToInt == 32) {
                    i7 = 4;
                } else {
                    i7 = -1;
                }
            } else if (unsignedIntToInt == 8) {
                i7 = 3;
            } else if (unsignedIntToInt == 16) {
                i7 = z4 ? 268435456 : 2;
            } else if (unsignedIntToInt == 24) {
                i7 = z4 ? C.ENCODING_PCM_24BIT_BIG_ENDIAN : 21;
            } else if (unsignedIntToInt == 32) {
                i7 = z4 ? C.ENCODING_PCM_32BIT_BIG_ENDIAN : 22;
            } else {
                i7 = -1;
            }
            parsableByteArray.skipBytes(8);
            i6 = 0;
        }
        if (iIntValue == 1767992678) {
            unsignedFixedPoint1616 = -1;
            unsignedShort2 = -1;
        } else {
            if (iIntValue != 1935764850) {
                unsignedFixedPoint1616 = iIntValue == 1935767394 ? 16000 : 8000;
            }
            unsignedShort2 = 1;
        }
        int position = parsableByteArray.getPosition();
        if (iIntValue == 1701733217) {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i11, i12);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData.trackEncryptionBoxes[i5] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        String str6 = MimeTypes.AUDIO_MPEGH_MHM1;
        if (iIntValue == 1633889587) {
            str2 = "audio/ac3";
        } else if (iIntValue == 1700998451) {
            str2 = "audio/eac3";
        } else if (iIntValue == 1633889588) {
            str2 = MimeTypes.AUDIO_AC4;
        } else if (iIntValue == 1685353315) {
            str2 = MimeTypes.AUDIO_DTS;
        } else if (iIntValue == 1685353320 || iIntValue == 1685353324) {
            str2 = MimeTypes.AUDIO_DTS_HD;
        } else if (iIntValue == 1685353317) {
            str2 = MimeTypes.AUDIO_DTS_EXPRESS;
        } else if (iIntValue == 1685353336) {
            str2 = MimeTypes.AUDIO_DTS_X;
        } else if (iIntValue == 1935764850) {
            str2 = "audio/3gpp";
        } else {
            if (iIntValue != 1935767394) {
                if (iIntValue == 1936684916) {
                    str2 = "audio/raw";
                    i8 = 2;
                } else if (iIntValue == 1953984371) {
                    str2 = "audio/raw";
                    i8 = 268435456;
                } else if (iIntValue == 1819304813) {
                    if (i7 == -1) {
                        str2 = "audio/raw";
                        i8 = 2;
                    } else {
                        i8 = i7;
                        str2 = "audio/raw";
                    }
                } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                    str2 = "audio/mpeg";
                } else if (iIntValue == 1835557169) {
                    str2 = MimeTypes.AUDIO_MPEGH_MHA1;
                } else if (iIntValue == 1835560241) {
                    i8 = i7;
                    str2 = MimeTypes.AUDIO_MPEGH_MHM1;
                } else if (iIntValue == 1634492771) {
                    str2 = MimeTypes.AUDIO_ALAC;
                } else if (iIntValue == 1634492791) {
                    str2 = "audio/g711-alaw";
                } else if (iIntValue == 1970037111) {
                    str2 = "audio/g711-mlaw";
                } else if (iIntValue == 1332770163) {
                    str2 = "audio/opus";
                } else if (iIntValue == 1716281667) {
                    str2 = "audio/flac";
                } else if (iIntValue == 1835823201) {
                    str2 = MimeTypes.AUDIO_TRUEHD;
                } else if (iIntValue == 1767992678) {
                    str2 = MimeTypes.AUDIO_IAMF;
                } else {
                    i8 = i7;
                    str2 = null;
                }
                int i13 = i8;
                str3 = null;
                listOf = null;
                esdsFromParent = null;
                BtrtData btrtFromParent = null;
                while (position - i11 < i12) {
                    parsableByteArray.setPosition(position);
                    i9 = parsableByteArray.readInt();
                    if (i9 > 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    ExtractorUtil.checkContainerInput(z2, "childAtomSize must be positive");
                    i10 = parsableByteArray.readInt();
                    if (i10 == 1835557187) {
                        parsableByteArray.setPosition(position + 8);
                        parsableByteArray.skipBytes(1);
                        unsignedByte2 = parsableByteArray.readUnsignedByte();
                        parsableByteArray.skipBytes(1);
                        if (Objects.equals(str2, str6)) {
                            str5 = String.format("mhm1.%02X", Integer.valueOf(unsignedByte2));
                        } else {
                            str5 = String.format("mha1.%02X", Integer.valueOf(unsignedByte2));
                        }
                        String str7 = str5;
                        int unsignedShort3 = parsableByteArray.readUnsignedShort();
                        bArr3 = new byte[unsignedShort3];
                        parsableByteArray.readBytes(bArr3, 0, unsignedShort3);
                        if (listOf == null) {
                            immutableListOf = ImmutableList.of(bArr3);
                        } else {
                            immutableListOf = ImmutableList.of(bArr3, listOf.get(0));
                        }
                        listOf = immutableListOf;
                        str3 = str7;
                    } else {
                        if (i10 == 1835557200) {
                            parsableByteArray.setPosition(position + 8);
                            unsignedByte = parsableByteArray.readUnsignedByte();
                            if (unsignedByte > 0) {
                                bArr2 = new byte[unsignedByte];
                                str4 = str6;
                                parsableByteArray.readBytes(bArr2, 0, unsignedByte);
                                if (listOf == null) {
                                    listOf = ImmutableList.of(bArr2);
                                } else {
                                    listOf = ImmutableList.of(listOf.get(0), bArr2);
                                }
                            }
                        } else {
                            str4 = str6;
                            if (i10 != 1702061171 || (z && i10 == 2002876005)) {
                                if (i10 == 1702061171) {
                                    iFindBoxPosition = position;
                                } else {
                                    iFindBoxPosition = findBoxPosition(parsableByteArray, Mp4Box.TYPE_esds, position, i9);
                                }
                                if (iFindBoxPosition != -1) {
                                    esdsFromParent = parseEsdsFromParent(parsableByteArray, iFindBoxPosition);
                                    str2 = esdsFromParent.mimeType;
                                    bArr = esdsFromParent.initializationData;
                                    if (bArr != null) {
                                        if ("audio/vorbis".equals(str2)) {
                                            listOf = VorbisUtil.parseVorbisCsdFromEsdsInitializationData(bArr);
                                        } else {
                                            if ("audio/mp4a-latm".equals(str2)) {
                                                AacUtil.Config audioSpecificConfig = AacUtil.parseAudioSpecificConfig(bArr);
                                                int i14 = audioSpecificConfig.sampleRateHz;
                                                int i15 = audioSpecificConfig.channelCount;
                                                str3 = audioSpecificConfig.codecs;
                                                unsignedFixedPoint1616 = i14;
                                                unsignedShort2 = i15;
                                            }
                                            listOf = ImmutableList.of(bArr);
                                        }
                                    }
                                }
                            } else if (i10 == 1651798644) {
                                btrtFromParent = parseBtrtFromParent(parsableByteArray, position);
                            } else if (i10 == 1684103987) {
                                parsableByteArray.setPosition(position + 8);
                                stsdData.format = Ac3Util.parseAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (i10 == 1684366131) {
                                parsableByteArray.setPosition(position + 8);
                                stsdData.format = Ac3Util.parseEAc3AnnexFFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (i10 == 1684103988) {
                                parsableByteArray.setPosition(position + 8);
                                stsdData.format = Ac4Util.parseAc4AnnexEFormat(parsableByteArray, Integer.toString(i4), str, drmInitDataCopyWithSchemeType);
                            } else if (i10 == 1684892784) {
                                if (i6 <= 0) {
                                    throw ParserException.createForMalformedContainer("Invalid sample rate for Dolby TrueHD MLP stream: " + i6, null);
                                }
                                unsignedFixedPoint1616 = i6;
                                unsignedShort2 = 2;
                            } else if (i10 == 1684305011 || i10 == 1969517683) {
                                stsdData.format = new Format.Builder().setId(i4).setSampleMimeType(str2).setChannelCount(unsignedShort2).setSampleRate(unsignedFixedPoint1616).setDrmInitData(drmInitDataCopyWithSchemeType).setLanguage(str).build();
                            } else if (i10 == 1682927731) {
                                int i16 = i9 - 8;
                                byte[] bArr4 = opusMagic;
                                byte[] bArrCopyOf = Arrays.copyOf(bArr4, bArr4.length + i16);
                                parsableByteArray.setPosition(position + 8);
                                parsableByteArray.readBytes(bArrCopyOf, bArr4.length, i16);
                                listOf = OpusUtil.buildInitializationData(bArrCopyOf);
                            } else if (i10 == 1684425825) {
                                byte[] bArr5 = new byte[i9 - 8];
                                bArr5[0] = 102;
                                bArr5[1] = 76;
                                bArr5[2] = 97;
                                bArr5[3] = 67;
                                parsableByteArray.setPosition(position + 12);
                                parsableByteArray.readBytes(bArr5, 4, i9 - 12);
                                listOf = ImmutableList.of(bArr5);
                            } else if (i10 == 1634492771) {
                                int i17 = i9 - 12;
                                byte[] bArr6 = new byte[i17];
                                parsableByteArray.setPosition(position + 12);
                                parsableByteArray.readBytes(bArr6, 0, i17);
                                Pair<Integer, Integer> alacAudioSpecificConfig = CodecSpecificDataUtil.parseAlacAudioSpecificConfig(bArr6);
                                int iIntValue2 = ((Integer) alacAudioSpecificConfig.first).intValue();
                                int iIntValue3 = ((Integer) alacAudioSpecificConfig.second).intValue();
                                listOf = ImmutableList.of(bArr6);
                                unsignedFixedPoint1616 = iIntValue2;
                                unsignedShort2 = iIntValue3;
                            } else if (i10 == 1767990114) {
                                parsableByteArray.setPosition(position + 9);
                                int unsignedLeb128ToInt = parsableByteArray.readUnsignedLeb128ToInt();
                                byte[] bArr7 = new byte[unsignedLeb128ToInt];
                                parsableByteArray.readBytes(bArr7, 0, unsignedLeb128ToInt);
                                listOf = ImmutableList.of(bArr7);
                            }
                            position += i9;
                            i11 = i2;
                            i12 = i3;
                            str6 = str4;
                        }
                        position += i9;
                        i11 = i2;
                        i12 = i3;
                        str6 = str4;
                    }
                    str4 = str6;
                    position += i9;
                    i11 = i2;
                    i12 = i3;
                    str6 = str4;
                }
                if (stsdData.format == null || str2 == null) {
                }
                Format.Builder language = new Format.Builder().setId(i4).setSampleMimeType(str2).setCodecs(str3).setChannelCount(unsignedShort2).setSampleRate(unsignedFixedPoint1616).setPcmEncoding(i13).setInitializationData(listOf).setDrmInitData(drmInitDataCopyWithSchemeType).setLanguage(str);
                if (esdsFromParent != null) {
                    language.setAverageBitrate(Ints.n(esdsFromParent.bitrate)).setPeakBitrate(Ints.n(esdsFromParent.peakBitrate));
                } else if (btrtFromParent != null) {
                    language.setAverageBitrate(Ints.n(btrtFromParent.avgBitrate)).setPeakBitrate(Ints.n(btrtFromParent.maxBitrate));
                }
                stsdData.format = language.build();
                return;
            }
            str2 = "audio/amr-wb";
        }
        i8 = i7;
        int i18 = i8;
        str3 = null;
        listOf = null;
        esdsFromParent = null;
        BtrtData btrtFromParent2 = null;
        while (position - i11 < i12) {
            parsableByteArray.setPosition(position);
            i9 = parsableByteArray.readInt();
            if (i9 > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            ExtractorUtil.checkContainerInput(z2, "childAtomSize must be positive");
            i10 = parsableByteArray.readInt();
            if (i10 == 1835557187) {
                parsableByteArray.setPosition(position + 8);
                parsableByteArray.skipBytes(1);
                unsignedByte2 = parsableByteArray.readUnsignedByte();
                parsableByteArray.skipBytes(1);
                if (Objects.equals(str2, str6)) {
                    str5 = String.format("mhm1.%02X", Integer.valueOf(unsignedByte2));
                } else {
                    str5 = String.format("mha1.%02X", Integer.valueOf(unsignedByte2));
                }
                String str8 = str5;
                int unsignedShort4 = parsableByteArray.readUnsignedShort();
                bArr3 = new byte[unsignedShort4];
                parsableByteArray.readBytes(bArr3, 0, unsignedShort4);
                if (listOf == null) {
                    immutableListOf = ImmutableList.of(bArr3);
                } else {
                    immutableListOf = ImmutableList.of(bArr3, listOf.get(0));
                }
                listOf = immutableListOf;
                str3 = str8;
            } else {
                if (i10 == 1835557200) {
                    parsableByteArray.setPosition(position + 8);
                    unsignedByte = parsableByteArray.readUnsignedByte();
                    if (unsignedByte > 0) {
                        bArr2 = new byte[unsignedByte];
                        str4 = str6;
                        parsableByteArray.readBytes(bArr2, 0, unsignedByte);
                        if (listOf == null) {
                            listOf = ImmutableList.of(bArr2);
                        } else {
                            listOf = ImmutableList.of(listOf.get(0), bArr2);
                        }
                    }
                } else {
                    str4 = str6;
                    if (i10 != 1702061171) {
                        if (i10 == 1702061171) {
                            iFindBoxPosition = position;
                        } else {
                            iFindBoxPosition = findBoxPosition(parsableByteArray, Mp4Box.TYPE_esds, position, i9);
                        }
                        if (iFindBoxPosition != -1) {
                            esdsFromParent = parseEsdsFromParent(parsableByteArray, iFindBoxPosition);
                            str2 = esdsFromParent.mimeType;
                            bArr = esdsFromParent.initializationData;
                            if (bArr != null) {
                                if ("audio/vorbis".equals(str2)) {
                                    listOf = VorbisUtil.parseVorbisCsdFromEsdsInitializationData(bArr);
                                } else {
                                    if ("audio/mp4a-latm".equals(str2)) {
                                        AacUtil.Config audioSpecificConfig2 = AacUtil.parseAudioSpecificConfig(bArr);
                                        int i19 = audioSpecificConfig2.sampleRateHz;
                                        int i110 = audioSpecificConfig2.channelCount;
                                        str3 = audioSpecificConfig2.codecs;
                                        unsignedFixedPoint1616 = i19;
                                        unsignedShort2 = i110;
                                    }
                                    listOf = ImmutableList.of(bArr);
                                }
                            }
                        }
                    } else {
                        if (i10 == 1702061171) {
                            iFindBoxPosition = position;
                        } else {
                            iFindBoxPosition = findBoxPosition(parsableByteArray, Mp4Box.TYPE_esds, position, i9);
                        }
                        if (iFindBoxPosition != -1) {
                            esdsFromParent = parseEsdsFromParent(parsableByteArray, iFindBoxPosition);
                            str2 = esdsFromParent.mimeType;
                            bArr = esdsFromParent.initializationData;
                            if (bArr != null) {
                                if ("audio/vorbis".equals(str2)) {
                                    listOf = VorbisUtil.parseVorbisCsdFromEsdsInitializationData(bArr);
                                } else {
                                    if ("audio/mp4a-latm".equals(str2)) {
                                        AacUtil.Config audioSpecificConfig3 = AacUtil.parseAudioSpecificConfig(bArr);
                                        int i111 = audioSpecificConfig3.sampleRateHz;
                                        int i112 = audioSpecificConfig3.channelCount;
                                        str3 = audioSpecificConfig3.codecs;
                                        unsignedFixedPoint1616 = i111;
                                        unsignedShort2 = i112;
                                    }
                                    listOf = ImmutableList.of(bArr);
                                }
                            }
                        }
                    }
                    position += i9;
                    i11 = i2;
                    i12 = i3;
                    str6 = str4;
                }
                position += i9;
                i11 = i2;
                i12 = i3;
                str6 = str4;
            }
            str4 = str6;
            position += i9;
            i11 = i2;
            i12 = i3;
            str6 = str4;
        }
        if (stsdData.format == null) {
        }
    }

    private static ColorInfo parseAv1c(ParsableByteArray parsableByteArray) {
        ColorInfo.Builder builder = new ColorInfo.Builder();
        ParsableBitArray parsableBitArray = new ParsableBitArray(parsableByteArray.getData());
        parsableBitArray.setPosition(parsableByteArray.getPosition() * 8);
        parsableBitArray.skipBytes(1);
        int bits = parsableBitArray.readBits(3);
        parsableBitArray.skipBits(6);
        boolean bit = parsableBitArray.readBit();
        boolean bit2 = parsableBitArray.readBit();
        if (bits == 2 && bit) {
            builder.setLumaBitdepth(bit2 ? 12 : 10);
            builder.setChromaBitdepth(bit2 ? 12 : 10);
        } else if (bits <= 2) {
            builder.setLumaBitdepth(bit ? 10 : 8);
            builder.setChromaBitdepth(bit ? 10 : 8);
        }
        parsableBitArray.skipBits(13);
        parsableBitArray.skipBit();
        int bits2 = parsableBitArray.readBits(4);
        if (bits2 != 1) {
            Log.i(TAG, "Unsupported obu_type: " + bits2);
            return builder.build();
        }
        if (parsableBitArray.readBit()) {
            Log.i(TAG, "Unsupported obu_extension_flag");
            return builder.build();
        }
        boolean bit3 = parsableBitArray.readBit();
        parsableBitArray.skipBit();
        if (bit3 && parsableBitArray.readBits(8) > 127) {
            Log.i(TAG, "Excessive obu_size");
            return builder.build();
        }
        int bits3 = parsableBitArray.readBits(3);
        parsableBitArray.skipBit();
        if (parsableBitArray.readBit()) {
            Log.i(TAG, "Unsupported reduced_still_picture_header");
            return builder.build();
        }
        if (parsableBitArray.readBit()) {
            Log.i(TAG, "Unsupported timing_info_present_flag");
            return builder.build();
        }
        if (parsableBitArray.readBit()) {
            Log.i(TAG, "Unsupported initial_display_delay_present_flag");
            return builder.build();
        }
        int bits4 = parsableBitArray.readBits(5);
        boolean z = false;
        for (int i = 0; i <= bits4; i++) {
            parsableBitArray.skipBits(12);
            if (parsableBitArray.readBits(5) > 7) {
                parsableBitArray.skipBit();
            }
        }
        int bits5 = parsableBitArray.readBits(4);
        int bits6 = parsableBitArray.readBits(4);
        parsableBitArray.skipBits(bits5 + 1);
        parsableBitArray.skipBits(bits6 + 1);
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(7);
        }
        parsableBitArray.skipBits(7);
        boolean bit4 = parsableBitArray.readBit();
        if (bit4) {
            parsableBitArray.skipBits(2);
        }
        if ((parsableBitArray.readBit() ? 2 : parsableBitArray.readBits(1)) > 0 && !parsableBitArray.readBit()) {
            parsableBitArray.skipBits(1);
        }
        if (bit4) {
            parsableBitArray.skipBits(3);
        }
        parsableBitArray.skipBits(3);
        boolean bit5 = parsableBitArray.readBit();
        if (bits3 == 2 && bit5) {
            parsableBitArray.skipBit();
        }
        if (bits3 != 1 && parsableBitArray.readBit()) {
            z = true;
        }
        if (parsableBitArray.readBit()) {
            int bits7 = parsableBitArray.readBits(8);
            int bits8 = parsableBitArray.readBits(8);
            builder.setColorSpace(ColorInfo.isoColorPrimariesToColorSpace(bits7)).setColorRange(((z || bits7 != 1 || bits8 != 13 || parsableBitArray.readBits(8) != 0) ? parsableBitArray.readBits(1) : 1) != 1 ? 2 : 1).setColorTransfer(ColorInfo.isoTransferCharacteristicsToColorTransfer(bits8));
        }
        return builder.build();
    }

    private static BtrtData parseBtrtFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        parsableByteArray.skipBytes(4);
        return new BtrtData(parsableByteArray.readUnsignedInt(), parsableByteArray.readUnsignedInt());
    }

    @Nullable
    public static Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        int i3 = i + 8;
        int i4 = -1;
        int i5 = 0;
        String string = null;
        Integer numValueOf = null;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int i6 = parsableByteArray.readInt();
            int i7 = parsableByteArray.readInt();
            if (i7 == 1718775137) {
                numValueOf = Integer.valueOf(parsableByteArray.readInt());
            } else if (i7 == 1935894637) {
                parsableByteArray.skipBytes(4);
                string = parsableByteArray.readString(4);
            } else if (i7 == 1935894633) {
                i4 = i3;
                i5 = i6;
            }
            i3 += i6;
        }
        if (!C.CENC_TYPE_cenc.equals(string) && !C.CENC_TYPE_cbc1.equals(string) && !C.CENC_TYPE_cens.equals(string) && !C.CENC_TYPE_cbcs.equals(string)) {
            return null;
        }
        ExtractorUtil.checkContainerInput(numValueOf != null, "frma atom is mandatory");
        ExtractorUtil.checkContainerInput(i4 != -1, "schi atom is mandatory");
        TrackEncryptionBox schiFromParent = parseSchiFromParent(parsableByteArray, i4, i5, string);
        ExtractorUtil.checkContainerInput(schiFromParent != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, (TrackEncryptionBox) Util.castNonNull(schiFromParent));
    }

    @Nullable
    private static Pair<long[], long[]> parseEdts(Mp4Box.ContainerBox containerBox) {
        Mp4Box.LeafBox leafBoxOfType = containerBox.getLeafBoxOfType(Mp4Box.TYPE_elst);
        if (leafBoxOfType == null) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafBoxOfType.data;
        parsableByteArray.setPosition(8);
        int fullBoxVersion = parseFullBoxVersion(parsableByteArray.readInt());
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[unsignedIntToInt];
        long[] jArr2 = new long[unsignedIntToInt];
        for (int i = 0; i < unsignedIntToInt; i++) {
            jArr[i] = fullBoxVersion == 1 ? parsableByteArray.readUnsignedLongToLong() : parsableByteArray.readUnsignedInt();
            jArr2[i] = fullBoxVersion == 1 ? parsableByteArray.readLong() : parsableByteArray.readInt();
            if (parsableByteArray.readShort() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            parsableByteArray.skipBytes(2);
        }
        return Pair.create(jArr, jArr2);
    }

    private static EsdsData parseEsdsFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 12);
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        if ((unsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((unsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedByte());
        }
        if ((unsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        String mimeTypeFromMp4ObjectType = MimeTypes.getMimeTypeFromMp4ObjectType(parsableByteArray.readUnsignedByte());
        if ("audio/mpeg".equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS.equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS_HD.equals(mimeTypeFromMp4ObjectType)) {
            return new EsdsData(mimeTypeFromMp4ObjectType, null, -1L, -1L);
        }
        parsableByteArray.skipBytes(4);
        long unsignedInt = parsableByteArray.readUnsignedInt();
        long unsignedInt2 = parsableByteArray.readUnsignedInt();
        parsableByteArray.skipBytes(1);
        int expandableClassSize = parseExpandableClassSize(parsableByteArray);
        byte[] bArr = new byte[expandableClassSize];
        parsableByteArray.readBytes(bArr, 0, expandableClassSize);
        return new EsdsData(mimeTypeFromMp4ObjectType, bArr, unsignedInt2 > 0 ? unsignedInt2 : -1L, unsignedInt > 0 ? unsignedInt : -1L);
    }

    private static int parseExpandableClassSize(ParsableByteArray parsableByteArray) {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i = unsignedByte & 127;
        while ((unsignedByte & 128) == 128) {
            unsignedByte = parsableByteArray.readUnsignedByte();
            i = (i << 7) | (unsignedByte & 127);
        }
        return i;
    }

    public static int parseFullBoxFlags(int i) {
        return i & 16777215;
    }

    public static int parseFullBoxVersion(int i) {
        return (i >> 24) & 255;
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    @Nullable
    private static Metadata parseIlst(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.getPosition() < i) {
            Metadata.Entry ilstElement = MetadataUtil.parseIlstElement(parsableByteArray);
            if (ilstElement != null) {
                arrayList.add(ilstElement);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static MdhdData parseMdhd(ParsableByteArray parsableByteArray) {
        long jScaleLargeTimestamp;
        parsableByteArray.setPosition(8);
        int fullBoxVersion = parseFullBoxVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullBoxVersion == 0 ? 8 : 16);
        long unsignedInt = parsableByteArray.readUnsignedInt();
        int position = parsableByteArray.getPosition();
        int i = fullBoxVersion == 0 ? 4 : 8;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                parsableByteArray.skipBytes(i);
                break;
            }
            if (parsableByteArray.getData()[position + i2] != -1) {
                long unsignedInt2 = fullBoxVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
                if (unsignedInt2 == 0) {
                    break;
                }
                jScaleLargeTimestamp = Util.scaleLargeTimestamp(unsignedInt2, 1000000L, unsignedInt);
                return new MdhdData(unsignedInt, jScaleLargeTimestamp, getLanguageFromCode(parsableByteArray.readUnsignedShort()));
            }
            i2++;
        }
        jScaleLargeTimestamp = -9223372036854775807L;
        return new MdhdData(unsignedInt, jScaleLargeTimestamp, getLanguageFromCode(parsableByteArray.readUnsignedShort()));
    }

    @Nullable
    public static Metadata parseMdtaFromMeta(Mp4Box.ContainerBox containerBox) {
        Mp4Box.LeafBox leafBoxOfType = containerBox.getLeafBoxOfType(Mp4Box.TYPE_hdlr);
        Mp4Box.LeafBox leafBoxOfType2 = containerBox.getLeafBoxOfType(Mp4Box.TYPE_keys);
        Mp4Box.LeafBox leafBoxOfType3 = containerBox.getLeafBoxOfType(Mp4Box.TYPE_ilst);
        if (leafBoxOfType == null || leafBoxOfType2 == null || leafBoxOfType3 == null || parseHdlr(leafBoxOfType.data) != TYPE_mdta) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafBoxOfType2.data;
        parsableByteArray.setPosition(12);
        int i = parsableByteArray.readInt();
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            strArr[i2] = parsableByteArray.readString(i3 - 8);
        }
        ParsableByteArray parsableByteArray2 = leafBoxOfType3.data;
        parsableByteArray2.setPosition(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray2.bytesLeft() > 8) {
            int position = parsableByteArray2.getPosition();
            int i4 = parsableByteArray2.readInt();
            int i5 = parsableByteArray2.readInt() - 1;
            if (i5 < 0 || i5 >= i) {
                Log.w(TAG, "Skipped metadata with unknown key index: " + i5);
            } else {
                MdtaMetadataEntry mdtaMetadataEntryFromIlst = MetadataUtil.parseMdtaMetadataEntryFromIlst(parsableByteArray2, position + i4, strArr[i5]);
                if (mdtaMetadataEntryFromIlst != null) {
                    arrayList.add(mdtaMetadataEntryFromIlst);
                }
            }
            parsableByteArray2.setPosition(position + i4);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static void parseMetaDataSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 16);
        if (i == 1835365492) {
            parsableByteArray.readNullTerminatedString();
            String nullTerminatedString = parsableByteArray.readNullTerminatedString();
            if (nullTerminatedString != null) {
                stsdData.format = new Format.Builder().setId(i3).setSampleMimeType(nullTerminatedString).build();
            }
        }
    }

    public static Mp4TimestampData parseMvhd(ParsableByteArray parsableByteArray) {
        long unsignedInt;
        long unsignedInt2;
        parsableByteArray.setPosition(8);
        if (parseFullBoxVersion(parsableByteArray.readInt()) == 0) {
            unsignedInt = parsableByteArray.readUnsignedInt();
            unsignedInt2 = parsableByteArray.readUnsignedInt();
        } else {
            unsignedInt = parsableByteArray.readLong();
            unsignedInt2 = parsableByteArray.readLong();
        }
        return new Mp4TimestampData(unsignedInt, unsignedInt2, parsableByteArray.readUnsignedInt());
    }

    private static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return parsableByteArray.readUnsignedIntToInt() / parsableByteArray.readUnsignedIntToInt();
    }

    @Nullable
    private static byte[] parseProjFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int i4 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1886547818) {
                return Arrays.copyOfRange(parsableByteArray.getData(), i3, i4 + i3);
            }
            i3 += i4;
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        Pair<Integer, TrackEncryptionBox> commonEncryptionSinfFromParent;
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int i3 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(i3 > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == 1936289382 && (commonEncryptionSinfFromParent = parseCommonEncryptionSinfFromParent(parsableByteArray, position, i3)) != null) {
                return commonEncryptionSinfFromParent;
            }
            position += i3;
        }
        return null;
    }

    @Nullable
    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i + 8;
        while (true) {
            byte[] bArr = null;
            if (i5 - i >= i2) {
                return null;
            }
            parsableByteArray.setPosition(i5);
            int i6 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1952804451) {
                int fullBoxVersion = parseFullBoxVersion(parsableByteArray.readInt());
                parsableByteArray.skipBytes(1);
                if (fullBoxVersion == 0) {
                    parsableByteArray.skipBytes(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int unsignedByte = parsableByteArray.readUnsignedByte();
                    i3 = unsignedByte & 15;
                    i4 = (unsignedByte & 240) >> 4;
                }
                boolean z = parsableByteArray.readUnsignedByte() == 1;
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                byte[] bArr2 = new byte[16];
                parsableByteArray.readBytes(bArr2, 0, 16);
                if (z && unsignedByte2 == 0) {
                    int unsignedByte3 = parsableByteArray.readUnsignedByte();
                    bArr = new byte[unsignedByte3];
                    parsableByteArray.readBytes(bArr, 0, unsignedByte3);
                }
                return new TrackEncryptionBox(z, str, unsignedByte2, bArr2, i4, i3, bArr);
            }
            i5 += i6;
        }
    }

    public static TrackSampleTable parseStbl(Track track, Mp4Box.ContainerBox containerBox, GaplessInfoHolder gaplessInfoHolder) throws ParserException {
        SampleSizeBox stz2SampleSizeBox;
        boolean z;
        int unsignedIntToInt;
        int unsignedIntToInt2;
        int unsignedIntToInt3;
        int i;
        int i2;
        long[] jArr;
        int[] iArr;
        long[] jArrCopyOf;
        int[] iArrCopyOf;
        int i3;
        boolean z2;
        int i4;
        Track trackCopyWithFormat;
        int[] iArr2;
        long[] jArr2;
        long j;
        long j2;
        int i5;
        int i6;
        int i7;
        int i8;
        int[] iArr3;
        boolean z3;
        int i9;
        int i10;
        Track trackCopyWithFormat2 = track;
        Mp4Box.LeafBox leafBoxOfType = containerBox.getLeafBoxOfType(Mp4Box.TYPE_stsz);
        if (leafBoxOfType != null) {
            stz2SampleSizeBox = new StszSampleSizeBox(leafBoxOfType, trackCopyWithFormat2.format);
        } else {
            Mp4Box.LeafBox leafBoxOfType2 = containerBox.getLeafBoxOfType(Mp4Box.TYPE_stz2);
            if (leafBoxOfType2 == null) {
                throw ParserException.createForMalformedContainer("Track has no sample table size information", null);
            }
            stz2SampleSizeBox = new Stz2SampleSizeBox(leafBoxOfType2);
        }
        int sampleCount = stz2SampleSizeBox.getSampleCount();
        if (sampleCount == 0) {
            return new TrackSampleTable(track, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        if (trackCopyWithFormat2.type == 2) {
            long j3 = trackCopyWithFormat2.mediaDurationUs;
            if (j3 > 0) {
                trackCopyWithFormat2 = trackCopyWithFormat2.copyWithFormat(trackCopyWithFormat2.format.buildUpon().setFrameRate(sampleCount / (j3 / 1000000.0f)).build());
            }
        }
        Mp4Box.LeafBox leafBoxOfType3 = containerBox.getLeafBoxOfType(Mp4Box.TYPE_stco);
        if (leafBoxOfType3 == null) {
            leafBoxOfType3 = (Mp4Box.LeafBox) Assertions.checkNotNull(containerBox.getLeafBoxOfType(Mp4Box.TYPE_co64));
            z = true;
        } else {
            z = false;
        }
        ParsableByteArray parsableByteArray = leafBoxOfType3.data;
        ParsableByteArray parsableByteArray2 = ((Mp4Box.LeafBox) Assertions.checkNotNull(containerBox.getLeafBoxOfType(Mp4Box.TYPE_stsc))).data;
        ParsableByteArray parsableByteArray3 = ((Mp4Box.LeafBox) Assertions.checkNotNull(containerBox.getLeafBoxOfType(Mp4Box.TYPE_stts))).data;
        Mp4Box.LeafBox leafBoxOfType4 = containerBox.getLeafBoxOfType(Mp4Box.TYPE_stss);
        ParsableByteArray parsableByteArray4 = leafBoxOfType4 != null ? leafBoxOfType4.data : null;
        Mp4Box.LeafBox leafBoxOfType5 = containerBox.getLeafBoxOfType(Mp4Box.TYPE_ctts);
        ParsableByteArray parsableByteArray5 = leafBoxOfType5 != null ? leafBoxOfType5.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray2, parsableByteArray, z);
        parsableByteArray3.setPosition(12);
        int unsignedIntToInt4 = parsableByteArray3.readUnsignedIntToInt() - 1;
        int unsignedIntToInt5 = parsableByteArray3.readUnsignedIntToInt();
        int unsignedIntToInt6 = parsableByteArray3.readUnsignedIntToInt();
        if (parsableByteArray5 != null) {
            parsableByteArray5.setPosition(12);
            unsignedIntToInt = parsableByteArray5.readUnsignedIntToInt();
        } else {
            unsignedIntToInt = 0;
        }
        if (parsableByteArray4 != null) {
            parsableByteArray4.setPosition(12);
            unsignedIntToInt3 = parsableByteArray4.readUnsignedIntToInt();
            if (unsignedIntToInt3 > 0) {
                unsignedIntToInt2 = parsableByteArray4.readUnsignedIntToInt() - 1;
            } else {
                unsignedIntToInt2 = -1;
                parsableByteArray4 = null;
            }
        } else {
            unsignedIntToInt2 = -1;
            unsignedIntToInt3 = 0;
        }
        int fixedSampleSize = stz2SampleSizeBox.getFixedSampleSize();
        String str = trackCopyWithFormat2.format.sampleMimeType;
        if (fixedSampleSize != -1 && ("audio/raw".equals(str) || "audio/g711-mlaw".equals(str) || "audio/g711-alaw".equals(str)) && unsignedIntToInt4 == 0 && unsignedIntToInt == 0 && unsignedIntToInt3 == 0) {
            int i11 = chunkIterator.length;
            long[] jArr3 = new long[i11];
            int[] iArr4 = new int[i11];
            while (chunkIterator.moveNext()) {
                int i12 = chunkIterator.index;
                jArr3[i12] = chunkIterator.offset;
                iArr4[i12] = chunkIterator.numSamples;
            }
            FixedSampleSizeRechunker.Results resultsRechunk = FixedSampleSizeRechunker.rechunk(fixedSampleSize, jArr3, iArr4, unsignedIntToInt6);
            jArr = resultsRechunk.offsets;
            int[] iArr5 = resultsRechunk.sizes;
            int i13 = resultsRechunk.maximumSize;
            long[] jArr4 = resultsRechunk.timestamps;
            iArrCopyOf = resultsRechunk.flags;
            long j4 = resultsRechunk.duration;
            j2 = resultsRechunk.totalSize;
            trackCopyWithFormat = trackCopyWithFormat2;
            iArr2 = iArr5;
            i = i13;
            jArr2 = jArr4;
            j = j4;
        } else {
            long[] jArr5 = new long[sampleCount];
            int[] iArr6 = new int[sampleCount];
            long[] jArr6 = new long[sampleCount];
            int[] iArr7 = new int[sampleCount];
            int i14 = unsignedIntToInt4;
            int unsignedIntToInt7 = unsignedIntToInt2;
            int i15 = unsignedIntToInt;
            i = 0;
            int i16 = 0;
            int i17 = 0;
            int unsignedIntToInt8 = 0;
            long j5 = 0;
            long j6 = 0;
            long j7 = 0;
            Track track2 = trackCopyWithFormat2;
            int i18 = 0;
            while (true) {
                if (i18 >= sampleCount) {
                    i2 = unsignedIntToInt3;
                    jArr = jArr5;
                    iArr = iArr6;
                    jArrCopyOf = jArr6;
                    iArrCopyOf = iArr7;
                    i3 = i16;
                    break;
                }
                long j8 = j7;
                int i19 = i16;
                boolean zMoveNext = true;
                while (i19 == 0) {
                    zMoveNext = chunkIterator.moveNext();
                    if (!zMoveNext) {
                        break;
                    }
                    int i20 = unsignedIntToInt6;
                    long j9 = chunkIterator.offset;
                    i19 = chunkIterator.numSamples;
                    j8 = j9;
                    unsignedIntToInt6 = i20;
                    unsignedIntToInt3 = unsignedIntToInt3;
                    sampleCount = sampleCount;
                }
                int i21 = sampleCount;
                int i22 = unsignedIntToInt6;
                i2 = unsignedIntToInt3;
                if (!zMoveNext) {
                    Log.w(TAG, "Unexpected end of chunk data");
                    long[] jArrCopyOf2 = Arrays.copyOf(jArr5, i18);
                    int[] iArrCopyOf2 = Arrays.copyOf(iArr6, i18);
                    jArrCopyOf = Arrays.copyOf(jArr6, i18);
                    iArrCopyOf = Arrays.copyOf(iArr7, i18);
                    jArr = jArrCopyOf2;
                    iArr = iArrCopyOf2;
                    sampleCount = i18;
                    i3 = i19;
                    break;
                }
                if (parsableByteArray5 != null) {
                    while (unsignedIntToInt8 == 0 && i15 > 0) {
                        unsignedIntToInt8 = parsableByteArray5.readUnsignedIntToInt();
                        i17 = parsableByteArray5.readInt();
                        i15--;
                    }
                    unsignedIntToInt8--;
                }
                int i23 = i17;
                jArr5[i18] = j8;
                int nextSampleSize = stz2SampleSizeBox.readNextSampleSize();
                iArr6[i18] = nextSampleSize;
                ChunkIterator chunkIterator2 = chunkIterator;
                SampleSizeBox sampleSizeBox = stz2SampleSizeBox;
                j6 += (long) nextSampleSize;
                if (nextSampleSize > i) {
                    i = nextSampleSize;
                }
                jArr6[i18] = j5 + ((long) i23);
                iArr7[i18] = parsableByteArray4 == null ? 1 : 0;
                if (i18 == unsignedIntToInt7) {
                    iArr7[i18] = 1;
                    i6 = i2 - 1;
                    if (i6 > 0) {
                        unsignedIntToInt7 = ((ParsableByteArray) Assertions.checkNotNull(parsableByteArray4)).readUnsignedIntToInt() - 1;
                    }
                    i5 = unsignedIntToInt7;
                } else {
                    i5 = unsignedIntToInt7;
                    i6 = i2;
                }
                j5 += (long) i22;
                unsignedIntToInt5--;
                if (unsignedIntToInt5 != 0 || i14 <= 0) {
                    i7 = i22;
                    i8 = i14;
                } else {
                    int unsignedIntToInt9 = parsableByteArray3.readUnsignedIntToInt();
                    i7 = parsableByteArray3.readInt();
                    i8 = i14 - 1;
                    unsignedIntToInt5 = unsignedIntToInt9;
                }
                int i24 = i7;
                long j10 = j8 + ((long) iArr6[i18]);
                i16 = i19 - 1;
                i18++;
                j7 = j10;
                i17 = i23;
                unsignedIntToInt7 = i5;
                sampleCount = i21;
                chunkIterator = chunkIterator2;
                int i25 = i8;
                unsignedIntToInt6 = i24;
                i14 = i25;
                unsignedIntToInt3 = i6;
                stz2SampleSizeBox = sampleSizeBox;
            }
            long j11 = j5 + ((long) i17);
            if (parsableByteArray5 == null) {
                z2 = true;
                break;
            }
            while (true) {
                if (i15 <= 0) {
                    z2 = true;
                    break;
                }
                if (parsableByteArray5.readUnsignedIntToInt() != 0) {
                    z2 = false;
                    break;
                }
                parsableByteArray5.readInt();
                i15--;
            }
            if (i2 == 0 && unsignedIntToInt5 == 0 && i3 == 0 && i14 == 0) {
                i4 = unsignedIntToInt8;
                if (i4 == 0 && z2) {
                    trackCopyWithFormat = track2;
                }
                iArr2 = iArr;
                jArr2 = jArrCopyOf;
                j = j11;
                j2 = j6;
            } else {
                i4 = unsignedIntToInt8;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Inconsistent stbl box for track ");
            trackCopyWithFormat = track2;
            sb.append(trackCopyWithFormat.id);
            sb.append(": remainingSynchronizationSamples ");
            sb.append(i2);
            sb.append(", remainingSamplesAtTimestampDelta ");
            sb.append(unsignedIntToInt5);
            sb.append(", remainingSamplesInChunk ");
            sb.append(i3);
            sb.append(", remainingTimestampDeltaChanges ");
            sb.append(i14);
            sb.append(", remainingSamplesAtTimestampOffset ");
            sb.append(i4);
            sb.append(!z2 ? ", ctts invalid" : "");
            Log.w(TAG, sb.toString());
            iArr2 = iArr;
            jArr2 = jArrCopyOf;
            j = j11;
            j2 = j6;
        }
        int[] iArr8 = iArrCopyOf;
        long j12 = trackCopyWithFormat.mediaDurationUs;
        if (j12 > 0) {
            long jScaleLargeValue = Util.scaleLargeValue(j2 * 8, 1000000L, j12, RoundingMode.HALF_DOWN);
            if (jScaleLargeValue > 0 && jScaleLargeValue < 2147483647L) {
                trackCopyWithFormat = trackCopyWithFormat.copyWithFormat(trackCopyWithFormat.format.buildUpon().setAverageBitrate((int) jScaleLargeValue).build());
            }
        }
        int[] iArr9 = iArr8;
        long jScaleLargeTimestamp = Util.scaleLargeTimestamp(j, 1000000L, trackCopyWithFormat.timescale);
        long[] jArr7 = trackCopyWithFormat.editListDurations;
        if (jArr7 == null) {
            Util.scaleLargeTimestampsInPlace(jArr2, 1000000L, trackCopyWithFormat.timescale);
            return new TrackSampleTable(trackCopyWithFormat, jArr, iArr2, i, jArr2, iArr9, jScaleLargeTimestamp);
        }
        if (jArr7.length == 1 && trackCopyWithFormat.type == 1 && jArr2.length >= 2) {
            long j13 = ((long[]) Assertions.checkNotNull(trackCopyWithFormat.editListMediaTimes))[0];
            long jScaleLargeTimestamp2 = Util.scaleLargeTimestamp(trackCopyWithFormat.editListDurations[0], trackCopyWithFormat.timescale, trackCopyWithFormat.movieTimescale) + j13;
            if (canApplyEditWithGaplessInfo(jArr2, j, j13, jScaleLargeTimestamp2)) {
                long j14 = j - jScaleLargeTimestamp2;
                long jScaleLargeTimestamp3 = Util.scaleLargeTimestamp(j13 - jArr2[0], trackCopyWithFormat.format.sampleRate, trackCopyWithFormat.timescale);
                long jScaleLargeTimestamp4 = Util.scaleLargeTimestamp(j14, trackCopyWithFormat.format.sampleRate, trackCopyWithFormat.timescale);
                if ((jScaleLargeTimestamp3 != 0 || jScaleLargeTimestamp4 != 0) && jScaleLargeTimestamp3 <= 2147483647L && jScaleLargeTimestamp4 <= 2147483647L) {
                    gaplessInfoHolder.encoderDelay = (int) jScaleLargeTimestamp3;
                    gaplessInfoHolder.encoderPadding = (int) jScaleLargeTimestamp4;
                    Util.scaleLargeTimestampsInPlace(jArr2, 1000000L, trackCopyWithFormat.timescale);
                    return new TrackSampleTable(trackCopyWithFormat, jArr, iArr2, i, jArr2, iArr9, Util.scaleLargeTimestamp(trackCopyWithFormat.editListDurations[0], 1000000L, trackCopyWithFormat.movieTimescale));
                }
            }
        }
        long[] jArr8 = trackCopyWithFormat.editListDurations;
        if (jArr8.length == 1 && jArr8[0] == 0) {
            long j15 = ((long[]) Assertions.checkNotNull(trackCopyWithFormat.editListMediaTimes))[0];
            for (int i26 = 0; i26 < jArr2.length; i26++) {
                jArr2[i26] = Util.scaleLargeTimestamp(jArr2[i26] - j15, 1000000L, trackCopyWithFormat.timescale);
            }
            return new TrackSampleTable(trackCopyWithFormat, jArr, iArr2, i, jArr2, iArr9, Util.scaleLargeTimestamp(j - j15, 1000000L, trackCopyWithFormat.timescale));
        }
        boolean z4 = trackCopyWithFormat.type == 1;
        int[] iArr10 = new int[jArr8.length];
        int[] iArr11 = new int[jArr8.length];
        long[] jArr9 = (long[]) Assertions.checkNotNull(trackCopyWithFormat.editListMediaTimes);
        int i27 = 0;
        boolean z5 = false;
        int i28 = 0;
        int i29 = 0;
        while (true) {
            long[] jArr10 = trackCopyWithFormat.editListDurations;
            if (i27 >= jArr10.length) {
                break;
            }
            int i30 = i;
            long j16 = jArr9[i27];
            if (j16 != -1) {
                boolean z6 = z5;
                int i31 = i28;
                long jScaleLargeTimestamp5 = Util.scaleLargeTimestamp(jArr10[i27], trackCopyWithFormat.timescale, trackCopyWithFormat.movieTimescale);
                iArr10[i27] = Util.binarySearchFloor(jArr2, j16, true, true);
                long j17 = j16 + jScaleLargeTimestamp5;
                iArr11[i27] = Util.binarySearchCeil(jArr2, j17, z4, false);
                int i32 = iArr10[i27];
                while (true) {
                    i10 = iArr10[i27];
                    iArr3 = iArr9;
                    if (i10 < 0 || (iArr3[i10] & 1) != 0) {
                        break;
                    }
                    iArr10[i27] = i10 - 1;
                    iArr9 = iArr3;
                }
                if (i10 < 0) {
                    iArr10[i27] = i32;
                    while (true) {
                        int i33 = iArr10[i27];
                        if (i33 >= iArr11[i27] || (iArr3[i33] & 1) != 0) {
                            break;
                        }
                        iArr10[i27] = i33 + 1;
                    }
                }
                if (trackCopyWithFormat.type == 2 && iArr10[i27] != iArr11[i27]) {
                    while (true) {
                        int i34 = iArr11[i27];
                        if (i34 >= jArr2.length - 1 || jArr2[i34 + 1] > j17) {
                            break;
                        }
                        iArr11[i27] = i34 + 1;
                    }
                }
                int i35 = iArr11[i27];
                int i36 = iArr10[i27];
                i9 = i31 + (i35 - i36);
                z3 = z6 | (i29 != i36);
                i29 = i35;
            } else {
                int i37 = i28;
                iArr3 = iArr9;
                z3 = z5;
                i9 = i37;
            }
            i27++;
            iArr9 = iArr3;
            z5 = z3;
            iArr2 = iArr2;
            i28 = i9;
            i = i30;
            sampleCount = sampleCount;
        }
        int[] iArr12 = iArr2;
        int i38 = i28;
        int i39 = i;
        int[] iArr13 = iArr9;
        boolean z7 = z5 | (i38 != sampleCount);
        long[] jArr11 = z7 ? new long[i38] : jArr;
        int[] iArr14 = z7 ? new int[i38] : iArr12;
        int i40 = z7 ? 0 : i39;
        int[] iArr15 = z7 ? new int[i38] : iArr13;
        long[] jArr12 = new long[i38];
        int i41 = i40;
        int i42 = 0;
        int i43 = 0;
        long j18 = 0;
        boolean z8 = false;
        while (i42 < trackCopyWithFormat.editListDurations.length) {
            long j19 = trackCopyWithFormat.editListMediaTimes[i42];
            int i44 = iArr10[i42];
            int[] iArr16 = iArr10;
            int i45 = iArr11[i42];
            int[] iArr17 = iArr11;
            if (z7) {
                int i46 = i45 - i44;
                System.arraycopy(jArr, i44, jArr11, i43, i46);
                System.arraycopy(iArr12, i44, iArr14, i43, i46);
                System.arraycopy(iArr13, i44, iArr15, i43, i46);
            }
            int i47 = i41;
            while (i44 < i45) {
                int i48 = i45;
                int[] iArr18 = iArr13;
                long jScaleLargeTimestamp6 = Util.scaleLargeTimestamp(j18, 1000000L, trackCopyWithFormat.movieTimescale);
                long[] jArr13 = jArr11;
                long[] jArr14 = jArr;
                long jScaleLargeTimestamp7 = Util.scaleLargeTimestamp(jArr2[i44] - j19, 1000000L, trackCopyWithFormat.timescale);
                if (jScaleLargeTimestamp7 < 0) {
                    z8 = true;
                }
                jArr12[i43] = jScaleLargeTimestamp6 + jScaleLargeTimestamp7;
                if (z7 && iArr14[i43] > i47) {
                    i47 = iArr12[i44];
                }
                i43++;
                i44++;
                iArr13 = iArr18;
                i45 = i48;
                jArr = jArr14;
                jArr11 = jArr13;
            }
            j18 += trackCopyWithFormat.editListDurations[i42];
            i42++;
            iArr13 = iArr13;
            i41 = i47;
            iArr10 = iArr16;
            iArr11 = iArr17;
        }
        long[] jArr15 = jArr11;
        long jScaleLargeTimestamp8 = Util.scaleLargeTimestamp(j18, 1000000L, trackCopyWithFormat.movieTimescale);
        if (z8) {
            trackCopyWithFormat = trackCopyWithFormat.copyWithFormat(trackCopyWithFormat.format.buildUpon().setHasPrerollSamples(true).build());
        }
        return new TrackSampleTable(trackCopyWithFormat, jArr15, iArr14, i41, jArr12, iArr15, jScaleLargeTimestamp8);
    }

    @Nullable
    private static EyesData parseStereoViewBox(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        parsableByteArray.setPosition(i + 8);
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int i3 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(i3 > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == 1937011305) {
                parsableByteArray.skipBytes(4);
                int unsignedByte = parsableByteArray.readUnsignedByte();
                return new EyesData(new StriData((unsignedByte & 1) == 1, (unsignedByte & 2) == 2, (unsignedByte & 8) == 8));
            }
            position += i3;
        }
        return null;
    }

    private static StsdData parseStsd(ParsableByteArray parsableByteArray, int i, int i2, @Nullable String str, @Nullable DrmInitData drmInitData, boolean z) throws ParserException {
        int i3;
        parsableByteArray.setPosition(12);
        int i4 = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(i4);
        for (int i5 = 0; i5 < i4; i5++) {
            int position = parsableByteArray.getPosition();
            int i6 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(i6 > 0, "childAtomSize must be positive");
            int i7 = parsableByteArray.readInt();
            if (i7 == 1635148593 || i7 == 1635148595 || i7 == 1701733238 || i7 == 1831958048 || i7 == 1836070006 || i7 == 1752589105 || i7 == 1751479857 || i7 == 1932670515 || i7 == 1211250227 || i7 == 1748121139 || i7 == 1987063864 || i7 == 1987063865 || i7 == 1635135537 || i7 == 1685479798 || i7 == 1685479729 || i7 == 1685481573 || i7 == 1685481521 || i7 == 1634760241) {
                i3 = position;
                parseVideoSampleEntry(parsableByteArray, i7, i3, i6, i, str, i2, drmInitData, stsdData, i5);
            } else if (i7 == 1836069985 || i7 == 1701733217 || i7 == 1633889587 || i7 == 1700998451 || i7 == 1633889588 || i7 == 1835823201 || i7 == 1685353315 || i7 == 1685353317 || i7 == 1685353320 || i7 == 1685353324 || i7 == 1685353336 || i7 == 1935764850 || i7 == 1935767394 || i7 == 1819304813 || i7 == 1936684916 || i7 == 1953984371 || i7 == 778924082 || i7 == 778924083 || i7 == 1835557169 || i7 == 1835560241 || i7 == 1634492771 || i7 == 1634492791 || i7 == 1970037111 || i7 == 1332770163 || i7 == 1716281667 || i7 == 1767992678) {
                i3 = position;
                parseAudioSampleEntry(parsableByteArray, i7, position, i6, i, str, z, drmInitData, stsdData, i5);
            } else {
                if (i7 == 1414810956 || i7 == 1954034535 || i7 == 2004251764 || i7 == 1937010800 || i7 == 1664495672) {
                    parseTextSampleEntry(parsableByteArray, i7, position, i6, i, str, stsdData);
                } else if (i7 == 1835365492) {
                    parseMetaDataSampleEntry(parsableByteArray, i7, position, i, stsdData);
                } else if (i7 == 1667329389) {
                    stsdData.format = new Format.Builder().setId(i).setSampleMimeType(MimeTypes.APPLICATION_CAMERA_MOTION).build();
                }
                i3 = position;
            }
            parsableByteArray.setPosition(i3 + i6);
        }
        return stsdData;
    }

    private static void parseTextSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, @Nullable String str, StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 16);
        String str2 = MimeTypes.APPLICATION_TTML;
        ImmutableList immutableListOf = null;
        long j = Long.MAX_VALUE;
        if (i != 1414810956) {
            if (i == 1954034535) {
                int i5 = i3 - 16;
                byte[] bArr = new byte[i5];
                parsableByteArray.readBytes(bArr, 0, i5);
                immutableListOf = ImmutableList.of(bArr);
                str2 = MimeTypes.APPLICATION_TX3G;
            } else if (i == 2004251764) {
                str2 = MimeTypes.APPLICATION_MP4VTT;
            } else if (i == 1937010800) {
                j = 0;
            } else {
                if (i != 1664495672) {
                    throw new IllegalStateException();
                }
                stsdData.requiredSampleTransformation = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            }
        }
        stsdData.format = new Format.Builder().setId(i4).setSampleMimeType(str2).setLanguage(str).setSubsampleOffsetUs(j).setInitializationData(immutableListOf).build();
    }

    private static TkhdData parseTkhd(ParsableByteArray parsableByteArray) {
        long j;
        int i;
        parsableByteArray.setPosition(8);
        int fullBoxVersion = parseFullBoxVersion(parsableByteArray.readInt());
        parsableByteArray.skipBytes(fullBoxVersion == 0 ? 8 : 16);
        int i2 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int position = parsableByteArray.getPosition();
        int i3 = fullBoxVersion == 0 ? 4 : 8;
        int i4 = 0;
        while (true) {
            j = C.TIME_UNSET;
            if (i4 >= i3) {
                parsableByteArray.skipBytes(i3);
                break;
            }
            if (parsableByteArray.getData()[position + i4] != -1) {
                long unsignedInt = fullBoxVersion == 0 ? parsableByteArray.readUnsignedInt() : parsableByteArray.readUnsignedLongToLong();
                if (unsignedInt == 0) {
                    break;
                }
                j = unsignedInt;
                break;
            }
            i4++;
        }
        parsableByteArray.skipBytes(10);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(4);
        int i5 = parsableByteArray.readInt();
        int i6 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int i7 = parsableByteArray.readInt();
        int i8 = parsableByteArray.readInt();
        if (i5 == 0 && i6 == 65536 && i7 == -65536 && i8 == 0) {
            i = 90;
        } else if (i5 == 0 && i6 == -65536 && i7 == 65536 && i8 == 0) {
            i = 270;
        } else {
            i = (i5 == -65536 && i6 == 0 && i7 == 0 && i8 == -65536) ? 180 : 0;
        }
        return new TkhdData(i2, j, unsignedShort, i);
    }

    @Nullable
    public static Track parseTrak(Mp4Box.ContainerBox containerBox, Mp4Box.LeafBox leafBox, long j, @Nullable DrmInitData drmInitData, boolean z, boolean z2) throws ParserException {
        long[] jArr;
        long[] jArr2;
        Format formatBuild;
        Mp4Box.ContainerBox containerBoxOfType;
        Pair<long[], long[]> edts;
        Mp4Box.ContainerBox containerBox2 = (Mp4Box.ContainerBox) Assertions.checkNotNull(containerBox.getContainerBoxOfType(Mp4Box.TYPE_mdia));
        int trackTypeForHdlr = getTrackTypeForHdlr(parseHdlr(((Mp4Box.LeafBox) Assertions.checkNotNull(containerBox2.getLeafBoxOfType(Mp4Box.TYPE_hdlr))).data));
        if (trackTypeForHdlr == -1) {
            return null;
        }
        TkhdData tkhd = parseTkhd(((Mp4Box.LeafBox) Assertions.checkNotNull(containerBox.getLeafBoxOfType(Mp4Box.TYPE_tkhd))).data);
        long jScaleLargeTimestamp = C.TIME_UNSET;
        long j2 = j == C.TIME_UNSET ? tkhd.duration : j;
        long j3 = parseMvhd(leafBox.data).timescale;
        if (j2 != C.TIME_UNSET) {
            jScaleLargeTimestamp = Util.scaleLargeTimestamp(j2, 1000000L, j3);
        }
        long j4 = jScaleLargeTimestamp;
        Mp4Box.ContainerBox containerBox3 = (Mp4Box.ContainerBox) Assertions.checkNotNull(((Mp4Box.ContainerBox) Assertions.checkNotNull(containerBox2.getContainerBoxOfType(Mp4Box.TYPE_minf))).getContainerBoxOfType(Mp4Box.TYPE_stbl));
        MdhdData mdhd = parseMdhd(((Mp4Box.LeafBox) Assertions.checkNotNull(containerBox2.getLeafBoxOfType(Mp4Box.TYPE_mdhd))).data);
        Mp4Box.LeafBox leafBoxOfType = containerBox3.getLeafBoxOfType(Mp4Box.TYPE_stsd);
        if (leafBoxOfType == null) {
            throw ParserException.createForMalformedContainer("Malformed sample table (stbl) missing sample description (stsd)", null);
        }
        StsdData stsd = parseStsd(leafBoxOfType.data, tkhd.id, tkhd.rotationDegrees, mdhd.language, drmInitData, z2);
        if (z || (containerBoxOfType = containerBox.getContainerBoxOfType(Mp4Box.TYPE_edts)) == null || (edts = parseEdts(containerBoxOfType)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) edts.first;
            jArr2 = (long[]) edts.second;
            jArr = jArr3;
        }
        if (stsd.format == null) {
            return null;
        }
        if (tkhd.alternateGroup != 0) {
            Mp4AlternateGroupData mp4AlternateGroupData = new Mp4AlternateGroupData(tkhd.alternateGroup);
            Format.Builder builderBuildUpon = stsd.format.buildUpon();
            Metadata metadata = stsd.format.metadata;
            formatBuild = builderBuildUpon.setMetadata(metadata != null ? metadata.copyWithAppendedEntries(mp4AlternateGroupData) : new Metadata(mp4AlternateGroupData)).build();
        } else {
            formatBuild = stsd.format;
        }
        return new Track(tkhd.id, trackTypeForHdlr, mdhd.timescale, j3, j4, mdhd.mediaDurationUs, formatBuild, stsd.requiredSampleTransformation, stsd.trackEncryptionBoxes, stsd.nalUnitLengthFieldLength, jArr, jArr2);
    }

    public static List<TrackSampleTable> parseTraks(Mp4Box.ContainerBox containerBox, GaplessInfoHolder gaplessInfoHolder, long j, @Nullable DrmInitData drmInitData, boolean z, boolean z2, o74 o74Var) throws ParserException {
        Track track;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < containerBox.containerChildren.size(); i++) {
            Mp4Box.ContainerBox containerBox2 = containerBox.containerChildren.get(i);
            if (containerBox2.type == 1953653099 && (track = (Track) o74Var.apply(parseTrak(containerBox2, (Mp4Box.LeafBox) Assertions.checkNotNull(containerBox.getLeafBoxOfType(Mp4Box.TYPE_mvhd)), j, drmInitData, z, z2))) != null) {
                arrayList.add(parseStbl(track, (Mp4Box.ContainerBox) Assertions.checkNotNull(((Mp4Box.ContainerBox) Assertions.checkNotNull(((Mp4Box.ContainerBox) Assertions.checkNotNull(containerBox2.getContainerBoxOfType(Mp4Box.TYPE_mdia))).getContainerBoxOfType(Mp4Box.TYPE_minf))).getContainerBoxOfType(Mp4Box.TYPE_stbl)), gaplessInfoHolder));
            }
        }
        return arrayList;
    }

    public static Metadata parseUdta(Mp4Box.LeafBox leafBox) {
        ParsableByteArray parsableByteArray = leafBox.data;
        parsableByteArray.setPosition(8);
        Metadata metadata = new Metadata(new Metadata.Entry[0]);
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int i = parsableByteArray.readInt();
            int i2 = parsableByteArray.readInt();
            if (i2 == 1835365473) {
                parsableByteArray.setPosition(position);
                metadata = metadata.copyWithAppendedEntriesFrom(parseUdtaMeta(parsableByteArray, position + i));
            } else if (i2 == 1936553057) {
                parsableByteArray.setPosition(position);
                metadata = metadata.copyWithAppendedEntriesFrom(SmtaAtomUtil.parseSmta(parsableByteArray, position + i));
            } else if (i2 == -1451722374) {
                metadata = metadata.copyWithAppendedEntriesFrom(parseXyz(parsableByteArray));
            }
            parsableByteArray.setPosition(position + i);
        }
        return metadata;
    }

    @Nullable
    private static Metadata parseUdtaMeta(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        maybeSkipRemainingMetaBoxHeaderBytes(parsableByteArray);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int i2 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1768715124) {
                parsableByteArray.setPosition(position);
                return parseIlst(parsableByteArray, position + i2);
            }
            parsableByteArray.setPosition(position + i2);
        }
        return null;
    }

    @Nullable
    public static VexuData parseVideoExtendedUsageBox(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        parsableByteArray.setPosition(i + 8);
        int position = parsableByteArray.getPosition();
        EyesData stereoViewBox = null;
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int i3 = parsableByteArray.readInt();
            ExtractorUtil.checkContainerInput(i3 > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == 1702454643) {
                stereoViewBox = parseStereoViewBox(parsableByteArray, position, i3);
            }
            position += i3;
        }
        if (stereoViewBox == null) {
            return null;
        }
        return new VexuData(stereoViewBox);
    }

    private static void parseVideoSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, @Nullable String str, int i5, @Nullable DrmInitData drmInitData, StsdData stsdData, int i6) throws ParserException {
        String str2;
        DrmInitData drmInitData2;
        int i7;
        int i8;
        float f;
        int i9;
        int i10;
        int i11;
        int i12 = i2;
        int i13 = i3;
        DrmInitData drmInitDataCopyWithSchemeType = drmInitData;
        StsdData stsdData2 = stsdData;
        parsableByteArray.setPosition(i12 + 16);
        parsableByteArray.skipBytes(16);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        int iIntValue = i;
        if (iIntValue == 1701733238) {
            Pair<Integer, TrackEncryptionBox> sampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i12, i13);
            if (sampleEntryEncryptionData != null) {
                iIntValue = ((Integer) sampleEntryEncryptionData.first).intValue();
                drmInitDataCopyWithSchemeType = drmInitDataCopyWithSchemeType == null ? null : drmInitDataCopyWithSchemeType.copyWithSchemeType(((TrackEncryptionBox) sampleEntryEncryptionData.second).schemeType);
                stsdData2.trackEncryptionBoxes[i6] = (TrackEncryptionBox) sampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        String str3 = "video/3gpp";
        if (iIntValue == 1831958048) {
            str2 = MimeTypes.VIDEO_MPEG;
        } else {
            str2 = iIntValue == 1211250227 ? "video/3gpp" : null;
        }
        float paspFromParent = 1.0f;
        int i14 = 8;
        int i15 = 8;
        List<byte[]> listOf = null;
        String str4 = null;
        byte[] projFromParent = null;
        int i16 = -1;
        int i17 = -1;
        int i18 = -1;
        int i19 = -1;
        int i20 = -1;
        int iIsoTransferCharacteristicsToColorTransfer = -1;
        ByteBuffer byteBufferAllocateHdrStaticInfo = null;
        BtrtData btrtFromParent = null;
        EsdsData esdsFromParent = null;
        NalUnitUtil.H265VpsData h265VpsData = null;
        boolean z = false;
        while (position - i12 < i13) {
            parsableByteArray.setPosition(position);
            int position2 = parsableByteArray.getPosition();
            int i21 = parsableByteArray.readInt();
            if (i21 == 0 && parsableByteArray.getPosition() - i12 == i13) {
                break;
            }
            ExtractorUtil.checkContainerInput(i21 > 0, "childAtomSize must be positive");
            int i22 = parsableByteArray.readInt();
            if (i22 == 1635148611) {
                ExtractorUtil.checkContainerInput(str2 == null, null);
                parsableByteArray.setPosition(position2 + 8);
                AvcConfig avcConfig = AvcConfig.parse(parsableByteArray);
                List<byte[]> list = avcConfig.initializationData;
                stsdData2.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
                if (!z) {
                    paspFromParent = avcConfig.pixelWidthHeightRatio;
                }
                String str5 = avcConfig.codecs;
                int i23 = avcConfig.maxNumReorderFrames;
                int i24 = avcConfig.colorSpace;
                drmInitData2 = drmInitDataCopyWithSchemeType;
                i17 = i23;
                i20 = avcConfig.colorRange;
                iIsoTransferCharacteristicsToColorTransfer = avcConfig.colorTransfer;
                i14 = avcConfig.bitdepthLuma;
                listOf = list;
                str2 = "video/avc";
                str4 = str5;
                i7 = i24;
                i15 = avcConfig.bitdepthChroma;
            } else {
                if (i22 == 1752589123) {
                    ExtractorUtil.checkContainerInput(str2 == null, null);
                    parsableByteArray.setPosition(position2 + 8);
                    HevcConfig hevcConfig = HevcConfig.parse(parsableByteArray);
                    List<byte[]> list2 = hevcConfig.initializationData;
                    stsdData2.nalUnitLengthFieldLength = hevcConfig.nalUnitLengthFieldLength;
                    if (!z) {
                        paspFromParent = hevcConfig.pixelWidthHeightRatio;
                    }
                    int i25 = hevcConfig.maxNumReorderPics;
                    int i26 = hevcConfig.maxSubLayers;
                    String str6 = hevcConfig.codecs;
                    int i27 = hevcConfig.stereoMode;
                    listOf = list2;
                    if (i27 != -1) {
                        i16 = i27;
                    }
                    int i28 = hevcConfig.colorSpace;
                    int i29 = hevcConfig.colorRange;
                    int i30 = hevcConfig.colorTransfer;
                    int i31 = hevcConfig.bitdepthLuma;
                    int i32 = hevcConfig.bitdepthChroma;
                    h265VpsData = hevcConfig.vpsData;
                    drmInitData2 = drmInitDataCopyWithSchemeType;
                    unsignedShort2 = unsignedShort2;
                    iIntValue = iIntValue;
                    i20 = i29;
                    iIsoTransferCharacteristicsToColorTransfer = i30;
                    i14 = i31;
                    i17 = i25;
                    str2 = "video/hevc";
                    i18 = i26;
                    i7 = i28;
                    str4 = str6;
                    i15 = i32;
                } else {
                    drmInitData2 = drmInitDataCopyWithSchemeType;
                    if (i22 == 1818785347) {
                        ExtractorUtil.checkContainerInput("video/hevc".equals(str2), "lhvC must follow hvcC atom");
                        NalUnitUtil.H265VpsData h265VpsData2 = h265VpsData;
                        ExtractorUtil.checkContainerInput(h265VpsData2 != null && h265VpsData2.layerInfos.size() >= 2, "must have at least two layers");
                        parsableByteArray.setPosition(position2 + 8);
                        HevcConfig layered = HevcConfig.parseLayered(parsableByteArray, (NalUnitUtil.H265VpsData) Assertions.checkNotNull(h265VpsData2));
                        ExtractorUtil.checkContainerInput(stsdData2.nalUnitLengthFieldLength == layered.nalUnitLengthFieldLength, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms");
                        int i33 = layered.colorSpace;
                        i7 = i19;
                        if (i33 != -1) {
                            ExtractorUtil.checkContainerInput(i7 == i33, "colorSpace must be the same for both views");
                        }
                        int i34 = layered.colorRange;
                        int i35 = i20;
                        if (i34 != -1) {
                            ExtractorUtil.checkContainerInput(i35 == i34, "colorRange must be the same for both views");
                        }
                        int i36 = layered.colorTransfer;
                        if (i36 != -1) {
                            int i37 = iIsoTransferCharacteristicsToColorTransfer;
                            i11 = i37;
                            ExtractorUtil.checkContainerInput(i37 == i36, "colorTransfer must be the same for both views");
                        } else {
                            i11 = iIsoTransferCharacteristicsToColorTransfer;
                        }
                        ExtractorUtil.checkContainerInput(i14 == layered.bitdepthLuma, "bitdepthLuma must be the same for both views");
                        ExtractorUtil.checkContainerInput(i15 == layered.bitdepthChroma, "bitdepthChroma must be the same for both views");
                        List<byte[]> list3 = listOf;
                        if (list3 != null) {
                            listOf = ImmutableList.builder().l(list3).l(layered.initializationData).e();
                        } else {
                            listOf = list3;
                            ExtractorUtil.checkContainerInput(false, "initializationData must be already set from hvcC atom");
                        }
                        String str7 = layered.codecs;
                        h265VpsData = h265VpsData2;
                        str2 = MimeTypes.VIDEO_MV_HEVC;
                        i20 = i35;
                        iIsoTransferCharacteristicsToColorTransfer = i11;
                        str4 = str7;
                    } else {
                        List<byte[]> listBuildVp9CodecPrivateInitializationData = listOf;
                        i7 = i19;
                        i20 = i20;
                        iIsoTransferCharacteristicsToColorTransfer = iIsoTransferCharacteristicsToColorTransfer;
                        NalUnitUtil.H265VpsData h265VpsData3 = h265VpsData;
                        if (i22 == 1986361461) {
                            VexuData videoExtendedUsageBox = parseVideoExtendedUsageBox(parsableByteArray, position2, i21);
                            if (videoExtendedUsageBox == null || videoExtendedUsageBox.eyesData == null) {
                                i10 = i16;
                                i16 = i10;
                            } else if (h265VpsData3 == null || h265VpsData3.layerInfos.size() < 2) {
                                i10 = i16;
                                if (i10 == -1) {
                                    i16 = videoExtendedUsageBox.eyesData.striData.eyeViewsReversed ? 5 : 4;
                                } else {
                                    i16 = i10;
                                }
                            } else {
                                ExtractorUtil.checkContainerInput(videoExtendedUsageBox.hasBothEyeViews(), "both eye views must be marked as available");
                                ExtractorUtil.checkContainerInput(!videoExtendedUsageBox.eyesData.striData.eyeViewsReversed, "for MV-HEVC, eye_views_reversed must be set to false");
                                i10 = i16;
                                i16 = i10;
                            }
                            h265VpsData = h265VpsData3;
                            unsignedShort2 = unsignedShort2;
                            iIntValue = iIntValue;
                            listOf = listBuildVp9CodecPrivateInitializationData;
                            i20 = i20;
                            iIsoTransferCharacteristicsToColorTransfer = iIsoTransferCharacteristicsToColorTransfer;
                        } else {
                            int i38 = i16;
                            if (i22 == 1685480259 || i22 == 1685485123) {
                                i8 = i38;
                                unsignedShort2 = unsignedShort2;
                                iIntValue = iIntValue;
                                i15 = i15;
                                f = paspFromParent;
                                i14 = i14;
                                i9 = iIsoTransferCharacteristicsToColorTransfer;
                                DolbyVisionConfig dolbyVisionConfig = DolbyVisionConfig.parse(parsableByteArray);
                                if (dolbyVisionConfig != null) {
                                    str2 = "video/dolby-vision";
                                    str4 = dolbyVisionConfig.codecs;
                                }
                            } else if (i22 == 1987076931) {
                                ExtractorUtil.checkContainerInput(str2 == null, null);
                                String str8 = iIntValue == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                                parsableByteArray.setPosition(position2 + 12);
                                byte unsignedByte = (byte) parsableByteArray.readUnsignedByte();
                                byte unsignedByte2 = (byte) parsableByteArray.readUnsignedByte();
                                int unsignedByte3 = parsableByteArray.readUnsignedByte();
                                i15 = unsignedByte3 >> 4;
                                byte b = (byte) ((unsignedByte3 >> 1) & 7);
                                if (str8.equals("video/x-vnd.on2.vp9")) {
                                    listBuildVp9CodecPrivateInitializationData = CodecSpecificDataUtil.buildVp9CodecPrivateInitializationData(unsignedByte, unsignedByte2, (byte) i15, b);
                                }
                                boolean z2 = (unsignedByte3 & 1) != 0;
                                int unsignedByte4 = parsableByteArray.readUnsignedByte();
                                int unsignedByte5 = parsableByteArray.readUnsignedByte();
                                int iIsoColorPrimariesToColorSpace = ColorInfo.isoColorPrimariesToColorSpace(unsignedByte4);
                                i20 = z2 ? 1 : 2;
                                iIsoTransferCharacteristicsToColorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer(unsignedByte5);
                                str2 = str8;
                                unsignedShort2 = unsignedShort2;
                                i14 = i15;
                                h265VpsData = h265VpsData3;
                                i7 = iIsoColorPrimariesToColorSpace;
                                listOf = listBuildVp9CodecPrivateInitializationData;
                                i16 = i38;
                                iIntValue = iIntValue;
                            } else if (i22 == 1635135811) {
                                int i39 = i21 - 8;
                                byte[] bArr = new byte[i39];
                                parsableByteArray.readBytes(bArr, 0, i39);
                                listOf = ImmutableList.of(bArr);
                                parsableByteArray.setPosition(position2 + 8);
                                ColorInfo av1c = parseAv1c(parsableByteArray);
                                int i40 = av1c.lumaBitdepth;
                                int i41 = av1c.chromaBitdepth;
                                i7 = av1c.colorSpace;
                                int i42 = av1c.colorRange;
                                iIsoTransferCharacteristicsToColorTransfer = av1c.colorTransfer;
                                i14 = i40;
                                unsignedShort2 = unsignedShort2;
                                iIntValue = iIntValue;
                                i20 = i42;
                                h265VpsData = h265VpsData3;
                                i16 = i38;
                                i15 = i41;
                                str2 = MimeTypes.VIDEO_AV1;
                            } else if (i22 == 1668050025) {
                                if (byteBufferAllocateHdrStaticInfo == null) {
                                    byteBufferAllocateHdrStaticInfo = allocateHdrStaticInfo();
                                }
                                ByteBuffer byteBuffer = byteBufferAllocateHdrStaticInfo;
                                byteBuffer.position(21);
                                byteBuffer.putShort(parsableByteArray.readShort());
                                byteBuffer.putShort(parsableByteArray.readShort());
                                byteBufferAllocateHdrStaticInfo = byteBuffer;
                                unsignedShort2 = unsignedShort2;
                                iIntValue = iIntValue;
                                h265VpsData = h265VpsData3;
                                listOf = listBuildVp9CodecPrivateInitializationData;
                                i20 = i20;
                                iIsoTransferCharacteristicsToColorTransfer = iIsoTransferCharacteristicsToColorTransfer;
                                i16 = i38;
                            } else {
                                if (i22 == 1835295606) {
                                    if (byteBufferAllocateHdrStaticInfo == null) {
                                        byteBufferAllocateHdrStaticInfo = allocateHdrStaticInfo();
                                    }
                                    ByteBuffer byteBuffer2 = byteBufferAllocateHdrStaticInfo;
                                    short s = parsableByteArray.readShort();
                                    short s2 = parsableByteArray.readShort();
                                    iIntValue = iIntValue;
                                    short s3 = parsableByteArray.readShort();
                                    short s4 = parsableByteArray.readShort();
                                    int i43 = i15;
                                    short s5 = parsableByteArray.readShort();
                                    int i44 = i14;
                                    short s6 = parsableByteArray.readShort();
                                    i8 = i38;
                                    short s7 = parsableByteArray.readShort();
                                    float f2 = paspFromParent;
                                    short s8 = parsableByteArray.readShort();
                                    long unsignedInt = parsableByteArray.readUnsignedInt();
                                    long unsignedInt2 = parsableByteArray.readUnsignedInt();
                                    unsignedShort2 = unsignedShort2;
                                    byteBuffer2.position(1);
                                    byteBuffer2.putShort(s5);
                                    byteBuffer2.putShort(s6);
                                    byteBuffer2.putShort(s);
                                    byteBuffer2.putShort(s2);
                                    byteBuffer2.putShort(s3);
                                    byteBuffer2.putShort(s4);
                                    byteBuffer2.putShort(s7);
                                    byteBuffer2.putShort(s8);
                                    byteBuffer2.putShort((short) (unsignedInt / 10000));
                                    byteBuffer2.putShort((short) (unsignedInt2 / 10000));
                                    byteBufferAllocateHdrStaticInfo = byteBuffer2;
                                    i15 = i43;
                                    i14 = i44;
                                    listOf = listBuildVp9CodecPrivateInitializationData;
                                    paspFromParent = f2;
                                } else {
                                    i8 = i38;
                                    unsignedShort2 = unsignedShort2;
                                    iIntValue = iIntValue;
                                    i15 = i15;
                                    f = paspFromParent;
                                    i14 = i14;
                                    if (i22 == 1681012275) {
                                        ExtractorUtil.checkContainerInput(str2 == null, null);
                                        str2 = str3;
                                    } else if (i22 == 1702061171) {
                                        ExtractorUtil.checkContainerInput(str2 == null, null);
                                        esdsFromParent = parseEsdsFromParent(parsableByteArray, position2);
                                        String str9 = esdsFromParent.mimeType;
                                        byte[] bArr2 = esdsFromParent.initializationData;
                                        listOf = bArr2 != null ? ImmutableList.of(bArr2) : listBuildVp9CodecPrivateInitializationData;
                                        str2 = str9;
                                        paspFromParent = f;
                                    } else if (i22 == 1651798644) {
                                        btrtFromParent = parseBtrtFromParent(parsableByteArray, position2);
                                    } else {
                                        if (i22 == 1885434736) {
                                            paspFromParent = parsePaspFromParent(parsableByteArray, position2);
                                            i15 = i15;
                                            i14 = i14;
                                            listOf = listBuildVp9CodecPrivateInitializationData;
                                            i20 = i20;
                                            iIsoTransferCharacteristicsToColorTransfer = iIsoTransferCharacteristicsToColorTransfer;
                                            z = true;
                                        } else if (i22 == 1937126244) {
                                            projFromParent = parseProjFromParent(parsableByteArray, position2, i21);
                                        } else if (i22 == 1936995172) {
                                            int unsignedByte6 = parsableByteArray.readUnsignedByte();
                                            parsableByteArray.skipBytes(3);
                                            if (unsignedByte6 == 0) {
                                                int unsignedByte7 = parsableByteArray.readUnsignedByte();
                                                if (unsignedByte7 == 0) {
                                                    i8 = 0;
                                                } else if (unsignedByte7 == 1) {
                                                    i8 = 1;
                                                } else if (unsignedByte7 == 2) {
                                                    i8 = 2;
                                                } else if (unsignedByte7 == 3) {
                                                    i8 = 3;
                                                }
                                            }
                                        } else if (i22 == 1634760259) {
                                            int i45 = i21 - 12;
                                            byte[] bArr3 = new byte[i45];
                                            parsableByteArray.setPosition(position2 + 12);
                                            parsableByteArray.readBytes(bArr3, 0, i45);
                                            listOf = ImmutableList.of(bArr3);
                                            ColorInfo apvc = parseApvc(new ParsableByteArray(bArr3));
                                            int i46 = apvc.lumaBitdepth;
                                            int i47 = apvc.chromaBitdepth;
                                            int i48 = apvc.colorSpace;
                                            int i49 = apvc.colorRange;
                                            iIsoTransferCharacteristicsToColorTransfer = apvc.colorTransfer;
                                            i14 = i46;
                                            i15 = i47;
                                            i20 = i49;
                                            paspFromParent = f;
                                            i7 = i48;
                                            str2 = MimeTypes.VIDEO_APV;
                                            h265VpsData = h265VpsData3;
                                            i16 = i8;
                                        } else if (i22 == 1668246642) {
                                            i9 = iIsoTransferCharacteristicsToColorTransfer;
                                            if (i7 == -1 && i9 == -1) {
                                                int i50 = parsableByteArray.readInt();
                                                if (i50 == TYPE_nclx || i50 == TYPE_nclc) {
                                                    int unsignedShort3 = parsableByteArray.readUnsignedShort();
                                                    int unsignedShort4 = parsableByteArray.readUnsignedShort();
                                                    parsableByteArray.skipBytes(2);
                                                    boolean z3 = i21 == 19 && (parsableByteArray.readUnsignedByte() & 128) != 0;
                                                    int iIsoColorPrimariesToColorSpace2 = ColorInfo.isoColorPrimariesToColorSpace(unsignedShort3);
                                                    int i51 = z3 ? 1 : 2;
                                                    i15 = i15;
                                                    i14 = i14;
                                                    listOf = listBuildVp9CodecPrivateInitializationData;
                                                    paspFromParent = f;
                                                    iIsoTransferCharacteristicsToColorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer(unsignedShort4);
                                                    i20 = i51;
                                                    i7 = iIsoColorPrimariesToColorSpace2;
                                                } else {
                                                    Log.w(TAG, "Unsupported color type: " + Mp4Box.getBoxTypeString(i50));
                                                }
                                            }
                                        } else {
                                            i9 = iIsoTransferCharacteristicsToColorTransfer;
                                        }
                                        int i52 = i8;
                                        h265VpsData = h265VpsData3;
                                        i16 = i52;
                                    }
                                    listOf = listBuildVp9CodecPrivateInitializationData;
                                    paspFromParent = f;
                                }
                                int i53 = i8;
                                h265VpsData = h265VpsData3;
                                i16 = i53;
                            }
                            i15 = i15;
                            i14 = i14;
                            listOf = listBuildVp9CodecPrivateInitializationData;
                            i20 = i20;
                            paspFromParent = f;
                            iIsoTransferCharacteristicsToColorTransfer = i9;
                            int i54 = i8;
                            h265VpsData = h265VpsData3;
                            i16 = i54;
                        }
                    }
                }
                position += i21;
                i12 = i2;
                i13 = i3;
                stsdData2 = stsdData;
                iIntValue = iIntValue;
                drmInitDataCopyWithSchemeType = drmInitData2;
                unsignedShort2 = unsignedShort2;
                i19 = i7;
                str3 = str3;
            }
            position += i21;
            i12 = i2;
            i13 = i3;
            stsdData2 = stsdData;
            iIntValue = iIntValue;
            drmInitDataCopyWithSchemeType = drmInitData2;
            unsignedShort2 = unsignedShort2;
            i19 = i7;
            str3 = str3;
        }
        DrmInitData drmInitData3 = drmInitDataCopyWithSchemeType;
        int i55 = unsignedShort2;
        float f3 = paspFromParent;
        List<byte[]> list4 = listOf;
        int i56 = i16;
        int i57 = i19;
        int i58 = i20;
        int i59 = iIsoTransferCharacteristicsToColorTransfer;
        int i60 = i15;
        int i61 = i14;
        if (str2 == null) {
            return;
        }
        Format.Builder colorInfo = new Format.Builder().setId(i4).setSampleMimeType(str2).setCodecs(str4).setWidth(unsignedShort).setHeight(i55).setPixelWidthHeightRatio(f3).setRotationDegrees(i5).setProjectionData(projFromParent).setStereoMode(i56).setInitializationData(list4).setMaxNumReorderSamples(i17).setMaxSubLayers(i18).setDrmInitData(drmInitData3).setLanguage(str).setColorInfo(new ColorInfo.Builder().setColorSpace(i57).setColorRange(i58).setColorTransfer(i59).setHdrStaticInfo(byteBufferAllocateHdrStaticInfo != null ? byteBufferAllocateHdrStaticInfo.array() : null).setLumaBitdepth(i61).setChromaBitdepth(i60).build());
        if (btrtFromParent != null) {
            colorInfo.setAverageBitrate(Ints.n(btrtFromParent.avgBitrate)).setPeakBitrate(Ints.n(btrtFromParent.maxBitrate));
        } else if (esdsFromParent != null) {
            colorInfo.setAverageBitrate(Ints.n(esdsFromParent.bitrate)).setPeakBitrate(Ints.n(esdsFromParent.peakBitrate));
        }
        stsdData.format = colorInfo.build();
    }

    @Nullable
    private static Metadata parseXyz(ParsableByteArray parsableByteArray) {
        short s = parsableByteArray.readShort();
        parsableByteArray.skipBytes(2);
        String string = parsableByteArray.readString(s);
        int iMax = Math.max(string.lastIndexOf(43), string.lastIndexOf(45));
        try {
            return new Metadata(new Mp4LocationData(Float.parseFloat(string.substring(0, iMax)), Float.parseFloat(string.substring(iMax, string.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }
}
