package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.hls.HlsTrackMetadataEntry;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.extractor.mp4.PsshAtomUtil;
import com.google.common.collect.ImmutableList;
import defpackage.v55;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.TreeMap;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@UnstableApi
public final class HlsPlaylistParser implements ParsingLoadable.Parser<HlsPlaylist> {
    private static final String ATTR_CLOSED_CAPTIONS_NONE = "CLOSED-CAPTIONS=NONE";
    private static final String BOOLEAN_FALSE = "NO";
    private static final String BOOLEAN_TRUE = "YES";
    private static final String DATERANGE_CLASS_INTERSTITIALS = "com.apple.hls.interstitial";
    private static final String KEYFORMAT_IDENTITY = "identity";
    private static final String KEYFORMAT_PLAYREADY = "com.microsoft.playready";
    private static final String KEYFORMAT_WIDEVINE_PSSH_BINARY = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed";
    private static final String KEYFORMAT_WIDEVINE_PSSH_JSON = "com.widevine";
    private static final String LOG_TAG = "HlsPlaylistParser";
    private static final String METHOD_AES_128 = "AES-128";
    private static final String METHOD_NONE = "NONE";
    private static final String METHOD_SAMPLE_AES = "SAMPLE-AES";
    private static final String METHOD_SAMPLE_AES_CENC = "SAMPLE-AES-CENC";
    private static final String METHOD_SAMPLE_AES_CTR = "SAMPLE-AES-CTR";
    private static final String PLAYLIST_HEADER = "#EXTM3U";
    private static final String TAG_BYTERANGE = "#EXT-X-BYTERANGE";
    private static final String TAG_DATERANGE = "#EXT-X-DATERANGE";
    private static final String TAG_DEFINE = "#EXT-X-DEFINE";
    private static final String TAG_DISCONTINUITY = "#EXT-X-DISCONTINUITY";
    private static final String TAG_DISCONTINUITY_SEQUENCE = "#EXT-X-DISCONTINUITY-SEQUENCE";
    private static final String TAG_ENDLIST = "#EXT-X-ENDLIST";
    private static final String TAG_GAP = "#EXT-X-GAP";
    private static final String TAG_IFRAME = "#EXT-X-I-FRAMES-ONLY";
    private static final String TAG_INDEPENDENT_SEGMENTS = "#EXT-X-INDEPENDENT-SEGMENTS";
    private static final String TAG_INIT_SEGMENT = "#EXT-X-MAP";
    private static final String TAG_I_FRAME_STREAM_INF = "#EXT-X-I-FRAME-STREAM-INF";
    private static final String TAG_KEY = "#EXT-X-KEY";
    private static final String TAG_MEDIA = "#EXT-X-MEDIA";
    private static final String TAG_MEDIA_DURATION = "#EXTINF";
    private static final String TAG_MEDIA_SEQUENCE = "#EXT-X-MEDIA-SEQUENCE";
    private static final String TAG_PART = "#EXT-X-PART";
    private static final String TAG_PART_INF = "#EXT-X-PART-INF";
    private static final String TAG_PLAYLIST_TYPE = "#EXT-X-PLAYLIST-TYPE";
    private static final String TAG_PREFIX = "#EXT";
    private static final String TAG_PRELOAD_HINT = "#EXT-X-PRELOAD-HINT";
    private static final String TAG_PROGRAM_DATE_TIME = "#EXT-X-PROGRAM-DATE-TIME";
    private static final String TAG_RENDITION_REPORT = "#EXT-X-RENDITION-REPORT";
    private static final String TAG_SERVER_CONTROL = "#EXT-X-SERVER-CONTROL";
    private static final String TAG_SESSION_KEY = "#EXT-X-SESSION-KEY";
    private static final String TAG_SKIP = "#EXT-X-SKIP";
    private static final String TAG_START = "#EXT-X-START";
    private static final String TAG_STREAM_INF = "#EXT-X-STREAM-INF";
    private static final String TAG_TARGET_DURATION = "#EXT-X-TARGETDURATION";
    private static final String TAG_VERSION = "#EXT-X-VERSION";
    private static final String TYPE_AUDIO = "AUDIO";
    private static final String TYPE_CLOSED_CAPTIONS = "CLOSED-CAPTIONS";
    private static final String TYPE_MAP = "MAP";
    private static final String TYPE_PART = "PART";
    private static final String TYPE_SUBTITLES = "SUBTITLES";
    private static final String TYPE_VIDEO = "VIDEO";
    private final HlsMultivariantPlaylist multivariantPlaylist;

    @Nullable
    private final HlsMediaPlaylist previousMediaPlaylist;
    private static final Pattern REGEX_AVERAGE_BANDWIDTH = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_VIDEO = Pattern.compile("VIDEO=\"(.+?)\"");
    private static final Pattern REGEX_AUDIO = Pattern.compile("AUDIO=\"(.+?)\"");
    private static final Pattern REGEX_SUBTITLES = Pattern.compile("SUBTITLES=\"(.+?)\"");
    private static final Pattern REGEX_CLOSED_CAPTIONS = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");
    private static final Pattern REGEX_BANDWIDTH = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_CHANNELS = Pattern.compile("CHANNELS=\"(.+?)\"");
    private static final Pattern REGEX_VIDEO_RANGE = Pattern.compile("VIDEO-RANGE=(SDR|PQ|HLG)");
    private static final Pattern REGEX_CODECS = Pattern.compile("CODECS=\"(.+?)\"");
    private static final Pattern REGEX_SUPPLEMENTAL_CODECS = Pattern.compile("SUPPLEMENTAL-CODECS=\"(.+?)\"");
    private static final Pattern REGEX_RESOLUTION = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    private static final Pattern REGEX_FRAME_RATE = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");
    private static final Pattern REGEX_TARGET_DURATION = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    private static final Pattern REGEX_ATTR_DURATION = Pattern.compile("DURATION=([\\d\\.]+)\\b");
    private static final Pattern REGEX_ATTR_DURATION_PREFIXED = Pattern.compile("[:,]DURATION=([\\d\\.]+)\\b");
    private static final Pattern REGEX_PART_TARGET_DURATION = Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");
    private static final Pattern REGEX_VERSION = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    private static final Pattern REGEX_PLAYLIST_TYPE = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    private static final Pattern REGEX_CAN_SKIP_UNTIL = Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");
    private static final Pattern REGEX_CAN_SKIP_DATE_RANGES = compileBooleanAttrPattern("CAN-SKIP-DATERANGES");
    private static final Pattern REGEX_SKIPPED_SEGMENTS = Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");
    private static final Pattern REGEX_HOLD_BACK = Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");
    private static final Pattern REGEX_PART_HOLD_BACK = Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");
    private static final Pattern REGEX_CAN_BLOCK_RELOAD = compileBooleanAttrPattern("CAN-BLOCK-RELOAD");
    private static final Pattern REGEX_MEDIA_SEQUENCE = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern REGEX_MEDIA_DURATION = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    private static final Pattern REGEX_MEDIA_TITLE = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    private static final Pattern REGEX_LAST_MSN = Pattern.compile("LAST-MSN=(\\d+)\\b");
    private static final Pattern REGEX_LAST_PART = Pattern.compile("LAST-PART=(\\d+)\\b");
    private static final Pattern REGEX_TIME_OFFSET = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern REGEX_BYTERANGE = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern REGEX_ATTR_BYTERANGE = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern REGEX_BYTERANGE_START = Pattern.compile("BYTERANGE-START=(\\d+)\\b");
    private static final Pattern REGEX_BYTERANGE_LENGTH = Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");
    private static final Pattern REGEX_METHOD = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    private static final Pattern REGEX_KEYFORMAT = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    private static final Pattern REGEX_KEYFORMATVERSIONS = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    private static final Pattern REGEX_URI = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern REGEX_IV = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern REGEX_TYPE = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern REGEX_PRELOAD_HINT_TYPE = Pattern.compile("TYPE=(PART|MAP)");
    private static final Pattern REGEX_LANGUAGE = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern REGEX_NAME = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern REGEX_GROUP_ID = Pattern.compile("GROUP-ID=\"(.+?)\"");
    private static final Pattern REGEX_CHARACTERISTICS = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    private static final Pattern REGEX_INSTREAM_ID = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern REGEX_AUTOSELECT = compileBooleanAttrPattern("AUTOSELECT");
    private static final Pattern REGEX_DEFAULT = compileBooleanAttrPattern("DEFAULT");
    private static final Pattern REGEX_FORCED = compileBooleanAttrPattern("FORCED");
    private static final Pattern REGEX_INDEPENDENT = compileBooleanAttrPattern("INDEPENDENT");
    private static final Pattern REGEX_GAP = compileBooleanAttrPattern("GAP");
    private static final Pattern REGEX_PRECISE = compileBooleanAttrPattern("PRECISE");
    private static final Pattern REGEX_VALUE = Pattern.compile("VALUE=\"(.+?)\"");
    private static final Pattern REGEX_IMPORT = Pattern.compile("IMPORT=\"(.+?)\"");
    private static final Pattern REGEX_ID = Pattern.compile("[:,]ID=\"(.+?)\"");
    private static final Pattern REGEX_CLASS = Pattern.compile("CLASS=\"(.+?)\"");
    private static final Pattern REGEX_START_DATE = Pattern.compile("START-DATE=\"(.+?)\"");
    private static final Pattern REGEX_CUE = Pattern.compile("CUE=\"(.+?)\"");
    private static final Pattern REGEX_END_DATE = Pattern.compile("END-DATE=\"(.+?)\"");
    private static final Pattern REGEX_PLANNED_DURATION = Pattern.compile("PLANNED-DURATION=([\\d\\.]+)\\b");
    private static final Pattern REGEX_END_ON_NEXT = compileBooleanAttrPattern("END-ON-NEXT");
    private static final Pattern REGEX_ASSET_URI = Pattern.compile("X-ASSET-URI=\"(.+?)\"");
    private static final Pattern REGEX_ASSET_LIST_URI = Pattern.compile("X-ASSET-LIST=\"(.+?)\"");
    private static final Pattern REGEX_RESUME_OFFSET = Pattern.compile("X-RESUME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern REGEX_PLAYOUT_LIMIT = Pattern.compile("X-PLAYOUT-LIMIT=([\\d\\.]+)\\b");
    private static final Pattern REGEX_SNAP = Pattern.compile("X-SNAP=\"(.+?)\"");
    private static final Pattern REGEX_RESTRICT = Pattern.compile("X-RESTRICT=\"(.+?)\"");
    private static final Pattern REGEX_VARIABLE_REFERENCE = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");
    private static final Pattern REGEX_CLIENT_DEFINED_ATTRIBUTE_PREFIX = Pattern.compile("\\b(X-[A-Z0-9-]+)=");

    public static final class DeltaUpdateException extends IOException {
    }

    public static class LineIterator {
        private final Queue<String> extraLines;

        @Nullable
        private String next;
        private final BufferedReader reader;

        public LineIterator(Queue<String> queue, BufferedReader bufferedReader) {
            this.extraLines = queue;
            this.reader = bufferedReader;
        }

        public boolean hasNext() throws IOException {
            String strTrim;
            if (this.next != null) {
                return true;
            }
            if (!this.extraLines.isEmpty()) {
                this.next = (String) Assertions.checkNotNull(this.extraLines.poll());
                return true;
            }
            do {
                String line = this.reader.readLine();
                this.next = line;
                if (line == null) {
                    return false;
                }
                strTrim = line.trim();
                this.next = strTrim;
            } while (strTrim.isEmpty());
            return true;
        }

        public String next() throws IOException {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            String str = this.next;
            this.next = null;
            return str;
        }
    }

    public HlsPlaylistParser() {
        this(HlsMultivariantPlaylist.EMPTY, null);
    }

    private static boolean checkPlaylistHeader(BufferedReader bufferedReader) throws IOException {
        int i = bufferedReader.read();
        if (i == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            i = bufferedReader.read();
        }
        int iSkipIgnorableWhitespace = skipIgnorableWhitespace(bufferedReader, true, i);
        for (int i2 = 0; i2 < 7; i2++) {
            if (iSkipIgnorableWhitespace != PLAYLIST_HEADER.charAt(i2)) {
                return false;
            }
            iSkipIgnorableWhitespace = bufferedReader.read();
        }
        return Util.isLinebreak(skipIgnorableWhitespace(bufferedReader, false, iSkipIgnorableWhitespace));
    }

    private static Pattern compileBooleanAttrPattern(String str) {
        return Pattern.compile(str + "=(" + BOOLEAN_FALSE + "|" + BOOLEAN_TRUE + ")");
    }

    private static DrmInitData getPlaylistProtectionSchemes(@Nullable String str, DrmInitData.SchemeData[] schemeDataArr) {
        DrmInitData.SchemeData[] schemeDataArr2 = new DrmInitData.SchemeData[schemeDataArr.length];
        for (int i = 0; i < schemeDataArr.length; i++) {
            schemeDataArr2[i] = schemeDataArr[i].copyWithData(null);
        }
        return new DrmInitData(str, schemeDataArr2);
    }

    @Nullable
    private static String getSegmentEncryptionIV(long j, @Nullable String str, @Nullable String str2) {
        if (str == null) {
            return null;
        }
        return str2 != null ? str2 : Long.toHexString(j);
    }

    @Nullable
    private static HlsMultivariantPlaylist.Variant getVariantWithAudioGroup(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.audioGroupId)) {
                return variant;
            }
        }
        return null;
    }

    @Nullable
    private static HlsMultivariantPlaylist.Variant getVariantWithSubtitleGroup(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.subtitleGroupId)) {
                return variant;
            }
        }
        return null;
    }

    @Nullable
    private static HlsMultivariantPlaylist.Variant getVariantWithVideoGroup(ArrayList<HlsMultivariantPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMultivariantPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.videoGroupId)) {
                return variant;
            }
        }
        return null;
    }

    private static boolean isDolbyVisionFormat(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        if (!MimeTypes.isDolbyVisionCodec(str2, str3)) {
            return false;
        }
        if (str3 == null) {
            return true;
        }
        if (str == null || str4 == null) {
            return false;
        }
        return (!str.equals("PQ") || str4.equals("db1p")) && (!str.equals("SDR") || str4.equals("db2g")) && (!str.equals("HLG") || str4.startsWith("db4"));
    }

    private static HlsMediaPlaylist.ClientDefinedAttribute parseClientDefinedAttribute(String str, String str2, Map<String, String> map) throws ParserException {
        String str3 = str2 + "=";
        int iIndexOf = str.indexOf(str3) + str3.length();
        String strSubstring = str.substring(iIndexOf, (str.length() == iIndexOf + 1 ? 1 : 2) + iIndexOf);
        if (strSubstring.startsWith("\"")) {
            return new HlsMediaPlaylist.ClientDefinedAttribute(str2, parseStringAttr(str, Pattern.compile(str2 + "=\"(.+?)\""), map), 0);
        }
        if (strSubstring.equals("0x") || strSubstring.equals("0X")) {
            return new HlsMediaPlaylist.ClientDefinedAttribute(str2, parseStringAttr(str, Pattern.compile(str2 + "=(0[xX][A-F0-9]+)"), map), 1);
        }
        return new HlsMediaPlaylist.ClientDefinedAttribute(str2, parseDoubleAttr(str, Pattern.compile(str2 + "=([\\d\\.]+)\\b")));
    }

    private static double parseDoubleAttr(String str, Pattern pattern) throws ParserException {
        return Double.parseDouble(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    @Nullable
    private static DrmInitData.SchemeData parseDrmSchemeData(String str, String str2, Map<String, String> map) throws ParserException {
        String optionalStringAttr = parseOptionalStringAttr(str, REGEX_KEYFORMATVERSIONS, "1", map);
        if (KEYFORMAT_WIDEVINE_PSSH_BINARY.equals(str2)) {
            String stringAttr = parseStringAttr(str, REGEX_URI, map);
            return new DrmInitData.SchemeData(C.WIDEVINE_UUID, MimeTypes.VIDEO_MP4, Base64.decode(stringAttr.substring(stringAttr.indexOf(44)), 0));
        }
        if (KEYFORMAT_WIDEVINE_PSSH_JSON.equals(str2)) {
            return new DrmInitData.SchemeData(C.WIDEVINE_UUID, "hls", Util.getUtf8Bytes(str));
        }
        if (!KEYFORMAT_PLAYREADY.equals(str2) || !"1".equals(optionalStringAttr)) {
            return null;
        }
        String stringAttr2 = parseStringAttr(str, REGEX_URI, map);
        byte[] bArrDecode = Base64.decode(stringAttr2.substring(stringAttr2.indexOf(44)), 0);
        UUID uuid = C.PLAYREADY_UUID;
        return new DrmInitData.SchemeData(uuid, MimeTypes.VIDEO_MP4, PsshAtomUtil.buildPsshAtom(uuid, bArrDecode));
    }

    private static String parseEncryptionScheme(String str) {
        return (METHOD_SAMPLE_AES_CENC.equals(str) || METHOD_SAMPLE_AES_CTR.equals(str)) ? C.CENC_TYPE_cenc : C.CENC_TYPE_cbcs;
    }

    private static int parseIntAttr(String str, Pattern pattern) throws ParserException {
        return Integer.parseInt(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static long parseLongAttr(String str, Pattern pattern) throws ParserException {
        return Long.parseLong(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    /* JADX WARN: Code duplicated, block: B:113:0x031c A[PHI: r82
      0x031c: PHI (r82v14 java.lang.String) = (r82v12 java.lang.String), (r82v1 java.lang.String) binds: [B:119:0x032e, B:111:0x0313] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:233:0x066d A[PHI: r47
      0x066d: PHI (r47v15 java.lang.String[]) = (r47v11 java.lang.String[]), (r47v12 java.lang.String[]), (r47v13 java.lang.String[]), (r47v16 java.lang.String[]) binds: [B:243:0x0691, B:239:0x0684, B:235:0x0677, B:232:0x066b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:296:0x07a9 A[PHI: r45
      0x07a9: PHI (r45v26 java.util.regex.Matcher) = 
      (r45v19 java.util.regex.Matcher)
      (r45v20 java.util.regex.Matcher)
      (r45v21 java.util.regex.Matcher)
      (r45v22 java.util.regex.Matcher)
      (r45v23 java.util.regex.Matcher)
      (r45v24 java.util.regex.Matcher)
      (r45v27 java.util.regex.Matcher)
     binds: [B:318:0x07f4, B:314:0x07e7, B:310:0x07da, B:306:0x07cd, B:302:0x07c0, B:298:0x07b3, B:295:0x07a7] A[DONT_GENERATE, DONT_INLINE]] */
    private static HlsMediaPlaylist parseMediaPlaylist(HlsMultivariantPlaylist hlsMultivariantPlaylist, @Nullable HlsMediaPlaylist hlsMediaPlaylist, LineIterator lineIterator, String str) throws IOException {
        int i;
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        HlsMediaPlaylist.Part part;
        String optionalStringAttr;
        String stringAttr;
        long j;
        long j2;
        String str3;
        long j3;
        long j4;
        String str4;
        DrmInitData drmInitData;
        Matcher matcher;
        byte b;
        String[] strArr;
        byte b2;
        hlsMultivariantPlaylist = hlsMultivariantPlaylist;
        hlsMediaPlaylist = hlsMediaPlaylist;
        boolean z = hlsMultivariantPlaylist.hasIndependentSegments;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        HlsMediaPlaylist.ServerControl serverControl = new HlsMediaPlaylist.ServerControl(C.TIME_UNSET, false, C.TIME_UNSET, C.TIME_UNSET, false);
        TreeMap treeMap = new TreeMap();
        boolean z2 = false;
        String str5 = "";
        boolean z3 = z;
        HlsMediaPlaylist.ServerControl serverControl2 = serverControl;
        int i2 = 0;
        boolean optionalBooleanAttribute = false;
        boolean z4 = false;
        int i3 = 0;
        boolean z5 = false;
        boolean z6 = false;
        int i4 = 0;
        boolean z7 = false;
        long doubleAttr = -9223372036854775807L;
        long intAttr = -9223372036854775807L;
        long doubleAttr2 = -9223372036854775807L;
        long jMsToUs = 0;
        long j5 = 0;
        long j6 = 0;
        long j7 = 0;
        long j8 = 0;
        long longAttr = 0;
        long timeSecondsToUs = 0;
        long j9 = 0;
        String optionalStringAttr2 = str5;
        int intAttr2 = 1;
        DrmInitData playlistProtectionSchemes = null;
        DrmInitData drmInitData2 = null;
        String str6 = null;
        long j10 = -1;
        String str7 = null;
        String encryptionScheme = null;
        HlsMediaPlaylist.Segment segment = null;
        ArrayList arrayList8 = arrayList4;
        HlsMediaPlaylist.Part part2 = null;
        while (lineIterator.hasNext()) {
            String next = lineIterator.next();
            if (next.startsWith(TAG_PREFIX)) {
                arrayList6.add(next);
            }
            if (next.startsWith(TAG_PLAYLIST_TYPE)) {
                String stringAttr2 = parseStringAttr(next, REGEX_PLAYLIST_TYPE, map);
                if ("VOD".equals(stringAttr2)) {
                    i2 = 1;
                } else if ("EVENT".equals(stringAttr2)) {
                    i2 = 2;
                }
            } else if (next.equals(TAG_IFRAME)) {
                z7 = true;
            } else {
                if (next.startsWith(TAG_START)) {
                    arrayList3 = arrayList3;
                    doubleAttr = (long) (parseDoubleAttr(next, REGEX_TIME_OFFSET) * 1000000.0d);
                    optionalBooleanAttribute = parseOptionalBooleanAttribute(next, REGEX_PRECISE, z2);
                } else {
                    arrayList3 = arrayList3;
                    if (next.startsWith(TAG_SERVER_CONTROL)) {
                        serverControl2 = parseServerControl(next);
                    } else if (next.startsWith(TAG_PART_INF)) {
                        doubleAttr2 = (long) (parseDoubleAttr(next, REGEX_PART_TARGET_DURATION) * 1000000.0d);
                    } else if (next.startsWith(TAG_INIT_SEGMENT)) {
                        String stringAttr3 = parseStringAttr(next, REGEX_URI, map);
                        String optionalStringAttr3 = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, map);
                        if (optionalStringAttr3 != null) {
                            String[] strArrSplit = Util.split(optionalStringAttr3, "@");
                            j10 = Long.parseLong(strArrSplit[z2 ? 1 : 0]);
                            if (strArrSplit.length > 1) {
                                j6 = Long.parseLong(strArrSplit[1]);
                            }
                        }
                        if (j10 == -1) {
                            j6 = 0;
                        }
                        String str8 = str6;
                        String str9 = str7;
                        if (str8 != null && str9 == null) {
                            throw ParserException.createForMalformedManifest("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", null);
                        }
                        segment = new HlsMediaPlaylist.Segment(stringAttr3, j6, j10, str8, str9);
                        if (j10 != -1) {
                            j6 += j10;
                        }
                        str6 = str8;
                        str7 = str9;
                        j10 = -1;
                    } else {
                        str6 = str6;
                        str7 = str7;
                        if (next.startsWith(TAG_TARGET_DURATION)) {
                            arrayList7 = arrayList7;
                            intAttr = 1000000 * ((long) parseIntAttr(next, REGEX_TARGET_DURATION));
                        } else {
                            arrayList7 = arrayList7;
                            if (next.startsWith(TAG_MEDIA_SEQUENCE)) {
                                longAttr = parseLongAttr(next, REGEX_MEDIA_SEQUENCE);
                                arrayList7 = arrayList7;
                                j5 = longAttr;
                                z2 = false;
                            } else if (next.startsWith(TAG_VERSION)) {
                                intAttr2 = parseIntAttr(next, REGEX_VERSION);
                            } else {
                                if (next.startsWith(TAG_DEFINE)) {
                                    String optionalStringAttr4 = parseOptionalStringAttr(next, REGEX_IMPORT, map);
                                    if (optionalStringAttr4 != null) {
                                        String str10 = hlsMultivariantPlaylist.variableDefinitions.get(optionalStringAttr4);
                                        if (str10 != null) {
                                            map.put(optionalStringAttr4, str10);
                                        }
                                    } else {
                                        map.put(parseStringAttr(next, REGEX_NAME, map), parseStringAttr(next, REGEX_VALUE, map));
                                    }
                                    arrayList = arrayList8;
                                    arrayList2 = arrayList6;
                                    str2 = encryptionScheme;
                                } else if (next.startsWith(TAG_MEDIA_DURATION)) {
                                    timeSecondsToUs = parseTimeSecondsToUs(next, REGEX_MEDIA_DURATION);
                                    optionalStringAttr2 = parseOptionalStringAttr(next, REGEX_MEDIA_TITLE, str5, map);
                                } else {
                                    String str11 = str5;
                                    if (next.startsWith(TAG_SKIP)) {
                                        int intAttr3 = parseIntAttr(next, REGEX_SKIPPED_SEGMENTS);
                                        Assertions.checkState(hlsMediaPlaylist != null && arrayList3.isEmpty());
                                        str5 = str11;
                                        int i5 = (int) (j5 - ((HlsMediaPlaylist) Util.castNonNull(hlsMediaPlaylist)).mediaSequence);
                                        int i6 = intAttr3 + i5;
                                        if (i5 < 0 || i6 > hlsMediaPlaylist.segments.size()) {
                                            throw new DeltaUpdateException();
                                        }
                                        long j11 = j8;
                                        while (i5 < i6) {
                                            HlsMediaPlaylist.Segment segmentCopyWith = hlsMediaPlaylist.segments.get(i5);
                                            ArrayList arrayList9 = arrayList8;
                                            ArrayList arrayList10 = arrayList6;
                                            if (j5 != hlsMediaPlaylist.mediaSequence) {
                                                segmentCopyWith = segmentCopyWith.copyWith(j11, (hlsMediaPlaylist.discontinuitySequence - i3) + segmentCopyWith.relativeDiscontinuitySequence);
                                            }
                                            arrayList3.add(segmentCopyWith);
                                            j11 += segmentCopyWith.durationUs;
                                            long j12 = segmentCopyWith.byteRangeLength;
                                            if (j12 != -1) {
                                                j6 = segmentCopyWith.byteRangeOffset + j12;
                                            }
                                            int i7 = segmentCopyWith.relativeDiscontinuitySequence;
                                            HlsMediaPlaylist.Segment segment2 = segmentCopyWith.initializationSegment;
                                            DrmInitData drmInitData3 = segmentCopyWith.drmInitData;
                                            String str12 = segmentCopyWith.fullSegmentEncryptionKeyUri;
                                            String str13 = segmentCopyWith.encryptionIV;
                                            if (str13 == null || !str13.equals(Long.toHexString(longAttr))) {
                                                str7 = segmentCopyWith.encryptionIV;
                                            }
                                            longAttr++;
                                            i5++;
                                            hlsMediaPlaylist = hlsMediaPlaylist;
                                            str6 = str12;
                                            j7 = j11;
                                            i4 = i7;
                                            segment = segment2;
                                            arrayList6 = arrayList10;
                                            drmInitData2 = drmInitData3;
                                            arrayList8 = arrayList9;
                                        }
                                        hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                        hlsMediaPlaylist = hlsMediaPlaylist;
                                        str6 = str6;
                                        j8 = j11;
                                        arrayList7 = arrayList7;
                                        str7 = str7;
                                        z2 = false;
                                    } else {
                                        arrayList8 = arrayList8;
                                        arrayList2 = arrayList6;
                                        str5 = str11;
                                        if (next.startsWith(TAG_KEY)) {
                                            String stringAttr4 = parseStringAttr(next, REGEX_METHOD, map);
                                            String optionalStringAttr5 = parseOptionalStringAttr(next, REGEX_KEYFORMAT, KEYFORMAT_IDENTITY, map);
                                            if (METHOD_NONE.equals(stringAttr4)) {
                                                treeMap.clear();
                                                stringAttr = null;
                                                optionalStringAttr = null;
                                                drmInitData2 = null;
                                            } else {
                                                optionalStringAttr = parseOptionalStringAttr(next, REGEX_IV, map);
                                                if (!KEYFORMAT_IDENTITY.equals(optionalStringAttr5)) {
                                                    String str14 = encryptionScheme;
                                                    encryptionScheme = str14 == null ? parseEncryptionScheme(stringAttr4) : str14;
                                                    DrmInitData.SchemeData drmSchemeData = parseDrmSchemeData(next, optionalStringAttr5, map);
                                                    if (drmSchemeData != null) {
                                                        treeMap.put(optionalStringAttr5, drmSchemeData);
                                                        stringAttr = null;
                                                        drmInitData2 = null;
                                                    } else {
                                                        stringAttr = null;
                                                    }
                                                } else if (METHOD_AES_128.equals(stringAttr4)) {
                                                    stringAttr = parseStringAttr(next, REGEX_URI, map);
                                                } else {
                                                    stringAttr = null;
                                                }
                                            }
                                            str6 = stringAttr;
                                            z2 = false;
                                        } else {
                                            encryptionScheme = encryptionScheme;
                                            if (next.startsWith(TAG_BYTERANGE)) {
                                                String[] strArrSplit2 = Util.split(parseStringAttr(next, REGEX_BYTERANGE, map), "@");
                                                j10 = Long.parseLong(strArrSplit2[0]);
                                                if (strArrSplit2.length > 1) {
                                                    j6 = Long.parseLong(strArrSplit2[1]);
                                                }
                                            } else if (next.startsWith(TAG_DISCONTINUITY_SEQUENCE)) {
                                                i3 = Integer.parseInt(next.substring(next.indexOf(58) + 1));
                                                z4 = true;
                                                str6 = str6;
                                                arrayList8 = arrayList8;
                                                arrayList7 = arrayList7;
                                                arrayList6 = arrayList2;
                                                z2 = false;
                                            } else if (next.equals(TAG_DISCONTINUITY)) {
                                                i4++;
                                            } else {
                                                if (next.startsWith(TAG_PROGRAM_DATE_TIME)) {
                                                    if (jMsToUs == 0) {
                                                        jMsToUs = Util.msToUs(Util.parseXsDateTime(next.substring(next.indexOf(58) + 1))) - j8;
                                                    }
                                                } else if (next.equals(TAG_GAP)) {
                                                    hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                    hlsMediaPlaylist = hlsMediaPlaylist;
                                                    arrayList3 = arrayList3;
                                                    encryptionScheme = encryptionScheme;
                                                    str6 = str6;
                                                    arrayList8 = arrayList8;
                                                    arrayList7 = arrayList7;
                                                    str7 = str7;
                                                    arrayList6 = arrayList2;
                                                    z2 = false;
                                                    z6 = true;
                                                } else if (next.equals(TAG_INDEPENDENT_SEGMENTS)) {
                                                    hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                    hlsMediaPlaylist = hlsMediaPlaylist;
                                                    arrayList3 = arrayList3;
                                                    encryptionScheme = encryptionScheme;
                                                    str6 = str6;
                                                    arrayList8 = arrayList8;
                                                    arrayList7 = arrayList7;
                                                    str7 = str7;
                                                    arrayList6 = arrayList2;
                                                    z2 = false;
                                                    z3 = true;
                                                } else if (next.equals(TAG_ENDLIST)) {
                                                    hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                    hlsMediaPlaylist = hlsMediaPlaylist;
                                                    arrayList3 = arrayList3;
                                                    encryptionScheme = encryptionScheme;
                                                    str6 = str6;
                                                    arrayList8 = arrayList8;
                                                    arrayList7 = arrayList7;
                                                    str7 = str7;
                                                    arrayList6 = arrayList2;
                                                    z2 = false;
                                                    z5 = true;
                                                } else if (next.startsWith(TAG_RENDITION_REPORT)) {
                                                    arrayList5.add(new HlsMediaPlaylist.RenditionReport(Uri.parse(UriUtil.resolve(str, parseStringAttr(next, REGEX_URI, map))), parseOptionalLongAttr(next, REGEX_LAST_MSN, -1L), parseOptionalIntAttr(next, REGEX_LAST_PART, -1)));
                                                } else {
                                                    if (!next.startsWith(TAG_PRELOAD_HINT)) {
                                                        long j13 = longAttr;
                                                        str7 = str7;
                                                        if (next.startsWith(TAG_PART)) {
                                                            String segmentEncryptionIV = getSegmentEncryptionIV(j13, str6, str7);
                                                            String stringAttr5 = parseStringAttr(next, REGEX_URI, map);
                                                            HlsMediaPlaylist.Part part3 = part2;
                                                            ArrayList arrayList11 = arrayList5;
                                                            long doubleAttr3 = (long) (parseDoubleAttr(next, REGEX_ATTR_DURATION) * 1000000.0d);
                                                            int i8 = i2;
                                                            boolean optionalBooleanAttribute2 = parseOptionalBooleanAttribute(next, REGEX_INDEPENDENT, false) | (z3 && arrayList8.isEmpty());
                                                            boolean optionalBooleanAttribute3 = parseOptionalBooleanAttribute(next, REGEX_GAP, false);
                                                            String optionalStringAttr6 = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, map);
                                                            if (optionalStringAttr6 != null) {
                                                                String[] strArrSplit3 = Util.split(optionalStringAttr6, "@");
                                                                j2 = Long.parseLong(strArrSplit3[0]);
                                                                if (strArrSplit3.length > 1) {
                                                                    j9 = Long.parseLong(strArrSplit3[1]);
                                                                }
                                                                j = -1;
                                                            } else {
                                                                j = -1;
                                                                j2 = -1;
                                                            }
                                                            if (j2 == j) {
                                                                j9 = 0;
                                                            }
                                                            if (drmInitData2 == null && !treeMap.isEmpty()) {
                                                                DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                                DrmInitData drmInitData4 = new DrmInitData(encryptionScheme, schemeDataArr);
                                                                if (playlistProtectionSchemes == null) {
                                                                    playlistProtectionSchemes = getPlaylistProtectionSchemes(encryptionScheme, schemeDataArr);
                                                                }
                                                                drmInitData2 = drmInitData4;
                                                            }
                                                            arrayList8.add(new HlsMediaPlaylist.Part(stringAttr5, segment, doubleAttr3, i4, j7, drmInitData2, str6, segmentEncryptionIV, j9, j2, optionalBooleanAttribute3, optionalBooleanAttribute2, false));
                                                            j7 += doubleAttr3;
                                                            if (j2 != j) {
                                                                j9 += j2;
                                                            }
                                                            arrayList5 = arrayList11;
                                                            str6 = str6;
                                                            arrayList7 = arrayList7;
                                                            i2 = i8;
                                                            part2 = part3;
                                                            z2 = false;
                                                            longAttr = j13;
                                                            encryptionScheme = encryptionScheme;
                                                            str7 = str7;
                                                            arrayList8 = arrayList8;
                                                            arrayList6 = arrayList2;
                                                            hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                            hlsMediaPlaylist = hlsMediaPlaylist;
                                                        } else {
                                                            i2 = i2;
                                                            part = part2;
                                                            arrayList5 = arrayList5;
                                                            arrayList = arrayList8;
                                                            if (next.startsWith(TAG_DATERANGE)) {
                                                                str5 = str5;
                                                                if (parseOptionalStringAttr(next, REGEX_CLASS, str5, map).equals(DATERANGE_CLASS_INTERSTITIALS)) {
                                                                    String stringAttr6 = parseStringAttr(next, REGEX_ID, map);
                                                                    String optionalStringAttr7 = parseOptionalStringAttr(next, REGEX_ASSET_URI, map);
                                                                    Uri uri = optionalStringAttr7 != null ? Uri.parse(optionalStringAttr7) : null;
                                                                    String optionalStringAttr8 = parseOptionalStringAttr(next, REGEX_ASSET_LIST_URI, map);
                                                                    Uri uri2 = optionalStringAttr8 != null ? Uri.parse(optionalStringAttr8) : null;
                                                                    long jMsToUs2 = Util.msToUs(Util.parseXsDateTime(parseStringAttr(next, REGEX_START_DATE, map)));
                                                                    String optionalStringAttr9 = parseOptionalStringAttr(next, REGEX_END_DATE, map);
                                                                    long jMsToUs3 = optionalStringAttr9 != null ? Util.msToUs(Util.parseXsDateTime(optionalStringAttr9)) : -9223372036854775807L;
                                                                    ArrayList arrayList12 = new ArrayList();
                                                                    String optionalStringAttr10 = parseOptionalStringAttr(next, REGEX_CUE, map);
                                                                    if (optionalStringAttr10 != null) {
                                                                        String[] strArrSplit4 = Util.split(optionalStringAttr10, StringUtils.COMMA);
                                                                        int length = strArrSplit4.length;
                                                                        int i9 = 0;
                                                                        while (i9 < length) {
                                                                            int i10 = length;
                                                                            String strTrim = strArrSplit4[i9].trim();
                                                                            strTrim.hashCode();
                                                                            switch (strTrim.hashCode()) {
                                                                                case 79491:
                                                                                    strArr = strArrSplit4;
                                                                                    if (!strTrim.equals(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_PRE)) {
                                                                                        b2 = -1;
                                                                                    } else {
                                                                                        b2 = 0;
                                                                                    }
                                                                                    break;
                                                                                case 2430593:
                                                                                    strArr = strArrSplit4;
                                                                                    if (!strTrim.equals(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_ONCE)) {
                                                                                        b2 = -1;
                                                                                    } else {
                                                                                        b2 = 1;
                                                                                    }
                                                                                    break;
                                                                                case 2461856:
                                                                                    strArr = strArrSplit4;
                                                                                    if (!strTrim.equals("POST")) {
                                                                                        b2 = -1;
                                                                                    } else {
                                                                                        b2 = 2;
                                                                                    }
                                                                                    break;
                                                                                default:
                                                                                    strArr = strArrSplit4;
                                                                                    b2 = -1;
                                                                                    break;
                                                                            }
                                                                            switch (b2) {
                                                                                case 0:
                                                                                case 1:
                                                                                case 2:
                                                                                    arrayList12.add(strTrim);
                                                                                    break;
                                                                            }
                                                                            i9++;
                                                                            strArrSplit4 = strArr;
                                                                            length = i10;
                                                                        }
                                                                    }
                                                                    str3 = encryptionScheme;
                                                                    double optionalDoubleAttr = parseOptionalDoubleAttr(next, REGEX_ATTR_DURATION_PREFIXED, -1.0d);
                                                                    long j14 = optionalDoubleAttr >= 0.0d ? (long) (optionalDoubleAttr * 1000000.0d) : -9223372036854775807L;
                                                                    double optionalDoubleAttr2 = parseOptionalDoubleAttr(next, REGEX_PLANNED_DURATION, -1.0d);
                                                                    long j15 = optionalDoubleAttr2 >= 0.0d ? (long) (optionalDoubleAttr2 * 1000000.0d) : -9223372036854775807L;
                                                                    boolean optionalBooleanAttribute4 = parseOptionalBooleanAttribute(next, REGEX_END_ON_NEXT, false);
                                                                    double optionalDoubleAttr3 = parseOptionalDoubleAttr(next, REGEX_RESUME_OFFSET, Double.MIN_VALUE);
                                                                    long j16 = optionalDoubleAttr3 != Double.MIN_VALUE ? (long) (optionalDoubleAttr3 * 1000000.0d) : -9223372036854775807L;
                                                                    double optionalDoubleAttr4 = parseOptionalDoubleAttr(next, REGEX_PLAYOUT_LIMIT, -1.0d);
                                                                    long j17 = optionalDoubleAttr4 >= 0.0d ? (long) (optionalDoubleAttr4 * 1000000.0d) : -9223372036854775807L;
                                                                    ArrayList arrayList13 = new ArrayList();
                                                                    String optionalStringAttr11 = parseOptionalStringAttr(next, REGEX_SNAP, map);
                                                                    if (optionalStringAttr11 != null) {
                                                                        String[] strArrSplit5 = Util.split(optionalStringAttr11, StringUtils.COMMA);
                                                                        int length2 = strArrSplit5.length;
                                                                        int i11 = 0;
                                                                        while (i11 < length2) {
                                                                            String[] strArr2 = strArrSplit5;
                                                                            String strTrim2 = strArrSplit5[i11].trim();
                                                                            strTrim2.hashCode();
                                                                            int i12 = length2;
                                                                            if (strTrim2.equals(HlsMediaPlaylist.Interstitial.SNAP_TYPE_IN) || strTrim2.equals(HlsMediaPlaylist.Interstitial.SNAP_TYPE_OUT)) {
                                                                                arrayList13.add(strTrim2);
                                                                            }
                                                                            i11++;
                                                                            length2 = i12;
                                                                            strArrSplit5 = strArr2;
                                                                        }
                                                                    }
                                                                    ArrayList arrayList14 = new ArrayList();
                                                                    String optionalStringAttr12 = parseOptionalStringAttr(next, REGEX_RESTRICT, map);
                                                                    if (optionalStringAttr12 != null) {
                                                                        String[] strArrSplit6 = Util.split(optionalStringAttr12, StringUtils.COMMA);
                                                                        int length3 = strArrSplit6.length;
                                                                        int i13 = 0;
                                                                        while (i13 < length3) {
                                                                            String[] strArr3 = strArrSplit6;
                                                                            String strTrim3 = strArrSplit6[i13].trim();
                                                                            strTrim3.hashCode();
                                                                            int i14 = length3;
                                                                            if (strTrim3.equals(HlsMediaPlaylist.Interstitial.NAVIGATION_RESTRICTION_JUMP) || strTrim3.equals(HlsMediaPlaylist.Interstitial.NAVIGATION_RESTRICTION_SKIP)) {
                                                                                arrayList14.add(strTrim3);
                                                                            }
                                                                            i13++;
                                                                            length3 = i14;
                                                                            strArrSplit6 = strArr3;
                                                                        }
                                                                    }
                                                                    ImmutableList.a aVar = new ImmutableList.a();
                                                                    String strSubstring = next.substring(17);
                                                                    Matcher matcher2 = REGEX_CLIENT_DEFINED_ATTRIBUTE_PREFIX.matcher(strSubstring);
                                                                    while (matcher2.find()) {
                                                                        String strGroup = matcher2.group();
                                                                        strGroup.hashCode();
                                                                        switch (strGroup.hashCode()) {
                                                                            case -2136701954:
                                                                                matcher = matcher2;
                                                                                if (!strGroup.equals("X-SNAP=")) {
                                                                                    b = -1;
                                                                                } else {
                                                                                    b = 0;
                                                                                }
                                                                                break;
                                                                            case -148960310:
                                                                                matcher = matcher2;
                                                                                if (!strGroup.equals("X-PLAYOUT-LIMIT=")) {
                                                                                    b = -1;
                                                                                } else {
                                                                                    b = 1;
                                                                                }
                                                                                break;
                                                                            case 397239341:
                                                                                matcher = matcher2;
                                                                                if (!strGroup.equals("X-ASSET-LIST=")) {
                                                                                    b = -1;
                                                                                } else {
                                                                                    b = 2;
                                                                                }
                                                                                break;
                                                                            case 1472528844:
                                                                                matcher = matcher2;
                                                                                if (!strGroup.equals("X-RESTRICT=")) {
                                                                                    b = -1;
                                                                                } else {
                                                                                    b = 3;
                                                                                }
                                                                                break;
                                                                            case 1748487807:
                                                                                matcher = matcher2;
                                                                                if (!strGroup.equals("X-RESUME-OFFSET=")) {
                                                                                    b = -1;
                                                                                } else {
                                                                                    b = 4;
                                                                                }
                                                                                break;
                                                                            case 1814205923:
                                                                                matcher = matcher2;
                                                                                if (!strGroup.equals("X-ASSET-URI=")) {
                                                                                    b = -1;
                                                                                } else {
                                                                                    b = 5;
                                                                                }
                                                                                break;
                                                                            default:
                                                                                matcher = matcher2;
                                                                                b = -1;
                                                                                break;
                                                                        }
                                                                        switch (b) {
                                                                            case 0:
                                                                            case 1:
                                                                            case 2:
                                                                            case 3:
                                                                            case 4:
                                                                            case 5:
                                                                                break;
                                                                            default:
                                                                                aVar.a(parseClientDefinedAttribute(strSubstring, strGroup.substring(0, strGroup.length() - 1), map));
                                                                                break;
                                                                        }
                                                                        matcher2 = matcher;
                                                                        arrayList3 = arrayList3;
                                                                    }
                                                                    arrayList3 = arrayList3;
                                                                    if ((uri2 != null || uri == null) && (uri2 == null || uri != null)) {
                                                                        arrayList7 = arrayList7;
                                                                    } else {
                                                                        arrayList7 = arrayList7;
                                                                        arrayList7.add(new HlsMediaPlaylist.Interstitial(stringAttr6, uri, uri2, jMsToUs2, jMsToUs3, j14, j15, arrayList12, optionalBooleanAttribute4, j16, j17, arrayList13, arrayList14, aVar.e()));
                                                                    }
                                                                } else {
                                                                    str5 = str5;
                                                                }
                                                                longAttr = j13;
                                                                str2 = str3;
                                                                arrayList3 = arrayList3;
                                                                arrayList7 = arrayList7;
                                                                str7 = str7;
                                                                arrayList8 = arrayList;
                                                                arrayList5 = arrayList5;
                                                                i2 = i2;
                                                                part2 = part;
                                                                arrayList6 = arrayList2;
                                                                z2 = false;
                                                                encryptionScheme = str2;
                                                                arrayList3 = arrayList3;
                                                                longAttr = longAttr;
                                                            }
                                                            str3 = encryptionScheme;
                                                            arrayList5 = arrayList5;
                                                            arrayList7 = arrayList7;
                                                            if (next.startsWith("#")) {
                                                                longAttr = j13;
                                                                str2 = str3;
                                                                arrayList3 = arrayList3;
                                                                arrayList7 = arrayList7;
                                                                str7 = str7;
                                                                arrayList8 = arrayList;
                                                                arrayList5 = arrayList5;
                                                                i2 = i2;
                                                                part2 = part;
                                                                arrayList6 = arrayList2;
                                                                z2 = false;
                                                                encryptionScheme = str2;
                                                                arrayList3 = arrayList3;
                                                                longAttr = longAttr;
                                                            } else {
                                                                String segmentEncryptionIV2 = getSegmentEncryptionIV(j13, str6, str7);
                                                                long j18 = j13 + 1;
                                                                String strReplaceVariableReferences = replaceVariableReferences(next, map);
                                                                HlsMediaPlaylist.Segment segment3 = (HlsMediaPlaylist.Segment) map2.get(strReplaceVariableReferences);
                                                                if (j10 == -1) {
                                                                    j3 = 0;
                                                                } else {
                                                                    if (z7 && segment == null && segment3 == null) {
                                                                        segment3 = new HlsMediaPlaylist.Segment(strReplaceVariableReferences, 0L, j6, null, null);
                                                                        map2.put(strReplaceVariableReferences, segment3);
                                                                    }
                                                                    j3 = j6;
                                                                }
                                                                if (drmInitData2 != null || treeMap.isEmpty()) {
                                                                    j4 = j18;
                                                                    str4 = str3;
                                                                    drmInitData = drmInitData2;
                                                                } else {
                                                                    j4 = j18;
                                                                    DrmInitData.SchemeData[] schemeDataArr2 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                                    str4 = str3;
                                                                    drmInitData = new DrmInitData(str4, schemeDataArr2);
                                                                    if (playlistProtectionSchemes == null) {
                                                                        playlistProtectionSchemes = getPlaylistProtectionSchemes(str4, schemeDataArr2);
                                                                    }
                                                                }
                                                                arrayList3.add(new HlsMediaPlaylist.Segment(strReplaceVariableReferences, segment != null ? segment : segment3, optionalStringAttr2, timeSecondsToUs, i4, j8, drmInitData, str6, segmentEncryptionIV2, j3, j10, z6, arrayList));
                                                                j7 = j8 + timeSecondsToUs;
                                                                ArrayList arrayList15 = new ArrayList();
                                                                if (j10 != -1) {
                                                                    j3 += j10;
                                                                }
                                                                j6 = j3;
                                                                arrayList8 = arrayList15;
                                                                arrayList3 = arrayList3;
                                                                str7 = str7;
                                                                drmInitData2 = drmInitData;
                                                                timeSecondsToUs = 0;
                                                                optionalStringAttr2 = str5;
                                                                j8 = j7;
                                                                arrayList5 = arrayList5;
                                                                i2 = i2;
                                                                part2 = part;
                                                                arrayList6 = arrayList2;
                                                                z2 = false;
                                                                z6 = false;
                                                                j10 = -1;
                                                                encryptionScheme = str4;
                                                                arrayList7 = arrayList7;
                                                                longAttr = j4;
                                                            }
                                                        }
                                                    } else if (part2 == null && "PART".equals(parseStringAttr(next, REGEX_PRELOAD_HINT_TYPE, map))) {
                                                        String stringAttr7 = parseStringAttr(next, REGEX_URI, map);
                                                        long optionalLongAttr = parseOptionalLongAttr(next, REGEX_BYTERANGE_START, -1L);
                                                        long optionalLongAttr2 = parseOptionalLongAttr(next, REGEX_BYTERANGE_LENGTH, -1L);
                                                        long j19 = longAttr;
                                                        optionalStringAttr = str7;
                                                        String segmentEncryptionIV3 = getSegmentEncryptionIV(j19, str6, optionalStringAttr);
                                                        if (drmInitData2 == null && !treeMap.isEmpty()) {
                                                            DrmInitData.SchemeData[] schemeDataArr3 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                            DrmInitData drmInitData5 = new DrmInitData(encryptionScheme, schemeDataArr3);
                                                            if (playlistProtectionSchemes == null) {
                                                                playlistProtectionSchemes = getPlaylistProtectionSchemes(encryptionScheme, schemeDataArr3);
                                                            }
                                                            drmInitData2 = drmInitData5;
                                                        }
                                                        if (optionalLongAttr == -1 || optionalLongAttr2 != -1) {
                                                            part2 = new HlsMediaPlaylist.Part(stringAttr7, segment, 0L, i4, j7, drmInitData2, str6, segmentEncryptionIV3, optionalLongAttr != -1 ? optionalLongAttr : 0L, optionalLongAttr2, false, false, true);
                                                        }
                                                        encryptionScheme = encryptionScheme;
                                                        str6 = str6;
                                                        longAttr = j19;
                                                        z2 = false;
                                                    }
                                                    hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                                                }
                                                str2 = encryptionScheme;
                                                arrayList = arrayList8;
                                            }
                                            str6 = str6;
                                            arrayList8 = arrayList8;
                                            arrayList7 = arrayList7;
                                            arrayList6 = arrayList2;
                                            z2 = false;
                                        }
                                        str7 = optionalStringAttr;
                                        arrayList6 = arrayList2;
                                    }
                                }
                                part = part2;
                                arrayList7 = arrayList7;
                                str7 = str7;
                                arrayList8 = arrayList;
                                arrayList5 = arrayList5;
                                i2 = i2;
                                part2 = part;
                                arrayList6 = arrayList2;
                                z2 = false;
                                encryptionScheme = str2;
                                arrayList3 = arrayList3;
                                longAttr = longAttr;
                                hlsMultivariantPlaylist = hlsMultivariantPlaylist;
                            }
                        }
                        arrayList7 = arrayList7;
                        z2 = false;
                    }
                }
                arrayList3 = arrayList3;
            }
        }
        int i15 = i2;
        HlsMediaPlaylist.Part part4 = part2;
        ArrayList arrayList16 = arrayList5;
        ArrayList arrayList17 = arrayList6;
        ArrayList arrayList18 = arrayList3;
        ArrayList arrayList19 = arrayList7;
        ArrayList arrayList20 = arrayList8;
        HashMap map3 = new HashMap();
        int i16 = 0;
        while (i16 < arrayList16.size()) {
            ArrayList arrayList21 = arrayList16;
            HlsMediaPlaylist.RenditionReport renditionReport = (HlsMediaPlaylist.RenditionReport) arrayList21.get(i16);
            long size = renditionReport.lastMediaSequence;
            if (size == -1) {
                size = (j5 + ((long) arrayList18.size())) - (arrayList20.isEmpty() ? 1L : 0L);
            }
            int size2 = renditionReport.lastPartIndex;
            if (size2 != -1 || doubleAttr2 == C.TIME_UNSET) {
                i = 1;
            } else {
                i = 1;
                size2 = (arrayList20.isEmpty() ? ((HlsMediaPlaylist.Segment) v55.g(arrayList18)).parts : arrayList20).size() - 1;
            }
            Uri uri3 = renditionReport.playlistUri;
            map3.put(uri3, new HlsMediaPlaylist.RenditionReport(uri3, size, size2));
            i16 += i;
            arrayList16 = arrayList21;
        }
        if (part4 != null) {
            arrayList20.add(part4);
        }
        return new HlsMediaPlaylist(i15, str, arrayList17, doubleAttr, optionalBooleanAttribute, jMsToUs, z4, i3, j5, intAttr2, intAttr, doubleAttr2, z3, z5, jMsToUs != 0, playlistProtectionSchemes, arrayList18, arrayList20, serverControl2, map3, arrayList19);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:165:0x025a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x0153 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x0156  */
    /* JADX WARN: Code duplicated, block: B:47:0x015d  */
    /* JADX WARN: Code duplicated, block: B:51:0x0178  */
    /* JADX WARN: Code duplicated, block: B:54:0x0190  */
    /* JADX WARN: Code duplicated, block: B:57:0x019a  */
    /* JADX WARN: Code duplicated, block: B:58:0x019f  */
    /* JADX WARN: Code duplicated, block: B:61:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:62:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:64:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:67:0x0229  */
    /* JADX WARN: Code duplicated, block: B:93:0x036a  */
    /* JADX WARN: Failed to find 'out' block for switch in B:110:0x0397. Please report as an issue. */
    /* JADX WARN: Instruction removed from duplicated block: B:47:0x015d, please report this as an issue */
    private static HlsMultivariantPlaylist parseMultivariantPlaylist(LineIterator lineIterator, String str) throws IOException {
        ArrayList arrayList;
        String mediaMimeType;
        int i;
        String str2;
        Format formatBuild;
        int i2;
        String mediaMimeType2;
        int i3;
        ArrayList arrayList2;
        String str3;
        String str4;
        String codecsOfType;
        String optionalStringAttr;
        int i4;
        int i5;
        String optionalStringAttr2;
        float f;
        Uri uriResolveToUri;
        HashMap map;
        ArrayList arrayList3;
        String codecsWithoutType;
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        boolean z = false;
        boolean zContains = false;
        while (true) {
            boolean zHasNext = lineIterator.hasNext();
            String str5 = MimeTypes.APPLICATION_M3U8;
            if (!zHasNext) {
                HashMap map4 = map2;
                ArrayList arrayList12 = arrayList5;
                ArrayList arrayList13 = arrayList6;
                ArrayList arrayList14 = arrayList7;
                ArrayList arrayList15 = arrayList8;
                ArrayList arrayList16 = arrayList9;
                ArrayList arrayList17 = arrayList10;
                ArrayList arrayList18 = arrayList11;
                ArrayList arrayList19 = new ArrayList();
                HashSet hashSet = new HashSet();
                int i6 = 0;
                while (i6 < arrayList4.size()) {
                    HlsMultivariantPlaylist.Variant variant = (HlsMultivariantPlaylist.Variant) arrayList4.get(i6);
                    if (hashSet.add(variant.url)) {
                        Assertions.checkState(variant.format.metadata == null);
                        i3 = 1;
                        arrayList19.add(variant.copyWithFormat(variant.format.buildUpon().setMetadata(new Metadata(new HlsTrackMetadataEntry(null, null, (List) Assertions.checkNotNull((ArrayList) map4.get(variant.url))))).build()));
                    } else {
                        i3 = 1;
                    }
                    i6 += i3;
                }
                Uri uri = null;
                ArrayList arrayList20 = null;
                Format format = null;
                int i7 = 0;
                while (i7 < arrayList16.size()) {
                    ArrayList arrayList21 = arrayList16;
                    String str6 = (String) arrayList21.get(i7);
                    String stringAttr = parseStringAttr(str6, REGEX_GROUP_ID, map3);
                    String stringAttr2 = parseStringAttr(str6, REGEX_NAME, map3);
                    Format.Builder language = new Format.Builder().setId(stringAttr + StringUtils.PROCESS_POSTFIX_DELIMITER + stringAttr2).setLabel(stringAttr2).setContainerMimeType(str5).setSelectionFlags(parseSelectionFlags(str6)).setRoleFlags(parseRoleFlags(str6, map3)).setLanguage(parseOptionalStringAttr(str6, REGEX_LANGUAGE, map3));
                    String optionalStringAttr3 = parseOptionalStringAttr(str6, REGEX_URI, map3);
                    Uri uriResolveToUri2 = optionalStringAttr3 == null ? uri : UriUtil.resolveToUri(str, optionalStringAttr3);
                    String str7 = str5;
                    arrayList16 = arrayList21;
                    Metadata metadata = new Metadata(new HlsTrackMetadataEntry(stringAttr, stringAttr2, Collections.emptyList()));
                    String stringAttr3 = parseStringAttr(str6, REGEX_TYPE, map3);
                    stringAttr3.hashCode();
                    switch (stringAttr3) {
                        case "SUBTITLES":
                            format = format;
                            arrayList13 = arrayList13;
                            arrayList = arrayList12;
                            HlsMultivariantPlaylist.Variant variantWithSubtitleGroup = getVariantWithSubtitleGroup(arrayList4, stringAttr);
                            if (variantWithSubtitleGroup != null) {
                                String codecsOfType2 = Util.getCodecsOfType(variantWithSubtitleGroup.format.codecs, 3);
                                language.setCodecs(codecsOfType2);
                                mediaMimeType = MimeTypes.getMediaMimeType(codecsOfType2);
                            } else {
                                mediaMimeType = null;
                            }
                            if (mediaMimeType == null) {
                                mediaMimeType = "text/vtt";
                            }
                            language.setSampleMimeType(mediaMimeType).setMetadata(metadata);
                            if (uriResolveToUri2 != null) {
                                HlsMultivariantPlaylist.Rendition rendition = new HlsMultivariantPlaylist.Rendition(uriResolveToUri2, language.build(), stringAttr, stringAttr2);
                                arrayList14 = arrayList14;
                                arrayList14.add(rendition);
                            } else {
                                arrayList14 = arrayList14;
                                Log.w(LOG_TAG, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                            }
                            formatBuild = format;
                            i2 = 1;
                            break;
                        case "CLOSED-CAPTIONS":
                            Format format2 = format;
                            arrayList13 = arrayList13;
                            arrayList = arrayList12;
                            String stringAttr4 = parseStringAttr(str6, REGEX_INSTREAM_ID, map3);
                            if (stringAttr4.startsWith("CC")) {
                                i = Integer.parseInt(stringAttr4.substring(2));
                                str2 = MimeTypes.APPLICATION_CEA608;
                            } else {
                                i = Integer.parseInt(stringAttr4.substring(7));
                                str2 = MimeTypes.APPLICATION_CEA708;
                            }
                            if (arrayList20 == null) {
                                arrayList20 = new ArrayList();
                            }
                            language.setSampleMimeType(str2).setAccessibilityChannel(i);
                            arrayList20.add(language.build());
                            formatBuild = format2;
                            i2 = 1;
                            break;
                        case "AUDIO":
                            arrayList = arrayList12;
                            HlsMultivariantPlaylist.Variant variantWithAudioGroup = getVariantWithAudioGroup(arrayList4, stringAttr);
                            if (variantWithAudioGroup != null) {
                                String codecsOfType3 = Util.getCodecsOfType(variantWithAudioGroup.format.codecs, 1);
                                language.setCodecs(codecsOfType3);
                                mediaMimeType2 = MimeTypes.getMediaMimeType(codecsOfType3);
                            } else {
                                mediaMimeType2 = null;
                            }
                            String optionalStringAttr4 = parseOptionalStringAttr(str6, REGEX_CHANNELS, map3);
                            if (optionalStringAttr4 != null) {
                                language.setChannelCount(Integer.parseInt(Util.splitAtFirst(optionalStringAttr4, "/")[0]));
                                if ("audio/eac3".equals(mediaMimeType2) && optionalStringAttr4.endsWith("/JOC")) {
                                    language.setCodecs(MimeTypes.CODEC_E_AC3_JOC);
                                    mediaMimeType2 = MimeTypes.AUDIO_E_AC3_JOC;
                                }
                            }
                            language.setSampleMimeType(mediaMimeType2);
                            if (uriResolveToUri2 == null) {
                                arrayList13 = arrayList13;
                                if (variantWithAudioGroup != null) {
                                    formatBuild = language.build();
                                    i2 = 1;
                                }
                                break;
                            } else {
                                language.setMetadata(metadata);
                                arrayList13 = arrayList13;
                                arrayList13.add(new HlsMultivariantPlaylist.Rendition(uriResolveToUri2, language.build(), stringAttr, stringAttr2));
                            }
                            arrayList14 = arrayList14;
                            formatBuild = format;
                            i2 = 1;
                            break;
                        case "VIDEO":
                            HlsMultivariantPlaylist.Variant variantWithVideoGroup = getVariantWithVideoGroup(arrayList4, stringAttr);
                            if (variantWithVideoGroup != null) {
                                Format format3 = variantWithVideoGroup.format;
                                String codecsOfType4 = Util.getCodecsOfType(format3.codecs, 2);
                                language.setCodecs(codecsOfType4).setSampleMimeType(MimeTypes.getMediaMimeType(codecsOfType4)).setWidth(format3.width).setHeight(format3.height).setFrameRate(format3.frameRate);
                            }
                            if (uriResolveToUri2 != null) {
                                language.setMetadata(metadata);
                                arrayList = arrayList12;
                                arrayList.add(new HlsMultivariantPlaylist.Rendition(uriResolveToUri2, language.build(), stringAttr, stringAttr2));
                            }
                            formatBuild = format;
                            i2 = 1;
                        default:
                            arrayList = arrayList12;
                            formatBuild = format;
                            i2 = 1;
                            break;
                    }
                    i7 += i2;
                    arrayList12 = arrayList;
                    arrayList13 = arrayList13;
                    arrayList14 = arrayList14;
                    uri = null;
                    format = formatBuild;
                    str5 = str7;
                }
                return new HlsMultivariantPlaylist(str, arrayList18, arrayList19, arrayList12, arrayList13, arrayList14, arrayList15, format, zContains ? Collections.emptyList() : arrayList20, z, map3, arrayList17);
            }
            String next = lineIterator.next();
            if (next.startsWith(TAG_PREFIX)) {
                arrayList11.add(next);
            }
            boolean zStartsWith = next.startsWith(TAG_I_FRAME_STREAM_INF);
            if (next.startsWith(TAG_DEFINE)) {
                map3.put(parseStringAttr(next, REGEX_NAME, map3), parseStringAttr(next, REGEX_VALUE, map3));
            } else {
                if (next.equals(TAG_INDEPENDENT_SEGMENTS)) {
                    map = map2;
                    arrayList2 = arrayList9;
                    arrayList10 = arrayList10;
                    z = true;
                } else if (next.startsWith(TAG_MEDIA)) {
                    arrayList9.add(next);
                } else if (next.startsWith(TAG_SESSION_KEY)) {
                    DrmInitData.SchemeData drmSchemeData = parseDrmSchemeData(next, parseOptionalStringAttr(next, REGEX_KEYFORMAT, KEYFORMAT_IDENTITY, map3), map3);
                    if (drmSchemeData != null) {
                        arrayList10.add(new DrmInitData(parseEncryptionScheme(parseStringAttr(next, REGEX_METHOD, map3)), drmSchemeData));
                    }
                } else if (next.startsWith(TAG_STREAM_INF) || zStartsWith) {
                    zContains |= next.contains(ATTR_CLOSED_CAPTIONS_NONE);
                    int i8 = zStartsWith ? 16384 : 0;
                    int intAttr = parseIntAttr(next, REGEX_BANDWIDTH);
                    int optionalIntAttr = parseOptionalIntAttr(next, REGEX_AVERAGE_BANDWIDTH, -1);
                    String optionalStringAttr5 = parseOptionalStringAttr(next, REGEX_VIDEO_RANGE, map3);
                    String optionalStringAttr6 = parseOptionalStringAttr(next, REGEX_CODECS, map3);
                    String optionalStringAttr7 = parseOptionalStringAttr(next, REGEX_SUPPLEMENTAL_CODECS, map3);
                    if (optionalStringAttr7 != null) {
                        String[] strArrSplit = Util.split(Util.splitAtFirst(optionalStringAttr7, StringUtils.COMMA)[0], "/");
                        String str8 = strArrSplit[0];
                        arrayList2 = arrayList9;
                        if (strArrSplit.length > 1) {
                            str4 = strArrSplit[1];
                            map2 = map2;
                            str3 = str8;
                        } else {
                            str3 = str8;
                        }
                        codecsOfType = Util.getCodecsOfType(optionalStringAttr6, 2);
                        if (isDolbyVisionFormat(optionalStringAttr5, codecsOfType, str3, str4)) {
                            if (str3 == null) {
                                str3 = codecsOfType;
                            }
                            codecsWithoutType = Util.getCodecsWithoutType(optionalStringAttr6, 2);
                            if (codecsWithoutType != null) {
                                str3 = str3 + StringUtils.COMMA + codecsWithoutType;
                            }
                            optionalStringAttr6 = str3;
                        }
                        optionalStringAttr = parseOptionalStringAttr(next, REGEX_RESOLUTION, map3);
                        if (optionalStringAttr != null) {
                            String[] strArrSplit2 = Util.split(optionalStringAttr, "x");
                            i5 = Integer.parseInt(strArrSplit2[0]);
                            i4 = Integer.parseInt(strArrSplit2[1]);
                            if (i5 > 0 || i4 <= 0) {
                                i4 = -1;
                                i5 = -1;
                            }
                        } else {
                            i4 = -1;
                            i5 = -1;
                        }
                        optionalStringAttr2 = parseOptionalStringAttr(next, REGEX_FRAME_RATE, map3);
                        if (optionalStringAttr2 != null) {
                            f = Float.parseFloat(optionalStringAttr2);
                        } else {
                            f = -1.0f;
                        }
                        String optionalStringAttr8 = parseOptionalStringAttr(next, REGEX_VIDEO, map3);
                        String optionalStringAttr9 = parseOptionalStringAttr(next, REGEX_AUDIO, map3);
                        String optionalStringAttr10 = parseOptionalStringAttr(next, REGEX_SUBTITLES, map3);
                        String optionalStringAttr11 = parseOptionalStringAttr(next, REGEX_CLOSED_CAPTIONS, map3);
                        if (zStartsWith) {
                            uriResolveToUri = UriUtil.resolveToUri(str, parseStringAttr(next, REGEX_URI, map3));
                        } else {
                            if (lineIterator.hasNext()) {
                                throw ParserException.createForMalformedManifest("#EXT-X-STREAM-INF must be followed by another line", null);
                            }
                            uriResolveToUri = UriUtil.resolveToUri(str, replaceVariableReferences(lineIterator.next(), map3));
                        }
                        arrayList4.add(new HlsMultivariantPlaylist.Variant(uriResolveToUri, new Format.Builder().setId(arrayList4.size()).setContainerMimeType(MimeTypes.APPLICATION_M3U8).setCodecs(optionalStringAttr6).setAverageBitrate(optionalIntAttr).setPeakBitrate(intAttr).setWidth(i5).setHeight(i4).setFrameRate(f).setRoleFlags(i8).build(), optionalStringAttr8, optionalStringAttr9, optionalStringAttr10, optionalStringAttr11));
                        map = map2;
                        arrayList3 = (ArrayList) map.get(uriResolveToUri);
                        if (arrayList3 == null) {
                            arrayList3 = new ArrayList();
                            map.put(uriResolveToUri, arrayList3);
                        }
                        arrayList3.add(new HlsTrackMetadataEntry.VariantInfo(optionalIntAttr, intAttr, optionalStringAttr8, optionalStringAttr9, optionalStringAttr10, optionalStringAttr11));
                    } else {
                        arrayList2 = arrayList9;
                        str3 = null;
                    }
                    str4 = null;
                    codecsOfType = Util.getCodecsOfType(optionalStringAttr6, 2);
                    if (isDolbyVisionFormat(optionalStringAttr5, codecsOfType, str3, str4)) {
                        if (str3 == null) {
                            str3 = codecsOfType;
                        }
                        codecsWithoutType = Util.getCodecsWithoutType(optionalStringAttr6, 2);
                        if (codecsWithoutType != null) {
                            str3 = str3 + StringUtils.COMMA + codecsWithoutType;
                        }
                        optionalStringAttr6 = str3;
                    }
                    optionalStringAttr = parseOptionalStringAttr(next, REGEX_RESOLUTION, map3);
                    if (optionalStringAttr != null) {
                        String[] strArrSplit3 = Util.split(optionalStringAttr, "x");
                        i5 = Integer.parseInt(strArrSplit3[0]);
                        i4 = Integer.parseInt(strArrSplit3[1]);
                        if (i5 > 0) {
                            i4 = -1;
                            i5 = -1;
                        } else {
                            i4 = -1;
                            i5 = -1;
                        }
                    } else {
                        i4 = -1;
                        i5 = -1;
                    }
                    optionalStringAttr2 = parseOptionalStringAttr(next, REGEX_FRAME_RATE, map3);
                    if (optionalStringAttr2 != null) {
                        f = Float.parseFloat(optionalStringAttr2);
                    } else {
                        f = -1.0f;
                    }
                    String optionalStringAttr12 = parseOptionalStringAttr(next, REGEX_VIDEO, map3);
                    String optionalStringAttr13 = parseOptionalStringAttr(next, REGEX_AUDIO, map3);
                    String optionalStringAttr14 = parseOptionalStringAttr(next, REGEX_SUBTITLES, map3);
                    String optionalStringAttr15 = parseOptionalStringAttr(next, REGEX_CLOSED_CAPTIONS, map3);
                    if (zStartsWith) {
                        uriResolveToUri = UriUtil.resolveToUri(str, parseStringAttr(next, REGEX_URI, map3));
                    } else {
                        if (lineIterator.hasNext()) {
                            throw ParserException.createForMalformedManifest("#EXT-X-STREAM-INF must be followed by another line", null);
                        }
                        uriResolveToUri = UriUtil.resolveToUri(str, replaceVariableReferences(lineIterator.next(), map3));
                    }
                    arrayList4.add(new HlsMultivariantPlaylist.Variant(uriResolveToUri, new Format.Builder().setId(arrayList4.size()).setContainerMimeType(MimeTypes.APPLICATION_M3U8).setCodecs(optionalStringAttr6).setAverageBitrate(optionalIntAttr).setPeakBitrate(intAttr).setWidth(i5).setHeight(i4).setFrameRate(f).setRoleFlags(i8).build(), optionalStringAttr12, optionalStringAttr13, optionalStringAttr14, optionalStringAttr15));
                    map = map2;
                    arrayList3 = (ArrayList) map.get(uriResolveToUri);
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                        map.put(uriResolveToUri, arrayList3);
                    }
                    arrayList3.add(new HlsTrackMetadataEntry.VariantInfo(optionalIntAttr, intAttr, optionalStringAttr12, optionalStringAttr13, optionalStringAttr14, optionalStringAttr15));
                }
                map2 = map;
                arrayList10 = arrayList10;
                arrayList8 = arrayList8;
                arrayList11 = arrayList11;
                arrayList7 = arrayList7;
                arrayList6 = arrayList6;
                arrayList5 = arrayList5;
                arrayList9 = arrayList2;
            }
            map = map2;
            arrayList2 = arrayList9;
            arrayList10 = arrayList10;
            map2 = map;
            arrayList10 = arrayList10;
            arrayList8 = arrayList8;
            arrayList11 = arrayList11;
            arrayList7 = arrayList7;
            arrayList6 = arrayList6;
            arrayList5 = arrayList5;
            arrayList9 = arrayList2;
        }
    }

    private static boolean parseOptionalBooleanAttribute(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? BOOLEAN_TRUE.equals(matcher.group(1)) : z;
    }

    private static double parseOptionalDoubleAttr(String str, Pattern pattern, double d) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Double.parseDouble((String) Assertions.checkNotNull(matcher.group(1))) : d;
    }

    private static int parseOptionalIntAttr(String str, Pattern pattern, int i) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1))) : i;
    }

    private static long parseOptionalLongAttr(String str, Pattern pattern, long j) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Long.parseLong((String) Assertions.checkNotNull(matcher.group(1))) : j;
    }

    @Nullable
    private static String parseOptionalStringAttr(String str, Pattern pattern, Map<String, String> map) {
        return parseOptionalStringAttr(str, pattern, null, map);
    }

    private static int parseRoleFlags(String str, Map<String, String> map) {
        String optionalStringAttr = parseOptionalStringAttr(str, REGEX_CHARACTERISTICS, map);
        if (TextUtils.isEmpty(optionalStringAttr)) {
            return 0;
        }
        String[] strArrSplit = Util.split(optionalStringAttr, StringUtils.COMMA);
        int i = Util.contains(strArrSplit, "public.accessibility.describes-video") ? 512 : 0;
        if (Util.contains(strArrSplit, "public.accessibility.transcribes-spoken-dialog")) {
            i |= 4096;
        }
        if (Util.contains(strArrSplit, "public.accessibility.describes-music-and-sound")) {
            i |= 1024;
        }
        return Util.contains(strArrSplit, "public.easy-to-read") ? i | 8192 : i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private static int parseSelectionFlags(String str) {
        boolean optionalBooleanAttribute = parseOptionalBooleanAttribute(str, REGEX_DEFAULT, false);
        ?? r0 = optionalBooleanAttribute;
        if (parseOptionalBooleanAttribute(str, REGEX_FORCED, false)) {
            r0 = (optionalBooleanAttribute ? 1 : 0) | 2;
        }
        return parseOptionalBooleanAttribute(str, REGEX_AUTOSELECT, false) ? r0 | 4 : r0;
    }

    private static HlsMediaPlaylist.ServerControl parseServerControl(String str) {
        double optionalDoubleAttr = parseOptionalDoubleAttr(str, REGEX_CAN_SKIP_UNTIL, -9.223372036854776E18d);
        long j = C.TIME_UNSET;
        long j2 = optionalDoubleAttr == -9.223372036854776E18d ? -9223372036854775807L : (long) (optionalDoubleAttr * 1000000.0d);
        boolean optionalBooleanAttribute = parseOptionalBooleanAttribute(str, REGEX_CAN_SKIP_DATE_RANGES, false);
        double optionalDoubleAttr2 = parseOptionalDoubleAttr(str, REGEX_HOLD_BACK, -9.223372036854776E18d);
        long j3 = optionalDoubleAttr2 == -9.223372036854776E18d ? -9223372036854775807L : (long) (optionalDoubleAttr2 * 1000000.0d);
        double optionalDoubleAttr3 = parseOptionalDoubleAttr(str, REGEX_PART_HOLD_BACK, -9.223372036854776E18d);
        if (optionalDoubleAttr3 != -9.223372036854776E18d) {
            j = (long) (optionalDoubleAttr3 * 1000000.0d);
        }
        return new HlsMediaPlaylist.ServerControl(j2, optionalBooleanAttribute, j3, j, parseOptionalBooleanAttribute(str, REGEX_CAN_BLOCK_RELOAD, false));
    }

    private static String parseStringAttr(String str, Pattern pattern, Map<String, String> map) throws ParserException {
        String optionalStringAttr = parseOptionalStringAttr(str, pattern, map);
        if (optionalStringAttr != null) {
            return optionalStringAttr;
        }
        throw ParserException.createForMalformedManifest("Couldn't match " + pattern.pattern() + " in " + str, null);
    }

    private static long parseTimeSecondsToUs(String str, Pattern pattern) throws ParserException {
        return new BigDecimal(parseStringAttr(str, pattern, Collections.emptyMap())).multiply(new BigDecimal(1000000L)).longValue();
    }

    private static String replaceVariableReferences(String str, Map<String, String> map) {
        Matcher matcher = REGEX_VARIABLE_REFERENCE.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (map.containsKey(strGroup)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(map.get(strGroup)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private static int skipIgnorableWhitespace(BufferedReader bufferedReader, boolean z, int i) throws IOException {
        while (i != -1 && Character.isWhitespace(i) && (z || !Util.isLinebreak(i))) {
            i = bufferedReader.read();
        }
        return i;
    }

    public HlsPlaylistParser(HlsMultivariantPlaylist hlsMultivariantPlaylist, @Nullable HlsMediaPlaylist hlsMediaPlaylist) {
        this.multivariantPlaylist = hlsMultivariantPlaylist;
        this.previousMediaPlaylist = hlsMediaPlaylist;
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = (String) Assertions.checkNotNull(matcher.group(1));
        }
        return (map.isEmpty() || str2 == null) ? str2 : replaceVariableReferences(str2, map);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public HlsPlaylist parse(Uri uri, InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (!checkPlaylistHeader(bufferedReader)) {
                throw ParserException.createForMalformedManifest("Input does not start with the #EXTM3U header.", null);
            }
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    Util.closeQuietly(bufferedReader);
                    throw ParserException.createForMalformedManifest("Failed to parse the playlist, could not identify any tags.", null);
                }
                String strTrim = line.trim();
                if (!strTrim.isEmpty()) {
                    if (strTrim.startsWith(TAG_STREAM_INF)) {
                        arrayDeque.add(strTrim);
                        HlsMultivariantPlaylist multivariantPlaylist = parseMultivariantPlaylist(new LineIterator(arrayDeque, bufferedReader), uri.toString());
                        Util.closeQuietly(bufferedReader);
                        return multivariantPlaylist;
                    }
                    if (!strTrim.startsWith(TAG_TARGET_DURATION) && !strTrim.startsWith(TAG_MEDIA_SEQUENCE) && !strTrim.startsWith(TAG_MEDIA_DURATION) && !strTrim.startsWith(TAG_KEY) && !strTrim.startsWith(TAG_BYTERANGE) && !strTrim.equals(TAG_DISCONTINUITY) && !strTrim.equals(TAG_DISCONTINUITY_SEQUENCE) && !strTrim.equals(TAG_ENDLIST)) {
                        arrayDeque.add(strTrim);
                    }
                    arrayDeque.add(strTrim);
                    HlsMediaPlaylist mediaPlaylist = parseMediaPlaylist(this.multivariantPlaylist, this.previousMediaPlaylist, new LineIterator(arrayDeque, bufferedReader), uri.toString());
                    Util.closeQuietly(bufferedReader);
                    return mediaPlaylist;
                }
            }
        } catch (Throwable th) {
            Util.closeQuietly(bufferedReader);
            throw th;
        }
    }
}
