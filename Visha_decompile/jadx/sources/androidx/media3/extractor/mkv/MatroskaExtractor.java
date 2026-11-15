package androidx.media3.extractor.mkv;

import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DataReader;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.LongArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.DolbyVisionConfig;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.HevcConfig;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.TrueHdSampleRechunker;
import androidx.media3.extractor.mkv.MatroskaExtractor;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import com.google.common.collect.ImmutableList;
import com.transsion.audiotagger.tag.reference.Languages;
import com.transsion.socket.pkgdata.SocketData;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import org.mozilla.classfile.ByteCode;

@UnstableApi
public class MatroskaExtractor implements Extractor {
    private static final int BLOCK_ADDITIONAL_ID_VP9_ITU_T_35 = 4;
    private static final int BLOCK_ADD_ID_TYPE_DVCC = 1685480259;
    private static final int BLOCK_ADD_ID_TYPE_DVVC = 1685485123;
    private static final int BLOCK_STATE_DATA = 2;
    private static final int BLOCK_STATE_HEADER = 1;
    private static final int BLOCK_STATE_START = 0;
    private static final String CODEC_ID_AAC = "A_AAC";
    private static final String CODEC_ID_AC3 = "A_AC3";
    private static final String CODEC_ID_ACM = "A_MS/ACM";
    private static final String CODEC_ID_ASS = "S_TEXT/ASS";
    private static final String CODEC_ID_AV1 = "V_AV1";
    private static final String CODEC_ID_DTS = "A_DTS";
    private static final String CODEC_ID_DTS_EXPRESS = "A_DTS/EXPRESS";
    private static final String CODEC_ID_DTS_LOSSLESS = "A_DTS/LOSSLESS";
    private static final String CODEC_ID_DVBSUB = "S_DVBSUB";
    private static final String CODEC_ID_E_AC3 = "A_EAC3";
    private static final String CODEC_ID_FLAC = "A_FLAC";
    private static final String CODEC_ID_FOURCC = "V_MS/VFW/FOURCC";
    private static final String CODEC_ID_H264 = "V_MPEG4/ISO/AVC";
    private static final String CODEC_ID_H265 = "V_MPEGH/ISO/HEVC";
    private static final String CODEC_ID_MP2 = "A_MPEG/L2";
    private static final String CODEC_ID_MP3 = "A_MPEG/L3";
    private static final String CODEC_ID_MPEG2 = "V_MPEG2";
    private static final String CODEC_ID_MPEG4_AP = "V_MPEG4/ISO/AP";
    private static final String CODEC_ID_MPEG4_ASP = "V_MPEG4/ISO/ASP";
    private static final String CODEC_ID_MPEG4_SP = "V_MPEG4/ISO/SP";
    private static final String CODEC_ID_OPUS = "A_OPUS";
    private static final String CODEC_ID_PCM_FLOAT = "A_PCM/FLOAT/IEEE";
    private static final String CODEC_ID_PCM_INT_BIG = "A_PCM/INT/BIG";
    private static final String CODEC_ID_PCM_INT_LIT = "A_PCM/INT/LIT";
    private static final String CODEC_ID_PGS = "S_HDMV/PGS";
    private static final String CODEC_ID_SUBRIP = "S_TEXT/UTF8";
    private static final String CODEC_ID_THEORA = "V_THEORA";
    private static final String CODEC_ID_TRUEHD = "A_TRUEHD";
    private static final String CODEC_ID_VOBSUB = "S_VOBSUB";
    private static final String CODEC_ID_VORBIS = "A_VORBIS";
    private static final String CODEC_ID_VP8 = "V_VP8";
    private static final String CODEC_ID_VP9 = "V_VP9";
    private static final String CODEC_ID_VTT = "S_TEXT/WEBVTT";
    private static final String DOC_TYPE_MATROSKA = "matroska";
    private static final String DOC_TYPE_WEBM = "webm";
    private static final int ENCRYPTION_IV_SIZE = 8;
    public static final int FLAG_DISABLE_SEEK_FOR_CUES = 1;
    public static final int FLAG_EMIT_RAW_SUBTITLE_DATA = 2;
    private static final int FOURCC_COMPRESSION_DIVX = 1482049860;
    private static final int FOURCC_COMPRESSION_H263 = 859189832;
    private static final int FOURCC_COMPRESSION_VC1 = 826496599;
    private static final int ID_AUDIO = 225;
    private static final int ID_AUDIO_BIT_DEPTH = 25188;
    private static final int ID_BLOCK = 161;
    private static final int ID_BLOCK_ADDITIONAL = 165;
    private static final int ID_BLOCK_ADDITIONS = 30113;
    private static final int ID_BLOCK_ADDITION_MAPPING = 16868;
    private static final int ID_BLOCK_ADD_ID = 238;
    private static final int ID_BLOCK_ADD_ID_EXTRA_DATA = 16877;
    private static final int ID_BLOCK_ADD_ID_TYPE = 16871;
    private static final int ID_BLOCK_DURATION = 155;
    private static final int ID_BLOCK_GROUP = 160;
    private static final int ID_BLOCK_MORE = 166;
    private static final int ID_CHANNELS = 159;
    private static final int ID_CLUSTER = 524531317;
    private static final int ID_CODEC_DELAY = 22186;
    private static final int ID_CODEC_ID = 134;
    private static final int ID_CODEC_PRIVATE = 25506;
    private static final int ID_COLOUR = 21936;
    private static final int ID_COLOUR_BITS_PER_CHANNEL = 21938;
    private static final int ID_COLOUR_PRIMARIES = 21947;
    private static final int ID_COLOUR_RANGE = 21945;
    private static final int ID_COLOUR_TRANSFER = 21946;
    private static final int ID_CONTENT_COMPRESSION = 20532;
    private static final int ID_CONTENT_COMPRESSION_ALGORITHM = 16980;
    private static final int ID_CONTENT_COMPRESSION_SETTINGS = 16981;
    private static final int ID_CONTENT_ENCODING = 25152;
    private static final int ID_CONTENT_ENCODINGS = 28032;
    private static final int ID_CONTENT_ENCODING_ORDER = 20529;
    private static final int ID_CONTENT_ENCODING_SCOPE = 20530;
    private static final int ID_CONTENT_ENCRYPTION = 20533;
    private static final int ID_CONTENT_ENCRYPTION_AES_SETTINGS = 18407;
    private static final int ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE = 18408;
    private static final int ID_CONTENT_ENCRYPTION_ALGORITHM = 18401;
    private static final int ID_CONTENT_ENCRYPTION_KEY_ID = 18402;
    private static final int ID_CUES = 475249515;
    private static final int ID_CUE_CLUSTER_POSITION = 241;
    private static final int ID_CUE_POINT = 187;
    private static final int ID_CUE_TIME = 179;
    private static final int ID_CUE_TRACK_POSITIONS = 183;
    private static final int ID_DEFAULT_DURATION = 2352003;
    private static final int ID_DISCARD_PADDING = 30114;
    private static final int ID_DISPLAY_HEIGHT = 21690;
    private static final int ID_DISPLAY_UNIT = 21682;
    private static final int ID_DISPLAY_WIDTH = 21680;
    private static final int ID_DOC_TYPE = 17026;
    private static final int ID_DOC_TYPE_READ_VERSION = 17029;
    private static final int ID_DURATION = 17545;
    private static final int ID_EBML = 440786851;
    private static final int ID_EBML_READ_VERSION = 17143;
    private static final int ID_FLAG_DEFAULT = 136;
    private static final int ID_FLAG_FORCED = 21930;
    private static final int ID_INFO = 357149030;
    private static final int ID_LANGUAGE = 2274716;
    private static final int ID_LUMNINANCE_MAX = 21977;
    private static final int ID_LUMNINANCE_MIN = 21978;
    private static final int ID_MASTERING_METADATA = 21968;
    private static final int ID_MAX_BLOCK_ADDITION_ID = 21998;
    private static final int ID_MAX_CLL = 21948;
    private static final int ID_MAX_FALL = 21949;
    private static final int ID_NAME = 21358;
    private static final int ID_PIXEL_HEIGHT = 186;
    private static final int ID_PIXEL_WIDTH = 176;
    private static final int ID_PRIMARY_B_CHROMATICITY_X = 21973;
    private static final int ID_PRIMARY_B_CHROMATICITY_Y = 21974;
    private static final int ID_PRIMARY_G_CHROMATICITY_X = 21971;
    private static final int ID_PRIMARY_G_CHROMATICITY_Y = 21972;
    private static final int ID_PRIMARY_R_CHROMATICITY_X = 21969;
    private static final int ID_PRIMARY_R_CHROMATICITY_Y = 21970;
    private static final int ID_PROJECTION = 30320;
    private static final int ID_PROJECTION_POSE_PITCH = 30324;
    private static final int ID_PROJECTION_POSE_ROLL = 30325;
    private static final int ID_PROJECTION_POSE_YAW = 30323;
    private static final int ID_PROJECTION_PRIVATE = 30322;
    private static final int ID_PROJECTION_TYPE = 30321;
    private static final int ID_REFERENCE_BLOCK = 251;
    private static final int ID_SAMPLING_FREQUENCY = 181;
    private static final int ID_SEEK = 19899;
    private static final int ID_SEEK_HEAD = 290298740;
    private static final int ID_SEEK_ID = 21419;
    private static final int ID_SEEK_POSITION = 21420;
    private static final int ID_SEEK_PRE_ROLL = 22203;
    private static final int ID_SEGMENT = 408125543;
    private static final int ID_SEGMENT_INFO = 357149030;
    private static final int ID_SIMPLE_BLOCK = 163;
    private static final int ID_STEREO_MODE = 21432;
    private static final int ID_TIMECODE_SCALE = 2807729;
    private static final int ID_TIME_CODE = 231;
    private static final int ID_TRACKS = 374648427;
    private static final int ID_TRACK_ENTRY = 174;
    private static final int ID_TRACK_NUMBER = 215;
    private static final int ID_TRACK_TYPE = 131;
    private static final int ID_VIDEO = 224;
    private static final int ID_WHITE_POINT_CHROMATICITY_X = 21975;
    private static final int ID_WHITE_POINT_CHROMATICITY_Y = 21976;
    private static final int LACING_EBML = 3;
    private static final int LACING_FIXED_SIZE = 2;
    private static final int LACING_NONE = 0;
    private static final int LACING_XIPH = 1;
    private static final int OPUS_MAX_INPUT_SIZE = 5760;
    private static final int SSA_PREFIX_END_TIMECODE_OFFSET = 21;
    private static final String SSA_TIMECODE_FORMAT = "%01d:%02d:%02d:%02d";
    private static final long SSA_TIMECODE_LAST_VALUE_SCALING_FACTOR = 10000;
    private static final int SUBRIP_PREFIX_END_TIMECODE_OFFSET = 19;
    private static final String SUBRIP_TIMECODE_FORMAT = "%02d:%02d:%02d,%03d";
    private static final long SUBRIP_TIMECODE_LAST_VALUE_SCALING_FACTOR = 1000;
    private static final String TAG = "MatroskaExtractor";
    private static final Map<String, Integer> TRACK_NAME_TO_ROTATION_DEGREES;
    private static final int TRACK_TYPE_AUDIO = 2;
    private static final int UNSET_ENTRY_ID = -1;
    private static final int VORBIS_MAX_INPUT_SIZE = 8192;
    private static final int VTT_PREFIX_END_TIMECODE_OFFSET = 25;
    private static final String VTT_TIMECODE_FORMAT = "%02d:%02d:%02d.%03d";
    private static final long VTT_TIMECODE_LAST_VALUE_SCALING_FACTOR = 1000;
    private static final int WAVE_FORMAT_EXTENSIBLE = 65534;
    private static final int WAVE_FORMAT_PCM = 1;
    private static final int WAVE_FORMAT_SIZE = 18;
    private int blockAdditionalId;
    private long blockDurationUs;
    private int blockFlags;
    private long blockGroupDiscardPaddingNs;
    private boolean blockHasReferenceBlock;
    private int blockSampleCount;
    private int blockSampleIndex;
    private int[] blockSampleSizes;
    private int blockState;
    private long blockTimeUs;
    private int blockTrackNumber;
    private int blockTrackNumberLength;
    private long clusterTimecodeUs;

    @Nullable
    private LongArray cueClusterPositions;

    @Nullable
    private LongArray cueTimesUs;
    private long cuesContentPosition;

    @Nullable
    private Track currentTrack;
    private long durationTimecode;
    private long durationUs;
    private final ParsableByteArray encryptionInitializationVector;
    private final ParsableByteArray encryptionSubsampleData;
    private ByteBuffer encryptionSubsampleDataBuffer;
    private ExtractorOutput extractorOutput;
    private boolean haveOutputSample;
    private boolean isWebm;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private final boolean parseSubtitlesDuringExtraction;
    private final EbmlReader reader;
    private int sampleBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private boolean sampleEncodingHandled;
    private boolean sampleInitializationVectorRead;
    private int samplePartitionCount;
    private boolean samplePartitionCountRead;
    private byte sampleSignalByte;
    private boolean sampleSignalByteRead;
    private final ParsableByteArray sampleStrippedBytes;
    private final ParsableByteArray scratch;
    private int seekEntryId;
    private final ParsableByteArray seekEntryIdBytes;
    private long seekEntryPosition;
    private boolean seekForCues;
    private final boolean seekForCuesEnabled;
    private long seekPositionAfterBuildingCues;
    private boolean seenClusterPositionForCurrentCuePoint;
    private long segmentContentPosition;
    private long segmentContentSize;
    private boolean sentSeekMap;
    private final SubtitleParser.Factory subtitleParserFactory;
    private final ParsableByteArray subtitleSample;
    private final ParsableByteArray supplementalData;
    private long timecodeScale;
    private final SparseArray<Track> tracks;
    private final VarintReader varintReader;
    private final ParsableByteArray vorbisNumPageSamples;

    @Deprecated
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() {
        @Override
        public final Extractor[] createExtractors() {
            return MatroskaExtractor.lambda$static$1();
        }
    };
    private static final byte[] SUBRIP_PREFIX = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] SSA_DIALOGUE_FORMAT = Util.getUtf8Bytes("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");
    private static final byte[] SSA_PREFIX = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
    private static final byte[] VTT_PREFIX = {87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
    private static final UUID WAVE_SUBFORMAT_PCM = new UUID(72057594037932032L, -9223371306706625679L);

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public final class InnerEbmlProcessor implements EbmlProcessor {
        private InnerEbmlProcessor() {
        }

        @Override
        public void binaryElement(int i, int i2, ExtractorInput extractorInput) throws IOException {
            MatroskaExtractor.this.binaryElement(i, i2, extractorInput);
        }

        @Override
        public void endMasterElement(int i) throws ParserException {
            MatroskaExtractor.this.endMasterElement(i);
        }

        @Override
        public void floatElement(int i, double d) throws ParserException {
            MatroskaExtractor.this.floatElement(i, d);
        }

        @Override
        public int getElementType(int i) {
            return MatroskaExtractor.this.getElementType(i);
        }

        @Override
        public void integerElement(int i, long j) throws ParserException {
            MatroskaExtractor.this.integerElement(i, j);
        }

        @Override
        public boolean isLevel1Element(int i) {
            return MatroskaExtractor.this.isLevel1Element(i);
        }

        @Override
        public void startMasterElement(int i, long j, long j2) throws ParserException {
            MatroskaExtractor.this.startMasterElement(i, j, j2);
        }

        @Override
        public void stringElement(int i, String str) throws ParserException {
            MatroskaExtractor.this.stringElement(i, str);
        }
    }

    public static final class Track {
        private static final int DEFAULT_MAX_CLL = 1000;
        private static final int DEFAULT_MAX_FALL = 200;
        private static final int DISPLAY_UNIT_PIXELS = 0;
        private static final int MAX_CHROMATICITY = 50000;
        private int blockAddIdType;
        public String codecId;
        public byte[] codecPrivate;
        public TrackOutput.CryptoData cryptoData;
        public int defaultSampleDurationNs;
        public byte[] dolbyVisionConfigBytes;
        public DrmInitData drmInitData;
        public boolean flagForced;
        public boolean hasContentEncryption;
        public boolean isWebm;
        public int maxBlockAdditionId;
        public int nalUnitLengthFieldLength;
        public String name;
        public int number;
        public TrackOutput output;
        public byte[] sampleStrippedBytes;
        public TrueHdSampleRechunker trueHdSampleRechunker;
        public int type;
        public int width = -1;
        public int height = -1;
        public int bitsPerChannel = -1;
        public int displayWidth = -1;
        public int displayHeight = -1;
        public int displayUnit = 0;
        public int projectionType = -1;
        public float projectionPoseYaw = 0.0f;
        public float projectionPosePitch = 0.0f;
        public float projectionPoseRoll = 0.0f;
        public byte[] projectionData = null;
        public int stereoMode = -1;
        public boolean hasColorInfo = false;
        public int colorSpace = -1;
        public int colorTransfer = -1;
        public int colorRange = -1;
        public int maxContentLuminance = 1000;
        public int maxFrameAverageLuminance = 200;
        public float primaryRChromaticityX = -1.0f;
        public float primaryRChromaticityY = -1.0f;
        public float primaryGChromaticityX = -1.0f;
        public float primaryGChromaticityY = -1.0f;
        public float primaryBChromaticityX = -1.0f;
        public float primaryBChromaticityY = -1.0f;
        public float whitePointChromaticityX = -1.0f;
        public float whitePointChromaticityY = -1.0f;
        public float maxMasteringLuminance = -1.0f;
        public float minMasteringLuminance = -1.0f;
        public int channelCount = 1;
        public int audioBitDepth = -1;
        public int sampleRate = 8000;
        public long codecDelayNs = 0;
        public long seekPreRollNs = 0;
        public boolean flagDefault = true;
        private String language = Languages.DEFAULT_ID;

        public void assertOutputInitialized() {
            Assertions.checkNotNull(this.output);
        }

        private byte[] getCodecPrivate(String str) throws ParserException {
            byte[] bArr = this.codecPrivate;
            if (bArr != null) {
                return bArr;
            }
            throw ParserException.createForMalformedContainer("Missing CodecPrivate for codec " + str, null);
        }

        @Nullable
        private byte[] getHdrStaticInfo() {
            if (this.primaryRChromaticityX == -1.0f || this.primaryRChromaticityY == -1.0f || this.primaryGChromaticityX == -1.0f || this.primaryGChromaticityY == -1.0f || this.primaryBChromaticityX == -1.0f || this.primaryBChromaticityY == -1.0f || this.whitePointChromaticityX == -1.0f || this.whitePointChromaticityY == -1.0f || this.maxMasteringLuminance == -1.0f || this.minMasteringLuminance == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            byteBufferOrder.put((byte) 0);
            byteBufferOrder.putShort((short) ((this.primaryRChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryRChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryGChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryGChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryBChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.primaryBChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.whitePointChromaticityX * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) ((this.whitePointChromaticityY * 50000.0f) + 0.5f));
            byteBufferOrder.putShort((short) (this.maxMasteringLuminance + 0.5f));
            byteBufferOrder.putShort((short) (this.minMasteringLuminance + 0.5f));
            byteBufferOrder.putShort((short) this.maxContentLuminance);
            byteBufferOrder.putShort((short) this.maxFrameAverageLuminance);
            return bArr;
        }

        private static Pair<String, List<byte[]>> parseFourCcPrivate(ParsableByteArray parsableByteArray) throws ParserException {
            try {
                parsableByteArray.skipBytes(16);
                long littleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
                if (littleEndianUnsignedInt == 1482049860) {
                    return new Pair<>(MimeTypes.VIDEO_DIVX, null);
                }
                if (littleEndianUnsignedInt == 859189832) {
                    return new Pair<>("video/3gpp", null);
                }
                if (littleEndianUnsignedInt != 826496599) {
                    Log.w(MatroskaExtractor.TAG, "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new Pair<>(MimeTypes.VIDEO_UNKNOWN, null);
                }
                byte[] data = parsableByteArray.getData();
                for (int position = parsableByteArray.getPosition() + 20; position < data.length - 4; position++) {
                    if (data[position] == 0 && data[position + 1] == 0 && data[position + 2] == 1 && data[position + 3] == 15) {
                        return new Pair<>(MimeTypes.VIDEO_VC1, Collections.singletonList(Arrays.copyOfRange(data, position, data.length)));
                    }
                }
                throw ParserException.createForMalformedContainer("Failed to find FourCC VC1 initialization data", null);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing FourCC private data", null);
            }
        }

        private static boolean parseMsAcmCodecPrivate(ParsableByteArray parsableByteArray) throws ParserException {
            try {
                int littleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
                if (littleEndianUnsignedShort == 1) {
                    return true;
                }
                if (littleEndianUnsignedShort != 65534) {
                    return false;
                }
                parsableByteArray.setPosition(24);
                return parsableByteArray.readLong() == MatroskaExtractor.WAVE_SUBFORMAT_PCM.getMostSignificantBits() && parsableByteArray.readLong() == MatroskaExtractor.WAVE_SUBFORMAT_PCM.getLeastSignificantBits();
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing MS/ACM codec private", null);
            }
        }

        private static List<byte[]> parseVorbisCodecPrivate(byte[] bArr) throws ParserException {
            int i;
            int i2;
            try {
                if (bArr[0] != 2) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int i3 = 0;
                int i4 = 1;
                while (true) {
                    i = bArr[i4];
                    if ((i & 255) != 255) {
                        break;
                    }
                    i3 += 255;
                    i4++;
                }
                int i5 = i4 + 1;
                int i6 = i3 + (i & 255);
                int i7 = 0;
                while (true) {
                    i2 = bArr[i5];
                    if ((i2 & 255) != 255) {
                        break;
                    }
                    i7 += 255;
                    i5++;
                }
                int i8 = i5 + 1;
                int i9 = i7 + (i2 & 255);
                if (bArr[i8] != 1) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] bArr2 = new byte[i6];
                System.arraycopy(bArr, i8, bArr2, 0, i6);
                int i10 = i8 + i6;
                if (bArr[i10] != 3) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                int i11 = i10 + i9;
                if (bArr[i11] != 5) {
                    throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
                }
                byte[] bArr3 = new byte[bArr.length - i11];
                System.arraycopy(bArr, i11, bArr3, 0, bArr.length - i11);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw ParserException.createForMalformedContainer("Error parsing vorbis codec private", null);
            }
        }

        public boolean samplesHaveSupplementalData(boolean z) {
            if (MatroskaExtractor.CODEC_ID_OPUS.equals(this.codecId)) {
                return z;
            }
            return this.maxBlockAdditionId > 0;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:219:0x0453  */
        /* JADX WARN: Code duplicated, block: B:224:0x046c  */
        /* JADX WARN: Code duplicated, block: B:225:0x046e  */
        /* JADX WARN: Code duplicated, block: B:228:0x047b  */
        /* JADX WARN: Code duplicated, block: B:229:0x048d  */
        /* JADX WARN: Code duplicated, block: B:231:0x0493  */
        /* JADX WARN: Code duplicated, block: B:233:0x0497  */
        /* JADX WARN: Code duplicated, block: B:235:0x049c  */
        /* JADX WARN: Code duplicated, block: B:238:0x04a4  */
        /* JADX WARN: Code duplicated, block: B:240:0x04a9  */
        /* JADX WARN: Code duplicated, block: B:243:0x04ae  */
        /* JADX WARN: Code duplicated, block: B:246:0x04bc  */
        /* JADX WARN: Code duplicated, block: B:249:0x04c2  */
        /* JADX WARN: Code duplicated, block: B:252:0x04f5  */
        /* JADX WARN: Code duplicated, block: B:257:0x0515  */
        /* JADX WARN: Code duplicated, block: B:276:0x0561  */
        /* JADX WARN: Code duplicated, block: B:278:0x0587  */
        /* JADX WARN: Code duplicated, block: B:280:0x058d  */
        /* JADX WARN: Code duplicated, block: B:296:0x05b8  */
        /* JADX WARN: Code duplicated, block: B:301:0x05d3  */
        /* JADX WARN: Code duplicated, block: B:302:0x05d6  */
        /* JADX WARN: Code duplicated, block: B:4:0x0028  */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public void initializeOutput(ExtractorOutput extractorOutput, int i) throws ParserException {
            byte b;
            int i2;
            List<byte[]> listSingletonList;
            String str;
            int i3;
            int i4;
            List<byte[]> list;
            String str2;
            String str3;
            int i5;
            Format.Builder builder;
            int i6;
            int iIntValue;
            int i7;
            float f;
            int i8;
            int i9;
            int i10;
            String str4;
            DolbyVisionConfig dolbyVisionConfig;
            String str5 = this.codecId;
            str5.hashCode();
            String str6 = "audio/raw";
            switch (str5.hashCode()) {
                case -2095576542:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_MPEG4_AP)) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case -2095575984:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_MPEG4_SP)) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                case -1985379776:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_ACM)) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                case -1784763192:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_TRUEHD)) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                case -1730367663:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_VORBIS)) {
                        b = -1;
                    } else {
                        b = 4;
                    }
                    break;
                case -1482641358:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_MP2)) {
                        b = -1;
                    } else {
                        b = 5;
                    }
                    break;
                case -1482641357:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_MP3)) {
                        b = -1;
                    } else {
                        b = 6;
                    }
                    break;
                case -1373388978:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_FOURCC)) {
                        b = -1;
                    } else {
                        b = 7;
                    }
                    break;
                case -933872740:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_DVBSUB)) {
                        b = -1;
                    } else {
                        b = 8;
                    }
                    break;
                case -538363189:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_MPEG4_ASP)) {
                        b = -1;
                    } else {
                        b = 9;
                    }
                    break;
                case -538363109:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_H264)) {
                        b = -1;
                    } else {
                        b = 10;
                    }
                    break;
                case -425012669:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_VOBSUB)) {
                        b = -1;
                    } else {
                        b = ByteCode.T_LONG;
                    }
                    break;
                case -356037306:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_DTS_LOSSLESS)) {
                        b = -1;
                    } else {
                        b = 12;
                    }
                    break;
                case 62923557:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_AAC)) {
                        b = -1;
                    } else {
                        b = 13;
                    }
                    break;
                case 62923603:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_AC3)) {
                        b = -1;
                    } else {
                        b = 14;
                    }
                    break;
                case 62927045:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_DTS)) {
                        b = -1;
                    } else {
                        b = 15;
                    }
                    break;
                case 82318131:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_AV1)) {
                        b = -1;
                    } else {
                        b = 16;
                    }
                    break;
                case 82338133:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_VP8)) {
                        b = -1;
                    } else {
                        b = 17;
                    }
                    break;
                case 82338134:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_VP9)) {
                        b = -1;
                    } else {
                        b = 18;
                    }
                    break;
                case 99146302:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_PGS)) {
                        b = -1;
                    } else {
                        b = 19;
                    }
                    break;
                case 444813526:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_THEORA)) {
                        b = -1;
                    } else {
                        b = 20;
                    }
                    break;
                case 542569478:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_DTS_EXPRESS)) {
                        b = -1;
                    } else {
                        b = 21;
                    }
                    break;
                case 635596514:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_PCM_FLOAT)) {
                        b = -1;
                    } else {
                        b = 22;
                    }
                    break;
                case 725948237:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_PCM_INT_BIG)) {
                        b = -1;
                    } else {
                        b = 23;
                    }
                    break;
                case 725957860:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_PCM_INT_LIT)) {
                        b = -1;
                    } else {
                        b = 24;
                    }
                    break;
                case 738597099:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_ASS)) {
                        b = -1;
                    } else {
                        b = 25;
                    }
                    break;
                case 855502857:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_H265)) {
                        b = -1;
                    } else {
                        b = 26;
                    }
                    break;
                case 1045209816:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_VTT)) {
                        b = -1;
                    } else {
                        b = 27;
                    }
                    break;
                case 1422270023:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_SUBRIP)) {
                        b = -1;
                    } else {
                        b = 28;
                    }
                    break;
                case 1809237540:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_MPEG2)) {
                        b = -1;
                    } else {
                        b = 29;
                    }
                    break;
                case 1950749482:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_E_AC3)) {
                        b = -1;
                    } else {
                        b = 30;
                    }
                    break;
                case 1950789798:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_FLAC)) {
                        b = -1;
                    } else {
                        b = 31;
                    }
                    break;
                case 1951062397:
                    if (!str5.equals(MatroskaExtractor.CODEC_ID_OPUS)) {
                        b = -1;
                    } else {
                        b = 32;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                case 1:
                case 9:
                    i2 = 0;
                    byte[] bArr = this.codecPrivate;
                    listSingletonList = bArr == null ? null : Collections.singletonList(bArr);
                    str6 = "video/mp4v-es";
                    str = null;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null && (dolbyVisionConfig = DolbyVisionConfig.parse(new ParsableByteArray(this.dolbyVisionConfigBytes))) != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i11 = i5 | (z ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    } else if (MimeTypes.isVideo(str3)) {
                        if (this.displayUnit == 0) {
                            i9 = this.displayWidth;
                            iIntValue = -1;
                            if (i9 == -1) {
                                i9 = this.width;
                            }
                            this.displayWidth = i9;
                            i10 = this.displayHeight;
                            if (i10 == -1) {
                                i10 = this.height;
                            }
                            this.displayHeight = i10;
                        } else {
                            iIntValue = -1;
                        }
                        i7 = this.displayWidth;
                        if (i7 != iIntValue || (i8 = this.displayHeight) == iIntValue) {
                            f = -1.0f;
                        } else {
                            f = (this.height * i7) / (this.width * i8);
                        }
                        ColorInfo colorInfoBuild = this.hasColorInfo ? new ColorInfo.Builder().setColorSpace(this.colorSpace).setColorRange(this.colorRange).setColorTransfer(this.colorTransfer).setHdrStaticInfo(getHdrStaticInfo()).setLumaBitdepth(this.bitsPerChannel).setChromaBitdepth(this.bitsPerChannel).build() : null;
                        if (this.name != null && MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.containsKey(this.name)) {
                            iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                        }
                        if (this.projectionType == 0 || Float.compare(this.projectionPoseYaw, 0.0f) != 0 || Float.compare(this.projectionPosePitch, 0.0f) != 0) {
                            i2 = iIntValue;
                        } else if (Float.compare(this.projectionPoseRoll, 0.0f) != 0) {
                            if (Float.compare(this.projectionPoseRoll, 90.0f) == 0) {
                                i2 = 90;
                            } else if (Float.compare(this.projectionPoseRoll, -180.0f) == 0 || Float.compare(this.projectionPoseRoll, 180.0f) == 0) {
                                i2 = 180;
                            } else if (Float.compare(this.projectionPoseRoll, -90.0f) == 0) {
                                i2 = 270;
                            } else {
                                i2 = iIntValue;
                            }
                        }
                        builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                        i6 = 2;
                    } else {
                        if ("application/x-subrip".equals(str3) && !MimeTypes.TEXT_SSA.equals(str3) && !"text/vtt".equals(str3) && !MimeTypes.APPLICATION_VOBSUB.equals(str3) && !MimeTypes.APPLICATION_PGS.equals(str3) && !MimeTypes.APPLICATION_DVBSUBS.equals(str3)) {
                            throw ParserException.createForMalformedContainer("Unexpected MIME type.", null);
                        }
                        i6 = 3;
                    }
                    if (this.name != null && !MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.containsKey(this.name)) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild = id.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i11 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack;
                    trackOutputTrack.format(formatBuild);
                    return;
                case 2:
                    i2 = 0;
                    if (parseMsAcmCodecPrivate(new ParsableByteArray(getCodecPrivate(this.codecId)))) {
                        int pcmEncoding = Util.getPcmEncoding(this.audioBitDepth);
                        if (pcmEncoding != 0) {
                            i3 = pcmEncoding;
                            listSingletonList = null;
                            str = null;
                            i4 = -1;
                            if (this.dolbyVisionConfigBytes != null) {
                                str = dolbyVisionConfig.codecs;
                                str6 = "video/dolby-vision";
                            }
                            str3 = str6;
                            boolean z2 = this.flagDefault;
                            if (this.flagForced) {
                                i5 = 2;
                            } else {
                                i5 = i2;
                            }
                            int i12 = i5 | (z2 ? 1 : 0);
                            builder = new Format.Builder();
                            if (MimeTypes.isAudio(str3)) {
                                if (MimeTypes.isVideo(str3)) {
                                    if (this.displayUnit == 0) {
                                        i9 = this.displayWidth;
                                        iIntValue = -1;
                                        if (i9 == -1) {
                                            i9 = this.width;
                                        }
                                        this.displayWidth = i9;
                                        i10 = this.displayHeight;
                                        if (i10 == -1) {
                                            i10 = this.height;
                                        }
                                        this.displayHeight = i10;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    i7 = this.displayWidth;
                                    if (i7 != iIntValue) {
                                        f = -1.0f;
                                    } else {
                                        f = -1.0f;
                                    }
                                    if (this.hasColorInfo) {
                                    }
                                    if (this.name != null) {
                                        iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                                    }
                                    if (this.projectionType == 0) {
                                        i2 = iIntValue;
                                    } else {
                                        i2 = iIntValue;
                                    }
                                    builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                                    i6 = 2;
                                } else {
                                    if ("application/x-subrip".equals(str3)) {
                                    }
                                    i6 = 3;
                                }
                                break;
                            } else {
                                builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                                i6 = 1;
                            }
                            if (this.name != null) {
                                builder.setLabel(this.name);
                            }
                            Format.Builder id2 = builder.setId(i);
                            if (this.isWebm) {
                                str4 = MimeTypes.VIDEO_WEBM;
                            } else {
                                str4 = MimeTypes.VIDEO_MATROSKA;
                            }
                            Format formatBuild2 = id2.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i12 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                            TrackOutput trackOutputTrack2 = extractorOutput.track(this.number, i6);
                            this.output = trackOutputTrack2;
                            trackOutputTrack2.format(formatBuild2);
                            return;
                        }
                        Log.w(MatroskaExtractor.TAG, "Unsupported PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    } else {
                        Log.w(MatroskaExtractor.TAG, "Non-PCM MS/ACM is unsupported. Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    }
                    listSingletonList = null;
                    str = null;
                    str6 = MimeTypes.AUDIO_UNKNOWN;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z3 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i13 = i5 | (z3 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id3 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild3 = id3.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i13 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack3 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack3;
                    trackOutputTrack3.format(formatBuild3);
                    return;
                case 3:
                    i2 = 0;
                    this.trueHdSampleRechunker = new TrueHdSampleRechunker();
                    str6 = MimeTypes.AUDIO_TRUEHD;
                    listSingletonList = null;
                    str = null;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z4 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i14 = i5 | (z4 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id4 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild4 = id4.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i14 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack4 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack4;
                    trackOutputTrack4.format(formatBuild4);
                    return;
                case 4:
                    i2 = 0;
                    listSingletonList = parseVorbisCodecPrivate(getCodecPrivate(this.codecId));
                    str6 = "audio/vorbis";
                    i4 = 8192;
                    str = null;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z5 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i15 = i5 | (z5 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id5 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild5 = id5.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i15 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack5 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack5;
                    trackOutputTrack5.format(formatBuild5);
                    return;
                case 5:
                    i2 = 0;
                    str6 = MimeTypes.AUDIO_MPEG_L2;
                    listSingletonList = null;
                    str = null;
                    i4 = 4096;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z6 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i16 = i5 | (z6 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id6 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild6 = id6.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i16 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack6 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack6;
                    trackOutputTrack6.format(formatBuild6);
                    return;
                case 6:
                    i2 = 0;
                    str6 = "audio/mpeg";
                    listSingletonList = null;
                    str = null;
                    i4 = 4096;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z7 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i17 = i5 | (z7 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id7 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild7 = id7.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i17 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack7 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack7;
                    trackOutputTrack7.format(formatBuild7);
                    return;
                case 7:
                    i2 = 0;
                    Pair<String, List<byte[]>> fourCcPrivate = parseFourCcPrivate(new ParsableByteArray(getCodecPrivate(this.codecId)));
                    str6 = (String) fourCcPrivate.first;
                    listSingletonList = (List) fourCcPrivate.second;
                    str = null;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z8 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i18 = i5 | (z8 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id8 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild8 = id8.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i18 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack8 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack8;
                    trackOutputTrack8.format(formatBuild8);
                    return;
                case 8:
                    byte[] bArr2 = new byte[4];
                    i2 = 0;
                    System.arraycopy(getCodecPrivate(this.codecId), 0, bArr2, 0, 4);
                    listSingletonList = ImmutableList.of(bArr2);
                    str6 = MimeTypes.APPLICATION_DVBSUBS;
                    str = null;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z9 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i19 = i5 | (z9 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id9 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild9 = id9.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i19 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack9 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack9;
                    trackOutputTrack9.format(formatBuild9);
                    return;
                case 10:
                    AvcConfig avcConfig = AvcConfig.parse(new ParsableByteArray(getCodecPrivate(this.codecId)));
                    list = avcConfig.initializationData;
                    this.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
                    str2 = avcConfig.codecs;
                    str6 = "video/avc";
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    List<byte[]> list2 = list;
                    str = str2;
                    listSingletonList = list2;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z10 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i110 = i5 | (z10 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id10 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild10 = id10.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i110 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack10 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack10;
                    trackOutputTrack10.format(formatBuild10);
                    return;
                case 11:
                    listSingletonList = ImmutableList.of(getCodecPrivate(this.codecId));
                    str6 = MimeTypes.APPLICATION_VOBSUB;
                    str = null;
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z11 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i111 = i5 | (z11 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id11 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild11 = id11.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i111 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack11 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack11;
                    trackOutputTrack11.format(formatBuild11);
                    return;
                case 12:
                    str6 = MimeTypes.AUDIO_DTS_HD;
                    listSingletonList = null;
                    str = null;
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z12 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i112 = i5 | (z12 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id12 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild12 = id12.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i112 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack12 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack12;
                    trackOutputTrack12.format(formatBuild12);
                    return;
                case 13:
                    listSingletonList = Collections.singletonList(getCodecPrivate(this.codecId));
                    AacUtil.Config audioSpecificConfig = AacUtil.parseAudioSpecificConfig(this.codecPrivate);
                    this.sampleRate = audioSpecificConfig.sampleRateHz;
                    this.channelCount = audioSpecificConfig.channelCount;
                    str = audioSpecificConfig.codecs;
                    str6 = "audio/mp4a-latm";
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z13 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i113 = i5 | (z13 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id13 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild13 = id13.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i113 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack13 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack13;
                    trackOutputTrack13.format(formatBuild13);
                    return;
                case 14:
                    str6 = "audio/ac3";
                    listSingletonList = null;
                    str = null;
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z14 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i114 = i5 | (z14 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id14 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild14 = id14.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i114 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack14 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack14;
                    trackOutputTrack14.format(formatBuild14);
                    return;
                case 15:
                case 21:
                    str6 = MimeTypes.AUDIO_DTS;
                    listSingletonList = null;
                    str = null;
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z15 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i115 = i5 | (z15 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id15 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild15 = id15.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i115 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack15 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack15;
                    trackOutputTrack15.format(formatBuild15);
                    return;
                case 16:
                    byte[] bArr3 = this.codecPrivate;
                    listSingletonList = bArr3 == null ? null : ImmutableList.of(bArr3);
                    str6 = MimeTypes.VIDEO_AV1;
                    str = null;
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z16 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i116 = i5 | (z16 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id16 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild16 = id16.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i116 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack16 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack16;
                    trackOutputTrack16.format(formatBuild16);
                    return;
                case 17:
                    str6 = "video/x-vnd.on2.vp8";
                    listSingletonList = null;
                    str = null;
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z17 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i117 = i5 | (z17 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id17 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild17 = id17.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i117 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack17 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack17;
                    trackOutputTrack17.format(formatBuild17);
                    return;
                case 18:
                    byte[] bArr4 = this.codecPrivate;
                    listSingletonList = bArr4 == null ? null : ImmutableList.of(bArr4);
                    str6 = "video/x-vnd.on2.vp9";
                    str = null;
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z18 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i118 = i5 | (z18 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id18 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild18 = id18.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i118 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack18 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack18;
                    trackOutputTrack18.format(formatBuild18);
                    return;
                case 19:
                    str6 = MimeTypes.APPLICATION_PGS;
                    listSingletonList = null;
                    str = null;
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z19 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i119 = i5 | (z19 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id19 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild19 = id19.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i119 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack19 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack19;
                    trackOutputTrack19.format(formatBuild19);
                    return;
                case 20:
                    str6 = MimeTypes.VIDEO_UNKNOWN;
                    listSingletonList = null;
                    str = null;
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z110 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i1110 = i5 | (z110 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id110 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild110 = id110.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i1110 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack110 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack110;
                    trackOutputTrack110.format(formatBuild110);
                    return;
                case 22:
                    if (this.audioBitDepth == 32) {
                        listSingletonList = null;
                        str = null;
                        i2 = 0;
                        i4 = -1;
                        i3 = 4;
                    } else {
                        Log.w(MatroskaExtractor.TAG, "Unsupported floating point PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                        listSingletonList = null;
                        str = null;
                        str6 = MimeTypes.AUDIO_UNKNOWN;
                        i2 = 0;
                        i4 = -1;
                        i3 = -1;
                    }
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z111 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i1111 = i5 | (z111 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id111 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild111 = id111.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i1111 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack111 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack111;
                    trackOutputTrack111.format(formatBuild111);
                    return;
                case 23:
                    int i20 = this.audioBitDepth;
                    if (i20 == 8) {
                        i3 = 3;
                    } else if (i20 == 16) {
                        i3 = 268435456;
                    } else if (i20 == 24) {
                        i3 = C.ENCODING_PCM_24BIT_BIG_ENDIAN;
                    } else {
                        if (i20 != 32) {
                            Log.w(MatroskaExtractor.TAG, "Unsupported big endian PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                            listSingletonList = null;
                            str = null;
                            str6 = MimeTypes.AUDIO_UNKNOWN;
                            i2 = 0;
                            i4 = -1;
                            i3 = -1;
                            if (this.dolbyVisionConfigBytes != null) {
                                str = dolbyVisionConfig.codecs;
                                str6 = "video/dolby-vision";
                            }
                            str3 = str6;
                            boolean z112 = this.flagDefault;
                            if (this.flagForced) {
                                i5 = 2;
                            } else {
                                i5 = i2;
                            }
                            int i1112 = i5 | (z112 ? 1 : 0);
                            builder = new Format.Builder();
                            if (MimeTypes.isAudio(str3)) {
                                if (MimeTypes.isVideo(str3)) {
                                    if (this.displayUnit == 0) {
                                        i9 = this.displayWidth;
                                        iIntValue = -1;
                                        if (i9 == -1) {
                                            i9 = this.width;
                                        }
                                        this.displayWidth = i9;
                                        i10 = this.displayHeight;
                                        if (i10 == -1) {
                                            i10 = this.height;
                                        }
                                        this.displayHeight = i10;
                                    } else {
                                        iIntValue = -1;
                                    }
                                    i7 = this.displayWidth;
                                    if (i7 != iIntValue) {
                                        f = -1.0f;
                                    } else {
                                        f = -1.0f;
                                    }
                                    if (this.hasColorInfo) {
                                    }
                                    if (this.name != null) {
                                        iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                                    }
                                    if (this.projectionType == 0) {
                                        i2 = iIntValue;
                                    } else {
                                        i2 = iIntValue;
                                    }
                                    builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                                    i6 = 2;
                                } else {
                                    if ("application/x-subrip".equals(str3)) {
                                    }
                                    i6 = 3;
                                }
                                break;
                            } else {
                                builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                                i6 = 1;
                            }
                            if (this.name != null) {
                                builder.setLabel(this.name);
                            }
                            Format.Builder id112 = builder.setId(i);
                            if (this.isWebm) {
                                str4 = MimeTypes.VIDEO_WEBM;
                            } else {
                                str4 = MimeTypes.VIDEO_MATROSKA;
                            }
                            Format formatBuild112 = id112.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i1112 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                            TrackOutput trackOutputTrack112 = extractorOutput.track(this.number, i6);
                            this.output = trackOutputTrack112;
                            trackOutputTrack112.format(formatBuild112);
                            return;
                        }
                        i3 = C.ENCODING_PCM_32BIT_BIG_ENDIAN;
                    }
                    listSingletonList = null;
                    str = null;
                    i2 = 0;
                    i4 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z113 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i1113 = i5 | (z113 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id113 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild113 = id113.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i1113 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack113 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack113;
                    trackOutputTrack113.format(formatBuild113);
                    return;
                case 24:
                    int pcmEncoding2 = Util.getPcmEncoding(this.audioBitDepth);
                    if (pcmEncoding2 != 0) {
                        i3 = pcmEncoding2;
                        listSingletonList = null;
                        str = null;
                        i2 = 0;
                        i4 = -1;
                        if (this.dolbyVisionConfigBytes != null) {
                            str = dolbyVisionConfig.codecs;
                            str6 = "video/dolby-vision";
                        }
                        str3 = str6;
                        boolean z114 = this.flagDefault;
                        if (this.flagForced) {
                            i5 = 2;
                        } else {
                            i5 = i2;
                        }
                        int i1114 = i5 | (z114 ? 1 : 0);
                        builder = new Format.Builder();
                        if (MimeTypes.isAudio(str3)) {
                            if (MimeTypes.isVideo(str3)) {
                                if (this.displayUnit == 0) {
                                    i9 = this.displayWidth;
                                    iIntValue = -1;
                                    if (i9 == -1) {
                                        i9 = this.width;
                                    }
                                    this.displayWidth = i9;
                                    i10 = this.displayHeight;
                                    if (i10 == -1) {
                                        i10 = this.height;
                                    }
                                    this.displayHeight = i10;
                                } else {
                                    iIntValue = -1;
                                }
                                i7 = this.displayWidth;
                                if (i7 != iIntValue) {
                                    f = -1.0f;
                                } else {
                                    f = -1.0f;
                                }
                                if (this.hasColorInfo) {
                                }
                                if (this.name != null) {
                                    iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                                }
                                if (this.projectionType == 0) {
                                    i2 = iIntValue;
                                } else {
                                    i2 = iIntValue;
                                }
                                builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                                i6 = 2;
                            } else {
                                if ("application/x-subrip".equals(str3)) {
                                }
                                i6 = 3;
                            }
                            break;
                        } else {
                            builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                            i6 = 1;
                        }
                        if (this.name != null) {
                            builder.setLabel(this.name);
                        }
                        Format.Builder id114 = builder.setId(i);
                        if (this.isWebm) {
                            str4 = MimeTypes.VIDEO_WEBM;
                        } else {
                            str4 = MimeTypes.VIDEO_MATROSKA;
                        }
                        Format formatBuild114 = id114.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i1114 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                        TrackOutput trackOutputTrack114 = extractorOutput.track(this.number, i6);
                        this.output = trackOutputTrack114;
                        trackOutputTrack114.format(formatBuild114);
                        return;
                    }
                    Log.w(MatroskaExtractor.TAG, "Unsupported little endian PCM bit depth: " + this.audioBitDepth + ". Setting mimeType to " + MimeTypes.AUDIO_UNKNOWN);
                    listSingletonList = null;
                    str = null;
                    str6 = MimeTypes.AUDIO_UNKNOWN;
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z115 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i1115 = i5 | (z115 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id115 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild115 = id115.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i1115 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack115 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack115;
                    trackOutputTrack115.format(formatBuild115);
                    return;
                case 25:
                    listSingletonList = ImmutableList.of(MatroskaExtractor.SSA_DIALOGUE_FORMAT, getCodecPrivate(this.codecId));
                    str = null;
                    str6 = MimeTypes.TEXT_SSA;
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z116 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i1116 = i5 | (z116 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id116 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild116 = id116.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i1116 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack116 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack116;
                    trackOutputTrack116.format(formatBuild116);
                    return;
                case 26:
                    HevcConfig hevcConfig = HevcConfig.parse(new ParsableByteArray(getCodecPrivate(this.codecId)));
                    list = hevcConfig.initializationData;
                    this.nalUnitLengthFieldLength = hevcConfig.nalUnitLengthFieldLength;
                    str2 = hevcConfig.codecs;
                    str6 = "video/hevc";
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    List<byte[]> list3 = list;
                    str = str2;
                    listSingletonList = list3;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z117 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i1117 = i5 | (z117 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id117 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild117 = id117.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i1117 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack117 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack117;
                    trackOutputTrack117.format(formatBuild117);
                    return;
                case 27:
                    listSingletonList = null;
                    str = null;
                    str6 = "text/vtt";
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z118 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i1118 = i5 | (z118 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id118 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild118 = id118.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i1118 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack118 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack118;
                    trackOutputTrack118.format(formatBuild118);
                    return;
                case 28:
                    listSingletonList = null;
                    str = null;
                    str6 = "application/x-subrip";
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z119 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i1119 = i5 | (z119 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id119 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild119 = id119.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i1119 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack119 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack119;
                    trackOutputTrack119.format(formatBuild119);
                    return;
                case 29:
                    str6 = "video/mpeg2";
                    listSingletonList = null;
                    str = null;
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1110 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i11110 = i5 | (z1110 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id1110 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild1110 = id1110.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i11110 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack1110 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack1110;
                    trackOutputTrack1110.format(formatBuild1110);
                    return;
                case 30:
                    str6 = "audio/eac3";
                    listSingletonList = null;
                    str = null;
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1111 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i11111 = i5 | (z1111 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id1111 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild1111 = id1111.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i11111 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack1111 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack1111;
                    trackOutputTrack1111.format(formatBuild1111);
                    return;
                case 31:
                    listSingletonList = Collections.singletonList(getCodecPrivate(this.codecId));
                    str6 = "audio/flac";
                    str = null;
                    i2 = 0;
                    i4 = -1;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1112 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i11112 = i5 | (z1112 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id1112 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild1112 = id1112.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i11112 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack1112 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack1112;
                    trackOutputTrack1112.format(formatBuild1112);
                    return;
                case 32:
                    listSingletonList = new ArrayList<>(3);
                    listSingletonList.add(getCodecPrivate(this.codecId));
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    listSingletonList.add(byteBufferAllocate.order(byteOrder).putLong(this.codecDelayNs).array());
                    listSingletonList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.seekPreRollNs).array());
                    str6 = "audio/opus";
                    i4 = MatroskaExtractor.OPUS_MAX_INPUT_SIZE;
                    str = null;
                    i2 = 0;
                    i3 = -1;
                    if (this.dolbyVisionConfigBytes != null) {
                        str = dolbyVisionConfig.codecs;
                        str6 = "video/dolby-vision";
                    }
                    str3 = str6;
                    boolean z1113 = this.flagDefault;
                    if (this.flagForced) {
                        i5 = 2;
                    } else {
                        i5 = i2;
                    }
                    int i11113 = i5 | (z1113 ? 1 : 0);
                    builder = new Format.Builder();
                    if (MimeTypes.isAudio(str3)) {
                        if (MimeTypes.isVideo(str3)) {
                            if (this.displayUnit == 0) {
                                i9 = this.displayWidth;
                                iIntValue = -1;
                                if (i9 == -1) {
                                    i9 = this.width;
                                }
                                this.displayWidth = i9;
                                i10 = this.displayHeight;
                                if (i10 == -1) {
                                    i10 = this.height;
                                }
                                this.displayHeight = i10;
                            } else {
                                iIntValue = -1;
                            }
                            i7 = this.displayWidth;
                            if (i7 != iIntValue) {
                                f = -1.0f;
                            } else {
                                f = -1.0f;
                            }
                            if (this.hasColorInfo) {
                            }
                            if (this.name != null) {
                                iIntValue = ((Integer) MatroskaExtractor.TRACK_NAME_TO_ROTATION_DEGREES.get(this.name)).intValue();
                            }
                            if (this.projectionType == 0) {
                                i2 = iIntValue;
                            } else {
                                i2 = iIntValue;
                            }
                            builder.setWidth(this.width).setHeight(this.height).setPixelWidthHeightRatio(f).setRotationDegrees(i2).setProjectionData(this.projectionData).setStereoMode(this.stereoMode).setColorInfo(colorInfoBuild);
                            i6 = 2;
                        } else {
                            if ("application/x-subrip".equals(str3)) {
                            }
                            i6 = 3;
                        }
                        break;
                    } else {
                        builder.setChannelCount(this.channelCount).setSampleRate(this.sampleRate).setPcmEncoding(i3);
                        i6 = 1;
                    }
                    if (this.name != null) {
                        builder.setLabel(this.name);
                    }
                    Format.Builder id1113 = builder.setId(i);
                    if (this.isWebm) {
                        str4 = MimeTypes.VIDEO_WEBM;
                    } else {
                        str4 = MimeTypes.VIDEO_MATROSKA;
                    }
                    Format formatBuild1113 = id1113.setContainerMimeType(str4).setSampleMimeType(str3).setMaxInputSize(i4).setLanguage(this.language).setSelectionFlags(i11113 == true ? 1 : 0).setInitializationData(listSingletonList).setCodecs(str).setDrmInitData(this.drmInitData).build();
                    TrackOutput trackOutputTrack1113 = extractorOutput.track(this.number, i6);
                    this.output = trackOutputTrack1113;
                    trackOutputTrack1113.format(formatBuild1113);
                    return;
                default:
                    throw ParserException.createForMalformedContainer("Unrecognized codec identifier.", null);
            }
        }

        public void outputPendingSampleMetadata() {
            TrueHdSampleRechunker trueHdSampleRechunker = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.outputPendingSampleMetadata(this.output, this.cryptoData);
            }
        }

        public void reset() {
            TrueHdSampleRechunker trueHdSampleRechunker = this.trueHdSampleRechunker;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.reset();
            }
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("htc_video_rotA-000", 0);
        map.put("htc_video_rotA-090", 90);
        map.put("htc_video_rotA-180", 180);
        map.put("htc_video_rotA-270", 270);
        TRACK_NAME_TO_ROTATION_DEGREES = Collections.unmodifiableMap(map);
    }

    @Deprecated
    public MatroskaExtractor() {
        this(new DefaultEbmlReader(), 2, SubtitleParser.Factory.UNSUPPORTED);
    }

    private void assertInCues(int i) throws ParserException {
        if (this.cueTimesUs == null || this.cueClusterPositions == null) {
            throw ParserException.createForMalformedContainer("Element " + i + " must be in a Cues", null);
        }
    }

    private void assertInTrackEntry(int i) throws ParserException {
        if (this.currentTrack != null) {
            return;
        }
        throw ParserException.createForMalformedContainer("Element " + i + " must be in a TrackEntry", null);
    }

    private void assertInitialized() {
        Assertions.checkStateNotNull(this.extractorOutput);
    }

    private SeekMap buildSeekMap(@Nullable LongArray longArray, @Nullable LongArray longArray2) {
        int i;
        if (this.segmentContentPosition == -1 || this.durationUs == C.TIME_UNSET || longArray == null || longArray.size() == 0 || longArray2 == null || longArray2.size() != longArray.size()) {
            return new SeekMap.Unseekable(this.durationUs);
        }
        int size = longArray.size();
        int[] iArrCopyOf = new int[size];
        long[] jArrCopyOf = new long[size];
        long[] jArrCopyOf2 = new long[size];
        long[] jArrCopyOf3 = new long[size];
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            jArrCopyOf3[i3] = longArray.get(i3);
            jArrCopyOf[i3] = this.segmentContentPosition + longArray2.get(i3);
        }
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            int i4 = i2 + 1;
            iArrCopyOf[i2] = (int) (jArrCopyOf[i4] - jArrCopyOf[i2]);
            jArrCopyOf2[i2] = jArrCopyOf3[i4] - jArrCopyOf3[i2];
            i2 = i4;
        }
        int i5 = i;
        while (i5 > 0 && jArrCopyOf3[i5] > this.durationUs) {
            i5--;
        }
        iArrCopyOf[i5] = (int) ((this.segmentContentPosition + this.segmentContentSize) - jArrCopyOf[i5]);
        jArrCopyOf2[i5] = this.durationUs - jArrCopyOf3[i5];
        if (i5 < i) {
            Log.w(TAG, "Discarding trailing cue points with timestamps greater than total duration");
            int i6 = i5 + 1;
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i6);
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i6);
            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i6);
            jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i6);
        }
        return new ChunkIndex(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
    }

    private void commitSampleToOutput(Track track, long j, int i, int i2, int i3) {
        TrueHdSampleRechunker trueHdSampleRechunker = track.trueHdSampleRechunker;
        if (trueHdSampleRechunker != null) {
            trueHdSampleRechunker.sampleMetadata(track.output, j, i, i2, i3, track.cryptoData);
        } else {
            if (CODEC_ID_SUBRIP.equals(track.codecId) || CODEC_ID_ASS.equals(track.codecId) || CODEC_ID_VTT.equals(track.codecId)) {
                if (this.blockSampleCount > 1) {
                    Log.w(TAG, "Skipping subtitle sample in laced block.");
                } else {
                    long j2 = this.blockDurationUs;
                    if (j2 == C.TIME_UNSET) {
                        Log.w(TAG, "Skipping subtitle sample with no duration.");
                    } else {
                        setSubtitleEndTime(track.codecId, j2, this.subtitleSample.getData());
                        for (int position = this.subtitleSample.getPosition(); position < this.subtitleSample.limit(); position++) {
                            if (this.subtitleSample.getData()[position] == 0) {
                                this.subtitleSample.setLimit(position);
                                break;
                            }
                        }
                        TrackOutput trackOutput = track.output;
                        ParsableByteArray parsableByteArray = this.subtitleSample;
                        trackOutput.sampleData(parsableByteArray, parsableByteArray.limit());
                        i2 += this.subtitleSample.limit();
                    }
                }
            }
            if ((268435456 & i) != 0) {
                if (this.blockSampleCount > 1) {
                    this.supplementalData.reset(0);
                } else {
                    int iLimit = this.supplementalData.limit();
                    track.output.sampleData(this.supplementalData, iLimit, 2);
                    i2 += iLimit;
                }
            }
            track.output.sampleMetadata(j, i, i2, i3, track.cryptoData);
        }
        this.haveOutputSample = true;
    }

    private static int[] ensureArrayCapacity(@Nullable int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        return iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    private int finishWriteSampleData() {
        int i = this.sampleBytesWritten;
        resetWriteSampleData();
        return i;
    }

    private static byte[] formatSubtitleTimecode(long j, String str, long j2) {
        Assertions.checkArgument(j != C.TIME_UNSET);
        int i = (int) (j / 3600000000L);
        long j3 = j - (((long) i) * 3600000000L);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - (((long) i2) * 60000000);
        int i3 = (int) (j4 / 1000000);
        return Util.getUtf8Bytes(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (((long) i3) * 1000000)) / j2))));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static boolean isCodecSupported(String str) {
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -2095576542:
                if (str.equals(CODEC_ID_MPEG4_AP)) {
                    b = 0;
                }
                break;
            case -2095575984:
                if (str.equals(CODEC_ID_MPEG4_SP)) {
                    b = 1;
                }
                break;
            case -1985379776:
                if (str.equals(CODEC_ID_ACM)) {
                    b = 2;
                }
                break;
            case -1784763192:
                if (str.equals(CODEC_ID_TRUEHD)) {
                    b = 3;
                }
                break;
            case -1730367663:
                if (str.equals(CODEC_ID_VORBIS)) {
                    b = 4;
                }
                break;
            case -1482641358:
                if (str.equals(CODEC_ID_MP2)) {
                    b = 5;
                }
                break;
            case -1482641357:
                if (str.equals(CODEC_ID_MP3)) {
                    b = 6;
                }
                break;
            case -1373388978:
                if (str.equals(CODEC_ID_FOURCC)) {
                    b = 7;
                }
                break;
            case -933872740:
                if (str.equals(CODEC_ID_DVBSUB)) {
                    b = 8;
                }
                break;
            case -538363189:
                if (str.equals(CODEC_ID_MPEG4_ASP)) {
                    b = 9;
                }
                break;
            case -538363109:
                if (str.equals(CODEC_ID_H264)) {
                    b = 10;
                }
                break;
            case -425012669:
                if (str.equals(CODEC_ID_VOBSUB)) {
                    b = ByteCode.T_LONG;
                }
                break;
            case -356037306:
                if (str.equals(CODEC_ID_DTS_LOSSLESS)) {
                    b = 12;
                }
                break;
            case 62923557:
                if (str.equals(CODEC_ID_AAC)) {
                    b = 13;
                }
                break;
            case 62923603:
                if (str.equals(CODEC_ID_AC3)) {
                    b = 14;
                }
                break;
            case 62927045:
                if (str.equals(CODEC_ID_DTS)) {
                    b = 15;
                }
                break;
            case 82318131:
                if (str.equals(CODEC_ID_AV1)) {
                    b = 16;
                }
                break;
            case 82338133:
                if (str.equals(CODEC_ID_VP8)) {
                    b = 17;
                }
                break;
            case 82338134:
                if (str.equals(CODEC_ID_VP9)) {
                    b = 18;
                }
                break;
            case 99146302:
                if (str.equals(CODEC_ID_PGS)) {
                    b = 19;
                }
                break;
            case 444813526:
                if (str.equals(CODEC_ID_THEORA)) {
                    b = 20;
                }
                break;
            case 542569478:
                if (str.equals(CODEC_ID_DTS_EXPRESS)) {
                    b = 21;
                }
                break;
            case 635596514:
                if (str.equals(CODEC_ID_PCM_FLOAT)) {
                    b = 22;
                }
                break;
            case 725948237:
                if (str.equals(CODEC_ID_PCM_INT_BIG)) {
                    b = 23;
                }
                break;
            case 725957860:
                if (str.equals(CODEC_ID_PCM_INT_LIT)) {
                    b = 24;
                }
                break;
            case 738597099:
                if (str.equals(CODEC_ID_ASS)) {
                    b = 25;
                }
                break;
            case 855502857:
                if (str.equals(CODEC_ID_H265)) {
                    b = 26;
                }
                break;
            case 1045209816:
                if (str.equals(CODEC_ID_VTT)) {
                    b = 27;
                }
                break;
            case 1422270023:
                if (str.equals(CODEC_ID_SUBRIP)) {
                    b = 28;
                }
                break;
            case 1809237540:
                if (str.equals(CODEC_ID_MPEG2)) {
                    b = 29;
                }
                break;
            case 1950749482:
                if (str.equals(CODEC_ID_E_AC3)) {
                    b = 30;
                }
                break;
            case 1950789798:
                if (str.equals(CODEC_ID_FLAC)) {
                    b = 31;
                }
                break;
            case 1951062397:
                if (str.equals(CODEC_ID_OPUS)) {
                    b = 32;
                }
                break;
        }
        switch (b) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
                return true;
            default:
                return false;
        }
    }

    public static Extractor[] lambda$newFactory$0(SubtitleParser.Factory factory) {
        return new Extractor[]{new MatroskaExtractor(factory)};
    }

    public static Extractor[] lambda$static$1() {
        return new Extractor[]{new MatroskaExtractor(SubtitleParser.Factory.UNSUPPORTED, 2)};
    }

    private boolean maybeSeekForCues(PositionHolder positionHolder, long j) {
        if (this.seekForCues) {
            this.seekPositionAfterBuildingCues = j;
            positionHolder.position = this.cuesContentPosition;
            this.seekForCues = false;
            return true;
        }
        if (this.sentSeekMap) {
            long j2 = this.seekPositionAfterBuildingCues;
            if (j2 != -1) {
                positionHolder.position = j2;
                this.seekPositionAfterBuildingCues = -1L;
                return true;
            }
        }
        return false;
    }

    public static ExtractorsFactory newFactory(final SubtitleParser.Factory factory) {
        return new ExtractorsFactory() {
            @Override
            public final Extractor[] createExtractors() {
                return MatroskaExtractor.lambda$newFactory$0(factory);
            }
        };
    }

    private void readScratch(ExtractorInput extractorInput, int i) throws IOException {
        if (this.scratch.limit() >= i) {
            return;
        }
        if (this.scratch.capacity() < i) {
            ParsableByteArray parsableByteArray = this.scratch;
            parsableByteArray.ensureCapacity(Math.max(parsableByteArray.capacity() * 2, i));
        }
        extractorInput.readFully(this.scratch.getData(), this.scratch.limit(), i - this.scratch.limit());
        this.scratch.setLimit(i);
    }

    private void resetWriteSampleData() {
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        this.sampleEncodingHandled = false;
        this.sampleSignalByteRead = false;
        this.samplePartitionCountRead = false;
        this.samplePartitionCount = 0;
        this.sampleSignalByte = (byte) 0;
        this.sampleInitializationVectorRead = false;
        this.sampleStrippedBytes.reset(0);
    }

    private long scaleTimecodeToUs(long j) throws ParserException {
        long j2 = this.timecodeScale;
        if (j2 != C.TIME_UNSET) {
            return Util.scaleLargeTimestamp(j, j2, 1000L);
        }
        throw ParserException.createForMalformedContainer("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private static void setSubtitleEndTime(String str, long j, byte[] bArr) {
        byte[] subtitleTimecode;
        int i;
        str.hashCode();
        switch (str) {
            case "S_TEXT/ASS":
                subtitleTimecode = formatSubtitleTimecode(j, SSA_TIMECODE_FORMAT, 10000L);
                i = 21;
                break;
            case "S_TEXT/WEBVTT":
                subtitleTimecode = formatSubtitleTimecode(j, VTT_TIMECODE_FORMAT, 1000L);
                i = 25;
                break;
            case "S_TEXT/UTF8":
                subtitleTimecode = formatSubtitleTimecode(j, SUBRIP_TIMECODE_FORMAT, 1000L);
                i = 19;
                break;
            default:
                throw new IllegalArgumentException();
        }
        System.arraycopy(subtitleTimecode, 0, bArr, i, subtitleTimecode.length);
    }

    private int writeSampleData(ExtractorInput extractorInput, Track track, int i, boolean z) throws IOException {
        int i2;
        if (CODEC_ID_SUBRIP.equals(track.codecId)) {
            writeSubtitleSampleData(extractorInput, SUBRIP_PREFIX, i);
            return finishWriteSampleData();
        }
        if (CODEC_ID_ASS.equals(track.codecId)) {
            writeSubtitleSampleData(extractorInput, SSA_PREFIX, i);
            return finishWriteSampleData();
        }
        if (CODEC_ID_VTT.equals(track.codecId)) {
            writeSubtitleSampleData(extractorInput, VTT_PREFIX, i);
            return finishWriteSampleData();
        }
        TrackOutput trackOutput = track.output;
        if (!this.sampleEncodingHandled) {
            if (track.hasContentEncryption) {
                this.blockFlags &= -1073741825;
                if (!this.sampleSignalByteRead) {
                    extractorInput.readFully(this.scratch.getData(), 0, 1);
                    this.sampleBytesRead++;
                    if ((this.scratch.getData()[0] & SocketData.CLAZZ_TYPE_END_SOCKET) == 128) {
                        throw ParserException.createForMalformedContainer("Extension bit is set in signal byte", null);
                    }
                    this.sampleSignalByte = this.scratch.getData()[0];
                    this.sampleSignalByteRead = true;
                }
                byte b = this.sampleSignalByte;
                if ((b & 1) == 1) {
                    boolean z2 = (b & 2) == 2;
                    this.blockFlags |= 1073741824;
                    if (!this.sampleInitializationVectorRead) {
                        extractorInput.readFully(this.encryptionInitializationVector.getData(), 0, 8);
                        this.sampleBytesRead += 8;
                        this.sampleInitializationVectorRead = true;
                        this.scratch.getData()[0] = (byte) ((z2 ? 128 : 0) | 8);
                        this.scratch.setPosition(0);
                        trackOutput.sampleData(this.scratch, 1, 1);
                        this.sampleBytesWritten++;
                        this.encryptionInitializationVector.setPosition(0);
                        trackOutput.sampleData(this.encryptionInitializationVector, 8, 1);
                        this.sampleBytesWritten += 8;
                    }
                    if (z2) {
                        if (!this.samplePartitionCountRead) {
                            extractorInput.readFully(this.scratch.getData(), 0, 1);
                            this.sampleBytesRead++;
                            this.scratch.setPosition(0);
                            this.samplePartitionCount = this.scratch.readUnsignedByte();
                            this.samplePartitionCountRead = true;
                        }
                        int i3 = this.samplePartitionCount * 4;
                        this.scratch.reset(i3);
                        extractorInput.readFully(this.scratch.getData(), 0, i3);
                        this.sampleBytesRead += i3;
                        short s = (short) ((this.samplePartitionCount / 2) + 1);
                        int i4 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.encryptionSubsampleDataBuffer;
                        if (byteBuffer == null || byteBuffer.capacity() < i4) {
                            this.encryptionSubsampleDataBuffer = ByteBuffer.allocate(i4);
                        }
                        this.encryptionSubsampleDataBuffer.position(0);
                        this.encryptionSubsampleDataBuffer.putShort(s);
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            i2 = this.samplePartitionCount;
                            if (i5 >= i2) {
                                break;
                            }
                            int unsignedIntToInt = this.scratch.readUnsignedIntToInt();
                            if (i5 % 2 == 0) {
                                this.encryptionSubsampleDataBuffer.putShort((short) (unsignedIntToInt - i6));
                            } else {
                                this.encryptionSubsampleDataBuffer.putInt(unsignedIntToInt - i6);
                            }
                            i5++;
                            i6 = unsignedIntToInt;
                        }
                        int i7 = (i - this.sampleBytesRead) - i6;
                        if (i2 % 2 == 1) {
                            this.encryptionSubsampleDataBuffer.putInt(i7);
                        } else {
                            this.encryptionSubsampleDataBuffer.putShort((short) i7);
                            this.encryptionSubsampleDataBuffer.putInt(0);
                        }
                        this.encryptionSubsampleData.reset(this.encryptionSubsampleDataBuffer.array(), i4);
                        trackOutput.sampleData(this.encryptionSubsampleData, i4, 1);
                        this.sampleBytesWritten += i4;
                    }
                }
            } else {
                byte[] bArr = track.sampleStrippedBytes;
                if (bArr != null) {
                    this.sampleStrippedBytes.reset(bArr, bArr.length);
                }
            }
            if (track.samplesHaveSupplementalData(z)) {
                this.blockFlags |= 268435456;
                this.supplementalData.reset(0);
                int iLimit = (this.sampleStrippedBytes.limit() + i) - this.sampleBytesRead;
                this.scratch.reset(4);
                this.scratch.getData()[0] = (byte) ((iLimit >> 24) & 255);
                this.scratch.getData()[1] = (byte) ((iLimit >> 16) & 255);
                this.scratch.getData()[2] = (byte) ((iLimit >> 8) & 255);
                this.scratch.getData()[3] = (byte) (iLimit & 255);
                trackOutput.sampleData(this.scratch, 4, 2);
                this.sampleBytesWritten += 4;
            }
            this.sampleEncodingHandled = true;
        }
        int iLimit2 = i + this.sampleStrippedBytes.limit();
        if (!CODEC_ID_H264.equals(track.codecId) && !CODEC_ID_H265.equals(track.codecId)) {
            if (track.trueHdSampleRechunker != null) {
                Assertions.checkState(this.sampleStrippedBytes.limit() == 0);
                track.trueHdSampleRechunker.startSample(extractorInput);
            }
            while (true) {
                int i8 = this.sampleBytesRead;
                if (i8 >= iLimit2) {
                    break;
                }
                int iWriteToOutput = writeToOutput(extractorInput, trackOutput, iLimit2 - i8);
                this.sampleBytesRead += iWriteToOutput;
                this.sampleBytesWritten += iWriteToOutput;
            }
        } else {
            byte[] data = this.nalLength.getData();
            data[0] = 0;
            data[1] = 0;
            data[2] = 0;
            int i9 = track.nalUnitLengthFieldLength;
            int i10 = 4 - i9;
            while (this.sampleBytesRead < iLimit2) {
                int i11 = this.sampleCurrentNalBytesRemaining;
                if (i11 == 0) {
                    writeToTarget(extractorInput, data, i10, i9);
                    this.sampleBytesRead += i9;
                    this.nalLength.setPosition(0);
                    this.sampleCurrentNalBytesRemaining = this.nalLength.readUnsignedIntToInt();
                    this.nalStartCode.setPosition(0);
                    trackOutput.sampleData(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                } else {
                    int iWriteToOutput2 = writeToOutput(extractorInput, trackOutput, i11);
                    this.sampleBytesRead += iWriteToOutput2;
                    this.sampleBytesWritten += iWriteToOutput2;
                    this.sampleCurrentNalBytesRemaining -= iWriteToOutput2;
                }
            }
        }
        if (CODEC_ID_VORBIS.equals(track.codecId)) {
            this.vorbisNumPageSamples.setPosition(0);
            trackOutput.sampleData(this.vorbisNumPageSamples, 4);
            this.sampleBytesWritten += 4;
        }
        return finishWriteSampleData();
    }

    private void writeSubtitleSampleData(ExtractorInput extractorInput, byte[] bArr, int i) throws IOException {
        int length = bArr.length + i;
        if (this.subtitleSample.capacity() < length) {
            this.subtitleSample.reset(Arrays.copyOf(bArr, length + i));
        } else {
            System.arraycopy(bArr, 0, this.subtitleSample.getData(), 0, bArr.length);
        }
        extractorInput.readFully(this.subtitleSample.getData(), bArr.length, i);
        this.subtitleSample.setPosition(0);
        this.subtitleSample.setLimit(length);
    }

    private int writeToOutput(ExtractorInput extractorInput, TrackOutput trackOutput, int i) throws IOException {
        int iBytesLeft = this.sampleStrippedBytes.bytesLeft();
        if (iBytesLeft <= 0) {
            return trackOutput.sampleData((DataReader) extractorInput, i, false);
        }
        int iMin = Math.min(i, iBytesLeft);
        trackOutput.sampleData(this.sampleStrippedBytes, iMin);
        return iMin;
    }

    private void writeToTarget(ExtractorInput extractorInput, byte[] bArr, int i, int i2) throws IOException {
        int iMin = Math.min(i2, this.sampleStrippedBytes.bytesLeft());
        extractorInput.readFully(bArr, i + iMin, i2 - iMin);
        if (iMin > 0) {
            this.sampleStrippedBytes.readBytes(bArr, i, iMin);
        }
    }

    /* JADX WARN: Code duplicated, block: B:97:0x0282  */
    @CallSuper
    public void binaryElement(int i, int i2, ExtractorInput extractorInput) throws IOException {
        Track track;
        int i3;
        Track track2;
        Track track3;
        long j;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = 0;
        int i9 = 1;
        if (i != 161 && i != 163) {
            if (i == 165) {
                if (this.blockState != 2) {
                    return;
                }
                handleBlockAdditionalData(this.tracks.get(this.blockTrackNumber), this.blockAdditionalId, extractorInput, i2);
                return;
            }
            if (i == ID_BLOCK_ADD_ID_EXTRA_DATA) {
                handleBlockAddIDExtraData(getCurrentTrack(i), extractorInput, i2);
                return;
            }
            if (i == ID_CONTENT_COMPRESSION_SETTINGS) {
                assertInTrackEntry(i);
                byte[] bArr = new byte[i2];
                this.currentTrack.sampleStrippedBytes = bArr;
                extractorInput.readFully(bArr, 0, i2);
                return;
            }
            if (i == ID_CONTENT_ENCRYPTION_KEY_ID) {
                byte[] bArr2 = new byte[i2];
                extractorInput.readFully(bArr2, 0, i2);
                getCurrentTrack(i).cryptoData = new TrackOutput.CryptoData(1, bArr2, 0, 0);
                return;
            }
            if (i == ID_SEEK_ID) {
                Arrays.fill(this.seekEntryIdBytes.getData(), (byte) 0);
                extractorInput.readFully(this.seekEntryIdBytes.getData(), 4 - i2, i2);
                this.seekEntryIdBytes.setPosition(0);
                this.seekEntryId = (int) this.seekEntryIdBytes.readUnsignedInt();
                return;
            }
            if (i == ID_CODEC_PRIVATE) {
                assertInTrackEntry(i);
                byte[] bArr3 = new byte[i2];
                this.currentTrack.codecPrivate = bArr3;
                extractorInput.readFully(bArr3, 0, i2);
                return;
            }
            if (i != ID_PROJECTION_PRIVATE) {
                throw ParserException.createForMalformedContainer("Unexpected id: " + i, null);
            }
            assertInTrackEntry(i);
            byte[] bArr4 = new byte[i2];
            this.currentTrack.projectionData = bArr4;
            extractorInput.readFully(bArr4, 0, i2);
            return;
        }
        if (this.blockState == 0) {
            this.blockTrackNumber = (int) this.varintReader.readUnsignedVarint(extractorInput, false, true, 8);
            this.blockTrackNumberLength = this.varintReader.getLastLength();
            this.blockDurationUs = C.TIME_UNSET;
            this.blockState = 1;
            this.scratch.reset(0);
        }
        Track track4 = this.tracks.get(this.blockTrackNumber);
        if (track4 == null) {
            extractorInput.skipFully(i2 - this.blockTrackNumberLength);
            this.blockState = 0;
            return;
        }
        track4.assertOutputInitialized();
        if (this.blockState == 1) {
            readScratch(extractorInput, 3);
            int i10 = (this.scratch.getData()[2] & 6) >> 1;
            byte b = 255;
            if (i10 == 0) {
                this.blockSampleCount = 1;
                int[] iArrEnsureArrayCapacity = ensureArrayCapacity(this.blockSampleSizes, 1);
                this.blockSampleSizes = iArrEnsureArrayCapacity;
                iArrEnsureArrayCapacity[0] = (i2 - this.blockTrackNumberLength) - 3;
            } else {
                int i11 = 4;
                readScratch(extractorInput, 4);
                int i12 = (this.scratch.getData()[3] & 255) + 1;
                this.blockSampleCount = i12;
                int[] iArrEnsureArrayCapacity2 = ensureArrayCapacity(this.blockSampleSizes, i12);
                this.blockSampleSizes = iArrEnsureArrayCapacity2;
                if (i10 == 2) {
                    int i13 = (i2 - this.blockTrackNumberLength) - 4;
                    int i14 = this.blockSampleCount;
                    Arrays.fill(iArrEnsureArrayCapacity2, 0, i14, i13 / i14);
                } else {
                    if (i10 == 1) {
                        int i15 = 0;
                        int i16 = 0;
                        while (true) {
                            i4 = this.blockSampleCount;
                            if (i15 >= i4 - 1) {
                                break;
                            }
                            this.blockSampleSizes[i15] = 0;
                            while (true) {
                                i5 = i11 + 1;
                                readScratch(extractorInput, i5);
                                int i17 = this.scratch.getData()[i11] & 255;
                                int[] iArr = this.blockSampleSizes;
                                i6 = iArr[i15] + i17;
                                iArr[i15] = i6;
                                if (i17 != 255) {
                                    break;
                                } else {
                                    i11 = i5;
                                }
                            }
                            i16 += i6;
                            i15++;
                            i11 = i5;
                        }
                        this.blockSampleSizes[i4 - 1] = ((i2 - this.blockTrackNumberLength) - i11) - i16;
                    } else {
                        if (i10 != 3) {
                            throw ParserException.createForMalformedContainer("Unexpected lacing value: " + i10, null);
                        }
                        int i18 = 0;
                        int i19 = 0;
                        while (true) {
                            int i20 = this.blockSampleCount;
                            if (i18 >= i20 - 1) {
                                track2 = track4;
                                this.blockSampleSizes[i20 - 1] = ((i2 - this.blockTrackNumberLength) - i11) - i19;
                                break;
                            }
                            this.blockSampleSizes[i18] = i8;
                            int i21 = i11 + 1;
                            readScratch(extractorInput, i21);
                            if (this.scratch.getData()[i11] == 0) {
                                throw ParserException.createForMalformedContainer("No valid varint length mask found", null);
                            }
                            int i22 = i8;
                            while (true) {
                                if (i22 >= 8) {
                                    track3 = track4;
                                    j = 0;
                                    break;
                                }
                                int i23 = i9 << (7 - i22);
                                if ((this.scratch.getData()[i11] & i23) != 0) {
                                    i21 += i22;
                                    readScratch(extractorInput, i21);
                                    track3 = track4;
                                    j = (~i23) & this.scratch.getData()[i11] & b;
                                    int i24 = i11 + 1;
                                    while (i24 < i21) {
                                        j = (j << 8) | ((long) (this.scratch.getData()[i24] & b));
                                        i24++;
                                        b = 255;
                                    }
                                    if (i18 <= 0) {
                                        break;
                                    }
                                    j -= (1 << ((i22 * 7) + 6)) - 1;
                                    break;
                                }
                                i22++;
                                i9 = 1;
                                b = 255;
                            }
                            i11 = i21;
                            if (j < -2147483648L || j > 2147483647L) {
                                throw ParserException.createForMalformedContainer("EBML lacing sample size out of range.", null);
                            }
                            int i25 = (int) j;
                            int[] iArr2 = this.blockSampleSizes;
                            if (i18 != 0) {
                                i25 += iArr2[i18 - 1];
                            }
                            iArr2[i18] = i25;
                            i19 += i25;
                            i18++;
                            track4 = track3;
                            i8 = 0;
                            i9 = 1;
                            b = 255;
                        }
                    }
                    this.blockTimeUs = this.clusterTimecodeUs + scaleTimecodeToUs((this.scratch.getData()[0] << 8) | (this.scratch.getData()[1] & 255));
                    track = track2;
                    if (track.type != 2 || (i == 163 && (this.scratch.getData()[2] & SocketData.CLAZZ_TYPE_END_SOCKET) == 128)) {
                        i7 = 1;
                    } else {
                        i7 = 0;
                    }
                    this.blockFlags = i7;
                    this.blockState = 2;
                    this.blockSampleIndex = 0;
                    i3 = 163;
                }
            }
            track2 = track4;
            this.blockTimeUs = this.clusterTimecodeUs + scaleTimecodeToUs((this.scratch.getData()[0] << 8) | (this.scratch.getData()[1] & 255));
            track = track2;
            if (track.type != 2) {
                i7 = 1;
            } else {
                i7 = 1;
            }
            this.blockFlags = i7;
            this.blockState = 2;
            this.blockSampleIndex = 0;
            i3 = 163;
        } else {
            track = track4;
            i3 = 163;
        }
        if (i == i3) {
            while (true) {
                int i26 = this.blockSampleIndex;
                if (i26 >= this.blockSampleCount) {
                    this.blockState = 0;
                    return;
                }
                commitSampleToOutput(track, ((long) ((this.blockSampleIndex * track.defaultSampleDurationNs) / 1000)) + this.blockTimeUs, this.blockFlags, writeSampleData(extractorInput, track, this.blockSampleSizes[i26], false), 0);
                this.blockSampleIndex++;
            }
        } else {
            while (true) {
                int i27 = this.blockSampleIndex;
                if (i27 >= this.blockSampleCount) {
                    return;
                }
                int[] iArr3 = this.blockSampleSizes;
                iArr3[i27] = writeSampleData(extractorInput, track, iArr3[i27], true);
                this.blockSampleIndex++;
            }
        }
    }

    @CallSuper
    public void endMasterElement(int i) throws ParserException {
        assertInitialized();
        if (i == 160) {
            if (this.blockState != 2) {
                return;
            }
            Track track = this.tracks.get(this.blockTrackNumber);
            track.assertOutputInitialized();
            if (this.blockGroupDiscardPaddingNs > 0 && CODEC_ID_OPUS.equals(track.codecId)) {
                this.supplementalData.reset(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.blockGroupDiscardPaddingNs).array());
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.blockSampleCount; i3++) {
                i2 += this.blockSampleSizes[i3];
            }
            int i4 = 0;
            while (i4 < this.blockSampleCount) {
                long j = this.blockTimeUs + ((long) ((track.defaultSampleDurationNs * i4) / 1000));
                int i5 = this.blockFlags;
                if (i4 == 0 && !this.blockHasReferenceBlock) {
                    i5 |= 1;
                }
                int i6 = this.blockSampleSizes[i4];
                int i7 = i2 - i6;
                commitSampleToOutput(track, j, i5, i6, i7);
                i4++;
                i2 = i7;
            }
            this.blockState = 0;
            return;
        }
        if (i == 174) {
            Track track2 = (Track) Assertions.checkStateNotNull(this.currentTrack);
            String str = track2.codecId;
            if (str == null) {
                throw ParserException.createForMalformedContainer("CodecId is missing in TrackEntry element", null);
            }
            if (isCodecSupported(str)) {
                track2.initializeOutput(this.extractorOutput, track2.number);
                this.tracks.put(track2.number, track2);
            }
            this.currentTrack = null;
            return;
        }
        if (i == ID_SEEK) {
            int i8 = this.seekEntryId;
            if (i8 != -1) {
                long j2 = this.seekEntryPosition;
                if (j2 != -1) {
                    if (i8 == ID_CUES) {
                        this.cuesContentPosition = j2;
                        return;
                    }
                    return;
                }
            }
            throw ParserException.createForMalformedContainer("Mandatory element SeekID or SeekPosition not found", null);
        }
        if (i == ID_CONTENT_ENCODING) {
            assertInTrackEntry(i);
            Track track3 = this.currentTrack;
            if (track3.hasContentEncryption) {
                if (track3.cryptoData == null) {
                    throw ParserException.createForMalformedContainer("Encrypted Track found but ContentEncKeyID was not found", null);
                }
                track3.drmInitData = new DrmInitData(new DrmInitData.SchemeData(C.UUID_NIL, MimeTypes.VIDEO_WEBM, this.currentTrack.cryptoData.encryptionKey));
                return;
            }
            return;
        }
        if (i == ID_CONTENT_ENCODINGS) {
            assertInTrackEntry(i);
            Track track4 = this.currentTrack;
            if (track4.hasContentEncryption && track4.sampleStrippedBytes != null) {
                throw ParserException.createForMalformedContainer("Combining encryption and compression is not supported", null);
            }
            return;
        }
        if (i == 357149030) {
            if (this.timecodeScale == C.TIME_UNSET) {
                this.timecodeScale = 1000000L;
            }
            long j3 = this.durationTimecode;
            if (j3 != C.TIME_UNSET) {
                this.durationUs = scaleTimecodeToUs(j3);
                return;
            }
            return;
        }
        if (i == ID_TRACKS) {
            if (this.tracks.size() == 0) {
                throw ParserException.createForMalformedContainer("No valid tracks were found", null);
            }
            this.extractorOutput.endTracks();
        } else {
            if (i != ID_CUES) {
                return;
            }
            if (!this.sentSeekMap) {
                this.extractorOutput.seekMap(buildSeekMap(this.cueTimesUs, this.cueClusterPositions));
                this.sentSeekMap = true;
            }
            this.cueTimesUs = null;
            this.cueClusterPositions = null;
        }
    }

    @CallSuper
    public void floatElement(int i, double d) throws ParserException {
        if (i == 181) {
            getCurrentTrack(i).sampleRate = (int) d;
        }
        if (i == ID_DURATION) {
            this.durationTimecode = (long) d;
            return;
        }
        switch (i) {
            case ID_PRIMARY_R_CHROMATICITY_X:
                getCurrentTrack(i).primaryRChromaticityX = (float) d;
                break;
            case ID_PRIMARY_R_CHROMATICITY_Y:
                getCurrentTrack(i).primaryRChromaticityY = (float) d;
                break;
            case ID_PRIMARY_G_CHROMATICITY_X:
                getCurrentTrack(i).primaryGChromaticityX = (float) d;
                break;
            case ID_PRIMARY_G_CHROMATICITY_Y:
                getCurrentTrack(i).primaryGChromaticityY = (float) d;
                break;
            case ID_PRIMARY_B_CHROMATICITY_X:
                getCurrentTrack(i).primaryBChromaticityX = (float) d;
                break;
            case ID_PRIMARY_B_CHROMATICITY_Y:
                getCurrentTrack(i).primaryBChromaticityY = (float) d;
                break;
            case ID_WHITE_POINT_CHROMATICITY_X:
                getCurrentTrack(i).whitePointChromaticityX = (float) d;
                break;
            case ID_WHITE_POINT_CHROMATICITY_Y:
                getCurrentTrack(i).whitePointChromaticityY = (float) d;
                break;
            case ID_LUMNINANCE_MAX:
                getCurrentTrack(i).maxMasteringLuminance = (float) d;
                break;
            case ID_LUMNINANCE_MIN:
                getCurrentTrack(i).minMasteringLuminance = (float) d;
                break;
            default:
                switch (i) {
                    case ID_PROJECTION_POSE_YAW:
                        getCurrentTrack(i).projectionPoseYaw = (float) d;
                        break;
                    case ID_PROJECTION_POSE_PITCH:
                        getCurrentTrack(i).projectionPosePitch = (float) d;
                        break;
                    case ID_PROJECTION_POSE_ROLL:
                        getCurrentTrack(i).projectionPoseRoll = (float) d;
                        break;
                }
                break;
        }
    }

    public Track getCurrentTrack(int i) throws ParserException {
        assertInTrackEntry(i);
        return this.currentTrack;
    }

    @CallSuper
    public int getElementType(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case ID_TIME_CODE:
            case ID_BLOCK_ADD_ID:
            case ID_CUE_CLUSTER_POSITION:
            case ID_REFERENCE_BLOCK:
            case ID_BLOCK_ADD_ID_TYPE:
            case ID_CONTENT_COMPRESSION_ALGORITHM:
            case ID_DOC_TYPE_READ_VERSION:
            case ID_EBML_READ_VERSION:
            case ID_CONTENT_ENCRYPTION_ALGORITHM:
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE:
            case ID_CONTENT_ENCODING_ORDER:
            case ID_CONTENT_ENCODING_SCOPE:
            case ID_SEEK_POSITION:
            case ID_STEREO_MODE:
            case ID_DISPLAY_WIDTH:
            case ID_DISPLAY_UNIT:
            case ID_DISPLAY_HEIGHT:
            case ID_FLAG_FORCED:
            case ID_COLOUR_BITS_PER_CHANNEL:
            case ID_COLOUR_RANGE:
            case ID_COLOUR_TRANSFER:
            case ID_COLOUR_PRIMARIES:
            case ID_MAX_CLL:
            case ID_MAX_FALL:
            case ID_MAX_BLOCK_ADDITION_ID:
            case ID_CODEC_DELAY:
            case ID_SEEK_PRE_ROLL:
            case ID_AUDIO_BIT_DEPTH:
            case ID_DISCARD_PADDING:
            case ID_PROJECTION_TYPE:
            case ID_DEFAULT_DURATION:
            case ID_TIMECODE_SCALE:
                return 2;
            case 134:
            case ID_DOC_TYPE:
            case ID_NAME:
            case ID_LANGUAGE:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case ID_BLOCK_ADDITION_MAPPING:
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS:
            case ID_SEEK:
            case ID_CONTENT_COMPRESSION:
            case ID_CONTENT_ENCRYPTION:
            case ID_COLOUR:
            case ID_MASTERING_METADATA:
            case ID_CONTENT_ENCODING:
            case ID_CONTENT_ENCODINGS:
            case ID_BLOCK_ADDITIONS:
            case ID_PROJECTION:
            case ID_SEEK_HEAD:
            case 357149030:
            case ID_TRACKS:
            case ID_SEGMENT:
            case ID_EBML:
            case ID_CUES:
            case ID_CLUSTER:
                return 1;
            case 161:
            case 163:
            case 165:
            case ID_BLOCK_ADD_ID_EXTRA_DATA:
            case ID_CONTENT_COMPRESSION_SETTINGS:
            case ID_CONTENT_ENCRYPTION_KEY_ID:
            case ID_SEEK_ID:
            case ID_CODEC_PRIVATE:
            case ID_PROJECTION_PRIVATE:
                return 4;
            case 181:
            case ID_DURATION:
            case ID_PRIMARY_R_CHROMATICITY_X:
            case ID_PRIMARY_R_CHROMATICITY_Y:
            case ID_PRIMARY_G_CHROMATICITY_X:
            case ID_PRIMARY_G_CHROMATICITY_Y:
            case ID_PRIMARY_B_CHROMATICITY_X:
            case ID_PRIMARY_B_CHROMATICITY_Y:
            case ID_WHITE_POINT_CHROMATICITY_X:
            case ID_WHITE_POINT_CHROMATICITY_Y:
            case ID_LUMNINANCE_MAX:
            case ID_LUMNINANCE_MIN:
            case ID_PROJECTION_POSE_YAW:
            case ID_PROJECTION_POSE_PITCH:
            case ID_PROJECTION_POSE_ROLL:
                return 5;
            default:
                return 0;
        }
    }

    public void handleBlockAddIDExtraData(Track track, ExtractorInput extractorInput, int i) throws IOException {
        if (track.blockAddIdType != 1685485123 && track.blockAddIdType != 1685480259) {
            extractorInput.skipFully(i);
            return;
        }
        byte[] bArr = new byte[i];
        track.dolbyVisionConfigBytes = bArr;
        extractorInput.readFully(bArr, 0, i);
    }

    public void handleBlockAdditionalData(Track track, int i, ExtractorInput extractorInput, int i2) throws IOException {
        if (i != 4 || !CODEC_ID_VP9.equals(track.codecId)) {
            extractorInput.skipFully(i2);
        } else {
            this.supplementalData.reset(i2);
            extractorInput.readFully(this.supplementalData.getData(), 0, i2);
        }
    }

    @Override
    public final void init(ExtractorOutput extractorOutput) {
        if (this.parseSubtitlesDuringExtraction) {
            extractorOutput = new SubtitleTranscodingExtractorOutput(extractorOutput, this.subtitleParserFactory);
        }
        this.extractorOutput = extractorOutput;
    }

    @CallSuper
    public void integerElement(int i, long j) throws ParserException {
        if (i == ID_CONTENT_ENCODING_ORDER) {
            if (j == 0) {
                return;
            }
            throw ParserException.createForMalformedContainer("ContentEncodingOrder " + j + " not supported", null);
        }
        if (i == ID_CONTENT_ENCODING_SCOPE) {
            if (j == 1) {
                return;
            }
            throw ParserException.createForMalformedContainer("ContentEncodingScope " + j + " not supported", null);
        }
        switch (i) {
            case 131:
                getCurrentTrack(i).type = (int) j;
                return;
            case 136:
                getCurrentTrack(i).flagDefault = j == 1;
                return;
            case 155:
                this.blockDurationUs = scaleTimecodeToUs(j);
                return;
            case 159:
                getCurrentTrack(i).channelCount = (int) j;
                return;
            case 176:
                getCurrentTrack(i).width = (int) j;
                return;
            case 179:
                assertInCues(i);
                this.cueTimesUs.add(scaleTimecodeToUs(j));
                return;
            case 186:
                getCurrentTrack(i).height = (int) j;
                return;
            case 215:
                getCurrentTrack(i).number = (int) j;
                return;
            case ID_TIME_CODE:
                this.clusterTimecodeUs = scaleTimecodeToUs(j);
                return;
            case ID_BLOCK_ADD_ID:
                this.blockAdditionalId = (int) j;
                return;
            case ID_CUE_CLUSTER_POSITION:
                if (this.seenClusterPositionForCurrentCuePoint) {
                    return;
                }
                assertInCues(i);
                this.cueClusterPositions.add(j);
                this.seenClusterPositionForCurrentCuePoint = true;
                return;
            case ID_REFERENCE_BLOCK:
                this.blockHasReferenceBlock = true;
                return;
            case ID_BLOCK_ADD_ID_TYPE:
                getCurrentTrack(i).blockAddIdType = (int) j;
                return;
            case ID_CONTENT_COMPRESSION_ALGORITHM:
                if (j == 3) {
                    return;
                }
                throw ParserException.createForMalformedContainer("ContentCompAlgo " + j + " not supported", null);
            case ID_DOC_TYPE_READ_VERSION:
                if (j < 1 || j > 2) {
                    throw ParserException.createForMalformedContainer("DocTypeReadVersion " + j + " not supported", null);
                }
                return;
            case ID_EBML_READ_VERSION:
                if (j == 1) {
                    return;
                }
                throw ParserException.createForMalformedContainer("EBMLReadVersion " + j + " not supported", null);
            case ID_CONTENT_ENCRYPTION_ALGORITHM:
                if (j == 5) {
                    return;
                }
                throw ParserException.createForMalformedContainer("ContentEncAlgo " + j + " not supported", null);
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE:
                if (j == 1) {
                    return;
                }
                throw ParserException.createForMalformedContainer("AESSettingsCipherMode " + j + " not supported", null);
            case ID_SEEK_POSITION:
                this.seekEntryPosition = j + this.segmentContentPosition;
                return;
            case ID_STEREO_MODE:
                int i2 = (int) j;
                assertInTrackEntry(i);
                if (i2 == 0) {
                    this.currentTrack.stereoMode = 0;
                    return;
                }
                if (i2 == 1) {
                    this.currentTrack.stereoMode = 2;
                    return;
                } else if (i2 == 3) {
                    this.currentTrack.stereoMode = 1;
                    return;
                } else {
                    if (i2 != 15) {
                        return;
                    }
                    this.currentTrack.stereoMode = 3;
                    return;
                }
            case ID_DISPLAY_WIDTH:
                getCurrentTrack(i).displayWidth = (int) j;
                return;
            case ID_DISPLAY_UNIT:
                getCurrentTrack(i).displayUnit = (int) j;
                return;
            case ID_DISPLAY_HEIGHT:
                getCurrentTrack(i).displayHeight = (int) j;
                return;
            case ID_FLAG_FORCED:
                getCurrentTrack(i).flagForced = j == 1;
                return;
            case ID_COLOUR_BITS_PER_CHANNEL:
                assertInTrackEntry(i);
                Track track = this.currentTrack;
                track.hasColorInfo = true;
                track.bitsPerChannel = (int) j;
                return;
            case ID_MAX_BLOCK_ADDITION_ID:
                getCurrentTrack(i).maxBlockAdditionId = (int) j;
                return;
            case ID_CODEC_DELAY:
                getCurrentTrack(i).codecDelayNs = j;
                return;
            case ID_SEEK_PRE_ROLL:
                getCurrentTrack(i).seekPreRollNs = j;
                return;
            case ID_AUDIO_BIT_DEPTH:
                getCurrentTrack(i).audioBitDepth = (int) j;
                return;
            case ID_DISCARD_PADDING:
                this.blockGroupDiscardPaddingNs = j;
                return;
            case ID_PROJECTION_TYPE:
                assertInTrackEntry(i);
                int i3 = (int) j;
                if (i3 == 0) {
                    this.currentTrack.projectionType = 0;
                    return;
                }
                if (i3 == 1) {
                    this.currentTrack.projectionType = 1;
                    return;
                } else if (i3 == 2) {
                    this.currentTrack.projectionType = 2;
                    return;
                } else {
                    if (i3 != 3) {
                        return;
                    }
                    this.currentTrack.projectionType = 3;
                    return;
                }
            case ID_DEFAULT_DURATION:
                getCurrentTrack(i).defaultSampleDurationNs = (int) j;
                return;
            case ID_TIMECODE_SCALE:
                this.timecodeScale = j;
                return;
            default:
                switch (i) {
                    case ID_COLOUR_RANGE:
                        assertInTrackEntry(i);
                        int i4 = (int) j;
                        if (i4 == 1) {
                            this.currentTrack.colorRange = 2;
                            return;
                        } else {
                            if (i4 != 2) {
                                return;
                            }
                            this.currentTrack.colorRange = 1;
                            return;
                        }
                    case ID_COLOUR_TRANSFER:
                        assertInTrackEntry(i);
                        int iIsoTransferCharacteristicsToColorTransfer = ColorInfo.isoTransferCharacteristicsToColorTransfer((int) j);
                        if (iIsoTransferCharacteristicsToColorTransfer != -1) {
                            this.currentTrack.colorTransfer = iIsoTransferCharacteristicsToColorTransfer;
                            return;
                        }
                        return;
                    case ID_COLOUR_PRIMARIES:
                        assertInTrackEntry(i);
                        this.currentTrack.hasColorInfo = true;
                        int iIsoColorPrimariesToColorSpace = ColorInfo.isoColorPrimariesToColorSpace((int) j);
                        if (iIsoColorPrimariesToColorSpace != -1) {
                            this.currentTrack.colorSpace = iIsoColorPrimariesToColorSpace;
                            return;
                        }
                        return;
                    case ID_MAX_CLL:
                        getCurrentTrack(i).maxContentLuminance = (int) j;
                        return;
                    case ID_MAX_FALL:
                        getCurrentTrack(i).maxFrameAverageLuminance = (int) j;
                        return;
                    default:
                        return;
                }
        }
    }

    @CallSuper
    public boolean isLevel1Element(int i) {
        return i == 357149030 || i == ID_CLUSTER || i == ID_CUES || i == ID_TRACKS;
    }

    @Override
    public final int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        this.haveOutputSample = false;
        boolean z = true;
        while (z && !this.haveOutputSample) {
            z = this.reader.read(extractorInput);
            if (z && maybeSeekForCues(positionHolder, extractorInput.getPosition())) {
                return 1;
            }
        }
        if (z) {
            return 0;
        }
        for (int i = 0; i < this.tracks.size(); i++) {
            Track trackValueAt = this.tracks.valueAt(i);
            trackValueAt.assertOutputInitialized();
            trackValueAt.outputPendingSampleMetadata();
        }
        return -1;
    }

    @Override
    public final void release() {
    }

    @Override
    @CallSuper
    public void seek(long j, long j2) {
        this.clusterTimecodeUs = C.TIME_UNSET;
        this.blockState = 0;
        this.reader.reset();
        this.varintReader.reset();
        resetWriteSampleData();
        for (int i = 0; i < this.tracks.size(); i++) {
            this.tracks.valueAt(i).reset();
        }
    }

    @Override
    public final boolean sniff(ExtractorInput extractorInput) throws IOException {
        return new Sniffer().sniff(extractorInput);
    }

    @CallSuper
    public void startMasterElement(int i, long j, long j2) throws ParserException {
        assertInitialized();
        if (i == 160) {
            this.blockHasReferenceBlock = false;
            this.blockGroupDiscardPaddingNs = 0L;
            return;
        }
        if (i == 174) {
            Track track = new Track();
            this.currentTrack = track;
            track.isWebm = this.isWebm;
            return;
        }
        if (i == 187) {
            this.seenClusterPositionForCurrentCuePoint = false;
            return;
        }
        if (i == ID_SEEK) {
            this.seekEntryId = -1;
            this.seekEntryPosition = -1L;
            return;
        }
        if (i == ID_CONTENT_ENCRYPTION) {
            getCurrentTrack(i).hasContentEncryption = true;
            return;
        }
        if (i == ID_MASTERING_METADATA) {
            getCurrentTrack(i).hasColorInfo = true;
            return;
        }
        if (i == ID_SEGMENT) {
            long j3 = this.segmentContentPosition;
            if (j3 != -1 && j3 != j) {
                throw ParserException.createForMalformedContainer("Multiple Segment elements not supported", null);
            }
            this.segmentContentPosition = j;
            this.segmentContentSize = j2;
            return;
        }
        if (i == ID_CUES) {
            this.cueTimesUs = new LongArray();
            this.cueClusterPositions = new LongArray();
        } else if (i == ID_CLUSTER && !this.sentSeekMap) {
            if (this.seekForCuesEnabled && this.cuesContentPosition != -1) {
                this.seekForCues = true;
            } else {
                this.extractorOutput.seekMap(new SeekMap.Unseekable(this.durationUs));
                this.sentSeekMap = true;
            }
        }
    }

    @CallSuper
    public void stringElement(int i, String str) throws ParserException {
        if (i == 134) {
            getCurrentTrack(i).codecId = str;
            return;
        }
        if (i != ID_DOC_TYPE) {
            if (i == ID_NAME) {
                getCurrentTrack(i).name = str;
                return;
            } else {
                if (i != ID_LANGUAGE) {
                    return;
                }
                getCurrentTrack(i).language = str;
                return;
            }
        }
        if (DOC_TYPE_WEBM.equals(str) || DOC_TYPE_MATROSKA.equals(str)) {
            this.isWebm = Objects.equals(str, DOC_TYPE_WEBM);
            return;
        }
        throw ParserException.createForMalformedContainer("DocType " + str + " not supported", null);
    }

    @Deprecated
    public MatroskaExtractor(int i) {
        this(new DefaultEbmlReader(), i | 2, SubtitleParser.Factory.UNSUPPORTED);
    }

    public MatroskaExtractor(SubtitleParser.Factory factory) {
        this(new DefaultEbmlReader(), 0, factory);
    }

    public MatroskaExtractor(SubtitleParser.Factory factory, int i) {
        this(new DefaultEbmlReader(), i, factory);
    }

    public MatroskaExtractor(EbmlReader ebmlReader, int i, SubtitleParser.Factory factory) {
        this.segmentContentPosition = -1L;
        this.timecodeScale = C.TIME_UNSET;
        this.durationTimecode = C.TIME_UNSET;
        this.durationUs = C.TIME_UNSET;
        this.cuesContentPosition = -1L;
        this.seekPositionAfterBuildingCues = -1L;
        this.clusterTimecodeUs = C.TIME_UNSET;
        this.reader = ebmlReader;
        ebmlReader.init(new InnerEbmlProcessor());
        this.subtitleParserFactory = factory;
        this.seekForCuesEnabled = (i & 1) == 0;
        this.parseSubtitlesDuringExtraction = (i & 2) == 0;
        this.varintReader = new VarintReader();
        this.tracks = new SparseArray<>();
        this.scratch = new ParsableByteArray(4);
        this.vorbisNumPageSamples = new ParsableByteArray(ByteBuffer.allocate(4).putInt(-1).array());
        this.seekEntryIdBytes = new ParsableByteArray(4);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
        this.sampleStrippedBytes = new ParsableByteArray();
        this.subtitleSample = new ParsableByteArray();
        this.encryptionInitializationVector = new ParsableByteArray(8);
        this.encryptionSubsampleData = new ParsableByteArray();
        this.supplementalData = new ParsableByteArray();
        this.blockSampleSizes = new int[1];
    }
}
