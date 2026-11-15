package com.transsion.tranplayer;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.tranplayer.util.AndroidUtil;
import com.transsion.tranplayer.util.HWDecoderUtil;
import com.transsion.tranplayer.util.VLCUtil;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.FileDescriptor;

public class Media extends VLCObject<Event> {
    private static final int PARSE_STATUS_INIT = 0;
    private static final int PARSE_STATUS_PARSED = 2;
    private static final int PARSE_STATUS_PARSING = 1;
    private static final String TAG = "LibVLC/Media";
    private boolean mCodecOptionSet;
    private long mDuration;
    private boolean mFileCachingSet;
    private final String[] mNativeMetas;
    private Track[] mNativeTracks;
    private boolean mNetworkCachingSet;
    private int mParseStatus;
    private int mState;
    private MediaList mSubItems;
    private int mType;
    private Uri mUri;

    public static class AudioTrack extends Track {
        public final int channels;
        public final int rate;

        private AudioTrack(String str, String str2, int i, int i2, int i3, int i4, String str3, String str4, int i5, int i6) {
            super(0, str, str2, i, i2, i3, i4, str3, str4);
            this.channels = i5;
            this.rate = i6;
        }
    }

    public static class Event extends VLCEvent {
        public static final int DurationChanged = 2;
        public static final int MetaChanged = 0;
        public static final int ParsedChanged = 3;
        public static final int StateChanged = 5;
        public static final int SubItemAdded = 1;
        public static final int SubItemTreeAdded = 6;

        public Event(int i) {
            super(i);
        }

        public int getMetaId() {
            return (int) this.arg1;
        }

        public int getParsedStatus() {
            return (int) this.arg1;
        }

        public Event(int i, long j) {
            super(i, j);
        }
    }

    public interface EventListener extends VLCEvent.Listener<Event> {
    }

    public static class Meta {
        public static final int Actors = 22;
        public static final int Album = 4;
        public static final int AlbumArtist = 23;
        public static final int Artist = 1;
        public static final int ArtworkURL = 15;
        public static final int Copyright = 3;
        public static final int Date = 8;
        public static final int Description = 6;
        public static final int Director = 18;
        public static final int DiscNumber = 24;
        public static final int EncodedBy = 14;
        public static final int Episode = 20;
        public static final int Genre = 2;
        public static final int Language = 11;
        public static final int MAX = 25;
        public static final int NowPlaying = 12;
        public static final int Publisher = 13;
        public static final int Rating = 7;
        public static final int Season = 19;
        public static final int Setting = 9;
        public static final int ShowName = 21;
        public static final int Title = 0;
        public static final int TrackID = 16;
        public static final int TrackNumber = 5;
        public static final int TrackTotal = 17;
        public static final int URL = 10;
    }

    public static class Parse {
        public static final int DoInteract = 8;
        public static final int FetchLocal = 2;
        public static final int FetchNetwork = 4;
        public static final int ParseLocal = 0;
        public static final int ParseNetwork = 1;
    }

    public static class ParsedStatus {
        public static final int Done = 4;
        public static final int Failed = 2;
        public static final int Skipped = 1;
        public static final int Timeout = 3;
    }

    public static class Slave {
        public final int priority;
        public final int type;
        public final String uri;

        public static class Type {
            public static final int Audio = 1;
            public static final int Subtitle = 0;
        }

        public Slave(int i, int i2, String str) {
            this.type = i;
            this.priority = i2;
            this.uri = str;
        }
    }

    public static class State {
        public static final int Ended = 6;
        public static final int Error = 7;
        public static final int MAX = 8;
        public static final int NothingSpecial = 0;
        public static final int Opening = 1;
        public static final int Paused = 4;
        public static final int Playing = 3;
        public static final int Stopped = 5;
    }

    public static class Stats {
        public final int decodedAudio;
        public final int decodedVideo;
        public final float demuxBitrate;
        public final int demuxCorrupted;
        public final int demuxDiscontinuity;
        public final int demuxReadBytes;
        public final int displayedPictures;
        public final float inputBitrate;
        public final int lostAbuffers;
        public final int lostPictures;
        public final int playedAbuffers;
        public final int readBytes;
        public final float sendBitrate;
        public final int sentBytes;
        public final int sentPackets;

        public Stats(int i, float f, int i2, float f2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, float f3) {
            this.readBytes = i;
            this.inputBitrate = f;
            this.demuxReadBytes = i2;
            this.demuxBitrate = f2;
            this.demuxCorrupted = i3;
            this.demuxDiscontinuity = i4;
            this.decodedVideo = i5;
            this.decodedAudio = i6;
            this.displayedPictures = i7;
            this.lostPictures = i8;
            this.playedAbuffers = i9;
            this.lostAbuffers = i10;
            this.sentPackets = i11;
            this.sentBytes = i12;
            this.sendBitrate = f3;
        }
    }

    public static class SubtitleTrack extends Track {
        public final String encoding;

        private SubtitleTrack(String str, String str2, int i, int i2, int i3, int i4, String str3, String str4, String str5) {
            super(2, str, str2, i, i2, i3, i4, str3, str4);
            this.encoding = str5;
        }
    }

    public static abstract class Track {
        public final int bitrate;
        public final String codec;
        public final String description;
        public final int id;
        public final String language;
        public final int level;
        public final String originalCodec;
        public final int profile;
        public final int type;

        public static class Type {
            public static final int Audio = 0;
            public static final int Text = 2;
            public static final int Unknown = -1;
            public static final int Video = 1;
        }

        private Track(int i, String str, String str2, int i2, int i3, int i4, int i5, String str3, String str4) {
            this.type = i;
            this.codec = str;
            this.originalCodec = str2;
            this.id = i2;
            this.profile = i3;
            this.level = i4;
            this.bitrate = i5;
            this.language = str3;
            this.description = str4;
        }
    }

    public static class Type {
        public static final int Directory = 2;
        public static final int Disc = 3;
        public static final int File = 1;
        public static final int Playlist = 5;
        public static final int Stream = 4;
        public static final int Unknown = 0;
    }

    public static class UnknownTrack extends Track {
        private UnknownTrack(String str, String str2, int i, int i2, int i3, int i4, String str3, String str4) {
            super(-1, str, str2, i, i2, i3, i4, str3, str4);
        }
    }

    public static class VideoTrack extends Track {
        public final int frameRateDen;
        public final int frameRateNum;
        public final int height;
        public final int orientation;
        public final int projection;
        public final int sarDen;
        public final int sarNum;
        public final int width;

        public static final class Orientation {
            public static final int BottomLeft = 2;
            public static final int BottomRight = 3;
            public static final int LeftBottom = 5;
            public static final int LeftTop = 4;
            public static final int RightBottom = 7;
            public static final int RightTop = 6;
            public static final int TopLeft = 0;
            public static final int TopRight = 1;
        }

        public static final class Projection {
            public static final int CubemapLayoutStandard = 256;
            public static final int EquiRectangular = 1;
            public static final int Rectangular = 0;
        }

        private VideoTrack(String str, String str2, int i, int i2, int i3, int i4, String str3, String str4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
            super(1, str, str2, i, i2, i3, i4, str3, str4);
            this.height = i5;
            this.width = i6;
            this.sarNum = i7;
            this.sarDen = i8;
            this.frameRateNum = i9;
            this.frameRateDen = i10;
            this.orientation = i11;
            this.projection = i12;
        }
    }

    public Media(LibVLC libVLC, String str) {
        super(libVLC);
        this.mUri = null;
        this.mSubItems = null;
        this.mParseStatus = 0;
        this.mNativeMetas = new String[25];
        this.mNativeTracks = null;
        this.mDuration = -1L;
        this.mState = -1;
        this.mType = -1;
        this.mCodecOptionSet = false;
        this.mFileCachingSet = false;
        this.mNetworkCachingSet = false;
        nativeNewFromPath(libVLC, str);
        this.mUri = VLCUtil.UriFromMrl(nativeGetMrl());
    }

    private static Track createAudioTrackFromNative(String str, String str2, int i, int i2, int i3, int i4, String str3, String str4, int i5, int i6) {
        return new AudioTrack(str, str2, i, i2, i3, i4, str3, str4, i5, i6);
    }

    private static Slave createSlaveFromNative(int i, int i2, String str) {
        return new Slave(i, i2, str);
    }

    private static Stats createStatsFromNative(int i, float f, int i2, float f2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, float f3) {
        return new Stats(i, f, i2, f2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, f3);
    }

    private static Track createSubtitleTrackFromNative(String str, String str2, int i, int i2, int i3, int i4, String str3, String str4, String str5) {
        return new SubtitleTrack(str, str2, i, i2, i3, i4, str3, str4, str5);
    }

    private static Track createUnknownTrackFromNative(String str, String str2, int i, int i2, int i3, int i4, String str3, String str4) {
        return new UnknownTrack(str, str2, i, i2, i3, i4, str3, str4);
    }

    private static Track createVideoTrackFromNative(String str, String str2, int i, int i2, int i3, int i4, String str3, String str4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
        return new VideoTrack(str, str2, i, i2, i3, i4, str3, str4, i5, i6, i7, i8, i9, i10, i11, i12);
    }

    private static String getMediaCodecModule() {
        return AndroidUtil.isLolliPopOrLater ? "mediacodec_ndk" : "mediacodec_jni";
    }

    private Track[] getTracks() {
        synchronized (this) {
            try {
                Track[] trackArr = this.mNativeTracks;
                if (trackArr != null) {
                    return trackArr;
                }
                if (isReleased()) {
                    return null;
                }
                Track[] trackArrNativeGetTracks = nativeGetTracks();
                synchronized (this) {
                    this.mNativeTracks = trackArrNativeGetTracks;
                }
                return trackArrNativeGetTracks;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private native void nativeAddOption(String str);

    private native void nativeAddSlave(int i, int i2, String str);

    private native void nativeClearSlaves();

    private native long nativeGetDuration();

    private native String nativeGetMeta(int i);

    private native String nativeGetMrl();

    private native Slave[] nativeGetSlaves();

    private native int nativeGetState();

    private native Stats nativeGetStats();

    private native Track[] nativeGetTracks();

    private native int nativeGetType();

    private native void nativeNewFromFd(LibVLC libVLC, FileDescriptor fileDescriptor, long j, long j2);

    private native void nativeNewFromFdWithOffsetLength(LibVLC libVLC, int i, long j, long j2);

    private native void nativeNewFromLocation(LibVLC libVLC, String str);

    private native void nativeNewFromMediaList(MediaList mediaList, int i);

    private native void nativeNewFromPath(LibVLC libVLC, String str);

    private native boolean nativeParse(int i);

    private native boolean nativeParseAsync(int i, int i2);

    private native void nativeRelease();

    private synchronized void postParse() {
        int i = this.mParseStatus;
        if ((i & 2) != 0) {
            return;
        }
        this.mParseStatus = (i & (-2)) | 2;
        this.mNativeTracks = null;
        this.mDuration = -1L;
        this.mState = -1;
        this.mType = -1;
    }

    public void addOption(String str) {
        synchronized (this) {
            try {
                if (!this.mCodecOptionSet && str.startsWith(":codec=")) {
                    this.mCodecOptionSet = true;
                }
                if (!this.mNetworkCachingSet && str.startsWith(":network-caching=")) {
                    this.mNetworkCachingSet = true;
                }
                if (!this.mFileCachingSet && str.startsWith(":file-caching=")) {
                    this.mFileCachingSet = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        nativeAddOption(str);
    }

    public void addSlave(Slave slave) {
        nativeAddSlave(slave.type, slave.priority, slave.uri);
    }

    public void clearSlaves() {
        nativeClearSlaves();
    }

    public long getDuration() {
        synchronized (this) {
            try {
                long j = this.mDuration;
                if (j != -1) {
                    return j;
                }
                if (isReleased()) {
                    return 0L;
                }
                long jNativeGetDuration = nativeGetDuration();
                synchronized (this) {
                    this.mDuration = jNativeGetDuration;
                }
                return jNativeGetDuration;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String getMeta(int i) {
        if (i < 0 || i >= 25) {
            return null;
        }
        synchronized (this) {
            try {
                String str = this.mNativeMetas[i];
                if (str != null) {
                    return str;
                }
                if (isReleased()) {
                    return null;
                }
                String strNativeGetMeta = nativeGetMeta(i);
                synchronized (this) {
                    this.mNativeMetas[i] = strNativeGetMeta;
                }
                return strNativeGetMeta;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public Slave[] getSlaves() {
        return nativeGetSlaves();
    }

    public int getState() {
        synchronized (this) {
            try {
                int i = this.mState;
                if (i != -1) {
                    return i;
                }
                if (isReleased()) {
                    return 7;
                }
                int iNativeGetState = nativeGetState();
                synchronized (this) {
                    this.mState = iNativeGetState;
                }
                return iNativeGetState;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public Stats getStats() {
        return nativeGetStats();
    }

    public Track getTrack(int i) {
        Track[] tracks = getTracks();
        if (tracks == null || i < 0 || i >= tracks.length) {
            return null;
        }
        return tracks[i];
    }

    public int getTrackCount() {
        Track[] tracks = getTracks();
        if (tracks != null) {
            return tracks.length;
        }
        return 0;
    }

    public int getType() {
        synchronized (this) {
            try {
                int i = this.mType;
                if (i != -1) {
                    return i;
                }
                if (isReleased()) {
                    return 0;
                }
                int iNativeGetType = nativeGetType();
                synchronized (this) {
                    this.mType = iNativeGetType;
                }
                return iNativeGetType;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized Uri getUri() {
        return this.mUri;
    }

    public synchronized boolean isParsed() {
        return (this.mParseStatus & 2) != 0;
    }

    @Override
    public boolean isReleased() {
        return super.isReleased();
    }

    @Override
    public void onReleaseNative() {
        MediaList mediaList = this.mSubItems;
        if (mediaList != null) {
            mediaList.release();
        }
        nativeRelease();
    }

    public boolean parse(int i) {
        boolean z;
        synchronized (this) {
            try {
                int i2 = this.mParseStatus;
                if ((i2 & 3) == 0) {
                    this.mParseStatus = i2 | 1;
                    z = true;
                } else {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z || !nativeParse(i)) {
            return false;
        }
        postParse();
        return true;
    }

    public boolean parseAsync(int i, int i2) {
        boolean z;
        synchronized (this) {
            try {
                int i3 = this.mParseStatus;
                if ((i3 & 3) == 0) {
                    this.mParseStatus = i3 | 1;
                    z = true;
                } else {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z && nativeParseAsync(i, i2);
    }

    public void setDefaultMediaPlayerOptions() {
        boolean z;
        synchronized (this) {
            z = this.mCodecOptionSet;
            this.mCodecOptionSet = true;
        }
        if (!z) {
            setHWDecoderEnabled(true, false);
        }
        Uri uri = this.mUri;
        if (uri == null || uri.getScheme() == null || this.mUri.getScheme().equalsIgnoreCase("file") || this.mUri.getLastPathSegment() == null || !this.mUri.getLastPathSegment().toLowerCase().endsWith(".iso")) {
            return;
        }
        addOption(":demux=dvdnav,any");
    }

    public void setEventListener(EventListener eventListener) {
        super.setEventListener((VLCEvent.Listener) eventListener);
    }

    public void setHWDecoderEnabled(boolean z, boolean z2) {
        HWDecoderUtil.Decoder decoderFromDevice = z ? HWDecoderUtil.getDecoderFromDevice() : HWDecoderUtil.Decoder.NONE;
        HWDecoderUtil.Decoder decoder = HWDecoderUtil.Decoder.UNKNOWN;
        if (decoderFromDevice == decoder && z2) {
            decoderFromDevice = HWDecoderUtil.Decoder.ALL;
        }
        if (decoderFromDevice == HWDecoderUtil.Decoder.NONE || decoderFromDevice == decoder) {
            addOption(":codec=all");
            return;
        }
        if (!this.mFileCachingSet) {
            addOption(":file-caching=1500");
        }
        if (!this.mNetworkCachingSet) {
            addOption(":network-caching=1500");
        }
        StringBuilder sb = new StringBuilder(":codec=");
        if (decoderFromDevice == HWDecoderUtil.Decoder.MEDIACODEC || decoderFromDevice == HWDecoderUtil.Decoder.ALL) {
            sb.append(getMediaCodecModule());
            sb.append(StringUtils.COMMA);
        }
        if (z2 && (decoderFromDevice == HWDecoderUtil.Decoder.OMX || decoderFromDevice == HWDecoderUtil.Decoder.ALL)) {
            sb.append("iomx,");
        }
        sb.append(TtmlNode.COMBINE_ALL);
        addOption(sb.toString());
    }

    @Override
    public void setPinPVideoMode(boolean z) {
        super.setPinPVideoMode(z);
    }

    public MediaList subItems() {
        MediaList mediaList;
        synchronized (this) {
            try {
                MediaList mediaList2 = this.mSubItems;
                if (mediaList2 != null) {
                    mediaList2.retain();
                    return this.mSubItems;
                }
                MediaList mediaList3 = new MediaList(this);
                synchronized (this) {
                    this.mSubItems = mediaList3;
                    mediaList3.retain();
                    mediaList = this.mSubItems;
                }
                return mediaList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public synchronized Event onEventNative(int i, long j, long j2, long j3, long j4, float f, String str) {
        try {
            if (i == 0) {
                int i2 = (int) j;
                if (i2 >= 0 && i2 < 25) {
                    this.mNativeMetas[i2] = null;
                }
                return new Event(i, j);
            }
            if (i == 5) {
                this.mState = -1;
            } else if (i == 2) {
                this.mDuration = -1L;
            } else if (i == 3) {
                postParse();
                return new Event(i, j);
            }
            return new Event(i);
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean parseAsync(int i) {
        return parseAsync(i, -1);
    }

    public boolean parse() {
        return parse(2);
    }

    public boolean parseAsync() {
        return parseAsync(2);
    }

    public Media(LibVLC libVLC, Uri uri) {
        super(libVLC);
        this.mUri = null;
        this.mSubItems = null;
        this.mParseStatus = 0;
        this.mNativeMetas = new String[25];
        this.mNativeTracks = null;
        this.mDuration = -1L;
        this.mState = -1;
        this.mType = -1;
        this.mCodecOptionSet = false;
        this.mFileCachingSet = false;
        this.mNetworkCachingSet = false;
        nativeNewFromLocation(libVLC, VLCUtil.encodeVLCUri(uri));
        this.mUri = uri;
    }

    public Media(LibVLC libVLC, FileDescriptor fileDescriptor, long j, long j2) {
        super(libVLC);
        this.mUri = null;
        this.mSubItems = null;
        this.mParseStatus = 0;
        this.mNativeMetas = new String[25];
        this.mNativeTracks = null;
        this.mDuration = -1L;
        this.mState = -1;
        this.mType = -1;
        this.mCodecOptionSet = false;
        this.mFileCachingSet = false;
        this.mNetworkCachingSet = false;
        nativeNewFromFd(libVLC, fileDescriptor, j, j2);
        this.mUri = VLCUtil.UriFromMrl(nativeGetMrl());
    }

    public Media(LibVLC libVLC, int i, long j, long j2) {
        super(libVLC);
        this.mUri = null;
        this.mSubItems = null;
        this.mParseStatus = 0;
        this.mNativeMetas = new String[25];
        this.mNativeTracks = null;
        this.mDuration = -1L;
        this.mState = -1;
        this.mType = -1;
        this.mCodecOptionSet = false;
        this.mFileCachingSet = false;
        this.mNetworkCachingSet = false;
        nativeNewFromFdWithOffsetLength(libVLC, i, j, j2);
        this.mUri = VLCUtil.UriFromMrl(nativeGetMrl());
    }

    public Media(MediaList mediaList, int i) {
        super(mediaList);
        this.mUri = null;
        this.mSubItems = null;
        this.mParseStatus = 0;
        this.mNativeMetas = new String[25];
        this.mNativeTracks = null;
        this.mDuration = -1L;
        this.mState = -1;
        this.mType = -1;
        this.mCodecOptionSet = false;
        this.mFileCachingSet = false;
        this.mNetworkCachingSet = false;
        if (mediaList != null && !mediaList.isReleased()) {
            if (mediaList.isLocked()) {
                nativeNewFromMediaList(mediaList, i);
                this.mUri = VLCUtil.UriFromMrl(nativeGetMrl());
                return;
            }
            throw new IllegalStateException("MediaList should be locked");
        }
        throw new IllegalArgumentException("MediaList is null or released");
    }
}
