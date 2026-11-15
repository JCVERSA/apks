package com.transsion.liblan;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetFileDescriptor;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.transsion.liblan.interfaces.ITranLANVout;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.ITranMedia;
import com.transsion.liblan.interfaces.TranAbstractLANEvent;
import com.transsion.liblan.util.AndroidUtil;
import com.transsion.liblan.util.DisplayManager;
import com.transsion.liblan.util.LANUtil;
import com.transsion.liblan.util.LANVideoLayout;
import java.io.File;
import java.io.IOException;

public class TranMediaPlayer extends LANObject<EventTran> {
    public static final int SURFACE_SCALES_COUNT = ScaleType.values().length;
    public static final String TAG = "TranMediaPlayer";
    private AssetFileDescriptor mAfd;
    private final AudioDeviceCallback mAudioDeviceCallback;
    private boolean mAudioDigitalOutputEnabled;
    private String mAudioOutput;
    private String mAudioOutputDevice;
    private String mAudioPlugOutputDevice;
    private final BroadcastReceiver mAudioPlugReceiver;
    private boolean mAudioPlugRegistered;
    private boolean mAudioReset;
    private boolean mCanDoPassthrough;
    Handler mHandlerMainThread;
    private boolean mListenAudioPlug;
    private boolean mListenVideo;
    private ITranMedia mMedia;
    private boolean mPlayRequested;
    private boolean mPlaying;
    private RendererItem mRenderer;
    private LanVideoHelper mVideoHelper;
    private int mVoutCount;
    private final TranWindow mWindow;

    public static class Chapter {
        public final long duration;
        public final String name;
        public final long timeOffset;

        private Chapter(long j, long j2, String str) {
            this.timeOffset = j;
            this.duration = j2;
            this.name = str;
        }
    }

    public interface EventListener extends TranAbstractLANEvent.Listener<EventTran> {
    }

    public static class EventTran extends TranAbstractLANEvent {
        public static final int BUFFERING = 259;
        public static final int ENCOUNTERED_ERROR = 266;
        public static final int END_REACHED = 265;
        public static final int ES_ADDED = 276;
        public static final int ES_DELETED = 277;
        public static final int ES_SELECTED = 278;
        public static final int LENGTH_CHANGED = 273;
        public static final int MEDIA_CHANGED = 256;
        public static final int OPENING = 258;
        public static final int PAUSABLE_CHANGED = 270;
        public static final int PAUSED = 261;
        public static final int PLAYING = 260;
        public static final int POSITION_CHANGED = 268;
        public static final int RECORD_CHANGED = 286;
        public static final int SEEKABLE_CHANGED = 269;
        public static final int STOPPED = 262;
        public static final int TIME_CHANGED = 267;
        public static final int VOUT = 274;

        public EventTran(int i) {
            super(i);
        }

        public static String eventToString(int i) {
            if (i == 256) {
                return "MediaChanged";
            }
            if (i == 262) {
                return "Stopped";
            }
            if (i == 286) {
                return "RecordChanged";
            }
            if (i == 258) {
                return "Opening";
            }
            if (i == 259) {
                return "Buffering";
            }
            if (i == 273) {
                return "LengthChanged";
            }
            if (i == 274) {
                return "Vout";
            }
            switch (i) {
                case 265:
                    return "EndReached";
                case 266:
                    return "EncounteredError";
                case 267:
                    return "TimeChanged";
                case 268:
                    return "PositionChanged";
                case 269:
                    return "SeekableChanged";
                case 270:
                    return "PausableChanged";
                default:
                    switch (i) {
                        case 276:
                            return "ESAdded";
                        case 277:
                            return "ESDeleted";
                        case 278:
                            return "ESSelected";
                        default:
                            return String.valueOf(i);
                    }
            }
        }

        public float getBuffering() {
            return this.argf1;
        }

        public int getEsChangedID() {
            return (int) this.arg2;
        }

        public int getEsChangedType() {
            return (int) this.arg1;
        }

        public long getLengthChanged() {
            return this.arg1;
        }

        public boolean getPausable() {
            return this.arg1 != 0;
        }

        public float getPositionChanged() {
            return this.argf1;
        }

        @Nullable
        public String getRecordPath() {
            return this.args1;
        }

        public boolean getRecording() {
            return this.arg1 != 0;
        }

        public boolean getSeekable() {
            return this.arg1 != 0;
        }

        public long getTimeChanged() {
            return this.arg1;
        }

        public int getVoutCount() {
            return (int) this.arg1;
        }

        public EventTran(int i, long j) {
            super(i, j);
        }

        public EventTran(int i, long j, long j2) {
            super(i, j, j2);
        }

        public EventTran(int i, float f) {
            super(i, f);
        }

        public EventTran(int i, long j, @Nullable String str) {
            super(i, j, str);
        }
    }

    public static class Navigate {
        public static final int ACTIVATE = 0;
        public static final int DOWN = 2;
        public static final int LEFT = 3;
        public static final int RIGHT = 4;
        public static final int UP = 1;
    }

    public static class Position {
        public static final int BOTTOM = 6;
        public static final int BOTTOM_LEFT = 7;
        public static final int BOTTOM_RIGHT = 8;
        public static final int CENTER = 0;
        public static final int DISABLE = -1;
        public static final int LEFT = 1;
        public static final int RIGHT = 2;
        public static final int TOP = 3;
        public static final int TOP_LEFT = 4;
        public static final int TOP_RIGHT = 5;
    }

    public enum ScaleType {
        SURFACE_BEST_FIT,
        SURFACE_FIT_SCREEN,
        SURFACE_FILL,
        SURFACE_16_9,
        SURFACE_4_3,
        SURFACE_ORIGINAL
    }

    public static class Title {
        public final long duration;
        private final int flags;
        public final String name;

        public static class Flags {
            public static final int INTERACTIVE = 2;
            public static final int MENU = 1;

            private Flags() {
            }
        }

        public Title(long j, String str, int i) {
            this.duration = j;
            this.name = str;
            this.flags = i;
        }

        public boolean isInteractive() {
            return (this.flags & 2) != 0;
        }

        public boolean isMenu() {
            return (this.flags & 1) != 0;
        }
    }

    public static class TrackDescription {
        public final int id;
        public final String name;

        private TrackDescription(int i, String str) {
            this.id = i;
            this.name = str;
        }
    }

    public TranMediaPlayer(ITranLibLAN iTranLibLAN) {
        super(iTranLibLAN);
        this.mMedia = null;
        this.mRenderer = null;
        this.mAfd = null;
        this.mPlaying = false;
        this.mPlayRequested = false;
        this.mListenAudioPlug = true;
        this.mVoutCount = 0;
        this.mAudioReset = false;
        this.mAudioOutput = "android_audiotrack";
        this.mAudioOutputDevice = null;
        this.mAudioPlugRegistered = false;
        this.mAudioDigitalOutputEnabled = false;
        this.mAudioPlugOutputDevice = "stereo";
        this.mVideoHelper = null;
        TranWindow tranWindow = new TranWindow(new TranWindow.SurfaceCallback() {
            @Override
            public void onSurfacesCreated(TranWindow tranWindow2) {
                boolean z;
                boolean z2;
                synchronized (TranMediaPlayer.this) {
                    try {
                        z = false;
                        if (TranMediaPlayer.this.mPlaying || !TranMediaPlayer.this.mPlayRequested) {
                            z2 = TranMediaPlayer.this.mVoutCount == 0;
                        } else {
                            z2 = false;
                            z = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z) {
                    TranMediaPlayer.this.play();
                } else if (z2) {
                    TranMediaPlayer.this.setVideoTrackEnabled(true);
                }
            }

            @Override
            public void onSurfacesDestroyed(TranWindow tranWindow2) {
                boolean z;
                synchronized (TranMediaPlayer.this) {
                    z = TranMediaPlayer.this.mVoutCount > 0;
                }
                if (z) {
                    TranMediaPlayer.this.setVideoTrackEnabled(false);
                }
            }
        });
        this.mWindow = tranWindow;
        this.mAudioPlugReceiver = (!AndroidUtil.IS_LOLLI_POP_OR_LATER || AndroidUtil.IS_MARSH_MALLOW_OR_LATER) ? null : createAudioPlugReceiver();
        this.mAudioDeviceCallback = AndroidUtil.IS_MARSH_MALLOW_OR_LATER ? createAudioDeviceCallback() : null;
        this.mHandlerMainThread = new Handler(Looper.getMainLooper());
        nativeNewFromLibLan(iTranLibLAN, tranWindow);
    }

    @TargetApi(23)
    private AudioDeviceCallback createAudioDeviceCallback() {
        return new AudioDeviceCallback() {
            private final SparseArray<Long> mEncodedDevices = new SparseArray<>();

            private void onAudioDevicesChanged() {
                long jLongValue = 0;
                for (int i = 0; i < this.mEncodedDevices.size(); i++) {
                    jLongValue |= this.mEncodedDevices.valueAt(i).longValue();
                }
                TranMediaPlayer.this.updateAudioOutputDevice(jLongValue, jLongValue == 0 ? "stereo" : "pcm");
            }

            @Override
            @RequiresApi(23)
            public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                for (AudioDeviceInfo audioDeviceInfo : audioDeviceInfoArr) {
                    if (audioDeviceInfo.isSink()) {
                        long encodingFlags = TranMediaPlayer.this.getEncodingFlags(audioDeviceInfo.getEncodings());
                        if (encodingFlags != 0) {
                            this.mEncodedDevices.put(audioDeviceInfo.getId(), Long.valueOf(encodingFlags));
                        }
                    }
                }
                onAudioDevicesChanged();
            }

            @Override
            @RequiresApi(23)
            public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
                for (AudioDeviceInfo audioDeviceInfo : audioDeviceInfoArr) {
                    if (audioDeviceInfo.isSink()) {
                        this.mEncodedDevices.remove(audioDeviceInfo.getId());
                    }
                }
                onAudioDevicesChanged();
            }
        };
    }

    @TargetApi(21)
    private BroadcastReceiver createAudioPlugReceiver() {
        return new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                if (intent == null) {
                    return;
                }
                try {
                    String action = intent.getAction();
                    if (action != null && action.equalsIgnoreCase("android.media.action.HDMI_AUDIO_PLUG")) {
                        TranMediaPlayer.this.updateAudioOutputDevice(intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 1 ? TranMediaPlayer.this.getEncodingFlags(intent.getIntArrayExtra("android.media.extra.ENCODINGS")) : 0L, "stereo");
                    }
                } catch (Exception e) {
                    Log.e(TranMediaPlayer.TAG, "audioPlugReceiver onReceive error: " + e.getMessage());
                }
            }
        };
    }

    private static Chapter createChapterFromNative(long j, long j2, String str) {
        return new Chapter(j, j2, str);
    }

    private static Title createTitleFromNative(long j, String str, int i) {
        return new Title(j, str, i);
    }

    private static TrackDescription createTrackDescriptionFromNative(int i, String str) {
        return new TrackDescription(i, str);
    }

    public long getEncodingFlags(int[] iArr) {
        long j = 0;
        if (iArr == null) {
            return 0L;
        }
        for (int i : iArr) {
            if (isEncoded(i)) {
                j |= (long) (1 << i);
            }
        }
        return j;
    }

    private boolean isAudioTrack() {
        String str = this.mAudioOutput;
        return str != null && "android_audiotrack".equals(str);
    }

    private boolean isEncoded(int i) {
        return i == 5 || i == 6 || i == 7 || i == 8 || i == 14;
    }

    private native boolean nativeAddSlave(int i, String str, boolean z);

    private native String nativeGetAspectRatio();

    private native long nativeGetAudioDelay();

    private native int nativeGetAudioTrack();

    private native TrackDescription[] nativeGetAudioTracks();

    private native int nativeGetAudioTracksCount();

    private native Chapter[] nativeGetChapters(int i);

    private native float nativeGetScale();

    private native long nativeGetSpuDelay();

    private native int nativeGetSpuTrack();

    private native TrackDescription[] nativeGetSpuTracks();

    private native int nativeGetSpuTracksCount();

    private native Title[] nativeGetTitles();

    private native int nativeGetVideoTrack();

    private native TrackDescription[] nativeGetVideoTracks();

    private native int nativeGetVideoTracksCount();

    private native void nativeNewFromLibLan(ITranLibLAN iTranLibLAN, TranWindow tranWindow);

    private native void nativeNewFromMedia(ITranMedia iTranMedia, TranWindow tranWindow);

    private native void nativePlay();

    private native boolean nativeRecord(String str);

    private native void nativeRelease();

    private native void nativeSetAspectRatio(String str);

    private native boolean nativeSetAudioDelay(long j);

    private native boolean nativeSetAudioOutput(String str);

    private native boolean nativeSetAudioOutputDevice(String str);

    private native boolean nativeSetAudioTrack(int i);

    private native boolean nativeSetEqualizer(Equalizer equalizer);

    private native void nativeSetMedia(ITranMedia iTranMedia);

    private native int nativeSetRenderer(RendererItem rendererItem);

    private native void nativeSetScale(float f);

    private native boolean nativeSetSpuDelay(long j);

    private native boolean nativeSetSpuTrack(int i);

    private native void nativeSetVideoTitleDisplay(int i, int i2);

    private native boolean nativeSetVideoTrack(int i);

    private native void nativeStop();

    private native boolean nativeUpdateViewpoint(float f, float f2, float f3, float f4, boolean z);

    private void registerAudioPlug(boolean z) {
        if (z == this.mAudioPlugRegistered) {
            return;
        }
        if (this.mAudioDeviceCallback != null) {
            registerAudioPlugV23(z);
        } else if (this.mAudioPlugReceiver != null) {
            registerAudioPlugV21(z);
        }
        this.mAudioPlugRegistered = z;
    }

    @TargetApi(21)
    private void registerAudioPlugV21(boolean z) {
        if (!z) {
            this.mITranLibLAN.getAppContext().unregisterReceiver(this.mAudioPlugReceiver);
            return;
        }
        Intent intentRegisterReceiver = this.mITranLibLAN.getAppContext().registerReceiver(this.mAudioPlugReceiver, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        if (intentRegisterReceiver != null) {
            this.mAudioPlugReceiver.onReceive(this.mITranLibLAN.getAppContext(), intentRegisterReceiver);
        }
    }

    @TargetApi(23)
    private void registerAudioPlugV23(boolean z) {
        AudioManager audioManager = (AudioManager) this.mITranLibLAN.getAppContext().getSystemService(AudioManager.class);
        if (!z) {
            audioManager.unregisterAudioDeviceCallback(this.mAudioDeviceCallback);
        } else {
            this.mAudioDeviceCallback.onAudioDevicesAdded(audioManager.getDevices(2));
            audioManager.registerAudioDeviceCallback(this.mAudioDeviceCallback, null);
        }
    }

    private synchronized boolean setAudioOutputDeviceInternal(String str, boolean z) {
        boolean zNativeSetAudioOutputDevice;
        try {
            this.mAudioOutputDevice = str;
            if (z) {
                boolean z2 = str == null && isAudioTrack();
                this.mListenAudioPlug = z2;
                if (!z2) {
                    registerAudioPlug(false);
                }
            }
            zNativeSetAudioOutputDevice = nativeSetAudioOutputDevice(str);
            if (!zNativeSetAudioOutputDevice) {
                this.mAudioOutputDevice = null;
                this.mListenAudioPlug = false;
            }
            if (this.mListenAudioPlug) {
                registerAudioPlug(true);
            }
        } catch (Throwable th) {
            throw th;
        }
        return zNativeSetAudioOutputDevice;
    }

    public synchronized void updateAudioOutputDevice(long j, String str) {
        boolean z = j != 0;
        try {
            this.mCanDoPassthrough = z;
            if (this.mAudioDigitalOutputEnabled && z) {
                str = "encoded:" + j;
            }
            if (!str.equals(this.mAudioPlugOutputDevice)) {
                this.mAudioPlugOutputDevice = str;
                setAudioOutputDeviceInternal(str, false);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean addSlave(int i, Uri uri, boolean z) {
        return nativeAddSlave(i, LANUtil.encodeLANUri(uri), z);
    }

    public void attachViews(@NonNull LANVideoLayout lANVideoLayout, @Nullable DisplayManager displayManager, boolean z, boolean z2) {
        LanVideoHelper lanVideoHelper = new LanVideoHelper(this, lANVideoLayout, displayManager, z, z2);
        this.mVideoHelper = lanVideoHelper;
        lanVideoHelper.attachViews();
    }

    public boolean canDoPassthrough() {
        return this.mCanDoPassthrough;
    }

    public void detachViews() {
        LanVideoHelper lanVideoHelper = this.mVideoHelper;
        if (lanVideoHelper != null) {
            lanVideoHelper.release();
            this.mVideoHelper = null;
        }
    }

    public synchronized boolean forceAudioDigitalEncodings(int[] iArr) {
        try {
            if (!isAudioTrack()) {
                return false;
            }
            if (iArr.length == 0) {
                setAudioOutputDeviceInternal(null, true);
            } else {
                String str = "encoded:" + getEncodingFlags(iArr);
                if (!str.equals(this.mAudioPlugOutputDevice)) {
                    this.mAudioPlugOutputDevice = str;
                    setAudioOutputDeviceInternal(str, true);
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public String getAspectRatio() {
        return nativeGetAspectRatio();
    }

    public long getAudioDelay() {
        return nativeGetAudioDelay();
    }

    public int getAudioTrack() {
        return nativeGetAudioTrack();
    }

    public TrackDescription[] getAudioTracks() {
        return nativeGetAudioTracks();
    }

    public int getAudioTracksCount() {
        return nativeGetAudioTracksCount();
    }

    public native int getChapter();

    public Chapter[] getChapters(int i) {
        return nativeGetChapters(i);
    }

    public ITranMedia.VideoTrack getCurrentVideoTrack() {
        if (getVideoTrack() == -1) {
            return null;
        }
        int trackCount = this.mMedia.getTrackCount();
        for (int i = 0; i < trackCount; i++) {
            ITranMedia.Track track = this.mMedia.getTrack(i);
            if (track.type == 1) {
                return (ITranMedia.VideoTrack) track;
            }
        }
        return null;
    }

    @Override
    public long getInstance() {
        return super.getInstance();
    }

    public native long getLength();

    @Nullable
    public synchronized ITranMedia getMedia() {
        try {
            ITranMedia iTranMedia = this.mMedia;
            if (iTranMedia != null) {
                iTranMedia.retain();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.mMedia;
    }

    public native int getPlayerState();

    public native float getPosition();

    public native float getRate();

    public float getScale() {
        return nativeGetScale();
    }

    public long getSpuDelay() {
        return nativeGetSpuDelay();
    }

    public int getSpuTrack() {
        return nativeGetSpuTrack();
    }

    public TrackDescription[] getSpuTracks() {
        return nativeGetSpuTracks();
    }

    public int getSpuTracksCount() {
        return nativeGetSpuTracksCount();
    }

    public int getSurfaceState() {
        TranWindow tranWindow = this.mWindow;
        if (tranWindow == null) {
            return -1;
        }
        return tranWindow.getSurfaceState();
    }

    public native long getTime();

    public native int getTitle();

    public Title[] getTitles() {
        return nativeGetTitles();
    }

    @NonNull
    public ITranLANVout getTranLANVout() {
        return this.mWindow;
    }

    @Override
    public ITranLibLAN getTranLibLAN() {
        return super.getTranLibLAN();
    }

    public LanVideoHelper getVideoHelper() {
        return this.mVideoHelper;
    }

    @NonNull
    public ScaleType getVideoScale() {
        LanVideoHelper lanVideoHelper = this.mVideoHelper;
        return lanVideoHelper != null ? lanVideoHelper.getVideoScale() : ScaleType.SURFACE_BEST_FIT;
    }

    public int getVideoTrack() {
        return nativeGetVideoTrack();
    }

    public TrackDescription[] getVideoTracks() {
        return nativeGetVideoTracks();
    }

    public int getVideoTracksCount() {
        return nativeGetVideoTracksCount();
    }

    public native int getVolume();

    public synchronized boolean hasMedia() {
        return this.mMedia != null;
    }

    public native boolean isPlaying();

    @Override
    public boolean isReleased() {
        return super.isReleased();
    }

    public native boolean isSeekable();

    public native void nativeSetPosition(float f, boolean z);

    public native long nativeSetTime(long j, boolean z);

    public native void navigate(int i);

    public native int nextChapter();

    public void onPause() {
        Log.d(TAG, "onPause " + this.mPlaying);
        synchronized (this) {
            this.mPlayRequested = false;
            this.mPlaying = false;
        }
        pause();
    }

    @Override
    public void onReleaseNativeItem() {
        detachViews();
        this.mWindow.detachViews();
        registerAudioPlug(false);
        ITranMedia iTranMedia = this.mMedia;
        if (iTranMedia != null) {
            iTranMedia.release();
        }
        RendererItem rendererItem = this.mRenderer;
        if (rendererItem != null) {
            rendererItem.release();
        }
        this.mVoutCount = 0;
        nativeRelease();
    }

    public native void pause();

    public void play() {
        synchronized (this) {
            try {
                Log.d(TAG, "play " + this.mPlaying);
                if (!this.mPlaying) {
                    if (this.mAudioReset) {
                        String str = this.mAudioOutput;
                        if (str != null) {
                            nativeSetAudioOutput(str);
                        }
                        String str2 = this.mAudioOutputDevice;
                        if (str2 != null) {
                            nativeSetAudioOutputDevice(str2);
                        }
                        this.mAudioReset = false;
                    }
                    if (this.mListenAudioPlug) {
                        registerAudioPlug(true);
                    }
                    this.mPlayRequested = true;
                    if (this.mWindow.areSurfacesWaiting()) {
                        Log.w(TAG, "play areSurfacesWaiting");
                        return;
                    }
                }
                this.mPlaying = true;
                Log.i(TAG, "play mPlaying");
                nativePlay();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void playAsset(@NonNull Context context, @NonNull String str) throws IOException {
        AssetFileDescriptor assetFileDescriptorOpenFd = context.getAssets().openFd(str);
        this.mAfd = assetFileDescriptorOpenFd;
        play(assetFileDescriptorOpenFd);
    }

    public native int previousChapter();

    public boolean record(String str) {
        return nativeRecord(str);
    }

    public void setAspectRatio(String str) {
        nativeSetAspectRatio(str);
    }

    public boolean setAudioDelay(long j) {
        return nativeSetAudioDelay(j);
    }

    public synchronized boolean setAudioDigitalOutputEnabled(boolean z) {
        if (z == this.mAudioDigitalOutputEnabled) {
            return true;
        }
        if (this.mListenAudioPlug && isAudioTrack()) {
            registerAudioPlug(false);
            this.mAudioDigitalOutputEnabled = z;
            registerAudioPlug(true);
            return true;
        }
        return false;
    }

    public synchronized boolean setAudioOutput(String str) {
        boolean zNativeSetAudioOutput;
        try {
            this.mAudioOutput = str;
            boolean zIsAudioTrack = isAudioTrack();
            this.mListenAudioPlug = zIsAudioTrack;
            if (!zIsAudioTrack) {
                registerAudioPlug(false);
            }
            zNativeSetAudioOutput = nativeSetAudioOutput(str);
            if (!zNativeSetAudioOutput) {
                this.mAudioOutput = null;
                this.mListenAudioPlug = false;
            }
            if (this.mListenAudioPlug) {
                registerAudioPlug(true);
            }
        } catch (Throwable th) {
            throw th;
        }
        return zNativeSetAudioOutput;
    }

    public boolean setAudioOutputDevice(String str) {
        return setAudioOutputDeviceInternal(str, true);
    }

    public boolean setAudioTrack(int i) {
        return nativeSetAudioTrack(i);
    }

    public native void setChapter(int i);

    public boolean setEqualizer(Equalizer equalizer) {
        return nativeSetEqualizer(equalizer);
    }

    public synchronized void setEventListener(EventListener eventListener) {
        super.setEventListener((TranAbstractLANEvent.Listener) eventListener);
    }

    public void setListenVideoMode(boolean z) {
        Log.d(TAG, "setListenVideoMode " + z);
        this.mListenVideo = z;
    }

    public void setMedia(ITranMedia iTranMedia) {
        if (iTranMedia != null) {
            if (iTranMedia.isReleased()) {
                throw new IllegalArgumentException("Media is released");
            }
            iTranMedia.setPlayerDefaultOptions();
        }
        nativeSetMedia(iTranMedia);
        synchronized (this) {
            try {
                ITranMedia iTranMedia2 = this.mMedia;
                if (iTranMedia2 != null) {
                    iTranMedia2.release();
                }
                if (iTranMedia != null) {
                    iTranMedia.retain();
                }
                this.mMedia = iTranMedia;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setPosition(float f, boolean z) {
        nativeSetPosition(f, z);
    }

    public native void setRate(float f);

    public int setRenderer(@Nullable RendererItem rendererItem) {
        RendererItem rendererItem2 = this.mRenderer;
        if (rendererItem2 != null) {
            rendererItem2.release();
        }
        if (rendererItem != null) {
            rendererItem.retain();
        }
        this.mRenderer = rendererItem;
        return nativeSetRenderer(rendererItem);
    }

    public void setScale(float f) {
        nativeSetScale(f);
    }

    public boolean setSpuDelay(long j) {
        return nativeSetSpuDelay(j);
    }

    public boolean setSpuTrack(int i) {
        return nativeSetSpuTrack(i);
    }

    public long setTime(long j, boolean z) {
        return nativeSetTime(j, z);
    }

    public native void setTitle(int i);

    public void setVideoScale(@NonNull ScaleType scaleType) {
        LanVideoHelper lanVideoHelper = this.mVideoHelper;
        if (lanVideoHelper != null) {
            lanVideoHelper.setVideoScale(scaleType);
        }
    }

    public void setVideoTitleDisplay(int i, int i2) {
        nativeSetVideoTitleDisplay(i, i2);
    }

    public boolean setVideoTrack(int i) {
        if (i == -1 || (this.mWindow.areViewsAttached() && !this.mWindow.areSurfacesWaiting())) {
            return nativeSetVideoTrack(i);
        }
        return false;
    }

    public void setVideoTrackEnabled(boolean z) {
        TrackDescription[] videoTracks;
        if (!z) {
            setVideoTrack(-1);
            return;
        }
        if (isReleased() || !hasMedia() || getVideoTrack() != -1 || (videoTracks = getVideoTracks()) == null) {
            return;
        }
        for (TrackDescription trackDescription : videoTracks) {
            int i = trackDescription.id;
            if (i != -1) {
                setVideoTrack(i);
                return;
            }
        }
    }

    public native int setVolume(int i);

    public void stop() {
        Log.d(TAG, "stop");
        synchronized (this) {
            this.mPlayRequested = false;
            this.mPlaying = false;
            this.mAudioReset = true;
        }
        if (!isReleased()) {
            nativeStop();
        }
        AssetFileDescriptor assetFileDescriptor = this.mAfd;
        if (assetFileDescriptor != null) {
            try {
                assetFileDescriptor.close();
            } catch (IOException unused) {
            }
        }
    }

    public void updateVideoSurfaces() {
        LanVideoHelper lanVideoHelper = this.mVideoHelper;
        if (lanVideoHelper != null) {
            lanVideoHelper.updateVideoSurfaces();
        }
    }

    public boolean updateViewpoint(float f, float f2, float f3, float f4, boolean z) {
        return nativeUpdateViewpoint(f, f2, f3, f4, z);
    }

    public static class Equalizer {
        private long mInstance;

        private Equalizer() {
            nativeNew();
        }

        public static Equalizer create() {
            return new Equalizer();
        }

        public static Equalizer createFromPreset(int i) {
            return new Equalizer(i);
        }

        public static int getBandCount() {
            return nativeGetBandCount();
        }

        public static float getBandFrequency(int i) {
            return nativeGetBandFrequency(i);
        }

        public static int getPresetCount() {
            return nativeGetPresetCount();
        }

        public static String getPresetName(int i) {
            return nativeGetPresetName(i);
        }

        private native float nativeGetAmp(int i);

        private static native int nativeGetBandCount();

        private static native float nativeGetBandFrequency(int i);

        private native float nativeGetPreAmp();

        private static native int nativeGetPresetCount();

        private static native String nativeGetPresetName(int i);

        private native void nativeNew();

        private native void nativeNewFromPreset(int i);

        private native void nativeRelease();

        private native boolean nativeSetAmp(int i, float f);

        private native boolean nativeSetPreAmp(float f);

        public void finalize() throws Throwable {
            try {
                nativeRelease();
            } finally {
                super.finalize();
            }
        }

        public float getAmp(int i) {
            return nativeGetAmp(i);
        }

        public float getPreAmp() {
            return nativeGetPreAmp();
        }

        public boolean setAmp(int i, float f) {
            return nativeSetAmp(i, f);
        }

        public boolean setPreAmp(float f) {
            return nativeSetPreAmp(f);
        }

        private Equalizer(int i) {
            nativeNewFromPreset(i);
        }
    }

    public boolean addSlave(int i, String str, boolean z) {
        return addSlave(i, Uri.fromFile(new File(str)), z);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:44:0x006b  */
    @Override
    public synchronized EventTran onEventNative(int i, long j, long j2, float f, @Nullable String str) {
        try {
            if (i == 256) {
                this.mVoutCount = 0;
                notify();
            } else {
                if (i == 286) {
                    return new EventTran(i, j, str);
                }
                if (i == 273) {
                    return new EventTran(i, j);
                }
                if (i == 274) {
                    this.mVoutCount = (int) j;
                    notify();
                    this.mHandlerMainThread.post(new Runnable() {
                        @Override
                        public void run() {
                            TranMediaPlayer.this.updateVideoSurfaces();
                        }
                    });
                    return new EventTran(i, j);
                }
                switch (i) {
                    case 258:
                    case 259:
                        break;
                    case 260:
                    case 261:
                        return new EventTran(i);
                    case 262:
                        this.mVoutCount = 0;
                        notify();
                        break;
                    default:
                        switch (i) {
                            case 265:
                            case 266:
                                this.mVoutCount = 0;
                                notify();
                                break;
                            case 267:
                                return new EventTran(i, j);
                            case 268:
                                return new EventTran(i, f);
                            case 269:
                            case 270:
                                return new EventTran(i, j);
                            default:
                                switch (i) {
                                    case 276:
                                    case 277:
                                    case 278:
                                        return new EventTran(i, j, j2);
                                    default:
                                        return null;
                                }
                        }
                        break;
                }
            }
            return new EventTran(i, f);
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setPosition(float f) {
        nativeSetPosition(f, false);
    }

    public long setTime(long j) {
        return nativeSetTime(j, false);
    }

    public TranMediaPlayer(@NonNull ITranMedia iTranMedia) {
        super(iTranMedia);
        this.mMedia = null;
        this.mRenderer = null;
        this.mAfd = null;
        this.mPlaying = false;
        this.mPlayRequested = false;
        this.mListenAudioPlug = true;
        this.mVoutCount = 0;
        this.mAudioReset = false;
        this.mAudioOutput = "android_audiotrack";
        this.mAudioOutputDevice = null;
        this.mAudioPlugRegistered = false;
        this.mAudioDigitalOutputEnabled = false;
        this.mAudioPlugOutputDevice = "stereo";
        this.mVideoHelper = null;
        TranWindow tranWindow = new TranWindow(new TranWindow.SurfaceCallback() {
            @Override
            public void onSurfacesCreated(TranWindow tranWindow2) {
                boolean z;
                boolean z2;
                synchronized (TranMediaPlayer.this) {
                    try {
                        z = false;
                        if (TranMediaPlayer.this.mPlaying || !TranMediaPlayer.this.mPlayRequested) {
                            z2 = TranMediaPlayer.this.mVoutCount == 0;
                        } else {
                            z2 = false;
                            z = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z) {
                    TranMediaPlayer.this.play();
                } else if (z2) {
                    TranMediaPlayer.this.setVideoTrackEnabled(true);
                }
            }

            @Override
            public void onSurfacesDestroyed(TranWindow tranWindow2) {
                boolean z;
                synchronized (TranMediaPlayer.this) {
                    z = TranMediaPlayer.this.mVoutCount > 0;
                }
                if (z) {
                    TranMediaPlayer.this.setVideoTrackEnabled(false);
                }
            }
        });
        this.mWindow = tranWindow;
        this.mAudioPlugReceiver = (!AndroidUtil.IS_LOLLI_POP_OR_LATER || AndroidUtil.IS_MARSH_MALLOW_OR_LATER) ? null : createAudioPlugReceiver();
        this.mAudioDeviceCallback = AndroidUtil.IS_MARSH_MALLOW_OR_LATER ? createAudioDeviceCallback() : null;
        this.mHandlerMainThread = new Handler(Looper.getMainLooper());
        if (iTranMedia != null && !iTranMedia.isReleased()) {
            this.mMedia = iTranMedia;
            iTranMedia.retain();
            nativeNewFromMedia(this.mMedia, tranWindow);
            return;
        }
        throw new IllegalArgumentException("Media is null or released");
    }

    public void play(@NonNull AssetFileDescriptor assetFileDescriptor) {
        play(new TranMedia(this.mITranLibLAN, assetFileDescriptor));
    }

    public void play(@NonNull String str) {
        play(new TranMedia(this.mITranLibLAN, str));
    }

    public void play(@NonNull Uri uri) {
        play(new TranMedia(this.mITranLibLAN, uri));
    }

    public void play(@NonNull ITranMedia iTranMedia) {
        setMedia(iTranMedia);
        iTranMedia.release();
        play();
    }
}
