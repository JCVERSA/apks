package com.transsion.liblan;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.ITranMedia;
import com.transsion.liblan.interfaces.ITranMediaList;
import com.transsion.liblan.interfaces.TranAbstractLANEvent;
import com.transsion.liblan.util.AndroidUtil;
import com.transsion.liblan.util.HWDecoderUtil;
import com.transsion.liblan.util.LANUtil;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.FileDescriptor;

public class TranMedia extends LANObject<ITranMedia.EventTran> implements ITranMedia {
    private static final int PARSE_STATUS_INIT = 0;
    private static final int PARSE_STATUS_PARSED = 2;
    private static final int PARSE_STATUS_PARSING = 1;
    private static final String TAG = "LibLAN/TranMedia";
    private boolean mCodecOptionSet;
    private long mDuration;
    private boolean mFileCachingSet;
    private final String[] mNativeMetas;
    private ITranMedia.Track[] mNativeTracks;
    private boolean mNetworkCachingSet;
    private int mParseStatus;
    private int mState;
    private TranMediaList mSubItems;
    private int mType;
    private Uri mUri;

    public TranMedia(ITranLibLAN iTranLibLAN, String str) {
        super(iTranLibLAN);
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
        nativeNewFromPath(iTranLibLAN, str);
        this.mUri = LANUtil.UriFromMrl(nativeGetMrl());
    }

    private static ITranMedia.Track createAudioTrackFromNative(String str, String str2, int i, int i2, int i3, int i4, int i5, String str3, String str4, int i6, int i7) {
        return new ITranMedia.AudioTrack(str, str2, i, i2, i3, i4, i5, str3, str4, i6, i7);
    }

    private static ITranMedia.Slave createSlaveFromNative(int i, int i2, String str) {
        return new ITranMedia.Slave(i, i2, str);
    }

    private static ITranMedia.Stats createStatsFromNative(int i, float f, int i2, float f2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, float f3) {
        return new ITranMedia.Stats(i, f, i2, f2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, f3);
    }

    private static ITranMedia.Track createSubtitleTrackFromNative(String str, String str2, int i, int i2, int i3, int i4, int i5, String str3, String str4, String str5) {
        return new ITranMedia.SubtitleTrack(str, str2, i, i2, i3, i4, i5, str3, str4, str5);
    }

    private static ITranMedia.Track createUnknownTrackFromNative(String str, String str2, int i, int i2, int i3, int i4, int i5, String str3, String str4) {
        return new ITranMedia.UnknownTrack(str, str2, i, i2, i3, i4, i5, str3, str4);
    }

    private static ITranMedia.Track createVideoTrackFromNative(String str, String str2, int i, int i2, int i3, int i4, int i5, String str3, String str4, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
        return new ITranMedia.VideoTrack(str, str2, i, i2, i3, i4, i5, str3, str4, i6, i7, i8, i9, i10, i11, i12, i13);
    }

    private static String getMediaCodecModule() {
        return AndroidUtil.IS_LOLLI_POP_OR_LATER ? "mediacodec_ndk" : "mediacodec_jni";
    }

    private ITranMedia.Track[] getTracks() {
        synchronized (this) {
            try {
                ITranMedia.Track[] trackArr = this.mNativeTracks;
                if (trackArr != null) {
                    return trackArr;
                }
                if (isReleased()) {
                    return null;
                }
                ITranMedia.Track[] trackArrNativeGetTracks = nativeGetTracks();
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

    private native ITranMedia.Slave[] nativeGetSlaves();

    private native int nativeGetState();

    private native ITranMedia.Stats nativeGetStats();

    private native ITranMedia.Track[] nativeGetTracks();

    private native int nativeGetType();

    private native void nativeNewFromFd(ITranLibLAN iTranLibLAN, FileDescriptor fileDescriptor);

    private native void nativeNewFromFdWithOffsetLength(ITranLibLAN iTranLibLAN, FileDescriptor fileDescriptor, long j, long j2);

    private native void nativeNewFromLocation(ITranLibLAN iTranLibLAN, String str);

    private native void nativeNewFromMediaList(ITranMediaList iTranMediaList, int i);

    private native void nativeNewFromPath(ITranLibLAN iTranLibLAN, String str);

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

    @Override
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

    @Override
    public void addSlave(ITranMedia.Slave slave) {
        nativeAddSlave(slave.type, slave.priority, slave.uri);
    }

    @Override
    public void clearSlaves() {
        nativeClearSlaves();
    }

    @Override
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

    @Override
    public long getInstance() {
        return super.getInstance();
    }

    @Override
    public String getMeta(int i) {
        return getMeta(i, false);
    }

    @Override
    @Nullable
    public ITranMedia.Slave[] getSlaves() {
        return nativeGetSlaves();
    }

    @Override
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

    @Override
    @Nullable
    public ITranMedia.Stats getStats() {
        return nativeGetStats();
    }

    @Override
    public ITranMedia.Track getTrack(int i) {
        ITranMedia.Track[] tracks = getTracks();
        if (tracks == null || i < 0 || i >= tracks.length) {
            return null;
        }
        return tracks[i];
    }

    @Override
    public int getTrackCount() {
        ITranMedia.Track[] tracks = getTracks();
        if (tracks != null) {
            return tracks.length;
        }
        return 0;
    }

    @Override
    public ITranLibLAN getTranLibLAN() {
        return super.getTranLibLAN();
    }

    @Override
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

    @Override
    public synchronized Uri getUri() {
        return this.mUri;
    }

    @Override
    public synchronized boolean isParsed() {
        return (this.mParseStatus & 2) != 0;
    }

    @Override
    public boolean isReleased() {
        return super.isReleased();
    }

    @Override
    public void onReleaseNativeItem() {
        TranMediaList tranMediaList = this.mSubItems;
        if (tranMediaList != null) {
            tranMediaList.release();
        }
        nativeRelease();
    }

    @Override
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

    @Override
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

    @Override
    public void setEventListener(ITranMedia.EventListener eventListener) {
        super.setEventListener((TranAbstractLANEvent.Listener) eventListener);
    }

    @Override
    public void setHWDecoderEnabled(boolean z, boolean z2) {
        if (TranLibLAN.majorLibVersion() != 3) {
            if (z) {
                return;
            }
            addOption(":no-hw-dec");
            return;
        }
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
    public void setPlayerDefaultOptions() {
        boolean z;
        if (TranLibLAN.majorLibVersion() == 3) {
            synchronized (this) {
                z = this.mCodecOptionSet;
                this.mCodecOptionSet = true;
            }
            if (!z) {
                setHWDecoderEnabled(true, false);
            }
        }
        Uri uri = this.mUri;
        if (uri == null || uri.getScheme() == null || "file".equalsIgnoreCase(this.mUri.getScheme()) || this.mUri.getLastPathSegment() == null || !this.mUri.getLastPathSegment().toLowerCase().endsWith(".iso")) {
            return;
        }
        addOption(":demux=dvdnav,any");
    }

    @Override
    public String getMeta(int i, boolean z) {
        if (i < 0 || i >= 25) {
            return null;
        }
        if (!z) {
            synchronized (this) {
                try {
                    String str = this.mNativeMetas[i];
                    if (str != null) {
                        return str;
                    }
                    if (isReleased()) {
                        return null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        String strNativeGetMeta = nativeGetMeta(i);
        synchronized (this) {
            this.mNativeMetas[i] = strNativeGetMeta;
        }
        return strNativeGetMeta;
    }

    @Override
    public synchronized ITranMedia.EventTran onEventNative(int i, long j, long j2, float f, @Nullable String str) {
        try {
            if (i == 0) {
                int i2 = (int) j;
                if (i2 >= 0 && i2 < 25) {
                    this.mNativeMetas[i2] = null;
                }
                return new ITranMedia.EventTran(i, j);
            }
            if (i == 5) {
                this.mState = -1;
            } else if (i == 2) {
                this.mDuration = -1L;
            } else if (i == 3) {
                postParse();
                return new ITranMedia.EventTran(i, j);
            }
            return new ITranMedia.EventTran(i);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public TranMediaList subItems() {
        TranMediaList tranMediaList;
        synchronized (this) {
            try {
                TranMediaList tranMediaList2 = this.mSubItems;
                if (tranMediaList2 != null) {
                    tranMediaList2.retain();
                    return this.mSubItems;
                }
                TranMediaList tranMediaList3 = new TranMediaList(this);
                synchronized (this) {
                    this.mSubItems = tranMediaList3;
                    tranMediaList3.retain();
                    tranMediaList = this.mSubItems;
                }
                return tranMediaList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public boolean parseAsync(int i) {
        return parseAsync(i, -1);
    }

    @Override
    public boolean parse() {
        return parse(2);
    }

    @Override
    public boolean parseAsync() {
        return parseAsync(2);
    }

    public TranMedia(ITranLibLAN iTranLibLAN, Uri uri) {
        super(iTranLibLAN);
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
        nativeNewFromLocation(iTranLibLAN, LANUtil.encodeLANUri(uri));
        this.mUri = uri;
    }

    public TranMedia(ITranLibLAN iTranLibLAN, FileDescriptor fileDescriptor) {
        super(iTranLibLAN);
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
        nativeNewFromFd(iTranLibLAN, fileDescriptor);
        this.mUri = LANUtil.UriFromMrl(nativeGetMrl());
    }

    public TranMedia(ITranLibLAN iTranLibLAN, AssetFileDescriptor assetFileDescriptor) {
        super(iTranLibLAN);
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
        nativeNewFromFdWithOffsetLength(iTranLibLAN, assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        this.mUri = LANUtil.UriFromMrl(nativeGetMrl());
    }

    public TranMedia(ITranMediaList iTranMediaList, int i) {
        super(iTranMediaList);
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
        if (iTranMediaList != null && !iTranMediaList.isReleased()) {
            if (iTranMediaList.isBeLocked()) {
                nativeNewFromMediaList(iTranMediaList, i);
                this.mUri = LANUtil.UriFromMrl(nativeGetMrl());
                return;
            }
            throw new IllegalStateException("MediaList should be locked");
        }
        throw new IllegalArgumentException("MediaList is null or released");
    }
}
