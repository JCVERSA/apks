package com.transsion.vishaplayersdk.exo2player;

import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.Cue;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelection;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.extractor.metadata.emsg.EventMessage;
import androidx.media3.extractor.metadata.id3.ApicFrame;
import androidx.media3.extractor.metadata.id3.CommentFrame;
import androidx.media3.extractor.metadata.id3.GeobFrame;
import androidx.media3.extractor.metadata.id3.Id3Frame;
import androidx.media3.extractor.metadata.id3.PrivFrame;
import androidx.media3.extractor.metadata.id3.TextInformationFrame;
import androidx.media3.extractor.metadata.id3.UrlLinkFrame;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

public final class EventLogger implements Player.Listener, MetadataOutput, AudioRendererEventListener, VideoRendererEventListener, MediaSourceEventListener {
    private static final int MAX_TIMELINE_ITEM_LINES = 3;
    private static final String TAG = "EventLogger";
    private static final NumberFormat TIME_FORMAT;
    private final MappingTrackSelector trackSelector;
    private final Timeline.Window window = new Timeline.Window();
    private final Timeline.Period period = new Timeline.Period();
    private final long startTimeMs = SystemClock.elapsedRealtime();

    static {
        NumberFormat numberFormat = NumberFormat.getInstance(Locale.US);
        TIME_FORMAT = numberFormat;
        numberFormat.setMinimumFractionDigits(2);
        numberFormat.setMaximumFractionDigits(2);
        numberFormat.setGroupingUsed(false);
    }

    public EventLogger(MappingTrackSelector mappingTrackSelector) {
        this.trackSelector = mappingTrackSelector;
    }

    private static String getAdaptiveSupportString(int i, int i2) {
        if (i < 2) {
            return "N/A";
        }
        if (i2 == 0) {
            return "NO";
        }
        if (i2 != 8) {
            return i2 != 16 ? "?" : "YES";
        }
        return "YES_NOT_SEAMLESS";
    }

    private static String getDiscontinuityReasonString(int i) {
        if (i == 0) {
            return "PERIOD_TRANSITION";
        }
        if (i == 1) {
            return ID3v24Frames.FRAME_ID_SEEK;
        }
        if (i != 2) {
            return i != 5 ? "?" : "INTERNAL";
        }
        return "SEEK_ADJUSTMENT";
    }

    private static String getFormatSupportString(int i) {
        if (i == 0) {
            return "NO";
        }
        if (i == 1) {
            return "NO_UNSUPPORTED_TYPE";
        }
        if (i == 2) {
            return "NO_UNSUPPORTED_DRM";
        }
        if (i != 3) {
            return i != 4 ? "?" : "YES";
        }
        return "NO_EXCEEDS_CAPABILITIES";
    }

    private static String getRepeatModeString(int i) {
        if (i == 0) {
            return "OFF";
        }
        if (i != 1) {
            return i != 2 ? "?" : "ALL";
        }
        return "ONE";
    }

    private String getSessionTimeString() {
        return getTimeString(SystemClock.elapsedRealtime() - this.startTimeMs);
    }

    private static String getStateString(int i) {
        if (i == 1) {
            return "I";
        }
        if (i == 2) {
            return "B";
        }
        if (i != 3) {
            return i != 4 ? "?" : ExifInterface.LONGITUDE_EAST;
        }
        return "R";
    }

    private static String getTimeString(long j) {
        return j == C.TIME_UNSET ? "?" : TIME_FORMAT.format(j / 1000.0f);
    }

    private static String getTrackStatusString(TrackSelection trackSelection, TrackGroup trackGroup, int i) {
        return getTrackStatusString((trackSelection == null || trackSelection.getTrackGroup() != trackGroup || trackSelection.indexOf(i) == -1) ? false : true);
    }

    private void printMetadata(Metadata metadata, String str) {
        for (int i = 0; i < metadata.length(); i++) {
            Metadata.Entry entry = metadata.get(i);
            if (entry instanceof TextInformationFrame) {
                TextInformationFrame textInformationFrame = (TextInformationFrame) entry;
                Log.d(TAG, str + String.format("%s: value=%s", textInformationFrame.id, textInformationFrame.value));
            } else if (entry instanceof UrlLinkFrame) {
                UrlLinkFrame urlLinkFrame = (UrlLinkFrame) entry;
                Log.d(TAG, str + String.format("%s: url=%s", urlLinkFrame.id, urlLinkFrame.url));
            } else if (entry instanceof PrivFrame) {
                PrivFrame privFrame = (PrivFrame) entry;
                Log.d(TAG, str + String.format("%s: owner=%s", privFrame.id, privFrame.owner));
            } else if (entry instanceof GeobFrame) {
                GeobFrame geobFrame = (GeobFrame) entry;
                Log.d(TAG, str + String.format("%s: mimeType=%s, filename=%s, description=%s", geobFrame.id, geobFrame.mimeType, geobFrame.filename, geobFrame.description));
            } else if (entry instanceof ApicFrame) {
                ApicFrame apicFrame = (ApicFrame) entry;
                Log.d(TAG, str + String.format("%s: mimeType=%s, description=%s", apicFrame.id, apicFrame.mimeType, apicFrame.description));
            } else if (entry instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) entry;
                Log.d(TAG, str + String.format("%s: language=%s, description=%s", commentFrame.id, commentFrame.language, commentFrame.description));
            } else if (entry instanceof Id3Frame) {
                Log.d(TAG, str + String.format("%s", ((Id3Frame) entry).id));
            } else if (entry instanceof EventMessage) {
                EventMessage eventMessage = (EventMessage) entry;
                Log.d(TAG, str + String.format("EMSG: scheme=%s, id=%d, value=%s", eventMessage.schemeIdUri, Long.valueOf(eventMessage.id), eventMessage.value));
            }
        }
    }

    @Override
    public void onAudioDecoderInitialized(String str, long j, long j2) {
        Log.d(TAG, "audioDecoderInitialized [" + getSessionTimeString() + ", " + str + "]");
    }

    @Override
    public void onAudioDisabled(DecoderCounters decoderCounters) {
        Log.d(TAG, "audioDisabled [" + getSessionTimeString() + "]");
    }

    @Override
    public void onAudioEnabled(DecoderCounters decoderCounters) {
        Log.d(TAG, "audioEnabled [" + getSessionTimeString() + "]");
    }

    @Override
    public void onAudioInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
        Log.d(TAG, "audioFormatChanged [" + getSessionTimeString() + ", " + Format.toLogString(format) + "]");
    }

    @Override
    public void onCues(List<Cue> list) {
    }

    @Override
    public void onDroppedFrames(int i, long j) {
        Log.d(TAG, "droppedFrames [" + getSessionTimeString() + ", " + i + "]");
    }

    @Override
    public void onIsLoadingChanged(boolean z) {
        Log.d(TAG, "loading [" + z + "]");
    }

    @Override
    public void onMetadata(Metadata metadata) {
        Log.d(TAG, "onMetadata [");
        printMetadata(metadata, "  ");
        Log.d(TAG, "]");
    }

    @Override
    public void onPlayWhenReadyChanged(boolean z, int i) {
        Log.d(TAG, "state [" + getSessionTimeString() + ", " + z + ", " + getStateString(i) + "]");
    }

    @Override
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        Log.d(TAG, "playbackParameters " + String.format("[speed=%.2f, pitch=%.2f]", Float.valueOf(playbackParameters.speed), Float.valueOf(playbackParameters.pitch)));
    }

    @Override
    public void onPlaybackStateChanged(int i) {
        Log.d(TAG, "state [" + getSessionTimeString() + ", " + getStateString(i) + "]");
    }

    @Override
    public void onPlayerError(@NonNull PlaybackException playbackException) {
        Log.e(TAG, "playerFailed [" + getSessionTimeString() + "]", playbackException);
    }

    @Override
    public void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        Log.d(TAG, "positionDiscontinuity [" + getDiscontinuityReasonString(i) + "]");
    }

    @Override
    public void onRenderedFirstFrame(Object obj, long j) {
        Log.d(TAG, "renderedFirstFrame [" + obj + "]");
    }

    @Override
    public void onRepeatModeChanged(int i) {
        Log.d(TAG, "repeatMode [" + getRepeatModeString(i) + "]");
    }

    @Override
    public void onShuffleModeEnabledChanged(boolean z) {
        Log.d(TAG, "shuffleModeEnabled [" + z + "]");
    }

    @Override
    public void onSkipSilenceEnabledChanged(boolean z) {
    }

    @Override
    public void onTracksChanged(@NonNull Tracks tracks) {
    }

    @Override
    public void onVideoDecoderInitialized(String str, long j, long j2) {
        Log.d(TAG, "videoDecoderInitialized [" + getSessionTimeString() + ", " + str + "]");
    }

    @Override
    public void onVideoDisabled(DecoderCounters decoderCounters) {
        Log.d(TAG, "videoDisabled [" + getSessionTimeString() + "]");
    }

    @Override
    public void onVideoEnabled(DecoderCounters decoderCounters) {
        Log.d(TAG, "videoEnabled [" + getSessionTimeString() + "]");
    }

    @Override
    public void onVideoInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
        Log.d(TAG, "videoFormatChanged [" + getSessionTimeString() + ", " + Format.toLogString(format) + "]");
    }

    @Override
    public void onVideoSizeChanged(VideoSize videoSize) {
        Log.d(TAG, "videoSizeChanged [" + videoSize.width + ", " + videoSize.height + "]");
    }

    private static String getTrackStatusString(boolean z) {
        return z ? "[X]" : "[ ]";
    }
}
