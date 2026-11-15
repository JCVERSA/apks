package com.hunantv.media.player.libnative;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.Window;
import com.hunantv.media.config.NetPlayConfig;
import com.hunantv.media.drm.utils.MgtvDrmUtils;
import com.hunantv.media.player.a;
import com.hunantv.media.player.c.b;
import com.hunantv.media.player.d;
import com.hunantv.media.player.e;
import com.hunantv.media.player.f;
import com.hunantv.media.player.g;
import com.hunantv.media.player.loader.ImgoLibLoader;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.pragma.PlayerConfig;
import com.hunantv.media.player.utils.PreferencesUtil;
import com.hunantv.media.report.c.h;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Locale;

public final class ImgoMediaPlayerLib extends a {
    public static final int FFP_PROPV_DECODER_AVCODEC = 1;
    public static final int FFP_PROPV_DECODER_MEDIACODEC = 2;
    public static final int FFP_PROPV_DECODER_UNKNOWN = 0;
    public static final int FFP_PROPV_DECODER_VIDEOTOOLBOX = 3;
    public static final int FFP_PROP_FLOAT_AUDIO_LATENCY = 10007;
    public static final int FFP_PROP_FLOAT_AVDELAY = 10004;
    public static final int FFP_PROP_FLOAT_AVDIFF = 10005;
    public static final int FFP_PROP_FLOAT_FILE_START_TIME = 10006;
    public static final int FFP_PROP_FLOAT_PLAYBACK_RATE = 10003;
    public static final int FFP_PROP_FLOAT_VIDEO_DECODE_FRAMES_PER_SECOND = 10001;
    public static final int FFP_PROP_FLOAT_VIDEO_OUTPUT_FRAMES_PER_SECOND = 10002;
    public static final int FFP_PROP_INT64_ASYNC_STATISTIC_BUF_BACKWARDS = 20201;
    public static final int FFP_PROP_INT64_ASYNC_STATISTIC_BUF_CAPACITY = 20203;
    public static final int FFP_PROP_INT64_ASYNC_STATISTIC_BUF_FORWARDS = 20202;
    public static final int FFP_PROP_INT64_AUDIO_CACHED_BYTES = 20008;
    public static final int FFP_PROP_INT64_AUDIO_CACHED_DURATION = 20006;
    public static final int FFP_PROP_INT64_AUDIO_CACHED_PACKETS = 20010;
    public static final int FFP_PROP_INT64_AUDIO_DECODER = 20004;
    public static final int FFP_PROP_INT64_AUDIO_TIMESTAMP_POS = 20421;
    public static final int FFP_PROP_INT64_AUDIO_TIMESTAMP_STATUS = 80021;
    public static final int FFP_PROP_INT64_AV_CACHED_BYTES = 20101;
    public static final int FFP_PROP_INT64_AV_CACHED_TIMEMS = 20102;
    public static final int FFP_PROP_INT64_BIT_RATE = 20100;
    public static final int FFP_PROP_INT64_CLOCK_NOTIFY = 80001;
    public static final int FFP_PROP_INT64_CLOCK_VPTS_NOTIFY_END = 80003;
    public static final int FFP_PROP_INT64_CLOCK_VPTS_NOTIFY_START = 80002;
    public static final int FFP_PROP_INT64_CRASH_TEST = 90001;
    public static final int FFP_PROP_INT64_DECODER_PLAY_NOTIFY = 90003;
    public static final int FFP_PROP_INT64_DRM_PREPEARED_STATUE = 20420;
    public static final int FFP_PROP_INT64_FRAME_PTS_NOTIFY = 90002;
    public static final int FFP_PROP_INT64_GETFRAMETIME_DF = 20505;
    public static final int FFP_PROP_INT64_GETFRAMETIME_DROP_NUM = 20510;
    public static final int FFP_PROP_INT64_GETFRAMETIME_FIN = 20512;
    public static final int FFP_PROP_INT64_GETFRAMETIME_GEN_NUM = 20511;
    public static final int FFP_PROP_INT64_GETFRAMETIME_T1 = 20501;
    public static final int FFP_PROP_INT64_GETFRAMETIME_T2 = 20502;
    public static final int FFP_PROP_INT64_GETFRAMETIME_T3 = 20503;
    public static final int FFP_PROP_INT64_GETFRAMETIME_T4 = 20504;
    public static final int FFP_PROP_INT64_GETFRAMETIME_TD = 20506;
    public static final int FFP_PROP_INT64_GETFRAMETIME_TE = 20508;
    public static final int FFP_PROP_INT64_GETFRAMETIME_TF = 20509;
    public static final int FFP_PROP_INT64_GETFRAMETIME_TS = 20507;
    public static final int FFP_PROP_INT64_IS_CODEC_SW_RENDER = 80023;
    public static final int FFP_PROP_INT64_IS_SUPPORT_SNAPSHOT = 80022;
    public static final int FFP_PROP_INT64_LATEST_SEEK_LOAD_DURATION = 20300;
    public static final int FFP_PROP_INT64_LOOPAB_TARGET_POS = 80010;
    public static final int FFP_PROP_INT64_LOOP_SEEK = 80020;
    public static final int FFP_PROP_INT64_NET_BROKEN = 90012;
    public static final int FFP_PROP_INT64_OPPOOSIE_ENALBE = 90021;
    public static final int FFP_PROP_INT64_OPPOSR_ENALBE = 90020;
    public static final int FFP_PROP_INT64_P2P_SMOOTH_FAIL = 90010;
    public static final int FFP_PROP_INT64_SELECTED_AUDIO_STREAM = 20002;
    public static final int FFP_PROP_INT64_SELECTED_TIMEDTEXT_STREAM = 20011;
    public static final int FFP_PROP_INT64_SELECTED_VIDEO_STREAM = 20001;
    public static final int FFP_PROP_INT64_SMOOTH_ACCSEEK = 90011;
    public static final int FFP_PROP_INT64_STEP_PLAYBACK = 30001;
    public static final int FFP_PROP_INT64_TCP_SPEED = 20200;
    public static final int FFP_PROP_INT64_TRAFFIC_STATISTIC_BYTE_COUNT = 20204;
    public static final int FFP_PROP_INT64_VIDEO_CACHED_BYTES = 20007;
    public static final int FFP_PROP_INT64_VIDEO_CACHED_DURATION = 20005;
    public static final int FFP_PROP_INT64_VIDEO_CACHED_PACKETS = 20009;
    public static final int FFP_PROP_INT64_VIDEO_DECODER = 20003;
    public static final int FFP_PROP_INT64_VSRTIME_AVG = 20411;
    public static final int FFP_PROP_INT64_VSRTIME_COUNT = 20410;
    public static final int FFP_PROP_INT64_VSRTIME_MAX = 20413;
    public static final int FFP_PROP_INT64_VSRTIME_MIN = 20412;
    public static final int FFP_PROP_INT64_VSR_RUN_EANBLE = 90013;
    public static final int FFP_PROP_INT64_VVTTIME_DLPT = 20409;
    public static final int FFP_PROP_INT64_VVTTIME_T1 = 20401;
    public static final int FFP_PROP_INT64_VVTTIME_T2 = 20402;
    public static final int FFP_PROP_INT64_VVTTIME_T3 = 20403;
    public static final int FFP_PROP_INT64_VVTTIME_T4 = 20404;
    public static final int FFP_PROP_INT64_VVTTIME_T5 = 20405;
    public static final int FFP_PROP_INT64_VVTTIME_T6 = 20406;
    public static final int FFP_PROP_INT64_VVTTIME_VVBT = 20408;
    public static final int FFP_PROP_INT64_VVTTIME_VVT = 20407;
    public static final int FFP_PROP_INT64_WANOS_AUDIO_EFFECT = 30002;
    private static final int MEDIA_BUFFERING_TIMEOUT = 300;
    private static final int MEDIA_BUFFERING_UPDATE = 3;
    private static final int MEDIA_ERROR = 100;
    private static final int MEDIA_GET_FRAME_IMG_INFO = 701;
    private static final int MEDIA_GET_FRAME_IMG_STATUE = 700;
    private static final int MEDIA_INFO = 200;
    private static final int MEDIA_INFO_DRM = 210;
    private static final int MEDIA_INFO_STRING = 201;
    private static final int MEDIA_LOOPSWITCH_SOURCE_COMPLETE = 601;
    private static final int MEDIA_LOOPSWITCH_SOURCE_FAILED = 602;
    private static final int MEDIA_LOOPSWITCH_SOURCE_INFO = 600;
    private static final int MEDIA_NOP = 0;
    private static final int MEDIA_PLAYBACK_COMPLETE = 2;
    private static final int MEDIA_PREPARED = 1;
    private static final int MEDIA_RECORD_VIDEO_ERR = 501;
    private static final int MEDIA_RECORD_VIDEO_INFO = 500;
    private static final int MEDIA_SEEK_COMPLETE = 4;
    protected static final int MEDIA_SET_VIDEO_DAR = 10002;
    protected static final int MEDIA_SET_VIDEO_PAR = 10003;
    protected static final int MEDIA_SET_VIDEO_SAR = 10001;
    private static final int MEDIA_SET_VIDEO_SIZE = 5;
    private static final int MEDIA_SMOOTH_SWITCH_SOURCE_COMPLETE = 604;
    private static final int MEDIA_SMOOTH_SWITCH_SOURCE_FAILED = 605;
    private static final int MEDIA_SMOOTH_SWITCH_SOURCE_INFO = 603;
    private static final int MEDIA_SWITCH_SOURCE_COMPLETE = 401;
    private static final int MEDIA_SWITCH_SOURCE_FAILED = 402;
    private static final int MEDIA_SWITCH_SOURCE_INFO = 400;
    private static final int MEDIA_TIMED_TEXT = 99;
    public static final int OPPO_FUNC_OSIE = 2;
    public static final int OPPO_FUNC_SR = 1;
    public static final int OPT_CATEGORY_CODEC = 2;
    public static final int OPT_CATEGORY_FORMAT = 1;
    public static final int OPT_CATEGORY_PLAYER = 4;
    public static final int OPT_CATEGORY_SWS = 3;
    public static final int SDL_FCC_RV16 = 909203026;
    public static final int SDL_FCC_RV32 = 842225234;
    public static final int SDL_FCC_YV12 = 842094169;
    public static final int SDL_FCC__OPENGLES = 1397050439;
    private static final String TAG = "ImgoMediaPlayerLib";
    private static volatile boolean mIsNativeInitialized = false;
    private static String mPackageName = "com.hunantv.imgo.activity";
    private int mBufferedPercent;
    private long mBufferedPositionMs;
    private Context mContext;
    private int mCurBufferingPercent;
    private String mCurrentRecFile;
    private String mDataSource;
    private EventHandler mEventHandler;
    private boolean mIsReleased;
    private int mListenerContext;
    private long mNativeMGTVMediaDataSource;
    private long mNativeMGTVSMediaDataSource;
    private long mNativeMediaDataSource;
    private long mNativeMediaPlayer;
    private int mNativeSurfaceTexture;
    private OnMediaCodecSelectListener mOnMediaCodecSelectListener;
    private OnNativeInvokeListener mOnNativeInvokeListener;
    private boolean mScreenOnWhilePlaying;
    private boolean mStayAwake;
    private SurfaceHolder mSurfaceHolder;
    private int mVideoDarDen;
    private int mVideoDarNum;
    private int mVideoHeight;
    private int mVideoParDen;
    private int mVideoParNum;
    private int mVideoSarDen;
    private int mVideoSarNum;
    private int mVideoWidth;
    private PowerManager.WakeLock mWakeLock;
    private WeakReference<ImgoMediaPlayerLib> mWeakImgoPlayer;

    public static class DefaultMediaCodecSelector implements OnMediaCodecSelectListener {
        public static DefaultMediaCodecSelector sInstance = new DefaultMediaCodecSelector();
        private boolean mIsAdaptive;

        @Override
        @TargetApi(16)
        public boolean onCodecIsAdaptive(d dVar) {
            DebugLog.i(dVar != null ? dVar.getLogTag() : ImgoMediaPlayerLib.TAG, this.mIsAdaptive ? String.format(Locale.US, "support adaptive", new Object[0]) : String.format(Locale.US, "not support adaptive", new Object[0]));
            return this.mIsAdaptive;
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0070  */
        @Override
        @TargetApi(16)
        public String onMediaCodecSelect(d dVar, String str, int i, int i2) {
            String[] supportedTypes;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String logTag = dVar != null ? dVar.getLogTag() : ImgoMediaPlayerLib.TAG;
            ImgoReportLog.ImgoLogReport(1, "11", logTag, String.format(Locale.US, "onSelectCodec: mime=%s, profile=%d, level=%d", str, Integer.valueOf(i), Integer.valueOf(i2)));
            ArrayList<e> arrayList = new ArrayList();
            int codecCount = MediaCodecList.getCodecCount();
            for (int i3 = 0; i3 < codecCount; i3++) {
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i3);
                DebugLog.d(logTag, String.format(Locale.US, "  found codec: %s", codecInfoAt.getName()));
                if (!codecInfoAt.isEncoder() && (supportedTypes = codecInfoAt.getSupportedTypes()) != null) {
                    for (String str2 : supportedTypes) {
                        if (!TextUtils.isEmpty(str2)) {
                            Locale locale = Locale.US;
                            DebugLog.d(logTag, String.format(locale, "    mime: %s", str2));
                            if (str2.equalsIgnoreCase(str)) {
                                e eVarA = e.a(codecInfoAt, str, i, i2);
                                if (eVarA != null) {
                                    arrayList.add(eVarA);
                                    DebugLog.i(logTag, String.format(locale, "candidate codec: %s rank=%d", codecInfoAt.getName(), Integer.valueOf(eVarA.j)));
                                    eVarA.a(str);
                                }
                            }
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            e eVar = (e) arrayList.get(0);
            for (e eVar2 : arrayList) {
                if (eVar2.j > eVar.j) {
                    eVar = eVar2;
                }
            }
            if (eVar.j < e.d) {
                DebugLog.i(logTag, String.format(Locale.US, "unaccetable codec: %s(%d)", eVar.i.getName(), Integer.valueOf(eVar.j)));
                return null;
            }
            DebugLog.i(logTag, eVar.l ? String.format(Locale.US, "selected codec: %s rank=%d adaptive=1", eVar.i.getName(), Integer.valueOf(eVar.j)) : String.format(Locale.US, "selected codec: %s rank=%d adaptive=0", eVar.i.getName(), Integer.valueOf(eVar.j)));
            this.mIsAdaptive = eVar.l;
            return eVar.i.getName();
        }
    }

    public static class EventHandler extends Handler {
        private final WeakReference<ImgoMediaPlayerLib> mWeakPlayer;

        public EventHandler(ImgoMediaPlayerLib imgoMediaPlayerLib, Looper looper) {
            super(looper);
            this.mWeakPlayer = new WeakReference<>(imgoMediaPlayerLib);
        }

        @Override
        public void handleMessage(Message message) {
            int i;
            ImgoMediaPlayerLib imgoMediaPlayerLib = this.mWeakPlayer.get();
            if (imgoMediaPlayerLib != null) {
                if (imgoMediaPlayerLib.mNativeMediaPlayer != 0) {
                    int i2 = message.what;
                    if (i2 != 0) {
                        if (i2 == 1) {
                            imgoMediaPlayerLib.notifyOnPrepared();
                            imgoMediaPlayerLib.maybeUpdateAudioTimestamp();
                            return;
                        }
                        if (i2 == 2) {
                            imgoMediaPlayerLib.notifyOnCompletion(message.arg1, message.arg2);
                            imgoMediaPlayerLib.stayAwake(false);
                            return;
                        }
                        if (i2 == 3) {
                            int i3 = message.arg2;
                            int i4 = i3 >= 0 ? i3 : 0;
                            int i5 = i4 < 100 ? i4 : 100;
                            if (imgoMediaPlayerLib.mCurBufferingPercent != i5 && imgoMediaPlayerLib.mCurBufferingPercent < i5) {
                                imgoMediaPlayerLib.mCurBufferingPercent = i5;
                            }
                            long j = message.arg1;
                            if (j < 0) {
                                j = 0;
                            }
                            long duration = imgoMediaPlayerLib.getDuration();
                            long j2 = duration > 0 ? (j * 100) / duration : 0L;
                            int i6 = (int) (j2 < 100 ? j2 : 100L);
                            imgoMediaPlayerLib.notifyOnBufferingUpdate(i6);
                            imgoMediaPlayerLib.mBufferedPercent = i6;
                            imgoMediaPlayerLib.mBufferedPositionMs = j;
                            return;
                        }
                        if (i2 == 4) {
                            imgoMediaPlayerLib.notifyOnSeekComplete(message.arg1, message.arg2);
                            return;
                        }
                        if (i2 == 5) {
                            imgoMediaPlayerLib.mVideoWidth = message.arg1;
                            imgoMediaPlayerLib.mVideoHeight = message.arg2;
                            imgoMediaPlayerLib.notifyOnVideoSizeChanged(imgoMediaPlayerLib.mVideoWidth, imgoMediaPlayerLib.mVideoHeight, imgoMediaPlayerLib.mVideoSarNum, imgoMediaPlayerLib.mVideoSarDen);
                            return;
                        }
                        if (i2 != 99) {
                            if (i2 == 100) {
                                DebugLog.e(imgoMediaPlayerLib.getLogTag(), "Error (" + message.arg1 + StringUtils.COMMA + message.arg2 + ")");
                                if (!imgoMediaPlayerLib.notifyOnError(message.arg1, message.arg2)) {
                                    imgoMediaPlayerLib.notifyOnCompletion(message.arg1, message.arg2);
                                }
                                imgoMediaPlayerLib.stayAwake(false);
                                return;
                            }
                            if (i2 == 200) {
                                int i7 = message.arg1;
                                if (i7 != 700 && i7 != 7 && i7 != 8) {
                                    DebugLog.d(imgoMediaPlayerLib.getLogTag(), "Info (" + message.arg1 + StringUtils.COMMA + message.arg2 + ")");
                                }
                                if (message.arg1 == 5) {
                                    int i8 = message.arg2;
                                    if (i8 == 1) {
                                        message.arg2 = 501;
                                    } else {
                                        if (i8 == 2) {
                                            i = 502;
                                        } else if (i8 == 3) {
                                            i = 504;
                                        } else if (i8 == 4) {
                                            i = 505;
                                        } else if (i8 == 5) {
                                            i = 506;
                                        }
                                        message.arg2 = i;
                                    }
                                    DebugLog.i(imgoMediaPlayerLib.getLogTag(), "Info MEDIA_INFO_DECODER_TYPE_CHANGED(" + message.arg1 + StringUtils.COMMA + message.arg2 + ")");
                                }
                                if (message.arg1 == 701) {
                                    imgoMediaPlayerLib.mCurBufferingPercent = 0;
                                }
                                imgoMediaPlayerLib.notifyOnInfo(message.arg1, message.arg2);
                                return;
                            }
                            if (i2 == 201) {
                                imgoMediaPlayerLib.notifyOnInfoString(message.arg1, (String) message.obj);
                                return;
                            }
                            if (i2 == 210) {
                                int i9 = message.arg2;
                                if (i9 == 0) {
                                    byte[] bArr = (byte[]) message.obj;
                                    DebugLog.d(imgoMediaPlayerLib.getLogTag(), "MEDIA_INFO_DRM in" + bArr);
                                    imgoMediaPlayerLib.notifyOnDrmPsshMap(MgtvDrmUtils.parsePSSH(bArr));
                                    return;
                                }
                                if (i9 == 1) {
                                    imgoMediaPlayerLib.notifyOnMaskDrmInit((byte[]) message.obj);
                                    return;
                                }
                                DebugLog.d(imgoMediaPlayerLib.getLogTag(), "MEDIA_INFO_DRM in not support yet. arg1=" + message.arg1);
                                return;
                            }
                            if (i2 == 300) {
                                DebugLog.e(imgoMediaPlayerLib.getLogTag(), "Error (" + message.arg1 + StringUtils.COMMA + message.arg2 + ")");
                                imgoMediaPlayerLib.notifyOnBufferingTimeout(message.arg1, message.arg2);
                                imgoMediaPlayerLib.stayAwake(false);
                                return;
                            }
                            if (i2 == 500) {
                                DebugLog.d(imgoMediaPlayerLib.getLogTag(), "record video info (" + message.arg1 + StringUtils.COMMA + message.arg2 + ")");
                                imgoMediaPlayerLib.notifyOnRecordVideoInfo(message.arg1, message.arg2);
                                return;
                            }
                            if (i2 == 501) {
                                DebugLog.d(imgoMediaPlayerLib.getLogTag(), "record video error (" + message.arg1 + StringUtils.COMMA + message.arg2 + ")");
                                imgoMediaPlayerLib.notifyOnRecordVideoErr(message.arg1, message.arg2);
                                return;
                            }
                            if (i2 == 700) {
                                imgoMediaPlayerLib.notifyOnGetFrameImageStatus(message.arg1, message.arg2);
                                return;
                            }
                            if (i2 == 701) {
                                imgoMediaPlayerLib.notifyOnGetFrameImageInfo(message.arg1, message.arg2, (String) message.obj);
                                return;
                            }
                            switch (i2) {
                                case 400:
                                    DebugLog.d(imgoMediaPlayerLib.getLogTag(), "switch video source info (" + message.arg1 + StringUtils.COMMA + message.arg2 + StringUtils.COMMA + message.obj + ")");
                                    imgoMediaPlayerLib.notifyOnSwitchSourceInfo((String) message.obj, message.arg1, message.arg2);
                                    break;
                                case 401:
                                    DebugLog.d(imgoMediaPlayerLib.getLogTag(), "switch video source complete (" + message.arg1 + StringUtils.COMMA + message.arg2 + StringUtils.COMMA + message.obj + ")");
                                    imgoMediaPlayerLib.notifyOnSwitchSourceComplete((String) message.obj, message.arg1, message.arg2);
                                    break;
                                case 402:
                                    DebugLog.d(imgoMediaPlayerLib.getLogTag(), "switch video source failed (" + message.arg1 + StringUtils.COMMA + message.arg2 + StringUtils.COMMA + message.obj + ")");
                                    imgoMediaPlayerLib.notifyOnSwitchSourceFailed((String) message.obj, message.arg1, message.arg2);
                                    break;
                                default:
                                    switch (i2) {
                                        case 600:
                                            DebugLog.d(imgoMediaPlayerLib.getLogTag(), "loop switch video source info (" + message.arg1 + StringUtils.COMMA + message.arg2 + StringUtils.COMMA + message.obj + ")");
                                            imgoMediaPlayerLib.notifyOnLoopSwitchSourceInfo((String) message.obj, message.arg1, message.arg2);
                                            break;
                                        case 601:
                                            DebugLog.d(imgoMediaPlayerLib.getLogTag(), "loop switch video source complete (" + message.arg1 + StringUtils.COMMA + message.arg2 + StringUtils.COMMA + message.obj + ")");
                                            imgoMediaPlayerLib.notifyOnLoopSwitchSourceComplete((String) message.obj, message.arg1, message.arg2);
                                            break;
                                        case 602:
                                            DebugLog.d(imgoMediaPlayerLib.getLogTag(), "loop switch video source fail (" + message.arg1 + StringUtils.COMMA + message.arg2 + StringUtils.COMMA + message.obj + ")");
                                            imgoMediaPlayerLib.notifyOnLoopSwitchSourceFail((String) message.obj, message.arg1, message.arg2);
                                            break;
                                        case 603:
                                            DebugLog.d(imgoMediaPlayerLib.getLogTag(), "smooth switch video source info (" + message.arg1 + StringUtils.COMMA + message.arg2 + StringUtils.COMMA + message.obj + ")");
                                            imgoMediaPlayerLib.notifyOnSmoothSwitchSourceInfo(message.arg1, message.arg2, (String) message.obj);
                                            break;
                                        case 604:
                                            DebugLog.d(imgoMediaPlayerLib.getLogTag(), "smooth switch video source complete (" + message.arg1 + StringUtils.COMMA + message.arg2 + StringUtils.COMMA + message.obj + ")");
                                            imgoMediaPlayerLib.notifyOnSmoothSwitchSourceComplete(message.arg1, message.arg2, (String) message.obj);
                                            break;
                                        case 605:
                                            DebugLog.d(imgoMediaPlayerLib.getLogTag(), "smooth switch video source failed (" + message.arg1 + StringUtils.COMMA + message.arg2 + StringUtils.COMMA + message.obj + ")");
                                            imgoMediaPlayerLib.notifyOnSmoothSwitchSourceFailed(message.arg1, message.arg2, (String) message.obj);
                                            break;
                                        default:
                                            switch (i2) {
                                                case 10001:
                                                    imgoMediaPlayerLib.mVideoSarNum = message.arg1;
                                                    imgoMediaPlayerLib.mVideoSarDen = message.arg2;
                                                    imgoMediaPlayerLib.notifyOnVideoSizeChanged(imgoMediaPlayerLib.mVideoWidth, imgoMediaPlayerLib.mVideoHeight, imgoMediaPlayerLib.mVideoSarNum, imgoMediaPlayerLib.mVideoSarDen);
                                                    break;
                                                case 10002:
                                                    imgoMediaPlayerLib.mVideoDarNum = message.arg1;
                                                    imgoMediaPlayerLib.mVideoDarDen = message.arg2;
                                                    break;
                                                case 10003:
                                                    imgoMediaPlayerLib.mVideoParNum = message.arg1;
                                                    imgoMediaPlayerLib.mVideoParDen = message.arg2;
                                                    break;
                                                default:
                                                    DebugLog.d(imgoMediaPlayerLib.getLogTag(), "Unknown message type " + message.what);
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
            }
            if (imgoMediaPlayerLib == null) {
                DebugLog.w(ImgoMediaPlayerLib.TAG, "ImgoMediaPlayerLib went away with unhandled events. player is null");
                return;
            }
            DebugLog.w(ImgoMediaPlayerLib.TAG, "ImgoMediaPlayerLib went away with unhandled events. mNativeMediaPlayer:" + imgoMediaPlayerLib.mNativeMediaPlayer);
        }
    }

    public interface OnMediaCodecSelectListener {
        boolean onCodecIsAdaptive(d dVar);

        String onMediaCodecSelect(d dVar, String str, int i, int i2);
    }

    public interface OnNativeInvokeListener {
        public static final String ARG_COMPAR_PLAYER_HASH_STRING = "player_hash";
        public static final String ARG_COMPAR_RETRY_COUNTER_INT = "retry_counter";
        public static final String ARG_COMPAR_SWITCH_KEY_LONG = "switch_key";
        public static final String ARG_COMPAR_USER_MSG_STRING = "user_msg";
        public static final String ARG_CRTL_RESET_IPLIST_INT = "reset_iplist";
        public static final String ARG_CRTL_RETRY_COUNTER_INT = "retry_counter";
        public static final String ARG_CRTL_RETRY_CUR_DL_SIZE = "cur_dl_dize";
        public static final String ARG_CRTL_RETRY_ERROR_EXTRA_INT = "error_code";
        public static final String ARG_CRTL_RETRY_ERROR_WHAT_INT = "error_type";
        public static final String ARG_CRTL_RETRY_ERR_IO_TYPE_INT = "io_type";
        public static final String ARG_CRTL_RETRY_IS_LAST_INT = "is_last";
        public static final String ARG_CRTL_RETRY_SEGMENT_INDEX_INT = "segment_index";
        public static final String ARG_CRTL_RETRY_SRC_URL_STRING = "src_url";
        public static final String ARG_CRTL_RETRY_URL_STRING = "url";
        public static final String ARG_CTRL_ADDR_ERROR_INT = "addr_error";
        public static final String ARG_CTRL_ADDR_HANDLE_INT = "addr_handle";
        public static final String ARG_CTRL_ADDR_HOSTNAME_STRING = "addr_hostname";
        public static final String ARG_CTRL_ADDR_IP_STRING = "addr_ip";
        public static final String ARG_CTRL_ADDR_URI_STRING = "addr_uri";
        public static final String ARG_CTRL_GET_ENV_KEY = "env_key";
        public static final String ARG_CTRL_GET_ENV_VALUE = "env_value";
        public static final String ARG_EVENT_AVCODEC_DECORDER_AVNAME_STRING = "codec_name";
        public static final String ARG_EVENT_STREAM_INFO_AFRAME_COMING_CLOCK_STRING = "afame_coming_info";
        public static final String ARG_EVENT_STREAM_INFO_DNS_ABORT_INFO_STRING = "dns_abort_time";
        public static final String ARG_EVENT_STREAM_INFO_DNS_SYNC_BEGIN_STRING = "dns_cache_value";
        public static final String ARG_EVENT_STREAM_INFO_DRM_METHOD_NAME_STRING = "drm_method";
        public static final String ARG_EVENT_STREAM_INFO_EVENT_IO_TRAFFIC_AVCACHEDTIMEMS_INT = "av_cached_time_ms";
        public static final String ARG_EVENT_STREAM_INFO_EVENT_IO_TRAFFIC_DLBYTES_INT = "update_dl_bytes";
        public static final String ARG_EVENT_STREAM_INFO_HLS_SEG_SIZE_INFO_STRING = "seg_size_info";
        public static final String ARG_EVENT_STREAM_INFO_VFRAME_COMING_CLOCK_STRING = "vfame_coming_info";
        public static final String ARG_EVENT_TIME_CONSUME_LONG = "time_consume";
        public static final String ARG_HOST_ARRR_ERROR_INT = "host_error";
        public static final String ARG_HOST_ARRR_FAMILY_INT = "host_family";
        public static final String ARG_HOST_ARRR_HOSTNAME_STRING = "host_hostname";
        public static final String ARG_HOST_ARRR_IP_STRING = "host_ip";
        public static final String ARG_HOST_ARRR_PORT_INT = "host_port";
        public static final String ARG_HTTP_CODE_INT = "http_code";
        public static final String ARG_HTTP_ERROR_INT = "http_error";
        public static final String ARG_HTTP_FILESIZE_LONG = "http_filesize";
        public static final String ARG_HTTP_OFFSET_LONG = "http_offset";
        public static final String ARG_HTTP_URL_STRING = "http_url";
        public static final String ARG_PLAYER_EVENT_ARG1_INT = "event_arg1";
        public static final String ARG_PLAYER_EVENT_ARG2_INT = "event_arg2";
        public static final String ARG_PLAYER_EVENT_TYPE_INT = "event_type";
        public static final String ARG_SMOOTH_SWITCH_KEY_LONG = "smooth_switch_key";
        public static final String ARG_SMOOTH_SWITCH_STREAM_AUDIO_INT = "smooth_switch_stream_audio";
        public static final String ARG_SMOOTH_SWITCH_URL_STRING = "smooth_switch_url";
        public static final String ARG_SMOOTH_SWITCH_VID_INT = "smooth_switch_vid";
        public static final String ARG_TCP_ERROR_INT = "error";
        public static final String ARG_TCP_FAMILY_INT = "family";
        public static final String ARG_TCP_FD_INT = "fd";
        public static final String ARG_TCP_HOSTNAME_STRING = "tcp_hostname";
        public static final String ARG_TCP_IP_STRING = "ip";
        public static final String ARG_TCP_PORT_INT = "port";
        public static final int CTRL_DID_TCP_CLOSE = 131076;
        public static final int CTRL_DID_TCP_OPEN = 131074;
        public static final int CTRL_WILL_ADDRESS_BYNAME = 131078;
        public static final int CTRL_WILL_CHECK_PAUSE_LOAD = 131120;
        public static final int CTRL_WILL_CONCAT_RESOLVE_SEGMENT = 131079;
        public static final int CTRL_WILL_GET_ENV = 131104;
        public static final int CTRL_WILL_HDJ_URL_SWITCH = 131090;
        public static final int CTRL_WILL_HTTP_OPEN = 131075;
        public static final int CTRL_WILL_LIVE_OPEN = 131077;
        public static final int CTRL_WILL_LIVE_RESET = 131081;
        public static final int CTRL_WILL_LOOP_OPEN = 131088;
        public static final int CTRL_WILL_LOOP_RESET = 131089;
        public static final int CTRL_WILL_SMOOTH_SWITCH = 131184;
        public static final int CTRL_WILL_TCP_OPEN = 131073;
        public static final int EVENT_AVCODEC_DECORDER_AUDIO_NAME = 33;
        public static final int EVENT_AVCODEC_DECORDER_VIDEO_NAME = 32;
        public static final int EVENT_DID_HOST_ADDR = 78338;
        public static final int EVENT_DID_HTTP_CLOSE = 6;
        public static final int EVENT_DID_HTTP_OPEN = 2;
        public static final int EVENT_DID_HTTP_SEEK = 4;
        public static final int EVENT_FLOW_INFO_REPORT = 78593;
        public static final int EVENT_STREAM_INFO_AFRAME_COMING_CLOCK = 81;
        public static final int EVENT_STREAM_INFO_DNS_ABORT_INFO = 49;
        public static final int EVENT_STREAM_INFO_DNS_SYNC_BEGIN = 64;
        public static final int EVENT_STREAM_INFO_DRM_METHOD_NAME = 41;
        public static final int EVENT_STREAM_INFO_EVENT_IO_TRAFFIC = 74244;
        public static final int EVENT_STREAM_INFO_HLS_SEG_SIZE_INFO = 48;
        public static final int EVENT_STREAM_INFO_VFRAME_COMING_CLOCK = 80;
        public static final int EVENT_TIME_CONSUME_DNS_ANALYZE = 16;
        public static final int EVENT_TIME_CONSUME_FIND_STREAM = 19;
        public static final int EVENT_TIME_CONSUME_FIRST_BUFFER = 20;
        public static final int EVENT_TIME_CONSUME_HTTP_RESPONSE = 18;
        public static final int EVENT_TIME_CONSUME_PAUSE_NOTIFY = 22;
        public static final int EVENT_TIME_CONSUME_TCP_CONNECT = 17;
        public static final int EVENT_WILL_HOST_ADDR = 78337;
        public static final int EVENT_WILL_HTTP_CLOSE = 5;
        public static final int EVENT_WILL_HTTP_OPEN = 1;
        public static final int EVENT_WILL_HTTP_SEEK = 3;
        public static final int MEDIA_ERROR_ENETUNREACH = 300005;
        public static final int MEDIA_ERROR_HTTP_BAD_REQUEST_400 = 300400;
        public static final int MEDIA_ERROR_HTTP_OTHER_4XX = 300499;
        public static final int MEDIA_ERROR_HTTP_SERVER_INTERNAL_ERROR_500 = 300500;
        public static final int MEDIA_ERROR_HTTP_SERVER_OTHER_5XX = 300599;
        public static final int MEDIA_ERROR_TCP_HOSTNAME_RESOLVE_ERROR = 300600;
        public static final int PLAYER_EVENT_ONINFO = 131152;

        boolean onNativeInvoke(int i, Bundle bundle);
    }

    public ImgoMediaPlayerLib(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException, OutOfMemoryError {
        this.mWakeLock = null;
        this.mIsReleased = false;
        initPlayer(context);
    }

    private native String _getAudioCodecInfo();

    private static final native String _getColorFormatName(int i);

    private native int _getLoopCount();

    private native Bundle _getMediaMeta();

    private native int _getPicture32(int i, int i2, int[] iArr);

    private native float _getPropertyFloat(int i, float f);

    private native long _getPropertyLong(int i, long j);

    private static final native String _getSupportRecVideoformat();

    private native String _getVideoCodecInfo();

    private native int _isAbortRequest();

    private native boolean _isVideoRecording();

    private native int _loopswitchSource(IMGTVMediaDataSource iMGTVMediaDataSource, String str, int i, int i2, int i3) throws IllegalStateException, OutOfMemoryError;

    private native int _loopswitchSource(String str, int i, int i2, int i3) throws IllegalStateException, OutOfMemoryError;

    private native void _pause() throws IllegalStateException;

    private native void _pauseLoadData(int i);

    private native int _recordVideo(String str, int i) throws IllegalStateException, IOException, IllegalArgumentException;

    private native void _release();

    private native void _reset(Object obj);

    private native void _seekTo(long j) throws IllegalStateException;

    private native void _seekTo2(long j, int i) throws IllegalStateException;

    private native void _setDataSource(IMGTVMediaDataSource iMGTVMediaDataSource, int i) throws IllegalStateException, SecurityException, IllegalArgumentException;

    private native void _setDataSource(IMediaDataSource iMediaDataSource) throws IllegalStateException, SecurityException, IllegalArgumentException;

    private native void _setDataSource(String str, String[] strArr, String[] strArr2) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException;

    private native void _setDataSourceFd(int i) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException;

    private native void _setDrmLicensePrepared(int i);

    private native void _setDrmLicensePrepared(int i, MediaCrypto mediaCrypto);

    private native void _setFrameImageAtTime(String str, long j, long j2, int i, int i2, int i3);

    private native void _setLoopCount(int i);

    private native void _setOption(int i, String str, long j);

    private native void _setOption(int i, String str, String str2);

    private native void _setPropertyFloat(int i, float f);

    private native void _setPropertyLong(int i, long j);

    private native void _setPropertyLongab(int i, long j, long j2);

    private native void _setStreamSelected(int i, boolean z);

    private native int _setVideoKeyFrameInfo(byte[] bArr);

    private native void _setVideoSurface(Surface surface);

    private native void _setVideoSurfaceKey(Surface surface, int i);

    private native int _setWanosAudioEffectConfig(byte[] bArr);

    private native int _smoothswitchSource(IMGTVMediaDataSource iMGTVMediaDataSource, String str, int i, int i2, int i3, int i4, String str2) throws IllegalStateException, OutOfMemoryError;

    private native int _smoothswitchSource(String str, int i, int i2, int i3, int i4, String str2) throws IllegalStateException, OutOfMemoryError;

    private native void _start() throws IllegalStateException;

    private native void _stop() throws IllegalStateException;

    private native int _switchSource(IMGTVMediaDataSource iMGTVMediaDataSource, String str, int i, int i2, int i3) throws IllegalStateException, IOException, IllegalArgumentException;

    private native int _switchSource(String str, int i, int i2, int i3) throws IllegalStateException, IOException, IllegalArgumentException;

    public static void defaultValue(Context context) {
        PreferencesUtil preferencesUtil = new PreferencesUtil(context);
        preferencesUtil.removeKey(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_BASELINE);
        preferencesUtil.removeKey(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_MAIN);
        preferencesUtil.removeKey(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_HIGH);
        preferencesUtil.removeKey(PreferencesUtil.PREKEY_MEDIACODEC_H265_SUPPORT);
    }

    private void enableUpdateAudioTimestamp() {
        int i = NetPlayConfig.isAudioTimestampEnable() ? 1 : 5;
        _setPropertyLong(FFP_PROP_INT64_AUDIO_TIMESTAMP_STATUS, i);
        DebugLog.i(getLogTag(), "enableUpdateAudioTimestamp:" + i);
    }

    private static String getAppPackageName() {
        return mPackageName;
    }

    public static String getColorFormatName(int i) {
        return _getColorFormatName(i);
    }

    public static String getDlopenStatus() {
        return native_getDlopenStatus();
    }

    public static String getSupportRecVideoformat() {
        return _getSupportRecVideoformat();
    }

    public static int getTinkerNumber() {
        return native_getTinkerNumber();
    }

    private static void initNativeOnce() {
        synchronized (ImgoMediaPlayerLib.class) {
            try {
                if (!mIsNativeInitialized) {
                    native_init(PlayerConfig.use_report_level, PlayerConfig.use_log_level);
                    mIsNativeInitialized = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void initPlayer(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException, OutOfMemoryError {
        EventHandler eventHandler;
        this.mContext = context;
        mPackageName = context.getPackageName();
        if (ImgoLibLoader.getInstance().syncTryLoadAllLibraries(context)) {
            defaultValue(context);
        }
        initNativeOnce();
        h.i(context);
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null) {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                eventHandler = new EventHandler(this, mainLooper);
            } else {
                this.mEventHandler = null;
            }
            WeakReference<ImgoMediaPlayerLib> weakReference = new WeakReference<>(this);
            this.mWeakImgoPlayer = weakReference;
            native_setup(weakReference);
        }
        eventHandler = new EventHandler(this, looperMyLooper);
        this.mEventHandler = eventHandler;
        WeakReference<ImgoMediaPlayerLib> weakReference2 = new WeakReference<>(this);
        this.mWeakImgoPlayer = weakReference2;
        native_setup(weakReference2);
    }

    private final native void native_finalize();

    private static final native String native_getDlopenStatus();

    private static final native int native_getTinkerNumber();

    private static final native void native_init(int i, int i2);

    private final native void native_message_loop(Object obj);

    private final native void native_setup(Object obj);

    private static boolean onCodecIsAdaptive(Object obj) {
        ImgoMediaPlayerLib imgoMediaPlayerLib;
        if (obj == null || !(obj instanceof WeakReference) || (imgoMediaPlayerLib = (ImgoMediaPlayerLib) ((WeakReference) obj).get()) == null) {
            return false;
        }
        OnMediaCodecSelectListener onMediaCodecSelectListener = imgoMediaPlayerLib.mOnMediaCodecSelectListener;
        if (onMediaCodecSelectListener == null) {
            onMediaCodecSelectListener = DefaultMediaCodecSelector.sInstance;
        }
        return onMediaCodecSelectListener.onCodecIsAdaptive(imgoMediaPlayerLib);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0040 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:32:0x0049 A[FALL_THROUGH] */
    /* JADX WARN: Switch 'out' block B:28:0x0040 for B:22:0x0032 already processed. Defaulting to fallback option. */
    /* JADX WARN: Switch 'out' block B:28:0x0040 for B:23:0x0035 already processed. Defaulting to fallback option. */
    private static boolean onNativeInvoke(Object obj, int i, Bundle bundle) {
        if (obj == null || !(obj instanceof WeakReference)) {
            throw new IllegalStateException("<null weakThiz>.onNativeInvoke()");
        }
        ImgoMediaPlayerLib imgoMediaPlayerLib = (ImgoMediaPlayerLib) ((WeakReference) obj).get();
        if (imgoMediaPlayerLib == null) {
            throw new IllegalStateException("<null weakPlayer>.onNativeInvoke()");
        }
        if (i != 32 && i != 33 && i != 48 && i != 49 && i != 80 && i != 81) {
            switch (i) {
                default:
                    switch (i) {
                        default:
                            switch (i) {
                                case 22:
                                    break;
                                case 41:
                                case 64:
                                case OnNativeInvokeListener.EVENT_STREAM_INFO_EVENT_IO_TRAFFIC:
                                    break;
                                case 78593:
                                    imgoMediaPlayerLib.notifyOnSourceFlowInfoEvent(i, bundle);
                                    return false;
                                case 131081:
                                case 131104:
                                case 131120:
                                case 131184:
                                    return imgoMediaPlayerLib.notifyOnSourceNetCtrl(i, bundle);
                                case OnNativeInvokeListener.PLAYER_EVENT_ONINFO:
                                    imgoMediaPlayerLib.notifyOnPlayerEvent(i, bundle);
                                    return false;
                                default:
                                    switch (i) {
                                        case 78337:
                                        case 78338:
                                            break;
                                        default:
                                            switch (i) {
                                                default:
                                                    switch (i) {
                                                        case 131088:
                                                        case 131089:
                                                        case 131090:
                                                            break;
                                                        default:
                                                            return false;
                                                    }
                                                case 131073:
                                                case 131074:
                                                case 131075:
                                                case 131076:
                                                case 131077:
                                                case 131078:
                                                case 131079:
                                                    return imgoMediaPlayerLib.notifyOnSourceNetCtrl(i, bundle);
                                            }
                                            break;
                                    }
                                    break;
                            }
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                            imgoMediaPlayerLib.notifyOnSourceNetEvent(i, bundle);
                            return false;
                    }
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    imgoMediaPlayerLib.notifyOnSourceNetEvent(i, bundle);
                    return false;
            }
        }
        imgoMediaPlayerLib.notifyOnStreamInfoEvent(i, bundle);
        return false;
    }

    private static String onSelectCodec(Object obj, String str, int i, int i2) {
        ImgoMediaPlayerLib imgoMediaPlayerLib;
        if (obj == null || !(obj instanceof WeakReference) || (imgoMediaPlayerLib = (ImgoMediaPlayerLib) ((WeakReference) obj).get()) == null) {
            return null;
        }
        OnMediaCodecSelectListener onMediaCodecSelectListener = imgoMediaPlayerLib.mOnMediaCodecSelectListener;
        if (onMediaCodecSelectListener == null) {
            onMediaCodecSelectListener = DefaultMediaCodecSelector.sInstance;
        }
        return onMediaCodecSelectListener.onMediaCodecSelect(imgoMediaPlayerLib, str, i, i2);
    }

    private static void postEventFromNative(Object obj, int i, int i2, int i3, Object obj2) {
        ImgoMediaPlayerLib imgoMediaPlayerLib;
        if (obj == null || (imgoMediaPlayerLib = (ImgoMediaPlayerLib) ((WeakReference) obj).get()) == null) {
            return;
        }
        if (i == 200 && i2 == 2) {
            imgoMediaPlayerLib.start();
        }
        if (i == 200 && i2 == 10002) {
            DebugLog.d(imgoMediaPlayerLib.getLogTag(), "obtainmsg Info (" + i2 + StringUtils.COMMA + i3 + ")");
        }
        EventHandler eventHandler = imgoMediaPlayerLib.mEventHandler;
        if (eventHandler != null) {
            imgoMediaPlayerLib.mEventHandler.sendMessage(eventHandler.obtainMessage(i, i2, i3, obj2));
        }
    }

    @SuppressLint({"Wakelock"})
    public void stayAwake(boolean z) {
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (z && !wakeLock.isHeld()) {
                this.mWakeLock.acquire();
            } else if (!z && this.mWakeLock.isHeld()) {
                this.mWakeLock.release();
            }
        }
        this.mStayAwake = z;
        updateSurfaceScreenOn();
    }

    private void updateSurfaceScreenOn() {
        Context context;
        Window window;
        try {
            boolean z = this.mScreenOnWhilePlaying && this.mStayAwake;
            DebugLog.i(getLogTag(), "updateSurfaceScreenOn " + z);
            SurfaceHolder surfaceHolder = this.mSurfaceHolder;
            if (surfaceHolder != null) {
                surfaceHolder.setKeepScreenOn(z);
            } else {
                if (!z || (context = this.mContext) == null || !(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null) {
                    return;
                }
                window.addFlags(128);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public native void _prepareAsync() throws IllegalStateException;

    public void deselectTrack(int i) {
        _setStreamSelected(i, false);
    }

    public void enableFramePTSNotify(boolean z) {
        _setPropertyLong(FFP_PROP_INT64_FRAME_PTS_NOTIFY, z ? 1L : 0L);
    }

    public void enableOppoFunc(int i, boolean z) {
        int i2;
        if (i == 1) {
            i2 = FFP_PROP_INT64_OPPOSR_ENALBE;
        } else if (i != 2) {
            return;
        } else {
            i2 = FFP_PROP_INT64_OPPOOSIE_ENALBE;
        }
        _setPropertyLong(i2, z ? 1L : 0L);
    }

    public void enableP2PSmoothFailMode(boolean z) {
        _setPropertyLong(FFP_PROP_INT64_P2P_SMOOTH_FAIL, z ? 1L : 0L);
    }

    public void enableSmoothAccSeek(boolean z) {
        _setPropertyLong(FFP_PROP_INT64_SMOOTH_ACCSEEK, z ? 1L : 0L);
    }

    public void finalize() throws Throwable {
        super.finalize();
        DebugLog.e(getLogTag(), "finalize mIsReleased:" + this.mIsReleased);
    }

    public long getAVCachedBytes() {
        return _getPropertyLong(FFP_PROP_INT64_AV_CACHED_BYTES, 0L);
    }

    @Override
    public long getAVCachedTimeMs() {
        return _getPropertyLong(FFP_PROP_INT64_AV_CACHED_TIMEMS, 0L);
    }

    public float getAVDelay() {
        return _getPropertyFloat(10004, 0.0f);
    }

    public float getAVDiff() {
        return _getPropertyFloat(10005, 0.0f);
    }

    public long getAsyncStatisticBufBackwards() {
        return _getPropertyLong(FFP_PROP_INT64_ASYNC_STATISTIC_BUF_BACKWARDS, 0L);
    }

    public long getAsyncStatisticBufCapacity() {
        return _getPropertyLong(FFP_PROP_INT64_ASYNC_STATISTIC_BUF_CAPACITY, 0L);
    }

    public long getAsyncStatisticBufForwards() {
        return _getPropertyLong(FFP_PROP_INT64_ASYNC_STATISTIC_BUF_FORWARDS, 0L);
    }

    public long getAudioCachedBytes() {
        return _getPropertyLong(20008, 0L);
    }

    public long getAudioCachedDuration() {
        return _getPropertyLong(20006, 0L);
    }

    public long getAudioCachedPackets() {
        return _getPropertyLong(FFP_PROP_INT64_AUDIO_CACHED_PACKETS, 0L);
    }

    public native int getAudioSessionId();

    public long getBitRate() {
        return _getPropertyLong(FFP_PROP_INT64_BIT_RATE, 0L);
    }

    @Override
    public int getBufferedPercentage() {
        return this.mBufferedPercent;
    }

    @Override
    public long getBufferedPositionMs() {
        return this.mBufferedPositionMs;
    }

    @Override
    public int getBufferingPercent() {
        return this.mCurBufferingPercent;
    }

    @Override
    public native long getCurrentPosition();

    public String getDataSource() {
        return this.mDataSource;
    }

    public long getDrmPreparedStatus() {
        return _getPropertyLong(FFP_PROP_INT64_DRM_PREPEARED_STATUE, 0L);
    }

    @Override
    public native long getDuration();

    public float getFileStartTime() {
        return _getPropertyFloat(10006, -1.0f);
    }

    public long getGenframetimeStatisticDecodeFirstFrame() {
        return _getPropertyLong(20505, -1L);
    }

    public long getGenframetimeStatisticDropFrameNum() {
        return _getPropertyLong(20510, -1L);
    }

    public long getGenframetimeStatisticGenFinishTotalTime() {
        return _getPropertyLong(20512, -1L);
    }

    public long getGenframetimeStatisticGenImageNum() {
        return _getPropertyLong(20511, -1L);
    }

    public long getGenframetimeStatisticT1() {
        return _getPropertyLong(20501, -1L);
    }

    public long getGenframetimeStatisticT2() {
        return _getPropertyLong(20502, -1L);
    }

    public long getGenframetimeStatisticT3() {
        return _getPropertyLong(20503, -1L);
    }

    public long getGenframetimeStatisticT4() {
        return _getPropertyLong(20504, -1L);
    }

    public long getGenframetimeStatisticTotalDecodeTime() {
        return _getPropertyLong(20506, -1L);
    }

    public long getGenframetimeStatisticTotalEncodeTime() {
        return _getPropertyLong(20508, -1L);
    }

    public long getGenframetimeStatisticTotalSaveFile() {
        return _getPropertyLong(20509, -1L);
    }

    public long getGenframetimeStatisticTotalScaleTime() {
        return _getPropertyLong(20507, -1L);
    }

    public f getMediaInfo() {
        f fVar = new f();
        fVar.a = "Imgoplayer";
        String str_getVideoCodecInfo = _getVideoCodecInfo();
        if (!TextUtils.isEmpty(str_getVideoCodecInfo)) {
            String[] strArrSplit = str_getVideoCodecInfo.split(StringUtils.COMMA);
            if (strArrSplit.length >= 2) {
                fVar.b = strArrSplit[0];
                fVar.c = strArrSplit[1];
            } else if (strArrSplit.length >= 1) {
                fVar.b = strArrSplit[0];
                fVar.c = "";
            }
        }
        String str_getAudioCodecInfo = _getAudioCodecInfo();
        if (!TextUtils.isEmpty(str_getAudioCodecInfo)) {
            String[] strArrSplit2 = str_getAudioCodecInfo.split(StringUtils.COMMA);
            if (strArrSplit2.length >= 2) {
                fVar.d = strArrSplit2[0];
                fVar.e = strArrSplit2[1];
            } else if (strArrSplit2.length >= 1) {
                fVar.d = strArrSplit2[0];
                fVar.e = "";
            }
        }
        try {
            fVar.f = g.a(_getMediaMeta());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return fVar;
    }

    public Bundle getMediaMeta() {
        return _getMediaMeta();
    }

    public long getPImgoVsrExeInfo(int i, long j) {
        return _getPropertyLong(i, j);
    }

    public int getPicture32(int i, int i2, int[] iArr) {
        return _getPicture32(i, i2, iArr);
    }

    @Override
    public float getPlaybackSpeed() {
        return _getPropertyFloat(10003, 0.0f);
    }

    public float getPropertyFloat(int i, float f) {
        try {
            return _getPropertyFloat(i, f);
        } catch (Throwable th) {
            th.printStackTrace();
            return f;
        }
    }

    public long getPropertyLong(int i, long j) {
        try {
            return _getPropertyLong(i, j);
        } catch (Throwable th) {
            th.printStackTrace();
            return j;
        }
    }

    public int getSelectedTrack(int i) {
        int i2;
        if (i == 1) {
            i2 = 20001;
        } else if (i == 2) {
            i2 = 20002;
        } else {
            if (i != 3) {
                return -1;
            }
            i2 = FFP_PROP_INT64_SELECTED_TIMEDTEXT_STREAM;
        }
        return (int) _getPropertyLong(i2, -1L);
    }

    public long getTcpDownloadSpeed() {
        return _getPropertyLong(FFP_PROP_INT64_TCP_SPEED, 0L);
    }

    public long getTrafficStatisticByteCount() {
        return _getPropertyLong(FFP_PROP_INT64_TRAFFIC_STATISTIC_BYTE_COUNT, 0L);
    }

    public long getVVTimeStatisticDLPT() {
        return _getPropertyLong(FFP_PROP_INT64_VVTTIME_DLPT, 0L);
    }

    public long getVVTimeStatisticT1() {
        return _getPropertyLong(FFP_PROP_INT64_VVTTIME_T1, 0L);
    }

    public long getVVTimeStatisticT2() {
        return _getPropertyLong(FFP_PROP_INT64_VVTTIME_T2, 0L);
    }

    public long getVVTimeStatisticT3() {
        return _getPropertyLong(FFP_PROP_INT64_VVTTIME_T3, 0L);
    }

    public long getVVTimeStatisticT4() {
        return _getPropertyLong(FFP_PROP_INT64_VVTTIME_T4, 0L);
    }

    public long getVVTimeStatisticT5() {
        return _getPropertyLong(FFP_PROP_INT64_VVTTIME_T5, 0L);
    }

    public long getVVTimeStatisticT6() {
        return _getPropertyLong(FFP_PROP_INT64_VVTTIME_T6, 0L);
    }

    public long getVVTimeStatisticVVBT() {
        return _getPropertyLong(FFP_PROP_INT64_VVTTIME_VVBT, 0L);
    }

    public long getVVTimeStatisticVVT() {
        return _getPropertyLong(FFP_PROP_INT64_VVTTIME_VVT, 0L);
    }

    public long getVideoCachedBytes() {
        return _getPropertyLong(20007, 0L);
    }

    public long getVideoCachedDuration() {
        return _getPropertyLong(20005, 0L);
    }

    public long getVideoCachedPackets() {
        return _getPropertyLong(FFP_PROP_INT64_VIDEO_CACHED_PACKETS, 0L);
    }

    public int getVideoDarDen() {
        return this.mVideoDarDen;
    }

    public int getVideoDarNum() {
        return this.mVideoDarNum;
    }

    public float getVideoDecodeFramesPerSecond() {
        return _getPropertyFloat(10001, 0.0f);
    }

    public int getVideoDecoder() {
        return (int) _getPropertyLong(20003, 0L);
    }

    @Override
    public int getVideoHeight() {
        return this.mVideoHeight;
    }

    public float getVideoOutputFramesPerSecond() {
        return _getPropertyFloat(10002, 0.0f);
    }

    public int getVideoParDen() {
        return this.mVideoParDen;
    }

    public int getVideoParNum() {
        return this.mVideoParNum;
    }

    @Override
    public int getVideoSarDen() {
        return this.mVideoSarDen;
    }

    @Override
    public int getVideoSarNum() {
        return this.mVideoSarNum;
    }

    @Override
    public int getVideoWidth() {
        return this.mVideoWidth;
    }

    public int getWanosAudioEffectChoice() {
        return (int) _getPropertyLong(30002, -1L);
    }

    public boolean isAbortRequest() {
        return _isAbortRequest() == 1;
    }

    public boolean isLooping() {
        return _getLoopCount() != 1;
    }

    @Override
    public boolean isMediaCodecSWRender() {
        return _getPropertyLong(FFP_PROP_INT64_IS_CODEC_SW_RENDER, 0L) == 1;
    }

    public boolean isPlayable() {
        return true;
    }

    @Override
    public native boolean isPlaying();

    public boolean isSupportedSnapshot() {
        return _getPropertyLong(FFP_PROP_INT64_IS_SUPPORT_SNAPSHOT, 0L) == 1;
    }

    public boolean isVideoRecording() {
        return _isVideoRecording();
    }

    public int loopSwitchVideoSource(IMGTVMediaDataSource iMGTVMediaDataSource, String str, int i, int i2, int i3) throws IllegalStateException, OutOfMemoryError {
        return _loopswitchSource(iMGTVMediaDataSource, str, i, i2, i3);
    }

    public void maybeUpdateAudioTimestamp() {
        enableUpdateAudioTimestamp();
    }

    public void nativeCrashTest(int i) {
        _setPropertyLong(FFP_PROP_INT64_CRASH_TEST, i);
    }

    @Override
    public void pause() throws IllegalStateException {
        stayAwake(false);
        _pause();
    }

    public void pauseLoadData(boolean z) {
        _pauseLoadData(z ? 1 : 0);
    }

    @Override
    public void prepareAsync() throws IllegalStateException {
        _prepareAsync();
    }

    @Override
    public void release() {
        this.mIsReleased = true;
        this.mCurBufferingPercent = 0;
        this.mBufferedPercent = 0;
        this.mBufferedPositionMs = 0L;
        this.mCurrentRecFile = null;
        stayAwake(false);
        updateSurfaceScreenOn();
        resetListeners();
        try {
            _release();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void reset() throws OutOfMemoryError {
        this.mCurBufferingPercent = 0;
        this.mBufferedPercent = 0;
        this.mBufferedPositionMs = 0L;
        this.mCurrentRecFile = null;
        stayAwake(false);
        _reset(this.mWeakImgoPlayer);
        this.mEventHandler.removeCallbacksAndMessages(null);
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
    }

    @Override
    public void resetListeners() {
        super.resetListeners();
        this.mOnMediaCodecSelectListener = null;
    }

    @Override
    public void seekTo(long j) throws IllegalStateException {
        _seekTo(j);
    }

    public void selectTrack(int i) {
        _setStreamSelected(i, true);
    }

    @Override
    public void setAudioStreamType(int i) {
    }

    public native void setCrashRecordPath(String str);

    public void setDataSource(IMGTVMediaDataSource iMGTVMediaDataSource) throws IllegalStateException, SecurityException, IllegalArgumentException {
        _setDataSource(iMGTVMediaDataSource, 0);
    }

    @Override
    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.mSurfaceHolder = surfaceHolder;
        _setVideoSurface(surfaceHolder != null ? surfaceHolder.getSurface() : null);
        updateSurfaceScreenOn();
    }

    public void setDrmLicensePrepared(int i) {
        _setDrmLicensePrepared(i);
    }

    public void setFrameImageAtTime(String str, long j, long j2, int i, int i2, int i3) {
        _setFrameImageAtTime(str, j, j2, i, i2, i3);
    }

    public void setKeepInBackground(boolean z) {
    }

    public int setKeyFrameInfoFileBuf(byte[] bArr) {
        try {
            return _setVideoKeyFrameInfo(bArr);
        } catch (IllegalStateException e) {
            e.printStackTrace();
            return -31;
        } catch (Exception e2) {
            e2.printStackTrace();
            return -32;
        }
    }

    public void setLogEnabled(boolean z) {
    }

    public native void setLogReport(int i, int i2);

    public void setLoopABPlay(boolean z, long j, long j2) {
        DebugLog.i(getLogTag(), "setLoopABPlay enable:" + z + ",aPos:" + j + ",bPos:" + j2);
        if (!z) {
            j = -1;
        }
        if (!z) {
            j2 = -1;
        }
        _setPropertyLongab(FFP_PROP_INT64_LOOPAB_TARGET_POS, j, j2);
    }

    public void setLoopSeekPlay(boolean z, long j) {
        _setPropertyLongab(FFP_PROP_INT64_LOOP_SEEK, z ? 1L : 0L, j);
    }

    public void setLooping(boolean z) {
        int i = !z ? 1 : 0;
        setOption(4, "loop", i);
        _setLoopCount(i);
    }

    public void setNETIsBroken(boolean z) {
        _setPropertyLong(FFP_PROP_INT64_NET_BROKEN, z ? 1L : 0L);
    }

    public void setOnMediaCodecSelectListener(OnMediaCodecSelectListener onMediaCodecSelectListener) {
        this.mOnMediaCodecSelectListener = onMediaCodecSelectListener;
    }

    public void setOption(int i, String str, long j) {
        _setOption(i, str, j);
    }

    @Override
    public void setPlaybackSpeed(float f) {
        if (f < 0.25f || f > 4.0f) {
            f = 1.0f;
        }
        _setPropertyFloat(10003, f);
    }

    public void setPlaybackStep(int i) {
        _setPropertyLong(30001, i);
    }

    public void setPropertyLong(int i, long j) {
        try {
            _setPropertyLong(i, j);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override
    public void setScreenOnWhilePlaying(boolean z) {
        if (this.mScreenOnWhilePlaying != z) {
            if (z && this.mSurfaceHolder == null) {
                DebugLog.w(getLogTag(), "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder");
            }
            this.mScreenOnWhilePlaying = z;
            updateSurfaceScreenOn();
        }
    }

    @Override
    public void setSurface(Surface surface) {
        if (this.mScreenOnWhilePlaying && surface != null) {
            DebugLog.w(getLogTag(), "setScreenOnWhilePlaying(true) is ineffective for Surface");
        }
        this.mSurfaceHolder = null;
        _setVideoSurface(surface);
        updateSurfaceScreenOn();
    }

    public void setVideoFrameTimeClockNotify(long j, long j2) {
        setVideoFrameTimePTSClockNotify(j, j2);
    }

    public void setVideoFrameTimeMsClockNotify(long j) {
        _setPropertyLong(FFP_PROP_INT64_CLOCK_NOTIFY, j);
    }

    public void setVideoFrameTimePTSClockNotify(long j, long j2) {
        _setPropertyLong(FFP_PROP_INT64_CLOCK_VPTS_NOTIFY_START, j);
        _setPropertyLong(FFP_PROP_INT64_CLOCK_VPTS_NOTIFY_END, j2);
    }

    @Override
    public native void setVolume(float f, float f2);

    @SuppressLint({"Wakelock"})
    public void setWakeMode(Context context, int i) {
        boolean z;
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (wakeLock.isHeld()) {
                this.mWakeLock.release();
                z = true;
            } else {
                z = false;
            }
            this.mWakeLock = null;
        } else {
            z = false;
        }
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i | 536870912, ImgoMediaPlayerLib.class.getName());
        this.mWakeLock = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
        if (z) {
            this.mWakeLock.acquire();
        }
    }

    public void setWanosAudioEffectChoice(int i) {
        _setPropertyLong(30002, i);
    }

    public int setWanosAudioEffectConfig(byte[] bArr) {
        return _setWanosAudioEffectConfig(bArr);
    }

    @Override
    public int smoothSwitchVideoSource(IMGTVMediaDataSource iMGTVMediaDataSource, String str, int i, int i2, int i3, int i4, String str2) throws IllegalStateException, OutOfMemoryError {
        DebugLog.i(getLogTag(), "smoothSwitchVideoSource " + iMGTVMediaDataSource + " key:" + i + ",switch_mod:" + i2 + ",is_smooth:" + i3 + ",arg:" + i4);
        return _smoothswitchSource(iMGTVMediaDataSource, str, i, i2, i3, i4, str2);
    }

    @Override
    public void start() throws IllegalStateException {
        stayAwake(true);
        _start();
    }

    public int startRecordVideo(String str) throws IllegalStateException, IOException, IllegalArgumentException {
        int i_recordVideo = _recordVideo(str, 1);
        if (i_recordVideo == 0) {
            this.mCurrentRecFile = str;
        }
        return i_recordVideo;
    }

    @Override
    public void stop() throws IllegalStateException {
        this.mCurBufferingPercent = 0;
        this.mBufferedPercent = 0;
        this.mBufferedPositionMs = 0L;
        stayAwake(false);
        try {
            _stop();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    public int stopRecordVideo() throws IllegalStateException, IOException, IllegalArgumentException {
        return _recordVideo(this.mCurrentRecFile, 0);
    }

    public void switchVideoSource(IMGTVMediaDataSource iMGTVMediaDataSource, String str, int i, int i2, int i3) throws IllegalStateException, IOException, IllegalArgumentException {
        int i_switchSource = _switchSource(iMGTVMediaDataSource, str, i, i2, i3);
        if (i_switchSource == -1) {
            throw new IllegalArgumentException("imgo data source obj is NULL or not enable imgods");
        }
        if (i_switchSource == -4) {
            throw new IllegalStateException("player object VideoState is NULL");
        }
    }

    public ImgoMediaPlayerLib(Context context, Bundle bundle) {
        super(bundle);
        this.mWakeLock = null;
        this.mIsReleased = false;
        initPlayer(context);
    }

    public b[] getTrackInfo() {
        g gVarA;
        int i;
        Bundle mediaMeta = getMediaMeta();
        if (mediaMeta == null || (gVarA = g.a(mediaMeta)) == null || gVarA.f == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (g.a aVar : gVarA.f) {
            b bVar = new b(aVar);
            if (aVar.c.equalsIgnoreCase("video")) {
                i = 1;
            } else if (aVar.c.equalsIgnoreCase("audio")) {
                i = 2;
            } else {
                if (aVar.c.equalsIgnoreCase("text")) {
                    i = 3;
                }
                arrayList.add(bVar);
            }
            bVar.a(i);
            arrayList.add(bVar);
        }
        return (b[]) arrayList.toArray(new b[arrayList.size()]);
    }

    @Override
    public int loopSwitchVideoSource(String str, int i, int i2, int i3) throws IllegalStateException, OutOfMemoryError {
        return _loopswitchSource(str, i, i2, i3);
    }

    public void seekTo(long j, int i) throws IllegalStateException {
        _seekTo2(j, i);
    }

    public void setDataSource(IMGTVMediaDataSource iMGTVMediaDataSource, int i) throws IllegalStateException, SecurityException, IllegalArgumentException {
        _setDataSource(iMGTVMediaDataSource, i);
    }

    @Override
    public void setDisplay(SurfaceHolder surfaceHolder, int i) {
        this.mSurfaceHolder = surfaceHolder;
        _setVideoSurfaceKey(surfaceHolder != null ? surfaceHolder.getSurface() : null, i);
        updateSurfaceScreenOn();
    }

    public void setDrmLicensePrepared(MediaCrypto mediaCrypto) {
        _setDrmLicensePrepared(1, mediaCrypto);
    }

    public void setOption(int i, String str, String str2) {
        _setOption(i, str, str2);
    }

    @Override
    public void setSurface(Surface surface, int i) {
        if (this.mScreenOnWhilePlaying && surface != null) {
            DebugLog.w(getLogTag(), "setScreenOnWhilePlaying(true) is ineffective for Surface");
        }
        this.mSurfaceHolder = null;
        _setVideoSurfaceKey(surface, i);
        updateSurfaceScreenOn();
    }

    @Override
    public int smoothSwitchVideoSource(String str, int i, int i2, int i3, int i4, String str2) throws IllegalStateException, OutOfMemoryError {
        DebugLog.i(getLogTag(), "smoothSwitchVideoSource key:" + i + ",switch_mod:" + i2 + ",is_smooth:" + i3 + ",arg:" + i4);
        return _smoothswitchSource(str, i, i2, i3, i4, str2);
    }

    @Override
    public void switchVideoSource(String str, int i, int i2, int i3) throws IllegalStateException, IOException, IllegalArgumentException {
        int i_switchSource = _switchSource(str, i, i2, i3);
        if (i_switchSource == -1) {
            throw new IllegalArgumentException("imgo data source obj is NULL or not enable imgods");
        }
        if (i_switchSource == -4) {
            throw new IllegalStateException("player object VideoState is NULL");
        }
    }

    @Override
    public void setDataSource(IMediaDataSource iMediaDataSource) throws IllegalStateException, SecurityException, IllegalArgumentException {
        _setDataSource(iMediaDataSource);
    }

    @TargetApi(13)
    public void setDataSource(FileDescriptor fileDescriptor) throws IllegalStateException, IOException, IllegalArgumentException {
        ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptor);
        try {
            _setDataSourceFd(parcelFileDescriptorDup.getFd());
        } finally {
            parcelFileDescriptorDup.close();
        }
    }

    private void setDataSource(FileDescriptor fileDescriptor, long j, long j2) throws IllegalStateException, IOException, IllegalArgumentException {
        setDataSource(fileDescriptor);
    }

    @Override
    public void setDataSource(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.mCurBufferingPercent = 0;
        this.mBufferedPercent = 0;
        this.mBufferedPositionMs = 0L;
        this.mDataSource = str;
        _setDataSource(str, null, null);
    }
}
