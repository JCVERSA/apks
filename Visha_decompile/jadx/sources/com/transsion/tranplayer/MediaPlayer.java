package com.transsion.tranplayer;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.util.SparseArray;
import com.transsion.audiotagger.audio.ogg.util.OggPageHeader;
import com.transsion.tranplayer.util.AndroidUtil;
import com.transsion.tranplayer.util.VLCUtil;
import java.io.File;

public class MediaPlayer extends VLCObject<Event> {
    private final AudioDeviceCallback mAudioDeviceCallback;
    private boolean mAudioDigitalOutputEnabled;
    private String mAudioOutput;
    private String mAudioOutputDevice;
    private String mAudioPlugOutputDevice;
    private final BroadcastReceiver mAudioPlugReceiver;
    private boolean mAudioPlugRegistered;
    private boolean mAudioReset;
    private boolean mCanDoPassthrough;
    private GLRenderer mGLRenderer;
    private boolean mListenAudioPlug;
    private Media mMedia;
    private boolean mPlayRequested;
    private boolean mPlaying;
    private final SurfaceListener mSurfaceListener;
    private int mVoutCount;
    private final AWindow mWindow;

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

    public static class Event extends VLCEvent {
        public static final int Buffering = 259;
        public static final int DisableAudio = 295;
        public static final int DisableVideo = 294;
        public static final int ESAdded = 276;
        public static final int ESDeleted = 277;
        public static final int ESSelected = 278;
        public static final int EncounteredError = 266;
        public static final int EndReached = 265;
        public static final int EofPaused = 293;
        public static final int FirstPicDisplay = 286;
        public static final int LengthChanged = 273;
        public static final int LosePicSerious = 288;
        public static final int MediaChanged = 256;
        public static final int NotifyInfo = 300;
        public static final int Opening = 258;
        public static final int PausableChanged = 270;
        public static final int Paused = 261;
        public static final int Playing = 260;
        public static final int PositionChanged = 268;
        public static final int Prepared = 290;
        public static final int SeekableChanged = 269;
        public static final int Stopped = 262;
        public static final int Subtitle = 291;
        public static final int SubtitleLoad = 292;
        public static final int SubtitleType = 296;
        public static final int TimeChanged = 267;
        public static final int Unsupported = 289;
        public static final int VideoCodecDeleted = 297;
        public static final int VideoCodecInfo = 299;
        public static final int VideoFPS = 298;
        public static final int VideoSize = 287;
        public static final int Vout = 274;

        public Event(int i) {
            super(i);
        }

        public float getBuffering() {
            return this.argf1;
        }

        public long getCacheChanged() {
            return this.arg1;
        }

        public int getErrorCode() {
            return (int) this.arg1;
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

        public int getNotifyInfo() {
            return (int) this.arg1;
        }

        public boolean getPausable() {
            return this.arg1 != 0;
        }

        public float getPositionChanged() {
            return this.argf1;
        }

        public boolean getSeekable() {
            return this.arg1 != 0;
        }

        public int getSubtitleDuration() {
            return (int) this.arg2;
        }

        public int getSubtitleLoadStatus() {
            return (int) this.arg1;
        }

        public int getSubtitleStart() {
            return (int) this.arg1;
        }

        public String getSubtitleText() {
            return this.argstr;
        }

        public int getSubtitleType() {
            return (int) this.arg2;
        }

        public int getSubtitleTypeId() {
            return (int) this.arg1;
        }

        public long getTimeChanged() {
            return this.arg1;
        }

        public boolean getUseMediaCodec() {
            return this.arg1 != 0;
        }

        public String getVideoCodecName() {
            return this.argstr;
        }

        public int getVideoCodecStatus() {
            return (int) this.arg1;
        }

        public float getVideoFPS() {
            return this.argf1;
        }

        public int getVideoHeight() {
            return (int) this.arg2;
        }

        public int getVideoSarDen() {
            return (int) this.arg4;
        }

        public int getVideoSarNum() {
            return (int) this.arg3;
        }

        public int getVideoWidth() {
            return (int) this.arg1;
        }

        public int getVoutCount() {
            return (int) this.arg1;
        }

        public Event(int i, long j) {
            super(i, j);
        }

        public Event(int i, long j, long j2) {
            super(i, j, j2);
        }

        public Event(int i, long j, long j2, long j3, long j4) {
            super(i, j, j2, j3, j4);
        }

        public Event(int i, long j, long j2, String str) {
            super(i, j, j2, str);
        }

        public Event(int i, float f) {
            super(i, f);
        }
    }

    public interface EventListener extends VLCEvent.Listener<Event> {
    }

    public static class Navigate {
        public static final int Activate = 0;
        public static final int Down = 2;
        public static final int Left = 3;
        public static final int Right = 4;
        public static final int Up = 1;
    }

    public static class Position {
        public static final int Bottom = 6;
        public static final int BottomLeft = 7;
        public static final int BottomRight = 8;
        public static final int Center = 0;
        public static final int Disable = -1;
        public static final int Left = 1;
        public static final int Right = 2;
        public static final int Top = 3;
        public static final int TopLeft = 4;
        public static final int TopRight = 5;
    }

    public interface SurfaceListener {
        void onSurfaceCreated();

        void onSurfaceDestroyed();
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

    public MediaPlayer(LibVLC libVLC) {
        super(libVLC);
        this.mMedia = null;
        this.mPlaying = false;
        this.mPlayRequested = false;
        this.mListenAudioPlug = false;
        this.mVoutCount = 0;
        this.mAudioReset = false;
        this.mAudioOutput = "android_audiotrack";
        this.mAudioOutputDevice = null;
        this.mAudioPlugRegistered = false;
        this.mAudioDigitalOutputEnabled = false;
        this.mAudioPlugOutputDevice = "stereo";
        SurfaceListener surfaceListener = new SurfaceListener() {
            @Override
            public void onSurfaceCreated() {
                boolean z;
                boolean z2;
                synchronized (MediaPlayer.this) {
                    try {
                        z = false;
                        if (MediaPlayer.this.mPlaying || !MediaPlayer.this.mPlayRequested) {
                            z2 = MediaPlayer.this.mVoutCount == 0;
                        } else {
                            z2 = false;
                            z = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z) {
                    MediaPlayer.this.play();
                } else if (z2) {
                    MediaPlayer.this.setVideoTrackEnabled(true);
                }
            }

            @Override
            public void onSurfaceDestroyed() {
                boolean z;
                synchronized (MediaPlayer.this) {
                    z = MediaPlayer.this.mVoutCount > 0;
                }
                if (z) {
                    MediaPlayer.this.setVideoTrackEnabled(false);
                }
            }
        };
        this.mSurfaceListener = surfaceListener;
        AWindow aWindow = new AWindow(surfaceListener);
        this.mWindow = aWindow;
        this.mGLRenderer = null;
        this.mAudioPlugReceiver = (!AndroidUtil.isLolliPopOrLater || AndroidUtil.isMarshMallowOrLater) ? null : createAudioPlugReceiver();
        this.mAudioDeviceCallback = AndroidUtil.isMarshMallowOrLater ? createAudioDeviceCallback() : null;
        nativeNewFromLibVlc(libVLC, aWindow);
    }

    @TargetApi(23)
    private AudioDeviceCallback createAudioDeviceCallback() {
        return new AudioDeviceCallback() {
            private SparseArray<Long> mEncodedDevices = new SparseArray<>();

            private void onAudioDevicesChanged() {
                long jLongValue = 0;
                for (int i = 0; i < this.mEncodedDevices.size(); i++) {
                    jLongValue |= this.mEncodedDevices.valueAt(i).longValue();
                }
                MediaPlayer.this.updateAudioOutputDevice(jLongValue, "pcm");
            }

            @Override
            public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                for (AudioDeviceInfo audioDeviceInfo : audioDeviceInfoArr) {
                    if (audioDeviceInfo.isSink()) {
                        long encodingFlags = MediaPlayer.this.getEncodingFlags(audioDeviceInfo.getEncodings());
                        if (encodingFlags != 0) {
                            this.mEncodedDevices.put(audioDeviceInfo.getId(), Long.valueOf(encodingFlags));
                        }
                    }
                }
                onAudioDevicesChanged();
            }

            @Override
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
                String action = intent.getAction();
                if (action != null && action.equalsIgnoreCase("android.media.action.HDMI_AUDIO_PLUG")) {
                    MediaPlayer.this.updateAudioOutputDevice(intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 1 ? MediaPlayer.this.getEncodingFlags(intent.getIntArrayExtra("android.media.extra.ENCODINGS")) : 0L, "stereo");
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
        return str != null && str.equals("android_audiotrack");
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

    private native void nativeNewFromLibVlc(LibVLC libVLC, AWindow aWindow);

    private native void nativeNewFromMedia(Media media, AWindow aWindow);

    private native void nativePlay();

    private native void nativeRelease();

    private native void nativeSetAspectRatio(String str);

    private native boolean nativeSetAudioDelay(long j);

    private native boolean nativeSetAudioOutput(String str);

    private native boolean nativeSetAudioOutputDevice(String str);

    private native boolean nativeSetAudioTrack(int i);

    private native boolean nativeSetEqualizer(Equalizer equalizer);

    private native void nativeSetMedia(Media media);

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
            this.mLibVLC.mAppContext.unregisterReceiver(this.mAudioPlugReceiver);
            return;
        }
        Intent intentRegisterReceiver = this.mLibVLC.mAppContext.registerReceiver(this.mAudioPlugReceiver, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        if (intentRegisterReceiver != null) {
            this.mAudioPlugReceiver.onReceive(this.mLibVLC.mAppContext, intentRegisterReceiver);
        }
    }

    @TargetApi(23)
    private void registerAudioPlugV23(boolean z) {
        AudioManager audioManager = (AudioManager) this.mLibVLC.mAppContext.getSystemService("audio");
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
        return nativeAddSlave(i, VLCUtil.encodeVLCUri(uri), z);
    }

    public boolean canDoPassthrough() {
        return this.mCanDoPassthrough;
    }

    public GLRenderer enableGLRenderer(int i) {
        if (this.mWindow.areViewsAttached()) {
            throw new IllegalArgumentException("can't work with views attached to IVLCVout");
        }
        if (this.mGLRenderer != null) {
            throw new IllegalArgumentException("GLRenderer already enabled");
        }
        this.mWindow.useGLRenderer();
        GLRenderer gLRenderer = new GLRenderer(i, this, this.mSurfaceListener);
        this.mGLRenderer = gLRenderer;
        return gLRenderer;
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

    public Media.VideoTrack getCurrentVideoTrack() {
        if (getVideoTrack() == -1) {
            return null;
        }
        int trackCount = this.mMedia.getTrackCount();
        for (int i = 0; i < trackCount; i++) {
            Media.Track track = this.mMedia.getTrack(i);
            if (track.type == 1) {
                return (Media.VideoTrack) track;
            }
        }
        return null;
    }

    public native long getLength();

    public synchronized Media getMedia() {
        try {
            Media media = this.mMedia;
            if (media != null) {
                media.retain();
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

    public native long getTime();

    public native int getTitle();

    public Title[] getTitles() {
        return nativeGetTitles();
    }

    public IVLCVout getVLCVout() {
        return this.mWindow;
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

    public native boolean isLooping();

    public native boolean isPlaying();

    @Override
    public boolean isReleased() {
        return super.isReleased();
    }

    public native boolean isSeekable();

    public native void navigate(int i);

    public native int nextChapter();

    @Override
    public void onReleaseNative() {
        GLRenderer gLRenderer = this.mGLRenderer;
        if (gLRenderer != null) {
            gLRenderer.release();
        }
        this.mWindow.detachViews();
        registerAudioPlug(false);
        Media media = this.mMedia;
        if (media != null) {
            media.release();
        }
        this.mVoutCount = 0;
        nativeRelease();
    }

    public native void pause();

    public void play() {
        GLRenderer gLRenderer;
        synchronized (this) {
            try {
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
                    if (this.mWindow.areSurfacesWaiting() || ((gLRenderer = this.mGLRenderer) != null && !gLRenderer.isValid())) {
                        return;
                    }
                }
                this.mPlaying = true;
                nativePlay();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public native int previousChapter();

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

    public native boolean setAudioMute(boolean z);

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

    public native boolean setDropAudioFrames(boolean z);

    public boolean setEqualizer(Equalizer equalizer) {
        return nativeSetEqualizer(equalizer);
    }

    public synchronized void setEventListener(EventListener eventListener) {
        super.setEventListener((VLCEvent.Listener) eventListener);
    }

    public native boolean setListenVideoMode(boolean z);

    public native boolean setLooping(boolean z);

    public void setMedia(Media media) {
        if (media != null) {
            if (media.isReleased()) {
                throw new IllegalArgumentException("Media is released");
            }
            media.setDefaultMediaPlayerOptions();
        }
        nativeSetMedia(media);
        synchronized (this) {
            try {
                Media media2 = this.mMedia;
                if (media2 != null) {
                    media2.release();
                }
                if (media != null) {
                    media.retain();
                }
                this.mMedia = media;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void setPinPVideoMode(boolean z) {
        super.setPinPVideoMode(z);
    }

    public native void setPosition(float f, boolean z);

    public native void setRate(float f);

    public native boolean setRefreshFirstFrame(boolean z);

    public int setRenderer(RendererItem rendererItem) {
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

    public native boolean setSurface(boolean z);

    public native boolean setSurfaceDestroyed(boolean z);

    public native long setTime(long j, boolean z);

    public native void setTitle(int i);

    public void setVideoTitleDisplay(int i, int i2) {
        nativeSetVideoTitleDisplay(i, i2);
    }

    public boolean setVideoTrack(int i) {
        GLRenderer gLRenderer;
        if (i == -1 || ((this.mWindow.areViewsAttached() && !this.mWindow.areSurfacesWaiting()) || ((gLRenderer = this.mGLRenderer) != null && gLRenderer.isValid()))) {
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
        if (getVideoTrack() != -1 || (videoTracks = getVideoTracks()) == null) {
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
        synchronized (this) {
            this.mPlayRequested = false;
            this.mPlaying = false;
            this.mAudioReset = true;
        }
        nativeStop();
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

    @Override
    public synchronized Event onEventNative(int i, long j, long j2, long j3, long j4, float f, String str) {
        try {
            switch (i) {
                case 256:
                case 262:
                case 265:
                    this.mVoutCount = 0;
                    notify();
                    return new Event(i);
                case 257:
                case 263:
                case 264:
                case 271:
                case 272:
                case 275:
                case 279:
                case 280:
                case 281:
                case OggPageHeader.MAXIMUM_PAGE_HEADER_SIZE:
                case 283:
                case 284:
                case 285:
                default:
                    return null;
                case 258:
                case 259:
                    return new Event(i, f);
                case 260:
                case 261:
                case Event.Prepared:
                    return new Event(i);
                case 266:
                    this.mVoutCount = 0;
                    notify();
                    return new Event(i, j);
                case 267:
                    return new Event(i, j);
                case 268:
                    return new Event(i, f);
                case 269:
                case 270:
                    return new Event(i, j);
                case 273:
                    return new Event(i, j);
                case 274:
                    this.mVoutCount = (int) j;
                    notify();
                    return new Event(i, j);
                case 276:
                case 277:
                case 278:
                    return new Event(i, j, j2);
                case 286:
                    return new Event(i);
                case Event.VideoSize:
                    return new Event(i, j, j2, j3, j4);
                case Event.LosePicSerious:
                    return new Event(i);
                case Event.Unsupported:
                    return new Event(i);
                case Event.Subtitle:
                    return new Event(i, j, j2, str);
                case Event.SubtitleLoad:
                    return new Event(i, j);
                case Event.EofPaused:
                    return new Event(i);
                case Event.DisableVideo:
                    return new Event(i);
                case Event.DisableAudio:
                    return new Event(i);
                case Event.SubtitleType:
                    return new Event(i, j, j2);
                case Event.VideoCodecDeleted:
                    return new Event(i, j);
                case Event.VideoFPS:
                    return new Event(i, f);
                case Event.VideoCodecInfo:
                    return new Event(i, j, j2, str);
                case 300:
                    return new Event(i, j);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public MediaPlayer(Media media) {
        super(media);
        this.mMedia = null;
        this.mPlaying = false;
        this.mPlayRequested = false;
        this.mListenAudioPlug = false;
        this.mVoutCount = 0;
        this.mAudioReset = false;
        this.mAudioOutput = "android_audiotrack";
        this.mAudioOutputDevice = null;
        this.mAudioPlugRegistered = false;
        this.mAudioDigitalOutputEnabled = false;
        this.mAudioPlugOutputDevice = "stereo";
        SurfaceListener surfaceListener = new SurfaceListener() {
            @Override
            public void onSurfaceCreated() {
                boolean z;
                boolean z2;
                synchronized (MediaPlayer.this) {
                    try {
                        z = false;
                        if (MediaPlayer.this.mPlaying || !MediaPlayer.this.mPlayRequested) {
                            z2 = MediaPlayer.this.mVoutCount == 0;
                        } else {
                            z2 = false;
                            z = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z) {
                    MediaPlayer.this.play();
                } else if (z2) {
                    MediaPlayer.this.setVideoTrackEnabled(true);
                }
            }

            @Override
            public void onSurfaceDestroyed() {
                boolean z;
                synchronized (MediaPlayer.this) {
                    z = MediaPlayer.this.mVoutCount > 0;
                }
                if (z) {
                    MediaPlayer.this.setVideoTrackEnabled(false);
                }
            }
        };
        this.mSurfaceListener = surfaceListener;
        AWindow aWindow = new AWindow(surfaceListener);
        this.mWindow = aWindow;
        this.mGLRenderer = null;
        this.mAudioPlugReceiver = (!AndroidUtil.isLolliPopOrLater || AndroidUtil.isMarshMallowOrLater) ? null : createAudioPlugReceiver();
        this.mAudioDeviceCallback = AndroidUtil.isMarshMallowOrLater ? createAudioDeviceCallback() : null;
        if (media != null && !media.isReleased()) {
            this.mMedia = media;
            media.retain();
            nativeNewFromMedia(this.mMedia, aWindow);
            return;
        }
        throw new IllegalArgumentException("Media is null or released");
    }
}
