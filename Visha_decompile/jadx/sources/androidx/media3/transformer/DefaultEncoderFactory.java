package androidx.media3.transformer;

import android.content.Context;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.os.Build;
import android.util.Size;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@UnstableApi
public final class DefaultEncoderFactory implements Codec.EncoderFactory {
    private static final int DEFAULT_AUDIO_BITRATE = 131072;
    private static final int DEFAULT_FRAME_RATE = 30;
    private static final int PRIORITY_BEST_EFFORT = 1;
    private final int codecPriority;
    private final Context context;
    private final boolean enableFallback;
    private final AudioEncoderSettings requestedAudioEncoderSettings;
    private final VideoEncoderSettings requestedVideoEncoderSettings;
    private final EncoderSelector videoEncoderSelector;

    public static final class Builder {
        private final Context context;
        private EncoderSelector videoEncoderSelector = EncoderSelector.DEFAULT;
        private VideoEncoderSettings requestedVideoEncoderSettings = VideoEncoderSettings.DEFAULT;
        private AudioEncoderSettings requestedAudioEncoderSettings = AudioEncoderSettings.DEFAULT;
        private boolean enableFallback = true;
        private int codecPriority = C.PRIORITY_PROCESSING_FOREGROUND;

        public Builder(Context context) {
            this.context = context.getApplicationContext();
        }

        public DefaultEncoderFactory build() {
            return new DefaultEncoderFactory(this);
        }

        public Builder setCodecPriority(@IntRange(to = 0) int i) {
            this.codecPriority = i;
            return this;
        }

        public Builder setEnableFallback(boolean z) {
            this.enableFallback = z;
            return this;
        }

        public Builder setRequestedAudioEncoderSettings(AudioEncoderSettings audioEncoderSettings) {
            this.requestedAudioEncoderSettings = audioEncoderSettings;
            return this;
        }

        public Builder setRequestedVideoEncoderSettings(VideoEncoderSettings videoEncoderSettings) {
            this.requestedVideoEncoderSettings = videoEncoderSettings;
            return this;
        }

        public Builder setVideoEncoderSelector(EncoderSelector encoderSelector) {
            this.videoEncoderSelector = encoderSelector;
            return this;
        }
    }

    public interface EncoderFallbackCost {
        int getParameterSupportGap(MediaCodecInfo mediaCodecInfo);
    }

    public static class EncoderQueryResult {
        public final MediaCodecInfo encoder;
        public final Format supportedFormat;

        public EncoderQueryResult(MediaCodecInfo mediaCodecInfo, Format format) {
            this.encoder = mediaCodecInfo;
            this.supportedFormat = format;
        }
    }

    public static final class VideoEncoderQueryResult extends EncoderQueryResult {
        public final VideoEncoderSettings supportedEncoderSettings;

        public VideoEncoderQueryResult(MediaCodecInfo mediaCodecInfo, Format format, VideoEncoderSettings videoEncoderSettings) {
            super(mediaCodecInfo, format);
            this.supportedEncoderSettings = videoEncoderSettings;
        }
    }

    private static void adjustMediaFormatForEncoderPerformanceSettings(MediaFormat mediaFormat) {
        int i = Util.SDK_INT;
        if (i < 25) {
            return;
        }
        mediaFormat.setInteger("priority", 1);
        if (i == 26) {
            mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, 30);
        } else if (deviceNeedsLowerOperatingRateAvoidingOverflowWorkaround()) {
            mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, 1000);
        } else {
            mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, Integer.MAX_VALUE);
        }
    }

    private static void adjustMediaFormatForH264EncoderSettings(@Nullable ColorInfo colorInfo, MediaCodecInfo mediaCodecInfo, MediaFormat mediaFormat) {
        int i = Util.SDK_INT;
        int iIntValue = 8;
        if (i >= 29) {
            if (colorInfo != null) {
                ImmutableList<Integer> codecProfilesForHdrFormat = EncoderUtil.getCodecProfilesForHdrFormat("video/avc", colorInfo.colorTransfer);
                if (!codecProfilesForHdrFormat.isEmpty()) {
                    iIntValue = codecProfilesForHdrFormat.get(0).intValue();
                }
            }
            int iFindHighestSupportedEncodingLevel = EncoderUtil.findHighestSupportedEncodingLevel(mediaCodecInfo, "video/avc", iIntValue);
            if (iFindHighestSupportedEncodingLevel != -1) {
                mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_PROFILE, iIntValue);
                if (mediaFormat.containsKey(com.hunantv.media.player.subtitle.MediaFormat.KEY_LEVEL)) {
                    return;
                }
                mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_LEVEL, iFindHighestSupportedEncodingLevel);
                return;
            }
            return;
        }
        if (i >= 26 && !deviceNeedsNoH264HighProfileWorkaround()) {
            int iFindHighestSupportedEncodingLevel2 = EncoderUtil.findHighestSupportedEncodingLevel(mediaCodecInfo, "video/avc", 8);
            if (iFindHighestSupportedEncodingLevel2 != -1) {
                mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_PROFILE, 8);
                if (!mediaFormat.containsKey(com.hunantv.media.player.subtitle.MediaFormat.KEY_LEVEL)) {
                    mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_LEVEL, iFindHighestSupportedEncodingLevel2);
                }
                mediaFormat.setInteger("latency", 1);
                return;
            }
            return;
        }
        if (i >= 24) {
            int iFindHighestSupportedEncodingLevel3 = EncoderUtil.findHighestSupportedEncodingLevel(mediaCodecInfo, "video/avc", 1);
            Assertions.checkState(iFindHighestSupportedEncodingLevel3 != -1);
            mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_PROFILE, 1);
            if (mediaFormat.containsKey(com.hunantv.media.player.subtitle.MediaFormat.KEY_LEVEL)) {
                return;
            }
            mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_LEVEL, iFindHighestSupportedEncodingLevel3);
        }
    }

    private static ExportException createExportException(Format format, String str) {
        return ExportException.createForCodec(new IllegalArgumentException(str), 4003, new ExportException.CodecInfo(format.toString(), MimeTypes.isVideo(format.sampleMimeType), false, null));
    }

    private static ExportException createNoSupportedMimeTypeException(Format format, boolean z) {
        String str = "No MIME type is supported by both encoder and muxer.";
        if (z && ColorInfo.isTransferHdr(format.colorInfo)) {
            str = "No MIME type is supported by both encoder and muxer. Requested HDR colorInfo: " + format.colorInfo;
        }
        return ExportException.createForCodec(new IllegalArgumentException(str), 4003, new ExportException.CodecInfo(format.toString(), z, false, null));
    }

    private static boolean deviceNeedsDefaultFrameRateWorkaround() {
        return Util.SDK_INT < 30 && Build.DEVICE.equals("joyeuse");
    }

    private static boolean deviceNeedsLowerOperatingRateAvoidingOverflowWorkaround() {
        int i = Util.SDK_INT;
        return i >= 31 && i <= 34 && (Build.SOC_MODEL.equals("SM8550") || Build.SOC_MODEL.equals("SM7450") || Build.SOC_MODEL.equals("SM6450") || Build.SOC_MODEL.equals("SC9863A") || Build.SOC_MODEL.equals("T612") || Build.SOC_MODEL.equals("T606") || Build.SOC_MODEL.equals("T603"));
    }

    private static boolean deviceNeedsNoH264HighProfileWorkaround() {
        if (Util.SDK_INT == 27) {
            String str = Build.DEVICE;
            if (str.equals("ASUS_X00T_3") || str.equals("TC77")) {
                return true;
            }
        }
        return false;
    }

    private static ImmutableList<MediaCodecInfo> filterEncoders(List<MediaCodecInfo> list, EncoderFallbackCost encoderFallbackCost) {
        ArrayList arrayList = new ArrayList(list.size());
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < list.size(); i2++) {
            MediaCodecInfo mediaCodecInfo = list.get(i2);
            int parameterSupportGap = encoderFallbackCost.getParameterSupportGap(mediaCodecInfo);
            if (parameterSupportGap != Integer.MAX_VALUE) {
                if (parameterSupportGap < i) {
                    arrayList.clear();
                    arrayList.add(mediaCodecInfo);
                    i = parameterSupportGap;
                } else if (parameterSupportGap == i) {
                    arrayList.add(mediaCodecInfo);
                }
            }
        }
        return ImmutableList.copyOf((Collection) arrayList);
    }

    private static ImmutableList<MediaCodecInfo> filterEncodersByBitrate(List<MediaCodecInfo> list, final String str, final int i) {
        return filterEncoders(list, new EncoderFallbackCost() {
            @Override
            public final int getParameterSupportGap(MediaCodecInfo mediaCodecInfo) {
                return DefaultEncoderFactory.lambda$filterEncodersByBitrate$1(str, i, mediaCodecInfo);
            }
        });
    }

    private static ImmutableList<MediaCodecInfo> filterEncodersByBitrateMode(List<MediaCodecInfo> list, final String str, final int i) {
        return filterEncoders(list, new EncoderFallbackCost() {
            @Override
            public final int getParameterSupportGap(MediaCodecInfo mediaCodecInfo) {
                return DefaultEncoderFactory.lambda$filterEncodersByBitrateMode$2(str, i, mediaCodecInfo);
            }
        });
    }

    private static ImmutableList<MediaCodecInfo> filterEncodersByHdrEditingSupport(List<MediaCodecInfo> list, final String str, @Nullable final ColorInfo colorInfo) {
        return (Util.SDK_INT < 33 || !ColorInfo.isTransferHdr(colorInfo)) ? ImmutableList.copyOf((Collection) list) : filterEncoders(list, new EncoderFallbackCost() {
            @Override
            public final int getParameterSupportGap(MediaCodecInfo mediaCodecInfo) {
                return DefaultEncoderFactory.lambda$filterEncodersByHdrEditingSupport$3(str, colorInfo, mediaCodecInfo);
            }
        });
    }

    private static ImmutableList<MediaCodecInfo> filterEncodersByResolution(List<MediaCodecInfo> list, final String str, final int i, final int i2) {
        return filterEncoders(list, new EncoderFallbackCost() {
            @Override
            public final int getParameterSupportGap(MediaCodecInfo mediaCodecInfo) {
                return DefaultEncoderFactory.lambda$filterEncodersByResolution$0(str, i, i2, mediaCodecInfo);
            }
        });
    }

    private static ImmutableList<MediaCodecInfo> filterEncodersBySampleRate(List<MediaCodecInfo> list, final String str, final int i) {
        return filterEncoders(list, new EncoderFallbackCost() {
            @Override
            public final int getParameterSupportGap(MediaCodecInfo mediaCodecInfo) {
                return DefaultEncoderFactory.lambda$filterEncodersBySampleRate$4(str, i, mediaCodecInfo);
            }
        });
    }

    @Nullable
    private static EncoderQueryResult findAudioEncoderWithClosestSupportedFormat(Format format, ImmutableList<MediaCodecInfo> immutableList) {
        String str = (String) Assertions.checkNotNull(format.sampleMimeType);
        if (immutableList.isEmpty()) {
            return null;
        }
        MediaCodecInfo mediaCodecInfo = filterEncodersBySampleRate(immutableList, str, format.sampleRate).get(0);
        return new EncoderQueryResult(mediaCodecInfo, format.buildUpon().setSampleRate(EncoderUtil.getClosestSupportedSampleRate(mediaCodecInfo, str, format.sampleRate)).build());
    }

    @Nullable
    private static VideoEncoderQueryResult findVideoEncoderWithClosestSupportedFormat(Format format, VideoEncoderSettings videoEncoderSettings, EncoderSelector encoderSelector, boolean z) {
        int bitrate;
        int i;
        String str = (String) Assertions.checkNotNull(format.sampleMimeType);
        ImmutableList<MediaCodecInfo> immutableListSelectEncoderInfos = encoderSelector.selectEncoderInfos(str);
        if (immutableListSelectEncoderInfos.isEmpty()) {
            return null;
        }
        if (!z) {
            return new VideoEncoderQueryResult(immutableListSelectEncoderInfos.get(0), format, videoEncoderSettings);
        }
        ImmutableList<MediaCodecInfo> immutableListFilterEncodersByHdrEditingSupport = filterEncodersByHdrEditingSupport(immutableListSelectEncoderInfos, str, format.colorInfo);
        if (immutableListFilterEncodersByHdrEditingSupport.isEmpty()) {
            return null;
        }
        ImmutableList<MediaCodecInfo> immutableListFilterEncodersByResolution = filterEncodersByResolution(immutableListFilterEncodersByHdrEditingSupport, str, format.width, format.height);
        if (immutableListFilterEncodersByResolution.isEmpty()) {
            return null;
        }
        Size size = (Size) Assertions.checkNotNull(EncoderUtil.getSupportedResolution(immutableListFilterEncodersByResolution.get(0), str, format.width, format.height));
        if (videoEncoderSettings.enableHighQualityTargeting) {
            bitrate = -1;
        } else {
            bitrate = videoEncoderSettings.bitrate;
            if (bitrate == -1 && (bitrate = format.averageBitrate) == -1) {
                bitrate = getSuggestedBitrate(size.getWidth(), size.getHeight(), format.frameRate);
            }
            immutableListFilterEncodersByResolution = filterEncodersByBitrate(immutableListFilterEncodersByResolution, str, bitrate);
            if (immutableListFilterEncodersByResolution.isEmpty()) {
                return null;
            }
        }
        ImmutableList<MediaCodecInfo> immutableListFilterEncodersByBitrateMode = filterEncodersByBitrateMode(immutableListFilterEncodersByResolution, str, videoEncoderSettings.bitrateMode);
        if (immutableListFilterEncodersByBitrateMode.isEmpty()) {
            return null;
        }
        VideoEncoderSettings.Builder builderBuildUpon = videoEncoderSettings.buildUpon();
        Format.Builder height = format.buildUpon().setSampleMimeType(str).setWidth(size.getWidth()).setHeight(size.getHeight());
        MediaCodecInfo mediaCodecInfo = immutableListFilterEncodersByBitrateMode.get(0);
        if (videoEncoderSettings.enableHighQualityTargeting) {
            bitrate = new DeviceMappedEncoderBitrateProvider().getBitrate(mediaCodecInfo.getName(), size.getWidth(), size.getHeight(), format.frameRate);
            builderBuildUpon.experimentalSetEnableHighQualityTargeting(false);
        }
        int iIntValue = ((Integer) EncoderUtil.getSupportedBitrateRange(mediaCodecInfo, str).clamp(Integer.valueOf(bitrate))).intValue();
        builderBuildUpon.setBitrate(iIntValue);
        height.setAverageBitrate(iIntValue);
        int i2 = videoEncoderSettings.profile;
        if (i2 == -1 || (i = videoEncoderSettings.level) == -1 || i > EncoderUtil.findHighestSupportedEncodingLevel(mediaCodecInfo, str, i2)) {
            builderBuildUpon.setEncodingProfileLevel(-1, -1);
        }
        return new VideoEncoderQueryResult(mediaCodecInfo, height.build(), builderBuildUpon.build());
    }

    private static int getSuggestedBitrate(int i, int i2, float f) {
        return (int) (((double) (i * i2 * f)) * 0.07d * 2.0d);
    }

    public static int lambda$filterEncodersByBitrate$1(String str, int i, MediaCodecInfo mediaCodecInfo) {
        return Math.abs(((Integer) EncoderUtil.getSupportedBitrateRange(mediaCodecInfo, str).clamp(Integer.valueOf(i))).intValue() - i);
    }

    public static int lambda$filterEncodersByBitrateMode$2(String str, int i, MediaCodecInfo mediaCodecInfo) {
        return EncoderUtil.isBitrateModeSupported(mediaCodecInfo, str, i) ? 0 : Integer.MAX_VALUE;
    }

    public static int lambda$filterEncodersByHdrEditingSupport$3(String str, ColorInfo colorInfo, MediaCodecInfo mediaCodecInfo) {
        return EncoderUtil.isHdrEditingSupported(mediaCodecInfo, str, (ColorInfo) Assertions.checkNotNull(colorInfo)) ? 0 : Integer.MAX_VALUE;
    }

    public static int lambda$filterEncodersByResolution$0(String str, int i, int i2, MediaCodecInfo mediaCodecInfo) {
        Size supportedResolution = EncoderUtil.getSupportedResolution(mediaCodecInfo, str, i, i2);
        if (supportedResolution == null) {
            return Integer.MAX_VALUE;
        }
        return Math.abs((i * i2) - (supportedResolution.getWidth() * supportedResolution.getHeight()));
    }

    public static int lambda$filterEncodersBySampleRate$4(String str, int i, MediaCodecInfo mediaCodecInfo) {
        return Math.abs(EncoderUtil.getClosestSupportedSampleRate(mediaCodecInfo, str, i) - i);
    }

    @Override
    public boolean audioNeedsEncoding() {
        return !this.requestedAudioEncoderSettings.equals(AudioEncoderSettings.DEFAULT);
    }

    @Override
    public boolean videoNeedsEncoding() {
        return !this.requestedVideoEncoderSettings.equals(VideoEncoderSettings.DEFAULT);
    }

    private DefaultEncoderFactory(Builder builder) {
        this.context = builder.context;
        this.videoEncoderSelector = builder.videoEncoderSelector;
        this.requestedVideoEncoderSettings = builder.requestedVideoEncoderSettings;
        this.requestedAudioEncoderSettings = builder.requestedAudioEncoderSettings;
        this.enableFallback = builder.enableFallback;
        this.codecPriority = builder.codecPriority;
    }

    @Override
    public DefaultCodec createForAudioEncoding(Format format) throws ExportException {
        EncoderQueryResult encoderQueryResultFindAudioEncoderWithClosestSupportedFormat;
        if (format.bitrate == -1) {
            format = format.buildUpon().setAverageBitrate(131072).build();
        }
        boolean z = false;
        if (format.sampleMimeType == null) {
            throw createNoSupportedMimeTypeException(format, false);
        }
        MediaFormat mediaFormatCreateMediaFormatFromFormat = MediaFormatUtil.createMediaFormatFromFormat(format);
        ImmutableList<MediaCodecInfo> supportedEncoders = EncoderUtil.getSupportedEncoders(format.sampleMimeType);
        if (supportedEncoders.isEmpty()) {
            throw createExportException(format, "No audio media codec found");
        }
        MediaCodecInfo mediaCodecInfo = supportedEncoders.get(0);
        if (this.requestedAudioEncoderSettings.profile != -1) {
            for (int i = 0; i < supportedEncoders.size(); i++) {
                MediaCodecInfo mediaCodecInfo2 = supportedEncoders.get(i);
                if (EncoderUtil.findSupportedEncodingProfiles(mediaCodecInfo2, format.sampleMimeType).contains(Integer.valueOf(this.requestedAudioEncoderSettings.profile))) {
                    if (format.sampleMimeType.equals("audio/mp4a-latm")) {
                        mediaFormatCreateMediaFormatFromFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_AAC_PROFILE, this.requestedAudioEncoderSettings.profile);
                    }
                    mediaFormatCreateMediaFormatFromFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_PROFILE, this.requestedAudioEncoderSettings.profile);
                    z = true;
                    mediaCodecInfo = mediaCodecInfo2;
                    break;
                }
            }
        }
        if (!z && this.enableFallback && (encoderQueryResultFindAudioEncoderWithClosestSupportedFormat = findAudioEncoderWithClosestSupportedFormat(format, supportedEncoders)) != null) {
            mediaCodecInfo = encoderQueryResultFindAudioEncoderWithClosestSupportedFormat.encoder;
            format = encoderQueryResultFindAudioEncoderWithClosestSupportedFormat.supportedFormat;
            mediaFormatCreateMediaFormatFromFormat = MediaFormatUtil.createMediaFormatFromFormat(format);
        }
        Format format2 = format;
        MediaFormat mediaFormat = mediaFormatCreateMediaFormatFromFormat;
        int i2 = this.requestedAudioEncoderSettings.bitrate;
        if (i2 != -1) {
            mediaFormat.setInteger("bitrate", i2);
        }
        return new DefaultCodec(this.context, format2, mediaFormat, mediaCodecInfo.getName(), false, null);
    }

    @Override
    public DefaultCodec createForVideoEncoding(Format format) throws ExportException {
        int suggestedBitrate;
        if (format.frameRate == -1.0f || deviceNeedsDefaultFrameRateWorkaround()) {
            format = format.buildUpon().setFrameRate(30.0f).build();
        }
        if (format.sampleMimeType == null) {
            throw createNoSupportedMimeTypeException(format, true);
        }
        Assertions.checkArgument(format.width != -1);
        Assertions.checkArgument(format.height != -1);
        Assertions.checkArgument(format.rotationDegrees == 0);
        Assertions.checkStateNotNull(this.videoEncoderSelector);
        VideoEncoderQueryResult videoEncoderQueryResultFindVideoEncoderWithClosestSupportedFormat = findVideoEncoderWithClosestSupportedFormat(format, this.requestedVideoEncoderSettings, this.videoEncoderSelector, this.enableFallback);
        if (videoEncoderQueryResultFindVideoEncoderWithClosestSupportedFormat == null) {
            throw createExportException(format, "The requested video encoding format is not supported.");
        }
        MediaCodecInfo mediaCodecInfo = videoEncoderQueryResultFindVideoEncoderWithClosestSupportedFormat.encoder;
        Format format2 = videoEncoderQueryResultFindVideoEncoderWithClosestSupportedFormat.supportedFormat;
        VideoEncoderSettings videoEncoderSettings = videoEncoderQueryResultFindVideoEncoderWithClosestSupportedFormat.supportedEncoderSettings;
        String str = (String) Assertions.checkNotNull(format2.sampleMimeType);
        if (this.enableFallback) {
            suggestedBitrate = videoEncoderSettings.bitrate;
        } else {
            suggestedBitrate = videoEncoderSettings.bitrate;
            if (suggestedBitrate == -1) {
                if (videoEncoderSettings.enableHighQualityTargeting) {
                    suggestedBitrate = new DeviceMappedEncoderBitrateProvider().getBitrate(mediaCodecInfo.getName(), format2.width, format2.height, format2.frameRate);
                } else {
                    suggestedBitrate = format2.averageBitrate;
                    if (suggestedBitrate == -1) {
                        suggestedBitrate = getSuggestedBitrate(format2.width, format2.height, format2.frameRate);
                    }
                }
            }
        }
        Format formatBuild = format2.buildUpon().setAverageBitrate(suggestedBitrate).build();
        MediaFormat mediaFormatCreateMediaFormatFromFormat = MediaFormatUtil.createMediaFormatFromFormat(formatBuild);
        mediaFormatCreateMediaFormatFromFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_BITRATE_MODE, videoEncoderSettings.bitrateMode);
        mediaFormatCreateMediaFormatFromFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_FRAME_RATE, Math.round(formatBuild.frameRate));
        int i = videoEncoderSettings.profile;
        if (i != -1 && videoEncoderSettings.level != -1 && Util.SDK_INT >= 24) {
            mediaFormatCreateMediaFormatFromFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_PROFILE, i);
            mediaFormatCreateMediaFormatFromFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_LEVEL, videoEncoderSettings.level);
        } else if (Util.SDK_INT >= 24 && ColorInfo.isTransferHdr(format.colorInfo)) {
            mediaFormatCreateMediaFormatFromFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_PROFILE, EncoderUtil.getCodecProfilesForHdrFormat(str, ((ColorInfo) Assertions.checkNotNull(format.colorInfo)).colorTransfer).get(0).intValue());
        }
        if (str.equals("video/avc")) {
            adjustMediaFormatForH264EncoderSettings(format.colorInfo, mediaCodecInfo, mediaFormatCreateMediaFormatFromFormat);
        }
        int i2 = Util.SDK_INT;
        if (i2 < 31 || !ColorInfo.isTransferHdr(format.colorInfo)) {
            mediaFormatCreateMediaFormatFromFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_COLOR_FORMAT, 2130708361);
        } else {
            if (!EncoderUtil.getSupportedColorFormats(mediaCodecInfo, str).contains(2130750114)) {
                throw createExportException(format, "Encoding HDR is not supported on this device.");
            }
            mediaFormatCreateMediaFormatFromFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_COLOR_FORMAT, 2130750114);
        }
        if (i2 >= 25) {
            mediaFormatCreateMediaFormatFromFormat.setFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_I_FRAME_INTERVAL, videoEncoderSettings.iFrameIntervalSeconds);
        } else {
            float f = videoEncoderSettings.iFrameIntervalSeconds;
            mediaFormatCreateMediaFormatFromFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_I_FRAME_INTERVAL, (f <= 0.0f || f > 1.0f) ? (int) Math.floor(f) : 1);
        }
        int i3 = videoEncoderSettings.operatingRate;
        int i4 = videoEncoderSettings.priority;
        if (i2 >= 23) {
            if (i3 == -1 && i4 == -1) {
                adjustMediaFormatForEncoderPerformanceSettings(mediaFormatCreateMediaFormatFromFormat);
            } else {
                if (i3 != -2) {
                    mediaFormatCreateMediaFormatFromFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, i3);
                }
                if (i4 != -2) {
                    mediaFormatCreateMediaFormatFromFormat.setInteger("priority", i4);
                }
            }
        }
        long j = videoEncoderSettings.repeatPreviousFrameIntervalUs;
        if (j != -1) {
            mediaFormatCreateMediaFormatFromFormat.setLong(com.hunantv.media.player.subtitle.MediaFormat.KEY_REPEAT_PREVIOUS_FRAME_AFTER, j);
        }
        if (i2 >= 35) {
            mediaFormatCreateMediaFormatFromFormat.setInteger("importance", Math.max(0, -this.codecPriority));
        }
        return new DefaultCodec(this.context, formatBuild, mediaFormatCreateMediaFormatFromFormat, mediaCodecInfo.getName(), false, null);
    }
}
