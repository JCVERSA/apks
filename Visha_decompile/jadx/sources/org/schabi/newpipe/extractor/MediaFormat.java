package org.schabi.newpipe.extractor;

import androidx.media3.common.MimeTypes;
import androidx.media3.datasource.cache.CacheDataSink;
import com.google.android.material.internal.ViewUtils;
import com.hunantv.media.player.MgtvMediaSource;
import java.util.Arrays;
import java.util.List;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.schabi.newpipe.extractor.MediaFormat;

public enum MediaFormat {
    MPEG_4(0, MgtvMediaSource.MPEG_4, "mp4", MimeTypes.VIDEO_MP4),
    v3GPP(16, "3GPP", "3gp", "video/3gpp"),
    WEBM(32, "WebM", "webm", MimeTypes.VIDEO_WEBM),
    M4A(256, "m4a", "m4a", MimeTypes.AUDIO_MP4),
    WEBMA(512, "WebM", "webm", MimeTypes.AUDIO_WEBM),
    MP3(ViewUtils.EDGE_TO_EDGE_FLAGS, "MP3", "mp3", "audio/mpeg"),
    MP2(784, "MP2", "mp2", "audio/mpeg"),
    OPUS(1024, "opus", "opus", "audio/opus"),
    OGG(1280, "ogg", "ogg", MimeTypes.AUDIO_OGG),
    WEBMA_OPUS(512, "WebM Opus", "webm", MimeTypes.AUDIO_WEBM),
    AIFF(1536, "AIFF", "aiff", "audio/aiff"),
    AIF(1536, "AIFF", "aif", "audio/aiff"),
    WAV(1792, "WAV", "wav", MimeTypes.AUDIO_WAV),
    FLAC(2048, "FLAC", "flac", "audio/flac"),
    ALAC(2304, "ALAC", "alac", MimeTypes.AUDIO_ALAC),
    VTT(4096, "WebVTT", "vtt", "text/vtt"),
    TTML(8192, "Timed Text Markup Language", "ttml", MimeTypes.APPLICATION_TTML),
    TRANSCRIPT1(12288, "TranScript v1", "srv1", "text/xml"),
    TRANSCRIPT2(16384, "TranScript v2", "srv2", "text/xml"),
    TRANSCRIPT3(CacheDataSink.DEFAULT_BUFFER_SIZE, "TranScript v3", "srv3", "text/xml"),
    SRT(24576, "SubRip file format", "srt", "text/srt");

    public final int id;
    public final String mimeType;
    public final String name;
    public final String suffix;

    MediaFormat(int i, String str, String str2, String str3) {
        this.id = i;
        this.name = str;
        this.suffix = str2;
        this.mimeType = str3;
    }

    public static List<MediaFormat> getAllFromMimeType(final String str) {
        return (List) Arrays.stream(values()).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return MediaFormat.lambda$getAllFromMimeType$2(str, (MediaFormat) obj);
            }
        }).collect(Collectors.toList());
    }

    private static <T> T getById(final int i, Function<MediaFormat, T> function, T t) {
        return (T) Arrays.stream(values()).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return MediaFormat.lambda$getById$0(i, (MediaFormat) obj);
            }
        }).map(function).findFirst().orElse(t);
    }

    public static MediaFormat getFormatById(int i) {
        return (MediaFormat) getById(i, new Function() {
            @Override
            public final Object apply(Object obj) {
                return MediaFormat.lambda$getFormatById$3((MediaFormat) obj);
            }
        }, null);
    }

    public static MediaFormat getFromMimeType(final String str) {
        return (MediaFormat) Arrays.stream(values()).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return MediaFormat.lambda$getFromMimeType$1(str, (MediaFormat) obj);
            }
        }).findFirst().orElse(null);
    }

    public static MediaFormat getFromSuffix(final String str) {
        return (MediaFormat) Arrays.stream(values()).filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return MediaFormat.lambda$getFromSuffix$4(str, (MediaFormat) obj);
            }
        }).findFirst().orElse(null);
    }

    public static String getMimeById(int i) {
        return (String) getById(i, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((MediaFormat) obj).getMimeType();
            }
        }, null);
    }

    public static String getNameById(int i) {
        return (String) getById(i, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((MediaFormat) obj).getName();
            }
        }, "");
    }

    public static String getSuffixById(int i) {
        return (String) getById(i, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((MediaFormat) obj).getSuffix();
            }
        }, "");
    }

    public static boolean lambda$getAllFromMimeType$2(String str, MediaFormat mediaFormat) {
        return mediaFormat.mimeType.equals(str);
    }

    public static boolean lambda$getById$0(int i, MediaFormat mediaFormat) {
        return mediaFormat.id == i;
    }

    public static MediaFormat lambda$getFormatById$3(MediaFormat mediaFormat) {
        return mediaFormat;
    }

    public static boolean lambda$getFromMimeType$1(String str, MediaFormat mediaFormat) {
        return mediaFormat.mimeType.equals(str);
    }

    public static boolean lambda$getFromSuffix$4(String str, MediaFormat mediaFormat) {
        return mediaFormat.suffix.equals(str);
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public String getName() {
        return this.name;
    }

    public String getSuffix() {
        return this.suffix;
    }
}
