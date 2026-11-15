package com.transsion.tranplayer;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.graphics.Rect;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.C;
import androidx.webkit.ProxyConfig;
import com.alibaba.android.arouter.utils.Consts;
import com.transsion.audiotagger.audio.ogg.util.OggPageHeader;
import com.transsion.livecaption.constant.ICode;
import com.transsion.tranplayer.TranMediaPlayer;
import com.transsion.tranplayer.util.AndroidUtil;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.commons.text.StringSubstitutor;

public class TranMediaPlayer extends AbstractMediaPlayer implements IVLCVout.Callback, IVLCVout.OnNewVideoLayoutListener, MediaPlayer.EventListener {
    public static final int SOURCE_DIFF_TIME = 3000;
    public static final int SOURCE_TYPE_FILE = 3;
    public static final int SOURCE_TYPE_PATH = 2;
    public static final int SOURCE_TYPE_UNKNOWN = 0;
    public static final int SOURCE_TYPE_URI = 1;
    private static final String TAG = "TranMediaPlayer";
    private boolean bWillToSetSurface;
    private boolean mAOpensles;
    private AudioManager mAudioManager;
    private int mAudioSessionId;
    private int mAudioTracks;
    private Context mContext;
    private int mCurrentAudioTrack;
    private Media mCurrentMedia;
    private long mCurrentPosition;
    private long mDuration;
    private boolean mEofPaused;
    private int mFd;
    private ParcelFileDescriptor mFile;
    private boolean mFirstSetDataSource;
    private boolean mHadVideoCodec;
    private boolean mHasVideo;
    private boolean mIsBuffering;
    private boolean mIsFirstTimeChanged;
    private boolean mIsMediaCodec;
    private boolean mIsMute;
    private boolean mIsPlayingBeforeSeek;
    private boolean mIsPrepared;
    private boolean mIsReseting;
    private final AtomicBoolean mIsVlcReleasing;
    private boolean mIsprepareing;
    private long mLastSeekTime;
    private int mLastVolume;
    private float mLeftVolume;
    private long mLength;
    private LibVLC mLibVLC;
    private boolean mListenVideo;
    private boolean mLivePhotoLongpress;
    private Object mLock;
    private boolean mLosePic_seek;
    private MediaPlayer mMediaPlayer;
    private boolean mNeedseek;
    private boolean mNoSubAutodetect;
    private long mOffset;
    private boolean mOpenError;
    private ArrayList<String> mOptions;
    private boolean mPIPVideoMode;
    private String mPath;
    private long mPausePosition;
    private boolean mPaused;
    private boolean mPlayRequested;
    private boolean mPreferSoftDecoder;
    private boolean mReleaseMediaPlayer;
    private long mRenderedPicturePts;
    private Future<?> mResolverFuture;
    private float mRightVolume;
    private int mSarDen;
    private int mSarNum;
    private long mSeekCompleteConunt;
    private long mSeekPosition;
    private int mSourceType;
    private boolean mSubtitleLoad;
    private TextureView mSubtitlesTextureView;
    private SurfaceView mSubtitlesView;
    private Surface mSurface;
    private SurfaceHolder mSurfaceHolder;
    private Uri mUri;
    private boolean mVOpengl;
    private String mVersion;
    private boolean mVideoCodecDeleted;
    private String mVideoCodecName;
    private float mVideoFPS;
    private int mVideoHeight;
    private long mVideoSeekTime;
    private long mVideoStartTime;
    private int mVideoWidth;
    private static final ScheduledExecutorService sTimeoutExecutor = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() {
        @Override
        public final Thread newThread(Runnable runnable) {
            return TranMediaPlayer.lambda$static$0(runnable);
        }
    });
    private static final ExecutorService sResolverExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() {
        @Override
        public final Thread newThread(Runnable runnable) {
            return TranMediaPlayer.lambda$static$1(runnable);
        }
    });
    private final AtomicInteger mFadeGeneration = new AtomicInteger(0);
    private final AtomicReference<CancellationSignal> mCurrentCancellationSignal = new AtomicReference<>();

    public static class TranTimedText implements ITimedText {
        private long mDuration;
        private long mStartTime;
        private Rect mTextBounds = null;
        private String mTextChars;

        public TranTimedText(String str, long j, long j2) {
            this.mTextChars = str;
            this.mStartTime = j;
            this.mDuration = j2;
        }

        @Override
        public Rect getBounds() {
            return this.mTextBounds;
        }

        @Override
        public long getDuration() {
            return this.mDuration;
        }

        @Override
        public long getStartTime() {
            return this.mStartTime;
        }

        @Override
        public String getText() {
            return this.mTextChars;
        }
    }

    public static class TranTrackInfo implements ITrackInfo {
        private int mTrackType = -1;
        private String mLanguage = C.LANGUAGE_UNDETERMINED;

        @Override
        public IMediaFormat getFormat() {
            return null;
        }

        @Override
        public String getInfoInline() {
            StringBuilder sb = new StringBuilder(128);
            int i = this.mTrackType;
            if (i == 0) {
                sb.append("AUDIO");
                sb.append(", ");
                sb.append(getLanguage());
            } else if (i == 1) {
                sb.append("VIDEO");
                sb.append(", ");
                sb.append(getLanguage());
            } else if (i == 3) {
                sb.append("TIMEDTEXT");
                sb.append(", ");
                sb.append(getLanguage());
            } else if (i != 4) {
                sb.append("UNKNOWN");
            } else {
                sb.append("SUBTITLE");
            }
            return sb.toString();
        }

        @Override
        public String getLanguage() {
            return this.mLanguage;
        }

        @Override
        public int getTrackType() {
            return this.mTrackType;
        }

        public void setLanguage(String str) {
            if (str.isEmpty()) {
                return;
            }
            this.mLanguage = str;
        }

        public void setTrackType(int i) {
            this.mTrackType = i;
        }
    }

    public TranMediaPlayer(Context context) {
        this.mIsReseting = false;
        this.mIsprepareing = false;
        this.mIsPrepared = false;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.mIsVlcReleasing = atomicBoolean;
        this.mSubtitleLoad = false;
        this.mVideoCodecDeleted = true;
        this.mHadVideoCodec = false;
        this.mPaused = false;
        this.bWillToSetSurface = false;
        this.mLosePic_seek = false;
        this.mOpenError = false;
        String str = TAG;
        Log.d(str, "TranMediaPlayer {");
        this.mContext = context;
        this.mSourceType = 0;
        this.mDuration = -1L;
        this.mCurrentPosition = -1L;
        this.mSeekCompleteConunt = 0L;
        this.mRenderedPicturePts = -1L;
        this.mOffset = -1L;
        this.mLength = -1L;
        this.mVideoWidth = -1;
        this.mVideoHeight = -1;
        this.mSarNum = -1;
        this.mSarDen = -1;
        this.mFd = -1;
        this.mIsReseting = false;
        this.mIsprepareing = false;
        this.mIsPrepared = false;
        this.mIsBuffering = false;
        atomicBoolean.set(false);
        this.mIsFirstTimeChanged = false;
        this.mHasVideo = false;
        this.mReleaseMediaPlayer = false;
        this.mCurrentAudioTrack = -1;
        AudioManager audioManager = (AudioManager) this.mContext.getSystemService("audio");
        this.mAudioManager = audioManager;
        int iGenerateAudioSessionId = audioManager.generateAudioSessionId();
        this.mAudioSessionId = iGenerateAudioSessionId;
        setAudioSessionId(iGenerateAudioSessionId);
        this.mIsPlayingBeforeSeek = false;
        this.bWillToSetSurface = false;
        this.mLeftVolume = 0.0f;
        this.mRightVolume = 0.0f;
        this.mListenVideo = false;
        this.mPausePosition = -1L;
        this.mPIPVideoMode = false;
        this.mIsMute = false;
        this.mVideoStartTime = 0L;
        this.mVideoSeekTime = 0L;
        this.mVideoFPS = 0.0f;
        this.mIsMediaCodec = true;
        this.mSeekPosition = -1L;
        this.mFirstSetDataSource = false;
        this.mVersion = "2026.08.17-0";
        this.mOpenError = false;
        this.mLivePhotoLongpress = false;
        Log.d(str, "TranMediaPlayer sdkVersion:" + this.mVersion + " }");
    }

    private void ReleasePlayer() {
        Log.d(TAG, "releasePlayer " + this.mMediaPlayer + " {");
        setVolume(0.0f, 0.0f);
        this.mLastVolume = 0;
        if (this.mListenVideo) {
            try {
                Thread.sleep(70L);
            } catch (Exception unused) {
            }
            this.mListenVideo = false;
        }
        int i = 0;
        while (this.mIsprepareing) {
            if (i > 8) {
                this.mIsprepareing = false;
            }
            try {
                Thread.sleep(50L);
            } catch (Exception unused2) {
            }
            Log.d(TAG, "not Prepared");
            i++;
        }
        releaseMediaPlayer();
        Log.d(TAG, "releasePlayer }");
    }

    private void cancelPendingResolverTask() {
        Future<?> future = this.mResolverFuture;
        if (future != null && !future.isDone()) {
            Log.w(TAG, "cancelPendingResolverTask");
            CancellationSignal cancellationSignal = this.mCurrentCancellationSignal.get();
            if (cancellationSignal != null) {
                cancellationSignal.cancel();
            }
            this.mResolverFuture.cancel(true);
        }
        this.mResolverFuture = null;
    }

    public void fadedOutToSeek(long j) {
        if (this.mMediaPlayer == null || this.mIsVlcReleasing.get() || this.mSeekPosition <= 1000) {
            return;
        }
        Log.e(TAG, "faded out, seek to time:" + j);
        this.mMediaPlayer.setTime(j, true);
        this.mCurrentPosition = j;
    }

    private String getMediaSourcePath(Uri uri) throws Throwable {
        Context context;
        String str;
        Cursor cursor = null;
        String string = null;
        Cursor cursor2 = null;
        if (uri == null || (context = this.mContext) == null) {
            return null;
        }
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, null, null, null, null);
            if (cursorQuery == null) {
                if (cursorQuery == null) {
                    return null;
                }
                cursorQuery.close();
                return null;
            }
            try {
                int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_data");
                cursorQuery.moveToFirst();
                string = cursorQuery.getString(columnIndexOrThrow);
                Log.d(TAG, "path: " + string);
                cursorQuery.close();
                return string;
            } catch (Exception unused) {
                String str2 = string;
                cursor2 = cursorQuery;
                str = str2;
                if (cursor2 != null) {
                    cursor2.close();
                }
                return str;
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
            str = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private String getUriExtension() {
        Context context;
        if (this.mUri == null || (context = this.mContext) == null) {
            return "";
        }
        Cursor cursorQuery = null;
        try {
            cursorQuery = context.getContentResolver().query(this.mUri, null, null, null, null);
            if (cursorQuery != null) {
                int columnIndex = cursorQuery.getColumnIndex("_display_name");
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(columnIndex);
                String strSubstring = string.substring(string.lastIndexOf(Consts.DOT));
                cursorQuery.close();
                return strSubstring;
            }
            if (cursorQuery == null) {
                return "";
            }
        } catch (Exception unused) {
            if (cursorQuery == null) {
                return "";
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
        cursorQuery.close();
        return "";
    }

    private void initMediaPlayer(boolean z) {
        this.mMediaPlayer.play();
        if (this.mSurface != null) {
            this.mMediaPlayer.setListenVideoMode(false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x011b A[Catch: InterruptedException -> 0x012d, TryCatch #5 {InterruptedException -> 0x012d, blocks: (B:9:0x0038, B:25:0x00a4, B:37:0x00e8, B:32:0x00bc, B:42:0x0116, B:44:0x011b, B:45:0x0120, B:41:0x0112, B:31:0x00b7, B:46:0x0124, B:47:0x012c, B:13:0x005b, B:15:0x0064, B:18:0x006e, B:23:0x0079, B:24:0x007c, B:36:0x00c6, B:40:0x00ef), top: B:56:0x0038, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0120 A[SYNTHETIC] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public void lambda$openAssetFileDescriptorWithRetry$2(int[] iArr, Context context, Uri uri, CountDownLatch countDownLatch, AtomicReference atomicReference) {
        Thread.interrupted();
        for (int i = 0; i < iArr.length; i++) {
            if (Thread.currentThread().isInterrupted()) {
                Log.d(TAG, "Worker cancelled before attempt " + (i + 1));
                break;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                final CancellationSignal cancellationSignal = new CancellationSignal();
                this.mCurrentCancellationSignal.set(cancellationSignal);
                ContentResolver contentResolver = context.getContentResolver();
                ScheduledFuture<?> scheduledFutureSchedule = sTimeoutExecutor.schedule(new Runnable() {
                    @Override
                    public final void run() {
                        cancellationSignal.cancel();
                    }
                }, iArr[i], TimeUnit.MILLISECONDS);
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r", cancellationSignal);
                        scheduledFutureSchedule.cancel(false);
                        if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                            if (countDownLatch.getCount() == 0) {
                                try {
                                    assetFileDescriptorOpenAssetFileDescriptor.close();
                                } catch (Exception unused) {
                                }
                            } else {
                                try {
                                    atomicReference.set(assetFileDescriptorOpenAssetFileDescriptor);
                                } catch (OperationCanceledException unused2) {
                                    Log.d(TAG, "Attempt " + (i + 1) + " canceled after " + iArr[i] + "ms");
                                    scheduledFutureSchedule.cancel(false);
                                    this.mCurrentCancellationSignal.set(null);
                                    if (i < iArr.length - 1) {
                                        Thread.sleep(20L);
                                    }
                                } catch (Exception e) {
                                    e = e;
                                    Log.w(TAG, "Attempt " + (i + 1) + " failed: " + e.getMessage());
                                    scheduledFutureSchedule.cancel(false);
                                    this.mCurrentCancellationSignal.set(null);
                                    if (i < iArr.length - 1) {
                                        Thread.sleep(20L);
                                    }
                                }
                            }
                            Log.d(TAG, "Success on attempt " + (i + 1) + ", took: " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
                            scheduledFutureSchedule.cancel(false);
                            this.mCurrentCancellationSignal.set(null);
                            break;
                        }
                        scheduledFutureSchedule.cancel(false);
                        this.mCurrentCancellationSignal.set(null);
                        if (i < iArr.length - 1) {
                            Thread.sleep(20L);
                        }
                    } catch (Throwable th) {
                        scheduledFutureSchedule.cancel(false);
                        this.mCurrentCancellationSignal.set(null);
                        throw th;
                    }
                } catch (OperationCanceledException unused3) {
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (InterruptedException unused4) {
                Log.d(TAG, "Worker thread interrupted");
                Thread.currentThread().interrupt();
            }
        }
        countDownLatch.countDown();
    }

    public static Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "TranMP-Timeout");
        thread.setDaemon(true);
        return thread;
    }

    public static Thread lambda$static$1(Runnable runnable) {
        Thread thread = new Thread(runnable, "TranMP-Resolver");
        thread.setDaemon(true);
        return thread;
    }

    private AssetFileDescriptor openAssetFileDescriptorWithRetry(final Context context, final Uri uri) {
        Future<?> future = this.mResolverFuture;
        if (future != null && !future.isDone()) {
            Log.w(TAG, "Cancelling previous resolver task");
            CancellationSignal cancellationSignal = this.mCurrentCancellationSignal.get();
            if (cancellationSignal != null) {
                cancellationSignal.cancel();
            }
            this.mResolverFuture.cancel(true);
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        final int[] iArr = {100, 200, 400, 500, 600, 700};
        this.mResolverFuture = sResolverExecutor.submit(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$openAssetFileDescriptorWithRetry$2(iArr, context, uri, countDownLatch, atomicReference);
            }
        });
        try {
            if (!countDownLatch.await(3L, TimeUnit.SECONDS)) {
                Log.w(TAG, "resolver timeout after 3 seconds");
                CancellationSignal cancellationSignal2 = this.mCurrentCancellationSignal.get();
                if (cancellationSignal2 != null) {
                    cancellationSignal2.cancel();
                }
                this.mResolverFuture.cancel(true);
            }
        } catch (InterruptedException unused) {
            this.mResolverFuture.cancel(true);
            Thread.currentThread().interrupt();
        }
        return (AssetFileDescriptor) atomicReference.get();
    }

    private void parseHeader(Map<String, String> map) {
        long j;
        this.mVOpengl = false;
        this.mAOpensles = false;
        this.mPreferSoftDecoder = false;
        this.mListenVideo = false;
        this.mIsMute = false;
        this.mNoSubAutodetect = false;
        String string = null;
        if (map != null) {
            String str = map.get("prefer-soft-decoder");
            if (str != null && str.toString().compareTo("1") == 0) {
                this.mPreferSoftDecoder = true;
            }
            String str2 = map.get("codec-is-copyright");
            string = str2 != null ? str2.toString() : null;
            String str3 = map.get("start-time");
            if (str3 != null) {
                j = Long.parseLong(str3.toString());
                this.mCurrentPosition = j;
            } else {
                j = 0;
            }
            String str4 = map.get("prepare-paused");
            if (str4 != null) {
                str4.toString().compareTo("1");
            }
            String str5 = map.get("pause-after-eof");
            if (str5 != null) {
                str5.toString().compareTo("1");
            }
            String str6 = map.get("audio-track");
            if (str6 != null) {
                this.mAudioTracks = Integer.parseInt(str6.toString());
            }
            if (map.get("vlc-video-opengl") != null) {
                this.mVOpengl = true;
            }
            if (map.get("no-sub-autodetect") != null) {
                this.mNoSubAutodetect = true;
            }
            String str7 = map.get("listen-video");
            if (str7 != null && str7.toString().compareTo("1") == 0) {
                this.mListenVideo = true;
            }
            String str8 = map.get("audio-setmute");
            if (str8 != null && str8.toString().compareTo("1") == 0) {
                this.mIsMute = true;
            }
        } else {
            j = 0;
        }
        if (this.mOptions == null) {
            this.mOptions = new ArrayList<>(50);
        }
        ArrayList<String> arrayList = this.mOptions;
        if (arrayList != null) {
            arrayList.clear();
        }
        if (this.mOptions.isEmpty()) {
            this.mOptions.add("-vv");
            this.mOptions.add("--network-caching=2000");
            this.mOptions.add("--file-caching=3000");
            this.mOptions.add("--audio-time-stretch");
            this.mOptions.add("--no-volume-save");
            this.mOptions.add("--android-display-chroma");
            this.mOptions.add("YV12");
            this.mOptions.add("--sub-notify");
            this.mOptions.add("--demux");
            this.mOptions.add("avformat,any");
            this.mOptions.add("avcodec-hurry-up");
            this.mOptions.add("--codec");
            if (this.mPreferSoftDecoder) {
                this.mOptions.add("avcodec,all");
            } else {
                this.mOptions.add("mediacodec_jni,all");
            }
            if (this.mAOpensles) {
                this.mOptions.add("--aout=opensles,none");
            } else {
                this.mOptions.add("--aout=android_audiotrack,none");
            }
            if (this.mVOpengl) {
                this.mOptions.add("--vout=gles2,none");
            } else {
                this.mOptions.add("--vout=android_display,none");
            }
            if (this.mListenVideo) {
                this.mOptions.add("--listen-video-mode");
            }
            if (string != null) {
                this.mOptions.add("--codec-is-copyright");
                this.mOptions.add(string);
            }
            if (j != 0) {
                this.mOptions.add("--start-time=" + (j / 1000.0f));
            }
            this.mOptions.add("--start-paused");
            if (this.mAudioTracks != 0) {
                this.mOptions.add("--audio-track=" + this.mAudioTracks);
            }
            int audioSessionId = getAudioSessionId();
            this.mOptions.add("--audiotrack-session-id=" + audioSessionId);
            this.mOptions.add("--play-and-pause");
            if (this.mNoSubAutodetect) {
                this.mOptions.add("--no-sub-autodetect-file");
            }
            if (this.mIsMute) {
                this.mOptions.add("--audio-ismute");
            }
        }
    }

    private void preInitPlayer() {
        String str = TAG;
        Log.e(str, "preInitPlayer into {");
        releaseMediaPlayer();
        this.mReleaseMediaPlayer = false;
        this.mVideoStartTime = System.currentTimeMillis();
        LibVLC libVLC = new LibVLC(this.mContext, this.mOptions);
        this.mLibVLC = libVLC;
        MediaPlayer mediaPlayer = new MediaPlayer(libVLC);
        this.mMediaPlayer = mediaPlayer;
        mediaPlayer.setEventListener((MediaPlayer.EventListener) this);
        this.mLock = new Object();
        this.mIsVlcReleasing.set(false);
        int i = this.mSourceType;
        if (i == 1) {
            this.mCurrentMedia = new Media(this.mLibVLC, this.mUri);
        } else if (i == 2) {
            this.mCurrentMedia = new Media(this.mLibVLC, this.mPath);
        } else {
            if (i != 3) {
                Log.e(str, "do not have a valid data source, please call setDataSource");
                return;
            }
            this.mCurrentMedia = new Media(this.mLibVLC, this.mFd, this.mOffset, this.mLength);
        }
        this.mCurrentMedia.addOption(":network-caching=2000");
        this.mCurrentMedia.addOption(":file-caching=3000");
        if (this.mPreferSoftDecoder) {
            this.mCurrentMedia.addOption(":codec=avcodec,all");
        } else {
            this.mCurrentMedia.addOption(":codec=mediacodec_jni,all");
        }
        this.mMediaPlayer.setMedia(this.mCurrentMedia);
        if (this.mAOpensles) {
            this.mMediaPlayer.setAudioOutput("opensles");
        }
        if (this.mSubtitlesView != null) {
            this.mMediaPlayer.getVLCVout().setSubtitlesView(this.mSubtitlesView);
        }
        if (this.mSubtitlesTextureView != null) {
            this.mMediaPlayer.getVLCVout().setSubtitlesView(this.mSubtitlesTextureView);
        }
        if (this.mSurface != null) {
            this.mMediaPlayer.getVLCVout().setVideoSurface(this.mSurface, null);
            this.mMediaPlayer.getVLCVout().addCallback(this);
            this.mMediaPlayer.getVLCVout().attachViews(this);
            this.mMediaPlayer.setSurface(true);
            this.mMediaPlayer.setSurfaceDestroyed(false);
        }
        this.mFirstSetDataSource = true;
        Log.e(str, "preInitPlayer }");
    }

    private void releaseMediaPlayer() {
        String str = TAG;
        Log.d(str, "releaseMediaPlayer {");
        if (!this.mIsVlcReleasing.compareAndSet(false, true)) {
            Log.d(str, "releaseMediaPlayer return  } ");
            return;
        }
        this.mFadeGeneration.incrementAndGet();
        try {
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (mediaPlayer != null) {
                try {
                    if (mediaPlayer.getVLCVout() != null && this.mMediaPlayer.getVLCVout().areViewsAttached()) {
                        this.mMediaPlayer.getVLCVout().removeCallback(this);
                        this.mMediaPlayer.getVLCVout().detachViews();
                    }
                } catch (Throwable th) {
                    Log.w(TAG, "detachViews failed", th);
                }
                try {
                    this.mMediaPlayer.setEventListener((MediaPlayer.EventListener) null);
                } catch (Throwable th2) {
                    Log.w(TAG, "setEventListener(null) failed", th2);
                }
                try {
                    synchronized (this.mLock) {
                        try {
                            MediaPlayer mediaPlayer2 = this.mMediaPlayer;
                            if (mediaPlayer2 != null) {
                                mediaPlayer2.release();
                                this.mMediaPlayer = null;
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                    Log.d(TAG, "MediaPlayer.released");
                } catch (Throwable th4) {
                    try {
                        String str2 = TAG;
                        Log.w(str2, "MediaPlayer.release failed", th4);
                        Log.d(str2, "MediaPlayer.released");
                    } catch (Throwable th5) {
                        Log.d(TAG, "MediaPlayer.released");
                        throw th5;
                    }
                }
            }
            Media media = this.mCurrentMedia;
            if (media != null) {
                try {
                    media.release();
                    this.mCurrentMedia = null;
                    Log.d(TAG, "Media.released");
                } catch (Throwable th6) {
                    try {
                        String str3 = TAG;
                        Log.w(str3, "Media.release failed", th6);
                        Log.d(str3, "Media.released");
                    } catch (Throwable th7) {
                        Log.d(TAG, "Media.released");
                        throw th7;
                    }
                }
            }
            LibVLC libVLC = this.mLibVLC;
            if (libVLC != null) {
                try {
                    libVLC.release();
                    this.mLibVLC = null;
                    Log.d(TAG, "LibVLC.released");
                } catch (Throwable th8) {
                    try {
                        String str4 = TAG;
                        Log.w(str4, "LibVLC.release failed", th8);
                        Log.d(str4, "LibVLC.released");
                    } catch (Throwable th9) {
                        Log.d(TAG, "LibVLC.released");
                        throw th9;
                    }
                }
            }
            Log.e(TAG, "releaseMediaPlayer }");
        } catch (Throwable th10) {
            Log.e(TAG, "releaseMediaPlayer }");
            throw th10;
        }
    }

    private void setVolumeFadeInOut(int i, int i2, long j) {
        if (this.mDuration < 700 && AndroidUtil.isRunningByMonkey()) {
            Log.e(TAG, "setVolumeFadeInOut. return : mDuration: " + this.mDuration);
            return;
        }
        String str = TAG;
        Log.e(str, "setVolumeFadeInOut. current_volume:" + i + " last_volume:" + i2 + " seekTime:" + j + ",mIsMute:" + this.mIsMute);
        int volume = this.mMediaPlayer.getVolume();
        int i3 = (i2 == volume || volume != 0) ? i2 : volume;
        if (i != i3 && !this.mIsMute) {
            new Thread(new FadeRunnable(i, i3, j, this.mFadeGeneration.incrementAndGet())).start();
            return;
        }
        Log.e(str, "current_volume == last_volume return");
        if (j != -1) {
            fadedOutToSeek(j);
        }
    }

    private boolean shouldUseRetryForUri(Context context, Uri uri) {
        boolean z = false;
        if (uri == null) {
            return false;
        }
        String scheme = uri.getScheme();
        if ("file".equals(scheme)) {
            Log.d(TAG, "shouldRetry_continue ");
            return uri.getPath().toLowerCase().contains("/mnt/media_rw/");
        }
        if (!ICode.CALL.CALL_KEY_CONTENT.equals(scheme) || !"media".equals(uri.getAuthority()) || uri.getPath() == null || !uri.getPath().startsWith("/external")) {
            if (ICode.CALL.CALL_KEY_CONTENT.equals(scheme) && "com.android.externalstorage.documents".equals(uri.getAuthority()) && uri.getPath() != null && uri.getPath().startsWith("/document/")) {
                Log.d(TAG, "shouldRetry_true content://com.android.externalstorage.documents/document/");
                return true;
            }
            Log.d(TAG, "shouldRetry_false " + uri.toString());
            return false;
        }
        Cursor cursorQuery = null;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{"volume_name"}, null, null, null);
            if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                if (cursorQuery != null) {
                }
                Log.d(TAG, "shouldRetry_true content://media/external");
                return true;
            }
            String string = cursorQuery.getString(0);
            Log.d(TAG, "shouldRetry_continue " + string);
            if (string != null && !"external_primary".equals(string)) {
                z = true;
            }
            cursorQuery.close();
            return z;
        } catch (Exception unused) {
            if (cursorQuery != null) {
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
        cursorQuery.close();
        Log.d(TAG, "shouldRetry_true content://media/external");
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x009b  */
    private void willToSetDisplay(SurfaceHolder surfaceHolder) {
        MediaPlayer mediaPlayer;
        String str = TAG;
        Log.d(str, "willToSetDisplay " + surfaceHolder + " " + this.mMediaPlayer + " {");
        if (surfaceHolder != null && (mediaPlayer = this.mMediaPlayer) != null) {
            mediaPlayer.getVLCVout().setVideoSurface(surfaceHolder.getSurface(), surfaceHolder);
            this.mMediaPlayer.getVLCVout().addCallback(this);
            this.mMediaPlayer.getVLCVout().attachViews(this);
            this.mMediaPlayer.setSurface(true);
            this.bWillToSetSurface = false;
            this.mMediaPlayer.setSurfaceDestroyed(false);
            this.mMediaPlayer.setListenVideoMode(false);
            long currentPosition = getCurrentPosition();
            long duration = getDuration();
            if (this.mEofPaused) {
                seekTo(0L, false, false);
                this.mEofPaused = true;
            } else {
                long j = duration - currentPosition;
                if (j < 1000) {
                    seekTo(0L, false, false);
                    this.mEofPaused = true;
                } else if (j < C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
                    Log.d(str, "now:" + currentPosition + ", duration:" + duration + ". it's close to duration when resume playback");
                    seekTo(currentPosition, false, false);
                }
            }
            this.mMediaPlayer.play();
            if (this.mPaused || this.mEofPaused) {
                this.mMediaPlayer.setRefreshFirstFrame(true);
            }
            if (this.mEofPaused) {
                this.mMediaPlayer.setDropAudioFrames(true);
            }
        }
        Log.d(str, "willToSetDisplay }");
    }

    @Override
    public void addTimedTextSource(String str, String str2) {
        String str3 = TAG;
        Log.d(str3, "addTimedTextSource {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.addSlave(0, str, true);
        }
        Log.d(str3, "addTimedTextSource }");
    }

    @Override
    public void deselectTrack(int i) throws IllegalStateException {
        String str = TAG;
        Log.d(str, "deselectTrack {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            if (i == 1) {
                mediaPlayer.setVideoTrack(-1);
            } else if (i == 0) {
                mediaPlayer.setAudioTrack(-1);
            } else if (i == 3) {
                mediaPlayer.setSpuTrack(-1);
            }
        }
        Log.d(str, "deselectTrack }");
    }

    public void finalize() {
        Log.d(TAG, "finalize {");
        this.mReleaseMediaPlayer = true;
        if (this.mMediaPlayer != null && !this.mIsReseting) {
            this.mContext = null;
            releaseMediaPlayer();
            resetListeners();
            this.mSurface = null;
            this.mSubtitlesView = null;
            this.mSubtitlesTextureView = null;
        }
        ParcelFileDescriptor parcelFileDescriptor = this.mFile;
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException unused) {
            }
            this.mFile = null;
            this.mFd = -1;
        }
        this.mIsprepareing = false;
        this.mPaused = false;
        this.bWillToSetSurface = false;
        this.mSurfaceHolder = null;
        Log.d(TAG, "finalize }");
    }

    @Override
    public int getAudioSessionId() {
        String str = TAG;
        Log.d(str, "getAudioSessionId {");
        Log.d(str, "getAudioSessionId ---- mAudioSessionId:" + this.mAudioSessionId + " }");
        return this.mAudioSessionId;
    }

    public int getAudioTrack() {
        String str = TAG;
        Log.d(str, "getAudioTrack {");
        int audioTrack = this.mMediaPlayer.getAudioTrack();
        Log.d(str, "getAudioTrack   currentAudioTrack:" + audioTrack + " }");
        return audioTrack;
    }

    public MediaPlayer.TrackDescription[] getAudioTracks() {
        return this.mMediaPlayer.getAudioTracks();
    }

    public int getAudioTracksCount() {
        String str = TAG;
        Log.d(str, "getAudioTracksCount {");
        int audioTracksCount = this.mMediaPlayer.getAudioTracksCount();
        Log.d(str, "getAudioTracksCount   audioTracksCount:" + audioTracksCount + " }");
        return audioTracksCount;
    }

    @Override
    public long getCurrentPosition() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null) {
            return 0L;
        }
        if (this.mPaused) {
            long j = this.mPausePosition;
            if (j > 0) {
                return j;
            }
        }
        if (this.mEofPaused) {
            return this.mDuration;
        }
        if (this.mSeekPosition < 0) {
            return mediaPlayer.getTime();
        }
        long time = mediaPlayer.getTime();
        return time <= 0 ? this.mSeekPosition : time;
    }

    @Override
    public String getDataSource() {
        String string;
        String str = TAG;
        Log.d(str, "getDataSource {");
        int i = this.mSourceType;
        if (i == 1) {
            string = this.mUri.toString();
        } else if (i != 2) {
            string = i != 3 ? "" : String.valueOf(this.mFd);
        } else {
            string = this.mPath;
        }
        Log.d(str, "getDataSource }");
        return string;
    }

    @Override
    public long getDuration() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            this.mDuration = mediaPlayer.getLength();
        }
        return this.mDuration;
    }

    public boolean getIsVideoMediaCodec() {
        return this.mIsMediaCodec;
    }

    @Override
    public boolean getListenVideoMode() {
        String str = TAG;
        Log.d(str, "getListenVideoMode {");
        boolean z = this.mListenVideo;
        Log.d(str, "getListenVideoMode  listenVideo:" + z + " }");
        return z;
    }

    @Override
    public MediaInfo getMediaInfo() {
        String str = TAG;
        Log.d(str, "getMediaInfo {");
        Log.d(str, "getMediaInfo }");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0023  */
    @Override
    public int getSelectedTrack(int i) throws IllegalStateException {
        int audioTrack;
        String str = TAG;
        Log.d(str, "getSelectedTrack {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null) {
            audioTrack = -1;
        } else if (i == 0) {
            audioTrack = mediaPlayer.getAudioTrack();
        } else if (i == 1) {
            audioTrack = mediaPlayer.getVideoTrack();
        } else if (i != 3) {
            audioTrack = -1;
        } else {
            audioTrack = mediaPlayer.getSpuTrack();
        }
        Log.d(str, "getSelectedTrack " + audioTrack + " }");
        return audioTrack;
    }

    @Override
    public float getSpeed() {
        String str = TAG;
        Log.d(str, "getSpeed {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        float rate = mediaPlayer != null ? mediaPlayer.getRate() : 1.0f;
        Log.d(str, "getSpeed }");
        return rate;
    }

    public int getSpuTrack() {
        String str = TAG;
        Log.d(str, "getVideoTrack {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        int spuTrack = mediaPlayer != null ? mediaPlayer.getSpuTrack() : -1;
        Log.d(str, "getVideoTrack   spuTrack:" + spuTrack + " }");
        return spuTrack;
    }

    public MediaPlayer.TrackDescription[] getSpuTracks() {
        return this.mMediaPlayer.getSpuTracks();
    }

    public int getSpuTracksCount() {
        String str = TAG;
        Log.d(str, "getVideoTracksCount {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        int spuTracksCount = mediaPlayer != null ? mediaPlayer.getSpuTracksCount() : 0;
        Log.d(str, "getVideoTracksCount  spuTracksCount:" + spuTracksCount + " }");
        return spuTracksCount;
    }

    @Override
    public long getTimedTextDelay() {
        String str = TAG;
        Log.d(str, "getTimedTextDelay {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        long spuDelay = mediaPlayer != null ? mediaPlayer.getSpuDelay() : 0L;
        Log.d(str, "getTimedTextDelay delay:" + spuDelay + " }");
        return spuDelay;
    }

    @Override
    public ITrackInfo[] getTrackInfo() throws IllegalStateException {
        MediaPlayer.TrackDescription[] spuTracks;
        MediaPlayer.TrackDescription[] audioTracks;
        MediaPlayer.TrackDescription[] videoTracks;
        String str = TAG;
        Log.d(str, "getTrackInfo {");
        if (this.mMediaPlayer == null) {
            Log.d(str, "getTrackInfo failed }");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (this.mMediaPlayer.getVideoTracksCount() > 0 && (videoTracks = this.mMediaPlayer.getVideoTracks()) != null) {
            for (MediaPlayer.TrackDescription trackDescription : videoTracks) {
                if (trackDescription.id >= 0) {
                    TranTrackInfo tranTrackInfo = new TranTrackInfo();
                    tranTrackInfo.setLanguage(trackDescription.name);
                    tranTrackInfo.setTrackType(1);
                    Log.d(TAG, "id " + trackDescription.id + " name " + trackDescription.name);
                    arrayList.add(tranTrackInfo);
                }
            }
        }
        if (this.mMediaPlayer.getAudioTracksCount() > 0 && (audioTracks = this.mMediaPlayer.getAudioTracks()) != null) {
            for (MediaPlayer.TrackDescription trackDescription2 : audioTracks) {
                if (trackDescription2.id >= 0) {
                    TranTrackInfo tranTrackInfo2 = new TranTrackInfo();
                    tranTrackInfo2.setLanguage(trackDescription2.name);
                    tranTrackInfo2.setTrackType(0);
                    Log.d(TAG, "id " + trackDescription2.id + " name " + trackDescription2.name);
                    arrayList.add(tranTrackInfo2);
                }
            }
        }
        if (this.mMediaPlayer.getSpuTracksCount() > 0 && (spuTracks = this.mMediaPlayer.getSpuTracks()) != null) {
            for (MediaPlayer.TrackDescription trackDescription3 : spuTracks) {
                if (trackDescription3.id >= 0) {
                    TranTrackInfo tranTrackInfo3 = new TranTrackInfo();
                    tranTrackInfo3.setLanguage(trackDescription3.name);
                    tranTrackInfo3.setTrackType(3);
                    Log.d(TAG, "id " + trackDescription3.id + " name " + trackDescription3.name);
                    arrayList.add(tranTrackInfo3);
                }
            }
        }
        Log.d(TAG, "getTrackInfo success }");
        return (ITrackInfo[]) arrayList.toArray(new TranTrackInfo[arrayList.size()]);
    }

    public String getVideoCodecName() {
        return this.mVideoCodecName;
    }

    public float getVideoFPS() {
        return this.mVideoFPS;
    }

    @Override
    public int getVideoHeight() {
        Log.d(TAG, "getVideoHeight " + this.mVideoHeight);
        return this.mVideoHeight;
    }

    @Override
    public int getVideoSarDen() {
        Log.d(TAG, "getVideoSarDen " + this.mSarDen);
        return this.mSarDen;
    }

    @Override
    public int getVideoSarNum() {
        Log.d(TAG, "getVideoSarNum " + this.mSarNum);
        return this.mSarNum;
    }

    public int getVideoTrack() {
        String str = TAG;
        Log.d(str, "getVideoTrack {");
        int videoTrack = this.mMediaPlayer.getVideoTrack();
        Log.d(str, "getVideoTrack   currentVideoTrack:" + videoTrack + " }");
        return videoTrack;
    }

    public MediaPlayer.TrackDescription[] getVideoTracks() {
        return this.mMediaPlayer.getVideoTracks();
    }

    public int getVideoTracksCount() {
        String str = TAG;
        Log.d(str, "getVideoTracksCount {");
        int videoTracksCount = this.mMediaPlayer.getVideoTracksCount();
        Log.d(str, "getVideoTracksCount   videoTracksCount:" + videoTracksCount + " }");
        return videoTracksCount;
    }

    @Override
    public int getVideoWidth() {
        Log.d(TAG, "getVideoWidth " + this.mVideoWidth);
        return this.mVideoWidth;
    }

    @Override
    public boolean isLooping() {
        String str = TAG;
        Log.d(str, "isLooping {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        boolean zIsLooping = mediaPlayer != null ? mediaPlayer.isLooping() : false;
        Log.d(str, "isLooping }");
        return zIsLooping;
    }

    @Override
    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null || this.mIsReseting) {
            return false;
        }
        return mediaPlayer.isPlaying();
    }

    @Override
    public void onNewVideoLayout(IVLCVout iVLCVout, int i, int i2, int i3, int i4, int i5, int i6) {
        if (i == 0 || i2 == 0) {
            return;
        }
        notifyOnVideoSizeChanged(i, i2, i5, i6);
    }

    @Override
    public void onSurfacesCreated(IVLCVout iVLCVout) {
        String str = TAG;
        Log.d(str, "onSurfacesCreated .  getListenVideoMode():" + getListenVideoMode() + " . " + this.mMediaPlayer + " {");
        if (this.mMediaPlayer != null && this.mCurrentAudioTrack >= 0) {
            Log.e(str, "onSurfacesCreated  ---- Before setAudioTrack .  mCurrentAudioTrack:" + this.mCurrentAudioTrack);
            this.mMediaPlayer.setAudioTrack(this.mCurrentAudioTrack);
        }
        Log.d(str, "onSurfacesCreated .  }");
    }

    @Override
    public void onSurfacesDestroyed(IVLCVout iVLCVout) {
        String str = TAG;
        Log.d(str, "onSurfacesDestroyed . getListenVideoMode():" + getListenVideoMode() + " . " + this.mMediaPlayer + " {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setSurfaceDestroyed(true);
            if (!getListenVideoMode()) {
                this.mMediaPlayer.setVolume(0);
                this.mLastVolume = 0;
                this.mCurrentAudioTrack = getSelectedTrack(0);
                Log.e(str, "onSurfacesDestroyed  ---- Before setAudioTrack(-1) .  mCurrentAudioTrack:" + this.mCurrentAudioTrack);
                this.mMediaPlayer.setAudioTrack(-1);
            }
            this.mMediaPlayer.setVideoTrack(-1);
            this.mFirstSetDataSource = false;
        }
        Log.d(str, "onSurfacesDestroyed .  }");
    }

    @Override
    public void pause() throws IllegalStateException {
        String str = TAG;
        Log.d(str, "pause " + this.mMediaPlayer + " {");
        if (this.mMediaPlayer != null && isPlaying()) {
            float volume = this.mMediaPlayer.getVolume() / 100.0f;
            this.mRightVolume = volume;
            this.mLeftVolume = volume;
            this.mMediaPlayer.setVolume(0);
            this.mLastVolume = 0;
            this.mMediaPlayer.pause();
            this.mPausePosition = this.mMediaPlayer.getTime();
            this.mLosePic_seek = true;
            this.mNeedseek = false;
        }
        this.mPlayRequested = false;
        this.mIsPlayingBeforeSeek = false;
        this.mPaused = true;
        Log.d(str, "pause }");
    }

    @Override
    public void prepare() throws IllegalStateException, IOException {
        String str = TAG;
        Log.d(str, "prepare {");
        this.mIsprepareing = true;
        this.mEofPaused = false;
        initMediaPlayer(false);
        if (this.mIsPrepared) {
            this.mIsprepareing = false;
            notifyOnPrepared();
        }
        Log.d(str, "prepare " + this.mMediaPlayer + " }");
    }

    @Override
    public void prepareAsync() throws IllegalStateException {
        String str = TAG;
        Log.d(str, "prepareAsync {");
        this.mIsprepareing = true;
        this.mEofPaused = false;
        initMediaPlayer(true);
        if (this.mIsPrepared) {
            this.mIsprepareing = false;
            notifyOnPrepared();
        }
        Log.d(str, "prepareAsync " + this.mMediaPlayer + " }");
    }

    @Override
    public void release() {
        Log.d(TAG, "release " + this.mMediaPlayer + " {");
        cancelPendingResolverTask();
        this.mReleaseMediaPlayer = true;
        if (this.mMediaPlayer != null) {
            this.mContext = null;
            ReleasePlayer();
            resetListeners();
            this.mSurface = null;
            this.mSubtitlesView = null;
            this.mSubtitlesTextureView = null;
        }
        ParcelFileDescriptor parcelFileDescriptor = this.mFile;
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException unused) {
            }
            this.mFile = null;
            this.mFd = -1;
        }
        this.mPaused = false;
        this.mAudioSessionId = 0;
        this.bWillToSetSurface = false;
        this.mSurfaceHolder = null;
        this.mLeftVolume = 0.0f;
        this.mRightVolume = 0.0f;
        this.mPausePosition = -1L;
        this.mPIPVideoMode = false;
        this.mIsMute = false;
        this.mVideoStartTime = 0L;
        this.mVideoSeekTime = 0L;
        this.mVideoFPS = 0.0f;
        this.mIsMediaCodec = true;
        this.mSeekPosition = -1L;
        this.mPlayRequested = false;
        this.mIsPrepared = false;
        Log.e(TAG, "release }");
    }

    @Override
    public void reset() {
        Log.d(TAG, "reset " + this.mMediaPlayer + " {");
        cancelPendingResolverTask();
        this.mIsReseting = true;
        this.mReleaseMediaPlayer = true;
        if (this.mMediaPlayer != null) {
            setVolume(0.0f, 0.0f);
            this.mLastVolume = 0;
            this.mContext = null;
            ReleasePlayer();
        }
        ParcelFileDescriptor parcelFileDescriptor = this.mFile;
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException unused) {
            }
            this.mFile = null;
            this.mFd = -1;
        }
        this.mPaused = false;
        this.mIsReseting = false;
        this.bWillToSetSurface = false;
        this.mVideoCodecDeleted = true;
        this.mSurfaceHolder = null;
        this.mPausePosition = -1L;
        this.mSeekPosition = -1L;
        this.mIsPrepared = false;
        Log.d(TAG, "reset }");
    }

    @Override
    public void seekTo(long j, boolean z, boolean z2) throws IllegalStateException {
        String str = TAG;
        Log.d(str, "seekTo " + j + " " + this.mMediaPlayer + " {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            if (j < 0) {
                j = 0;
            } else {
                long j2 = this.mDuration;
                if (j2 > 0 && j > j2) {
                    j = j2;
                }
            }
            if (this.mEofPaused && j != this.mDuration && !this.mListenVideo && j != 0) {
                this.mEofPaused = false;
            }
            this.mPausePosition = j;
            this.mSeekPosition = j;
            this.mSeekCompleteConunt = 0L;
            this.mIsFirstTimeChanged = false;
            this.mLastSeekTime = j;
            if (j <= 1000 || this.mPaused || this.mIsMute || !z2) {
                mediaPlayer.setTime(j, true);
                this.mCurrentPosition = j;
            } else {
                setVolumeFadeInOut(0, this.mLastVolume, j);
                this.mLastVolume = 0;
            }
            if (this.mVideoSeekTime == 0 && z) {
                this.mVideoSeekTime = System.currentTimeMillis();
            }
        }
        Log.d(str, "seekTo }");
    }

    @Override
    public void selectTrack(int i) throws IllegalStateException {
        String str = TAG;
        Log.d(str, "selectTrack {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            int videoTracksCount = mediaPlayer.getVideoTracksCount() - 1;
            int audioTracksCount = this.mMediaPlayer.getAudioTracksCount() - 1;
            int spuTracksCount = this.mMediaPlayer.getSpuTracksCount() - 1;
            if (i >= 0 && i < videoTracksCount) {
                this.mMediaPlayer.setVideoTrack(i);
            } else if (i < videoTracksCount || i >= videoTracksCount + audioTracksCount) {
                int i2 = videoTracksCount + audioTracksCount;
                if (i < i2 || i >= i2 + spuTracksCount) {
                    Log.d(str, "unknown track index");
                } else {
                    this.mMediaPlayer.setSpuTrack(i);
                }
            } else {
                this.mMediaPlayer.setAudioTrack(i);
            }
            if (getCurrentPosition() != this.mLastSeekTime || getCurrentPosition() == 0) {
                if (isPlaying()) {
                    seekTo(getCurrentPosition(), false, false);
                } else {
                    this.mNeedseek = true;
                }
            }
        }
        Log.d(str, "selectTrack }");
    }

    public void setAudioAttributes(AudioAttributes audioAttributes) throws IllegalArgumentException {
        String str = TAG;
        Log.d(str, "setAudioAttributes {");
        Log.d(str, "setAudioAttributes }");
    }

    public void setAudioSessionId(int i) {
        String str = TAG;
        Log.d(str, "setAudioSessionId {");
        this.mAudioSessionId = i;
        Log.d(str, "setAudioSessionId ---- mAudioSessionId:" + i + " }");
    }

    @Override
    public void setAudioStreamType(int i) {
        String str = TAG;
        Log.d(str, "setAudioStreamType {");
        Log.d(str, "setAudioStreamType }");
    }

    public boolean setAudioTrack(int i) {
        if (i != -1 && i == getAudioTrack()) {
            return false;
        }
        Log.d(TAG, "setAudioTrack  index: " + i);
        boolean audioTrack = this.mMediaPlayer.setAudioTrack(i);
        if (i != -1) {
            seekTo(getCurrentPosition(), false, false);
        }
        return audioTrack;
    }

    @Override
    public void setDataSource(Context context, Uri uri) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        setDataSource(context, uri, (Map<String, String>) null);
    }

    @Override
    public void setDisplay(SurfaceHolder surfaceHolder) {
        String str = TAG;
        Log.e(str, "setDisplay " + surfaceHolder + " " + this.mMediaPlayer + " mVideoCodecDeleted: " + this.mVideoCodecDeleted + " libvlc {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        Surface surface = null;
        if (mediaPlayer != null) {
            if (surfaceHolder != null) {
                if (this.mSurface != null && mediaPlayer.getVLCVout().areViewsAttached()) {
                    this.mMediaPlayer.getVLCVout().removeCallback(this);
                    this.mMediaPlayer.getVLCVout().detachViews();
                }
                this.mSurfaceHolder = surfaceHolder;
                if (!this.mVideoCodecDeleted) {
                    this.bWillToSetSurface = true;
                    this.mSurfaceHolder = surfaceHolder;
                    Log.d(str, "setDisplay goto bWillToSetSurface ");
                    this.mSurface = surfaceHolder.getSurface();
                    return;
                }
                this.mMediaPlayer.setSurfaceDestroyed(false);
                this.mMediaPlayer.getVLCVout().setVideoSurface(surfaceHolder.getSurface(), surfaceHolder);
                this.mMediaPlayer.getVLCVout().addCallback(this);
                this.mMediaPlayer.getVLCVout().attachViews(this);
                this.mMediaPlayer.setSurface(true);
                this.bWillToSetSurface = false;
                this.mMediaPlayer.setListenVideoMode(false);
                long currentPosition = getCurrentPosition();
                long duration = getDuration();
                this.mMediaPlayer.setPinPVideoMode(this.mPIPVideoMode);
                if ((this.mEofPaused || duration - currentPosition < 1000) && !this.mFirstSetDataSource) {
                    seekTo(0L, false, false);
                    if (this.mEofPaused) {
                        this.mEofPaused = true;
                    }
                } else if (duration - currentPosition < C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS && !this.mFirstSetDataSource) {
                    Log.d(str, "now:" + currentPosition + ", duration:" + duration + ". it's close to duration when resume playback");
                    seekTo(currentPosition, false, false);
                }
                if (this.mPaused || this.mEofPaused) {
                    this.mMediaPlayer.play();
                    this.mMediaPlayer.setRefreshFirstFrame(true);
                }
                if (this.mEofPaused) {
                    this.mMediaPlayer.setDropAudioFrames(true);
                }
            } else {
                if (this.mSourceType == 1 && this.mIsprepareing) {
                    stop();
                    notifyOnInfo(906, 0);
                    Log.e(str, "lose focus before internet prepared ");
                }
                this.bWillToSetSurface = false;
                this.mMediaPlayer.setSurfaceDestroyed(true);
                this.mMediaPlayer.setVideoTrack(-1);
                this.mMediaPlayer.setSurface(false);
                this.mSurfaceHolder = null;
                this.mFirstSetDataSource = false;
            }
        }
        if (surfaceHolder != null && this.mMediaPlayer != null) {
            surface = surfaceHolder.getSurface();
        }
        this.mSurface = surface;
        Log.d(str, "setDisplay " + this.mSurface + " }");
    }

    @Override
    public void setListenVideoMode(boolean z) {
        String str = TAG;
        Log.d(str, "setListenVideoMode " + z + " {");
        this.mListenVideo = z;
        Log.d(str, "setListenVideoMode }");
    }

    public void setLivePhotoLongpress(boolean z) {
        this.mLivePhotoLongpress = z;
    }

    @Override
    public void setLooping(boolean z) {
        String str = TAG;
        Log.d(str, "setLooping {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setLooping(z);
        }
        Log.d(str, "setLooping }");
    }

    public void setMute(boolean z) {
        String str = TAG;
        Log.d(str, "setMute " + this.mIsMute + " {");
        this.mIsMute = z;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setAudioMute(z);
        }
        Log.d(str, "setMute }");
    }

    public void setOnPause(boolean z) {
        String str = TAG;
        Log.d(str, "setOnPause paused:" + z + " mMediaPlayer:" + this.mMediaPlayer + " mPIPVideoMode:" + this.mPIPVideoMode);
        if (AndroidUtil.isRunningByMonkey()) {
            if (this.mMediaPlayer == null || this.mOpenError) {
                return;
            }
            Log.d(str, "monkey mode setOnPause paused:" + z);
            this.mMediaPlayer.setSurfaceDestroyed(z);
            return;
        }
        if (this.mMediaPlayer == null || this.mPIPVideoMode || this.mOpenError) {
            return;
        }
        Log.d(str, "normal mode setOnPause paused:" + z);
        this.mMediaPlayer.setSurfaceDestroyed(z);
    }

    public void setPictureInPictureMode(boolean z) {
        String str = TAG;
        Log.d(str, "setPictureInPictureMode " + z + " {");
        this.mPIPVideoMode = z;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setPinPVideoMode(z);
        }
        Log.d(str, "setPictureInPictureMode }");
    }

    @Override
    public void setScreenOnWhilePlaying(boolean z) {
        String str = TAG;
        Log.d(str, "setScreenOnWhilePlaying {");
        Log.d(str, "setScreenOnWhilePlaying }");
    }

    @Override
    public void setSpeed(float f) {
        String str = TAG;
        Log.d(str, "setSpeed " + f + " {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setRate(f);
        }
        Log.d(str, "setSpeed }");
    }

    public boolean setSpuTrack(int i) {
        String str = TAG;
        Log.d(str, "setSpuTrack  index: " + i);
        boolean spuTrack = this.mMediaPlayer.setSpuTrack(i);
        if (getCurrentPosition() != this.mLastSeekTime || getCurrentPosition() == 0) {
            if (!isPlaying() || i == -1) {
                boolean z = i >= 0;
                this.mNeedseek = z;
                if (z && this.mFirstSetDataSource) {
                    this.mFirstSetDataSource = false;
                    Log.d(str, "setSpuTrack mFirstSetDataSource: " + this.mFirstSetDataSource);
                }
            } else {
                seekTo(getCurrentPosition(), false, false);
            }
        }
        return spuTrack;
    }

    @Override
    public void setSurface(Surface surface) {
        String str = TAG;
        Log.d(str, "setSurface " + surface + " " + this.mMediaPlayer + " {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            if (surface != null) {
                if (this.mSurface != null && mediaPlayer.getVLCVout().areViewsAttached()) {
                    this.mMediaPlayer.getVLCVout().removeCallback(this);
                    this.mMediaPlayer.getVLCVout().detachViews();
                }
                this.mMediaPlayer.getVLCVout().setVideoSurface(surface, null);
                this.mMediaPlayer.getVLCVout().addCallback(this);
                this.mMediaPlayer.getVLCVout().attachViews(this);
                this.mMediaPlayer.setSurface(true);
                this.mMediaPlayer.setSurfaceDestroyed(false);
            } else {
                mediaPlayer.getVLCVout().removeCallback(this);
                this.mMediaPlayer.getVLCVout().detachViews();
            }
        }
        this.mSurface = surface;
        Log.d(str, "setSurface }");
    }

    @Override
    public void setTimedTextDelay(long j) {
        String str = TAG;
        Log.d(str, "setTimedTextDelay  delay:" + j + " {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setSpuDelay(j);
        }
        Log.d(str, "setTimedTextDelay }");
    }

    public void setTimedTextView(SurfaceView surfaceView) {
        String str = TAG;
        Log.d(str, "setTimedTextView surfaceView " + surfaceView + " " + this.mMediaPlayer + " {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            this.mSubtitlesView = null;
            if (surfaceView != null) {
                mediaPlayer.getVLCVout().setSubtitlesView(surfaceView);
            }
        } else {
            this.mSubtitlesView = surfaceView;
        }
        Log.d(str, "setTimedTextView }");
    }

    @Override
    public void setVolume(float f, float f2) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("setVolume ");
        float f3 = ((f + f2) * 100.0f) / 2.0f;
        sb.append(f3);
        sb.append(" {");
        Log.d(str, sb.toString());
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume((int) f3);
        }
        this.mLeftVolume = f;
        this.mRightVolume = f2;
        if (f > 0.0f || f2 > 0.0f) {
            this.mIsMute = false;
        }
        Log.d(str, "setVolume }");
    }

    @Override
    public void start() throws IllegalStateException {
        String str = TAG;
        Log.e(str, "start mVideoCodecDeleted:" + this.mVideoCodecDeleted + ", mHadVideoCodec:" + this.mHadVideoCodec + ", " + this.mMediaPlayer + "  sdkVersion: " + this.mVersion + " {");
        if (this.mReleaseMediaPlayer) {
            Log.d(str, "mReleaseMediaPlayer: " + this.mReleaseMediaPlayer + " start }");
            return;
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setRefreshFirstFrame(false);
            this.mMediaPlayer.setDropAudioFrames(false);
            if (this.mHadVideoCodec && !this.mVideoCodecDeleted && this.bWillToSetSurface) {
                this.mPlayRequested = true;
                Log.i(str, "start mVideoCodecDeleted:" + this.mVideoCodecDeleted + StringSubstitutor.DEFAULT_VAR_END);
                return;
            }
            if (!this.mListenVideo && this.mSurfaceHolder == null) {
                this.mPlayRequested = true;
                Log.i(str, "start mListenVideo:" + this.mListenVideo + StringSubstitutor.DEFAULT_VAR_END);
                return;
            }
            if (this.mEofPaused) {
                this.mEofPaused = false;
                seekTo(0L, false, false);
                this.mNeedseek = false;
            }
            this.mPlayRequested = false;
            this.mIsPlayingBeforeSeek = true;
            this.mMediaPlayer.play();
            if (this.mLeftVolume == 0.0f || this.mRightVolume == 0.0f) {
                this.mRightVolume = 1.0f;
                this.mLeftVolume = 1.0f;
            }
            if (this.mNeedseek) {
                this.mNeedseek = false;
                if (!this.mFirstSetDataSource) {
                    seekTo(getCurrentPosition(), false, false);
                }
            } else {
                float f = this.mLeftVolume;
                if ((f > 0.0f || this.mRightVolume > 0.0f) && !this.mIsMute) {
                    setVolumeFadeInOut((int) (((f + this.mRightVolume) * 100.0f) / 2.0f), this.mLastVolume);
                    this.mLastVolume = (((int) (this.mLeftVolume + this.mRightVolume)) * 100) / 2;
                }
            }
        }
        this.mPaused = false;
        if (getListenVideoMode()) {
            this.mFirstSetDataSource = false;
        }
        Log.i(str, "start}");
    }

    @Override
    public void stop() throws IllegalStateException {
        String str = TAG;
        Log.d(str, "stop {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.mPlayRequested = false;
        }
        Log.d(str, "stop }");
    }

    @Override
    public void onEvent(MediaPlayer.Event event) {
        Uri uri;
        Uri uri2;
        switch (event.type) {
            case 256:
                Log.d(TAG, "onEvent receive MediaChanged");
                break;
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
                Log.d(TAG, "onEvent unhandled event " + event.type);
                break;
            case 258:
                Log.d(TAG, "onEvent receive Opening");
                break;
            case 259:
                float buffering = event.getBuffering();
                if (buffering == 100.0f) {
                    if (this.mIsBuffering) {
                        this.mIsBuffering = false;
                        notifyOnInfo(702, 0);
                        Log.d(TAG, "onEvent receive End Buffering");
                    }
                    break;
                } else {
                    if (!this.mIsBuffering && isPlaying()) {
                        Log.d(TAG, "onEvent receive Start Buffering");
                        this.mIsBuffering = true;
                        notifyOnInfo(701, 0);
                    }
                    Uri uri3 = this.mUri;
                    if (uri3 != null && uri3.getScheme() != null && this.mUri.getScheme().startsWith(ProxyConfig.MATCH_HTTP)) {
                        notifyOnInfo(100003, (int) buffering);
                        break;
                    }
                }
                break;
            case 260:
                Log.d(TAG, "onEvent receive playing event");
                notifyOnInfo(903, 0);
                break;
            case 261:
                Log.d(TAG, "onEvent receive Paused event");
                notifyOnInfo(904, 0);
                break;
            case 262:
                Log.d(TAG, "onEvent receive Stopped event");
                notifyOnInfo(905, 0);
                break;
            case 265:
                String str = TAG;
                Log.d(str, "onEvent receive EndReached");
                long duration = getDuration();
                long currentPosition = getCurrentPosition();
                if ((duration > 0 && duration - currentPosition <= C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) || (uri = this.mUri) == null || uri.getScheme() == null || !this.mUri.getScheme().startsWith(ProxyConfig.MATCH_HTTP)) {
                    notifyOnCompletion();
                } else {
                    Log.d(str, " currentposition " + currentPosition + " duration " + duration);
                    notifyOnError(1, -10105);
                }
                break;
            case 266:
                int errorCode = event.getErrorCode();
                Log.d(TAG, "onEvent receive EncounteredError " + errorCode);
                this.mIsprepareing = false;
                this.mOpenError = true;
                notifyOnError(1, errorCode);
                break;
            case 267:
                long timeChanged = event.getTimeChanged();
                if (this.mCurrentPosition >= 0 && this.mSeekCompleteConunt > 0) {
                    boolean z = this.mHasVideo;
                    if (z && this.mIsFirstTimeChanged) {
                        Log.d(TAG, "onEvent receive SeekComplete video " + timeChanged);
                        this.mCurrentPosition = -1L;
                        if (this.mIsMute || this.mPaused) {
                            this.mMediaPlayer.setVolume(0);
                            this.mLastVolume = 0;
                        } else {
                            setVolumeFadeInOut(100, this.mLastVolume);
                            this.mLastVolume = 100;
                        }
                        notifyOnSeekComplete();
                        if (this.mSubtitleLoad) {
                            notifyOnTimedText(new TranTimedText("", 0L, 0L));
                        }
                    } else if (!z || this.mListenVideo) {
                        Log.d(TAG, "onEvent receive SeekComplete audio " + timeChanged);
                        this.mCurrentPosition = -1L;
                        if (this.mIsMute) {
                            this.mMediaPlayer.setVolume(0);
                            this.mLastVolume = 0;
                        } else {
                            setVolumeFadeInOut(100, this.mLastVolume);
                            this.mLastVolume = 100;
                        }
                        notifyOnSeekComplete();
                    }
                }
                this.mSeekCompleteConunt++;
                break;
            case 268:
                event.getPositionChanged();
                break;
            case 269:
                boolean seekable = event.getSeekable();
                Log.d(TAG, "onEvent receive SeekableChanged " + seekable);
                break;
            case 270:
                boolean pausable = event.getPausable();
                Log.d(TAG, "onEvent receive PausableChanged " + pausable);
                break;
            case 273:
                this.mDuration = event.getLengthChanged();
                notifyOnInfo(IMediaPlayer.MEDIA_AUDIO_TRACK_COUNT, getAudioTracksCount());
                Log.d(TAG, "onEvent receive LengthChanged " + this.mDuration);
                break;
            case 274:
                int voutCount = event.getVoutCount();
                this.mHasVideo = true;
                Log.d(TAG, "onEvent receive Vout " + voutCount);
                break;
            case 276:
            case 277:
            case 278:
                int esChangedType = event.getEsChangedType();
                int esChangedID = event.getEsChangedID();
                Log.d(TAG, "onEvent receive ES " + esChangedType + " " + esChangedID);
                if (esChangedType != 1) {
                    if (esChangedType == 0) {
                        notifyOnInfo(IMediaPlayer.MEDIA_INFO_AUDIO_ES_CHANGED, esChangedID);
                    }
                    break;
                } else {
                    notifyOnInfo(IMediaPlayer.MEDIA_INFO_VIDEO_ES_CHANGED, esChangedID);
                    if (esChangedID >= 0 && !this.mFirstSetDataSource) {
                        try {
                            Thread.sleep(10L);
                            break;
                        } catch (Exception unused) {
                        }
                        seekTo(getCurrentPosition(), false, false);
                        break;
                    }
                }
                break;
            case 286:
                String str2 = TAG;
                Log.d(str2, "onEvent receive FirstPicDisplay");
                this.mIsFirstTimeChanged = true;
                this.mVideoCodecDeleted = false;
                this.mMediaPlayer.setRefreshFirstFrame(false);
                if (this.mVideoStartTime > 0) {
                    long jCurrentTimeMillis = System.currentTimeMillis() - this.mVideoStartTime;
                    Log.e(str2, "onEvent receive startvideotime:" + jCurrentTimeMillis);
                    this.mVideoStartTime = 0L;
                    notifyOnInfo(IMediaPlayer.KPI_MEDIA_VIDEO_START_TIME, (int) jCurrentTimeMillis);
                }
                if (this.mVideoSeekTime > 0) {
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - this.mVideoSeekTime;
                    Log.d(str2, "onEvent receive seektime:" + jCurrentTimeMillis2);
                    this.mVideoSeekTime = 0L;
                    notifyOnInfo(100012, (int) jCurrentTimeMillis2);
                }
                notifyOnInfo(100001, 0);
                if (!this.mIsPlayingBeforeSeek) {
                    Log.d(str2, "mIsPlayingBeforeSeek pause ");
                    this.mMediaPlayer.pause();
                    this.mPaused = true;
                }
                break;
            case MediaPlayer.Event.VideoSize:
                this.mVideoWidth = event.getVideoWidth();
                this.mVideoHeight = event.getVideoHeight();
                this.mSarNum = event.getVideoSarNum();
                this.mSarDen = event.getVideoSarDen();
                Log.d(TAG, "onEvent receive VideoSize " + this.mVideoWidth + " " + this.mVideoHeight + " " + this.mSarNum + " " + this.mSarDen);
                notifyOnVideoSizeChanged(this.mVideoWidth, this.mVideoHeight, this.mSarNum, this.mSarDen);
                break;
            case MediaPlayer.Event.LosePicSerious:
                Log.d(TAG, "onEvent receive LosePicSerious");
                notifyOnInfo(100002, 0);
                break;
            case MediaPlayer.Event.Unsupported:
                Log.d(TAG, "onEvent receive Unsupported");
                notifyOnError(-1010, 0);
                break;
            case MediaPlayer.Event.Prepared:
                Log.d(TAG, "onEvent receive Prepared");
                this.mIsprepareing = false;
                this.mIsPrepared = true;
                notifyOnPrepared();
                break;
            case MediaPlayer.Event.Subtitle:
                Log.d(TAG, "onEvent receive Subtitle " + event.getSubtitleStart() + "-" + event.getSubtitleDuration() + StringUtils.PROCESS_POSTFIX_DELIMITER + event.getSubtitleText());
                notifyOnTimedText(new TranTimedText(event.getSubtitleText(), (long) event.getSubtitleStart(), (long) event.getSubtitleDuration()));
                break;
            case MediaPlayer.Event.SubtitleLoad:
                Log.d(TAG, "onEvent receive SubtitleLoad " + event.getSubtitleLoadStatus());
                this.mSubtitleLoad = event.getSubtitleLoadStatus() == 1;
                notifyOnInfo(100004, event.getSubtitleLoadStatus());
                break;
            case MediaPlayer.Event.EofPaused:
                String str3 = TAG;
                Log.d(str3, "onEvent receive EofPaused");
                long duration2 = getDuration();
                long currentPosition2 = getCurrentPosition();
                if ((duration2 <= 0 || duration2 - currentPosition2 > C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) && (uri2 = this.mUri) != null && uri2.getScheme() != null && this.mUri.getScheme().startsWith(ProxyConfig.MATCH_HTTP)) {
                    Log.d(str3, " currentposition " + currentPosition2 + " duration " + duration2);
                    notifyOnError(1, -10105);
                } else if (!this.mIsFirstTimeChanged && ".mng".equals(getUriExtension())) {
                    notifyOnError(-1010, 0);
                } else {
                    this.mEofPaused = true;
                    this.mMediaPlayer.setVolume(0);
                    this.mLastVolume = 0;
                    this.mIsPlayingBeforeSeek = false;
                    notifyOnCompletion();
                }
                break;
            case MediaPlayer.Event.DisableVideo:
                Log.d(TAG, "onEvent receive DisableVideo");
                notifyOnInfo(IMediaPlayer.MEDIA_INFO_DISABLE_VIDEO, 0);
                break;
            case MediaPlayer.Event.DisableAudio:
                Log.d(TAG, "onEvent receive DisableAudio");
                notifyOnInfo(IMediaPlayer.MEDIA_INFO_DISABLE_AUDIO, 0);
                break;
            case MediaPlayer.Event.SubtitleType:
                int subtitleTypeId = event.getSubtitleTypeId();
                int subtitleType = event.getSubtitleType();
                Log.d(TAG, "onEvent receive spuid " + subtitleTypeId + " " + subtitleType);
                notifyOnSubTitleTypeChanged(subtitleTypeId, subtitleType);
                break;
            case MediaPlayer.Event.VideoCodecDeleted:
                int videoCodecStatus = event.getVideoCodecStatus();
                String str4 = TAG;
                Log.i(str4, "onEvent receive mVideoCodecDeleted codec: " + videoCodecStatus);
                if (videoCodecStatus != 1) {
                    this.mHadVideoCodec = true;
                    this.mVideoCodecDeleted = false;
                } else {
                    this.mVideoCodecDeleted = true;
                    this.mHadVideoCodec = false;
                    if (this.bWillToSetSurface) {
                        Log.d(str4, "onEvent receive  bWillToSetSurface ");
                        setDisplay(this.mSurfaceHolder);
                    }
                    if (this.mVideoCodecDeleted) {
                        Log.d(str4, "onEvent receive mVideoCodecDeleted notifyOnCodecDeleteComplete() ");
                        notifyOnCodecDeleteComplete();
                    }
                    if (this.mPlayRequested) {
                        try {
                            Thread.sleep(70L);
                            break;
                        } catch (Exception unused2) {
                        }
                        Log.d(TAG, "onEvent receive playRequested");
                        start();
                    }
                }
                break;
            case MediaPlayer.Event.VideoFPS:
                this.mVideoFPS = event.getVideoFPS();
                Log.d(TAG, "onEvent receive mfps: " + this.mVideoFPS);
                break;
            case MediaPlayer.Event.VideoCodecInfo:
                this.mIsMediaCodec = event.getUseMediaCodec();
                this.mVideoCodecName = event.getVideoCodecName();
                Log.i(TAG, "onEvent receive mIsMediaCodec: " + this.mIsMediaCodec + " codec: " + event.getVideoCodecName());
                break;
            case 300:
                int notifyInfo = event.getNotifyInfo();
                if (notifyInfo == 10000 && this.mSurface != null) {
                    seekTo(getCurrentPosition(), false, false);
                }
                Log.d(TAG, "onEvent receive infotype: " + notifyInfo);
                break;
        }
    }

    @Override
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        String mediaSourcePath;
        String str;
        if (context == null) {
            throw new NullPointerException("context param can not be null.");
        }
        this.mUri = uri;
        this.mContext = context;
        this.mListenVideo = false;
        this.mIsMute = false;
        if (map != null && (str = map.get("listen-video")) != null && str.toString().compareTo("1") == 0) {
            this.mListenVideo = true;
        }
        String scheme = uri.getScheme();
        if ("file".equals(scheme)) {
            setDataSource(uri.getPath(), map);
            return;
        }
        if (ICode.CALL.CALL_KEY_CONTENT.equals(scheme) && "settings".equals(uri.getAuthority()) && (uri = RingtoneManager.getActualDefaultRingtoneUri(context, RingtoneManager.getDefaultType(uri))) == null) {
            throw new FileNotFoundException("Failed to resolve default ringtone");
        }
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptorWithRetry = null;
        try {
            try {
                assetFileDescriptorOpenAssetFileDescriptorWithRetry = openAssetFileDescriptorWithRetry(context, uri);
                if (assetFileDescriptorOpenAssetFileDescriptorWithRetry == null) {
                    Log.e(TAG, "setDataSource fd is null, falling back to uri");
                    if (assetFileDescriptorOpenAssetFileDescriptorWithRetry != null) {
                        assetFileDescriptorOpenAssetFileDescriptorWithRetry.close();
                    }
                    setDataSource(uri.toString(), map);
                    return;
                }
                if (assetFileDescriptorOpenAssetFileDescriptorWithRetry.getDeclaredLength() >= 0) {
                    setDataSource(assetFileDescriptorOpenAssetFileDescriptorWithRetry.getFileDescriptor(), assetFileDescriptorOpenAssetFileDescriptorWithRetry.getStartOffset(), assetFileDescriptorOpenAssetFileDescriptorWithRetry.getDeclaredLength(), map);
                } else if (!this.mListenVideo || (mediaSourcePath = getMediaSourcePath(uri)) == null) {
                    setDataSource(assetFileDescriptorOpenAssetFileDescriptorWithRetry.getFileDescriptor(), map);
                } else {
                    setDataSource(mediaSourcePath, map);
                }
                assetFileDescriptorOpenAssetFileDescriptorWithRetry.close();
            } catch (IOException e) {
                Log.d(TAG, "setDataSource IOException " + e);
                if (0 != 0) {
                }
            } catch (SecurityException e2) {
                Log.d(TAG, "setDataSource SecurityException " + e2);
                if (0 != 0) {
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                assetFileDescriptorOpenAssetFileDescriptorWithRetry.close();
            }
            throw th;
        }
    }

    public class FadeRunnable implements Runnable {
        private final int currentVolume;
        private final int lastVolume;
        private final int myGeneration;
        private final long seekTime;

        public FadeRunnable(int i, int i2, int i3) {
            this.currentVolume = i;
            this.lastVolume = i2;
            this.seekTime = -1L;
            this.myGeneration = i3;
        }

        @Override
        public void run() {
            int i;
            boolean z = this.currentVolume > this.lastVolume;
            int i2 = z ? 10 : 3;
            Log.e(TranMediaPlayer.TAG, "setVolumeFadeInOut -- run -- Begin .");
            try {
                Thread.sleep(z ? 300L : 100L);
                while (true) {
                    if (!TranMediaPlayer.this.mIsVlcReleasing.get() && this.myGeneration == TranMediaPlayer.this.mFadeGeneration.get()) {
                        Log.d(TranMediaPlayer.TAG, "setVolume .  volume_tmp:" + i);
                        synchronized (TranMediaPlayer.this.mLock) {
                            if (TranMediaPlayer.this.mMediaPlayer != null && !TranMediaPlayer.this.mIsVlcReleasing.get() && this.myGeneration == TranMediaPlayer.this.mFadeGeneration.get()) {
                                try {
                                    TranMediaPlayer.this.mMediaPlayer.setVolume(i);
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                                if (z) {
                                    try {
                                        Thread.sleep(i2 + 30);
                                    } catch (InterruptedException e2) {
                                        e2.printStackTrace();
                                    }
                                } else {
                                    Thread.sleep(i2);
                                }
                                i = z ? i + 10 : i - 10;
                                if ((z && i > this.currentVolume) || (!z && i < this.currentVolume)) {
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                    } else {
                        Log.e(TranMediaPlayer.TAG, "Fade task cancelled or releasing, break fade loop. gen: " + this.myGeneration);
                        break;
                    }
                }
            } catch (InterruptedException e3) {
                e3.printStackTrace();
            }
            i = this.lastVolume;
            if (z || this.seekTime == -1) {
                return;
            }
            try {
                Thread.sleep(10L);
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
            if (TranMediaPlayer.this.mIsVlcReleasing.get() || this.myGeneration != TranMediaPlayer.this.mFadeGeneration.get()) {
                return;
            }
            Log.e(TranMediaPlayer.TAG, "seektime " + this.seekTime + " lastseektime " + TranMediaPlayer.this.mLastSeekTime);
            if (TranMediaPlayer.this.mLastSeekTime != -1) {
                TranMediaPlayer tranMediaPlayer = TranMediaPlayer.this;
                tranMediaPlayer.fadedOutToSeek(tranMediaPlayer.mLastSeekTime);
            }
        }

        public FadeRunnable(int i, int i2, long j, int i3) {
            this.currentVolume = i;
            this.lastVolume = i2;
            this.seekTime = j;
            this.myGeneration = i3;
        }
    }

    public void setTimedTextView(TextureView textureView) {
        String str = TAG;
        Log.d(str, "setTimedTextView textureView " + textureView + " " + this.mMediaPlayer + " {");
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            this.mSubtitlesTextureView = null;
            if (textureView != null) {
                mediaPlayer.getVLCVout().setSubtitlesView(textureView);
            }
        } else {
            this.mSubtitlesTextureView = textureView;
        }
        Log.d(str, "setTimedTextView }");
    }

    private void setVolumeFadeInOut(int i, int i2) {
        if (this.mDuration < 700 && AndroidUtil.isRunningByMonkey()) {
            Log.e(TAG, "setVolumeFadeInOut. return : mDuration: " + this.mDuration);
            return;
        }
        setVolumeFadeInOut(i, i2, -1L);
    }

    @Override
    public void setDataSource(String str, Map<String, String> map) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        String str2 = TAG;
        Log.e(str2, "setDataSource path " + str + " {");
        parseHeader(map);
        String scheme = Uri.parse(str).getScheme();
        if (TextUtils.isEmpty(scheme)) {
            this.mSourceType = 2;
            this.mPath = str;
        } else if (!scheme.equalsIgnoreCase(ProxyConfig.MATCH_HTTP) && !scheme.equalsIgnoreCase(ProxyConfig.MATCH_HTTPS) && !scheme.equalsIgnoreCase("rtsp")) {
            this.mSourceType = 2;
            if (str.contains("file://")) {
                this.mPath = Uri.parse(str).getPath();
            } else {
                this.mPath = str;
            }
        } else {
            this.mSourceType = 1;
            this.mUri = Uri.parse(str);
        }
        preInitPlayer();
        Log.d(str2, "setDataSource }");
    }

    @Override
    public void setDataSource(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        setDataSource(str, (Map<String, String>) null);
    }

    @Override
    public void setDataSource(FileDescriptor fileDescriptor, long j, long j2) throws IllegalStateException, IOException, IllegalArgumentException {
        setDataSource(fileDescriptor, j, j2, null);
    }

    public void setDataSource(FileDescriptor fileDescriptor, long j, long j2, Map<String, String> map) throws IllegalStateException, IOException, IllegalArgumentException {
        setDataSource(fileDescriptor, map);
        this.mOffset = j;
        this.mLength = j2;
    }

    @Override
    public void setDataSource(FileDescriptor fileDescriptor) throws IllegalStateException, IOException, IllegalArgumentException {
        setDataSource(fileDescriptor, (Map<String, String>) null);
    }

    public void setDataSource(FileDescriptor fileDescriptor, Map<String, String> map) throws IllegalStateException, IOException, IllegalArgumentException {
        Log.d(TAG, "setDataSource fd " + fileDescriptor + " {");
        parseHeader(map);
        this.mSourceType = 3;
        ParcelFileDescriptor parcelFileDescriptor = this.mFile;
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException unused) {
            }
            this.mFile = null;
            this.mFd = -1;
        }
        ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptor);
        this.mFile = parcelFileDescriptorDup;
        this.mFd = parcelFileDescriptorDup.getFd();
        preInitPlayer();
        Log.d(TAG, "setDataSource }");
    }

    @Override
    public void setDataSource(IMediaDataSource iMediaDataSource) throws IllegalStateException, SecurityException, IllegalArgumentException {
        Log.e(TAG, "interface setDataSource with IMediaDataSource is not implement, please use other setDataSource instead");
    }
}
