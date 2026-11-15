package com.hunantv.media.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.alibaba.android.arouter.utils.Consts;
import com.google.gson.Gson;
import com.hisavana.common.constant.ComConstants;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.hunantv.media.config.NetPlayConfig;
import com.hunantv.media.config.NetPlayConfigHelper;
import com.hunantv.media.drm.IDrmSession;
import com.hunantv.media.drm.MgtvDrmHelper;
import com.hunantv.media.drm.MgtvDrmParams;
import com.hunantv.media.global.Constants;
import com.hunantv.media.global.PlayerReferenceObserver;
import com.hunantv.media.p2p.IP2pTask;
import com.hunantv.media.p2p.P2pMgr;
import com.hunantv.media.player.datasource.p2p.HttpEndEntity;
import com.hunantv.media.player.datasource.p2p.MGTVP2pDirectMediaDataSource;
import com.hunantv.media.player.flow.FlowReportProcessor;
import com.hunantv.media.player.flow.entity.FlowReportEntity;
import com.hunantv.media.player.helper.BuildHelper;
import com.hunantv.media.player.helper.MediaCodecHelp;
import com.hunantv.media.player.helper.MgtvPlayerSupporter;
import com.hunantv.media.player.libnative.FFmpegApi;
import com.hunantv.media.player.loader.ImgoLibLoader;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.pragma.PlayerConfig;
import com.hunantv.media.player.smooth.SmoothMediaSource;
import com.hunantv.media.player.statistic.FlowDataStatistic;
import com.hunantv.media.player.subtitle.SubtitleSource;
import com.hunantv.media.player.utils.CodeUtil;
import com.hunantv.media.player.utils.ExTicker;
import com.hunantv.media.player.utils.FileUtil;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.player.utils.SyncStateMachine;
import com.hunantv.media.player.utils.UrlUtil;
import com.hunantv.media.recoder.GifRecorder;
import com.hunantv.media.report.ReportParams;
import com.hunantv.media.utils.AudioUtil;
import com.hunantv.media.utils.KeyFrameInfoUtils;
import com.hunantv.media.utils.MgtvPlayerBroadcastObserver;
import com.hunantv.media.utils.NumericUtil;
import com.hunantv.media.widget.ISubtitle;
import com.mgtv.easydatasource.FlowReporter;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.videodownloader.model.Video;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.security.InvalidParameterException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public class MgtvMediaPlayer implements SubtitleSource.SubtitleSourceHolder {
    public static final String BUNDLE_KEY_BOOLEAN_AUDIO_MODE = "BUNDLE_KEY_BOOLEAN_AUDIO_MODE";
    public static final String BUNDLE_KEY_BOOLEAN_ENABLE_REPORT = "BUNDLE_KEY_BOOLEAN_ENABLE_REPORT";
    public static final String BUNDLE_KEY_LOG_TAG_KEY = "BUNDLE_KEY_LOG_TAG_KEY";
    public static final int DATA_PROTOCOL_IMGOCUS = 0;
    public static final int DATA_PROTOCOL_IMGODS = 1;
    private static final String DEFAULT_CACHE_REPORT_TAG = "default";
    private static final boolean DEFAULT_HTTP_DNS_ENABLE = false;
    public static final int DNS_FAMILY_DEFAULT = 0;
    public static final int DNS_FAMILY_ONLY_IPV4 = 1;
    public static final int DNS_FAMILY_ONLY_IPV6 = 2;
    private static final String DNS_JAVA_HTTPDNS = "java_httpdns";
    private static final String DNS_JAVA_NORMAL = "java_normal";
    private static final String DNS_NATIVE = "native";
    public static final int ENABLE_PLAYER_MODE_LIVE = 1;
    public static final int ENABLE_PLAYER_MODE_LOOP = 2;
    public static final int ENABLE_PLAYER_MODE_NORMAL = 0;
    public static final int ENABLE_PLAYER_MODE_SMOOTH = 3;
    public static final String EXTRA_REPORT_PARAMS = "EXTRA_REPORT_PARAMS";
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
    public static final int ID_METHOD_GETCURRENTPOSITION = 0;
    public static final int ID_METHOD_RELEASE = 2;
    public static final int ID_METHOD_RESET = 1;
    public static final int ID_METHOD_SETPLAYSPEED = 3;
    public static final int INFO_EXTRA_BUFFER_ACCSEEK = 5;
    public static final int INFO_EXTRA_BUFFER_FIRST_LOAD = 0;
    public static final int INFO_EXTRA_BUFFER_LOOPSWITCH = 7;
    public static final int INFO_EXTRA_BUFFER_NET_BROKEN = 8;
    public static final int INFO_EXTRA_BUFFER_NORMAL = 1;
    public static final int INFO_EXTRA_BUFFER_SEEK = 2;
    public static final int INFO_EXTRA_BUFFER_SPEED = 3;
    public static final int INFO_EXTRA_BUFFER_STEP = 6;
    public static final int INFO_EXTRA_BUFFER_SWITCH = 4;
    public static final int INFO_EXTRA_BUFFER_VFIRST = 10;
    private static final int INVALID_ID = -1;
    private static final int INVALID_MS = -1;
    public static final int MEDIA_ERROR_IO = -1004;
    public static final int MEDIA_ERROR_MALFORMED = -1007;
    public static final int MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK = 200;
    public static final int MEDIA_ERROR_SERVER_DIED = 100;
    public static final int MEDIA_ERROR_TIMED_OUT = -110;
    public static final int MEDIA_ERROR_UNKNOWN = 1;
    public static final int MEDIA_ERROR_UNSUPPORTED = -1010;
    public static final int MEDIA_INFO_ACCURATE_SEEK_COMPLETE = 2804;
    public static final int MEDIA_INFO_ACODEC_RECONFIGURE = 2805;
    public static final int MEDIA_INFO_AUDIO_IS_EXIST = 10020;
    public static final int MEDIA_INFO_AUDIO_RENDERING_START = 4;
    public static final int MEDIA_INFO_AV_SYNC_ERROR = 2850;
    public static final int MEDIA_INFO_BAD_INTERLEAVING = 800;
    public static final int MEDIA_INFO_BUFFERING_END = 702;
    public static final int MEDIA_INFO_BUFFERING_START = 701;
    public static final int MEDIA_INFO_DATA_PROTOCOL = 2803;
    public static final int MEDIA_INFO_DECODER_HW_RESET_TO_SW = 503;
    public static final int MEDIA_INFO_DECODER_HW_TO_SW = 501;
    public static final int MEDIA_INFO_DECODER_HW_TO_SW_DATA = 504;
    public static final int MEDIA_INFO_DECODER_HW_TO_SW_HEVC = 506;
    public static final int MEDIA_INFO_DECODER_HW_TO_SW_INNER = 505;
    public static final int MEDIA_INFO_DECODER_SW_TO_HW = 502;
    public static final int MEDIA_INFO_DECODER_TYPE_CHANGED = 5;
    public static final int MEDIA_INFO_DL_BYTES_UPDATE = 8;
    public static final int MEDIA_INFO_DL_SPEED_UPDATE = 7;
    public static final int MEDIA_INFO_EXTERNAL_METADATA_UPDATE = 803;
    public static final int MEDIA_INFO_FILE_ENCODE_INFO = 2901;
    public static final int MEDIA_INFO_FILE_START_TIME = 2891;
    public static final int MEDIA_INFO_LOAD_DATA_STATUS = 10021;
    public static final int MEDIA_INFO_LOOPSEEK_POS_ZERO = 2892;
    public static final int MEDIA_INFO_MEDIACODEC_COLOR_FORMAT = 2900;
    public static final int MEDIA_INFO_METADATA_UPDATE = 802;
    public static final int MEDIA_INFO_NETWORK_BANDWIDTH = 703;
    public static final int MEDIA_INFO_NONET_BUFFER_NOENOUGH = 2893;
    public static final int MEDIA_INFO_NOT_SEEKABLE = 801;
    public static final int MEDIA_INFO_PLAYBACK_STATE_CHANGED = 2830;
    public static final int MEDIA_INFO_PREPARED_WATER_MARK_MS = 10030;
    public static final int MEDIA_INFO_PREPARE_WILL_PLAYING = 2820;
    public static final int MEDIA_INFO_RESET_RENDER_VIEW = 200001;
    public static final int MEDIA_INFO_SEI_SYS_TIMESTAMP = 2860;
    public static final int MEDIA_INFO_SPEED_RENDER_DISABLE = 10010;
    public static final int MEDIA_INFO_SPEED_RENDER_WARNING = 10011;
    public static final int MEDIA_INFO_STARTED_AS_NEXT = 2;
    public static final int MEDIA_INFO_STREAM_FORMAT_TYPE_EXTRA_FLV = 4;
    public static final int MEDIA_INFO_STREAM_FORMAT_TYPE_EXTRA_HLS = 1;
    public static final int MEDIA_INFO_STREAM_FORMAT_TYPE_EXTRA_MP4 = 3;
    public static final int MEDIA_INFO_STREAM_FORMAT_TYPE_EXTRA_OTHER = 0;
    public static final int MEDIA_INFO_STREAM_FORMAT_TYPE_EXTRA_TS = 2;
    public static final int MEDIA_INFO_STREAM_INFO_HLS_SEG_SIZE_INFO = 810;
    public static final int MEDIA_INFO_STREAM_TYPE = 2806;
    public static final int MEDIA_INFO_SUBTITLE_TIMED_OUT = 902;
    public static final int MEDIA_INFO_TIMED_TEXT_ERROR = 900;
    public static final int MEDIA_INFO_UNKNOWN = 1;
    public static final int MEDIA_INFO_UNSUPPORTED_SUBTITLE = 901;
    public static final int MEDIA_INFO_VIDEO_DECODER_EXTRA_HW = 1;
    public static final int MEDIA_INFO_VIDEO_DECODER_EXTRA_SW = 0;
    public static final int MEDIA_INFO_VIDEO_DECODER_OPEN = 6;
    public static final int MEDIA_INFO_VIDEO_FPS = 2810;
    public static final int MEDIA_INFO_VIDEO_RENDERING_START = 3;
    public static final int MEDIA_INFO_VIDEO_ROTATION_CHANGED = 10001;
    public static final int MEDIA_INFO_VIDEO_STREAM_CODEC_INFO = 2870;
    public static final int MEDIA_INFO_VIDEO_STREAM_TYPE = 2840;
    public static final int MEDIA_INFO_VIDEO_STREAM_TYPE_EXTRA_H264 = 0;
    public static final int MEDIA_INFO_VIDEO_STREAM_TYPE_EXTRA_H265 = 1;
    public static final int MEDIA_INFO_VIDEO_STREAM_TYPE_EXTRA_MPEG2 = 2;
    public static final int MEDIA_INFO_VIDEO_STREAM_TYPE_EXTRA_MPEG4 = 3;
    public static final int MEDIA_INFO_VIDEO_STREAM_TYPE_EXTRA_OTHER = 10;
    public static final int MEDIA_INFO_VIDEO_TRACK_LAGGING = 700;
    public static final int MEDIA_INFO_VSR_IS_OPEN = 10024;
    public static final int MEDIA_INFO_VSR_RUN_INFO = 2903;
    public static final int MEDIA_INFO_VV_BUFFER_PREPARED = 9;
    public static final int MEDIA_INFO_WANOS_AUDIO_DLOPEN = 10023;
    public static final int MEDIA_INFO_WANOS_AUDIO_EFFECT = 10022;
    public static final int MEDIA_INFO_WANOS_EFFECT_INFO = 2902;
    public static final String MEDIA_MIMETYPE_TEXT_SUBRIP = "application/x-subrip";
    public static final String MEDIA_MIMETYPE_TEXT_VTT = "text/vtt";
    public static final int MGTVMEDIA_ERROR_100001 = 100001;
    public static final int MGTVMEDIA_ERROR_100002 = 100002;
    public static final int MGTVMEDIA_ERROR_100003 = 100003;
    public static final int MGTVMEDIA_ERROR_100004 = 100004;
    public static final int MGTVMEDIA_ERROR_200001 = 200001;
    public static final int MGTVMEDIA_ERROR_200002 = 200002;
    public static final int MGTVMEDIA_ERROR_200003 = 200003;
    public static final int MGTVMEDIA_ERROR_300001 = 300001;
    public static final int MGTVMEDIA_ERROR_300002 = 300002;
    public static final int MGTVMEDIA_ERROR_300003 = 300003;
    public static final int MGTVMEDIA_ERROR_300004 = 300004;
    public static final int MGTVMEDIA_ERROR_400400 = 400400;
    public static final int MGTVMEDIA_ERROR_400401 = 400401;
    public static final int MGTVMEDIA_ERROR_400402 = 400402;
    public static final int MGTVMEDIA_ERROR_400403 = 400403;
    public static final int MGTVMEDIA_ERROR_400404 = 400404;
    public static final int MGTVMEDIA_ERROR_400407 = 400407;
    public static final int MGTVMEDIA_ERROR_400408 = 400408;
    public static final int MGTVMEDIA_ERROR_400410 = 400410;
    public static final int MGTVMEDIA_ERROR_400416 = 400416;
    public static final int MGTVMEDIA_ERROR_4004XX = 400499;
    public static final int MGTVMEDIA_ERROR_400500 = 400500;
    public static final int MGTVMEDIA_ERROR_400501 = 400501;
    public static final int MGTVMEDIA_ERROR_400502 = 400502;
    public static final int MGTVMEDIA_ERROR_400503 = 400503;
    public static final int MGTVMEDIA_ERROR_400504 = 400504;
    public static final int MGTVMEDIA_ERROR_4005XX = 400599;
    public static final int MGTVMEDIA_ERROR_400600 = 400600;
    public static final int MGTVMEDIA_ERROR_400601 = 400601;
    public static final int MGTVMEDIA_ERROR_400602 = 400602;
    public static final int MGTVMEDIA_ERROR_400802 = 400802;
    public static final int MGTVMEDIA_ERROR_400803 = 400803;
    public static final int MGTVMEDIA_ERROR_400804 = 400804;
    public static final int MGTVMEDIA_ERROR_500001 = 500001;
    public static final int MGTVMEDIA_ERROR_500002 = 500002;
    public static final int MGTVMEDIA_ERROR_500003 = 500003;
    public static final int MGTVMEDIA_ERROR_500004 = 500004;
    public static final int MGTVMEDIA_ERROR_500999 = 500999;
    public static final int MGTVMEDIA_ERROR_EXTRA_100701 = 100701;
    public static final int MGTVMEDIA_ERROR_EXTRA_100900 = 100900;
    public static final int MGTVMEDIA_ERROR_EXTRA_100903 = 100903;
    public static final int MGTVMEDIA_ERROR_EXTRA_100906 = 100906;
    public static final int MGTVMEDIA_ERROR_EXTRA_100907 = 100907;
    public static final int MGTVMEDIA_ERROR_EXTRA_400100 = 400100;
    public static final int MGTVMEDIA_ERROR_EXTRA_400198 = 400198;
    public static final int MGTVMEDIA_ERROR_EXTRA_400199 = 400199;
    public static final int MGTVMEDIA_ERROR_EXTRA_DRM_BASE = 400270;
    public static final int MGTVMEDIA_ERROR_EXTRA_DRM_INFO_LIST_INVALID = 400276;
    public static final int MGTVMEDIA_ERROR_EXTRA_DRM_INIT_ERROR = 400275;
    public static final int MGTVMEDIA_ERROR_EXTRA_DRM_INIT_INVALID = 400273;
    public static final int MGTVMEDIA_ERROR_EXTRA_DRM_INVALID_PARAMS = 400278;
    public static final int MGTVMEDIA_ERROR_EXTRA_DRM_INVALID_SESSION = 400272;
    public static final int MGTVMEDIA_ERROR_EXTRA_DRM_KEYID_INVALID = 400271;
    public static final int MGTVMEDIA_ERROR_EXTRA_DRM_LIB_LOAD_FAILED = 400299;
    public static final int MGTVMEDIA_ERROR_EXTRA_DRM_LICENSE_BASE = 402000;
    public static final int MGTVMEDIA_ERROR_EXTRA_DRM_LICENSE_URL_INVALID = 400277;
    public static final int MGTVMEDIA_ERROR_EXTRA_DRM_PROVISION_BASE = 401000;
    public static final int MGTVMEDIA_ERROR_VIDEO_DATA_AMCDECODER_FAILED = 100606;
    public static final int MGTVMEDIA_ERROR_VIDEO_DATA_FFDECODER_FAILED = 100607;
    public static final int MGTVMEDIA_ERROR_WHAT_200100 = 200100;
    public static final int MGTVMEDIA_EXTRA_ERROR_300400 = 300400;
    public static final int MGTVMEDIA_EXTRA_ERROR_3004XX = 300499;
    public static final int MGTVMEDIA_EXTRA_ERROR_300500 = 300500;
    public static final int MGTVMEDIA_EXTRA_ERROR_3005XX = 300599;
    public static final int MGTVMEDIA_EXTRA_ERROR_301400 = 301400;
    public static final int MGTVMEDIA_EXTRA_ERROR_3014XX = 301499;
    public static final int MGTVMEDIA_EXTRA_ERROR_301500 = 301500;
    public static final int MGTVMEDIA_EXTRA_ERROR_3015XX = 301599;
    public static final int MGTVMEDIA_WARNING_403_PRE_PLAY = 800403;
    public static final int MGTVMEDIA_WARNING_410_PRE_PLAY = 800410;
    public static final int MGTVMEDIA_WARNING_AV_SYNC_ERR = 800500;
    public static final int MGTVMEDIA_WARNING_AV_SYNC_SUM_ERR = 800501;
    public static final int MGTVMEDIA_WARNING_BACKUP_LOAD_SUCCESS = 800006;
    public static final int MGTVMEDIA_WARNING_BASE = 800000;
    public static final int MGTVMEDIA_WARNING_DNS_ABORT = 800102;
    public static final int MGTVMEDIA_WARNING_DNS_SYNC_IN_ASYNC = 800105;
    public static final int MGTVMEDIA_WARNING_DS_LOAD_ERROR = 800003;
    public static final int MGTVMEDIA_WARNING_ERROR_COMPLETION = 800009;
    public static final int MGTVMEDIA_WARNING_EXTRA_300301 = 800301;
    public static final int MGTVMEDIA_WARNING_HTTPDNS_REPORT_ERR = 800202;
    public static final int MGTVMEDIA_WARNING_HTTPDNS_REPORT_PV = 800200;
    public static final int MGTVMEDIA_WARNING_HTTPDNS_REPORT_SUC = 800201;
    public static final int MGTVMEDIA_WARNING_HTTP_ERROR_ERR = 800902;
    public static final int MGTVMEDIA_WARNING_HTTP_ERROR_PV = 800901;
    public static final int MGTVMEDIA_WARNING_INNER_RETRY_RENDER_START = 801012;
    public static final int MGTVMEDIA_WARNING_INVALID_THREAD = 800005;
    public static final int MGTVMEDIA_WARNING_IP_IS_LAN = 800101;
    public static final int MGTVMEDIA_WARNING_JAVA_OPENGL = 801001;
    public static final int MGTVMEDIA_WARNING_LEAVE_TIME_INVALID = 800010;
    public static final int MGTVMEDIA_WARNING_LIVE_IN_VOD = 800020;
    public static final int MGTVMEDIA_WARNING_LIVE_IN_VOD_COMPLETE = 800021;
    public static final int MGTVMEDIA_WARNING_LOCAL_100201 = 801201;
    public static final int MGTVMEDIA_WARNING_LOW_MEMORY = 800600;
    public static final int MGTVMEDIA_WARNING_P2P_TS_SKIP = 801011;
    public static final int MGTVMEDIA_WARNING_RENDER_DISABLE = 800008;
    public static final int MGTVMEDIA_WARNING_TARGET_ERROR = 801010;
    public static final int MGTVMEDIA_WARNING_TS_CACHE_SKIP = 800007;
    public static final int MGTVMEDIA_WARNING_TS_ERROR = 800905;
    public static final String MGTVPLAYER_VERSION = "MGTV_1.25.3";
    public static final int MGTV_LOG_DEBUG_BRIEF = 1;
    public static final int MGTV_LOG_DEBUG_DETAIL = 2;
    public static final int MGTV_LOG_DEBUG_NONE = 0;
    public static final int MGTV_LOG_LEVEL_DEBUG = 3;
    public static final int MGTV_LOG_LEVEL_DEFAULT = 1;
    public static final int MGTV_LOG_LEVEL_ERROR = 6;
    public static final int MGTV_LOG_LEVEL_FATAL = 7;
    public static final int MGTV_LOG_LEVEL_INFO = 4;
    public static final int MGTV_LOG_LEVEL_SILENT = 8;
    public static final int MGTV_LOG_LEVEL_UNKNOWN = 0;
    public static final int MGTV_LOG_LEVEL_VERBOSE = 2;
    public static final int MGTV_LOG_LEVEL_WARN = 5;
    public static final int MGTV_PROP_INT64_DECODER_PLAY_NOTIFY = 90003;
    private static final int NETWORK_RECONNECT_COUNT = 2;
    private static final int NETWORK_RECONNECT_COUNT_MAX_LIMIT = 6;
    private static final int OFFSET_MS = 5000;
    public static final int OPPO_FUNC_OSIE = 2;
    public static final int OPPO_FUNC_SR = 1;
    public static final int PLAYER_TYPE_CODECPLAYER = 2;
    public static final int PLAYER_TYPE_FFPLAYER = 1;
    public static final int PLAYER_TYPE_SYSTEM = 0;
    public static final int PREPARE_WILL_PLAYING_AUDIO_DECODED_START = 82005;
    public static final int PREPARE_WILL_PLAYING_COMPONENT_OPEN = 82003;
    public static final int PREPARE_WILL_PLAYING_FIND_STREAM_INFO = 82002;
    public static final int PREPARE_WILL_PLAYING_OPEN_INPUT = 82001;
    public static final int PREPARE_WILL_PLAYING_VIDEO_DECODED_START = 82004;
    private static final int PRE_BUFFER_DEFAULT = 1;
    private static final int PRE_BUFFER_LIMIT = 2;
    private static final int PRE_BUFFER_MAX_S = 5;
    private static final int PRE_BUFFER_UNLIMIT = 3;
    public static final int READ_DATASOURCE_TYPE_DATA_SOURCE = 3;
    public static final int READ_DATASOURCE_TYPE_NORMAL = 0;
    public static final int READ_DATASOURCE_TYPE_P2P_DIRECT = 2;
    public static final int READ_DATASOURCE_TYPE_PROXY = 1;
    public static final String REPORT_BROADCAST_ACTION = "mgtv.player.action.PLAYER_REPORT_EVENT";
    private static final int START_RECORD = 0;
    private static final int STOP_RECORD = 1;
    private static final String TAG = "MgtvMediaPlayer";
    public static final int TYPE_NORMAL_MEMORY_PLAY = 1;
    public static final int TYPE_NO_MEMORY_PLAY = 0;
    public static final int TYPE_QUICK_MEMORY_PLAY = 2;
    private static final String USER_MSG_FLAG_DEFAULT = "init";
    private static final String USER_MSG_FLAG_USE_CACHE = "usecache";
    private static final int WHAT_SMOOTHSOURCE_EX_ERROR = 400711;
    private static final int WHAT_SMOOTHSOURCE_FAIL = 400710;
    private int avdiffS;
    private int dfps;
    private String fstime;
    public String hdrInfo;
    private int imp4dh;
    public boolean isBackground;
    private boolean isExAudioEnable;
    private boolean isFlowReportEnable;
    private boolean isUserAudioEnable;
    private boolean mAVSyncErrReported;
    private int mAVSyncErrSum;
    private boolean mAVSyncErrSumReported;
    private long mAVSyncStartTimestamp;
    private int mAccSeekKeyFrameInterval;
    private boolean mAccurateSeekEnable;
    private int mAddrinfoTimeoutMs;
    private AddrinfoType mAddrinfoType;
    private boolean mBackJavaDns;
    private ExTicker mBufferTick;
    private int mBufferTimeoutMs;

    @Nullable
    private Bundle mBundle;
    private boolean mCacheEable;
    private String mCacheM3u8Path;
    private Map<String, String> mCacheReplaceMap;
    private int mCacheReportLerr;
    private String mCacheReportTag;
    private volatile String[] mCacheTsPaths;
    private String mCodecName;
    private int mConnectTimeOutMs;
    private Context mContext;
    private String mCurrentDnsDsc;
    private DataSourceInfo mDataSourceInfo;
    private DataSourceType mDataSourceType;
    private boolean mDebug;
    public long mDlt;
    private Object mDnsLock;
    private int mDnsNoNetMaxRetry;
    private Object mDnsNoNetWaiter;
    private com.hunantv.media.player.a.d mDnsThreadManager;
    private boolean mEnableDnsNoNetStrategy;
    private boolean mEnableImgoVsr;
    private boolean mEnableJAVAIPCacheMap;
    private boolean mEnableP2PHttpDns;
    private boolean mEnableReport;
    private int mErrorExtraCodeStore;
    private MgtvPlayerListener.OnErrorListener mErrorListener;
    private String mErrorUrl;
    private FlowDataStatistic mFlowDataStatistic;
    private boolean mForceHttpDns;
    private boolean mForceP2pHttpDns;
    private MgtvPlayerListener.OnFrameListener mFrameListener;
    private GifRecorder mGifRecorder;
    private volatile String mHDJSwitchUrl;
    private boolean mHttpDnsEnable;
    private boolean mHttpDnsNeedRetry;
    private Hw2SwType mHw2SwType;
    private Map<String, IPList> mIPCacheMap;
    private boolean mImgoMediaPlayerAudioMode;
    private boolean mInnerAutoRotateEnable;
    private FlowDataStatistic mInnerFlowDataStatistic;
    private int mIsAudioExist;
    private boolean mIsBuffering;
    private boolean mIsGetPositionCallback;
    private boolean mIsInitMp4Error;
    private boolean mIsInnerRetrying;
    private boolean mIsLive;
    private int mIsNativePausedLoadData;
    private boolean mIsP2pTSSkipReport;
    private boolean mIsVideoRendered;
    private int mIsVsrOpen;
    private boolean mIsWanosAudioEffectValid;
    private boolean mJavaDnsEnable;
    private com.hunantv.media.player.a.a.b mJavaDnsType;
    private boolean mKeyframeSeekEnable;
    private int mLastDlSize;
    private int mLastDnsType;
    private String mLastErrorTypeCode;
    private String mLastHostErr;
    private String mLastHostIP;
    private String mLastIP;
    private int mLastIpCount;
    private int mLastIpIndex;
    private String[] mLastIps;
    private boolean mLastIsNetworkAvailableNNS;
    private String mLastP2pCdnIP;
    private int mLastPosition;
    private String mLastRequestUrl;
    private String mLastTcpErr;
    private String mLastTcpIP;
    int mLastTsSkipErrExtra;
    String mLastTsSkipErrFileName;
    private String mLastUri;
    private int mLastVideoHeight;
    private int mLastVideoWidth;
    private volatile boolean mLiveReopen;
    private int mLoadMaxRetryTime;

    @Nullable
    private String mLogTagKey;
    private boolean mLoopPlayerReset;
    private volatile String mLoopPlayerSwitchUrl;
    private AtomicInteger mLoopSourceKey;
    private FlowReportProcessor mMainFlowReportProcessor;
    private long mMainThreadID;
    private h mMediaPlayer;
    NetPlayConfig mNetPlayConfig;
    private long mNetdSVCTimeMs;
    private boolean mNetworkChangeWhilePlaying;
    private MainNotifyHandler mNotifyHandler;
    private MgtvPlayerBroadcastObserver mObserver;
    private MgtvPlayerListener.OnAVPlayListener mOnAVPlayListener;
    private MgtvPlayerListener.OnBufferingTimeoutListener mOnBufferingTimeoutListener;
    private MgtvPlayerListener.OnCompletionListener mOnCompletionListener;
    private MgtvPlayerListener.OnErrorListener mOnErrorListener;
    private MgtvPlayerListener.OnFrameListener mOnFrameListener;
    private MgtvPlayerListener.OnGetFrameImageListener mOnGetFrameImageListener;
    private MgtvPlayerListener.OnInfoListener mOnInfoListener;
    private MgtvPlayerListener.OnInfoStringListener mOnInfoStringListener;
    private MgtvPlayerListener.OnLoadDataListener mOnLoadDataListener;
    private MgtvPlayerListener.OnPauseListener mOnPauseListener;
    private MgtvPlayerListener.OnPlayerEventListener mOnPlayerEventListener;
    private MgtvPlayerListener.OnPreparedListener mOnPreparedListener;
    private MgtvPlayerListener.OnRecordVideoListener mOnRecordVideoListener;
    private MgtvPlayerListener.OnSeekCompleteListener mOnSeekCompleteListener;
    private MgtvPlayerListener.OnSourceNetHandledListener mOnSourceNetHandledListener;
    private MgtvPlayerListener.OnStartListener mOnStartListener;
    private MgtvPlayerListener.OnSwitchSmoothSourceListener mOnSwitchSmoothSourceListener;
    private MgtvPlayerListener.OnSwitchSourceListener mOnSwitchSourceListener;
    private MgtvPlayerListener.OnWarningListener mOnWarningListener;
    private com.mgtv.a.a.InterfaceC0173a mP2pNotify;
    private PlayStatus mPlayStatus;
    private ExTicker mPlayTicker;
    private float mPlaybackSpeed;
    private int mPlayerMode;
    private boolean mPlayerReset;
    private int mPlayerType;
    private boolean mPositionLoged;
    private int mPreBufferMaxS;
    private SyncStateMachine mPreBufferState;
    private int mPreBufferTimeoutMs;
    private long mPrepareAsyncTimeStampMs;
    private boolean mPrepared;
    private Prepared4StartMode mPrepared4StartMode;
    private int mRealEncodeType;
    private int mReceiveDataTimeOutMs;
    private float mRecordMaxPlaySpeed;
    private float mRecordVfps;
    private boolean mRenderDisableWarnSended;
    private RenderType mRenderType;
    private IMgtvRenderView mRenderView;
    private ReportParams mReportParams;
    private boolean mReportedTSLAN;
    private com.hunantv.media.report.a mReporter;
    private com.hunantv.media.report.a mReporterSL;
    private int mRetryLastErrorCode;
    private long mSeekStartMs;
    private SkipLoopFilterType mSkipLoopFilterType;
    Map<String, byte[]> mSmoothKeyFrameMap;
    private d.n mSmoothSourceListener;
    private Map<Integer, SmoothMediaSource> mSmoothSourcesRecord;
    private boolean mSmoothUseP2pFailed;
    public long mSmt;
    private MgtvPlayerListener.OnSourceNetHandledListener mSourceNetListner;
    private int mSourceRetryCode;
    private int mSourceRetryCount;
    private boolean mSourceSwitching;
    private boolean mSourceSwitchingComplete;
    private int mStreamFormatType;
    private ISubtitle.SubtitleCallback mSubtitleCallback;
    private com.hunantv.media.player.subtitle.b mSubtitleController;
    private List<SubtitleSource> mSubtitleSources;
    private Object mSwitchSmoothSourceLocker;
    private volatile SmoothMediaSource mSwitchedSmoothSource;
    private boolean mSwitchingPrepared;
    private volatile SmoothMediaSource mSwitchingSmoothSource;
    private com.hunantv.media.player.subtitle.e mTimeProvider;
    private int mTsCacheSkipNum;
    private boolean mTsNotSkip;
    private int mVVbuft;
    private volatile int mVideoFrameClockNotifyMs;
    private volatile long mVideoFrameClockNotifyTimeEnd;
    private volatile long mVideoFrameClockNotifyTimeStart;
    private volatile int mVideoFrameClockNotifyType;
    private int mWeakBufferSpeedKB;
    private int mWeakBufferTimeoutMs;
    private int mWeakTimer;
    private String mWillOpenUrl;
    private String mcColorFormat;
    private int mpx;
    private Object p2pLocker;
    HandlerThread ptsHandlerThread;
    Set<MgtvPlayerListener.OnVideoPTSListener> ptsListeners;
    Object ptsLocker;
    WeakHandler ptsWeakHandler;
    private int rfps;
    private int rfpsLowCounter;
    private boolean rfpsLowFilterChanged;
    private int sfps;
    private int vfps;
    public String vsri;
    public String vsrver;
    public String vsrvkver;
    public int wadls;
    public String waev;

    public static class AnonymousClass28 {
        static final int[] $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$DataSourceType;
        static final int[] $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$NativeSoType;
        static final int[] $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$Prepared4StartMode;
        static final int[] $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$RenderType;
        static final int[] $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$SkipLoopFilterType;
        static final int[] $SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType;

        static {
            int[] iArr = new int[Prepared4StartMode.values().length];
            $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$Prepared4StartMode = iArr;
            try {
                iArr[Prepared4StartMode.MODE_PREPARED4START_DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$Prepared4StartMode[Prepared4StartMode.MODE_PREPARED4START_AUTOPLAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$Prepared4StartMode[Prepared4StartMode.MODE_PREPARED4START_LOADDATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$Prepared4StartMode[Prepared4StartMode.MODE_PREPARED4START_LOADDATA_DISAV.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[NativeSoType.values().length];
            $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$NativeSoType = iArr2;
            try {
                iArr2[NativeSoType.TYPE_NATIVESO_IMGOFFMPEG.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$NativeSoType[NativeSoType.TYPE_NATIVESO_IMGOHELP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$NativeSoType[NativeSoType.TYPE_NATIVESO_IMGOMEDIAPLAYER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$NativeSoType[NativeSoType.TYPE_NATIVESO_IMGODS.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr3 = new int[RenderType.values().length];
            $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$RenderType = iArr3;
            try {
                iArr3[RenderType.OPENGL_ES.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$RenderType[RenderType.NATIVE_WINDOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            int[] iArr4 = new int[SkipLoopFilterType.values().length];
            $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$SkipLoopFilterType = iArr4;
            try {
                iArr4[SkipLoopFilterType.TYPE_SKIPLOOPFILTER_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$SkipLoopFilterType[SkipLoopFilterType.TYPE_SKIPLOOPFILTER_NONREF.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$SkipLoopFilterType[SkipLoopFilterType.TYPE_SKIPLOOPFILTER_BIDIR.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$SkipLoopFilterType[SkipLoopFilterType.TYPE_SKIPLOOPFILTER_NONKEY.ordinal()] = 4;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$SkipLoopFilterType[SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL.ordinal()] = 5;
            } catch (NoSuchFieldError unused15) {
            }
            int[] iArr5 = new int[DataSourceType.values().length];
            $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$DataSourceType = iArr5;
            try {
                iArr5[DataSourceType.TYPE_DATASOUCE_IMGO.ordinal()] = 1;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$DataSourceType[DataSourceType.TYPE_DATASOUCE_DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused17) {
            }
            int[] iArr6 = new int[com.hunantv.media.player.a.a.b.values().length];
            $SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType = iArr6;
            try {
                iArr6[com.hunantv.media.player.a.a.b.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType[com.hunantv.media.player.a.a.b.FREE_HTTP_DNS.ordinal()] = 2;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    public enum AddrinfoType {
        TYPE_ADDRINFO_DEFAULT,
        TYPE_ADDRINFO_THREAD,
        TYPE_ADDRINFO_ONE_BY_ONE,
        TYPE_DNS_CACHE
    }

    public static class DataSourceInfo {
        public static final String FILE_FORMAT_FMP4 = "fmp4";
        public static final String H264 = "h264";
        public static final String H265 = "h265";
        public static final String INIT_VALUE = "init";
        public static final String MPEG2 = "mpeg2";
        public static final String MPEG4 = "mpeg4";
        public static final String OTHER = "other";
        private AudioChildInfo audioChildInfo;
        private String audioFormat;
        private String bitRate;
        private String fileFormat;
        private String videoFormat;
        private int videoHeight;
        private int videoWidth;

        public static class AudioChildInfo {
            private int bitdepth;
            private String bitrateMode;
            private String channels;
            private String codecname;
            private int drmFlag;
            private String fileEx;
            private String fileSize;
            private String licenseUrl = "";
            private int samplingrate;

            public int getBitdepth() {
                return this.bitdepth;
            }

            public String getBitrateMode() {
                return this.bitrateMode;
            }

            public String getChannels() {
                return this.channels;
            }

            public String getCodecname() {
                return this.codecname;
            }

            public int getDrmFlag() {
                return this.drmFlag;
            }

            public String getFileEx() {
                return this.fileEx;
            }

            public String getFileSize() {
                return this.fileSize;
            }

            public String getLicenseUrl() {
                return this.licenseUrl;
            }

            public int getSamplingrate() {
                return this.samplingrate;
            }

            public AudioChildInfo setBitdepth(int i) {
                this.bitdepth = i;
                return this;
            }

            public AudioChildInfo setBitrateMode(String str) {
                this.bitrateMode = str;
                return this;
            }

            public AudioChildInfo setChannels(String str) {
                this.channels = str;
                return this;
            }

            public AudioChildInfo setCodecname(String str) {
                this.codecname = str;
                return this;
            }

            public AudioChildInfo setDrmFlag(int i) {
                this.drmFlag = i;
                return this;
            }

            public AudioChildInfo setFileEx(String str) {
                this.fileEx = str;
                return this;
            }

            public AudioChildInfo setFileSize(String str) {
                this.fileSize = str;
                return this;
            }

            public AudioChildInfo setLicenseUrl(String str) {
                this.licenseUrl = str;
                return this;
            }

            public AudioChildInfo setSamplingrate(int i) {
                this.samplingrate = i;
                return this;
            }
        }

        public AudioChildInfo getAudioChildInfo() {
            return this.audioChildInfo;
        }

        public String getAudioFormat() {
            return this.audioFormat;
        }

        public String getBitRate() {
            return this.bitRate;
        }

        public String getFileFormat() {
            return this.fileFormat;
        }

        public String getVideoFormat() {
            return this.videoFormat;
        }

        public int getVideoHeight() {
            return this.videoHeight;
        }

        public int getVideoWidth() {
            return this.videoWidth;
        }

        public DataSourceInfo setAudioChildInfo(AudioChildInfo audioChildInfo) {
            this.audioChildInfo = audioChildInfo;
            return this;
        }

        public DataSourceInfo setAudioFormat(String str) {
            this.audioFormat = str;
            return this;
        }

        public DataSourceInfo setBitRate(String str) {
            this.bitRate = str;
            return this;
        }

        public DataSourceInfo setFileFormat(String str) {
            this.fileFormat = str;
            return this;
        }

        public DataSourceInfo setVideoFormat(String str) {
            if (str != null) {
                String lowerCase = str.toLowerCase();
                lowerCase.hashCode();
                switch (lowerCase) {
                    case "avc":
                    case "h264":
                        str = H264;
                        break;
                    case "h265":
                    case "hevc":
                        str = H265;
                        break;
                }
            }
            this.videoFormat = str;
            return this;
        }

        public DataSourceInfo setVideoHeight(int i) {
            this.videoHeight = i;
            return this;
        }

        public DataSourceInfo setVideoWidth(int i) {
            this.videoWidth = i;
            return this;
        }

        public String toString() {
            return "DataSourceInfo{videoFormat='" + this.videoFormat + "', bitRate='" + this.bitRate + "', fileFormat='" + this.fileFormat + "', videoWidth=" + this.videoWidth + ", videoHeight=" + this.videoHeight + ", audioFormat='" + this.audioFormat + "'}";
        }
    }

    public enum DataSourceType {
        TYPE_DATASOUCE_DEFAULT,
        TYPE_DATASOUCE_IMGO
    }

    public enum EncodeType {
        H264,
        H265,
        MPEG2,
        MPEG4,
        OTHER
    }

    public enum Hw2SwType {
        NONE,
        HW_2_SW_RESET,
        HW_2_SW_DEFAULT,
        HW_2_SW_OTHER
    }

    public static class IPList {
        public String hostName;
        public long startTimeMs;
        public int ttlMs;
        public List<String> srcList = new ArrayList();
        public List<String> nUseList = new ArrayList();
        public List<String> errList = new ArrayList();
        private boolean isIPValid = true;

        public IPList(String str, String[] strArr) {
            this.hostName = str;
            if (strArr != null && strArr.length > 0) {
                for (String str2 : strArr) {
                    if (com.hunantv.media.player.a.e.e(str2)) {
                        this.srcList.add(str2);
                        this.nUseList.add(str2);
                    }
                }
            }
            this.startTimeMs = System.currentTimeMillis();
            this.ttlMs = 45000;
        }

        public static String formatIPList(List<String> list) {
            String str = "";
            if (list != null && list.size() > 0) {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    str = str + it.next() + ProcessInfo.SPLIT_NEW_VERSION;
                }
            }
            return str;
        }

        public boolean checkTTL() {
            if (this.isIPValid) {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.startTimeMs;
                this.isIPValid = jCurrentTimeMillis > 0 && jCurrentTimeMillis < ((long) this.ttlMs);
            }
            return this.isIPValid;
        }

        public String toString() {
            return "nUseList:" + formatIPList(this.nUseList);
        }

        public static String formatIPList(String[] strArr) {
            String str = "";
            if (strArr != null && strArr.length > 0) {
                for (String str2 : strArr) {
                    str = str + str2 + ProcessInfo.SPLIT_NEW_VERSION;
                }
            }
            return str;
        }
    }

    public static class ImgoAIQE {
        public int ImgoAIQE_def;
        public int ImgoAIQE_h;
        public int ImgoAIQE_w;

        public int getImgoAIQEDef() {
            return this.ImgoAIQE_def;
        }

        public int getImgoAIQEH() {
            return this.ImgoAIQE_h;
        }

        public int getImgoAIQEW() {
            return this.ImgoAIQE_w;
        }

        public ImgoAIQE setImgoAIQEDef(int i) {
            this.ImgoAIQE_def = i;
            return this;
        }

        public ImgoAIQE setImgoAIQEH(int i) {
            this.ImgoAIQE_h = i;
            return this;
        }

        public ImgoAIQE setImgoAIQEW(int i) {
            this.ImgoAIQE_w = i;
            return this;
        }

        public String toString() {
            return "ImgoAIQE{ImgoAIQE_w=" + this.ImgoAIQE_w + ", ImgoAIQE_h=" + this.ImgoAIQE_h + ", ImgoAIQE_def=" + this.ImgoAIQE_def + '}';
        }
    }

    public static final class MainNotifyHandler extends Handler {
        public static final String BUNDLE_STR_INFO1 = "bundle_str_info1";
        public static final String BUNDLE_STR_INFO2 = "bundle_str_info2";
        public static final int MSG_HTTPDNS_REPORT_ERR = 2002;
        public static final int MSG_HTTPDNS_REPORT_PV = 2000;
        public static final int MSG_HTTPDNS_REPORT_SUC = 2001;
        public static final int MSG_IP_IS_LAN = 1002;
        private WeakReference<MgtvMediaPlayer> mWeakObj;

        public MainNotifyHandler(MgtvMediaPlayer mgtvMediaPlayer) {
            super(Looper.getMainLooper());
            this.mWeakObj = new WeakReference<>(mgtvMediaPlayer);
        }

        @Override
        public void handleMessage(Message message) {
            MgtvPlayerListener.OnWarningListener onWarningListener;
            String str;
            String strValueOf;
            int i;
            MgtvMediaPlayer mgtvMediaPlayer = this.mWeakObj.get();
            if (mgtvMediaPlayer == null) {
                return;
            }
            Bundle data = message.getData();
            int i2 = message.what;
            if (i2 == 1002) {
                if (data == null || mgtvMediaPlayer.mOnWarningListener == null) {
                    return;
                }
                mgtvMediaPlayer.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_IP_IS_LAN, data.getString(BUNDLE_STR_INFO1), data.getString(BUNDLE_STR_INFO2), null);
                return;
            }
            switch (i2) {
                case 2000:
                    if (mgtvMediaPlayer.mOnWarningListener == null) {
                        return;
                    }
                    onWarningListener = mgtvMediaPlayer.mOnWarningListener;
                    str = message.arg1 + "";
                    strValueOf = String.valueOf(message.obj);
                    i = MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTPDNS_REPORT_PV;
                    break;
                case 2001:
                    if (mgtvMediaPlayer.mOnWarningListener == null) {
                        return;
                    }
                    onWarningListener = mgtvMediaPlayer.mOnWarningListener;
                    str = message.arg1 + "";
                    strValueOf = String.valueOf(message.obj);
                    i = MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTPDNS_REPORT_SUC;
                    break;
                case 2002:
                    if (mgtvMediaPlayer.mOnWarningListener == null) {
                        return;
                    }
                    onWarningListener = mgtvMediaPlayer.mOnWarningListener;
                    str = message.arg1 + "";
                    strValueOf = String.valueOf(message.obj);
                    i = MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTPDNS_REPORT_ERR;
                    break;
                default:
                    return;
            }
            onWarningListener.onWarning(i, str, strValueOf, null);
        }
    }

    public enum NativeSoType {
        TYPE_NATIVESO_IMGOFFMPEG,
        TYPE_NATIVESO_IMGOHELP,
        TYPE_NATIVESO_IMGOMEDIAPLAYER,
        TYPE_NATIVESO_IMGODS
    }

    public enum PlayStatus {
        ERROR,
        IDLE,
        PREPARING,
        PREPARED,
        PLAYING,
        PAUSED,
        COMPLETED
    }

    public static class PlayerExtraInfo {
        public long bufsizeByte;
        public long buftimeMs;
        public long dlt;
        public String lastIP;
        public String playSessionID;
        public long smt;
    }

    public enum PlayerModeType {
        TYPE_PLAYER_MODE_NORMAL,
        TYPE_PLAYER_MODE_LIVE,
        TYPE_PLAYER_MODE_LOOP,
        TYPE_PLAYER_MODE_SMOOTH
    }

    public enum Prepared4StartMode {
        MODE_PREPARED4START_DEFAULT,
        MODE_PREPARED4START_AUTOPLAY,
        MODE_PREPARED4START_LOADDATA,
        MODE_PREPARED4START_LOADDATA_DISAV
    }

    public enum RenderType {
        NATIVE_WINDOW,
        OPENGL_ES
    }

    public enum SkipLoopFilterType {
        TYPE_SKIPLOOPFILTER_NONE,
        TYPE_SKIPLOOPFILTER_NONREF,
        TYPE_SKIPLOOPFILTER_BIDIR,
        TYPE_SKIPLOOPFILTER_NONKEY,
        TYPE_SKIPLOOPFILTER_ALL
    }

    public static class WeakHandler extends Handler {
        public static final int MSG_PTS = 256;
        private WeakReference<MgtvMediaPlayer> mWeakPlayer;

        public WeakHandler(Looper looper, MgtvMediaPlayer mgtvMediaPlayer) {
            super(looper);
            this.mWeakPlayer = new WeakReference<>(mgtvMediaPlayer);
        }

        @Override
        public void handleMessage(Message message) {
            MgtvMediaPlayer mgtvMediaPlayer = this.mWeakPlayer.get();
            if (mgtvMediaPlayer != null && message.what == 256) {
                MgtvPlayerListener.FrameClock frameClock = (MgtvPlayerListener.FrameClock) message.obj;
                synchronized (mgtvMediaPlayer.ptsLocker) {
                    try {
                        Iterator<MgtvPlayerListener.OnVideoPTSListener> it = mgtvMediaPlayer.ptsListeners.iterator();
                        while (it.hasNext()) {
                            it.next().onVideoPTS(frameClock);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    static {
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                DebugLog.i(MgtvMediaPlayer.TAG, "DeviceInfo======\nCputy:" + NetPlayConfigHelper.getCputy() + "\nOmxcn:" + NetPlayConfigHelper.getOmxcn() + "\nMod:" + NetPlayConfigHelper.getMod() + "\n======DeviceInfo");
                DebugLog.d(MgtvMediaPlayer.TAG, "async getH265Decoder & getH264Decoder in");
                MediaCodecHelp.getH265Decoder(true);
                MediaCodecHelp.getH264Decoder(true);
                MediaCodecHelp.getALLAV1Decoder(true);
                DebugLog.d(MgtvMediaPlayer.TAG, "async getH265Decoder & getH264Decoder out");
                MgtvDrmHelper.updateWidevineSupportMsg();
                DebugLog.i(MgtvMediaPlayer.TAG, "async updateWidevineSupportMsg " + MgtvDrmHelper.getWidevineSupportMsg());
            }
        });
        thread.setName("mgtvmp_jPreInfo");
        thread.start();
    }

    public MgtvMediaPlayer(int i, Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException, OutOfMemoryError {
        this.mDebug = false;
        this.mPreBufferTimeoutMs = 1800000;
        this.mBufferTimeoutMs = 180000;
        this.mImgoMediaPlayerAudioMode = false;
        this.mAccurateSeekEnable = true;
        this.mAccSeekKeyFrameInterval = 1000;
        this.mKeyframeSeekEnable = false;
        this.mInnerAutoRotateEnable = false;
        this.mWeakBufferSpeedKB = 1;
        this.mWeakBufferTimeoutMs = 120000;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 2;
        this.mPrepared = false;
        this.mIsBuffering = false;
        this.mErrorUrl = "";
        this.mLastRequestUrl = "";
        this.mLastDlSize = 0;
        this.mIsLive = false;
        this.mPlayerMode = 0;
        this.mLiveReopen = false;
        this.mLoopPlayerSwitchUrl = "";
        this.mHDJSwitchUrl = "";
        this.mDataSourceType = DataSourceType.TYPE_DATASOUCE_DEFAULT;
        this.mErrorExtraCodeStore = -1;
        this.mRecordVfps = 0.0f;
        this.mLastVideoWidth = 0;
        this.mLastVideoHeight = 0;
        this.mSkipLoopFilterType = SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mAddrinfoType = AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrinfoTimeoutMs = 0;
        this.mPrepared4StartMode = Prepared4StartMode.MODE_PREPARED4START_DEFAULT;
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            private boolean needInnerRetry(int i2, int i3) {
                return !MgtvMediaPlayer.this.mIsInnerRetrying && MgtvMediaPlayer.this.mMediaPlayer.v() == 2 && i2 == 200003 && i3 == 100606;
            }

            @Override
            public boolean onError(int i2, int i3) {
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onError what:" + i2 + ",extra:" + i3 + ",netType:" + NetPlayConfig.getNetworkType());
                if (MgtvMediaPlayer.this.mGifRecorder != null) {
                    MgtvMediaPlayer.this.mGifRecorder.interrupt(101);
                }
                if (MgtvMediaPlayer.this.isDnsCacheEnable()) {
                    MgtvMediaPlayer.this.checkAndCleanDnsCache(i2, i3);
                }
                if (needInnerRetry(i2, i3)) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onError needInnerRetry");
                    MgtvMediaPlayer.this.mIsInnerRetrying = true;
                    MgtvMediaPlayer.this.mRetryLastErrorCode = i3;
                    MgtvMediaPlayer.this.setPlayerReset(true);
                    if (MgtvMediaPlayer.this.mMediaPlayer.aj()) {
                        MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mMediaPlayer.H(), i2, i3, MgtvMediaPlayer.this.mMediaPlayer.v());
                    } else {
                        MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mMediaPlayer.H(), i2, i3);
                    }
                    return true;
                }
                MgtvMediaPlayer.this.beforeThrowError(i2, i3);
                MgtvMediaPlayer.this.reportErrorWarning(i2, i3);
                if (i2 != 7000006) {
                    MgtvMediaPlayer.this.reportError(i2, i3, "");
                }
                MgtvMediaPlayer.this.stopTickers();
                MgtvMediaPlayer.this.mPlayStatus = PlayStatus.ERROR;
                MgtvMediaPlayer.this.mErrorExtraCodeStore = i3;
                if (MgtvMediaPlayer.this.mOnErrorListener != null) {
                    return MgtvMediaPlayer.this.mOnErrorListener.onError(i2, i3);
                }
                return true;
            }
        };
        this.mIsGetPositionCallback = false;
        this.mPlayStatus = PlayStatus.IDLE;
        this.mRenderType = RenderType.NATIVE_WINDOW;
        this.mPlayTicker = new ExTicker(1000).setTypeStr(PlayAudioData.TAG_NEED_PLAY);
        this.mBufferTick = new ExTicker(1000).setTypeStr("buffer");
        this.mPlayerType = 2;
        this.mMainThreadID = -1L;
        this.mCacheReplaceMap = new LinkedHashMap();
        this.mIsInnerRetrying = false;
        this.mRetryLastErrorCode = 0;
        this.mRenderDisableWarnSended = false;
        this.mForceHttpDns = false;
        this.mHttpDnsNeedRetry = false;
        this.mJavaDnsEnable = false;
        this.mJavaDnsType = com.hunantv.media.player.a.a.b.FREE_HTTP_DNS;
        this.mHttpDnsEnable = false;
        this.mPlayerReset = true;
        this.mLoopPlayerReset = true;
        this.mLastUri = null;
        this.mLastHostErr = "00";
        this.mLastTcpErr = "00";
        this.mLastIpCount = 0;
        this.mLastIpIndex = -1;
        this.mLastDnsType = -1;
        this.mCurrentDnsDsc = "native";
        this.mEnableP2PHttpDns = false;
        this.mForceP2pHttpDns = false;
        this.mDnsThreadManager = new com.hunantv.media.player.a.d().a(new com.hunantv.media.player.a.d.b() {
            @Override
            public void updateIPs(String str, List<String> list) {
                P2pMgr.YfAddBackupIps(str, list, MgtvMediaPlayer.this.mForceP2pHttpDns);
            }
        });
        this.mAVSyncErrReported = false;
        this.mAVSyncErrSumReported = false;
        this.mAVSyncErrSum = 0;
        this.mAVSyncStartTimestamp = 0L;
        this.mPrepareAsyncTimeStampMs = 0L;
        this.mPreBufferState = new SyncStateMachine(1);
        this.mPreBufferMaxS = 5;
        this.mIsAudioExist = -1;
        this.mIsVsrOpen = -1;
        this.mIsNativePausedLoadData = 0;
        this.mIsWanosAudioEffectValid = false;
        this.mLastPosition = 0;
        this.mPositionLoged = false;
        this.mRealEncodeType = -1;
        this.mStreamFormatType = -1;
        this.mNotifyHandler = new MainNotifyHandler(this);
        this.mWillOpenUrl = "";
        this.mReportedTSLAN = false;
        this.mDnsLock = new Object();
        this.mIsP2pTSSkipReport = false;
        this.mCodecName = "n";
        this.mVVbuft = -1;
        this.mEnableJAVAIPCacheMap = false;
        this.mIPCacheMap = new HashMap();
        this.mVideoFrameClockNotifyMs = -1;
        this.mVideoFrameClockNotifyType = -1;
        this.mVideoFrameClockNotifyTimeStart = -1L;
        this.mVideoFrameClockNotifyTimeEnd = -1L;
        this.mCacheReportTag = "default";
        this.mCacheReportLerr = 0;
        this.mEnableDnsNoNetStrategy = false;
        this.mDnsNoNetWaiter = new Object();
        this.mLastIsNetworkAvailableNNS = true;
        this.mDnsNoNetMaxRetry = 20;
        this.mLastTsSkipErrExtra = 0;
        this.fstime = "n/n";
        this.mcColorFormat = "n_n";
        this.isFlowReportEnable = false;
        this.vsri = "0|0_0|0_0";
        this.vsrver = "n";
        this.vsrvkver = "n";
        this.mSourceNetListner = new MgtvPlayerListener.OnSourceNetHandledListener() {
            public static final int REPORT_HTTP_DNS_INTERRUPT = -2;
            public static final int REPORT_HTTP_DNS_PV = 0;
            private boolean mIsPauseLoad = false;

            private void checkErrorCode(int i2, int i3, Bundle bundle) {
                if (bundle == null) {
                    return;
                }
                int i4 = bundle.getInt("retry_counter");
                MgtvMediaPlayer.this.mSourceRetryCount = i4;
                MgtvMediaPlayer.this.mSourceRetryCode = i3;
                if (MgtvMediaPlayer.this.isDnsCacheEnable() && i4 >= 1 && MgtvMediaPlayer.this.checkAndCleanDnsCache(i2, i3)) {
                    MgtvMediaPlayer.this.mHttpDnsEnable = true;
                }
            }

            private boolean didHDJSwitch(Bundle bundle) {
                if (MgtvMediaPlayer.this.mHDJSwitchUrl.length() <= 0 || bundle == null) {
                    return false;
                }
                bundle.putString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_URL_STRING, MgtvMediaPlayer.this.mHDJSwitchUrl);
                bundle.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_IS_LAST_INT, 1);
                MgtvMediaPlayer.this.mHDJSwitchUrl = "";
                return true;
            }

            private void didHostAddr(Bundle bundle) {
                if (bundle == null) {
                    return;
                }
                int i2 = bundle.getInt("host_error");
                int i3 = bundle.getInt("host_family");
                String string = bundle.getString("host_hostname");
                String string2 = bundle.getString("host_ip");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback didHostAddr error:" + i2 + ",family:" + i3 + ",hostname:" + string + ",ip_list:" + string2 + ",port:" + bundle.getInt("host_port") + ",hostDnsType:" + MgtvMediaPlayer.this.mLastDnsType = bundle.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_HOST_ARRR_DNS_TYPE_INT));
                MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                StringBuilder sb = new StringBuilder();
                sb.append(i2);
                sb.append("");
                mgtvMediaPlayer.mLastHostErr = sb.toString();
                MgtvMediaPlayer.this.mLastIpIndex = 0;
                try {
                    String[] strArrSplit = string2.split(ProcessInfo.SPLIT_NEW_VERSION);
                    MgtvMediaPlayer.this.mLastIpCount = 0;
                    if (strArrSplit != null) {
                        for (String str : strArrSplit) {
                            if (com.hunantv.media.player.a.e.e(str)) {
                                MgtvMediaPlayer.access$4208(MgtvMediaPlayer.this);
                            }
                        }
                    }
                    MgtvMediaPlayer.this.mLastIps = strArrSplit;
                    if (!MgtvMediaPlayer.this.mEnableJAVAIPCacheMap || i2 != 0 || MgtvMediaPlayer.this.mIPCacheMap.containsKey(string) || strArrSplit == null || strArrSplit.length <= 0) {
                        return;
                    }
                    IPList iPList = new IPList(string, strArrSplit);
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didHostAddr put:" + string + "-" + IPList.formatIPList(iPList.nUseList));
                    MgtvMediaPlayer.this.mIPCacheMap.put(string, iPList);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            private boolean didLiveOpen(Bundle bundle) {
                if (bundle == null) {
                    return false;
                }
                return onLiveWillOpen(bundle);
            }

            private boolean didLiveReopen(Bundle bundle) {
                boolean z = MgtvMediaPlayer.this.mLiveReopen;
                if (MgtvMediaPlayer.this.mLiveReopen) {
                    MgtvMediaPlayer.this.mLiveReopen = false;
                }
                return z;
            }

            private boolean didLoopOpen(Bundle bundle) {
                if (bundle == null) {
                    return false;
                }
                return onLiveWillOpen(bundle);
            }

            private boolean didLoopReopen(Bundle bundle) {
                if (MgtvMediaPlayer.this.mLoopPlayerSwitchUrl.length() <= 0) {
                    return false;
                }
                bundle.putString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_URL_STRING, MgtvMediaPlayer.this.mLoopPlayerSwitchUrl);
                MgtvMediaPlayer.this.mLoopPlayerSwitchUrl = "";
                return true;
            }

            private void didTcpOpen(Bundle bundle) {
                StringBuilder sb;
                IPList iPList;
                if (bundle == null) {
                    return;
                }
                int i2 = bundle.getInt("port");
                int i3 = bundle.getInt("family");
                int i4 = bundle.getInt("error");
                String string = bundle.getString("ip");
                String string2 = bundle.getString("tcp_hostname");
                long j = bundle.getLong("switch_key");
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "didTcpOpen switch_key:" + j);
                if (MgtvMediaPlayer.this.mMediaPlayer != null && MgtvMediaPlayer.this.mMediaPlayer.I() != null) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "didTcpOpen origin:" + MgtvMediaPlayer.this.mMediaPlayer.I());
                }
                String logTag = MgtvMediaPlayer.this.getLogTag();
                if (i4 != 0) {
                    sb = new StringBuilder();
                    sb.append("chodison didTcpOpen port:");
                    sb.append(i2);
                    sb.append(",family:");
                    sb.append(i3);
                    sb.append(",error_code:");
                    sb.append(i4);
                    sb.append(",ip:");
                    sb.append(string);
                    sb.append(",hostname:");
                    sb.append(string2);
                    DebugLog.e(logTag, sb.toString());
                } else {
                    sb = new StringBuilder();
                    sb.append("chodison didTcpOpen port:");
                    sb.append(i2);
                    sb.append(",family:");
                    sb.append(i3);
                    sb.append(",ip:");
                    sb.append(string);
                    sb.append(",hostname:");
                    sb.append(string2);
                    DebugLog.i(logTag, sb.toString());
                }
                MgtvMediaPlayer.this.mLastTcpErr = i4 + "";
                MgtvMediaPlayer.this.mLastTcpIP = string;
                MgtvMediaPlayer.access$2808(MgtvMediaPlayer.this);
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap) {
                    try {
                        if (!MgtvMediaPlayer.this.mIPCacheMap.containsKey(string2) || (iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(string2)) == null) {
                            return;
                        }
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didTcpOpen remove " + string + " from " + string2);
                        iPList.nUseList.remove(string);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didTcpOpen rest ip:" + IPList.formatIPList(iPList.nUseList));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }

            private boolean doNetHttpWillOpenFailed(int i2, int i3, Bundle bundle) {
                boolean z;
                List<String> list;
                String logTag;
                String str;
                checkErrorCode(i2, i3, bundle);
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle.getString("url"));
                int i4 = bundle.getInt("cur_dl_dize");
                if (isInitMp4(MgtvMediaPlayer.this.mErrorUrl)) {
                    MgtvMediaPlayer.this.mIsInitMp4Error = true;
                } else {
                    MgtvMediaPlayer.this.mIsInitMp4Error = false;
                }
                int i5 = bundle.getInt("retry_counter");
                if (UrlUtil.isFilePrefix(MgtvMediaPlayer.this.mErrorUrl) && !MgtvMediaPlayer.this.mCacheReplaceMap.isEmpty()) {
                    if (MgtvMediaPlayer.this.mOnWarningListener != null) {
                        MgtvMediaPlayer.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_TS_CACHE_SKIP, i3 + "", MgtvMediaPlayer.this.mErrorUrl, null);
                    }
                    String str2 = (String) MgtvMediaPlayer.this.mCacheReplaceMap.get(MgtvMediaPlayer.this.mErrorUrl);
                    if (str2 != null) {
                        MgtvMediaPlayer.access$7408(MgtvMediaPlayer.this);
                        MgtvMediaPlayer.this.mErrorUrl = str2;
                        bundle.putString("url", str2);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed replace local_url to " + str2);
                    }
                }
                bundle.getString("player_hash");
                int i6 = bundle.getInt("io_type");
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3));
                if (isENETUNREACHcode(i2, i3) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i2, i3))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3));
                    return true;
                }
                synchronized (MgtvMediaPlayer.this.mDnsNoNetWaiter) {
                    if (!isPlayerReset() && MgtvMediaPlayer.this.mEnableDnsNoNetStrategy && isDnsError(i2, i3)) {
                        boolean zC = com.hunantv.media.report.c.d.c(MgtvMediaPlayer.this.mContext);
                        if (!zC) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 1000 in");
                            try {
                                MgtvMediaPlayer.this.mDnsNoNetWaiter.wait(1000L);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str = "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 1000 out";
                            DebugLog.i(logTag, str);
                            z = true;
                        } else if (!zC || MgtvMediaPlayer.this.mLastIsNetworkAvailableNNS) {
                            z = false;
                        } else {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 3000 in");
                            try {
                                MgtvMediaPlayer.this.mDnsNoNetWaiter.wait(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str = "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 3000 out";
                            DebugLog.i(logTag, str);
                            z = true;
                        }
                        MgtvMediaPlayer.this.mLastIsNetworkAvailableNNS = zC;
                    } else {
                        z = false;
                    }
                }
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed mIsLive:" + MgtvMediaPlayer.this.mIsLive + ",mPlayerMode:" + MgtvMediaPlayer.this.mPlayerMode + ",mPrepared:" + MgtvMediaPlayer.this.mPrepared + ",mIsBuffering:" + MgtvMediaPlayer.this.mIsBuffering + ",mTsNotSkip:" + MgtvMediaPlayer.this.mTsNotSkip + ",mLoadMaxRetryTime:" + MgtvMediaPlayer.this.mLoadMaxRetryTime + ",mPlayStatus:" + MgtvMediaPlayer.this.mPlayStatus + ",lip:" + MgtvMediaPlayer.this.getLastIP());
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                if ((!MgtvMediaPlayer.this.mIsLive || MgtvMediaPlayer.this.isVod()) && MgtvMediaPlayer.this.mPlayerMode != 1) {
                    if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && (i3 == 100911 || i3 == 300021 || CodeUtil.isHttp4XX(i2, i3) || CodeUtil.isHttp5XX(i2, i3))) {
                        String hostName = UrlUtil.getHostName(UrlUtil.getValidHttpUrl(bundle.getString("url")));
                        if (!StringUtil.isEmpty(hostName) && !com.hunantv.media.player.a.e.a(hostName) && MgtvMediaPlayer.this.mIPCacheMap.containsKey(hostName)) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http contains host:" + hostName);
                            IPList iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(hostName);
                            if (iPList != null && iPList.checkTTL() && (list = iPList.nUseList) != null && list.size() > 0) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http check ttl success." + iPList);
                                if (i5 >= 6) {
                                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http return false.not retry");
                                    reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                                    return false;
                                }
                                bundle.putString("user_msg", MgtvMediaPlayer.USER_MSG_FLAG_USE_CACHE);
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http return true.try to goto ip choose");
                                reportHttpErrorPV(i5, MgtvMediaPlayer.this.mErrorUrl, i3, "ipcache");
                                return true;
                            }
                        }
                    }
                    reportHttpErrorPV(i5, MgtvMediaPlayer.this.mErrorUrl, i3, "default");
                    if (z) {
                        if (i5 < MgtvMediaPlayer.this.mDnsNoNetMaxRetry) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy retry cause by inDnsNetStrategy");
                            return true;
                        }
                        reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy skip retry cause by errorRetryCount >= mDnsNoNetMaxRetry");
                        return false;
                    }
                    if (!MgtvMediaPlayer.this.mPrepared) {
                        if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl)) {
                            if (i5 < 2) {
                                return true;
                            }
                            reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                            return false;
                        }
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && isInitMp4(MgtvMediaPlayer.this.mErrorUrl) && i4 > 0 && i5 < 10) {
                            return true;
                        }
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i5 < MgtvMediaPlayer.this.mLoadMaxRetryTime) {
                            return true;
                        }
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                        mgtvMediaPlayer.callbackTsSkip(mgtvMediaPlayer.mErrorUrl, i2, i3);
                        reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                        return false;
                    }
                    if (MgtvMediaPlayer.this.mTsNotSkip && MgtvMediaPlayer.this.isRendered()) {
                        return true;
                    }
                } else {
                    if (!MgtvMediaPlayer.this.mPrepared) {
                        if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl)) {
                            return i5 < 2;
                        }
                        MgtvMediaPlayer mgtvMediaPlayer2 = MgtvMediaPlayer.this;
                        mgtvMediaPlayer2.callbackTsSkip(mgtvMediaPlayer2.mErrorUrl, i2, i3);
                        return false;
                    }
                    if (MgtvMediaPlayer.this.mIsBuffering && MgtvMediaPlayer.this.isHLSPlayingUrl() && i5 >= 1) {
                        if (UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) {
                            MgtvMediaPlayer mgtvMediaPlayer3 = MgtvMediaPlayer.this;
                            mgtvMediaPlayer3.callbackTsSkip(mgtvMediaPlayer3.mErrorUrl, i2, i3);
                        }
                        return false;
                    }
                }
                if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i5 < 2) {
                    return true;
                }
                if (UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) {
                    MgtvMediaPlayer mgtvMediaPlayer4 = MgtvMediaPlayer.this;
                    mgtvMediaPlayer4.callbackTsSkip(mgtvMediaPlayer4.mErrorUrl, i2, i3);
                }
                reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                return false;
            }

            private boolean doNewHttpWillOpen(Bundle bundle) {
                int i2 = bundle.getInt("error_type");
                int i3 = bundle.getInt("error_code");
                bundle.getInt("retry_counter");
                int i4 = bundle.getInt("reset_iplist");
                MgtvMediaPlayer.this.mLastDlSize = bundle.getInt("cur_dl_dize");
                bundle.putString("user_msg", "init");
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && i4 == 1) {
                    MgtvMediaPlayer.this.clearIPCache();
                }
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doNewHttpWillOpen in error_what:" + i2 + ",error_extra:" + i3 + ",reset_iplist:" + i4 + ",mLastDlSize:" + MgtvMediaPlayer.this.mLastDlSize);
                bundle.putInt("reset_iplist", 0);
                if (i3 == 0) {
                    MgtvMediaPlayer.this.mIsInitMp4Error = false;
                    if (i3 == 0 && MgtvMediaPlayer.this.mCacheEable) {
                        replaceUrlFromCache(bundle);
                    }
                    return false;
                }
                boolean zDoNetHttpWillOpenFailed = doNetHttpWillOpenFailed(i2, i3, bundle);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed return " + zDoNetHttpWillOpenFailed + StringUtils.COMMA + i2 + "-" + i3 + "-" + MgtvMediaPlayer.this.mErrorUrl);
                return zDoNetHttpWillOpenFailed;
            }

            private boolean doWillGetEnv(Bundle bundle) {
                String string = bundle.getString("env_key");
                if (string == null || string.length() <= 0) {
                    return false;
                }
                bundle.putString("env_value", System.getenv(string));
                return true;
            }

            private boolean doWillHostAddr(Bundle bundle) {
                List<String> list;
                if (bundle == null) {
                    return false;
                }
                int i2 = bundle.getInt("addr_handle");
                String string = bundle.getString("player_hash");
                int i3 = bundle.getInt("retry_counter");
                String string2 = bundle.getString("user_msg");
                String string3 = bundle.getString("addr_hostname");
                long j = bundle.getLong("switch_key");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback doWillHostAddr is_handle:" + i2 + ",hash:" + string + ",count_int:" + i3 + ",user_msg:" + string2 + ",hostname:" + string3 + ",switch_key:" + j);
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && i2 != 1 && MgtvMediaPlayer.USER_MSG_FLAG_USE_CACHE.equals(string2) && !com.hunantv.media.player.a.e.a(string3) && MgtvMediaPlayer.this.mIPCacheMap.containsKey(string3)) {
                    try {
                        IPList iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(string3);
                        if (iPList != null && (list = iPList.nUseList) != null && list.size() > 0 && iPList.checkTTL()) {
                            String str = iPList.nUseList.get(0);
                            if (com.hunantv.media.player.a.e.e(str)) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache doWillHostAddr put chooseip:" + str);
                                String iPList2 = IPList.formatIPList(iPList.nUseList);
                                if (!StringUtil.isEmpty(iPList2)) {
                                    DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback ipcache doWillHostAddr put srcIPListStr:" + iPList2);
                                    bundle.putString("addr_hostname", iPList2);
                                }
                                bundle.putString("addr_ip", str);
                                bundle.putInt("addr_error", 0);
                                return false;
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                String string4 = bundle.getString("addr_uri");
                if (com.hunantv.media.player.a.e.d(string3)) {
                    notifyIpIsLAN(MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "0", "hostname_" + string3);
                }
                boolean zA = com.hunantv.media.player.a.e.a(string3);
                boolean zC = com.hunantv.media.report.c.d.c(MgtvMediaPlayer.this.mContext);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doWillHostAddr hostname:" + string3 + ",isIp:" + zA);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doWillHostAddr is_handle=" + i2 + ",mBackJavaDns=" + MgtvMediaPlayer.this.mBackJavaDns + ",isIp=" + zA + ",mForceHttpDns:" + MgtvMediaPlayer.this.mForceHttpDns);
                if ((MgtvMediaPlayer.this.mForceHttpDns && !zA) || ((MgtvMediaPlayer.this.mJavaDnsEnable && !zA) || (i2 == 1 && MgtvMediaPlayer.this.mBackJavaDns && !zA))) {
                    if (zC) {
                        MgtvMediaPlayer.this.mLastUri = string4;
                        domainResolve(string3, bundle, MgtvMediaPlayer.this.mForceHttpDns);
                    } else {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "skip domainResolve cause net not available");
                    }
                    return MgtvMediaPlayer.this.mPlayerReset;
                }
                if (i2 == 1 && zA) {
                    bundle.putString("addr_ip", string3);
                    bundle.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, 0);
                    bundle.putInt("addr_error", 0);
                }
                return false;
            }

            private boolean doWillHttpOpen(Bundle bundle) {
                if (bundle != null) {
                    MgtvMediaPlayer.this.mLastRequestUrl = UrlUtil.getValidUrl(bundle.getString("url"));
                }
                if (MgtvMediaPlayer.this.mReportParams != null && (MgtvMediaPlayer.this.mReportParams.getVideoType().equals(ReportParams.VideoType.AD_PRE) || MgtvMediaPlayer.this.mReportParams.getVideoType().equals(ReportParams.VideoType.AD_MID))) {
                    return onNormalHttpWillOpen(bundle);
                }
                if (bundle != null) {
                    MgtvMediaPlayer.this.mWillOpenUrl = bundle.getString("url");
                }
                return doNewHttpWillOpen(bundle);
            }

            private void domainResolve(String str, Bundle bundle, boolean z) {
                com.hunantv.media.player.a.a.b bVarD;
                int iE;
                if (str == null || bundle == null) {
                    DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "skip domainResolve hostname or args is null");
                    return;
                }
                com.hunantv.media.player.a.a aVar = new com.hunantv.media.player.a.a();
                aVar.a(new com.hunantv.media.player.a.a.InterfaceC0133a() {
                    @Override
                    public void onDnsFail(com.hunantv.media.player.a.a aVar2) {
                    }

                    @Override
                    public void onDnsFinish(com.hunantv.media.player.a.a aVar2) {
                        synchronized (MgtvMediaPlayer.this.mDnsLock) {
                            MgtvMediaPlayer.this.mDnsLock.notifyAll();
                        }
                    }

                    @Override
                    public void onDnsStart(com.hunantv.media.player.a.a aVar2) {
                    }

                    @Override
                    public void onDnsSuc(com.hunantv.media.player.a.a aVar2, String[] strArr) {
                    }
                });
                boolean zResolveStrategy = resolveStrategy(aVar, str, bundle, z, MgtvMediaPlayer.this.mHttpDnsNeedRetry);
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve use:" + zResolveStrategy);
                if (zResolveStrategy) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve use type:" + aVar.d());
                    notifyHttpDnsReport(aVar.d(), 2000, 0);
                }
                synchronized (MgtvMediaPlayer.this.mDnsLock) {
                    while (aVar.a() && !isJavaDnsInterrupt()) {
                        DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "domainResolve wait in");
                        try {
                            MgtvMediaPlayer.this.mDnsLock.wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "domainResolve wait out. resolving:" + aVar.a() + ",isJavaDnsInterrupt:" + isJavaDnsInterrupt());
                String[] strArrA = com.hunantv.media.player.a.e.a(aVar.b());
                aVar.c();
                String str2 = "costMs:" + aVar.f() + ";ips:" + com.hunantv.media.utils.StringUtil.formatArrayString(strArrA) + ";net:" + NetPlayConfig.getNetworkType() + ProcessInfo.SPLIT_NEW_VERSION;
                String iPList = IPList.formatIPList(strArrA);
                String str3 = (strArrA == null || strArrA.length <= 0) ? null : strArrA[0];
                int i2 = AnonymousClass28.$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType[aVar.d().ordinal()] != 1 ? 5 : 4;
                if (!isJavaDnsInterrupt() && com.hunantv.media.player.a.e.e(str3)) {
                    if (zResolveStrategy) {
                        updateCurrentDnsDsc(aVar.d());
                        if (com.hunantv.media.player.a.e.d(str3)) {
                            notifyHttpDnsReport(aVar.d(), 2001, 100, str2);
                        } else {
                            notifyHttpDnsReport(aVar.d(), 2001, 0, str2);
                        }
                    }
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve put iplist:" + iPList);
                    bundle.putString("addr_hostname", iPList);
                    if (com.hunantv.media.player.a.e.e(str3)) {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve put firstIP:" + str3);
                        bundle.putString("addr_ip", str3);
                    }
                    bundle.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, i2);
                    bundle.putInt("addr_error", 0);
                    return;
                }
                if (zResolveStrategy) {
                    if (isJavaDnsInterrupt() && aVar.e() == 0) {
                        bVarD = aVar.d();
                        iE = -2;
                    } else {
                        bVarD = aVar.d();
                        iE = aVar.e();
                    }
                    notifyHttpDnsReport(bVarD, 2002, iE, str2);
                    if (!isJavaDnsInterrupt()) {
                        int iA = aVar.a(199);
                        if (aVar.e() != 0) {
                            iA = aVar.e();
                        } else if (str3 != null && !com.hunantv.media.player.a.e.a(str3)) {
                            iA = aVar.a(107);
                        }
                        int i3 = -iA;
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), aVar.d() + "resolve putInt error:" + i3);
                        bundle.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, i2);
                        bundle.putInt("addr_error", i3);
                    }
                }
                MgtvMediaPlayer.this.mCurrentDnsDsc = "native";
            }

            private String findTsCachPath(String str, String[] strArr) {
                if (strArr == null) {
                    return null;
                }
                try {
                    String fileName = UrlUtil.getFileName(str);
                    for (String str2 : strArr) {
                        if (str2 != null && new File(str2).getName().equals(fileName)) {
                            return str2;
                        }
                    }
                } catch (Exception unused) {
                }
                return null;
            }

            private boolean isDnsError(int i2, int i3) {
                return i3 == 300600 || i2 == 400605 || MGTVP2pDirectMediaDataSource.isP2pDirectDnsError(i2, i3);
            }

            private boolean isENETUNREACHcode(int i2, int i3) {
                return i3 == 300005 || MGTVP2pDirectMediaDataSource.getShortErrorCode(i2, i3) == 101;
            }

            private boolean isInitMp4(String str) {
                return MgtvMediaPlayer.this.isHLSPlayingUrl() && UrlUtil.isSuffixUrl(str, Video.SUFFIX.SUFFIX_MP4);
            }

            private boolean isJavaDnsInterrupt() {
                return isPlayerReset();
            }

            private boolean isPlayerReset() {
                return MgtvMediaPlayer.this.mPlayerReset || (MgtvMediaPlayer.this.mPlayerMode == 2 && MgtvMediaPlayer.this.mLoopPlayerReset);
            }

            private void notifyHttpDnsReport(com.hunantv.media.player.a.a.b bVar, int i2, int i3) {
                notifyHttpDnsReport(bVar, i2, i3, "");
            }

            private void notifyIpIsLAN(String str, String str2) {
                if (MgtvMediaPlayer.this.mOnWarningListener == null || MgtvMediaPlayer.this.mReportParams == null || MgtvMediaPlayer.this.mReportParams.getVideoType() != ReportParams.VideoType.VOD) {
                    return;
                }
                if (!MgtvMediaPlayer.this.mReportedTSLAN) {
                    notifyMessage(1002, str, str2 + "_suffix_" + UrlUtil.getSuffix(MgtvMediaPlayer.this.mWillOpenUrl));
                }
                if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mWillOpenUrl)) {
                    return;
                }
                MgtvMediaPlayer.this.mReportedTSLAN = true;
            }

            private void notifyMessage(int i2, int i3, String str) {
                Message message = new Message();
                message.what = i2;
                message.arg1 = i3;
                message.obj = str;
                MgtvMediaPlayer.this.mNotifyHandler.sendMessage(message);
            }

            private boolean onLiveWillOpen(Bundle bundle) {
                int i2 = bundle.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERROR_WHAT_INT);
                int i3 = bundle.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERROR_EXTRA_INT);
                MgtvMediaPlayer.this.mLastRequestUrl = UrlUtil.getValidUrl(bundle.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_SRC_URL_STRING));
                if (i3 == 0) {
                    return false;
                }
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_SRC_URL_STRING));
                int i4 = bundle.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_COUNTER_INT);
                int i5 = bundle.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERR_IO_TYPE_INT);
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLiveWillOpen url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                if (isENETUNREACHcode(i2, i3) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i2, i3))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLiveWillOpen network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                    return true;
                }
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_LIVE_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                return !MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i4 < 2;
            }

            private boolean onLoopWillOpen(Bundle bundle) {
                int i2 = bundle.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERROR_WHAT_INT);
                int i3 = bundle.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERROR_EXTRA_INT);
                if (i3 == 0) {
                    return false;
                }
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_SRC_URL_STRING));
                int i4 = bundle.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_COUNTER_INT);
                int i5 = bundle.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERR_IO_TYPE_INT);
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLoopWillOpen url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                if (isENETUNREACHcode(i2, i3) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i2, i3))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLoopWillOpen network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                    return true;
                }
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_LOOP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                return !MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i4 < 2;
            }

            private boolean onNormalHttpWillOpen(Bundle bundle) {
                int i2 = bundle.getInt("error_type");
                int i3 = bundle.getInt("error_code");
                if (i3 == 0) {
                    return false;
                }
                checkErrorCode(i2, i3, bundle);
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle.getString("url"));
                bundle.getString("player_hash");
                bundle.getString("user_msg");
                int i4 = bundle.getInt("retry_counter");
                int i5 = bundle.getInt("io_type");
                long j = bundle.getLong("switch_key");
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl switch_key:" + j);
                if (isENETUNREACHcode(i2, i3) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i2, i3))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                    return true;
                }
                if (MgtvMediaPlayer.this.mIsLive) {
                    if ((!MgtvMediaPlayer.this.mIsBuffering || !MgtvMediaPlayer.this.isHLSPlayingUrl() || !UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) && MgtvMediaPlayer.this.mPrepared) {
                        UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl);
                        DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_HTTP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3)) {
                            return true;
                        }
                    }
                } else if (!MgtvMediaPlayer.this.mIsBuffering && MgtvMediaPlayer.this.mPrepared) {
                    DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_HTTP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                    if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i4 < 2) {
                        return true;
                    }
                }
                MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                mgtvMediaPlayer.callbackTsSkip(mgtvMediaPlayer.mErrorUrl, i2, i3);
                return false;
            }

            private boolean replaceUrlFromCache(Bundle bundle) {
                String string = bundle.getString("url");
                if (!UrlUtil.isFilePrefix(string) && !UrlUtil.isLocal(string)) {
                    String fileName = UrlUtil.getFileName(string);
                    if (StringUtil.isEmpty(fileName)) {
                        return false;
                    }
                    DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache try to find replace cache:" + string);
                    String strFindTsCachPath = null;
                    if (UrlUtil.isM3u8(string)) {
                        String str = MgtvMediaPlayer.this.mCacheM3u8Path;
                        String fileName2 = UrlUtil.getFileName(str);
                        if (!StringUtil.isEmpty(str) && !StringUtil.isEmpty(fileName2) && fileName2.equals(fileName)) {
                            strFindTsCachPath = str;
                        }
                    } else if (MgtvMediaPlayer.this.isHLSPlayingUrl() && UrlUtil.isSegment(string)) {
                        strFindTsCachPath = findTsCachPath(string, MgtvMediaPlayer.this.mCacheTsPaths);
                    }
                    if (FileUtil.exist(strFindTsCachPath)) {
                        String strAddLocalPrefix = UrlUtil.addLocalPrefix(strFindTsCachPath);
                        if (!StringUtil.isEmpty(strAddLocalPrefix)) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache from " + string);
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache to " + strAddLocalPrefix);
                            bundle.putString("url", strAddLocalPrefix);
                            if (UrlUtil.isM3u8(string)) {
                                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache put SRC_URL " + string);
                                bundle.putString("src_url", string);
                            }
                            MgtvMediaPlayer.this.mCacheReplaceMap.put(strAddLocalPrefix, string);
                            return true;
                        }
                    }
                }
                return false;
            }

            private void reportHttpErrorErr(int i2, String str) {
                if ((isInitMp4(str) || UrlUtil.isM3u8(str)) && MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.getVideoType() == ReportParams.VideoType.VOD && MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.NO_PROXY && MgtvMediaPlayer.this.mOnWarningListener != null) {
                    String strG = MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "00";
                    MgtvPlayerListener.OnWarningListener onWarningListener = MgtvMediaPlayer.this.mOnWarningListener;
                    String str2 = i2 + Consts.DOT + MgtvMediaPlayer.this.mCacheReportLerr;
                    StringBuilder sb = new StringBuilder();
                    sb.append("psuuid_");
                    sb.append(strG);
                    sb.append("_render_");
                    sb.append(MgtvMediaPlayer.this.isRendered() ? "1" : "0");
                    sb.append("_url_");
                    sb.append(str);
                    sb.append("_type_");
                    sb.append(MgtvMediaPlayer.this.mCacheReportTag);
                    onWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTP_ERROR_ERR, str2, sb.toString(), null);
                }
            }

            private void reportHttpErrorPV(int i2, String str, int i3, String str2) {
                if (i2 == 0) {
                    MgtvMediaPlayer.this.mCacheReportTag = "default";
                    MgtvMediaPlayer.this.mCacheReportLerr = 0;
                }
                if (i2 == 0) {
                    if ((isInitMp4(str) || UrlUtil.isM3u8(str)) && MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.getVideoType() == ReportParams.VideoType.VOD && MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.NO_PROXY && MgtvMediaPlayer.this.mOnWarningListener != null) {
                        String strG = MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "00";
                        MgtvMediaPlayer.this.mCacheReportTag = str2;
                        MgtvMediaPlayer.this.mCacheReportLerr = i3;
                        MgtvPlayerListener.OnWarningListener onWarningListener = MgtvMediaPlayer.this.mOnWarningListener;
                        String str3 = i3 + "";
                        StringBuilder sb = new StringBuilder();
                        sb.append("psuuid_");
                        sb.append(strG);
                        sb.append("_render_");
                        sb.append(MgtvMediaPlayer.this.isRendered() ? "1" : "0");
                        sb.append("_url_");
                        sb.append(str);
                        sb.append("_type_");
                        sb.append(str2);
                        onWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTP_ERROR_PV, str3, sb.toString(), null);
                    }
                }
            }

            private boolean resolveStrategy(@NonNull com.hunantv.media.player.a.a aVar, @NonNull String str, Bundle bundle) {
                return resolveStrategy(aVar, str, bundle, false, false);
            }

            private void updateCurrentDnsDsc(com.hunantv.media.player.a.a.b bVar) {
                MgtvMediaPlayer mgtvMediaPlayer;
                String str;
                int i2 = AnonymousClass28.$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType[bVar.ordinal()];
                if (i2 == 1) {
                    mgtvMediaPlayer = MgtvMediaPlayer.this;
                    str = MgtvMediaPlayer.DNS_JAVA_NORMAL;
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    mgtvMediaPlayer = MgtvMediaPlayer.this;
                    str = MgtvMediaPlayer.DNS_JAVA_HTTPDNS;
                }
                mgtvMediaPlayer.mCurrentDnsDsc = str;
            }

            private void updateIp(String str) {
                String logTag;
                StringBuilder sb;
                String str2;
                if (MgtvMediaPlayer.this.mMediaPlayer == null || (!(MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) || MgtvMediaPlayer.this.mMediaPlayer.ai() == null)) {
                    if (MgtvMediaPlayer.this.mMediaPlayer == null || !((MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) && MgtvMediaPlayer.this.mMediaPlayer.ai() == null)) {
                        MgtvMediaPlayer.this.mLastIP = str;
                    } else {
                        MgtvMediaPlayer.this.mLastIP = "0.0.0.1";
                    }
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    str2 = "didTcpOpen tcp_ip:";
                } else {
                    com.mgtv.a.d taskInfo = P2pMgr.getTaskInfo(MgtvMediaPlayer.this.mMediaPlayer.ai());
                    if (taskInfo != null) {
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                        mgtvMediaPlayer.mLastIP = mgtvMediaPlayer.mLastP2pCdnIP = taskInfo.b;
                    } else {
                        MgtvMediaPlayer.this.mLastIP = null;
                    }
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    str2 = "didTcpOpen p2p QueryTaskInfo cdnIp:";
                }
                sb.append(str2);
                sb.append(MgtvMediaPlayer.this.mLastIP);
                DebugLog.d(logTag, sb.toString());
            }

            private void willTcpOpen(Bundle bundle) {
                if (bundle == null) {
                    return;
                }
                String string = bundle.getString("tcp_hostname");
                String string2 = bundle.getString("ip");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback willTcpOpen tcp_hostname:" + string + ",tcp_ip:" + string2);
                MgtvMediaPlayer.this.mLastHostIP = string2;
                updateIp(string2);
                if (string2 == null || string2.length() <= 1 || !com.hunantv.media.player.a.e.d(string2)) {
                    return;
                }
                notifyIpIsLAN("1", MgtvMediaPlayer.this.getCurrentDnsDsc() + "_hostip_" + string2);
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override
            public boolean onSourceNetCtrl(int i2, Bundle bundle) {
                IP2pTask iP2pTaskAi;
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.onSourceNetCtrl 0x%5x", Integer.valueOf(i2));
                switch (i2) {
                    case 131073:
                        willTcpOpen(bundle);
                        return false;
                    case 131074:
                        didTcpOpen(bundle);
                        return false;
                    case 131075:
                        return doWillHttpOpen(bundle);
                    case 131077:
                        return didLiveOpen(bundle);
                    case 131078:
                        return doWillHostAddr(bundle);
                    case 131081:
                        return didLiveReopen(bundle);
                    case 131088:
                        return didLoopOpen(bundle);
                    case 131089:
                        return didLoopReopen(bundle);
                    case 131090:
                        return didHDJSwitch(bundle);
                    case 131104:
                        return doWillGetEnv(bundle);
                    case 131120:
                        if (MgtvMediaPlayer.this.mPreBufferState.isEnable() && MgtvMediaPlayer.this.mPreBufferState.getState() == 2) {
                            this.mIsPauseLoad = true;
                            return true;
                        }
                        if (MgtvMediaPlayer.this.isSourceSwitching() || MgtvMediaPlayer.this.mMediaPlayer == null || (!(MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) || (iP2pTaskAi = MgtvMediaPlayer.this.mMediaPlayer.ai()) == null || iP2pTaskAi.getStatus() == 0)) {
                            if (this.mIsPauseLoad) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "CTRL_WILL_CHECK_PAUSE_LOAD will return false. will resume load");
                            }
                            this.mIsPauseLoad = false;
                            return false;
                        }
                        if (!this.mIsPauseLoad) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "CTRL_WILL_CHECK_PAUSE_LOAD will return true. will pause load");
                        }
                        this.mIsPauseLoad = true;
                        return true;
                    case 131184:
                        synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                            try {
                                if (bundle == null) {
                                    return false;
                                }
                                if (bundle.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT) == 1) {
                                    if (MgtvMediaPlayer.this.mReporter != null) {
                                        MgtvMediaPlayer.this.mReporter.c();
                                    }
                                    int i3 = (int) bundle.getLong(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_RETRY_KEY_LONG);
                                    SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1 find:" + i3);
                                    if (smoothMediaSource != null) {
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1 , will retry use :" + smoothMediaSource.getUrl());
                                        bundle.putString("smooth_switch_url", smoothMediaSource.getUrl());
                                        if (smoothMediaSource.getReporter() != null) {
                                            smoothMediaSource.getReporter().a();
                                            if (MgtvMediaPlayer.this.mReportParams != null) {
                                                MgtvMediaPlayer.this.mReportParams.setPlaySessionId(smoothMediaSource.getReporter().g());
                                            }
                                        }
                                    } else {
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1, not found source");
                                    }
                                    bundle.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT, 0);
                                    return true;
                                }
                                int i4 = (int) bundle.getLong("smooth_switch_key");
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH switch_key:" + i4);
                                SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i4);
                                if (smoothMediaSourceMatchLastKeySource != null) {
                                    if (smoothMediaSourceMatchLastKeySource.isLastRetry() && MgtvMediaPlayer.this.mReportParams != null && (MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.ONLY_P2P || MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.P2P_DRM)) {
                                        SmoothMediaSource smoothMediaSource2 = new SmoothMediaSource(MgtvMediaPlayer.this.getPlayingOriginUrl());
                                        smoothMediaSource2.setReportParams(MgtvMediaPlayer.this.mReportParams);
                                        smoothMediaSource2.bind(MgtvMediaPlayer.this);
                                        smoothMediaSource2.setThrowErrorIfSwitchFailed(true);
                                        MgtvMediaPlayer.this.mSmoothSourcesRecord.put(Integer.valueOf(smoothMediaSource2.getKey()), smoothMediaSource2);
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth is last retry. will retry key:" + smoothMediaSource2.getKey());
                                        bundle.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT, 1);
                                        bundle.putLong(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_RETRY_KEY_LONG, (long) smoothMediaSource2.getKey());
                                    }
                                    if (!smoothMediaSourceMatchLastKeySource.isLastRetry()) {
                                        String string = bundle.getString("smooth_switch_url");
                                        bundle.putString("smooth_switch_url", string);
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH switch_url:" + string);
                                        if (!StringUtil.isEmpty(string)) {
                                            int iIndexOf = string.indexOf(",mgtvjsource:");
                                            String strSubstring = iIndexOf >= 0 ? string.substring(iIndexOf) : "";
                                            boolean zOnSwitchSmoothSourceWillUpdate = MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null ? MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceWillUpdate(smoothMediaSourceMatchLastKeySource) : false;
                                            if (smoothMediaSourceMatchLastKeySource.getReadType() != 2 && zOnSwitchSmoothSourceWillUpdate && !StringUtil.isEmpty(smoothMediaSourceMatchLastKeySource.useUpdateUrl())) {
                                                String str = smoothMediaSourceMatchLastKeySource.useUpdateUrl() + strSubstring;
                                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH will update url:" + str);
                                                bundle.putString("smooth_switch_url", str);
                                            }
                                        }
                                    }
                                }
                                SmoothMediaSource smoothMediaSource3 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i4));
                                if (smoothMediaSource3 != null && smoothMediaSource3.getReporter() != null) {
                                    smoothMediaSource3.getReporter().a();
                                    if (MgtvMediaPlayer.this.mReportParams != null) {
                                        MgtvMediaPlayer.this.mReportParams.setPlaySessionId(smoothMediaSource3.getReporter().g());
                                    }
                                }
                                return true;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    default:
                        return false;
                }
            }

            @Override
            public void onSourceNetEvent(int i2, Bundle bundle) {
                if (i2 != 78338) {
                    return;
                }
                didHostAddr(bundle);
            }

            private void notifyHttpDnsReport(com.hunantv.media.player.a.a.b bVar, int i2, int i3, String str) {
                if (bVar != com.hunantv.media.player.a.a.b.FREE_HTTP_DNS || MgtvMediaPlayer.this.mOnWarningListener == null) {
                    return;
                }
                notifyMessage(i2, i3, str);
            }

            private void notifyMessage(int i2, String str, String str2) {
                Message message = new Message();
                message.what = i2;
                Bundle bundle = new Bundle();
                bundle.putString(MainNotifyHandler.BUNDLE_STR_INFO1, str);
                bundle.putString(MainNotifyHandler.BUNDLE_STR_INFO2, str2);
                message.setData(bundle);
                MgtvMediaPlayer.this.mNotifyHandler.sendMessage(message);
            }

            private boolean resolveStrategy(@NonNull com.hunantv.media.player.a.a aVar, @NonNull String str, Bundle bundle, boolean z, boolean z2) {
                com.hunantv.media.player.a.a.b bVar;
                String logTag;
                String str2;
                if (z || (bundle != null && bundle.getInt("addr_handle") == 1 && MgtvMediaPlayer.this.mBackJavaDns)) {
                    aVar.b(1);
                    bVar = com.hunantv.media.player.a.a.b.FREE_HTTP_DNS;
                } else {
                    if (MgtvMediaPlayer.this.isDnsCacheEnable()) {
                        if (MgtvMediaPlayer.this.mHttpDnsEnable) {
                            String strB = !StringUtil.isEmpty(MgtvMediaPlayer.this.mLastUri) ? com.hunantv.media.player.a.f.b(MgtvMediaPlayer.this.mLastUri) : null;
                            if (strB != null && !strB.trim().equals("")) {
                                logTag = MgtvMediaPlayer.this.getLogTag();
                                str2 = "resolveStrategy cache valid";
                            }
                        } else {
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str2 = "resolveStrategy cache valid and httpdns not open";
                        }
                        DebugLog.d(logTag, str2);
                        return false;
                    }
                    bVar = MgtvMediaPlayer.this.mJavaDnsType;
                }
                aVar.a(str, bVar, z2);
                return true;
            }
        };
        this.mLogTagKey = "";
        this.mEnableReport = true;
        this.p2pLocker = new Object();
        this.mSeekStartMs = -1L;
        this.mHw2SwType = Hw2SwType.NONE;
        this.mPlaybackSpeed = 1.0f;
        this.mRecordMaxPlaySpeed = 1.0f;
        this.mFrameListener = new MgtvPlayerListener.OnFrameListener() {
            @Override
            public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                synchronized (MgtvMediaPlayer.this.ptsLocker) {
                    try {
                        WeakHandler weakHandler = MgtvMediaPlayer.this.ptsWeakHandler;
                        if (weakHandler != null) {
                            weakHandler.removeMessages(256);
                            Message message = new Message();
                            message.what = 256;
                            message.obj = frameClock;
                            MgtvMediaPlayer.this.ptsWeakHandler.sendMessage(message);
                        }
                        if (MgtvMediaPlayer.this.mOnFrameListener != null) {
                            MgtvMediaPlayer.this.mOnFrameListener.onVFrameClockCome(frameClock);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.mInnerFlowDataStatistic = new FlowDataStatistic();
        this.mEnableImgoVsr = false;
        this.mLoopSourceKey = new AtomicInteger(1);
        this.mSubtitleSources = new ArrayList();
        this.ptsHandlerThread = null;
        this.ptsWeakHandler = null;
        this.ptsListeners = new HashSet();
        this.ptsLocker = new Object();
        this.mSmoothSourceListener = new d.n() {
            int lastSwitchingKey = -1;

            @Override
            public void onSmoothSwitchSourceComplete(d dVar, int i2, int i3, String str) {
                SmoothMediaSource smoothMediaSource;
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    try {
                        DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceComplete (type:" + i3 + ",key:" + i2 + ",msg:" + str + ")");
                        String logTag = MgtvMediaPlayer.this.getLogTag();
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSmoothSwitchSourceComplete current: ");
                        sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                        DebugLog.i(logTag, sb.toString());
                        for (Map.Entry entry : MgtvMediaPlayer.this.mSmoothSourcesRecord.entrySet()) {
                            if (((Integer) entry.getKey()).intValue() < i2 && (smoothMediaSource = (SmoothMediaSource) entry.getValue()) != null && !smoothMediaSource.isReleased()) {
                                smoothMediaSource.release();
                            }
                        }
                        MgtvMediaPlayer.this.mSmoothUseP2pFailed = false;
                        if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                            MgtvMediaPlayer.this.mMediaPlayer.c(false);
                        }
                        SmoothMediaSource smoothMediaSource2 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i2));
                        if (smoothMediaSource2 != null) {
                            if (!StringUtil.isEmpty(smoothMediaSource2.getVfps())) {
                                MgtvMediaPlayer.this.mRecordVfps = Float.parseFloat(smoothMediaSource2.getVfps());
                            }
                            MgtvMediaPlayer.this.mLastVideoWidth = smoothMediaSource2.getVideoWidth();
                            MgtvMediaPlayer.this.mLastVideoHeight = smoothMediaSource2.getVideoHeight();
                            if (MgtvMediaPlayer.this.mReporter != null) {
                                MgtvMediaPlayer.this.mReporter.c();
                            }
                            MgtvMediaPlayer.this.mReporter = smoothMediaSource2.getReporter();
                            if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                                MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mReporter);
                                MgtvMediaPlayer.this.mMediaPlayer.a(smoothMediaSource2.getReadType(), smoothMediaSource2.getUrl(), smoothMediaSource2.getPlayingUrl());
                                MgtvMediaPlayer.this.mMediaPlayer.h(smoothMediaSource2.getEnableImgoAIQE());
                            }
                            if (MgtvMediaPlayer.this.mDataSourceInfo != null) {
                                MgtvMediaPlayer.this.mDataSourceInfo.setVideoFormat(smoothMediaSource2.getVideoFormat());
                                MgtvMediaPlayer.this.mDataSourceInfo.setAudioFormat(smoothMediaSource2.getAudioFormat());
                                MgtvMediaPlayer.this.mDataSourceInfo.setFileFormat(smoothMediaSource2.getFileFormat());
                            }
                            if (MgtvMediaPlayer.this.mReporter != null) {
                                MgtvMediaPlayer.this.mReportParams.deepCopy(smoothMediaSource2.getReportParams());
                                MgtvMediaPlayer.this.mReporter.a(MgtvMediaPlayer.this.mReportParams);
                                MgtvMediaPlayer.this.mReporter.b();
                            }
                            String keyFrameMapKey = MgtvMediaPlayer.this.getKeyFrameMapKey(smoothMediaSource2.getVid(), smoothMediaSource2.getDef());
                            if (MgtvMediaPlayer.this.mSmoothKeyFrameMap.containsKey(keyFrameMapKey)) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "find smoothKeyFrameKey :" + keyFrameMapKey + " set to player");
                                byte[] bArr = MgtvMediaPlayer.this.mSmoothKeyFrameMap.get(keyFrameMapKey);
                                if (KeyFrameInfoUtils.isKeyFrameDataValid(bArr, smoothMediaSource2.videoFileHash) == 0) {
                                    MgtvMediaPlayer.this.setKeyFrameInfoFileBuf(bArr);
                                }
                            }
                        }
                        SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i2);
                        if (smoothMediaSourceMatchLastKeySource == null) {
                            DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceComplete matchKeySource failed");
                            return;
                        }
                        if (smoothMediaSourceMatchLastKeySource.getSwitchMod() == 1) {
                            MgtvMediaPlayer.this.mMediaPlayer.d(true);
                        }
                        MgtvMediaPlayer.this.mSwitchedSmoothSource = smoothMediaSourceMatchLastKeySource;
                        MgtvMediaPlayer.this.mSourceSwitchingComplete = true;
                        MgtvMediaPlayer.this.mSourceSwitching = false;
                        if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                            MgtvMediaPlayer.this.mMainFlowReportProcessor = smoothMediaSourceMatchLastKeySource.getFlowReportProcessor();
                            MgtvMediaPlayer.this.mMediaPlayer.a(smoothMediaSourceMatchLastKeySource.getP2pTask());
                            MgtvMediaPlayer.this.mMediaPlayer.b(smoothMediaSourceMatchLastKeySource.getReadType());
                        }
                        MgtvMediaPlayer.this.mSmoothKeyFrameMap.clear();
                        if (MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null) {
                            MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceSuccess(smoothMediaSourceMatchLastKeySource);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override
            public void onSmoothSwitchSourceFailed(d dVar, int i2, int i3, String str) {
                String[] strArrSplit;
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed (type:" + i3 + ",key:" + i2 + ",msg:" + str + ")");
                    String logTag = MgtvMediaPlayer.this.getLogTag();
                    StringBuilder sb = new StringBuilder();
                    sb.append("onSmoothSwitchSourceFailed current: ");
                    sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                    DebugLog.e(logTag, sb.toString());
                    int i4 = MgtvMediaPlayer.WHAT_SMOOTHSOURCE_FAIL;
                    int i5 = -1;
                    try {
                        if (!StringUtil.isEmpty(str) && (strArrSplit = str.split("-")) != null && strArrSplit.length >= 2) {
                            i4 = NumericUtil.parseInt(strArrSplit[0]);
                            i5 = NumericUtil.parseInt(strArrSplit[1]);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i2));
                    if (smoothMediaSource != null) {
                        if (smoothMediaSource.getReporter() != null) {
                            smoothMediaSource.getReporter().a(i4, i5, "");
                        }
                        if (MgtvMediaPlayer.this.mReportParams != null) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed mReportParams:" + MgtvMediaPlayer.this.mReportParams.getProxyType() + "-" + MgtvMediaPlayer.this.mReportParams.getP2ps());
                        }
                        if (smoothMediaSource.getReportParams() != null) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed currentSource.getReportParams():" + smoothMediaSource.getReportParams().getProxyType() + "-" + smoothMediaSource.getReportParams().getP2ps());
                        }
                        if (MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.isP2p() && smoothMediaSource.getReportParams() != null && smoothMediaSource.getReportParams().isP2p()) {
                            MgtvMediaPlayer.this.mSmoothUseP2pFailed = true;
                            if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                                MgtvMediaPlayer.this.mMediaPlayer.c(true);
                            }
                        }
                        if (smoothMediaSource.isThrowErrorIfSwitchFailed()) {
                            MgtvMediaPlayer.this.mErrorListener.onError(MgtvMediaPlayer.WHAT_SMOOTHSOURCE_EX_ERROR, i5);
                            return;
                        }
                    }
                    if (i3 == 1) {
                        MgtvMediaPlayer.this.mErrorListener.onError(i4, i5);
                        return;
                    }
                    SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i2);
                    if (smoothMediaSourceMatchLastKeySource == null) {
                        DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed matchKeySource failed");
                    } else {
                        MgtvMediaPlayer.this.notifySwitchSmoothSourceFail(smoothMediaSourceMatchLastKeySource, i4, i5);
                    }
                }
            }

            @Override
            public void onSmoothSwitchSourceInfo(d dVar, int i2, int i3, String str) {
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    try {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceInfo (event:" + i3 + ",key:" + i2 + ",msg:" + str + ")");
                        String logTag = MgtvMediaPlayer.this.getLogTag();
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSmoothSwitchSourceInfo current: ");
                        sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                        DebugLog.i(logTag, sb.toString());
                        SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i2));
                        if (smoothMediaSource != null) {
                            if (i3 == 0) {
                                smoothMediaSource.s_event_0_timestamp = System.currentTimeMillis();
                            } else if (i3 == 11) {
                                smoothMediaSource.s_event_11_timestamp = System.currentTimeMillis();
                            } else if (i3 == 2) {
                                if (MgtvMediaPlayer.this.isFlowReportEnable) {
                                    smoothMediaSource.genFlowReporter();
                                }
                                smoothMediaSource.s_event_2_timestamp = System.currentTimeMillis();
                            } else if (i3 == 3) {
                                if (MgtvMediaPlayer.this.isFlowReportEnable && MgtvMediaPlayer.this.mMainFlowReportProcessor != null) {
                                    MgtvMediaPlayer.this.mMainFlowReportProcessor.stop();
                                }
                                for (Map.Entry entry : MgtvMediaPlayer.this.mSmoothSourcesRecord.entrySet()) {
                                    if (((Integer) entry.getKey()).intValue() < smoothMediaSource.getKey()) {
                                        SmoothMediaSource smoothMediaSource2 = (SmoothMediaSource) entry.getValue();
                                        if (MgtvMediaPlayer.this.isFlowReportEnable && smoothMediaSource2 != null && smoothMediaSource2.getFlowReportProcessor() != null) {
                                            smoothMediaSource2.getFlowReportProcessor().stop();
                                        }
                                    }
                                }
                                smoothMediaSource.s_event_3_timestamp = System.currentTimeMillis();
                            }
                        }
                        if (i3 != 3) {
                            if (MgtvMediaPlayer.this.matchLastKeySource(i2) == null) {
                                DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceInfo matchKeySource failed");
                                return;
                            } else {
                                if (i3 == 0) {
                                    MgtvMediaPlayer.this.mSourceSwitching = true;
                                }
                                return;
                            }
                        }
                        SmoothMediaSource smoothMediaSource3 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(this.lastSwitchingKey));
                        if (smoothMediaSource3 != null && smoothMediaSource3.getReporter() != null) {
                            smoothMediaSource3.getReporter().c();
                        }
                        this.lastSwitchingKey = i2;
                        SmoothMediaSource smoothMediaSource4 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i2));
                        if (smoothMediaSource4 != null && MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null) {
                            MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceInfo(smoothMediaSource4, i3);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.mSmoothSourcesRecord = new HashMap();
        this.mSwitchSmoothSourceLocker = new Object();
        this.mSmoothUseP2pFailed = false;
        this.mSmoothKeyFrameMap = Collections.synchronizedMap(new HashMap());
        this.isBackground = false;
        init(i, context);
    }

    public static int access$10508(MgtvMediaPlayer mgtvMediaPlayer) {
        int i = mgtvMediaPlayer.mAVSyncErrSum;
        mgtvMediaPlayer.mAVSyncErrSum = i + 1;
        return i;
    }

    public static int access$13208(MgtvMediaPlayer mgtvMediaPlayer) {
        int i = mgtvMediaPlayer.rfpsLowCounter;
        mgtvMediaPlayer.rfpsLowCounter = i + 1;
        return i;
    }

    public static int access$2808(MgtvMediaPlayer mgtvMediaPlayer) {
        int i = mgtvMediaPlayer.mLastIpIndex;
        mgtvMediaPlayer.mLastIpIndex = i + 1;
        return i;
    }

    public static int access$4208(MgtvMediaPlayer mgtvMediaPlayer) {
        int i = mgtvMediaPlayer.mLastIpCount;
        mgtvMediaPlayer.mLastIpCount = i + 1;
        return i;
    }

    public static int access$7408(MgtvMediaPlayer mgtvMediaPlayer) {
        int i = mgtvMediaPlayer.mTsCacheSkipNum;
        mgtvMediaPlayer.mTsCacheSkipNum = i + 1;
        return i;
    }

    private void addP2pListener() {
        synchronized (this.p2pLocker) {
            try {
                if (this.mP2pNotify == null) {
                    this.mP2pNotify = new com.mgtv.a.a.InterfaceC0173a() {
                        public void onNotify(int i, int i2, String str) {
                            HttpEndEntity httpEndEntity;
                            FlowReportProcessor flowReportProcessor;
                            if (i != 18120 || (httpEndEntity = (HttpEndEntity) new Gson().fromJson(str, HttpEndEntity.class)) == null || StringUtil.isEmpty(httpEndEntity.hash)) {
                                return;
                            }
                            IP2pTask iP2pTaskAi = MgtvMediaPlayer.this.mMediaPlayer.ai();
                            if (iP2pTaskAi == null || !httpEndEntity.hash.equalsIgnoreCase(iP2pTaskAi.getStrHash())) {
                                Iterator it = MgtvMediaPlayer.this.mSmoothSourcesRecord.entrySet().iterator();
                                FlowReportProcessor flowReportProcessor2 = null;
                                while (it.hasNext()) {
                                    SmoothMediaSource smoothMediaSource = (SmoothMediaSource) ((Map.Entry) it.next()).getValue();
                                    if (smoothMediaSource != null && smoothMediaSource.getP2pTask() != null && httpEndEntity.hash.equalsIgnoreCase(smoothMediaSource.getP2pTask().getStrHash())) {
                                        flowReportProcessor2 = smoothMediaSource.getFlowReportProcessor();
                                    }
                                }
                                flowReportProcessor = flowReportProcessor2;
                            } else {
                                flowReportProcessor = MgtvMediaPlayer.this.mMainFlowReportProcessor;
                            }
                            if (flowReportProcessor != null) {
                                flowReportProcessor.pushP2pFlowInfo(str);
                            }
                        }
                    };
                    com.mgtv.a.b.d().a(this.mP2pNotify);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void beforeThrowError(int i, int i2) {
        this.mLastErrorTypeCode = getErrorCodeType(isRendered(), i, i2);
        DebugLog.d(getLogTag(), "beforeThrowError mLastErrorTypeCode:" + this.mLastErrorTypeCode);
    }

    public boolean callBufferingTimeout(int i, int i2, String str) {
        IP2pTask iP2pTaskAi;
        beforeThrowError(i, i2);
        reportErrorWarning(i, i2);
        reportError(i, i2, str);
        this.mPlayStatus = PlayStatus.ERROR;
        if (this.mOnBufferingTimeoutListener == null) {
            return false;
        }
        h hVar = this.mMediaPlayer;
        if (hVar != null && hVar.l() == 2 && (iP2pTaskAi = this.mMediaPlayer.ai()) != null && iP2pTaskAi.getStatus() != 0) {
            i2 = MGTVMEDIA_ERROR_EXTRA_100907;
        }
        return this.mOnBufferingTimeoutListener.onBufferingTimeout(i, i2);
    }

    public void callbackRecordError(int i, int i2) {
        MgtvPlayerListener.OnRecordVideoListener onRecordVideoListener = this.mOnRecordVideoListener;
        if (onRecordVideoListener != null) {
            onRecordVideoListener.onRecordVideoErr(i, i2);
        }
    }

    public void callbackRecordInfo(int i, int i2) {
        MgtvPlayerListener.OnRecordVideoListener onRecordVideoListener = this.mOnRecordVideoListener;
        if (onRecordVideoListener != null) {
            onRecordVideoListener.onRecordVideoInfo(i, i2);
        }
    }

    public void callbackTsSkip(String str, int i, int i2) {
        String strHash;
        String str2;
        ReportParams reportParams = this.mReportParams;
        if (reportParams == null || reportParams.getVideoType() != ReportParams.VideoType.LOCAL) {
            this.mLastTsSkipErrExtra = i2;
            this.mLastTsSkipErrFileName = UrlUtil.getFileName(str);
            if (this.mOnWarningListener != null && isHLSPlayingUrl() && UrlUtil.isSegment(str)) {
                DebugLog.i(getLogTag(), "callbackTsSkip what:" + i + ",extra:" + i2);
                this.mOnWarningListener.onTsSkip(str, i, i2);
                if (this.mIsP2pTSSkipReport || !MGTVP2pDirectMediaDataSource.isNoTaskByHashError(i, i2)) {
                    return;
                }
                h hVar = this.mMediaPlayer;
                String str3 = "00";
                if (hVar != null) {
                    if (hVar.ai() != null) {
                        strHash = this.mMediaPlayer.ai().getStrHash();
                        str3 = P2pMgr.isTaskExistInt(this.mMediaPlayer.ai()) + "";
                        str2 = this.mMediaPlayer.ai().getStatus() + "";
                    } else {
                        strHash = "22";
                    }
                    this.mOnWarningListener.onWarning(MGTVMEDIA_WARNING_P2P_TS_SKIP, i2 + "", "hash_" + strHash + "_taskcode_" + str3 + "_taskStatus_" + str2 + "_errorUrl_" + str, null);
                    this.mIsP2pTSSkipReport = true;
                }
                strHash = "11";
                str2 = "00";
                this.mOnWarningListener.onWarning(MGTVMEDIA_WARNING_P2P_TS_SKIP, i2 + "", "hash_" + strHash + "_taskcode_" + str3 + "_taskStatus_" + str2 + "_errorUrl_" + str, null);
                this.mIsP2pTSSkipReport = true;
            }
        }
    }

    public boolean checkAndCleanDnsCache(int i, int i2) {
        if (i != 400602 && i != 100002 && i2 != 300600 && i2 != 100901 && i2 != 100910 && i2 != 100911 && i2 != 100701 && !CodeUtil.isHttp4XX(i, i2) && !CodeUtil.isHttp5XX(i, i2)) {
            return false;
        }
        String str = this.mLastUri;
        if (str == null || str.trim().equals("")) {
            return true;
        }
        com.hunantv.media.player.a.f.a(this.mLastUri);
        return true;
    }

    private boolean checkInvalidThread(int i, String str) {
        String str2;
        long j = this.mMainThreadID;
        if (j == -1 || j == Thread.currentThread().getId()) {
            return false;
        }
        if (this.mOnWarningListener != null) {
            if (this.mReportParams != null) {
                str2 = "videotype:" + this.mReportParams.getVideoType().ordinal();
            } else {
                str2 = "";
            }
            String str3 = str2 + str + " invalid thread. MainThread:" + this.mMainThreadID + ",CurrentThread:" + Thread.currentThread().getId();
            if (i == 0) {
                if (this.mIsGetPositionCallback) {
                    return true;
                }
                this.mIsGetPositionCallback = true;
                DebugLog.i(getLogTag(), "checkInvalidThread " + i + str3);
                return true;
            }
            this.mOnWarningListener.onWarning(MGTVMEDIA_WARNING_INVALID_THREAD, i + "", str3, null);
        }
        return true;
    }

    public void clearIPCache() {
        Map<String, IPList> map = this.mIPCacheMap;
        if (map == null || map.isEmpty()) {
            return;
        }
        DebugLog.i(getLogTag(), "callback ipcache clear");
        this.mIPCacheMap.clear();
    }

    public void doBufferTick(int i) {
        if (getCurDLSpeed() > this.mWeakBufferSpeedKB * 1024) {
            this.mWeakTimer = 0;
            doBufferTickNormalNet((i * this.mBufferTick.getTickTime()) / 1000);
        } else {
            int i2 = this.mWeakTimer + 1;
            this.mWeakTimer = i2;
            doBufferTickWeakNet((i2 * this.mBufferTick.getTickTime()) / 1000);
        }
    }

    private void doBufferTickNormalNet(int i) {
        int i2;
        DebugLog.d(getLogTag(), "doBufferTickNormalNet s:" + i);
        if (isRendered()) {
            if (i < this.mBufferTimeoutMs / 1000) {
                return;
            }
            DebugLog.d(getLogTag(), "doBufferTickNormalNet >= " + (this.mBufferTimeoutMs / 1000));
            i2 = MGTVMEDIA_ERROR_EXTRA_100903;
        } else {
            if (i < this.mPreBufferTimeoutMs / 1000) {
                return;
            }
            DebugLog.d(getLogTag(), "doBufferTickNormalNet >= " + (this.mPreBufferTimeoutMs / 1000));
            i2 = MGTVMEDIA_ERROR_EXTRA_100900;
        }
        callBufferingTimeout(MGTVMEDIA_ERROR_300004, i2, "");
    }

    private void doBufferTickWeakNet(int i) {
        String logTag;
        StringBuilder sb;
        int i2;
        DebugLog.d(getLogTag(), "doBufferTickWeakNet s:" + i);
        if (isRendered()) {
            if (i < this.mWeakBufferTimeoutMs / 1000) {
                return;
            }
            logTag = getLogTag();
            sb = new StringBuilder();
            sb.append("mWeakBufferTimeoutS >= ");
            i2 = this.mWeakBufferTimeoutMs;
        } else {
            if (i < this.mPreBufferTimeoutMs / 1000) {
                return;
            }
            logTag = getLogTag();
            sb = new StringBuilder();
            sb.append("doBufferTickWeakNet >= ");
            i2 = this.mPreBufferTimeoutMs;
        }
        sb.append(i2);
        DebugLog.d(logTag, sb.toString());
        callBufferingTimeout(MGTVMEDIA_ERROR_300004, MGTVMEDIA_ERROR_EXTRA_100906, "");
    }

    private void doReportPV() {
        com.hunantv.media.report.a aVar = this.mReporter;
        if (aVar != null) {
            aVar.a();
            ReportParams reportParams = this.mReportParams;
            if (reportParams != null) {
                reportParams.setPlaySessionId(this.mReporter.g());
            }
        }
    }

    private void doReportSLPV() {
        com.hunantv.media.report.a aVar = this.mReporterSL;
        if (aVar != null) {
            aVar.a();
            ReportParams reportParams = this.mReportParams;
            if (reportParams != null) {
                reportParams.setPlaySessionId(this.mReporter.g());
            }
        }
    }

    private void extractBundleData() {
        Bundle bundle = this.mBundle;
        if (bundle != null) {
            this.mLogTagKey = bundle.getString("BUNDLE_KEY_LOG_TAG_KEY");
            this.mImgoMediaPlayerAudioMode = this.mBundle.getBoolean("BUNDLE_KEY_BOOLEAN_AUDIO_MODE");
            this.mEnableReport = this.mBundle.getBoolean("BUNDLE_KEY_BOOLEAN_ENABLE_REPORT", true);
            DebugLog.i(getLogTag(), "extractBundleData bundle not null");
        }
        DebugLog.i(getLogTag(), "extractBundleData mLogTagKey:" + this.mLogTagKey + ",mImgoMediaPlayerAudioMode:" + this.mImgoMediaPlayerAudioMode + ",mEnableReport:" + this.mEnableReport);
    }

    public int getCurrentSmoothSourceKey() {
        if (this.mSwitchingSmoothSource != null) {
            return this.mSwitchingSmoothSource.getKey();
        }
        return -1;
    }

    private MgtvPlayerSupporter.CODECTYPE getCurrentSourceCodecType() {
        try {
            String codecName = getCodecName();
            DebugLog.i(getLogTag(), "getSourceCodecType:" + codecName);
            if (!StringUtil.isEmpty(codecName)) {
                String lowerCase = codecName.toLowerCase();
                if (!lowerCase.equals("hevc") && !lowerCase.equals(DataSourceInfo.H265)) {
                    if (!lowerCase.equals("avc") && !lowerCase.equals(DataSourceInfo.H264)) {
                        return MgtvPlayerSupporter.CODECTYPE.OTHER;
                    }
                    return MgtvPlayerSupporter.CODECTYPE.AVC;
                }
                return MgtvPlayerSupporter.CODECTYPE.HEVC;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return MgtvPlayerSupporter.CODECTYPE.OTHER;
    }

    public static String getErrorCodeType(boolean z, int i, int i2) {
        String str;
        StringBuilder sb;
        String str2;
        if (z) {
            str = "4.";
            if (isTimeoutError(i, i2)) {
                sb = new StringBuilder();
                sb.append(str);
                sb.append("103");
            } else {
                sb = new StringBuilder();
                sb.append(str);
                str2 = "106";
                sb.append(str2);
            }
        } else {
            str = "3.";
            if (isTimeoutError(i, i2)) {
                sb = new StringBuilder();
                sb.append(str);
                sb.append("103");
            } else {
                sb = new StringBuilder();
                sb.append(str);
                str2 = "105";
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    public static String getH264Decoder() {
        return BuildHelper.isApi16_JellyBeanOrLater() ? MediaCodecHelp.getH264Decoder() : "none";
    }

    public static String getH265Decoder(boolean z) {
        return BuildHelper.isApi16_JellyBeanOrLater() ? MediaCodecHelp.getH265Decoder(z) : "none";
    }

    public String getKeyFrameMapKey(String str, String str2) {
        return str + "_" + str2;
    }

    public String getLogTag() {
        return "[" + this.mLogTagKey + "][" + getClass().getSimpleName() + "]";
    }

    public String getNetSpeedStr() {
        return new DecimalFormat("0.00").format(getCurDLSpeed() / 1000.0f) + "KB/S";
    }

    public String getResolution() {
        return getVideoWidth() + "x" + getVideoHeight();
    }

    private void init(int i, Context context) {
        if (i < 0 || i > 2) {
            i = 2;
        }
        this.mMediaPlayer = new h(i, context, this.mBundle);
        this.mPlayerType = i;
        initData(context);
        initConfig();
        initReporter(context);
        initListener();
    }

    private void initConfig() {
        this.mMediaPlayer.a(this);
        this.mMediaPlayer.a(201507063, 2);
        if (this.mImgoMediaPlayerAudioMode) {
            this.mMediaPlayer.a(201507067, 1);
        } else {
            this.mMediaPlayer.a(201507067, 0);
        }
        this.mMediaPlayer.a(2016060201, 1);
        this.mMediaPlayer.a(2016060202, 1);
        setDataSourceType(this.mDataSourceType);
        setSkipLoopFilter(this.mSkipLoopFilterType);
        setAccurateSeekEnable(true);
        if (Constants.FOR_OTT) {
            setRenderType(RenderType.NATIVE_WINDOW);
            setNetAddrinfo(AddrinfoType.TYPE_ADDRINFO_DEFAULT, -1, true, com.hunantv.media.player.a.a.b.NORMAL, true);
            if (this.mImgoMediaPlayerAudioMode) {
                setForceKeyframeSeekEnable(false);
            } else {
                setForceKeyframeSeekEnable(true);
            }
        } else {
            setRenderType(NetPlayConfig.isNativeOpenglEnable() ? RenderType.OPENGL_ES : RenderType.NATIVE_WINDOW);
        }
        this.isExAudioEnable = NetPlayConfig.isWanosAudioEnable();
    }

    private void initData(Context context) {
        h hVar;
        this.mContext = context;
        PlayerReferenceObserver.add(hashCode() + "", "", getLogTag());
        String str = this.mLogTagKey;
        if (str != null && (hVar = this.mMediaPlayer) != null) {
            hVar.a(2018042501, str);
        }
        try {
            this.mMainThreadID = Thread.currentThread().getId();
        } catch (Exception e) {
            e.printStackTrace();
        }
        MgtvPlayerBroadcastObserver mgtvPlayerBroadcastObserver = new MgtvPlayerBroadcastObserver(context);
        this.mObserver = mgtvPlayerBroadcastObserver;
        mgtvPlayerBroadcastObserver.setOnNetworkChangeListener(new MgtvPlayerBroadcastObserver.OnNetworkChangeListener() {
            @Override
            public void onNetworkChanged(int i, int i2) {
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onNetworkChanged " + i + "->" + i2);
                if (!MgtvMediaPlayer.this.isSystemPlayer()) {
                    FFmpegApi.remove_all_dns_cache();
                }
                if (MgtvMediaPlayer.this.isPlaying()) {
                    MgtvMediaPlayer.this.mNetworkChangeWhilePlaying = true;
                }
                synchronized (MgtvMediaPlayer.this.mDnsNoNetWaiter) {
                    if (i2 != -1) {
                        try {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onNetworkChanged DnsNetStrategy mDnsNoNetWaiter notifyAll");
                            MgtvMediaPlayer.this.mDnsNoNetWaiter.notifyAll();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        });
        this.mObserver.setOnHeadsetListener(new MgtvPlayerBroadcastObserver.OnHeadsetListener() {
            @Override
            public void onHeadsetStateChange(int i) {
                MgtvMediaPlayer mgtvMediaPlayer;
                int i2;
                if (i == 0) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "耳机拔出");
                    if (NetPlayConfig.inHeadsetBlackList(NetPlayConfigHelper.getMod()) && AudioUtil.isWired(MgtvMediaPlayer.this.mContext)) {
                        return;
                    }
                    mgtvMediaPlayer = MgtvMediaPlayer.this;
                    i2 = 3;
                } else {
                    if (i != 1) {
                        return;
                    }
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "耳机插入");
                    mgtvMediaPlayer = MgtvMediaPlayer.this;
                    i2 = 4;
                }
                mgtvMediaPlayer.setWanosAudioEffectChoice(i2);
            }
        });
        this.mObserver.setOnBluetoothHeadsetListener(new MgtvPlayerBroadcastObserver.OnBluetoothHeadsetListener() {
            @Override
            public void onBluetoothHeadsetStateChange(int i) {
                MgtvMediaPlayer mgtvMediaPlayer;
                int i2;
                if (i == 0 || i == 2) {
                    if (i == 2) {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "BluetoothHeadset connected");
                        mgtvMediaPlayer = MgtvMediaPlayer.this;
                        i2 = 4;
                    } else {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "BluetoothHeadset disconnected");
                        mgtvMediaPlayer = MgtvMediaPlayer.this;
                        i2 = 3;
                    }
                    mgtvMediaPlayer.setWanosAudioEffectChoice(i2);
                    if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                        MgtvMediaPlayer.this.mMediaPlayer.ar();
                    }
                }
            }
        });
    }

    private void initListener() {
        h hVar = this.mMediaPlayer;
        if (hVar == null) {
            return;
        }
        hVar.a(new MgtvPlayerListener.OnPreparedListener() {
            @Override
            public void onPrepared() {
                if (MgtvMediaPlayer.this.mMainFlowReportProcessor != null) {
                    MgtvMediaPlayer.this.mMainFlowReportProcessor.setDuration(MgtvMediaPlayer.this.getDuration());
                }
                if (MgtvMediaPlayer.this.mIsInnerRetrying && MgtvMediaPlayer.this.mPrepared) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onPrepared mIsInnerRetrying:" + MgtvMediaPlayer.this.mIsInnerRetrying + ",mPrepared:" + MgtvMediaPlayer.this.mPrepared + ",isPlaying:" + MgtvMediaPlayer.this.isPlaying());
                    if (MgtvMediaPlayer.this.mPlayStatus == PlayStatus.PLAYING) {
                        MgtvMediaPlayer.this.start();
                        return;
                    }
                    return;
                }
                MgtvMediaPlayer.this.mPlayStatus = PlayStatus.PREPARED;
                MgtvMediaPlayer.this.mPrepared = true;
                if (MgtvMediaPlayer.this.mSubtitleController != null) {
                    MgtvMediaPlayer.this.mSubtitleController.b();
                }
                if (MgtvMediaPlayer.this.mOnPreparedListener != null) {
                    MgtvMediaPlayer.this.mOnPreparedListener.onPrepared();
                }
                if (MgtvMediaPlayer.this.mReportParams == null || MgtvMediaPlayer.this.mReportParams.getVideoType() != ReportParams.VideoType.VOD || !ImgoLibLoader.getInstance().isBackUpLoaderSuccess() || MgtvMediaPlayer.this.mOnWarningListener == null) {
                    return;
                }
                MgtvMediaPlayer.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_BACKUP_LOAD_SUCCESS, "0", ImgoLibLoader.getInstance().getBackUpLoaderSoMsg(), null);
                ImgoLibLoader.getInstance().setBackUpLoaderSuccess(false);
            }
        });
        this.mMediaPlayer.a(new MgtvPlayerListener.OnInfoListener() {
            @Override
            public boolean onInfo(int i, int i2) {
                MgtvMediaPlayer mgtvMediaPlayer;
                Hw2SwType hw2SwType;
                MgtvMediaPlayer mgtvMediaPlayer2;
                String str;
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            if (i2 == 503) {
                                mgtvMediaPlayer = MgtvMediaPlayer.this;
                                hw2SwType = Hw2SwType.HW_2_SW_RESET;
                            } else if (i2 == 501 || i2 == 504 || i2 == 505 || i2 == 506) {
                                mgtvMediaPlayer = MgtvMediaPlayer.this;
                                hw2SwType = Hw2SwType.HW_2_SW_DEFAULT;
                            } else {
                                mgtvMediaPlayer = MgtvMediaPlayer.this;
                                hw2SwType = Hw2SwType.HW_2_SW_OTHER;
                            }
                            mgtvMediaPlayer.mHw2SwType = hw2SwType;
                        } else if (i != 701) {
                            if (i != 702) {
                                switch (i) {
                                    case 801:
                                        MgtvMediaPlayer mgtvMediaPlayer3 = MgtvMediaPlayer.this;
                                        if (i2 == 1) {
                                            mgtvMediaPlayer3.mIsLive = true;
                                            if (MgtvMediaPlayer.this.mOnWarningListener != null && MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.getVideoType() == ReportParams.VideoType.VOD) {
                                                MgtvMediaPlayer.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_LIVE_IN_VOD, MgtvMediaPlayer.this.mReportParams != null ? MgtvMediaPlayer.this.mReportParams.getP2ps() + "" : "00", "psuuid_" + MgtvMediaPlayer.this.mReporter.g(), null);
                                            }
                                        } else {
                                            mgtvMediaPlayer3.mIsLive = false;
                                        }
                                        i = 801;
                                        break;
                                    case 810:
                                        DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "MEDIA_INFO_STREAM_INFO_HLS_SEG_SIZE_INFO:" + i2);
                                        break;
                                    case MgtvMediaPlayer.MEDIA_INFO_DATA_PROTOCOL:
                                        MgtvMediaPlayer.this.mDataSourceType = i2 != 1 ? DataSourceType.TYPE_DATASOUCE_DEFAULT : DataSourceType.TYPE_DATASOUCE_IMGO;
                                        break;
                                    case MgtvMediaPlayer.MEDIA_INFO_STREAM_TYPE:
                                        DebugLog.w(MgtvMediaPlayer.this.getLogTag(), "stream format type extra:" + i2);
                                        MgtvMediaPlayer.this.mStreamFormatType = i2;
                                        break;
                                    case MgtvMediaPlayer.MEDIA_INFO_PLAYBACK_STATE_CHANGED:
                                        if (i2 != d.t.MP_STATE_STARTED.ordinal()) {
                                            if (i2 == d.t.MP_STATE_PAUSED.ordinal() && MgtvMediaPlayer.this.mOnPauseListener != null) {
                                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback onPause threadId:" + Thread.currentThread().getId());
                                                MgtvMediaPlayer.this.mOnPauseListener.onPause();
                                            }
                                        } else if (MgtvMediaPlayer.this.mOnStartListener != null) {
                                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback onStart threadId:" + Thread.currentThread().getId());
                                            MgtvMediaPlayer.this.mOnStartListener.onStart();
                                        }
                                        break;
                                    case MgtvMediaPlayer.MEDIA_INFO_VIDEO_STREAM_TYPE:
                                        DebugLog.w(MgtvMediaPlayer.this.getLogTag(), "encode type extra:" + i2);
                                        MgtvMediaPlayer.this.mRealEncodeType = i2;
                                        break;
                                    case MgtvMediaPlayer.MEDIA_INFO_AV_SYNC_ERROR:
                                        if (MgtvMediaPlayer.this.mOnWarningListener != null) {
                                            MgtvMediaPlayer.this.updateFpsInfo();
                                            String str2 = i2 + "_" + (MgtvMediaPlayer.this.isHardware() ? 1 : 0) + "_" + MgtvMediaPlayer.this.getResolution() + "_" + MgtvMediaPlayer.this.getFpsMsg();
                                            if (!MgtvMediaPlayer.this.mAVSyncErrReported) {
                                                MgtvMediaPlayer.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_AV_SYNC_ERR, str2, "", null);
                                                MgtvMediaPlayer.this.mAVSyncStartTimestamp = System.currentTimeMillis();
                                                MgtvMediaPlayer.this.mAVSyncErrReported = true;
                                            }
                                            if (!MgtvMediaPlayer.this.mAVSyncErrSumReported) {
                                                MgtvMediaPlayer.access$10508(MgtvMediaPlayer.this);
                                                if (System.currentTimeMillis() - MgtvMediaPlayer.this.mAVSyncStartTimestamp >= 10000) {
                                                    MgtvMediaPlayer.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_AV_SYNC_SUM_ERR, str2 + "_" + MgtvMediaPlayer.this.mAVSyncErrSum, "", null);
                                                    MgtvMediaPlayer.this.mAVSyncErrSumReported = true;
                                                }
                                            }
                                        }
                                        break;
                                    case 2880:
                                        MgtvMediaPlayer.this.mpx = i2;
                                        return false;
                                    case 2890:
                                        DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "MEDIA_INFO_M3U8_EXIST_DATA:" + i2);
                                        MgtvMediaPlayer.this.imp4dh = i2;
                                        return false;
                                    case 10010:
                                        DebugLog.w(MgtvMediaPlayer.this.getLogTag(), "speed play error,will disable video render!");
                                        if (!MgtvMediaPlayer.this.mRenderDisableWarnSended && MgtvMediaPlayer.this.mOnWarningListener != null) {
                                            MgtvMediaPlayer.this.mRenderDisableWarnSended = true;
                                            MgtvMediaPlayer.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_RENDER_DISABLE, i2 + "", "", null);
                                        }
                                        break;
                                    case MgtvMediaPlayer.MEDIA_INFO_PREPARED_WATER_MARK_MS:
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "native prepared change water mark ms:" + i2);
                                        MgtvMediaPlayer.this.mVVbuft = i2 / 1000;
                                        return false;
                                    default:
                                        switch (i) {
                                            case MgtvMediaPlayer.MEDIA_INFO_AUDIO_IS_EXIST:
                                                DebugLog.w(MgtvMediaPlayer.this.getLogTag(), "audio stream is exist:" + i2);
                                                MgtvMediaPlayer.this.mIsAudioExist = i2;
                                                break;
                                            case MgtvMediaPlayer.MEDIA_INFO_LOAD_DATA_STATUS:
                                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "native load data is paused:" + i2);
                                                MgtvMediaPlayer.this.mIsNativePausedLoadData = i2;
                                                if (i2 == 1 && MgtvMediaPlayer.this.mOnLoadDataListener != null) {
                                                    MgtvMediaPlayer.this.mOnLoadDataListener.onAfterLoadDataPaused();
                                                }
                                                break;
                                            case MgtvMediaPlayer.MEDIA_INFO_WANOS_AUDIO_EFFECT:
                                                DebugLog.w(MgtvMediaPlayer.this.getLogTag(), "wanos audio effect valid:" + i2);
                                                MgtvMediaPlayer.this.mIsWanosAudioEffectValid = i2 == 1;
                                                break;
                                            case MgtvMediaPlayer.MEDIA_INFO_WANOS_AUDIO_DLOPEN:
                                                DebugLog.w(MgtvMediaPlayer.this.getLogTag(), "wanos dlopen status:" + i2);
                                                MgtvMediaPlayer.this.wadls = i2;
                                                break;
                                            case MgtvMediaPlayer.MEDIA_INFO_VSR_IS_OPEN:
                                                DebugLog.w(MgtvMediaPlayer.this.getLogTag(), "vsr is open:" + i2);
                                                MgtvMediaPlayer.this.mIsVsrOpen = i2;
                                                if (MgtvMediaPlayer.this.mIsVsrOpen == 2 && (str = (mgtvMediaPlayer2 = MgtvMediaPlayer.this).vsri) != null) {
                                                    mgtvMediaPlayer2.vsri = str.replace("1|", "2|");
                                                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "vsri change to value:" + MgtvMediaPlayer.this.vsri);
                                                }
                                                break;
                                        }
                                        break;
                                }
                            } else if (MgtvMediaPlayer.this.onBufferEnd(String.valueOf(i2))) {
                                return false;
                            }
                        } else if (MgtvMediaPlayer.this.onBufferStart(String.valueOf(i2))) {
                            return false;
                        }
                    } else if (MgtvMediaPlayer.this.mMediaPlayer.m() && MgtvMediaPlayer.this.onRenderStart()) {
                        return false;
                    }
                } else if (MgtvMediaPlayer.this.onRenderStart()) {
                    return false;
                }
                if (MgtvMediaPlayer.this.mOnInfoListener != null) {
                    return MgtvMediaPlayer.this.mOnInfoListener.onInfo(i, i2);
                }
                return false;
            }
        });
        this.mMediaPlayer.a(new MgtvPlayerListener.OnInfoStringListener() {
            /* JADX WARN: Code duplicated, block: B:93:0x0243  */
            @Override
            public boolean onInfo(int i, String str) {
                int i2;
                int i3;
                String logTag;
                StringBuilder sb;
                String str2;
                if (i == 8) {
                    if (StringUtil.isEmpty(str)) {
                        i3 = 0;
                        i2 = 0;
                    } else {
                        try {
                            String[] strArrSplit = str.split("-");
                            if (strArrSplit == null || strArrSplit.length != 2) {
                                i3 = 0;
                                i2 = 0;
                            } else {
                                i2 = NumericUtil.parseInt(strArrSplit[0]);
                                try {
                                    i3 = NumericUtil.parseInt(strArrSplit[1]);
                                } catch (Exception unused) {
                                    i3 = 0;
                                }
                            }
                        } catch (Exception unused2) {
                            i2 = 0;
                        }
                    }
                    if (MgtvMediaPlayer.this.mFlowDataStatistic != null) {
                        MgtvMediaPlayer.this.mFlowDataStatistic.addBytes(i2);
                    }
                    long j = i2;
                    MgtvMediaPlayer.this.mInnerFlowDataStatistic.addBytes(j);
                    if (MgtvMediaPlayer.this.mMainFlowReportProcessor != null) {
                        MgtvMediaPlayer.this.mMainFlowReportProcessor.getFlowStatistic().addBytes(j);
                    }
                    if (i3 / 1000 > MgtvMediaPlayer.this.mPreBufferMaxS && MgtvMediaPlayer.this.mPreBufferState.getState() == 1) {
                        MgtvMediaPlayer.this.mPreBufferState.changeState(1, 2);
                    }
                    return false;
                }
                if (i != 2860) {
                    if (i == 2870) {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "MEDIA_INFO_VIDEO_STREAM_CODEC_NAME:" + str);
                        if (!StringUtil.isEmpty(str)) {
                            try {
                                String[] strArrSplit2 = str.split("-");
                                if (strArrSplit2 != null && strArrSplit2.length >= 3) {
                                    MgtvMediaPlayer.this.mCodecName = strArrSplit2[1];
                                    MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                                    mgtvMediaPlayer.hdrInfo = strArrSplit2[2];
                                    DebugLog.i(mgtvMediaPlayer.getLogTag(), "MEDIA_INFO_VIDEO_STREAM_CODEC_NAME mCodecName:" + MgtvMediaPlayer.this.mCodecName + ",hdrInfo:" + MgtvMediaPlayer.this.hdrInfo);
                                }
                            } catch (Exception unused3) {
                            }
                        }
                    } else if (i != 2891) {
                        switch (i) {
                            case MgtvMediaPlayer.MEDIA_INFO_MEDIACODEC_COLOR_FORMAT:
                                MgtvMediaPlayer.this.mcColorFormat = str;
                                break;
                            case MgtvMediaPlayer.MEDIA_INFO_FILE_ENCODE_INFO:
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "MEDIA_INFO_FILE_ENCODE_INFO value:" + str);
                                if (!StringUtil.isEmpty(str) && str.length() > 0) {
                                    try {
                                        String[] strArrSplit3 = str.split(StringUtils.COMMA);
                                        if (strArrSplit3 != null && strArrSplit3.length >= 6) {
                                            int i4 = NumericUtil.parseInt(StringUtil.parseValue(strArrSplit3[0], StringUtils.PROCESS_POSTFIX_DELIMITER), -1);
                                            int i5 = NumericUtil.parseInt(StringUtil.parseValue(strArrSplit3[1], StringUtils.PROCESS_POSTFIX_DELIMITER), 0);
                                            String value = StringUtil.parseValue(strArrSplit3[2], StringUtils.PROCESS_POSTFIX_DELIMITER);
                                            int i6 = NumericUtil.parseInt(StringUtil.parseValue(strArrSplit3[3], StringUtils.PROCESS_POSTFIX_DELIMITER), 0);
                                            int i7 = NumericUtil.parseInt(StringUtil.parseValue(strArrSplit3[4], StringUtils.PROCESS_POSTFIX_DELIMITER), 0);
                                            int i8 = NumericUtil.parseInt(StringUtil.parseValue(strArrSplit3[5], StringUtils.PROCESS_POSTFIX_DELIMITER));
                                            FlowReportProcessor flowReportProcessor = MgtvMediaPlayer.this.isFlowReportEnable ? MgtvMediaPlayer.this.mMainFlowReportProcessor : null;
                                            SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i4));
                                            if (smoothMediaSource != null) {
                                                ReportParams reportParams = smoothMediaSource.getReportParams();
                                                if (reportParams != null) {
                                                    reportParams.setEncinfo(value);
                                                }
                                                if (MgtvMediaPlayer.this.isFlowReportEnable) {
                                                    if (smoothMediaSource.getFlowReportProcessor() == null) {
                                                        smoothMediaSource.genFlowReporter();
                                                    }
                                                    flowReportProcessor = smoothMediaSource.getFlowReportProcessor();
                                                }
                                            } else if (MgtvMediaPlayer.this.mReportParams != null) {
                                                MgtvMediaPlayer.this.mReportParams.setEncinfo(value);
                                            }
                                            FlowReportProcessor flowReportProcessor2 = flowReportProcessor;
                                            if (MgtvMediaPlayer.this.isFlowReportEnable && flowReportProcessor2 != null) {
                                                flowReportProcessor2.start(i5, i6, i7, value, i8, MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "00", MgtvMediaPlayer.this.mReportParams != null ? MgtvMediaPlayer.this.mReportParams.getVideoSession() : "00");
                                            }
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                }
                                break;
                            case MgtvMediaPlayer.MEDIA_INFO_WANOS_EFFECT_INFO:
                                MgtvMediaPlayer mgtvMediaPlayer2 = MgtvMediaPlayer.this;
                                mgtvMediaPlayer2.waev = str;
                                logTag = mgtvMediaPlayer2.getLogTag();
                                sb = new StringBuilder();
                                str2 = "MEDIA_INFO_WANOS_EFFECT_INFO value:";
                                sb.append(str2);
                                sb.append(str);
                                DebugLog.i(logTag, sb.toString());
                                break;
                            case MgtvMediaPlayer.MEDIA_INFO_VSR_RUN_INFO:
                                MgtvMediaPlayer mgtvMediaPlayer3 = MgtvMediaPlayer.this;
                                mgtvMediaPlayer3.vsri = str;
                                logTag = mgtvMediaPlayer3.getLogTag();
                                sb = new StringBuilder();
                                str2 = "MEDIA_INFO_VSR_RUN_INFO value:";
                                sb.append(str2);
                                sb.append(str);
                                DebugLog.i(logTag, sb.toString());
                                break;
                        }
                    } else {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "MEDIA_INFO_FILE_START_TIME value:" + str);
                        MgtvMediaPlayer.this.fstime = str;
                    }
                } else if (!StringUtil.isEmpty(str)) {
                    String[] strArrSplit4 = str.split("-");
                    if (strArrSplit4 == null || strArrSplit4.length < 2) {
                        MgtvMediaPlayer mgtvMediaPlayer4 = MgtvMediaPlayer.this;
                        mgtvMediaPlayer4.mSmt = -2L;
                        mgtvMediaPlayer4.mDlt = -2L;
                    } else {
                        MgtvMediaPlayer.this.mSmt = NumericUtil.parseLong(strArrSplit4[0], -1L);
                        MgtvMediaPlayer.this.mDlt = NumericUtil.parseLong(strArrSplit4[1], -1L);
                    }
                }
                if (MgtvMediaPlayer.this.mOnInfoStringListener != null) {
                    return MgtvMediaPlayer.this.mOnInfoStringListener.onInfo(i, str);
                }
                return false;
            }
        });
        this.mMediaPlayer.a(this.mErrorListener);
        this.mMediaPlayer.a(new MgtvPlayerListener.OnCompletionListener() {
            @Override
            public void onCompletion(int i, int i2) {
                if (MgtvMediaPlayer.this.mGifRecorder != null) {
                    MgtvMediaPlayer.this.mGifRecorder.interrupt(102);
                }
                MgtvMediaPlayer.this.stopTickers();
                if (MgtvMediaPlayer.this.mReporter != null) {
                    MgtvMediaPlayer.this.mReporter.a(i, i2);
                }
                if (i != 0 && MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.getVideoType() == ReportParams.VideoType.VOD && MgtvMediaPlayer.this.mOnWarningListener != null) {
                    MgtvMediaPlayer.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_ERROR_COMPLETION, i2 + "", "", null);
                }
                MgtvMediaPlayer.this.mPlayStatus = PlayStatus.COMPLETED;
                if (MgtvMediaPlayer.this.mOnCompletionListener != null) {
                    MgtvMediaPlayer.this.mOnCompletionListener.onCompletion(i, i2);
                }
            }
        });
        this.mMediaPlayer.a(new MgtvPlayerListener.OnSeekCompleteListener() {
            @Override
            public void onSeekComplete(int i, int i2) {
                if (MgtvMediaPlayer.this.mSeekStartMs > 0) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSeekComplete cost:" + (System.currentTimeMillis() - MgtvMediaPlayer.this.mSeekStartMs) + " ms");
                }
                com.hunantv.media.player.subtitle.e eVar = MgtvMediaPlayer.this.mTimeProvider;
                if (eVar != null) {
                    eVar.onSeekComplete(i, i2);
                }
                if (MgtvMediaPlayer.this.mReporter != null) {
                    MgtvMediaPlayer.this.mReporter.e();
                }
                if (MgtvMediaPlayer.this.mOnSeekCompleteListener != null) {
                    MgtvMediaPlayer.this.mOnSeekCompleteListener.onSeekComplete(i, i2);
                }
            }
        });
        this.mMediaPlayer.a(new MgtvPlayerListener.OnSwitchSourceListener() {
            @Override
            public void onSwitchSourceComplete(String str, int i, int i2) {
                if (MgtvMediaPlayer.this.mReporterSL != null) {
                    MgtvMediaPlayer.this.mReporterSL.b();
                    MgtvMediaPlayer.this.mSourceSwitchingComplete = true;
                    MgtvMediaPlayer.this.mSourceSwitching = false;
                    if (i == 0) {
                        if (MgtvMediaPlayer.this.mReportParams != null) {
                            MgtvMediaPlayer.this.mReportParams.setP2ps(MgtvMediaPlayer.this.mMediaPlayer.y());
                        }
                        if (MgtvMediaPlayer.this.mReporter != null) {
                            MgtvMediaPlayer.this.mReporter.c(MgtvMediaPlayer.this.mReporterSL.g());
                        }
                    }
                }
                if (MgtvMediaPlayer.this.mOnSwitchSourceListener != null) {
                    MgtvMediaPlayer.this.mOnSwitchSourceListener.onSwitchSourceComplete(str, i, i2);
                }
            }

            @Override
            public void onSwitchSourceFailed(String str, int i, int i2) {
                MgtvMediaPlayer.this.reportError(i, i2, "");
                if (MgtvMediaPlayer.this.mOnSwitchSourceListener != null) {
                    MgtvMediaPlayer.this.mOnSwitchSourceListener.onSwitchSourceFailed(str, i, i2);
                }
            }

            @Override
            public void onSwitchSourceInfo(String str, int i, int i2) {
                if (i == 2) {
                    MgtvMediaPlayer.this.mSwitchingPrepared = true;
                }
                if (MgtvMediaPlayer.this.mOnSwitchSourceListener != null) {
                    MgtvMediaPlayer.this.mOnSwitchSourceListener.onSwitchSourceInfo(str, i, i2);
                }
            }
        });
        this.mMediaPlayer.a(new MgtvPlayerListener.OnBufferingTimeoutListener() {
            @Override
            public boolean onBufferingTimeout(int i, int i2) {
                return MgtvMediaPlayer.this.callBufferingTimeout(i, i2, "");
            }
        });
        this.mMediaPlayer.a(this.mSourceNetListner);
        this.mMediaPlayer.a(new MgtvPlayerListener.OnPlayerEventListener() {
            @Override
            public void onInfo(int i, int i2) {
                String logTag;
                StringBuilder sb;
                String str;
                if (i == 3) {
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    str = "chodison player event oninfo MEDIA_INFO_VIDEO_RENDERING_START: t6:";
                } else if (i != 9) {
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    sb.append("chodison player event oninfo what: ");
                    sb.append(i);
                    str = ",extra:";
                } else {
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    str = "chodison player event oninfo MEDIA_INFO_VV_BUFFER_PREPARED: VVBT:";
                }
                sb.append(str);
                sb.append(i2);
                DebugLog.e(logTag, sb.toString());
                if (MgtvMediaPlayer.this.mOnPlayerEventListener != null) {
                    MgtvMediaPlayer.this.mOnPlayerEventListener.onInfo(i, i2);
                }
            }
        });
        this.mMediaPlayer.a(new MgtvPlayerListener.OnRecordVideoListener() {
            @Override
            public void onRecordVideoErr(int i, int i2) {
                MgtvMediaPlayer.this.callbackRecordError(i, i2);
            }

            @Override
            public void onRecordVideoInfo(int i, int i2) {
                MgtvMediaPlayer.this.callbackRecordInfo(i, i2);
            }
        });
        this.mMediaPlayer.a(this.mSmoothSourceListener);
        this.mMediaPlayer.a(new MgtvPlayerListener.OnGetFrameImageListener() {
            @Override
            public void onGetFrameImageInfo(int i, int i2, String str) {
                if (MgtvMediaPlayer.this.mOnGetFrameImageListener != null) {
                    MgtvMediaPlayer.this.mOnGetFrameImageListener.onGetFrameImageInfo(i, i2, str);
                }
            }

            @Override
            public void onGetFrameImageStatus(int i, int i2) {
                if (MgtvMediaPlayer.this.mOnGetFrameImageListener != null) {
                    MgtvMediaPlayer.this.mOnGetFrameImageListener.onGetFrameImageStatus(i, i2);
                }
            }
        });
        this.mMediaPlayer.a(new MgtvPlayerListener.OnSourceFlowHandledListener() {
            @Override
            public void onSourceFlowInfoEvent(int i, Bundle bundle) {
                if (i != 78593 || bundle == null) {
                    return;
                }
                String string = bundle.getString(MgtvPlayerListener.OnSourceFlowHandledListener.ARG_FLOW_SWITCH_URL_STRING);
                long j = bundle.getLong(MgtvPlayerListener.OnSourceFlowHandledListener.ARG_FLOW_SWITCH_KEY_LONG);
                long j2 = bundle.getLong(MgtvPlayerListener.OnSourceFlowHandledListener.ARG_FLOW_SEG_INDEX_LONG);
                long j3 = bundle.getLong(MgtvPlayerListener.OnSourceFlowHandledListener.ARG_FLOW_SEG_NUMS_LONG);
                long j4 = bundle.getLong(MgtvPlayerListener.OnSourceFlowHandledListener.ARG_FLOW_SEG_STARTTIME_LONG);
                long j5 = bundle.getLong(MgtvPlayerListener.OnSourceFlowHandledListener.ARG_FLOW_SEG_DUR_LONG);
                long j6 = bundle.getLong(MgtvPlayerListener.OnSourceFlowHandledListener.ARG_FLOW_CUR_DL_SIZE_LONG);
                long j7 = bundle.getLong(MgtvPlayerListener.OnSourceFlowHandledListener.ARG_FLOW_FILE_SIZE_LONG);
                int i2 = bundle.getInt(MgtvPlayerListener.OnSourceFlowHandledListener.ARG_FLOW_STREAM_TYPE_INT);
                int i3 = bundle.getInt(MgtvPlayerListener.OnSourceFlowHandledListener.ARG_FLOW_ERROR_TYPE_INT);
                int i4 = bundle.getInt(MgtvPlayerListener.OnSourceFlowHandledListener.ARG_FLOW_ERROR_CODE_INT);
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "onSourceFlowInfoEvent: flow_stream_type:%d, flow_error_type:%d, flow_error_code:%d, flow_switch_key:%d, flow_seg_index:%d, flow_seg_nums:%d, flow_seg_starttime:%d, flow_seg_dur:%d, flow_cur_dl_size:%d, flow_file_size:%d, flow_swithc_url:%s ", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3), Long.valueOf(j4), Long.valueOf(j5), Long.valueOf(j6), Long.valueOf(j7), string);
                FlowReportEntity flowReportEntity = new FlowReportEntity();
                flowReportEntity.url = string;
                flowReportEntity.file_size = j7;
                flowReportEntity.down_size = j6;
                flowReportEntity.error_type = i3;
                flowReportEntity.error_code = i4;
                flowReportEntity.file_dur = new DecimalFormat("0.000000").format(j5 / 1000000.0f) + "";
                flowReportEntity.file_seq = j2 + "";
                if (MgtvMediaPlayer.this.isFlowReportEnable) {
                    FlowReportProcessor flowReportProcessor = MgtvMediaPlayer.this.mMainFlowReportProcessor;
                    SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf((int) j));
                    if (smoothMediaSource != null) {
                        flowReportProcessor = smoothMediaSource.getFlowReportProcessor();
                    }
                    if (flowReportProcessor != null) {
                        flowReportProcessor.pushPlayerFlowInfo(flowReportEntity);
                    }
                }
            }
        });
        this.mPlayTicker.setHostLogTag(getLogTag());
        this.mPlayTicker.setCallback(new ExTicker.onTickListener() {
            @Override
            public void onTick(int i) {
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "PlayTicker onTick: " + i + ",fps:" + MgtvMediaPlayer.this.getFpsMsg());
                if (MgtvMediaPlayer.this.mReporter != null) {
                    MgtvMediaPlayer.this.mReporter.a(i);
                }
            }
        });
        this.mPlayTicker.setExCallback(new ExTicker.OnExTickListener() {
            @Override
            public void onPlayOrPause(boolean z) {
                if (MgtvMediaPlayer.this.mRenderView != null) {
                    IMgtvRenderView iMgtvRenderView = MgtvMediaPlayer.this.mRenderView;
                    if (z) {
                        iMgtvRenderView.startFps();
                    } else {
                        iMgtvRenderView.stopFps();
                    }
                }
            }

            @Override
            public void onTick(int i, int i2) {
                if (i2 > 2) {
                    MgtvMediaPlayer.this.updateFpsInfo();
                    if (MgtvMediaPlayer.this.isRfpsLow()) {
                        MgtvMediaPlayer.access$13208(MgtvMediaPlayer.this);
                    } else {
                        MgtvMediaPlayer.this.rfpsLowCounter = 0;
                    }
                    if (MgtvMediaPlayer.this.rfpsLowCounter <= 5 || MgtvMediaPlayer.this.mRenderView == null || MgtvMediaPlayer.this.rfpsLowFilterChanged) {
                        return;
                    }
                    DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "rfps too low change to normal filter");
                    MgtvMediaPlayer.this.rfpsLowFilterChanged = true;
                    MgtvMediaPlayer.this.mRenderView.setRenderFilter(0);
                }
            }
        });
        this.mBufferTick.setHostLogTag(getLogTag());
        this.mBufferTick.setCallback(new ExTicker.onTickListener() {
            @Override
            public void onTick(int i) {
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "BufferTick onTick: " + i + ",getDLSpeed:" + MgtvMediaPlayer.this.getNetSpeedStr());
                MgtvMediaPlayer.this.doBufferTick(i);
            }
        });
    }

    private void initReporter(Context context) {
        if (this.mEnableReport) {
            this.mReporter = new com.hunantv.media.report.a(context, this);
            this.mReporterSL = new com.hunantv.media.report.a(context, this, true);
            h hVar = this.mMediaPlayer;
            if (hVar != null) {
                hVar.a(this.mReporter);
            }
            h hVar2 = this.mMediaPlayer;
            if (hVar2 != null) {
                hVar2.b(this.mReporterSL);
            }
        }
    }

    public boolean isDnsCacheEnable() {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            return hVar.ab();
        }
        return false;
    }

    private boolean isInPlaybackState() {
        PlayStatus playStatus;
        return (this.mMediaPlayer == null || (playStatus = this.mPlayStatus) == PlayStatus.ERROR || playStatus == PlayStatus.IDLE || playStatus == PlayStatus.PREPARING) ? false : true;
    }

    public boolean isSkipRetryCode(int i, int i2) {
        return CodeUtil.isHttp4XX(i, i2) || CodeUtil.isHttp5XX(i, i2) || !(isDnsCacheEnable() || this.mBackJavaDns || i2 != 100701);
    }

    public static boolean isTimeoutError(int i, int i2) {
        return com.hunantv.media.report.a.c(i, i2);
    }

    private int legalPosition(int i) {
        if (i < 0) {
            return 0;
        }
        return (getDuration() <= 0 || i <= getDuration()) ? i : getDuration();
    }

    public SmoothMediaSource matchLastKeySource(int i) {
        if (this.mSwitchingSmoothSource == null || this.mSwitchingSmoothSource.getKey() != i) {
            return null;
        }
        return this.mSwitchingSmoothSource;
    }

    private boolean matchSwitchedSmoothSource(String str) {
        return (this.mSwitchedSmoothSource == null || StringUtil.isEmpty(this.mSwitchedSmoothSource.getVid()) || StringUtil.isEmpty(this.mSwitchedSmoothSource.getDef()) || !str.equalsIgnoreCase(getKeyFrameMapKey(this.mSwitchedSmoothSource.getVid(), this.mSwitchedSmoothSource.getDef()))) ? false : true;
    }

    public void notifySwitchSmoothSourceFail(SmoothMediaSource smoothMediaSource, int i, int i2) {
        DebugLog.e(getLogTag(), "notifySwitchSmoothSourceFail " + i + "-" + i2);
        MgtvPlayerListener.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener = this.mOnSwitchSmoothSourceListener;
        if (onSwitchSmoothSourceListener != null) {
            onSwitchSmoothSourceListener.onSwitchSmoothSourceFail(smoothMediaSource, WHAT_SMOOTHSOURCE_FAIL, i2);
        }
    }

    public boolean onBufferEnd(String str) {
        DebugLog.i(getLogTag(), "onBufferEnd");
        com.hunantv.media.player.subtitle.e eVar = this.mTimeProvider;
        if (eVar != null) {
            eVar.b(false);
        }
        GifRecorder gifRecorder = this.mGifRecorder;
        if (gifRecorder != null) {
            gifRecorder.resume();
        }
        this.mWeakTimer = 0;
        this.mIsBuffering = false;
        this.mBufferTick.stop();
        if (isPlaying()) {
            this.mPlayTicker.resume();
        }
        com.hunantv.media.report.a aVar = this.mReporter;
        if (aVar != null) {
            aVar.b(str);
        }
        return false;
    }

    public boolean onBufferStart(String str) {
        DebugLog.i(getLogTag(), "onBufferStart");
        com.hunantv.media.player.subtitle.e eVar = this.mTimeProvider;
        if (eVar != null) {
            eVar.b(true);
        }
        GifRecorder gifRecorder = this.mGifRecorder;
        if (gifRecorder != null) {
            gifRecorder.pause();
        }
        this.mIsBuffering = true;
        this.mPlayTicker.pause();
        if (!isLoadDataPaused() && !UrlUtil.isLocal(getPlayingUrl()) && !StringUtil.isEmpty(str) && !str.equals(String.valueOf(8))) {
            this.mBufferTick.start();
        }
        com.hunantv.media.report.a aVar = this.mReporter;
        if (aVar == null) {
            return false;
        }
        aVar.a(str);
        return false;
    }

    public boolean onRenderStart() {
        MgtvPlayerListener.OnWarningListener onWarningListener;
        if (isRendered()) {
            if (this.mIsInnerRetrying && (onWarningListener = this.mOnWarningListener) != null) {
                onWarningListener.onWarning(MGTVMEDIA_WARNING_INNER_RETRY_RENDER_START, getRetryLastErrorCode() + "", "", null);
            }
            return true;
        }
        this.mIsVideoRendered = true;
        this.mPlayTicker.start();
        com.hunantv.media.report.a aVar = this.mReporter;
        if (aVar == null) {
            return false;
        }
        aVar.b();
        return false;
    }

    private void preLoopSeek(boolean z) {
        float playbackSpeed;
        if (this.mMediaPlayer.l() == 1 || this.mMediaPlayer.l() == 2) {
            if (z) {
                playbackSpeed = 30.0f;
            } else {
                playbackSpeed = getPlaybackSpeed();
                if (playbackSpeed <= 0.0f) {
                    playbackSpeed = 1.0f;
                }
            }
            P2pMgr.setPlaySpeed(playbackSpeed);
        }
    }

    private void preSeekTo(int i, boolean z) {
        this.mSeekStartMs = System.currentTimeMillis();
        if (this.mMediaPlayer.l() == 1 || this.mMediaPlayer.l() == 2) {
            P2pMgr.setPlayingTimepoint(this.mMediaPlayer.ai(), i, true);
        }
        if (this.mMediaPlayer.aq()) {
            return;
        }
        this.mpx = z ? 10 : 9;
    }

    private void printErrorMd5() {
        ReportParams reportParams = this.mReportParams;
        if (reportParams == null || !ReportParams.VideoType.LOCAL.equals(reportParams.getVideoType())) {
            return;
        }
        DebugLog.e(getLogTag(), "离线播放URL:" + getPlayingUrl());
        DebugLog.e(getLogTag(), "离线播放md5:[status-remote][" + this.mReportParams.getLocalMd5() + "-" + this.mReportParams.getRemoteMd5() + "]");
    }

    private void removeP2pListener() {
        synchronized (this.p2pLocker) {
            try {
                if (this.mP2pNotify != null) {
                    com.mgtv.a.b.d().b(this.mP2pNotify);
                    this.mP2pNotify = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void reportError(int i, int i2, String str) {
        if (this.mSourceSwitching) {
            com.hunantv.media.report.a aVar = this.mReporterSL;
            if (aVar != null) {
                aVar.a(i, i2, str);
            }
            this.mSourceSwitching = false;
            return;
        }
        printErrorMd5();
        com.hunantv.media.report.a aVar2 = this.mReporter;
        if (aVar2 != null) {
            aVar2.a(i, i2, str);
        }
    }

    public void reportErrorWarning(int i, int i2) {
        String[] strArrSplit;
        String str;
        String str2;
        String str3;
        ReportParams reportParams;
        MgtvPlayerListener.OnWarningListener onWarningListener;
        String str4;
        String str5;
        int i3;
        if (this.mOnWarningListener == null) {
            return;
        }
        if (!isRendered() && (reportParams = this.mReportParams) != null) {
            long routerTimeStamp = reportParams.getRouterTimeStamp();
            if (routerTimeStamp > 0) {
                long j = this.mPrepareAsyncTimeStampMs;
                if (j > 0) {
                    int i4 = (int) ((j - routerTimeStamp) / 1000);
                    String strG = this.mReporter.g();
                    int i5 = i4 / 1800;
                    if (CodeUtil.isHttp410(i, i2)) {
                        onWarningListener = this.mOnWarningListener;
                        str4 = strG + Consts.DOT + i5;
                        str5 = "_prepareasync_" + this.mPrepareAsyncTimeStampMs + "_routerTimeMs_" + routerTimeStamp + "_duration_" + i4;
                        i3 = MGTVMEDIA_WARNING_410_PRE_PLAY;
                    } else if (CodeUtil.isHttp403(i, i2)) {
                        onWarningListener = this.mOnWarningListener;
                        str4 = strG + Consts.DOT + i5;
                        str5 = "_prepareasync_" + this.mPrepareAsyncTimeStampMs + "_routerTimeMs_" + routerTimeStamp + "_duration_" + i4;
                        i3 = MGTVMEDIA_WARNING_403_PRE_PLAY;
                    }
                    onWarningListener.onWarning(i3, str4, str5, null);
                }
            }
        }
        if (i2 == 300301) {
            this.mOnWarningListener.onWarning(MGTVMEDIA_WARNING_EXTRA_300301, this.mReporter.g(), "", null);
        }
        if (i2 == 101905 || i2 == 100400 || i2 == 100401) {
            h hVar = this.mMediaPlayer;
            String strQ = hVar != null ? hVar.q() : "";
            String str6 = (strQ == null || (strArrSplit = strQ.split("/")) == null || strArrSplit.length <= 0) ? "" : strArrSplit[0];
            this.mOnWarningListener.onWarning(MGTVMEDIA_WARNING_TS_ERROR, i2 + Consts.DOT + str6, strQ, null);
        }
        ReportParams reportParams2 = this.mReportParams;
        if (reportParams2 != null && reportParams2.getVideoType() == ReportParams.VideoType.LOCAL && i2 == 100201) {
            this.mOnWarningListener.onWarning(MGTVMEDIA_WARNING_LOCAL_100201, "0", "url:" + getPlayingUrl(), null);
        }
        String hostName = UrlUtil.getHostName(getPlayingOriginUrl());
        if (this.mReportParams != null) {
            str = this.mReportParams.getP2ps() + "";
            str3 = this.mReportParams.getRetryIndex() + "";
            str2 = this.mReportParams.getProxyType().ordinal() + "";
        } else {
            str = "00";
            str2 = str;
            str3 = str2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("psuuid_");
        sb.append(this.mReporter.g());
        sb.append("_playsta_");
        sb.append(this.mPlayStatus);
        sb.append("_p2ps_");
        sb.append(str);
        sb.append("_rdst_");
        sb.append(getReadDataSourceType());
        sb.append("_p2psta_");
        sb.append(this.mMediaPlayer.ai() != null ? Integer.valueOf(this.mMediaPlayer.ai().getStatus()) : "00");
        sb.append("_pdsn_");
        sb.append(this.mIsNativePausedLoadData);
        sb.append("_pdsj_");
        sb.append(isLoadDataPaused());
        sb.append("_live_");
        sb.append(this.mIsLive);
        sb.append("_dsty_");
        sb.append(this.mDataSourceType);
        sb.append("_retry_");
        sb.append(str3);
        sb.append("_sr_");
        sb.append(this.mSourceRetryCount);
        sb.append("_err_");
        sb.append(UrlUtil.getFileName(this.mErrorUrl));
        sb.append("_last_");
        sb.append(UrlUtil.getFileName(this.mLastRequestUrl));
        sb.append("_cip_");
        sb.append(getLastIP());
        sb.append("_pcip_");
        sb.append(this.mLastP2pCdnIP);
        sb.append("_proxy_");
        sb.append(str2);
        sb.append("_v_");
        sb.append(PlayerConfig.getLibFullVersion());
        sb.append("_herr_");
        sb.append(this.mLastHostErr);
        sb.append("_terr_");
        sb.append(this.mLastTcpErr);
        sb.append("_hip_");
        sb.append(this.mLastHostIP);
        sb.append("_tip_");
        sb.append(this.mLastTcpIP);
        sb.append("_lhost_");
        sb.append(hostName);
        sb.append("_ipn_");
        sb.append(getLastIPCount());
        sb.append("_");
        sb.append(getLastIpArrayStr());
        sb.append("_ipt_");
        sb.append(getLastDnsType());
        String string = sb.toString();
        this.mOnWarningListener.onWarning(MGTVMEDIA_WARNING_TARGET_ERROR, i + "_" + i2, string, null);
    }

    private void resetData() {
        this.isExAudioEnable = NetPlayConfig.isWanosAudioEnable();
        this.waev = null;
        this.mSeekStartMs = -1L;
        this.imp4dh = 0;
        this.mpx = 0;
        this.fstime = "n";
        this.mcColorFormat = "n_n";
        this.mLastTsSkipErrExtra = 0;
        this.mLastTsSkipErrFileName = null;
        this.mLastIsNetworkAvailableNNS = true;
        if (isRfpsLow() && this.rfpsLowFilterChanged) {
            DebugLog.e(getLogTag(), "resetData rfps too low, close opengl next time");
            j.a = true;
        }
        GifRecorder gifRecorder = this.mGifRecorder;
        if (gifRecorder != null) {
            gifRecorder.reset();
        }
        removeSubtitleSources();
        this.mIsGetPositionCallback = false;
        this.mSourceSwitching = false;
        this.mSourceSwitchingComplete = false;
        this.mPrepared = false;
        this.mErrorUrl = "";
        this.mLastRequestUrl = "";
        this.mIsBuffering = false;
        this.mIsLive = false;
        this.mWeakTimer = 0;
        this.mCacheM3u8Path = null;
        this.mCacheTsPaths = null;
        this.mCacheReplaceMap.clear();
        this.mTsCacheSkipNum = 0;
        this.mIsInnerRetrying = false;
        this.mRetryLastErrorCode = 0;
        this.mRenderDisableWarnSended = false;
        this.mRealEncodeType = -1;
        setPlayerReset(true);
        synchronized (this.mDnsLock) {
            this.mDnsLock.notifyAll();
        }
        this.mHttpDnsEnable = false;
        this.mLastUri = null;
        this.mCurrentDnsDsc = "native";
        this.mLastIP = null;
        this.mLastP2pCdnIP = null;
        this.mLastHostIP = null;
        this.mLastTcpIP = null;
        this.mLastHostErr = "00";
        this.mLastTcpErr = "00";
        this.mLastIpCount = 0;
        this.mLastIpIndex = -1;
        this.mLastDnsType = -1;
        this.mSourceRetryCount = 0;
        this.mSourceRetryCode = 0;
        this.mAVSyncErrReported = false;
        this.mAVSyncErrSumReported = false;
        this.mAVSyncErrSum = 0;
        this.mPrepareAsyncTimeStampMs = 0L;
        this.mReportedTSLAN = false;
        this.mIsAudioExist = -1;
        this.mIsP2pTSSkipReport = false;
        this.mIsInitMp4Error = false;
        this.mSmt = 0L;
        this.mDlt = 0L;
        this.mPlaybackSpeed = 1.0f;
        clearIPCache();
        this.mCodecName = "n";
        this.hdrInfo = "n";
        this.mVideoFrameClockNotifyMs = -1;
        MgtvPlayerBroadcastObserver mgtvPlayerBroadcastObserver = this.mObserver;
        if (mgtvPlayerBroadcastObserver != null) {
            mgtvPlayerBroadcastObserver.unregister();
        }
        this.mNetworkChangeWhilePlaying = false;
        this.mCacheReportTag = "default";
        this.mInnerFlowDataStatistic.reset();
        this.mPreBufferState.reset();
        this.avdiffS = 0;
        this.sfps = 0;
        this.vfps = 0;
        this.rfps = 0;
        this.rfpsLowCounter = 0;
        this.rfpsLowFilterChanged = false;
        this.mLastPosition = 0;
        this.mPositionLoged = false;
        this.mVVbuft = -1;
        this.mDnsThreadManager.b();
        synchronized (this.mDnsNoNetWaiter) {
            DebugLog.i(getLogTag(), "resetData DnsNetStrategy mDnsNoNetWaiter notifyAll");
            this.mDnsNoNetWaiter.notifyAll();
        }
        Iterator<Map.Entry<Integer, SmoothMediaSource>> it = this.mSmoothSourcesRecord.entrySet().iterator();
        while (it.hasNext()) {
            SmoothMediaSource value = it.next().getValue();
            if (value != null && !value.isReleased()) {
                value.release();
            }
        }
    }

    private void resetDataAfter() {
        FlowReportProcessor flowReportProcessor;
        if (this.isFlowReportEnable && (flowReportProcessor = this.mMainFlowReportProcessor) != null) {
            flowReportProcessor.stop();
        }
        removeP2pListener();
        Iterator<Map.Entry<Integer, SmoothMediaSource>> it = this.mSmoothSourcesRecord.entrySet().iterator();
        while (it.hasNext()) {
            SmoothMediaSource value = it.next().getValue();
            if (this.isFlowReportEnable && value != null && value.getFlowReportProcessor() != null) {
                value.getFlowReportProcessor().stop();
            }
        }
        synchronized (this.mSwitchSmoothSourceLocker) {
            try {
                this.mSwitchingSmoothSource = null;
                this.mSwitchedSmoothSource = null;
                this.mSmoothSourcesRecord.clear();
                this.mSmoothKeyFrameMap.clear();
                com.hunantv.media.report.a aVar = new com.hunantv.media.report.a(this.mContext, this);
                this.mReporter = aVar;
                h hVar = this.mMediaPlayer;
                if (hVar != null) {
                    hVar.a(aVar);
                    this.mMediaPlayer.c(false);
                }
                this.mSmoothUseP2pFailed = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void sendContent2Track(com.hunantv.media.player.subtitle.d dVar, SubtitleSource subtitleSource) {
        com.hunantv.media.player.subtitle.e eVar;
        Handler handler;
        if (subtitleSource == null || (eVar = this.mTimeProvider) == null || (handler = eVar.a) == null) {
            return;
        }
        handler.sendMessage(handler.obtainMessage(4, Pair.create(dVar, subtitleSource)));
    }

    private void setAsyncDns(boolean z, com.hunantv.media.player.a.a.b bVar) {
        this.mJavaDnsEnable = z;
        this.mJavaDnsType = bVar;
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(z, bVar);
        }
    }

    public static void setPlayerDebug(boolean z) {
        PlayerConfig.setPlayerDebug(z);
    }

    public static void setPlayerDebugLog(int i, int i2) {
        PlayerConfig.setPlayerDebugInfo(i);
        PlayerConfig.setPlayerDebugLogLevel(i2);
    }

    public void setPlayerReset(boolean z) {
        this.mPlayerReset = z;
        this.mLoopPlayerReset = z;
    }

    private synchronized void setSubtitleAnchor() {
        if (this.mSubtitleController == null) {
            com.hunantv.media.player.subtitle.b bVar = new com.hunantv.media.player.subtitle.b(this.mContext, this.mTimeProvider, new com.hunantv.media.player.subtitle.b.InterfaceC0137b() {
                @Override
                public void onSubtitleTrackSelected(com.hunantv.media.player.subtitle.d dVar) {
                }
            });
            this.mSubtitleController = bVar;
            bVar.a(new com.hunantv.media.player.subtitle.b.a() {
                @Override
                public Looper getSubtitleLooper() {
                    return Looper.getMainLooper();
                }

                @Override
                public void setSubtitleWidget(com.hunantv.media.player.subtitle.d.c cVar) {
                }
            });
        }
    }

    public void stopTickers() {
        this.mPlayTicker.stop();
        this.mBufferTick.stop();
    }

    public void updateFpsInfo() {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            this.avdiffS = (int) hVar.K();
            this.sfps = this.mMediaPlayer.M();
            this.dfps = (int) this.mMediaPlayer.O();
            this.vfps = (int) this.mMediaPlayer.N();
            IMgtvRenderView iMgtvRenderView = this.mRenderView;
            if (iMgtvRenderView != null) {
                this.rfps = iMgtvRenderView.getFps();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001e  */
    private int validSeekPosition(int i) {
        int i2;
        int duration = getDuration();
        if (this.mPlayStatus != PlayStatus.PREPARED) {
            i2 = i;
        } else {
            if (i >= duration - 1000) {
                DebugLog.i(getLogTag(), "validSeekPos seekTo failed, pos >=  duration - 1 * 1000, return -1");
                return -1;
            }
            i2 = duration - 5000;
            if (i <= i2) {
                i2 = i;
            }
        }
        DebugLog.i(getLogTag(), "validSeekPos seekTo newMs:" + i2 + ",origMs:" + i);
        return i2;
    }

    public void addSubtitleSource(com.hunantv.media.player.subtitle.d.c cVar, final SubtitleSource subtitleSource) throws IllegalStateException {
        if (subtitleSource == null || !subtitleSource.isValid()) {
            DebugLog.e(TAG, "addSubtitleSource called with invalid source");
            ISubtitle.SubtitleCallback subtitleCallback = this.mSubtitleCallback;
            if (subtitleCallback != null) {
                subtitleCallback.onError(subtitleSource);
                return;
            }
            return;
        }
        if (subtitleSource.isBinded()) {
            return;
        }
        subtitleSource.bindHolder(this);
        this.mSubtitleSources.add(subtitleSource);
        com.hunantv.media.player.subtitle.c.b(AuthInfo.Component.CODE_SUBTITLE, "addSubtitleSource in");
        getMediaTimeProvider();
        if (this.mSubtitleController == null) {
            setSubtitleAnchor();
        }
        com.hunantv.media.player.subtitle.d dVarA = this.mSubtitleController.a(cVar, subtitleSource.getFormat());
        subtitleSource.setCallback(new SubtitleSource.SubtitleSourceCallback() {
            @Override
            public void onFailed(int i) {
                if (MgtvMediaPlayer.this.mSubtitleCallback != null) {
                    MgtvMediaPlayer.this.mSubtitleCallback.onError(subtitleSource);
                }
            }

            @Override
            public void onSuccess(com.hunantv.media.player.subtitle.d dVar, SubtitleSource subtitleSource2) {
                try {
                    MgtvMediaPlayer.this.sendContent2Track(dVar, subtitleSource2);
                    if (MgtvMediaPlayer.this.mSubtitleController != null) {
                        MgtvMediaPlayer.this.mSubtitleController.b();
                    }
                    if (MgtvMediaPlayer.this.mSubtitleCallback != null) {
                        MgtvMediaPlayer.this.mSubtitleCallback.onSuccess(subtitleSource2);
                    }
                } catch (Exception unused) {
                    if (MgtvMediaPlayer.this.mSubtitleCallback != null) {
                        MgtvMediaPlayer.this.mSubtitleCallback.onError(subtitleSource2);
                    }
                }
            }
        });
        subtitleSource.readSource(dVarA, subtitleSource);
    }

    public void addVideoPTSListener(MgtvPlayerListener.OnVideoPTSListener onVideoPTSListener) {
        synchronized (this.ptsLocker) {
            try {
                if (onVideoPTSListener == null) {
                    return;
                }
                if (this.ptsHandlerThread == null) {
                    HandlerThread handlerThread = new HandlerThread("mgtvmp_jPts");
                    this.ptsHandlerThread = handlerThread;
                    handlerThread.start();
                    if (this.ptsWeakHandler == null) {
                        this.ptsWeakHandler = new WeakHandler(this.ptsHandlerThread.getLooper(), this);
                    }
                }
                this.ptsListeners.add(onVideoPTSListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void autoWanosAudioEffectChoice() {
        if (this.isExAudioEnable || this.isUserAudioEnable) {
            DebugLog.i(getLogTag(), "autoWanosAudioEffectChoice in");
            setWanosAudioEffectChoice(AudioUtil.isWired(getContext()) ? 4 : 3);
            DebugLog.i(getLogTag(), "autoWanosAudioEffectChoice out");
        }
    }

    public void bindDrmSession(IDrmSession iDrmSession) {
        this.mMediaPlayer.a(iDrmSession);
    }

    public synchronized GifRecorder bindGifRecorder(GifRecorder gifRecorder) {
        try {
            GifRecorder gifRecorder2 = this.mGifRecorder;
            if (gifRecorder2 != null) {
                gifRecorder2.reset();
            }
            this.mGifRecorder = gifRecorder;
            gifRecorder.bindMediaPlayer(this);
        } catch (Throwable th) {
            throw th;
        }
        return this.mGifRecorder;
    }

    public void bindRenderView(IMgtvRenderView iMgtvRenderView) {
        this.mRenderView = iMgtvRenderView;
    }

    public boolean clearSurface(Surface surface) {
        return true;
    }

    public void clearVideoPTSListener() {
        synchronized (this.ptsLocker) {
            this.ptsListeners.clear();
        }
    }

    public void configDSMemoryKeepSize(int i, int i2) {
        DebugLog.d(getLogTag(), "configDSMemoryKeepSize, BW_SIZE_KB:" + i + ",FW_SIZE_KB:" + i2);
        if (i > 0) {
            this.mMediaPlayer.a(2017122201, i);
        }
        if (i2 > 0) {
            this.mMediaPlayer.a(2017122202, i2);
        }
    }

    public void configForceHW(boolean z) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(2018051001, z ? 1 : 0);
        }
    }

    public void configLoadMaxRetryTime(int i) {
        DebugLog.d(getLogTag(), "configLoadMaxRetryTime " + i);
        if (i > 0) {
            this.mLoadMaxRetryTime = i;
        }
    }

    public void configTsNotSkip(boolean z) {
        DebugLog.d(getLogTag(), "configTsNotSkip " + z);
        this.mTsNotSkip = z;
    }

    public void configWeakBufferSpeed(int i) {
        DebugLog.d(getLogTag(), "configWeakBufferSpeed " + i);
        if (i > 0) {
            this.mWeakBufferSpeedKB = i;
        }
    }

    public void configWeakBufferTimeout(int i) {
        DebugLog.d(getLogTag(), "configWeakBufferTimeout " + i);
        if (i > 0) {
            this.mWeakBufferTimeoutMs = i;
        }
    }

    public void enableFramePTSNotify(boolean z) {
        this.mMediaPlayer.b(z);
    }

    public void enableImgoAIQE(boolean z) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.g(z);
        }
    }

    public void enableImgoVSR(boolean z) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.g(z);
        }
    }

    public void enableJAVAIPCacheMap(boolean z) {
        this.mEnableJAVAIPCacheMap = z;
    }

    public void enableLiveLowLatency(boolean z) {
        setConfig(2021030401, z ? 1 : 0);
    }

    public void enableM3u8Cache(boolean z) {
        this.mCacheEable = z;
    }

    public void enableMgtvMediaCodec(boolean z) {
        h hVar;
        int i;
        if (z) {
            ReportParams reportParams = this.mReportParams;
            if (reportParams == null || reportParams.getVideoType() != ReportParams.VideoType.VOD || (hVar = this.mMediaPlayer) == null) {
                return;
            } else {
                i = 1;
            }
        } else {
            hVar = this.mMediaPlayer;
            if (hVar == null) {
                return;
            } else {
                i = 0;
            }
        }
        hVar.a(2019053101, i);
    }

    public void enableOppoFunc(int i, boolean z) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.b(i, z);
        }
    }

    public void enableP2PSmoothFailMode(boolean z) {
        this.mMediaPlayer.c(z);
    }

    public void enableTsSkipError(boolean z) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(2019050601, z ? 1 : 0);
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        PlayerReferenceObserver.remove(hashCode() + "");
        MgtvPlayerBroadcastObserver mgtvPlayerBroadcastObserver = this.mObserver;
        if (mgtvPlayerBroadcastObserver != null) {
            mgtvPlayerBroadcastObserver.unregister();
        }
    }

    public AddrinfoType getAddrinfoType() {
        return this.mAddrinfoType;
    }

    public String getAudioFormat() {
        DataSourceInfo dataSourceInfo = this.mDataSourceInfo;
        if (dataSourceInfo != null) {
            return dataSourceInfo.audioFormat;
        }
        return null;
    }

    public int getAvdiffS() {
        return this.avdiffS;
    }

    public int getBufferedPercentage() {
        return this.mMediaPlayer.s();
    }

    public long getBufferedPositionMs() {
        return this.mMediaPlayer.t();
    }

    public int getBufferingPercent() {
        return this.mMediaPlayer.r();
    }

    public Map<String, String> getCacheReplaceMap() {
        return this.mCacheReplaceMap;
    }

    public String[] getCacheTsPaths() {
        return this.mCacheTsPaths;
    }

    public String getCodecName() {
        return this.mCodecName;
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getCurDLSpeed() {
        return this.mMediaPlayer.w();
    }

    public String getCurrentAudioDecoderName() {
        return this.mMediaPlayer.Y();
    }

    public String getCurrentDnsDsc() {
        return this.mCurrentDnsDsc;
    }

    public String getCurrentDrmMetodName() {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            return hVar.ag();
        }
        return null;
    }

    public int getCurrentPosition() {
        try {
            if (checkInvalidThread(0, "getCurrentPosition")) {
                return 0;
            }
            return getCurrentPositionUnSafe();
        } catch (Exception e) {
            e.printStackTrace();
            DebugLog.e(getLogTag(), "getCurrentPosition Exception return 0");
            return 0;
        }
    }

    public int getCurrentPositionUnSafe() {
        int i;
        try {
            int iN = this.mMediaPlayer.n();
            if (this.mLastPosition > 0 && iN == 0 && !this.mPositionLoged) {
                this.mPositionLoged = true;
                DebugLog.e(getLogTag(), "getCurrentPosition warning position mLastPosition:" + this.mLastPosition + ",position:" + iN + " check it");
            }
            if (this.mPlayStatus == PlayStatus.ERROR && ((i = this.mErrorExtraCodeStore) == 100607 || i == 100606)) {
                iN -= 5000;
            }
            int iLegalPosition = legalPosition(iN);
            this.mLastPosition = iLegalPosition;
            return iLegalPosition;
        } catch (Exception e) {
            e.printStackTrace();
            DebugLog.e(getLogTag(), "getCurrentPositionUnSafe Exception return 0");
            return 0;
        }
    }

    public String getCurrentVideoDecoderName() {
        return this.mMediaPlayer.X();
    }

    public DataSourceInfo getDataSourceInfo() {
        return this.mDataSourceInfo;
    }

    public DataSourceType getDataSourceType() {
        return this.mDataSourceType;
    }

    public int getDataSourceTypeOrdinal() {
        return this.mDataSourceType.ordinal();
    }

    public int getDfps() {
        return this.dfps;
    }

    public IDrmSession getDrmSession() {
        return this.mMediaPlayer.as();
    }

    public int getDuration() {
        if (this.mPlayerType != 0 || isInPlaybackState()) {
            return this.mMediaPlayer.d();
        }
        return -1;
    }

    public String getErrorUrl() {
        return this.mErrorUrl;
    }

    public String getFileFormat() {
        DataSourceInfo dataSourceInfo = this.mDataSourceInfo;
        if (dataSourceInfo != null) {
            return dataSourceInfo.fileFormat;
        }
        return null;
    }

    public float getFileStartTimeFloatS() {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            return hVar.L();
        }
        return -1.0f;
    }

    public String getFpsMsg() {
        return (getAvdiffS() + "_" + getSfps() + "_" + getDfps() + "_" + getVfps() + "_" + getRfps() + "_" + getPlaybackSpeed() + "_" + (isRfpsLowFilterChanged() ? 1 : 0) + "_" + ((isVfpsLow() || isRfpsLow()) ? 1 : 0)).replace("-", "_");
    }

    public String getFstime() {
        return this.fstime;
    }

    public String getHdrInfo() {
        return this.hdrInfo;
    }

    public Hw2SwType getHw2SwType() {
        return this.mHw2SwType;
    }

    public h getImgoMediaPlayer() {
        return this.mMediaPlayer;
    }

    public int getImp4dh() {
        return this.imp4dh;
    }

    public FlowDataStatistic getInnerFlowDataStatistic() {
        return this.mInnerFlowDataStatistic;
    }

    public MgtvPlayerListener.OnFrameListener getInnerFrameListener() {
        return this.mFrameListener;
    }

    public int getIsAudioExist() {
        return this.mIsAudioExist;
    }

    public int getLastDlSize() {
        return this.mLastDlSize;
    }

    public int getLastDnsType() {
        return this.mLastDnsType;
    }

    public String getLastErrorTypeCode() {
        return this.mLastErrorTypeCode;
    }

    public String getLastIP() {
        String str;
        h hVar = this.mMediaPlayer;
        if (hVar != null && ((hVar.l() == 2 || this.mMediaPlayer.l() == 1) && this.mMediaPlayer.ai() != null)) {
            com.mgtv.a.d taskInfo = P2pMgr.getTaskInfo(this.mMediaPlayer.ai());
            if (taskInfo != null) {
                str = taskInfo.b;
                this.mLastP2pCdnIP = str;
            } else {
                str = null;
            }
            this.mLastIP = str;
            DebugLog.d(getLogTag(), "getLastIP update cdnIp:" + this.mLastIP);
        }
        return this.mLastIP;
    }

    public int getLastIPCount() {
        return this.mLastIpCount;
    }

    public String getLastIpArrayStr() {
        String[] strArr = this.mLastIps;
        String str = "";
        if (strArr != null) {
            for (String str2 : strArr) {
                str = str + str2 + "_";
            }
        }
        return str;
    }

    public int getLastIpIndex() {
        return this.mLastIpIndex;
    }

    public String getLastRequestUrl() {
        return this.mLastRequestUrl;
    }

    public int getLastTsSkipErrExtra() {
        return this.mLastTsSkipErrExtra;
    }

    public String getLastTsSkipErrFileName() {
        return this.mLastTsSkipErrFileName;
    }

    public long getMaxDnsMs() {
        return this.mMediaPlayer.Z();
    }

    public long getMaxDnsType() {
        return this.mMediaPlayer.aa();
    }

    public String getMediaCodecColorFormat() {
        return this.mcColorFormat;
    }

    public f getMediaInfo() {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            return hVar.U();
        }
        return null;
    }

    public com.hunantv.media.player.b.a getMediaTimeProvider() {
        if (this.mTimeProvider == null) {
            this.mTimeProvider = new com.hunantv.media.player.subtitle.e(this);
        }
        this.mTimeProvider.a(this.mPlaybackSpeed);
        this.mTimeProvider.a(!isPlaying());
        boolean z = this.mIsBuffering;
        if (z) {
            this.mTimeProvider.b(z);
        }
        return this.mTimeProvider;
    }

    public int getMemoryPlayType() {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            return hVar.at();
        }
        return 0;
    }

    public int getMgtvFastMode() {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            return hVar.an();
        }
        return 0;
    }

    public int getMpx() {
        return this.mpx;
    }

    public long getNetdSVCTimeMs() {
        return this.mNetdSVCTimeMs;
    }

    public MgtvPlayerListener.OnAVPlayListener getOnAVPlayListener() {
        return this.mOnAVPlayListener;
    }

    public MgtvPlayerListener.OnFrameListener getOnFrameListener() {
        return this.mOnFrameListener;
    }

    public MgtvPlayerListener.OnPlayerEventListener getOnPlayerEventListener() {
        return this.mOnPlayerEventListener;
    }

    public ExTicker getPlayTicker() {
        return this.mPlayTicker;
    }

    public float getPlaybackSpeed() {
        return this.mMediaPlayer.x();
    }

    public PlayerExtraInfo getPlayerExtraInfo() {
        PlayerExtraInfo playerExtraInfo = new PlayerExtraInfo();
        com.hunantv.media.report.a aVar = this.mReporter;
        if (aVar != null) {
            playerExtraInfo.playSessionID = aVar.g();
        }
        playerExtraInfo.lastIP = getLastIP();
        playerExtraInfo.smt = this.mSmt;
        playerExtraInfo.dlt = this.mDlt;
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            playerExtraInfo.buftimeMs = hVar.al();
            playerExtraInfo.bufsizeByte = this.mMediaPlayer.ak();
        }
        return playerExtraInfo;
    }

    public float getPlayerFileStartTimeFloatS() {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            return hVar.am();
        }
        return -1.0f;
    }

    public int getPlayerMode() {
        return this.mPlayerMode;
    }

    public int getPlayerType() {
        return this.mPlayerType;
    }

    public String getPlayingOriginUrl() {
        return this.mMediaPlayer.I();
    }

    public String getPlayingUrl() {
        return this.mMediaPlayer.H();
    }

    public Prepared4StartMode getPrepared4StartMode() {
        return this.mPrepared4StartMode;
    }

    public float getPropertyFloat(int i, float f) {
        h hVar = this.mMediaPlayer;
        return hVar != null ? hVar.b(i, f) : f;
    }

    public long getPropertyLong(int i, long j) {
        h hVar = this.mMediaPlayer;
        return hVar != null ? hVar.a(i, j) : j;
    }

    public int getReadDataSourceType() {
        return this.mMediaPlayer.l();
    }

    public float getRecordMaxPlaySpeed() {
        return this.mRecordMaxPlaySpeed;
    }

    public RenderType getRenderType() {
        return this.mRenderType;
    }

    public ReportParams getReportParams() {
        return this.mReportParams;
    }

    public int getRetryLastErrorCode() {
        return this.mRetryLastErrorCode;
    }

    public int getRfps() {
        return this.rfps;
    }

    public int getSfps() {
        return this.sfps;
    }

    public Bitmap getSnapshot(int i, int i2) {
        return this.mMediaPlayer.b(i, i2);
    }

    public int getSourceRetryCode() {
        return this.mSourceRetryCode;
    }

    public int getSourceRetryCount() {
        return this.mSourceRetryCount;
    }

    public int getSwitchP2ps() {
        return this.mMediaPlayer.y();
    }

    public int getTsCacheSkipNum() {
        return this.mTsCacheSkipNum;
    }

    public int getVVbuft() {
        return this.mVVbuft;
    }

    public int getVfps() {
        return this.vfps;
    }

    public long getVideoBitRate() {
        return this.mMediaPlayer.P();
    }

    public int getVideoFPS() {
        return this.mMediaPlayer.M();
    }

    public String getVideoFormat() {
        DataSourceInfo dataSourceInfo = this.mDataSourceInfo;
        if (dataSourceInfo != null) {
            return dataSourceInfo.videoFormat;
        }
        return null;
    }

    public int getVideoFrameClockNotifyMs() {
        this.mVideoFrameClockNotifyType = 1;
        return this.mVideoFrameClockNotifyMs;
    }

    public int getVideoFrameClockNotifyType() {
        return this.mVideoFrameClockNotifyType;
    }

    public int getVideoHeight() {
        return this.mMediaPlayer.f();
    }

    public int getVideoSarDen() {
        return this.mMediaPlayer.h();
    }

    public int getVideoSarNum() {
        return this.mMediaPlayer.g();
    }

    public ReportParams.VideoType getVideoType() {
        ReportParams reportParams = this.mReportParams;
        return reportParams != null ? reportParams.getVideoType() : ReportParams.VideoType.NONE;
    }

    public int getVideoWidth() {
        return this.mMediaPlayer.e();
    }

    public int getWanosAudioEffectChoice() {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            return hVar.V();
        }
        return 0;
    }

    public long getmVideoFrameClockNotifyTimeEnd() {
        return this.mVideoFrameClockNotifyTimeEnd;
    }

    public long getmVideoFrameClockNotifyTimeStart() {
        return this.mVideoFrameClockNotifyTimeStart;
    }

    public boolean isBackground() {
        return this.isBackground;
    }

    public boolean isDebug() {
        return this.mDebug;
    }

    public boolean isEnableDnsNoNetStrategy() {
        return this.mEnableDnsNoNetStrategy;
    }

    public boolean isForceHttpDns() {
        return this.mForceHttpDns;
    }

    public boolean isHDR() {
        String[] strArrSplit;
        try {
            String hdrInfo = getHdrInfo();
            DebugLog.i(getLogTag(), "isHDR hdrInfo" + hdrInfo);
            return !StringUtil.isEmpty(hdrInfo) && (strArrSplit = hdrInfo.split(StringUtils.PROCESS_POSTFIX_DELIMITER)) != null && strArrSplit.length >= 1 && "1".equalsIgnoreCase(strArrSplit[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean isHLSPlayingUrl() {
        return this.mMediaPlayer.J();
    }

    public boolean isHardware() {
        return this.mMediaPlayer.u();
    }

    public boolean isHttpDnsNeedRetry() {
        return this.mHttpDnsNeedRetry;
    }

    public boolean isInitMp4Error() {
        return this.mIsInitMp4Error;
    }

    public boolean isLive() {
        return this.mIsLive;
    }

    public boolean isLoadDataPaused() {
        h hVar = this.mMediaPlayer;
        return (hVar == null || hVar.B()) ? false : true;
    }

    public boolean isLoopSwitching() {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            return hVar.p();
        }
        return false;
    }

    public boolean isMediaCodecSWRender() {
        return this.mMediaPlayer.G();
    }

    public boolean isMgtvCore() {
        return this.mMediaPlayer.W();
    }

    public boolean isNativePausedLoadData() {
        return this.mIsNativePausedLoadData == 1;
    }

    public boolean isNetworkChangeWhilePlaying() {
        return this.mNetworkChangeWhilePlaying;
    }

    public boolean isOppoExFunEnable() {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            return hVar.Q() || this.mMediaPlayer.R();
        }
        return false;
    }

    public boolean isPlaying() {
        return this.mMediaPlayer.i();
    }

    public boolean isRecording() {
        return this.mMediaPlayer.af();
    }

    public boolean isRendered() {
        return this.mIsVideoRendered;
    }

    public boolean isRfpsLow() {
        return getSfps() > 15 && getRfps() > 0 && getRfps() < 12;
    }

    public boolean isRfpsLowFilterChanged() {
        return this.rfpsLowFilterChanged;
    }

    public boolean isSourceSwitching() {
        return this.mSourceSwitching;
    }

    public boolean isSourceSwitchingComplete() {
        return this.mSourceSwitchingComplete;
    }

    public boolean isSupportAMCKeyFrameBackup() {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            return hVar.ah();
        }
        return true;
    }

    public boolean isSupportedSnapshot() {
        return this.mMediaPlayer.F() && !isHDR();
    }

    public boolean isSwitchingPrepared() {
        return this.mSwitchingPrepared;
    }

    public boolean isSystemPlayer() {
        return this.mPlayerType == 0;
    }

    public boolean isVfpsLow() {
        return getSfps() > 15 && getVfps() > 0 && getVfps() < 15;
    }

    public boolean isVod() {
        ReportParams reportParams = this.mReportParams;
        return reportParams != null && reportParams.getVideoType() == ReportParams.VideoType.VOD;
    }

    public boolean isWanosAudioEffectValid() {
        return this.mIsWanosAudioEffectValid;
    }

    public void nativeCrashTest(NativeSoType nativeSoType) {
        int i = AnonymousClass28.$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$NativeSoType[nativeSoType.ordinal()];
        int i2 = 1;
        if (i == 1) {
            i2 = 0;
        } else if (i != 2) {
            i2 = 3;
            if (i == 3) {
                i2 = 2;
            } else if (i != 4) {
                i2 = -1;
            }
        }
        this.mMediaPlayer.g(i2);
    }

    public void pause() throws IllegalStateException {
        Context context;
        DebugLog.i(getLogTag(), "pause player");
        if (this.mEnableDnsNoNetStrategy && (context = this.mContext) != null && !com.hunantv.media.report.c.d.c(context)) {
            pauseLoadData();
        }
        this.mMediaPlayer.a();
        this.mPlayTicker.pause();
        this.mBufferTick.pause();
        this.mPlayStatus = PlayStatus.PAUSED;
        GifRecorder gifRecorder = this.mGifRecorder;
        if (gifRecorder != null) {
            gifRecorder.pause();
        }
        com.hunantv.media.player.subtitle.e eVar = this.mTimeProvider;
        if (eVar != null) {
            eVar.a(true);
        }
    }

    public void pauseLoadData() {
        if (isLoadDataPaused()) {
            return;
        }
        this.mMediaPlayer.C();
    }

    public void prepareAsync() throws IllegalStateException {
        ReportParams reportParams;
        DebugLog.i(getLogTag(), "prepareAsync in");
        this.mPlayStatus = PlayStatus.PREPARING;
        this.mIsVideoRendered = false;
        this.mPreBufferState.reset();
        if (isDnsCacheEnable() && (reportParams = this.mReportParams) != null && reportParams.getRetryIndex() >= 2 && this.mReportParams.getLastErrorCodeExtra() == 100701) {
            this.mHttpDnsEnable = true;
        }
        this.mPrepareAsyncTimeStampMs = System.currentTimeMillis();
        printErrorMd5();
        MgtvPlayerBroadcastObserver mgtvPlayerBroadcastObserver = this.mObserver;
        if (mgtvPlayerBroadcastObserver != null) {
            mgtvPlayerBroadcastObserver.register();
        }
        this.mInnerFlowDataStatistic.reset();
        if (!isSystemPlayer()) {
            FFmpegApi.remove_all_dns_cache();
        }
        this.mMediaPlayer.k();
        autoWanosAudioEffectChoice();
        DebugLog.i(getLogTag(), "prepareAsync out");
    }

    public void release() {
        DebugLog.i(getLogTag(), "release player");
        com.hunantv.media.report.a aVar = this.mReporter;
        if (aVar != null) {
            aVar.c();
            this.mReporter.f();
        }
        resetData();
        stopTickers();
        this.mIsVideoRendered = false;
        this.mPlayStatus = PlayStatus.IDLE;
        this.mErrorExtraCodeStore = -1;
        checkInvalidThread(2, "release");
        stop();
        this.mMediaPlayer.o();
        synchronized (this.ptsLocker) {
            try {
                this.ptsListeners.clear();
                HandlerThread handlerThread = this.ptsHandlerThread;
                if (handlerThread != null) {
                    handlerThread.quitSafely();
                    this.ptsHandlerThread = null;
                }
                WeakHandler weakHandler = this.ptsWeakHandler;
                if (weakHandler != null) {
                    weakHandler.removeMessages(256);
                    this.ptsWeakHandler = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        resetDataAfter();
    }

    public void removeSubtitleSources() {
        com.hunantv.media.player.subtitle.c.b(AuthInfo.Component.CODE_SUBTITLE, "removeSubtitleSources in");
        com.hunantv.media.player.subtitle.e eVar = this.mTimeProvider;
        if (eVar != null) {
            eVar.b();
        }
        List<SubtitleSource> list = this.mSubtitleSources;
        if (list != null && !list.isEmpty()) {
            Iterator<SubtitleSource> it = this.mSubtitleSources.iterator();
            while (it.hasNext()) {
                it.next().unBindHolder();
            }
            this.mSubtitleSources.clear();
        }
        com.hunantv.media.player.subtitle.b bVar = this.mSubtitleController;
        if (bVar != null) {
            bVar.c();
            this.mSubtitleController = null;
        }
        com.hunantv.media.player.subtitle.e eVar2 = this.mTimeProvider;
        if (eVar2 != null) {
            eVar2.a();
            this.mTimeProvider = null;
        }
    }

    public void removeVideoPTSListener(MgtvPlayerListener.OnVideoPTSListener onVideoPTSListener) {
        synchronized (this.ptsLocker) {
            try {
                if (onVideoPTSListener == null) {
                    return;
                }
                this.ptsListeners.remove(onVideoPTSListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void reportEndWithError(int i, int i2) {
        com.hunantv.media.report.a aVar = this.mReporter;
        if (aVar != null) {
            aVar.a(i, i2);
        }
    }

    public boolean reset() {
        DebugLog.i(getLogTag(), "reset player in");
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.hunantv.media.report.a aVar = this.mReporter;
        if (aVar != null) {
            aVar.c();
        }
        resetData();
        stopTickers();
        this.mIsVideoRendered = false;
        this.mPlayStatus = PlayStatus.IDLE;
        this.mHw2SwType = Hw2SwType.NONE;
        this.mErrorExtraCodeStore = -1;
        checkInvalidThread(1, "reset");
        stop();
        boolean zJ = this.mMediaPlayer.j();
        resetDataAfter();
        DebugLog.i(getLogTag(), "reset player out cost:" + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
        return zJ;
    }

    public void resetLoopDataImpl() {
        this.mSeekStartMs = -1L;
        this.imp4dh = 0;
        this.mpx = 0;
        this.fstime = "n";
        this.mcColorFormat = "n_n";
        this.mLastTsSkipErrExtra = 0;
        this.mLastTsSkipErrFileName = null;
        this.mLastIsNetworkAvailableNNS = true;
        GifRecorder gifRecorder = this.mGifRecorder;
        if (gifRecorder != null) {
            gifRecorder.reset();
        }
        this.mIsVideoRendered = false;
        this.mSourceSwitching = false;
        this.mSourceSwitchingComplete = false;
        this.mErrorUrl = "";
        this.mLastRequestUrl = "";
        this.mIsBuffering = false;
        this.mIsLive = false;
        this.mCacheM3u8Path = null;
        this.mCacheTsPaths = null;
        this.mCacheReplaceMap.clear();
        this.mTsCacheSkipNum = 0;
        this.mIsInnerRetrying = false;
        this.mRetryLastErrorCode = 0;
        this.mLoopPlayerReset = true;
        synchronized (this.mDnsLock) {
            this.mDnsLock.notifyAll();
        }
        this.mHttpDnsEnable = false;
        this.mLastUri = null;
        this.mCurrentDnsDsc = "native";
        this.mLastIP = null;
        this.mLastP2pCdnIP = null;
        this.mLastHostIP = null;
        this.mLastTcpIP = null;
        this.mLastHostErr = "00";
        this.mLastTcpErr = "00";
        this.mLastIpCount = 0;
        this.mLastIpIndex = -1;
        this.mLastDnsType = -1;
        this.mSourceRetryCount = 0;
        this.mSourceRetryCode = 0;
        this.mAVSyncErrReported = false;
        this.mAVSyncErrSumReported = false;
        this.mAVSyncErrSum = 0;
        this.mPrepareAsyncTimeStampMs = 0L;
        this.mReportedTSLAN = false;
        this.mIsAudioExist = -1;
        this.mIsInitMp4Error = false;
        this.mPlaybackSpeed = 1.0f;
        clearIPCache();
        this.mCodecName = "n";
        this.hdrInfo = "n";
        this.mVideoFrameClockNotifyMs = -1;
        this.mNetworkChangeWhilePlaying = false;
        this.mInnerFlowDataStatistic.reset();
        this.mLastPosition = 0;
        this.mPositionLoged = false;
        this.mVVbuft = -1;
        synchronized (this.mDnsNoNetWaiter) {
            DebugLog.i(getLogTag(), "resetLoopData DnsNetStrategy mDnsNoNetWaiter notifyAll");
            this.mDnsNoNetWaiter.notifyAll();
        }
    }

    public void resetLoopPlay() {
        resetLoopDataImpl();
        com.hunantv.media.report.a aVar = this.mReporter;
        if (aVar != null) {
            aVar.c();
        }
    }

    public void resumeLoadData() {
        if (isLoadDataPaused()) {
            MgtvPlayerListener.OnLoadDataListener onLoadDataListener = this.mOnLoadDataListener;
            if (onLoadDataListener != null) {
                onLoadDataListener.onBeforeLoadDataResume();
            }
            this.mMediaPlayer.D();
        }
    }

    public void seekTo(int i) throws IllegalStateException {
        preSeekTo(i, false);
        com.hunantv.media.report.a aVar = this.mReporter;
        if (aVar != null) {
            aVar.d();
        }
        int iValidSeekPosition = validSeekPosition(i);
        if (iValidSeekPosition >= 0) {
            this.mMediaPlayer.a(iValidSeekPosition);
        }
    }

    public void setAMCKeyFrameBackMode(int i) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(2018091301, i);
        }
    }

    public void setAccSeekKeyFrameInterval(int i) {
        this.mAccSeekKeyFrameInterval = i;
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(2017051801, i);
        }
    }

    public void setAccurateSeekEnable(boolean z) {
        this.mAccurateSeekEnable = z;
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(2017031302, z ? 1 : 0);
        }
    }

    public void setAudioStreamType(int i) {
        DebugLog.i(getLogTag(), "prepareAsync in. streamtype:" + i);
        this.mMediaPlayer.d(i);
        DebugLog.i(getLogTag(), "prepareAsync out");
    }

    public void setBackground(boolean z) {
        FlowReportProcessor flowReportProcessor;
        this.isBackground = z;
        if (!z || (flowReportProcessor = this.mMainFlowReportProcessor) == null) {
            return;
        }
        flowReportProcessor.forceTrigger();
    }

    public void setConfig(int i, int i2) {
        this.mMediaPlayer.a(i, i2);
    }

    public void setDataSource(MgtvPlayerDataSource mgtvPlayerDataSource) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.mSourceSwitching = false;
        this.mSourceSwitchingComplete = false;
        this.mHw2SwType = Hw2SwType.NONE;
        setPlayerReset(false);
        this.mMediaPlayer.b(0);
        setDataSourceBefore("", null);
        this.mMediaPlayer.a(mgtvPlayerDataSource);
        doReportPV();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void setDataSourceBefore(String str, IP2pTask iP2pTask) {
        ReportParams reportParams;
        addP2pListener();
        FlowReportProcessor flowReportProcessor = this.mMainFlowReportProcessor;
        if (flowReportProcessor != null) {
            flowReportProcessor.stop();
        }
        ?? r0 = (!FlowReportProcessor.isEnable() || FlowReportProcessor.isInvalidVideoType(this.mReportParams)) ? 0 : 1;
        this.isFlowReportEnable = r0;
        this.mMediaPlayer.a(2021031501, (int) r0);
        if (this.isFlowReportEnable && (reportParams = this.mReportParams) != null) {
            this.mMainFlowReportProcessor = new FlowReportProcessor(str, this.mReportParams.getVid(), NumericUtil.parseInt(this.mReportParams.getDef()), this.mReportParams.getVideoSession(), iP2pTask != null && (reportParams.getProxyType() == ReportParams.ProxyType.ONLY_P2P || this.mReportParams.getProxyType() == ReportParams.ProxyType.P2P_DRM), "main");
            return;
        }
        this.mMainFlowReportProcessor = null;
        DebugLog.i(getLogTag(), "no FlowReportProcessor. isFlowReportEnable:" + this.isFlowReportEnable);
        if (!this.isFlowReportEnable) {
            DebugLog.i(getLogTag(), "no FlowReportProcessor. isInited:" + FlowReporter.isInited() + ",mode:" + NetPlayConfig.getFlowReportMode());
        }
        if (this.mReportParams == null) {
            DebugLog.i(getLogTag(), "no FlowReportProcessor. mReportParams is null.");
        }
    }

    public void setDataSourceInfo(DataSourceInfo dataSourceInfo) {
        this.mDataSourceInfo = dataSourceInfo;
        if (dataSourceInfo == null) {
            DebugLog.i(getLogTag(), "setDataSourceInfo null");
            return;
        }
        DebugLog.i(getLogTag(), "setDataSourceInfo VideoFormat:" + this.mDataSourceInfo.getVideoFormat() + "AudioFormat:" + this.mDataSourceInfo.getAudioFormat() + ",FileFormat:" + this.mDataSourceInfo.getFileFormat() + "VideoWidth:" + this.mDataSourceInfo.getVideoWidth() + ",VideoHeight:" + this.mDataSourceInfo.getVideoHeight() + ",bitRate:" + this.mDataSourceInfo.getBitRate());
        this.mLastVideoWidth = this.mDataSourceInfo.getVideoWidth();
        this.mLastVideoHeight = this.mDataSourceInfo.getVideoHeight();
    }

    public void setDataSourceType(DataSourceType dataSourceType) {
        h hVar;
        this.mDataSourceType = dataSourceType;
        int i = 1;
        if (AnonymousClass28.$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$DataSourceType[dataSourceType.ordinal()] != 1) {
            hVar = this.mMediaPlayer;
            i = 0;
        } else {
            hVar = this.mMediaPlayer;
        }
        hVar.a(2016070401, i);
        this.mMediaPlayer.a(2016021705, i);
    }

    public void setDebug(boolean z) {
        this.mDebug = z;
    }

    public void setDisableAVDecoderStart(boolean z) {
        this.mMediaPlayer.a(2020072201, z ? 1 : 0);
    }

    public void setDisplay(SurfaceHolder surfaceHolder) throws InvalidParameterException {
        this.mMediaPlayer.a(surfaceHolder);
    }

    public void setDnsFamilyType(int i) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(2017061201, i);
        }
    }

    public void setDrmInfoList(List<MgtvDrmParams.DrmInfo> list) {
        this.mMediaPlayer.a(list);
    }

    public void setDrmLicensePrepared() {
        this.mMediaPlayer.E();
    }

    public void setEnableDnsNoNetStrategy(boolean z) {
        this.mEnableDnsNoNetStrategy = z;
    }

    public void setEnableImgoVsr(boolean z) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            this.mEnableImgoVsr = z;
            hVar.a(2022031001, z ? 1 : 0);
        }
    }

    public void setEnableMediacodecSWRender(boolean z) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(2020072001, z ? 1 : 0);
        }
    }

    public void setEnablePlayerMode(PlayerModeType playerModeType) {
        int i;
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            if (playerModeType == PlayerModeType.TYPE_PLAYER_MODE_LIVE) {
                i = 1;
            } else if (playerModeType == PlayerModeType.TYPE_PLAYER_MODE_LOOP) {
                i = 2;
            } else {
                i = playerModeType == PlayerModeType.TYPE_PLAYER_MODE_SMOOTH ? 3 : 0;
            }
            this.mPlayerMode = i;
            hVar.a(2018100801, i);
        }
    }

    public void setEnableVideoStartTime(boolean z) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.f(z);
        }
    }

    public void setEnableWanosAudioEffect(boolean z) {
        this.isUserAudioEnable = z;
        if (z) {
            autoWanosAudioEffectChoice();
            return;
        }
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.i(0);
        }
    }

    public void setFlowDataStatistic(FlowDataStatistic flowDataStatistic) {
        this.mFlowDataStatistic = flowDataStatistic;
    }

    public MgtvMediaPlayer setForceHttpDns(boolean z) {
        this.mForceHttpDns = z;
        return this;
    }

    public void setForceKeyframeSeekEnable(boolean z) {
        this.mKeyframeSeekEnable = z;
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(2017080701, z ? 1 : 0);
        }
    }

    public void setFrameImageAtTime(String str, long j, long j2, int i, int i2, int i3) {
        DebugLog.i(getLogTag(), "setFrameImageAtTime " + str + "-" + j + "-" + j2 + "-" + i + "-" + i2 + "-" + i3);
        this.mMediaPlayer.a(str, j, j2, i, i2, i3);
    }

    public void setHlsCheckMD5(int i) {
        this.mMediaPlayer.a(2019052701, i);
    }

    public MgtvMediaPlayer setHttpDnsNeedRetry(boolean z) {
        this.mHttpDnsNeedRetry = z;
        return this;
    }

    public void setInnerAutoRotateEnable(boolean z) {
        this.mInnerAutoRotateEnable = z;
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(2018042401, z ? 1 : 0);
        }
    }

    public synchronized int setKeyFrameInfoFileBuf(byte[] bArr) {
        DebugLog.i(getLogTag(), "setKeyFrameInfoFileBuf success");
        return this.mMediaPlayer.a(bArr);
    }

    public void setLastIP(String str) {
        this.mLastIP = str;
    }

    public void setLiveReopen() {
        if (this.mPlayerMode == 1) {
            this.mLiveReopen = true;
        }
    }

    public void setLiveStartIndex(int i) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(2018091302, i);
        }
    }

    public void setLoopABPlay(boolean z, long j, long j2) {
        this.mMediaPlayer.a(z, j, j2);
    }

    public void setLoopSeekPlay(boolean z, int i) {
        preLoopSeek(z);
        this.mMediaPlayer.a(z, i);
    }

    public void setM3u8Caches(String str, String[] strArr) {
        DebugLog.i(getLogTag(), "setM3u8Caches m3u8:" + str);
        if (strArr != null && strArr.length > 0) {
            for (String str2 : strArr) {
                DebugLog.i(getLogTag(), "setM3u8Caches ts:" + str2);
            }
        }
        this.mCacheM3u8Path = str;
        this.mCacheTsPaths = strArr;
    }

    public void setMarkMediacodecSWRender(boolean z) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(2020072002, z ? 1 : 0);
        }
    }

    public void setMediacodecRecreateformat(boolean z, boolean z2) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(z, z2);
        }
    }

    public void setMgtvFastMode(int i) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.j(i);
        }
    }

    public void setNETIsBroken(boolean z) {
        this.mMediaPlayer.e(z);
    }

    public void setNetAddrinfo(AddrinfoType addrinfoType, int i, boolean z) {
        setNetAddrinfo(addrinfoType, i, z, com.hunantv.media.player.a.a.b.NORMAL, false, false);
    }

    public void setNetPlayConfig(NetPlayConfig netPlayConfig) {
        this.mNetPlayConfig = netPlayConfig;
    }

    public void setNetdSVCTimeMs(long j) {
        this.mNetdSVCTimeMs = j;
    }

    public void setOnAVPlayListener(MgtvPlayerListener.OnAVPlayListener onAVPlayListener) {
        this.mOnAVPlayListener = onAVPlayListener;
    }

    public void setOnBufferingTimeoutListener(MgtvPlayerListener.OnBufferingTimeoutListener onBufferingTimeoutListener) {
        this.mOnBufferingTimeoutListener = onBufferingTimeoutListener;
    }

    public void setOnBufferingUpdateListener(MgtvPlayerListener.OnBufferingUpdateListener onBufferingUpdateListener) {
        this.mMediaPlayer.a(onBufferingUpdateListener);
    }

    public void setOnCompletionListener(MgtvPlayerListener.OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnErrorListener(MgtvPlayerListener.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnFrameListener(MgtvPlayerListener.OnFrameListener onFrameListener) {
        this.mOnFrameListener = onFrameListener;
    }

    public void setOnGetFrameImageListener(MgtvPlayerListener.OnGetFrameImageListener onGetFrameImageListener) {
        this.mOnGetFrameImageListener = onGetFrameImageListener;
    }

    public void setOnInfoListener(MgtvPlayerListener.OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    public void setOnInfoStringListener(MgtvPlayerListener.OnInfoStringListener onInfoStringListener) {
        this.mOnInfoStringListener = onInfoStringListener;
    }

    public void setOnLoadDataListener(MgtvPlayerListener.OnLoadDataListener onLoadDataListener) {
        this.mOnLoadDataListener = onLoadDataListener;
    }

    public void setOnPauseListener(MgtvPlayerListener.OnPauseListener onPauseListener) {
        this.mOnPauseListener = onPauseListener;
    }

    public void setOnPlayerEventListener(MgtvPlayerListener.OnPlayerEventListener onPlayerEventListener) {
        this.mOnPlayerEventListener = onPlayerEventListener;
    }

    public void setOnPreparedListener(MgtvPlayerListener.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnRecordVideoListener(MgtvPlayerListener.OnRecordVideoListener onRecordVideoListener) {
        this.mOnRecordVideoListener = onRecordVideoListener;
    }

    public void setOnSeekCompleteListener(MgtvPlayerListener.OnSeekCompleteListener onSeekCompleteListener) {
        this.mOnSeekCompleteListener = onSeekCompleteListener;
    }

    public void setOnSourceNetHandledListener(MgtvPlayerListener.OnSourceNetHandledListener onSourceNetHandledListener) {
        this.mOnSourceNetHandledListener = onSourceNetHandledListener;
    }

    public void setOnStartListener(MgtvPlayerListener.OnStartListener onStartListener) {
        this.mOnStartListener = onStartListener;
    }

    public void setOnSwitchSmoothSourceListener(MgtvPlayerListener.OnSwitchSmoothSourceListener onSwitchSmoothSourceListener) {
        this.mOnSwitchSmoothSourceListener = onSwitchSmoothSourceListener;
    }

    public void setOnSwitchSourceListener(MgtvPlayerListener.OnSwitchSourceListener onSwitchSourceListener) {
        this.mOnSwitchSourceListener = onSwitchSourceListener;
    }

    public void setOnVideoSizeChangedListener(MgtvPlayerListener.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mMediaPlayer.a(onVideoSizeChangedListener);
    }

    public void setOnWarningListener(MgtvPlayerListener.OnWarningListener onWarningListener) {
        this.mOnWarningListener = onWarningListener;
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(onWarningListener);
        }
    }

    public void setP2pDataSource(String str, @Nullable IP2pTask iP2pTask, @Nullable String str2, int i) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.mSourceSwitching = false;
        this.mSourceSwitchingComplete = false;
        this.mHw2SwType = Hw2SwType.NONE;
        setPlayerReset(false);
        if (this.mEnableP2PHttpDns) {
            this.mDnsThreadManager.a();
            this.mDnsThreadManager.a(this.mHttpDnsNeedRetry);
            this.mDnsThreadManager.a(UrlUtil.getHostName(str));
        }
        String strReplaceUrlSftcNoP2p = FlowReportProcessor.replaceUrlSftcNoP2p(str, this.mReportParams);
        String strReplaceUrlSftcNoP2p2 = FlowReportProcessor.replaceUrlSftcNoP2p(str2, this.mReportParams);
        setDataSourceBefore(strReplaceUrlSftcNoP2p, iP2pTask);
        this.mMediaPlayer.a(strReplaceUrlSftcNoP2p, iP2pTask, strReplaceUrlSftcNoP2p2, i);
        doReportPV();
    }

    public void setP2pHttpDns(boolean z, boolean z2) {
        this.mEnableP2PHttpDns = z;
        this.mForceP2pHttpDns = z2;
    }

    public void setPlaybackSpeed(float f) {
        if (!checkInvalidThread(3, "setPlaybackSpeed") && f > 0.0f) {
            this.mPlaybackSpeed = f;
            com.hunantv.media.player.subtitle.e eVar = this.mTimeProvider;
            if (eVar != null) {
                eVar.a(f);
            }
            this.mMediaPlayer.a(f);
            this.mRecordMaxPlaySpeed = Math.max(this.mRecordMaxPlaySpeed, f);
        }
    }

    public void setPlaybackStep() {
        if (!isHardware() || isSupportAMCKeyFrameBackup()) {
            this.mMediaPlayer.f(0);
        }
    }

    public void setPlayerFileStartTimeFloatS(float f) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(2019081201, f);
        }
    }

    public void setPlayerPrepareStartPosMs(int i) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(2018112702, i);
        }
    }

    public void setPlayerSeekAtStartPosMs(int i) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(2016032101, i);
        }
    }

    public void setPreBufferTimeoutMs(int i) {
        if (i > 0) {
            DebugLog.i(getLogTag(), "setPreBufferTimeoutMs:" + i);
            this.mPreBufferTimeoutMs = i;
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0017  */
    public void setPrepared4StartMode(Prepared4StartMode prepared4StartMode) {
        this.mPrepared4StartMode = prepared4StartMode;
        int i = AnonymousClass28.$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$Prepared4StartMode[prepared4StartMode.ordinal()];
        boolean z = true;
        int i2 = 0;
        if (i == 1) {
            z = false;
        } else if (i == 2) {
            i2 = 1;
            z = false;
        } else if (i == 3 || i == 4) {
            i2 = 2;
        } else {
            z = false;
        }
        this.mPreBufferState.setEnable(z);
        this.mMediaPlayer.a(2017112301, i2);
    }

    public void setPropertyLong(int i, long j) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.b(i, j);
        }
    }

    public void setReadDataSourceType(int i) {
        this.mMediaPlayer.b(i);
    }

    public void setRenderType(RenderType renderType) {
        this.mRenderType = renderType;
        int i = AnonymousClass28.$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$RenderType[renderType.ordinal()];
        h hVar = this.mMediaPlayer;
        if (i != 1) {
            hVar.a(201507065, 0);
        } else {
            hVar.a(201507065, 1);
        }
    }

    public void setReportParams(ReportParams reportParams) {
        this.mReportParams = reportParams;
        DebugLog.i(getLogTag(), "setReportParams params:" + reportParams);
        com.hunantv.media.report.a aVar = this.mReporter;
        if (aVar != null) {
            aVar.a(reportParams);
        }
        com.hunantv.media.report.a aVar2 = this.mReporterSL;
        if (aVar2 != null) {
            aVar2.a(reportParams);
        }
        h hVar = this.mMediaPlayer;
        if (hVar != null && reportParams != null) {
            hVar.b(String.valueOf(reportParams.getProxyType().ordinal()));
            if (!StringUtil.isEmpty(reportParams.getVfps())) {
                this.mRecordVfps = Float.parseFloat(reportParams.getVfps());
            }
        }
        h hVar2 = this.mMediaPlayer;
        if (hVar2 != null) {
            hVar2.a(reportParams);
        }
        ReportParams reportParams2 = this.mReportParams;
        if (reportParams2 != null) {
            if (reportParams2.getVideoType().equals(ReportParams.VideoType.AD_PRE) || this.mReportParams.getVideoType().equals(ReportParams.VideoType.AD_MID)) {
                this.mWeakBufferTimeoutMs = ComConstants.defScheduleTime;
            }
        }
    }

    public void setScreenOnWhilePlaying(boolean z) {
        DebugLog.i(getLogTag(), "setScreenOnWhilePlaying in. screenOn:" + z);
        this.mMediaPlayer.a(z);
        DebugLog.i(getLogTag(), "setScreenOnWhilePlaying out.");
    }

    public void setSeekAutoStartAfterComplete(boolean z) {
        setConfig(2020080601, z ? 1 : 0);
    }

    public void setSkipLoopFilter(SkipLoopFilterType skipLoopFilterType) {
        h hVar;
        int i;
        this.mSkipLoopFilterType = skipLoopFilterType;
        int i2 = AnonymousClass28.$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$SkipLoopFilterType[skipLoopFilterType.ordinal()];
        if (i2 == 1) {
            hVar = this.mMediaPlayer;
            i = 0;
        } else if (i2 == 2) {
            hVar = this.mMediaPlayer;
            i = 8;
        } else if (i2 == 3) {
            hVar = this.mMediaPlayer;
            i = 16;
        } else if (i2 == 4) {
            hVar = this.mMediaPlayer;
            i = 32;
        } else {
            if (i2 != 5) {
                return;
            }
            hVar = this.mMediaPlayer;
            i = 48;
        }
        hVar.a(2016021701, i);
    }

    public int setSmoothKeyFrameInfo(byte[] bArr, String str, String str2) {
        DebugLog.i(getLogTag(), "setSmoothKeyFrameInfoBuf in");
        if (StringUtil.isEmpty(str) || StringUtil.isEmpty(str2) || bArr == null || bArr.length <= 0) {
            DebugLog.i(getLogTag(), "setSmoothKeyFrameInfoBuf info error");
            return -1;
        }
        synchronized (this.mSwitchSmoothSourceLocker) {
            try {
                String keyFrameMapKey = getKeyFrameMapKey(str, str2);
                if (!matchSwitchedSmoothSource(keyFrameMapKey)) {
                    DebugLog.i(getLogTag(), "setSmoothKeyFrameInfoBuf not matchSwitchedSmoothSource key:" + keyFrameMapKey + " put into map size:" + this.mSmoothKeyFrameMap.size());
                    this.mSmoothKeyFrameMap.put(keyFrameMapKey, bArr);
                    return 0;
                }
                DebugLog.i(getLogTag(), "setSmoothKeyFrameInfoBuf matchSwitchedSmoothSource key:" + keyFrameMapKey);
                if (KeyFrameInfoUtils.isKeyFrameDataValid(bArr, this.mSwitchedSmoothSource.videoFileHash) != 0) {
                    DebugLog.i(getLogTag(), "setSmoothKeyFrameInfoBuf isKeyFrameDataValid error");
                    return -2;
                }
                int keyFrameInfoFileBuf = setKeyFrameInfoFileBuf(bArr);
                this.mSmoothKeyFrameMap.clear();
                return keyFrameInfoFileBuf;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setSubtitleCallback(ISubtitle.SubtitleCallback subtitleCallback) {
        this.mSubtitleCallback = subtitleCallback;
    }

    @TargetApi(14)
    public void setSurface(Surface surface) {
        this.mMediaPlayer.a(surface);
    }

    public void setSurfaceHolder(IMgtvRenderView.ISurfaceHolder iSurfaceHolder) throws InvalidParameterException {
        setSurfaceHolder(iSurfaceHolder, -1);
    }

    public void setTimeout(int i, int i2, int i3) {
        if (i > 0) {
            this.mConnectTimeOutMs = i;
        }
        if (i2 > 0) {
            this.mReceiveDataTimeOutMs = i2;
        }
        if (i3 > 0) {
            this.mBufferTimeoutMs = i3;
        }
        int i4 = this.mConnectTimeOutMs;
        if (i4 > 0) {
            this.mMediaPlayer.a(201507061, i4);
        }
        int i5 = this.mReceiveDataTimeOutMs;
        if (i5 > 0) {
            this.mMediaPlayer.a(201507062, i5);
        }
    }

    public void setTsFlowTag(String str) {
        if (StringUtil.isEmpty(str)) {
            str = "";
        }
        ReportParams reportParams = this.mReportParams;
        if (reportParams != null) {
            reportParams.setFlowt(str);
        }
        this.mMediaPlayer.a(2021031001, str);
    }

    public void setVideoFrameClockNotifyMs(int i) {
        this.mVideoFrameClockNotifyMs = i;
        if (i > 0) {
            this.mMediaPlayer.h(i);
        }
    }

    public void setVideoFrameClockNotifyPts(long j, long j2) {
        this.mVideoFrameClockNotifyType = 2;
        this.mVideoFrameClockNotifyTimeStart = j;
        this.mVideoFrameClockNotifyTimeEnd = j2;
        this.mMediaPlayer.a(j, j2);
    }

    public void setVolume(float f, float f2) {
        DebugLog.i(getLogTag(), "setVolume leftVolume:" + f + ",rightVolume:" + f2);
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.a(f, f2);
        }
    }

    public synchronized void setWanosAudioEffectChoice(int i) {
        try {
            if (this.isExAudioEnable || this.isUserAudioEnable) {
                if (this.mMediaPlayer != null) {
                    DebugLog.i(getLogTag(), "setWanosAudioEffectChoice value:" + i);
                    this.mMediaPlayer.i(i);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public int setWanosAudioEffectConfig(byte[] bArr) {
        if (Constants.FOR_OTT) {
            if (this.mMediaPlayer == null) {
                return -999;
            }
            if (bArr != null) {
                DebugLog.i(getLogTag(), "setWanosAudioEffectConfig size:" + bArr.length);
                return this.mMediaPlayer.b(bArr);
            }
        } else {
            if (!this.isExAudioEnable || this.mMediaPlayer == null) {
                return -999;
            }
            if (bArr != null) {
                DebugLog.i(getLogTag(), "setWanosAudioEffectConfig size:" + bArr.length);
                int iB = this.mMediaPlayer.b(bArr);
                autoWanosAudioEffectChoice();
                return iB;
            }
        }
        DebugLog.i(getLogTag(), "setWanosAudioEffectConfig null");
        return -999;
    }

    public void start() throws IllegalStateException {
        DebugLog.i(getLogTag(), "start player");
        this.mMediaPlayer.c();
        this.mPreBufferState.changeState(3);
        if (!this.mIsBuffering) {
            this.mPlayTicker.resume();
        }
        this.mBufferTick.resume();
        GifRecorder gifRecorder = this.mGifRecorder;
        if (gifRecorder != null) {
            gifRecorder.resume();
        }
        com.hunantv.media.player.subtitle.e eVar = this.mTimeProvider;
        if (eVar != null) {
            eVar.a(false);
        }
        this.mPlayStatus = PlayStatus.PLAYING;
    }

    public void startAVDecoder() {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            hVar.b(90003, 1L);
        }
    }

    public void startRecVideo(String str) {
        int i;
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        try {
            this.mMediaPlayer.c(str);
        } catch (IOException unused) {
            i = 10001;
            callbackRecordError(i, 0);
        } catch (IllegalArgumentException unused2) {
            i = 10002;
            callbackRecordError(i, 0);
        } catch (IllegalStateException unused3) {
            i = 10003;
            callbackRecordError(i, 0);
        } catch (Exception unused4) {
            i = 10000;
            callbackRecordError(i, 0);
        }
    }

    public void stop() throws IllegalStateException {
        DebugLog.i(getLogTag(), "stop player");
        com.hunantv.media.report.a aVar = this.mReporter;
        if (aVar != null) {
            aVar.c();
        }
        resetData();
        this.mIsVideoRendered = false;
        this.mMediaPlayer.b();
        stopTickers();
    }

    public void stopRecVideo() {
        int i;
        try {
            this.mMediaPlayer.ae();
        } catch (IOException unused) {
            i = 10001;
            callbackRecordError(i, 1);
        } catch (IllegalArgumentException unused2) {
            i = 10002;
            callbackRecordError(i, 1);
        } catch (IllegalStateException unused3) {
            i = 10003;
            callbackRecordError(i, 1);
        } catch (Exception unused4) {
            i = 10000;
            callbackRecordError(i, 1);
        }
    }

    public boolean supportImgoAIQE(ImgoAIQE imgoAIQE) {
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            return hVar.a(imgoAIQE.ImgoAIQE_w, imgoAIQE.ImgoAIQE_h, imgoAIQE.ImgoAIQE_def);
        }
        return false;
    }

    public float supportMaxSpeed(boolean z) {
        if (UrlUtil.isLocal(getPlayingOriginUrl())) {
            return 2.0f;
        }
        return MgtvPlayerSupporter.getMaxSpeedExt(this.mLastVideoWidth, this.mLastVideoHeight, this.mRecordVfps, getCurrentSourceCodecType(), z);
    }

    public void switchLoopSource(int i, String str, IP2pTask iP2pTask, String str2, int i2) {
        MgtvPlayerListener.OnErrorListener onErrorListener;
        int i3;
        if (this.mPlayerMode == 2) {
            try {
                doReportPV();
                String strReplaceUrlSftcNoP2p = FlowReportProcessor.replaceUrlSftcNoP2p(str, this.mReportParams);
                String strReplaceUrlSftcNoP2p2 = FlowReportProcessor.replaceUrlSftcNoP2p(str2, this.mReportParams);
                setDataSourceBefore(strReplaceUrlSftcNoP2p, iP2pTask);
                int iA = this.mMediaPlayer.a(i, strReplaceUrlSftcNoP2p, iP2pTask, strReplaceUrlSftcNoP2p2, this.mLoopSourceKey.incrementAndGet(), i2);
                if (iA != 0) {
                    this.mErrorListener.onError(MGTVMEDIA_ERROR_WHAT_200100, Math.abs(iA) + MGTVMEDIA_ERROR_EXTRA_400100);
                }
            } catch (IllegalStateException e) {
                e.printStackTrace();
                onErrorListener = this.mErrorListener;
                i3 = MGTVMEDIA_ERROR_EXTRA_400198;
                onErrorListener.onError(MGTVMEDIA_ERROR_WHAT_200100, i3);
            } catch (OutOfMemoryError e2) {
                e2.printStackTrace();
                onErrorListener = this.mErrorListener;
                i3 = MGTVMEDIA_ERROR_EXTRA_400199;
                onErrorListener.onError(MGTVMEDIA_ERROR_WHAT_200100, i3);
            }
        }
    }

    public void switchP2pVideoSource(int i, String str, IP2pTask iP2pTask, String str2, int i2, int i3, int i4) throws IllegalStateException, IOException, IllegalArgumentException {
        this.mMediaPlayer.a(i, str, iP2pTask, str2, i2, i3, i4);
        this.mSourceSwitching = true;
        this.mSourceSwitchingComplete = false;
        this.mSwitchingPrepared = false;
        doReportSLPV();
    }

    public void switchSmoothSource(SmoothMediaSource smoothMediaSource) {
        synchronized (this.mSwitchSmoothSourceLocker) {
            try {
                if (smoothMediaSource == null) {
                    DebugLog.e(getLogTag(), "switchSmoothSource is null");
                    return;
                }
                smoothMediaSource.bind(this);
                DebugLog.e(getLogTag(), "switchSmoothSource key is:" + smoothMediaSource.getKey());
                int iA = this.mMediaPlayer.a(smoothMediaSource);
                if (iA == 0) {
                    this.mSourceSwitching = true;
                    this.mSmoothSourcesRecord.put(Integer.valueOf(smoothMediaSource.getKey()), smoothMediaSource);
                    this.mSwitchingSmoothSource = smoothMediaSource;
                    this.mSourceSwitchingComplete = false;
                    this.mSwitchingPrepared = false;
                } else {
                    notifySwitchSmoothSourceFail(smoothMediaSource, WHAT_SMOOTHSOURCE_FAIL, iA);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void switchVideoSource(String str, int i, int i2, int i3) throws IllegalStateException, IOException, IllegalArgumentException {
        this.mMediaPlayer.b(str, i, i2, i3);
        this.mSourceSwitching = true;
        this.mSourceSwitchingComplete = false;
        this.mSwitchingPrepared = false;
        doReportSLPV();
    }

    public MgtvMediaPlayer(int i, Context context, Bundle bundle) throws SecurityException, UnsatisfiedLinkError, NullPointerException, OutOfMemoryError {
        this.mDebug = false;
        this.mPreBufferTimeoutMs = 1800000;
        this.mBufferTimeoutMs = 180000;
        this.mImgoMediaPlayerAudioMode = false;
        this.mAccurateSeekEnable = true;
        this.mAccSeekKeyFrameInterval = 1000;
        this.mKeyframeSeekEnable = false;
        this.mInnerAutoRotateEnable = false;
        this.mWeakBufferSpeedKB = 1;
        this.mWeakBufferTimeoutMs = 120000;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 2;
        this.mPrepared = false;
        this.mIsBuffering = false;
        this.mErrorUrl = "";
        this.mLastRequestUrl = "";
        this.mLastDlSize = 0;
        this.mIsLive = false;
        this.mPlayerMode = 0;
        this.mLiveReopen = false;
        this.mLoopPlayerSwitchUrl = "";
        this.mHDJSwitchUrl = "";
        this.mDataSourceType = DataSourceType.TYPE_DATASOUCE_DEFAULT;
        this.mErrorExtraCodeStore = -1;
        this.mRecordVfps = 0.0f;
        this.mLastVideoWidth = 0;
        this.mLastVideoHeight = 0;
        this.mSkipLoopFilterType = SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mAddrinfoType = AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrinfoTimeoutMs = 0;
        this.mPrepared4StartMode = Prepared4StartMode.MODE_PREPARED4START_DEFAULT;
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            private boolean needInnerRetry(int i2, int i3) {
                return !MgtvMediaPlayer.this.mIsInnerRetrying && MgtvMediaPlayer.this.mMediaPlayer.v() == 2 && i2 == 200003 && i3 == 100606;
            }

            @Override
            public boolean onError(int i2, int i3) {
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onError what:" + i2 + ",extra:" + i3 + ",netType:" + NetPlayConfig.getNetworkType());
                if (MgtvMediaPlayer.this.mGifRecorder != null) {
                    MgtvMediaPlayer.this.mGifRecorder.interrupt(101);
                }
                if (MgtvMediaPlayer.this.isDnsCacheEnable()) {
                    MgtvMediaPlayer.this.checkAndCleanDnsCache(i2, i3);
                }
                if (needInnerRetry(i2, i3)) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onError needInnerRetry");
                    MgtvMediaPlayer.this.mIsInnerRetrying = true;
                    MgtvMediaPlayer.this.mRetryLastErrorCode = i3;
                    MgtvMediaPlayer.this.setPlayerReset(true);
                    if (MgtvMediaPlayer.this.mMediaPlayer.aj()) {
                        MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mMediaPlayer.H(), i2, i3, MgtvMediaPlayer.this.mMediaPlayer.v());
                    } else {
                        MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mMediaPlayer.H(), i2, i3);
                    }
                    return true;
                }
                MgtvMediaPlayer.this.beforeThrowError(i2, i3);
                MgtvMediaPlayer.this.reportErrorWarning(i2, i3);
                if (i2 != 7000006) {
                    MgtvMediaPlayer.this.reportError(i2, i3, "");
                }
                MgtvMediaPlayer.this.stopTickers();
                MgtvMediaPlayer.this.mPlayStatus = PlayStatus.ERROR;
                MgtvMediaPlayer.this.mErrorExtraCodeStore = i3;
                if (MgtvMediaPlayer.this.mOnErrorListener != null) {
                    return MgtvMediaPlayer.this.mOnErrorListener.onError(i2, i3);
                }
                return true;
            }
        };
        this.mIsGetPositionCallback = false;
        this.mPlayStatus = PlayStatus.IDLE;
        this.mRenderType = RenderType.NATIVE_WINDOW;
        this.mPlayTicker = new ExTicker(1000).setTypeStr(PlayAudioData.TAG_NEED_PLAY);
        this.mBufferTick = new ExTicker(1000).setTypeStr("buffer");
        this.mPlayerType = 2;
        this.mMainThreadID = -1L;
        this.mCacheReplaceMap = new LinkedHashMap();
        this.mIsInnerRetrying = false;
        this.mRetryLastErrorCode = 0;
        this.mRenderDisableWarnSended = false;
        this.mForceHttpDns = false;
        this.mHttpDnsNeedRetry = false;
        this.mJavaDnsEnable = false;
        this.mJavaDnsType = com.hunantv.media.player.a.a.b.FREE_HTTP_DNS;
        this.mHttpDnsEnable = false;
        this.mPlayerReset = true;
        this.mLoopPlayerReset = true;
        this.mLastUri = null;
        this.mLastHostErr = "00";
        this.mLastTcpErr = "00";
        this.mLastIpCount = 0;
        this.mLastIpIndex = -1;
        this.mLastDnsType = -1;
        this.mCurrentDnsDsc = "native";
        this.mEnableP2PHttpDns = false;
        this.mForceP2pHttpDns = false;
        this.mDnsThreadManager = new com.hunantv.media.player.a.d().a(new com.hunantv.media.player.a.d.b() {
            @Override
            public void updateIPs(String str, List<String> list) {
                P2pMgr.YfAddBackupIps(str, list, MgtvMediaPlayer.this.mForceP2pHttpDns);
            }
        });
        this.mAVSyncErrReported = false;
        this.mAVSyncErrSumReported = false;
        this.mAVSyncErrSum = 0;
        this.mAVSyncStartTimestamp = 0L;
        this.mPrepareAsyncTimeStampMs = 0L;
        this.mPreBufferState = new SyncStateMachine(1);
        this.mPreBufferMaxS = 5;
        this.mIsAudioExist = -1;
        this.mIsVsrOpen = -1;
        this.mIsNativePausedLoadData = 0;
        this.mIsWanosAudioEffectValid = false;
        this.mLastPosition = 0;
        this.mPositionLoged = false;
        this.mRealEncodeType = -1;
        this.mStreamFormatType = -1;
        this.mNotifyHandler = new MainNotifyHandler(this);
        this.mWillOpenUrl = "";
        this.mReportedTSLAN = false;
        this.mDnsLock = new Object();
        this.mIsP2pTSSkipReport = false;
        this.mCodecName = "n";
        this.mVVbuft = -1;
        this.mEnableJAVAIPCacheMap = false;
        this.mIPCacheMap = new HashMap();
        this.mVideoFrameClockNotifyMs = -1;
        this.mVideoFrameClockNotifyType = -1;
        this.mVideoFrameClockNotifyTimeStart = -1L;
        this.mVideoFrameClockNotifyTimeEnd = -1L;
        this.mCacheReportTag = "default";
        this.mCacheReportLerr = 0;
        this.mEnableDnsNoNetStrategy = false;
        this.mDnsNoNetWaiter = new Object();
        this.mLastIsNetworkAvailableNNS = true;
        this.mDnsNoNetMaxRetry = 20;
        this.mLastTsSkipErrExtra = 0;
        this.fstime = "n/n";
        this.mcColorFormat = "n_n";
        this.isFlowReportEnable = false;
        this.vsri = "0|0_0|0_0";
        this.vsrver = "n";
        this.vsrvkver = "n";
        this.mSourceNetListner = new MgtvPlayerListener.OnSourceNetHandledListener() {
            public static final int REPORT_HTTP_DNS_INTERRUPT = -2;
            public static final int REPORT_HTTP_DNS_PV = 0;
            private boolean mIsPauseLoad = false;

            private void checkErrorCode(int i2, int i3, Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                int i4 = bundle2.getInt("retry_counter");
                MgtvMediaPlayer.this.mSourceRetryCount = i4;
                MgtvMediaPlayer.this.mSourceRetryCode = i3;
                if (MgtvMediaPlayer.this.isDnsCacheEnable() && i4 >= 1 && MgtvMediaPlayer.this.checkAndCleanDnsCache(i2, i3)) {
                    MgtvMediaPlayer.this.mHttpDnsEnable = true;
                }
            }

            private boolean didHDJSwitch(Bundle bundle2) {
                if (MgtvMediaPlayer.this.mHDJSwitchUrl.length() <= 0 || bundle2 == null) {
                    return false;
                }
                bundle2.putString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_URL_STRING, MgtvMediaPlayer.this.mHDJSwitchUrl);
                bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_IS_LAST_INT, 1);
                MgtvMediaPlayer.this.mHDJSwitchUrl = "";
                return true;
            }

            private void didHostAddr(Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                int i2 = bundle2.getInt("host_error");
                int i3 = bundle2.getInt("host_family");
                String string = bundle2.getString("host_hostname");
                String string2 = bundle2.getString("host_ip");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback didHostAddr error:" + i2 + ",family:" + i3 + ",hostname:" + string + ",ip_list:" + string2 + ",port:" + bundle2.getInt("host_port") + ",hostDnsType:" + MgtvMediaPlayer.this.mLastDnsType = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_HOST_ARRR_DNS_TYPE_INT));
                MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                StringBuilder sb = new StringBuilder();
                sb.append(i2);
                sb.append("");
                mgtvMediaPlayer.mLastHostErr = sb.toString();
                MgtvMediaPlayer.this.mLastIpIndex = 0;
                try {
                    String[] strArrSplit = string2.split(ProcessInfo.SPLIT_NEW_VERSION);
                    MgtvMediaPlayer.this.mLastIpCount = 0;
                    if (strArrSplit != null) {
                        for (String str : strArrSplit) {
                            if (com.hunantv.media.player.a.e.e(str)) {
                                MgtvMediaPlayer.access$4208(MgtvMediaPlayer.this);
                            }
                        }
                    }
                    MgtvMediaPlayer.this.mLastIps = strArrSplit;
                    if (!MgtvMediaPlayer.this.mEnableJAVAIPCacheMap || i2 != 0 || MgtvMediaPlayer.this.mIPCacheMap.containsKey(string) || strArrSplit == null || strArrSplit.length <= 0) {
                        return;
                    }
                    IPList iPList = new IPList(string, strArrSplit);
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didHostAddr put:" + string + "-" + IPList.formatIPList(iPList.nUseList));
                    MgtvMediaPlayer.this.mIPCacheMap.put(string, iPList);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            private boolean didLiveOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return false;
                }
                return onLiveWillOpen(bundle2);
            }

            private boolean didLiveReopen(Bundle bundle2) {
                boolean z = MgtvMediaPlayer.this.mLiveReopen;
                if (MgtvMediaPlayer.this.mLiveReopen) {
                    MgtvMediaPlayer.this.mLiveReopen = false;
                }
                return z;
            }

            private boolean didLoopOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return false;
                }
                return onLiveWillOpen(bundle2);
            }

            private boolean didLoopReopen(Bundle bundle2) {
                if (MgtvMediaPlayer.this.mLoopPlayerSwitchUrl.length() <= 0) {
                    return false;
                }
                bundle2.putString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_URL_STRING, MgtvMediaPlayer.this.mLoopPlayerSwitchUrl);
                MgtvMediaPlayer.this.mLoopPlayerSwitchUrl = "";
                return true;
            }

            private void didTcpOpen(Bundle bundle2) {
                StringBuilder sb;
                IPList iPList;
                if (bundle2 == null) {
                    return;
                }
                int i2 = bundle2.getInt("port");
                int i3 = bundle2.getInt("family");
                int i4 = bundle2.getInt("error");
                String string = bundle2.getString("ip");
                String string2 = bundle2.getString("tcp_hostname");
                long j = bundle2.getLong("switch_key");
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "didTcpOpen switch_key:" + j);
                if (MgtvMediaPlayer.this.mMediaPlayer != null && MgtvMediaPlayer.this.mMediaPlayer.I() != null) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "didTcpOpen origin:" + MgtvMediaPlayer.this.mMediaPlayer.I());
                }
                String logTag = MgtvMediaPlayer.this.getLogTag();
                if (i4 != 0) {
                    sb = new StringBuilder();
                    sb.append("chodison didTcpOpen port:");
                    sb.append(i2);
                    sb.append(",family:");
                    sb.append(i3);
                    sb.append(",error_code:");
                    sb.append(i4);
                    sb.append(",ip:");
                    sb.append(string);
                    sb.append(",hostname:");
                    sb.append(string2);
                    DebugLog.e(logTag, sb.toString());
                } else {
                    sb = new StringBuilder();
                    sb.append("chodison didTcpOpen port:");
                    sb.append(i2);
                    sb.append(",family:");
                    sb.append(i3);
                    sb.append(",ip:");
                    sb.append(string);
                    sb.append(",hostname:");
                    sb.append(string2);
                    DebugLog.i(logTag, sb.toString());
                }
                MgtvMediaPlayer.this.mLastTcpErr = i4 + "";
                MgtvMediaPlayer.this.mLastTcpIP = string;
                MgtvMediaPlayer.access$2808(MgtvMediaPlayer.this);
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap) {
                    try {
                        if (!MgtvMediaPlayer.this.mIPCacheMap.containsKey(string2) || (iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(string2)) == null) {
                            return;
                        }
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didTcpOpen remove " + string + " from " + string2);
                        iPList.nUseList.remove(string);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didTcpOpen rest ip:" + IPList.formatIPList(iPList.nUseList));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }

            private boolean doNetHttpWillOpenFailed(int i2, int i3, Bundle bundle2) {
                boolean z;
                List<String> list;
                String logTag;
                String str;
                checkErrorCode(i2, i3, bundle2);
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                int i4 = bundle2.getInt("cur_dl_dize");
                if (isInitMp4(MgtvMediaPlayer.this.mErrorUrl)) {
                    MgtvMediaPlayer.this.mIsInitMp4Error = true;
                } else {
                    MgtvMediaPlayer.this.mIsInitMp4Error = false;
                }
                int i5 = bundle2.getInt("retry_counter");
                if (UrlUtil.isFilePrefix(MgtvMediaPlayer.this.mErrorUrl) && !MgtvMediaPlayer.this.mCacheReplaceMap.isEmpty()) {
                    if (MgtvMediaPlayer.this.mOnWarningListener != null) {
                        MgtvMediaPlayer.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_TS_CACHE_SKIP, i3 + "", MgtvMediaPlayer.this.mErrorUrl, null);
                    }
                    String str2 = (String) MgtvMediaPlayer.this.mCacheReplaceMap.get(MgtvMediaPlayer.this.mErrorUrl);
                    if (str2 != null) {
                        MgtvMediaPlayer.access$7408(MgtvMediaPlayer.this);
                        MgtvMediaPlayer.this.mErrorUrl = str2;
                        bundle2.putString("url", str2);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed replace local_url to " + str2);
                    }
                }
                bundle2.getString("player_hash");
                int i6 = bundle2.getInt("io_type");
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3));
                if (isENETUNREACHcode(i2, i3) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i2, i3))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3));
                    return true;
                }
                synchronized (MgtvMediaPlayer.this.mDnsNoNetWaiter) {
                    if (!isPlayerReset() && MgtvMediaPlayer.this.mEnableDnsNoNetStrategy && isDnsError(i2, i3)) {
                        boolean zC = com.hunantv.media.report.c.d.c(MgtvMediaPlayer.this.mContext);
                        if (!zC) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 1000 in");
                            try {
                                MgtvMediaPlayer.this.mDnsNoNetWaiter.wait(1000L);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str = "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 1000 out";
                            DebugLog.i(logTag, str);
                            z = true;
                        } else if (!zC || MgtvMediaPlayer.this.mLastIsNetworkAvailableNNS) {
                            z = false;
                        } else {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 3000 in");
                            try {
                                MgtvMediaPlayer.this.mDnsNoNetWaiter.wait(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str = "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 3000 out";
                            DebugLog.i(logTag, str);
                            z = true;
                        }
                        MgtvMediaPlayer.this.mLastIsNetworkAvailableNNS = zC;
                    } else {
                        z = false;
                    }
                }
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed mIsLive:" + MgtvMediaPlayer.this.mIsLive + ",mPlayerMode:" + MgtvMediaPlayer.this.mPlayerMode + ",mPrepared:" + MgtvMediaPlayer.this.mPrepared + ",mIsBuffering:" + MgtvMediaPlayer.this.mIsBuffering + ",mTsNotSkip:" + MgtvMediaPlayer.this.mTsNotSkip + ",mLoadMaxRetryTime:" + MgtvMediaPlayer.this.mLoadMaxRetryTime + ",mPlayStatus:" + MgtvMediaPlayer.this.mPlayStatus + ",lip:" + MgtvMediaPlayer.this.getLastIP());
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                if ((!MgtvMediaPlayer.this.mIsLive || MgtvMediaPlayer.this.isVod()) && MgtvMediaPlayer.this.mPlayerMode != 1) {
                    if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && (i3 == 100911 || i3 == 300021 || CodeUtil.isHttp4XX(i2, i3) || CodeUtil.isHttp5XX(i2, i3))) {
                        String hostName = UrlUtil.getHostName(UrlUtil.getValidHttpUrl(bundle2.getString("url")));
                        if (!StringUtil.isEmpty(hostName) && !com.hunantv.media.player.a.e.a(hostName) && MgtvMediaPlayer.this.mIPCacheMap.containsKey(hostName)) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http contains host:" + hostName);
                            IPList iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(hostName);
                            if (iPList != null && iPList.checkTTL() && (list = iPList.nUseList) != null && list.size() > 0) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http check ttl success." + iPList);
                                if (i5 >= 6) {
                                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http return false.not retry");
                                    reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                                    return false;
                                }
                                bundle2.putString("user_msg", MgtvMediaPlayer.USER_MSG_FLAG_USE_CACHE);
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http return true.try to goto ip choose");
                                reportHttpErrorPV(i5, MgtvMediaPlayer.this.mErrorUrl, i3, "ipcache");
                                return true;
                            }
                        }
                    }
                    reportHttpErrorPV(i5, MgtvMediaPlayer.this.mErrorUrl, i3, "default");
                    if (z) {
                        if (i5 < MgtvMediaPlayer.this.mDnsNoNetMaxRetry) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy retry cause by inDnsNetStrategy");
                            return true;
                        }
                        reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy skip retry cause by errorRetryCount >= mDnsNoNetMaxRetry");
                        return false;
                    }
                    if (!MgtvMediaPlayer.this.mPrepared) {
                        if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl)) {
                            if (i5 < 2) {
                                return true;
                            }
                            reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                            return false;
                        }
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && isInitMp4(MgtvMediaPlayer.this.mErrorUrl) && i4 > 0 && i5 < 10) {
                            return true;
                        }
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i5 < MgtvMediaPlayer.this.mLoadMaxRetryTime) {
                            return true;
                        }
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                        mgtvMediaPlayer.callbackTsSkip(mgtvMediaPlayer.mErrorUrl, i2, i3);
                        reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                        return false;
                    }
                    if (MgtvMediaPlayer.this.mTsNotSkip && MgtvMediaPlayer.this.isRendered()) {
                        return true;
                    }
                } else {
                    if (!MgtvMediaPlayer.this.mPrepared) {
                        if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl)) {
                            return i5 < 2;
                        }
                        MgtvMediaPlayer mgtvMediaPlayer2 = MgtvMediaPlayer.this;
                        mgtvMediaPlayer2.callbackTsSkip(mgtvMediaPlayer2.mErrorUrl, i2, i3);
                        return false;
                    }
                    if (MgtvMediaPlayer.this.mIsBuffering && MgtvMediaPlayer.this.isHLSPlayingUrl() && i5 >= 1) {
                        if (UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) {
                            MgtvMediaPlayer mgtvMediaPlayer3 = MgtvMediaPlayer.this;
                            mgtvMediaPlayer3.callbackTsSkip(mgtvMediaPlayer3.mErrorUrl, i2, i3);
                        }
                        return false;
                    }
                }
                if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i5 < 2) {
                    return true;
                }
                if (UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) {
                    MgtvMediaPlayer mgtvMediaPlayer4 = MgtvMediaPlayer.this;
                    mgtvMediaPlayer4.callbackTsSkip(mgtvMediaPlayer4.mErrorUrl, i2, i3);
                }
                reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                return false;
            }

            private boolean doNewHttpWillOpen(Bundle bundle2) {
                int i2 = bundle2.getInt("error_type");
                int i3 = bundle2.getInt("error_code");
                bundle2.getInt("retry_counter");
                int i4 = bundle2.getInt("reset_iplist");
                MgtvMediaPlayer.this.mLastDlSize = bundle2.getInt("cur_dl_dize");
                bundle2.putString("user_msg", "init");
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && i4 == 1) {
                    MgtvMediaPlayer.this.clearIPCache();
                }
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doNewHttpWillOpen in error_what:" + i2 + ",error_extra:" + i3 + ",reset_iplist:" + i4 + ",mLastDlSize:" + MgtvMediaPlayer.this.mLastDlSize);
                bundle2.putInt("reset_iplist", 0);
                if (i3 == 0) {
                    MgtvMediaPlayer.this.mIsInitMp4Error = false;
                    if (i3 == 0 && MgtvMediaPlayer.this.mCacheEable) {
                        replaceUrlFromCache(bundle2);
                    }
                    return false;
                }
                boolean zDoNetHttpWillOpenFailed = doNetHttpWillOpenFailed(i2, i3, bundle2);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed return " + zDoNetHttpWillOpenFailed + StringUtils.COMMA + i2 + "-" + i3 + "-" + MgtvMediaPlayer.this.mErrorUrl);
                return zDoNetHttpWillOpenFailed;
            }

            private boolean doWillGetEnv(Bundle bundle2) {
                String string = bundle2.getString("env_key");
                if (string == null || string.length() <= 0) {
                    return false;
                }
                bundle2.putString("env_value", System.getenv(string));
                return true;
            }

            private boolean doWillHostAddr(Bundle bundle2) {
                List<String> list;
                if (bundle2 == null) {
                    return false;
                }
                int i2 = bundle2.getInt("addr_handle");
                String string = bundle2.getString("player_hash");
                int i3 = bundle2.getInt("retry_counter");
                String string2 = bundle2.getString("user_msg");
                String string3 = bundle2.getString("addr_hostname");
                long j = bundle2.getLong("switch_key");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback doWillHostAddr is_handle:" + i2 + ",hash:" + string + ",count_int:" + i3 + ",user_msg:" + string2 + ",hostname:" + string3 + ",switch_key:" + j);
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && i2 != 1 && MgtvMediaPlayer.USER_MSG_FLAG_USE_CACHE.equals(string2) && !com.hunantv.media.player.a.e.a(string3) && MgtvMediaPlayer.this.mIPCacheMap.containsKey(string3)) {
                    try {
                        IPList iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(string3);
                        if (iPList != null && (list = iPList.nUseList) != null && list.size() > 0 && iPList.checkTTL()) {
                            String str = iPList.nUseList.get(0);
                            if (com.hunantv.media.player.a.e.e(str)) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache doWillHostAddr put chooseip:" + str);
                                String iPList2 = IPList.formatIPList(iPList.nUseList);
                                if (!StringUtil.isEmpty(iPList2)) {
                                    DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback ipcache doWillHostAddr put srcIPListStr:" + iPList2);
                                    bundle2.putString("addr_hostname", iPList2);
                                }
                                bundle2.putString("addr_ip", str);
                                bundle2.putInt("addr_error", 0);
                                return false;
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                String string4 = bundle2.getString("addr_uri");
                if (com.hunantv.media.player.a.e.d(string3)) {
                    notifyIpIsLAN(MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "0", "hostname_" + string3);
                }
                boolean zA = com.hunantv.media.player.a.e.a(string3);
                boolean zC = com.hunantv.media.report.c.d.c(MgtvMediaPlayer.this.mContext);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doWillHostAddr hostname:" + string3 + ",isIp:" + zA);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doWillHostAddr is_handle=" + i2 + ",mBackJavaDns=" + MgtvMediaPlayer.this.mBackJavaDns + ",isIp=" + zA + ",mForceHttpDns:" + MgtvMediaPlayer.this.mForceHttpDns);
                if ((MgtvMediaPlayer.this.mForceHttpDns && !zA) || ((MgtvMediaPlayer.this.mJavaDnsEnable && !zA) || (i2 == 1 && MgtvMediaPlayer.this.mBackJavaDns && !zA))) {
                    if (zC) {
                        MgtvMediaPlayer.this.mLastUri = string4;
                        domainResolve(string3, bundle2, MgtvMediaPlayer.this.mForceHttpDns);
                    } else {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "skip domainResolve cause net not available");
                    }
                    return MgtvMediaPlayer.this.mPlayerReset;
                }
                if (i2 == 1 && zA) {
                    bundle2.putString("addr_ip", string3);
                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, 0);
                    bundle2.putInt("addr_error", 0);
                }
                return false;
            }

            private boolean doWillHttpOpen(Bundle bundle2) {
                if (bundle2 != null) {
                    MgtvMediaPlayer.this.mLastRequestUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                }
                if (MgtvMediaPlayer.this.mReportParams != null && (MgtvMediaPlayer.this.mReportParams.getVideoType().equals(ReportParams.VideoType.AD_PRE) || MgtvMediaPlayer.this.mReportParams.getVideoType().equals(ReportParams.VideoType.AD_MID))) {
                    return onNormalHttpWillOpen(bundle2);
                }
                if (bundle2 != null) {
                    MgtvMediaPlayer.this.mWillOpenUrl = bundle2.getString("url");
                }
                return doNewHttpWillOpen(bundle2);
            }

            private void domainResolve(String str, Bundle bundle2, boolean z) {
                com.hunantv.media.player.a.a.b bVarD;
                int iE;
                if (str == null || bundle2 == null) {
                    DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "skip domainResolve hostname or args is null");
                    return;
                }
                com.hunantv.media.player.a.a aVar = new com.hunantv.media.player.a.a();
                aVar.a(new com.hunantv.media.player.a.a.InterfaceC0133a() {
                    @Override
                    public void onDnsFail(com.hunantv.media.player.a.a aVar2) {
                    }

                    @Override
                    public void onDnsFinish(com.hunantv.media.player.a.a aVar2) {
                        synchronized (MgtvMediaPlayer.this.mDnsLock) {
                            MgtvMediaPlayer.this.mDnsLock.notifyAll();
                        }
                    }

                    @Override
                    public void onDnsStart(com.hunantv.media.player.a.a aVar2) {
                    }

                    @Override
                    public void onDnsSuc(com.hunantv.media.player.a.a aVar2, String[] strArr) {
                    }
                });
                boolean zResolveStrategy = resolveStrategy(aVar, str, bundle2, z, MgtvMediaPlayer.this.mHttpDnsNeedRetry);
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve use:" + zResolveStrategy);
                if (zResolveStrategy) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve use type:" + aVar.d());
                    notifyHttpDnsReport(aVar.d(), 2000, 0);
                }
                synchronized (MgtvMediaPlayer.this.mDnsLock) {
                    while (aVar.a() && !isJavaDnsInterrupt()) {
                        DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "domainResolve wait in");
                        try {
                            MgtvMediaPlayer.this.mDnsLock.wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "domainResolve wait out. resolving:" + aVar.a() + ",isJavaDnsInterrupt:" + isJavaDnsInterrupt());
                String[] strArrA = com.hunantv.media.player.a.e.a(aVar.b());
                aVar.c();
                String str2 = "costMs:" + aVar.f() + ";ips:" + com.hunantv.media.utils.StringUtil.formatArrayString(strArrA) + ";net:" + NetPlayConfig.getNetworkType() + ProcessInfo.SPLIT_NEW_VERSION;
                String iPList = IPList.formatIPList(strArrA);
                String str3 = (strArrA == null || strArrA.length <= 0) ? null : strArrA[0];
                int i2 = AnonymousClass28.$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType[aVar.d().ordinal()] != 1 ? 5 : 4;
                if (!isJavaDnsInterrupt() && com.hunantv.media.player.a.e.e(str3)) {
                    if (zResolveStrategy) {
                        updateCurrentDnsDsc(aVar.d());
                        if (com.hunantv.media.player.a.e.d(str3)) {
                            notifyHttpDnsReport(aVar.d(), 2001, 100, str2);
                        } else {
                            notifyHttpDnsReport(aVar.d(), 2001, 0, str2);
                        }
                    }
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve put iplist:" + iPList);
                    bundle2.putString("addr_hostname", iPList);
                    if (com.hunantv.media.player.a.e.e(str3)) {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve put firstIP:" + str3);
                        bundle2.putString("addr_ip", str3);
                    }
                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, i2);
                    bundle2.putInt("addr_error", 0);
                    return;
                }
                if (zResolveStrategy) {
                    if (isJavaDnsInterrupt() && aVar.e() == 0) {
                        bVarD = aVar.d();
                        iE = -2;
                    } else {
                        bVarD = aVar.d();
                        iE = aVar.e();
                    }
                    notifyHttpDnsReport(bVarD, 2002, iE, str2);
                    if (!isJavaDnsInterrupt()) {
                        int iA = aVar.a(199);
                        if (aVar.e() != 0) {
                            iA = aVar.e();
                        } else if (str3 != null && !com.hunantv.media.player.a.e.a(str3)) {
                            iA = aVar.a(107);
                        }
                        int i3 = -iA;
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), aVar.d() + "resolve putInt error:" + i3);
                        bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, i2);
                        bundle2.putInt("addr_error", i3);
                    }
                }
                MgtvMediaPlayer.this.mCurrentDnsDsc = "native";
            }

            private String findTsCachPath(String str, String[] strArr) {
                if (strArr == null) {
                    return null;
                }
                try {
                    String fileName = UrlUtil.getFileName(str);
                    for (String str2 : strArr) {
                        if (str2 != null && new File(str2).getName().equals(fileName)) {
                            return str2;
                        }
                    }
                } catch (Exception unused) {
                }
                return null;
            }

            private boolean isDnsError(int i2, int i3) {
                return i3 == 300600 || i2 == 400605 || MGTVP2pDirectMediaDataSource.isP2pDirectDnsError(i2, i3);
            }

            private boolean isENETUNREACHcode(int i2, int i3) {
                return i3 == 300005 || MGTVP2pDirectMediaDataSource.getShortErrorCode(i2, i3) == 101;
            }

            private boolean isInitMp4(String str) {
                return MgtvMediaPlayer.this.isHLSPlayingUrl() && UrlUtil.isSuffixUrl(str, Video.SUFFIX.SUFFIX_MP4);
            }

            private boolean isJavaDnsInterrupt() {
                return isPlayerReset();
            }

            private boolean isPlayerReset() {
                return MgtvMediaPlayer.this.mPlayerReset || (MgtvMediaPlayer.this.mPlayerMode == 2 && MgtvMediaPlayer.this.mLoopPlayerReset);
            }

            private void notifyHttpDnsReport(com.hunantv.media.player.a.a.b bVar, int i2, int i3) {
                notifyHttpDnsReport(bVar, i2, i3, "");
            }

            private void notifyIpIsLAN(String str, String str2) {
                if (MgtvMediaPlayer.this.mOnWarningListener == null || MgtvMediaPlayer.this.mReportParams == null || MgtvMediaPlayer.this.mReportParams.getVideoType() != ReportParams.VideoType.VOD) {
                    return;
                }
                if (!MgtvMediaPlayer.this.mReportedTSLAN) {
                    notifyMessage(1002, str, str2 + "_suffix_" + UrlUtil.getSuffix(MgtvMediaPlayer.this.mWillOpenUrl));
                }
                if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mWillOpenUrl)) {
                    return;
                }
                MgtvMediaPlayer.this.mReportedTSLAN = true;
            }

            private void notifyMessage(int i2, int i3, String str) {
                Message message = new Message();
                message.what = i2;
                message.arg1 = i3;
                message.obj = str;
                MgtvMediaPlayer.this.mNotifyHandler.sendMessage(message);
            }

            private boolean onLiveWillOpen(Bundle bundle2) {
                int i2 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERROR_WHAT_INT);
                int i3 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERROR_EXTRA_INT);
                MgtvMediaPlayer.this.mLastRequestUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_SRC_URL_STRING));
                if (i3 == 0) {
                    return false;
                }
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_SRC_URL_STRING));
                int i4 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_COUNTER_INT);
                int i5 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERR_IO_TYPE_INT);
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLiveWillOpen url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                if (isENETUNREACHcode(i2, i3) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i2, i3))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLiveWillOpen network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                    return true;
                }
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_LIVE_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                return !MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i4 < 2;
            }

            private boolean onLoopWillOpen(Bundle bundle2) {
                int i2 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERROR_WHAT_INT);
                int i3 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERROR_EXTRA_INT);
                if (i3 == 0) {
                    return false;
                }
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_SRC_URL_STRING));
                int i4 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_COUNTER_INT);
                int i5 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERR_IO_TYPE_INT);
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLoopWillOpen url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                if (isENETUNREACHcode(i2, i3) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i2, i3))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLoopWillOpen network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                    return true;
                }
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_LOOP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                return !MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i4 < 2;
            }

            private boolean onNormalHttpWillOpen(Bundle bundle2) {
                int i2 = bundle2.getInt("error_type");
                int i3 = bundle2.getInt("error_code");
                if (i3 == 0) {
                    return false;
                }
                checkErrorCode(i2, i3, bundle2);
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                bundle2.getString("player_hash");
                bundle2.getString("user_msg");
                int i4 = bundle2.getInt("retry_counter");
                int i5 = bundle2.getInt("io_type");
                long j = bundle2.getLong("switch_key");
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl switch_key:" + j);
                if (isENETUNREACHcode(i2, i3) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i2, i3))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                    return true;
                }
                if (MgtvMediaPlayer.this.mIsLive) {
                    if ((!MgtvMediaPlayer.this.mIsBuffering || !MgtvMediaPlayer.this.isHLSPlayingUrl() || !UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) && MgtvMediaPlayer.this.mPrepared) {
                        UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl);
                        DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_HTTP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3)) {
                            return true;
                        }
                    }
                } else if (!MgtvMediaPlayer.this.mIsBuffering && MgtvMediaPlayer.this.mPrepared) {
                    DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_HTTP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                    if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i4 < 2) {
                        return true;
                    }
                }
                MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                mgtvMediaPlayer.callbackTsSkip(mgtvMediaPlayer.mErrorUrl, i2, i3);
                return false;
            }

            private boolean replaceUrlFromCache(Bundle bundle2) {
                String string = bundle2.getString("url");
                if (!UrlUtil.isFilePrefix(string) && !UrlUtil.isLocal(string)) {
                    String fileName = UrlUtil.getFileName(string);
                    if (StringUtil.isEmpty(fileName)) {
                        return false;
                    }
                    DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache try to find replace cache:" + string);
                    String strFindTsCachPath = null;
                    if (UrlUtil.isM3u8(string)) {
                        String str = MgtvMediaPlayer.this.mCacheM3u8Path;
                        String fileName2 = UrlUtil.getFileName(str);
                        if (!StringUtil.isEmpty(str) && !StringUtil.isEmpty(fileName2) && fileName2.equals(fileName)) {
                            strFindTsCachPath = str;
                        }
                    } else if (MgtvMediaPlayer.this.isHLSPlayingUrl() && UrlUtil.isSegment(string)) {
                        strFindTsCachPath = findTsCachPath(string, MgtvMediaPlayer.this.mCacheTsPaths);
                    }
                    if (FileUtil.exist(strFindTsCachPath)) {
                        String strAddLocalPrefix = UrlUtil.addLocalPrefix(strFindTsCachPath);
                        if (!StringUtil.isEmpty(strAddLocalPrefix)) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache from " + string);
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache to " + strAddLocalPrefix);
                            bundle2.putString("url", strAddLocalPrefix);
                            if (UrlUtil.isM3u8(string)) {
                                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache put SRC_URL " + string);
                                bundle2.putString("src_url", string);
                            }
                            MgtvMediaPlayer.this.mCacheReplaceMap.put(strAddLocalPrefix, string);
                            return true;
                        }
                    }
                }
                return false;
            }

            private void reportHttpErrorErr(int i2, String str) {
                if ((isInitMp4(str) || UrlUtil.isM3u8(str)) && MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.getVideoType() == ReportParams.VideoType.VOD && MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.NO_PROXY && MgtvMediaPlayer.this.mOnWarningListener != null) {
                    String strG = MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "00";
                    MgtvPlayerListener.OnWarningListener onWarningListener = MgtvMediaPlayer.this.mOnWarningListener;
                    String str2 = i2 + Consts.DOT + MgtvMediaPlayer.this.mCacheReportLerr;
                    StringBuilder sb = new StringBuilder();
                    sb.append("psuuid_");
                    sb.append(strG);
                    sb.append("_render_");
                    sb.append(MgtvMediaPlayer.this.isRendered() ? "1" : "0");
                    sb.append("_url_");
                    sb.append(str);
                    sb.append("_type_");
                    sb.append(MgtvMediaPlayer.this.mCacheReportTag);
                    onWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTP_ERROR_ERR, str2, sb.toString(), null);
                }
            }

            private void reportHttpErrorPV(int i2, String str, int i3, String str2) {
                if (i2 == 0) {
                    MgtvMediaPlayer.this.mCacheReportTag = "default";
                    MgtvMediaPlayer.this.mCacheReportLerr = 0;
                }
                if (i2 == 0) {
                    if ((isInitMp4(str) || UrlUtil.isM3u8(str)) && MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.getVideoType() == ReportParams.VideoType.VOD && MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.NO_PROXY && MgtvMediaPlayer.this.mOnWarningListener != null) {
                        String strG = MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "00";
                        MgtvMediaPlayer.this.mCacheReportTag = str2;
                        MgtvMediaPlayer.this.mCacheReportLerr = i3;
                        MgtvPlayerListener.OnWarningListener onWarningListener = MgtvMediaPlayer.this.mOnWarningListener;
                        String str3 = i3 + "";
                        StringBuilder sb = new StringBuilder();
                        sb.append("psuuid_");
                        sb.append(strG);
                        sb.append("_render_");
                        sb.append(MgtvMediaPlayer.this.isRendered() ? "1" : "0");
                        sb.append("_url_");
                        sb.append(str);
                        sb.append("_type_");
                        sb.append(str2);
                        onWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTP_ERROR_PV, str3, sb.toString(), null);
                    }
                }
            }

            private boolean resolveStrategy(@NonNull com.hunantv.media.player.a.a aVar, @NonNull String str, Bundle bundle2) {
                return resolveStrategy(aVar, str, bundle2, false, false);
            }

            private void updateCurrentDnsDsc(com.hunantv.media.player.a.a.b bVar) {
                MgtvMediaPlayer mgtvMediaPlayer;
                String str;
                int i2 = AnonymousClass28.$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType[bVar.ordinal()];
                if (i2 == 1) {
                    mgtvMediaPlayer = MgtvMediaPlayer.this;
                    str = MgtvMediaPlayer.DNS_JAVA_NORMAL;
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    mgtvMediaPlayer = MgtvMediaPlayer.this;
                    str = MgtvMediaPlayer.DNS_JAVA_HTTPDNS;
                }
                mgtvMediaPlayer.mCurrentDnsDsc = str;
            }

            private void updateIp(String str) {
                String logTag;
                StringBuilder sb;
                String str2;
                if (MgtvMediaPlayer.this.mMediaPlayer == null || (!(MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) || MgtvMediaPlayer.this.mMediaPlayer.ai() == null)) {
                    if (MgtvMediaPlayer.this.mMediaPlayer == null || !((MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) && MgtvMediaPlayer.this.mMediaPlayer.ai() == null)) {
                        MgtvMediaPlayer.this.mLastIP = str;
                    } else {
                        MgtvMediaPlayer.this.mLastIP = "0.0.0.1";
                    }
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    str2 = "didTcpOpen tcp_ip:";
                } else {
                    com.mgtv.a.d taskInfo = P2pMgr.getTaskInfo(MgtvMediaPlayer.this.mMediaPlayer.ai());
                    if (taskInfo != null) {
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                        mgtvMediaPlayer.mLastIP = mgtvMediaPlayer.mLastP2pCdnIP = taskInfo.b;
                    } else {
                        MgtvMediaPlayer.this.mLastIP = null;
                    }
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    str2 = "didTcpOpen p2p QueryTaskInfo cdnIp:";
                }
                sb.append(str2);
                sb.append(MgtvMediaPlayer.this.mLastIP);
                DebugLog.d(logTag, sb.toString());
            }

            private void willTcpOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                String string = bundle2.getString("tcp_hostname");
                String string2 = bundle2.getString("ip");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback willTcpOpen tcp_hostname:" + string + ",tcp_ip:" + string2);
                MgtvMediaPlayer.this.mLastHostIP = string2;
                updateIp(string2);
                if (string2 == null || string2.length() <= 1 || !com.hunantv.media.player.a.e.d(string2)) {
                    return;
                }
                notifyIpIsLAN("1", MgtvMediaPlayer.this.getCurrentDnsDsc() + "_hostip_" + string2);
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override
            public boolean onSourceNetCtrl(int i2, Bundle bundle2) {
                IP2pTask iP2pTaskAi;
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.onSourceNetCtrl 0x%5x", Integer.valueOf(i2));
                switch (i2) {
                    case 131073:
                        willTcpOpen(bundle2);
                        return false;
                    case 131074:
                        didTcpOpen(bundle2);
                        return false;
                    case 131075:
                        return doWillHttpOpen(bundle2);
                    case 131077:
                        return didLiveOpen(bundle2);
                    case 131078:
                        return doWillHostAddr(bundle2);
                    case 131081:
                        return didLiveReopen(bundle2);
                    case 131088:
                        return didLoopOpen(bundle2);
                    case 131089:
                        return didLoopReopen(bundle2);
                    case 131090:
                        return didHDJSwitch(bundle2);
                    case 131104:
                        return doWillGetEnv(bundle2);
                    case 131120:
                        if (MgtvMediaPlayer.this.mPreBufferState.isEnable() && MgtvMediaPlayer.this.mPreBufferState.getState() == 2) {
                            this.mIsPauseLoad = true;
                            return true;
                        }
                        if (MgtvMediaPlayer.this.isSourceSwitching() || MgtvMediaPlayer.this.mMediaPlayer == null || (!(MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) || (iP2pTaskAi = MgtvMediaPlayer.this.mMediaPlayer.ai()) == null || iP2pTaskAi.getStatus() == 0)) {
                            if (this.mIsPauseLoad) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "CTRL_WILL_CHECK_PAUSE_LOAD will return false. will resume load");
                            }
                            this.mIsPauseLoad = false;
                            return false;
                        }
                        if (!this.mIsPauseLoad) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "CTRL_WILL_CHECK_PAUSE_LOAD will return true. will pause load");
                        }
                        this.mIsPauseLoad = true;
                        return true;
                    case 131184:
                        synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                            try {
                                if (bundle2 == null) {
                                    return false;
                                }
                                if (bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT) == 1) {
                                    if (MgtvMediaPlayer.this.mReporter != null) {
                                        MgtvMediaPlayer.this.mReporter.c();
                                    }
                                    int i3 = (int) bundle2.getLong(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_RETRY_KEY_LONG);
                                    SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1 find:" + i3);
                                    if (smoothMediaSource != null) {
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1 , will retry use :" + smoothMediaSource.getUrl());
                                        bundle2.putString("smooth_switch_url", smoothMediaSource.getUrl());
                                        if (smoothMediaSource.getReporter() != null) {
                                            smoothMediaSource.getReporter().a();
                                            if (MgtvMediaPlayer.this.mReportParams != null) {
                                                MgtvMediaPlayer.this.mReportParams.setPlaySessionId(smoothMediaSource.getReporter().g());
                                            }
                                        }
                                    } else {
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1, not found source");
                                    }
                                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT, 0);
                                    return true;
                                }
                                int i4 = (int) bundle2.getLong("smooth_switch_key");
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH switch_key:" + i4);
                                SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i4);
                                if (smoothMediaSourceMatchLastKeySource != null) {
                                    if (smoothMediaSourceMatchLastKeySource.isLastRetry() && MgtvMediaPlayer.this.mReportParams != null && (MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.ONLY_P2P || MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.P2P_DRM)) {
                                        SmoothMediaSource smoothMediaSource2 = new SmoothMediaSource(MgtvMediaPlayer.this.getPlayingOriginUrl());
                                        smoothMediaSource2.setReportParams(MgtvMediaPlayer.this.mReportParams);
                                        smoothMediaSource2.bind(MgtvMediaPlayer.this);
                                        smoothMediaSource2.setThrowErrorIfSwitchFailed(true);
                                        MgtvMediaPlayer.this.mSmoothSourcesRecord.put(Integer.valueOf(smoothMediaSource2.getKey()), smoothMediaSource2);
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth is last retry. will retry key:" + smoothMediaSource2.getKey());
                                        bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT, 1);
                                        bundle2.putLong(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_RETRY_KEY_LONG, (long) smoothMediaSource2.getKey());
                                    }
                                    if (!smoothMediaSourceMatchLastKeySource.isLastRetry()) {
                                        String string = bundle2.getString("smooth_switch_url");
                                        bundle2.putString("smooth_switch_url", string);
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH switch_url:" + string);
                                        if (!StringUtil.isEmpty(string)) {
                                            int iIndexOf = string.indexOf(",mgtvjsource:");
                                            String strSubstring = iIndexOf >= 0 ? string.substring(iIndexOf) : "";
                                            boolean zOnSwitchSmoothSourceWillUpdate = MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null ? MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceWillUpdate(smoothMediaSourceMatchLastKeySource) : false;
                                            if (smoothMediaSourceMatchLastKeySource.getReadType() != 2 && zOnSwitchSmoothSourceWillUpdate && !StringUtil.isEmpty(smoothMediaSourceMatchLastKeySource.useUpdateUrl())) {
                                                String str = smoothMediaSourceMatchLastKeySource.useUpdateUrl() + strSubstring;
                                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH will update url:" + str);
                                                bundle2.putString("smooth_switch_url", str);
                                            }
                                        }
                                    }
                                }
                                SmoothMediaSource smoothMediaSource3 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i4));
                                if (smoothMediaSource3 != null && smoothMediaSource3.getReporter() != null) {
                                    smoothMediaSource3.getReporter().a();
                                    if (MgtvMediaPlayer.this.mReportParams != null) {
                                        MgtvMediaPlayer.this.mReportParams.setPlaySessionId(smoothMediaSource3.getReporter().g());
                                    }
                                }
                                return true;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    default:
                        return false;
                }
            }

            @Override
            public void onSourceNetEvent(int i2, Bundle bundle2) {
                if (i2 != 78338) {
                    return;
                }
                didHostAddr(bundle2);
            }

            private void notifyHttpDnsReport(com.hunantv.media.player.a.a.b bVar, int i2, int i3, String str) {
                if (bVar != com.hunantv.media.player.a.a.b.FREE_HTTP_DNS || MgtvMediaPlayer.this.mOnWarningListener == null) {
                    return;
                }
                notifyMessage(i2, i3, str);
            }

            private void notifyMessage(int i2, String str, String str2) {
                Message message = new Message();
                message.what = i2;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MainNotifyHandler.BUNDLE_STR_INFO1, str);
                bundle2.putString(MainNotifyHandler.BUNDLE_STR_INFO2, str2);
                message.setData(bundle2);
                MgtvMediaPlayer.this.mNotifyHandler.sendMessage(message);
            }

            private boolean resolveStrategy(@NonNull com.hunantv.media.player.a.a aVar, @NonNull String str, Bundle bundle2, boolean z, boolean z2) {
                com.hunantv.media.player.a.a.b bVar;
                String logTag;
                String str2;
                if (z || (bundle2 != null && bundle2.getInt("addr_handle") == 1 && MgtvMediaPlayer.this.mBackJavaDns)) {
                    aVar.b(1);
                    bVar = com.hunantv.media.player.a.a.b.FREE_HTTP_DNS;
                } else {
                    if (MgtvMediaPlayer.this.isDnsCacheEnable()) {
                        if (MgtvMediaPlayer.this.mHttpDnsEnable) {
                            String strB = !StringUtil.isEmpty(MgtvMediaPlayer.this.mLastUri) ? com.hunantv.media.player.a.f.b(MgtvMediaPlayer.this.mLastUri) : null;
                            if (strB != null && !strB.trim().equals("")) {
                                logTag = MgtvMediaPlayer.this.getLogTag();
                                str2 = "resolveStrategy cache valid";
                            }
                        } else {
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str2 = "resolveStrategy cache valid and httpdns not open";
                        }
                        DebugLog.d(logTag, str2);
                        return false;
                    }
                    bVar = MgtvMediaPlayer.this.mJavaDnsType;
                }
                aVar.a(str, bVar, z2);
                return true;
            }
        };
        this.mLogTagKey = "";
        this.mEnableReport = true;
        this.p2pLocker = new Object();
        this.mSeekStartMs = -1L;
        this.mHw2SwType = Hw2SwType.NONE;
        this.mPlaybackSpeed = 1.0f;
        this.mRecordMaxPlaySpeed = 1.0f;
        this.mFrameListener = new MgtvPlayerListener.OnFrameListener() {
            @Override
            public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                synchronized (MgtvMediaPlayer.this.ptsLocker) {
                    try {
                        WeakHandler weakHandler = MgtvMediaPlayer.this.ptsWeakHandler;
                        if (weakHandler != null) {
                            weakHandler.removeMessages(256);
                            Message message = new Message();
                            message.what = 256;
                            message.obj = frameClock;
                            MgtvMediaPlayer.this.ptsWeakHandler.sendMessage(message);
                        }
                        if (MgtvMediaPlayer.this.mOnFrameListener != null) {
                            MgtvMediaPlayer.this.mOnFrameListener.onVFrameClockCome(frameClock);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.mInnerFlowDataStatistic = new FlowDataStatistic();
        this.mEnableImgoVsr = false;
        this.mLoopSourceKey = new AtomicInteger(1);
        this.mSubtitleSources = new ArrayList();
        this.ptsHandlerThread = null;
        this.ptsWeakHandler = null;
        this.ptsListeners = new HashSet();
        this.ptsLocker = new Object();
        this.mSmoothSourceListener = new d.n() {
            int lastSwitchingKey = -1;

            @Override
            public void onSmoothSwitchSourceComplete(d dVar, int i2, int i3, String str) {
                SmoothMediaSource smoothMediaSource;
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    try {
                        DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceComplete (type:" + i3 + ",key:" + i2 + ",msg:" + str + ")");
                        String logTag = MgtvMediaPlayer.this.getLogTag();
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSmoothSwitchSourceComplete current: ");
                        sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                        DebugLog.i(logTag, sb.toString());
                        for (Map.Entry entry : MgtvMediaPlayer.this.mSmoothSourcesRecord.entrySet()) {
                            if (((Integer) entry.getKey()).intValue() < i2 && (smoothMediaSource = (SmoothMediaSource) entry.getValue()) != null && !smoothMediaSource.isReleased()) {
                                smoothMediaSource.release();
                            }
                        }
                        MgtvMediaPlayer.this.mSmoothUseP2pFailed = false;
                        if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                            MgtvMediaPlayer.this.mMediaPlayer.c(false);
                        }
                        SmoothMediaSource smoothMediaSource2 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i2));
                        if (smoothMediaSource2 != null) {
                            if (!StringUtil.isEmpty(smoothMediaSource2.getVfps())) {
                                MgtvMediaPlayer.this.mRecordVfps = Float.parseFloat(smoothMediaSource2.getVfps());
                            }
                            MgtvMediaPlayer.this.mLastVideoWidth = smoothMediaSource2.getVideoWidth();
                            MgtvMediaPlayer.this.mLastVideoHeight = smoothMediaSource2.getVideoHeight();
                            if (MgtvMediaPlayer.this.mReporter != null) {
                                MgtvMediaPlayer.this.mReporter.c();
                            }
                            MgtvMediaPlayer.this.mReporter = smoothMediaSource2.getReporter();
                            if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                                MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mReporter);
                                MgtvMediaPlayer.this.mMediaPlayer.a(smoothMediaSource2.getReadType(), smoothMediaSource2.getUrl(), smoothMediaSource2.getPlayingUrl());
                                MgtvMediaPlayer.this.mMediaPlayer.h(smoothMediaSource2.getEnableImgoAIQE());
                            }
                            if (MgtvMediaPlayer.this.mDataSourceInfo != null) {
                                MgtvMediaPlayer.this.mDataSourceInfo.setVideoFormat(smoothMediaSource2.getVideoFormat());
                                MgtvMediaPlayer.this.mDataSourceInfo.setAudioFormat(smoothMediaSource2.getAudioFormat());
                                MgtvMediaPlayer.this.mDataSourceInfo.setFileFormat(smoothMediaSource2.getFileFormat());
                            }
                            if (MgtvMediaPlayer.this.mReporter != null) {
                                MgtvMediaPlayer.this.mReportParams.deepCopy(smoothMediaSource2.getReportParams());
                                MgtvMediaPlayer.this.mReporter.a(MgtvMediaPlayer.this.mReportParams);
                                MgtvMediaPlayer.this.mReporter.b();
                            }
                            String keyFrameMapKey = MgtvMediaPlayer.this.getKeyFrameMapKey(smoothMediaSource2.getVid(), smoothMediaSource2.getDef());
                            if (MgtvMediaPlayer.this.mSmoothKeyFrameMap.containsKey(keyFrameMapKey)) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "find smoothKeyFrameKey :" + keyFrameMapKey + " set to player");
                                byte[] bArr = MgtvMediaPlayer.this.mSmoothKeyFrameMap.get(keyFrameMapKey);
                                if (KeyFrameInfoUtils.isKeyFrameDataValid(bArr, smoothMediaSource2.videoFileHash) == 0) {
                                    MgtvMediaPlayer.this.setKeyFrameInfoFileBuf(bArr);
                                }
                            }
                        }
                        SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i2);
                        if (smoothMediaSourceMatchLastKeySource == null) {
                            DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceComplete matchKeySource failed");
                            return;
                        }
                        if (smoothMediaSourceMatchLastKeySource.getSwitchMod() == 1) {
                            MgtvMediaPlayer.this.mMediaPlayer.d(true);
                        }
                        MgtvMediaPlayer.this.mSwitchedSmoothSource = smoothMediaSourceMatchLastKeySource;
                        MgtvMediaPlayer.this.mSourceSwitchingComplete = true;
                        MgtvMediaPlayer.this.mSourceSwitching = false;
                        if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                            MgtvMediaPlayer.this.mMainFlowReportProcessor = smoothMediaSourceMatchLastKeySource.getFlowReportProcessor();
                            MgtvMediaPlayer.this.mMediaPlayer.a(smoothMediaSourceMatchLastKeySource.getP2pTask());
                            MgtvMediaPlayer.this.mMediaPlayer.b(smoothMediaSourceMatchLastKeySource.getReadType());
                        }
                        MgtvMediaPlayer.this.mSmoothKeyFrameMap.clear();
                        if (MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null) {
                            MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceSuccess(smoothMediaSourceMatchLastKeySource);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override
            public void onSmoothSwitchSourceFailed(d dVar, int i2, int i3, String str) {
                String[] strArrSplit;
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed (type:" + i3 + ",key:" + i2 + ",msg:" + str + ")");
                    String logTag = MgtvMediaPlayer.this.getLogTag();
                    StringBuilder sb = new StringBuilder();
                    sb.append("onSmoothSwitchSourceFailed current: ");
                    sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                    DebugLog.e(logTag, sb.toString());
                    int i4 = MgtvMediaPlayer.WHAT_SMOOTHSOURCE_FAIL;
                    int i5 = -1;
                    try {
                        if (!StringUtil.isEmpty(str) && (strArrSplit = str.split("-")) != null && strArrSplit.length >= 2) {
                            i4 = NumericUtil.parseInt(strArrSplit[0]);
                            i5 = NumericUtil.parseInt(strArrSplit[1]);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i2));
                    if (smoothMediaSource != null) {
                        if (smoothMediaSource.getReporter() != null) {
                            smoothMediaSource.getReporter().a(i4, i5, "");
                        }
                        if (MgtvMediaPlayer.this.mReportParams != null) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed mReportParams:" + MgtvMediaPlayer.this.mReportParams.getProxyType() + "-" + MgtvMediaPlayer.this.mReportParams.getP2ps());
                        }
                        if (smoothMediaSource.getReportParams() != null) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed currentSource.getReportParams():" + smoothMediaSource.getReportParams().getProxyType() + "-" + smoothMediaSource.getReportParams().getP2ps());
                        }
                        if (MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.isP2p() && smoothMediaSource.getReportParams() != null && smoothMediaSource.getReportParams().isP2p()) {
                            MgtvMediaPlayer.this.mSmoothUseP2pFailed = true;
                            if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                                MgtvMediaPlayer.this.mMediaPlayer.c(true);
                            }
                        }
                        if (smoothMediaSource.isThrowErrorIfSwitchFailed()) {
                            MgtvMediaPlayer.this.mErrorListener.onError(MgtvMediaPlayer.WHAT_SMOOTHSOURCE_EX_ERROR, i5);
                            return;
                        }
                    }
                    if (i3 == 1) {
                        MgtvMediaPlayer.this.mErrorListener.onError(i4, i5);
                        return;
                    }
                    SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i2);
                    if (smoothMediaSourceMatchLastKeySource == null) {
                        DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed matchKeySource failed");
                    } else {
                        MgtvMediaPlayer.this.notifySwitchSmoothSourceFail(smoothMediaSourceMatchLastKeySource, i4, i5);
                    }
                }
            }

            @Override
            public void onSmoothSwitchSourceInfo(d dVar, int i2, int i3, String str) {
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    try {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceInfo (event:" + i3 + ",key:" + i2 + ",msg:" + str + ")");
                        String logTag = MgtvMediaPlayer.this.getLogTag();
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSmoothSwitchSourceInfo current: ");
                        sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                        DebugLog.i(logTag, sb.toString());
                        SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i2));
                        if (smoothMediaSource != null) {
                            if (i3 == 0) {
                                smoothMediaSource.s_event_0_timestamp = System.currentTimeMillis();
                            } else if (i3 == 11) {
                                smoothMediaSource.s_event_11_timestamp = System.currentTimeMillis();
                            } else if (i3 == 2) {
                                if (MgtvMediaPlayer.this.isFlowReportEnable) {
                                    smoothMediaSource.genFlowReporter();
                                }
                                smoothMediaSource.s_event_2_timestamp = System.currentTimeMillis();
                            } else if (i3 == 3) {
                                if (MgtvMediaPlayer.this.isFlowReportEnable && MgtvMediaPlayer.this.mMainFlowReportProcessor != null) {
                                    MgtvMediaPlayer.this.mMainFlowReportProcessor.stop();
                                }
                                for (Map.Entry entry : MgtvMediaPlayer.this.mSmoothSourcesRecord.entrySet()) {
                                    if (((Integer) entry.getKey()).intValue() < smoothMediaSource.getKey()) {
                                        SmoothMediaSource smoothMediaSource2 = (SmoothMediaSource) entry.getValue();
                                        if (MgtvMediaPlayer.this.isFlowReportEnable && smoothMediaSource2 != null && smoothMediaSource2.getFlowReportProcessor() != null) {
                                            smoothMediaSource2.getFlowReportProcessor().stop();
                                        }
                                    }
                                }
                                smoothMediaSource.s_event_3_timestamp = System.currentTimeMillis();
                            }
                        }
                        if (i3 != 3) {
                            if (MgtvMediaPlayer.this.matchLastKeySource(i2) == null) {
                                DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceInfo matchKeySource failed");
                                return;
                            } else {
                                if (i3 == 0) {
                                    MgtvMediaPlayer.this.mSourceSwitching = true;
                                }
                                return;
                            }
                        }
                        SmoothMediaSource smoothMediaSource3 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(this.lastSwitchingKey));
                        if (smoothMediaSource3 != null && smoothMediaSource3.getReporter() != null) {
                            smoothMediaSource3.getReporter().c();
                        }
                        this.lastSwitchingKey = i2;
                        SmoothMediaSource smoothMediaSource4 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i2));
                        if (smoothMediaSource4 != null && MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null) {
                            MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceInfo(smoothMediaSource4, i3);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.mSmoothSourcesRecord = new HashMap();
        this.mSwitchSmoothSourceLocker = new Object();
        this.mSmoothUseP2pFailed = false;
        this.mSmoothKeyFrameMap = Collections.synchronizedMap(new HashMap());
        this.isBackground = false;
        this.mBundle = bundle;
        extractBundleData();
        init(i, context);
    }

    private void init(int i, Context context, boolean z) {
        DebugLog.i(getLogTag(), "init playerType:" + i + ", enableTexture:" + z);
        if (i < 0 || i > 2) {
            i = 2;
        }
        int i2 = this.mPlayerMode;
        if (i2 < 0 || i2 > 2) {
            this.mPlayerMode = 0;
        }
        if (BuildHelper.isApi14_IceCreamSandwichOrLater()) {
            this.mMediaPlayer = new h(i, context, z, this.mPlayerMode, this.mBundle);
        } else {
            if (z) {
                DebugLog.e(getLogTag(), "it isn't supported under 4.0 for setting TextureView");
            }
            this.mMediaPlayer = new h(i, context, false, this.mPlayerMode, this.mBundle);
        }
        this.mPlayerType = i;
        initData(context);
        initConfig();
        initReporter(context);
        initListener();
    }

    public void seekTo(int i, boolean z) throws IllegalStateException {
        seekTo(i, z, false);
    }

    public void setDataSource(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.mSourceSwitching = false;
        this.mSourceSwitchingComplete = false;
        this.mHw2SwType = Hw2SwType.NONE;
        setPlayerReset(false);
        this.mMediaPlayer.b(0);
        String strReplaceUrlSftcNoP2p = FlowReportProcessor.replaceUrlSftcNoP2p(str, this.mReportParams);
        setDataSourceBefore(strReplaceUrlSftcNoP2p, null);
        this.mMediaPlayer.a(strReplaceUrlSftcNoP2p);
        doReportPV();
    }

    public void setDisplay(SurfaceHolder surfaceHolder, int i) throws InvalidParameterException {
        this.mMediaPlayer.a(surfaceHolder, i);
    }

    public void setNetAddrinfo(AddrinfoType addrinfoType, int i, boolean z, com.hunantv.media.player.a.a.b bVar, boolean z2) {
        setNetAddrinfo(addrinfoType, i, z, bVar, z2, false);
    }

    public void setPlaybackStep(int i) {
        this.mMediaPlayer.f(i);
    }

    public void setSurfaceHolder(IMgtvRenderView.ISurfaceHolder iSurfaceHolder, int i) throws InvalidParameterException {
        this.mMediaPlayer.a(iSurfaceHolder, i);
    }

    public void switchLoopSource(String str, int i) {
        switchLoopSource(0, str, null, null, i);
    }

    public MgtvMediaPlayer(int i, Context context, boolean z) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        this.mDebug = false;
        this.mPreBufferTimeoutMs = 1800000;
        this.mBufferTimeoutMs = 180000;
        this.mImgoMediaPlayerAudioMode = false;
        this.mAccurateSeekEnable = true;
        this.mAccSeekKeyFrameInterval = 1000;
        this.mKeyframeSeekEnable = false;
        this.mInnerAutoRotateEnable = false;
        this.mWeakBufferSpeedKB = 1;
        this.mWeakBufferTimeoutMs = 120000;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 2;
        this.mPrepared = false;
        this.mIsBuffering = false;
        this.mErrorUrl = "";
        this.mLastRequestUrl = "";
        this.mLastDlSize = 0;
        this.mIsLive = false;
        this.mPlayerMode = 0;
        this.mLiveReopen = false;
        this.mLoopPlayerSwitchUrl = "";
        this.mHDJSwitchUrl = "";
        this.mDataSourceType = DataSourceType.TYPE_DATASOUCE_DEFAULT;
        this.mErrorExtraCodeStore = -1;
        this.mRecordVfps = 0.0f;
        this.mLastVideoWidth = 0;
        this.mLastVideoHeight = 0;
        this.mSkipLoopFilterType = SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mAddrinfoType = AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrinfoTimeoutMs = 0;
        this.mPrepared4StartMode = Prepared4StartMode.MODE_PREPARED4START_DEFAULT;
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            private boolean needInnerRetry(int i2, int i3) {
                return !MgtvMediaPlayer.this.mIsInnerRetrying && MgtvMediaPlayer.this.mMediaPlayer.v() == 2 && i2 == 200003 && i3 == 100606;
            }

            @Override
            public boolean onError(int i2, int i3) {
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onError what:" + i2 + ",extra:" + i3 + ",netType:" + NetPlayConfig.getNetworkType());
                if (MgtvMediaPlayer.this.mGifRecorder != null) {
                    MgtvMediaPlayer.this.mGifRecorder.interrupt(101);
                }
                if (MgtvMediaPlayer.this.isDnsCacheEnable()) {
                    MgtvMediaPlayer.this.checkAndCleanDnsCache(i2, i3);
                }
                if (needInnerRetry(i2, i3)) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onError needInnerRetry");
                    MgtvMediaPlayer.this.mIsInnerRetrying = true;
                    MgtvMediaPlayer.this.mRetryLastErrorCode = i3;
                    MgtvMediaPlayer.this.setPlayerReset(true);
                    if (MgtvMediaPlayer.this.mMediaPlayer.aj()) {
                        MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mMediaPlayer.H(), i2, i3, MgtvMediaPlayer.this.mMediaPlayer.v());
                    } else {
                        MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mMediaPlayer.H(), i2, i3);
                    }
                    return true;
                }
                MgtvMediaPlayer.this.beforeThrowError(i2, i3);
                MgtvMediaPlayer.this.reportErrorWarning(i2, i3);
                if (i2 != 7000006) {
                    MgtvMediaPlayer.this.reportError(i2, i3, "");
                }
                MgtvMediaPlayer.this.stopTickers();
                MgtvMediaPlayer.this.mPlayStatus = PlayStatus.ERROR;
                MgtvMediaPlayer.this.mErrorExtraCodeStore = i3;
                if (MgtvMediaPlayer.this.mOnErrorListener != null) {
                    return MgtvMediaPlayer.this.mOnErrorListener.onError(i2, i3);
                }
                return true;
            }
        };
        this.mIsGetPositionCallback = false;
        this.mPlayStatus = PlayStatus.IDLE;
        this.mRenderType = RenderType.NATIVE_WINDOW;
        this.mPlayTicker = new ExTicker(1000).setTypeStr(PlayAudioData.TAG_NEED_PLAY);
        this.mBufferTick = new ExTicker(1000).setTypeStr("buffer");
        this.mPlayerType = 2;
        this.mMainThreadID = -1L;
        this.mCacheReplaceMap = new LinkedHashMap();
        this.mIsInnerRetrying = false;
        this.mRetryLastErrorCode = 0;
        this.mRenderDisableWarnSended = false;
        this.mForceHttpDns = false;
        this.mHttpDnsNeedRetry = false;
        this.mJavaDnsEnable = false;
        this.mJavaDnsType = com.hunantv.media.player.a.a.b.FREE_HTTP_DNS;
        this.mHttpDnsEnable = false;
        this.mPlayerReset = true;
        this.mLoopPlayerReset = true;
        this.mLastUri = null;
        this.mLastHostErr = "00";
        this.mLastTcpErr = "00";
        this.mLastIpCount = 0;
        this.mLastIpIndex = -1;
        this.mLastDnsType = -1;
        this.mCurrentDnsDsc = "native";
        this.mEnableP2PHttpDns = false;
        this.mForceP2pHttpDns = false;
        this.mDnsThreadManager = new com.hunantv.media.player.a.d().a(new com.hunantv.media.player.a.d.b() {
            @Override
            public void updateIPs(String str, List<String> list) {
                P2pMgr.YfAddBackupIps(str, list, MgtvMediaPlayer.this.mForceP2pHttpDns);
            }
        });
        this.mAVSyncErrReported = false;
        this.mAVSyncErrSumReported = false;
        this.mAVSyncErrSum = 0;
        this.mAVSyncStartTimestamp = 0L;
        this.mPrepareAsyncTimeStampMs = 0L;
        this.mPreBufferState = new SyncStateMachine(1);
        this.mPreBufferMaxS = 5;
        this.mIsAudioExist = -1;
        this.mIsVsrOpen = -1;
        this.mIsNativePausedLoadData = 0;
        this.mIsWanosAudioEffectValid = false;
        this.mLastPosition = 0;
        this.mPositionLoged = false;
        this.mRealEncodeType = -1;
        this.mStreamFormatType = -1;
        this.mNotifyHandler = new MainNotifyHandler(this);
        this.mWillOpenUrl = "";
        this.mReportedTSLAN = false;
        this.mDnsLock = new Object();
        this.mIsP2pTSSkipReport = false;
        this.mCodecName = "n";
        this.mVVbuft = -1;
        this.mEnableJAVAIPCacheMap = false;
        this.mIPCacheMap = new HashMap();
        this.mVideoFrameClockNotifyMs = -1;
        this.mVideoFrameClockNotifyType = -1;
        this.mVideoFrameClockNotifyTimeStart = -1L;
        this.mVideoFrameClockNotifyTimeEnd = -1L;
        this.mCacheReportTag = "default";
        this.mCacheReportLerr = 0;
        this.mEnableDnsNoNetStrategy = false;
        this.mDnsNoNetWaiter = new Object();
        this.mLastIsNetworkAvailableNNS = true;
        this.mDnsNoNetMaxRetry = 20;
        this.mLastTsSkipErrExtra = 0;
        this.fstime = "n/n";
        this.mcColorFormat = "n_n";
        this.isFlowReportEnable = false;
        this.vsri = "0|0_0|0_0";
        this.vsrver = "n";
        this.vsrvkver = "n";
        this.mSourceNetListner = new MgtvPlayerListener.OnSourceNetHandledListener() {
            public static final int REPORT_HTTP_DNS_INTERRUPT = -2;
            public static final int REPORT_HTTP_DNS_PV = 0;
            private boolean mIsPauseLoad = false;

            private void checkErrorCode(int i2, int i3, Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                int i4 = bundle2.getInt("retry_counter");
                MgtvMediaPlayer.this.mSourceRetryCount = i4;
                MgtvMediaPlayer.this.mSourceRetryCode = i3;
                if (MgtvMediaPlayer.this.isDnsCacheEnable() && i4 >= 1 && MgtvMediaPlayer.this.checkAndCleanDnsCache(i2, i3)) {
                    MgtvMediaPlayer.this.mHttpDnsEnable = true;
                }
            }

            private boolean didHDJSwitch(Bundle bundle2) {
                if (MgtvMediaPlayer.this.mHDJSwitchUrl.length() <= 0 || bundle2 == null) {
                    return false;
                }
                bundle2.putString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_URL_STRING, MgtvMediaPlayer.this.mHDJSwitchUrl);
                bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_IS_LAST_INT, 1);
                MgtvMediaPlayer.this.mHDJSwitchUrl = "";
                return true;
            }

            private void didHostAddr(Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                int i2 = bundle2.getInt("host_error");
                int i3 = bundle2.getInt("host_family");
                String string = bundle2.getString("host_hostname");
                String string2 = bundle2.getString("host_ip");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback didHostAddr error:" + i2 + ",family:" + i3 + ",hostname:" + string + ",ip_list:" + string2 + ",port:" + bundle2.getInt("host_port") + ",hostDnsType:" + MgtvMediaPlayer.this.mLastDnsType = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_HOST_ARRR_DNS_TYPE_INT));
                MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                StringBuilder sb = new StringBuilder();
                sb.append(i2);
                sb.append("");
                mgtvMediaPlayer.mLastHostErr = sb.toString();
                MgtvMediaPlayer.this.mLastIpIndex = 0;
                try {
                    String[] strArrSplit = string2.split(ProcessInfo.SPLIT_NEW_VERSION);
                    MgtvMediaPlayer.this.mLastIpCount = 0;
                    if (strArrSplit != null) {
                        for (String str : strArrSplit) {
                            if (com.hunantv.media.player.a.e.e(str)) {
                                MgtvMediaPlayer.access$4208(MgtvMediaPlayer.this);
                            }
                        }
                    }
                    MgtvMediaPlayer.this.mLastIps = strArrSplit;
                    if (!MgtvMediaPlayer.this.mEnableJAVAIPCacheMap || i2 != 0 || MgtvMediaPlayer.this.mIPCacheMap.containsKey(string) || strArrSplit == null || strArrSplit.length <= 0) {
                        return;
                    }
                    IPList iPList = new IPList(string, strArrSplit);
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didHostAddr put:" + string + "-" + IPList.formatIPList(iPList.nUseList));
                    MgtvMediaPlayer.this.mIPCacheMap.put(string, iPList);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            private boolean didLiveOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return false;
                }
                return onLiveWillOpen(bundle2);
            }

            private boolean didLiveReopen(Bundle bundle2) {
                boolean z2 = MgtvMediaPlayer.this.mLiveReopen;
                if (MgtvMediaPlayer.this.mLiveReopen) {
                    MgtvMediaPlayer.this.mLiveReopen = false;
                }
                return z2;
            }

            private boolean didLoopOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return false;
                }
                return onLiveWillOpen(bundle2);
            }

            private boolean didLoopReopen(Bundle bundle2) {
                if (MgtvMediaPlayer.this.mLoopPlayerSwitchUrl.length() <= 0) {
                    return false;
                }
                bundle2.putString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_URL_STRING, MgtvMediaPlayer.this.mLoopPlayerSwitchUrl);
                MgtvMediaPlayer.this.mLoopPlayerSwitchUrl = "";
                return true;
            }

            private void didTcpOpen(Bundle bundle2) {
                StringBuilder sb;
                IPList iPList;
                if (bundle2 == null) {
                    return;
                }
                int i2 = bundle2.getInt("port");
                int i3 = bundle2.getInt("family");
                int i4 = bundle2.getInt("error");
                String string = bundle2.getString("ip");
                String string2 = bundle2.getString("tcp_hostname");
                long j = bundle2.getLong("switch_key");
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "didTcpOpen switch_key:" + j);
                if (MgtvMediaPlayer.this.mMediaPlayer != null && MgtvMediaPlayer.this.mMediaPlayer.I() != null) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "didTcpOpen origin:" + MgtvMediaPlayer.this.mMediaPlayer.I());
                }
                String logTag = MgtvMediaPlayer.this.getLogTag();
                if (i4 != 0) {
                    sb = new StringBuilder();
                    sb.append("chodison didTcpOpen port:");
                    sb.append(i2);
                    sb.append(",family:");
                    sb.append(i3);
                    sb.append(",error_code:");
                    sb.append(i4);
                    sb.append(",ip:");
                    sb.append(string);
                    sb.append(",hostname:");
                    sb.append(string2);
                    DebugLog.e(logTag, sb.toString());
                } else {
                    sb = new StringBuilder();
                    sb.append("chodison didTcpOpen port:");
                    sb.append(i2);
                    sb.append(",family:");
                    sb.append(i3);
                    sb.append(",ip:");
                    sb.append(string);
                    sb.append(",hostname:");
                    sb.append(string2);
                    DebugLog.i(logTag, sb.toString());
                }
                MgtvMediaPlayer.this.mLastTcpErr = i4 + "";
                MgtvMediaPlayer.this.mLastTcpIP = string;
                MgtvMediaPlayer.access$2808(MgtvMediaPlayer.this);
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap) {
                    try {
                        if (!MgtvMediaPlayer.this.mIPCacheMap.containsKey(string2) || (iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(string2)) == null) {
                            return;
                        }
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didTcpOpen remove " + string + " from " + string2);
                        iPList.nUseList.remove(string);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didTcpOpen rest ip:" + IPList.formatIPList(iPList.nUseList));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }

            private boolean doNetHttpWillOpenFailed(int i2, int i3, Bundle bundle2) {
                boolean z2;
                List<String> list;
                String logTag;
                String str;
                checkErrorCode(i2, i3, bundle2);
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                int i4 = bundle2.getInt("cur_dl_dize");
                if (isInitMp4(MgtvMediaPlayer.this.mErrorUrl)) {
                    MgtvMediaPlayer.this.mIsInitMp4Error = true;
                } else {
                    MgtvMediaPlayer.this.mIsInitMp4Error = false;
                }
                int i5 = bundle2.getInt("retry_counter");
                if (UrlUtil.isFilePrefix(MgtvMediaPlayer.this.mErrorUrl) && !MgtvMediaPlayer.this.mCacheReplaceMap.isEmpty()) {
                    if (MgtvMediaPlayer.this.mOnWarningListener != null) {
                        MgtvMediaPlayer.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_TS_CACHE_SKIP, i3 + "", MgtvMediaPlayer.this.mErrorUrl, null);
                    }
                    String str2 = (String) MgtvMediaPlayer.this.mCacheReplaceMap.get(MgtvMediaPlayer.this.mErrorUrl);
                    if (str2 != null) {
                        MgtvMediaPlayer.access$7408(MgtvMediaPlayer.this);
                        MgtvMediaPlayer.this.mErrorUrl = str2;
                        bundle2.putString("url", str2);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed replace local_url to " + str2);
                    }
                }
                bundle2.getString("player_hash");
                int i6 = bundle2.getInt("io_type");
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3));
                if (isENETUNREACHcode(i2, i3) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i2, i3))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3));
                    return true;
                }
                synchronized (MgtvMediaPlayer.this.mDnsNoNetWaiter) {
                    if (!isPlayerReset() && MgtvMediaPlayer.this.mEnableDnsNoNetStrategy && isDnsError(i2, i3)) {
                        boolean zC = com.hunantv.media.report.c.d.c(MgtvMediaPlayer.this.mContext);
                        if (!zC) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 1000 in");
                            try {
                                MgtvMediaPlayer.this.mDnsNoNetWaiter.wait(1000L);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str = "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 1000 out";
                            DebugLog.i(logTag, str);
                            z2 = true;
                        } else if (!zC || MgtvMediaPlayer.this.mLastIsNetworkAvailableNNS) {
                            z2 = false;
                        } else {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 3000 in");
                            try {
                                MgtvMediaPlayer.this.mDnsNoNetWaiter.wait(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str = "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 3000 out";
                            DebugLog.i(logTag, str);
                            z2 = true;
                        }
                        MgtvMediaPlayer.this.mLastIsNetworkAvailableNNS = zC;
                    } else {
                        z2 = false;
                    }
                }
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed mIsLive:" + MgtvMediaPlayer.this.mIsLive + ",mPlayerMode:" + MgtvMediaPlayer.this.mPlayerMode + ",mPrepared:" + MgtvMediaPlayer.this.mPrepared + ",mIsBuffering:" + MgtvMediaPlayer.this.mIsBuffering + ",mTsNotSkip:" + MgtvMediaPlayer.this.mTsNotSkip + ",mLoadMaxRetryTime:" + MgtvMediaPlayer.this.mLoadMaxRetryTime + ",mPlayStatus:" + MgtvMediaPlayer.this.mPlayStatus + ",lip:" + MgtvMediaPlayer.this.getLastIP());
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                if ((!MgtvMediaPlayer.this.mIsLive || MgtvMediaPlayer.this.isVod()) && MgtvMediaPlayer.this.mPlayerMode != 1) {
                    if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && (i3 == 100911 || i3 == 300021 || CodeUtil.isHttp4XX(i2, i3) || CodeUtil.isHttp5XX(i2, i3))) {
                        String hostName = UrlUtil.getHostName(UrlUtil.getValidHttpUrl(bundle2.getString("url")));
                        if (!StringUtil.isEmpty(hostName) && !com.hunantv.media.player.a.e.a(hostName) && MgtvMediaPlayer.this.mIPCacheMap.containsKey(hostName)) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http contains host:" + hostName);
                            IPList iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(hostName);
                            if (iPList != null && iPList.checkTTL() && (list = iPList.nUseList) != null && list.size() > 0) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http check ttl success." + iPList);
                                if (i5 >= 6) {
                                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http return false.not retry");
                                    reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                                    return false;
                                }
                                bundle2.putString("user_msg", MgtvMediaPlayer.USER_MSG_FLAG_USE_CACHE);
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http return true.try to goto ip choose");
                                reportHttpErrorPV(i5, MgtvMediaPlayer.this.mErrorUrl, i3, "ipcache");
                                return true;
                            }
                        }
                    }
                    reportHttpErrorPV(i5, MgtvMediaPlayer.this.mErrorUrl, i3, "default");
                    if (z2) {
                        if (i5 < MgtvMediaPlayer.this.mDnsNoNetMaxRetry) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy retry cause by inDnsNetStrategy");
                            return true;
                        }
                        reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy skip retry cause by errorRetryCount >= mDnsNoNetMaxRetry");
                        return false;
                    }
                    if (!MgtvMediaPlayer.this.mPrepared) {
                        if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl)) {
                            if (i5 < 2) {
                                return true;
                            }
                            reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                            return false;
                        }
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && isInitMp4(MgtvMediaPlayer.this.mErrorUrl) && i4 > 0 && i5 < 10) {
                            return true;
                        }
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i5 < MgtvMediaPlayer.this.mLoadMaxRetryTime) {
                            return true;
                        }
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                        mgtvMediaPlayer.callbackTsSkip(mgtvMediaPlayer.mErrorUrl, i2, i3);
                        reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                        return false;
                    }
                    if (MgtvMediaPlayer.this.mTsNotSkip && MgtvMediaPlayer.this.isRendered()) {
                        return true;
                    }
                } else {
                    if (!MgtvMediaPlayer.this.mPrepared) {
                        if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl)) {
                            return i5 < 2;
                        }
                        MgtvMediaPlayer mgtvMediaPlayer2 = MgtvMediaPlayer.this;
                        mgtvMediaPlayer2.callbackTsSkip(mgtvMediaPlayer2.mErrorUrl, i2, i3);
                        return false;
                    }
                    if (MgtvMediaPlayer.this.mIsBuffering && MgtvMediaPlayer.this.isHLSPlayingUrl() && i5 >= 1) {
                        if (UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) {
                            MgtvMediaPlayer mgtvMediaPlayer3 = MgtvMediaPlayer.this;
                            mgtvMediaPlayer3.callbackTsSkip(mgtvMediaPlayer3.mErrorUrl, i2, i3);
                        }
                        return false;
                    }
                }
                if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i5 < 2) {
                    return true;
                }
                if (UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) {
                    MgtvMediaPlayer mgtvMediaPlayer4 = MgtvMediaPlayer.this;
                    mgtvMediaPlayer4.callbackTsSkip(mgtvMediaPlayer4.mErrorUrl, i2, i3);
                }
                reportHttpErrorErr(i3, MgtvMediaPlayer.this.mErrorUrl);
                return false;
            }

            private boolean doNewHttpWillOpen(Bundle bundle2) {
                int i2 = bundle2.getInt("error_type");
                int i3 = bundle2.getInt("error_code");
                bundle2.getInt("retry_counter");
                int i4 = bundle2.getInt("reset_iplist");
                MgtvMediaPlayer.this.mLastDlSize = bundle2.getInt("cur_dl_dize");
                bundle2.putString("user_msg", "init");
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && i4 == 1) {
                    MgtvMediaPlayer.this.clearIPCache();
                }
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doNewHttpWillOpen in error_what:" + i2 + ",error_extra:" + i3 + ",reset_iplist:" + i4 + ",mLastDlSize:" + MgtvMediaPlayer.this.mLastDlSize);
                bundle2.putInt("reset_iplist", 0);
                if (i3 == 0) {
                    MgtvMediaPlayer.this.mIsInitMp4Error = false;
                    if (i3 == 0 && MgtvMediaPlayer.this.mCacheEable) {
                        replaceUrlFromCache(bundle2);
                    }
                    return false;
                }
                boolean zDoNetHttpWillOpenFailed = doNetHttpWillOpenFailed(i2, i3, bundle2);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed return " + zDoNetHttpWillOpenFailed + StringUtils.COMMA + i2 + "-" + i3 + "-" + MgtvMediaPlayer.this.mErrorUrl);
                return zDoNetHttpWillOpenFailed;
            }

            private boolean doWillGetEnv(Bundle bundle2) {
                String string = bundle2.getString("env_key");
                if (string == null || string.length() <= 0) {
                    return false;
                }
                bundle2.putString("env_value", System.getenv(string));
                return true;
            }

            private boolean doWillHostAddr(Bundle bundle2) {
                List<String> list;
                if (bundle2 == null) {
                    return false;
                }
                int i2 = bundle2.getInt("addr_handle");
                String string = bundle2.getString("player_hash");
                int i3 = bundle2.getInt("retry_counter");
                String string2 = bundle2.getString("user_msg");
                String string3 = bundle2.getString("addr_hostname");
                long j = bundle2.getLong("switch_key");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback doWillHostAddr is_handle:" + i2 + ",hash:" + string + ",count_int:" + i3 + ",user_msg:" + string2 + ",hostname:" + string3 + ",switch_key:" + j);
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && i2 != 1 && MgtvMediaPlayer.USER_MSG_FLAG_USE_CACHE.equals(string2) && !com.hunantv.media.player.a.e.a(string3) && MgtvMediaPlayer.this.mIPCacheMap.containsKey(string3)) {
                    try {
                        IPList iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(string3);
                        if (iPList != null && (list = iPList.nUseList) != null && list.size() > 0 && iPList.checkTTL()) {
                            String str = iPList.nUseList.get(0);
                            if (com.hunantv.media.player.a.e.e(str)) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache doWillHostAddr put chooseip:" + str);
                                String iPList2 = IPList.formatIPList(iPList.nUseList);
                                if (!StringUtil.isEmpty(iPList2)) {
                                    DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback ipcache doWillHostAddr put srcIPListStr:" + iPList2);
                                    bundle2.putString("addr_hostname", iPList2);
                                }
                                bundle2.putString("addr_ip", str);
                                bundle2.putInt("addr_error", 0);
                                return false;
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                String string4 = bundle2.getString("addr_uri");
                if (com.hunantv.media.player.a.e.d(string3)) {
                    notifyIpIsLAN(MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "0", "hostname_" + string3);
                }
                boolean zA = com.hunantv.media.player.a.e.a(string3);
                boolean zC = com.hunantv.media.report.c.d.c(MgtvMediaPlayer.this.mContext);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doWillHostAddr hostname:" + string3 + ",isIp:" + zA);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doWillHostAddr is_handle=" + i2 + ",mBackJavaDns=" + MgtvMediaPlayer.this.mBackJavaDns + ",isIp=" + zA + ",mForceHttpDns:" + MgtvMediaPlayer.this.mForceHttpDns);
                if ((MgtvMediaPlayer.this.mForceHttpDns && !zA) || ((MgtvMediaPlayer.this.mJavaDnsEnable && !zA) || (i2 == 1 && MgtvMediaPlayer.this.mBackJavaDns && !zA))) {
                    if (zC) {
                        MgtvMediaPlayer.this.mLastUri = string4;
                        domainResolve(string3, bundle2, MgtvMediaPlayer.this.mForceHttpDns);
                    } else {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "skip domainResolve cause net not available");
                    }
                    return MgtvMediaPlayer.this.mPlayerReset;
                }
                if (i2 == 1 && zA) {
                    bundle2.putString("addr_ip", string3);
                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, 0);
                    bundle2.putInt("addr_error", 0);
                }
                return false;
            }

            private boolean doWillHttpOpen(Bundle bundle2) {
                if (bundle2 != null) {
                    MgtvMediaPlayer.this.mLastRequestUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                }
                if (MgtvMediaPlayer.this.mReportParams != null && (MgtvMediaPlayer.this.mReportParams.getVideoType().equals(ReportParams.VideoType.AD_PRE) || MgtvMediaPlayer.this.mReportParams.getVideoType().equals(ReportParams.VideoType.AD_MID))) {
                    return onNormalHttpWillOpen(bundle2);
                }
                if (bundle2 != null) {
                    MgtvMediaPlayer.this.mWillOpenUrl = bundle2.getString("url");
                }
                return doNewHttpWillOpen(bundle2);
            }

            private void domainResolve(String str, Bundle bundle2, boolean z2) {
                com.hunantv.media.player.a.a.b bVarD;
                int iE;
                if (str == null || bundle2 == null) {
                    DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "skip domainResolve hostname or args is null");
                    return;
                }
                com.hunantv.media.player.a.a aVar = new com.hunantv.media.player.a.a();
                aVar.a(new com.hunantv.media.player.a.a.InterfaceC0133a() {
                    @Override
                    public void onDnsFail(com.hunantv.media.player.a.a aVar2) {
                    }

                    @Override
                    public void onDnsFinish(com.hunantv.media.player.a.a aVar2) {
                        synchronized (MgtvMediaPlayer.this.mDnsLock) {
                            MgtvMediaPlayer.this.mDnsLock.notifyAll();
                        }
                    }

                    @Override
                    public void onDnsStart(com.hunantv.media.player.a.a aVar2) {
                    }

                    @Override
                    public void onDnsSuc(com.hunantv.media.player.a.a aVar2, String[] strArr) {
                    }
                });
                boolean zResolveStrategy = resolveStrategy(aVar, str, bundle2, z2, MgtvMediaPlayer.this.mHttpDnsNeedRetry);
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve use:" + zResolveStrategy);
                if (zResolveStrategy) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve use type:" + aVar.d());
                    notifyHttpDnsReport(aVar.d(), 2000, 0);
                }
                synchronized (MgtvMediaPlayer.this.mDnsLock) {
                    while (aVar.a() && !isJavaDnsInterrupt()) {
                        DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "domainResolve wait in");
                        try {
                            MgtvMediaPlayer.this.mDnsLock.wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "domainResolve wait out. resolving:" + aVar.a() + ",isJavaDnsInterrupt:" + isJavaDnsInterrupt());
                String[] strArrA = com.hunantv.media.player.a.e.a(aVar.b());
                aVar.c();
                String str2 = "costMs:" + aVar.f() + ";ips:" + com.hunantv.media.utils.StringUtil.formatArrayString(strArrA) + ";net:" + NetPlayConfig.getNetworkType() + ProcessInfo.SPLIT_NEW_VERSION;
                String iPList = IPList.formatIPList(strArrA);
                String str3 = (strArrA == null || strArrA.length <= 0) ? null : strArrA[0];
                int i2 = AnonymousClass28.$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType[aVar.d().ordinal()] != 1 ? 5 : 4;
                if (!isJavaDnsInterrupt() && com.hunantv.media.player.a.e.e(str3)) {
                    if (zResolveStrategy) {
                        updateCurrentDnsDsc(aVar.d());
                        if (com.hunantv.media.player.a.e.d(str3)) {
                            notifyHttpDnsReport(aVar.d(), 2001, 100, str2);
                        } else {
                            notifyHttpDnsReport(aVar.d(), 2001, 0, str2);
                        }
                    }
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve put iplist:" + iPList);
                    bundle2.putString("addr_hostname", iPList);
                    if (com.hunantv.media.player.a.e.e(str3)) {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve put firstIP:" + str3);
                        bundle2.putString("addr_ip", str3);
                    }
                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, i2);
                    bundle2.putInt("addr_error", 0);
                    return;
                }
                if (zResolveStrategy) {
                    if (isJavaDnsInterrupt() && aVar.e() == 0) {
                        bVarD = aVar.d();
                        iE = -2;
                    } else {
                        bVarD = aVar.d();
                        iE = aVar.e();
                    }
                    notifyHttpDnsReport(bVarD, 2002, iE, str2);
                    if (!isJavaDnsInterrupt()) {
                        int iA = aVar.a(199);
                        if (aVar.e() != 0) {
                            iA = aVar.e();
                        } else if (str3 != null && !com.hunantv.media.player.a.e.a(str3)) {
                            iA = aVar.a(107);
                        }
                        int i3 = -iA;
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), aVar.d() + "resolve putInt error:" + i3);
                        bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, i2);
                        bundle2.putInt("addr_error", i3);
                    }
                }
                MgtvMediaPlayer.this.mCurrentDnsDsc = "native";
            }

            private String findTsCachPath(String str, String[] strArr) {
                if (strArr == null) {
                    return null;
                }
                try {
                    String fileName = UrlUtil.getFileName(str);
                    for (String str2 : strArr) {
                        if (str2 != null && new File(str2).getName().equals(fileName)) {
                            return str2;
                        }
                    }
                } catch (Exception unused) {
                }
                return null;
            }

            private boolean isDnsError(int i2, int i3) {
                return i3 == 300600 || i2 == 400605 || MGTVP2pDirectMediaDataSource.isP2pDirectDnsError(i2, i3);
            }

            private boolean isENETUNREACHcode(int i2, int i3) {
                return i3 == 300005 || MGTVP2pDirectMediaDataSource.getShortErrorCode(i2, i3) == 101;
            }

            private boolean isInitMp4(String str) {
                return MgtvMediaPlayer.this.isHLSPlayingUrl() && UrlUtil.isSuffixUrl(str, Video.SUFFIX.SUFFIX_MP4);
            }

            private boolean isJavaDnsInterrupt() {
                return isPlayerReset();
            }

            private boolean isPlayerReset() {
                return MgtvMediaPlayer.this.mPlayerReset || (MgtvMediaPlayer.this.mPlayerMode == 2 && MgtvMediaPlayer.this.mLoopPlayerReset);
            }

            private void notifyHttpDnsReport(com.hunantv.media.player.a.a.b bVar, int i2, int i3) {
                notifyHttpDnsReport(bVar, i2, i3, "");
            }

            private void notifyIpIsLAN(String str, String str2) {
                if (MgtvMediaPlayer.this.mOnWarningListener == null || MgtvMediaPlayer.this.mReportParams == null || MgtvMediaPlayer.this.mReportParams.getVideoType() != ReportParams.VideoType.VOD) {
                    return;
                }
                if (!MgtvMediaPlayer.this.mReportedTSLAN) {
                    notifyMessage(1002, str, str2 + "_suffix_" + UrlUtil.getSuffix(MgtvMediaPlayer.this.mWillOpenUrl));
                }
                if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mWillOpenUrl)) {
                    return;
                }
                MgtvMediaPlayer.this.mReportedTSLAN = true;
            }

            private void notifyMessage(int i2, int i3, String str) {
                Message message = new Message();
                message.what = i2;
                message.arg1 = i3;
                message.obj = str;
                MgtvMediaPlayer.this.mNotifyHandler.sendMessage(message);
            }

            private boolean onLiveWillOpen(Bundle bundle2) {
                int i2 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERROR_WHAT_INT);
                int i3 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERROR_EXTRA_INT);
                MgtvMediaPlayer.this.mLastRequestUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_SRC_URL_STRING));
                if (i3 == 0) {
                    return false;
                }
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_SRC_URL_STRING));
                int i4 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_COUNTER_INT);
                int i5 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERR_IO_TYPE_INT);
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLiveWillOpen url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                if (isENETUNREACHcode(i2, i3) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i2, i3))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLiveWillOpen network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                    return true;
                }
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_LIVE_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                return !MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i4 < 2;
            }

            private boolean onLoopWillOpen(Bundle bundle2) {
                int i2 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERROR_WHAT_INT);
                int i3 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERROR_EXTRA_INT);
                if (i3 == 0) {
                    return false;
                }
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_SRC_URL_STRING));
                int i4 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_COUNTER_INT);
                int i5 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERR_IO_TYPE_INT);
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLoopWillOpen url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                if (isENETUNREACHcode(i2, i3) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i2, i3))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLoopWillOpen network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                    return true;
                }
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_LOOP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                return !MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i4 < 2;
            }

            private boolean onNormalHttpWillOpen(Bundle bundle2) {
                int i2 = bundle2.getInt("error_type");
                int i3 = bundle2.getInt("error_code");
                if (i3 == 0) {
                    return false;
                }
                checkErrorCode(i2, i3, bundle2);
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                bundle2.getString("player_hash");
                bundle2.getString("user_msg");
                int i4 = bundle2.getInt("retry_counter");
                int i5 = bundle2.getInt("io_type");
                long j = bundle2.getLong("switch_key");
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl switch_key:" + j);
                if (isENETUNREACHcode(i2, i3) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i2, i3))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i4), Integer.valueOf(i2), Integer.valueOf(i3));
                    return true;
                }
                if (MgtvMediaPlayer.this.mIsLive) {
                    if ((!MgtvMediaPlayer.this.mIsBuffering || !MgtvMediaPlayer.this.isHLSPlayingUrl() || !UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) && MgtvMediaPlayer.this.mPrepared) {
                        UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl);
                        DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_HTTP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3)) {
                            return true;
                        }
                    }
                } else if (!MgtvMediaPlayer.this.mIsBuffering && MgtvMediaPlayer.this.mPrepared) {
                    DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_HTTP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i2), Integer.valueOf(i3), MgtvMediaPlayer.this.mErrorUrl);
                    if (!MgtvMediaPlayer.this.isSkipRetryCode(i2, i3) && i4 < 2) {
                        return true;
                    }
                }
                MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                mgtvMediaPlayer.callbackTsSkip(mgtvMediaPlayer.mErrorUrl, i2, i3);
                return false;
            }

            private boolean replaceUrlFromCache(Bundle bundle2) {
                String string = bundle2.getString("url");
                if (!UrlUtil.isFilePrefix(string) && !UrlUtil.isLocal(string)) {
                    String fileName = UrlUtil.getFileName(string);
                    if (StringUtil.isEmpty(fileName)) {
                        return false;
                    }
                    DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache try to find replace cache:" + string);
                    String strFindTsCachPath = null;
                    if (UrlUtil.isM3u8(string)) {
                        String str = MgtvMediaPlayer.this.mCacheM3u8Path;
                        String fileName2 = UrlUtil.getFileName(str);
                        if (!StringUtil.isEmpty(str) && !StringUtil.isEmpty(fileName2) && fileName2.equals(fileName)) {
                            strFindTsCachPath = str;
                        }
                    } else if (MgtvMediaPlayer.this.isHLSPlayingUrl() && UrlUtil.isSegment(string)) {
                        strFindTsCachPath = findTsCachPath(string, MgtvMediaPlayer.this.mCacheTsPaths);
                    }
                    if (FileUtil.exist(strFindTsCachPath)) {
                        String strAddLocalPrefix = UrlUtil.addLocalPrefix(strFindTsCachPath);
                        if (!StringUtil.isEmpty(strAddLocalPrefix)) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache from " + string);
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache to " + strAddLocalPrefix);
                            bundle2.putString("url", strAddLocalPrefix);
                            if (UrlUtil.isM3u8(string)) {
                                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache put SRC_URL " + string);
                                bundle2.putString("src_url", string);
                            }
                            MgtvMediaPlayer.this.mCacheReplaceMap.put(strAddLocalPrefix, string);
                            return true;
                        }
                    }
                }
                return false;
            }

            private void reportHttpErrorErr(int i2, String str) {
                if ((isInitMp4(str) || UrlUtil.isM3u8(str)) && MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.getVideoType() == ReportParams.VideoType.VOD && MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.NO_PROXY && MgtvMediaPlayer.this.mOnWarningListener != null) {
                    String strG = MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "00";
                    MgtvPlayerListener.OnWarningListener onWarningListener = MgtvMediaPlayer.this.mOnWarningListener;
                    String str2 = i2 + Consts.DOT + MgtvMediaPlayer.this.mCacheReportLerr;
                    StringBuilder sb = new StringBuilder();
                    sb.append("psuuid_");
                    sb.append(strG);
                    sb.append("_render_");
                    sb.append(MgtvMediaPlayer.this.isRendered() ? "1" : "0");
                    sb.append("_url_");
                    sb.append(str);
                    sb.append("_type_");
                    sb.append(MgtvMediaPlayer.this.mCacheReportTag);
                    onWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTP_ERROR_ERR, str2, sb.toString(), null);
                }
            }

            private void reportHttpErrorPV(int i2, String str, int i3, String str2) {
                if (i2 == 0) {
                    MgtvMediaPlayer.this.mCacheReportTag = "default";
                    MgtvMediaPlayer.this.mCacheReportLerr = 0;
                }
                if (i2 == 0) {
                    if ((isInitMp4(str) || UrlUtil.isM3u8(str)) && MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.getVideoType() == ReportParams.VideoType.VOD && MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.NO_PROXY && MgtvMediaPlayer.this.mOnWarningListener != null) {
                        String strG = MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "00";
                        MgtvMediaPlayer.this.mCacheReportTag = str2;
                        MgtvMediaPlayer.this.mCacheReportLerr = i3;
                        MgtvPlayerListener.OnWarningListener onWarningListener = MgtvMediaPlayer.this.mOnWarningListener;
                        String str3 = i3 + "";
                        StringBuilder sb = new StringBuilder();
                        sb.append("psuuid_");
                        sb.append(strG);
                        sb.append("_render_");
                        sb.append(MgtvMediaPlayer.this.isRendered() ? "1" : "0");
                        sb.append("_url_");
                        sb.append(str);
                        sb.append("_type_");
                        sb.append(str2);
                        onWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTP_ERROR_PV, str3, sb.toString(), null);
                    }
                }
            }

            private boolean resolveStrategy(@NonNull com.hunantv.media.player.a.a aVar, @NonNull String str, Bundle bundle2) {
                return resolveStrategy(aVar, str, bundle2, false, false);
            }

            private void updateCurrentDnsDsc(com.hunantv.media.player.a.a.b bVar) {
                MgtvMediaPlayer mgtvMediaPlayer;
                String str;
                int i2 = AnonymousClass28.$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType[bVar.ordinal()];
                if (i2 == 1) {
                    mgtvMediaPlayer = MgtvMediaPlayer.this;
                    str = MgtvMediaPlayer.DNS_JAVA_NORMAL;
                } else {
                    if (i2 != 2) {
                        return;
                    }
                    mgtvMediaPlayer = MgtvMediaPlayer.this;
                    str = MgtvMediaPlayer.DNS_JAVA_HTTPDNS;
                }
                mgtvMediaPlayer.mCurrentDnsDsc = str;
            }

            private void updateIp(String str) {
                String logTag;
                StringBuilder sb;
                String str2;
                if (MgtvMediaPlayer.this.mMediaPlayer == null || (!(MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) || MgtvMediaPlayer.this.mMediaPlayer.ai() == null)) {
                    if (MgtvMediaPlayer.this.mMediaPlayer == null || !((MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) && MgtvMediaPlayer.this.mMediaPlayer.ai() == null)) {
                        MgtvMediaPlayer.this.mLastIP = str;
                    } else {
                        MgtvMediaPlayer.this.mLastIP = "0.0.0.1";
                    }
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    str2 = "didTcpOpen tcp_ip:";
                } else {
                    com.mgtv.a.d taskInfo = P2pMgr.getTaskInfo(MgtvMediaPlayer.this.mMediaPlayer.ai());
                    if (taskInfo != null) {
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                        mgtvMediaPlayer.mLastIP = mgtvMediaPlayer.mLastP2pCdnIP = taskInfo.b;
                    } else {
                        MgtvMediaPlayer.this.mLastIP = null;
                    }
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    str2 = "didTcpOpen p2p QueryTaskInfo cdnIp:";
                }
                sb.append(str2);
                sb.append(MgtvMediaPlayer.this.mLastIP);
                DebugLog.d(logTag, sb.toString());
            }

            private void willTcpOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                String string = bundle2.getString("tcp_hostname");
                String string2 = bundle2.getString("ip");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback willTcpOpen tcp_hostname:" + string + ",tcp_ip:" + string2);
                MgtvMediaPlayer.this.mLastHostIP = string2;
                updateIp(string2);
                if (string2 == null || string2.length() <= 1 || !com.hunantv.media.player.a.e.d(string2)) {
                    return;
                }
                notifyIpIsLAN("1", MgtvMediaPlayer.this.getCurrentDnsDsc() + "_hostip_" + string2);
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override
            public boolean onSourceNetCtrl(int i2, Bundle bundle2) {
                IP2pTask iP2pTaskAi;
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.onSourceNetCtrl 0x%5x", Integer.valueOf(i2));
                switch (i2) {
                    case 131073:
                        willTcpOpen(bundle2);
                        return false;
                    case 131074:
                        didTcpOpen(bundle2);
                        return false;
                    case 131075:
                        return doWillHttpOpen(bundle2);
                    case 131077:
                        return didLiveOpen(bundle2);
                    case 131078:
                        return doWillHostAddr(bundle2);
                    case 131081:
                        return didLiveReopen(bundle2);
                    case 131088:
                        return didLoopOpen(bundle2);
                    case 131089:
                        return didLoopReopen(bundle2);
                    case 131090:
                        return didHDJSwitch(bundle2);
                    case 131104:
                        return doWillGetEnv(bundle2);
                    case 131120:
                        if (MgtvMediaPlayer.this.mPreBufferState.isEnable() && MgtvMediaPlayer.this.mPreBufferState.getState() == 2) {
                            this.mIsPauseLoad = true;
                            return true;
                        }
                        if (MgtvMediaPlayer.this.isSourceSwitching() || MgtvMediaPlayer.this.mMediaPlayer == null || (!(MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) || (iP2pTaskAi = MgtvMediaPlayer.this.mMediaPlayer.ai()) == null || iP2pTaskAi.getStatus() == 0)) {
                            if (this.mIsPauseLoad) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "CTRL_WILL_CHECK_PAUSE_LOAD will return false. will resume load");
                            }
                            this.mIsPauseLoad = false;
                            return false;
                        }
                        if (!this.mIsPauseLoad) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "CTRL_WILL_CHECK_PAUSE_LOAD will return true. will pause load");
                        }
                        this.mIsPauseLoad = true;
                        return true;
                    case 131184:
                        synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                            try {
                                if (bundle2 == null) {
                                    return false;
                                }
                                if (bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT) == 1) {
                                    if (MgtvMediaPlayer.this.mReporter != null) {
                                        MgtvMediaPlayer.this.mReporter.c();
                                    }
                                    int i3 = (int) bundle2.getLong(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_RETRY_KEY_LONG);
                                    SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1 find:" + i3);
                                    if (smoothMediaSource != null) {
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1 , will retry use :" + smoothMediaSource.getUrl());
                                        bundle2.putString("smooth_switch_url", smoothMediaSource.getUrl());
                                        if (smoothMediaSource.getReporter() != null) {
                                            smoothMediaSource.getReporter().a();
                                            if (MgtvMediaPlayer.this.mReportParams != null) {
                                                MgtvMediaPlayer.this.mReportParams.setPlaySessionId(smoothMediaSource.getReporter().g());
                                            }
                                        }
                                    } else {
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1, not found source");
                                    }
                                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT, 0);
                                    return true;
                                }
                                int i4 = (int) bundle2.getLong("smooth_switch_key");
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH switch_key:" + i4);
                                SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i4);
                                if (smoothMediaSourceMatchLastKeySource != null) {
                                    if (smoothMediaSourceMatchLastKeySource.isLastRetry() && MgtvMediaPlayer.this.mReportParams != null && (MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.ONLY_P2P || MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.P2P_DRM)) {
                                        SmoothMediaSource smoothMediaSource2 = new SmoothMediaSource(MgtvMediaPlayer.this.getPlayingOriginUrl());
                                        smoothMediaSource2.setReportParams(MgtvMediaPlayer.this.mReportParams);
                                        smoothMediaSource2.bind(MgtvMediaPlayer.this);
                                        smoothMediaSource2.setThrowErrorIfSwitchFailed(true);
                                        MgtvMediaPlayer.this.mSmoothSourcesRecord.put(Integer.valueOf(smoothMediaSource2.getKey()), smoothMediaSource2);
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth is last retry. will retry key:" + smoothMediaSource2.getKey());
                                        bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT, 1);
                                        bundle2.putLong(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_RETRY_KEY_LONG, (long) smoothMediaSource2.getKey());
                                    }
                                    if (!smoothMediaSourceMatchLastKeySource.isLastRetry()) {
                                        String string = bundle2.getString("smooth_switch_url");
                                        bundle2.putString("smooth_switch_url", string);
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH switch_url:" + string);
                                        if (!StringUtil.isEmpty(string)) {
                                            int iIndexOf = string.indexOf(",mgtvjsource:");
                                            String strSubstring = iIndexOf >= 0 ? string.substring(iIndexOf) : "";
                                            boolean zOnSwitchSmoothSourceWillUpdate = MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null ? MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceWillUpdate(smoothMediaSourceMatchLastKeySource) : false;
                                            if (smoothMediaSourceMatchLastKeySource.getReadType() != 2 && zOnSwitchSmoothSourceWillUpdate && !StringUtil.isEmpty(smoothMediaSourceMatchLastKeySource.useUpdateUrl())) {
                                                String str = smoothMediaSourceMatchLastKeySource.useUpdateUrl() + strSubstring;
                                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH will update url:" + str);
                                                bundle2.putString("smooth_switch_url", str);
                                            }
                                        }
                                    }
                                }
                                SmoothMediaSource smoothMediaSource3 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i4));
                                if (smoothMediaSource3 != null && smoothMediaSource3.getReporter() != null) {
                                    smoothMediaSource3.getReporter().a();
                                    if (MgtvMediaPlayer.this.mReportParams != null) {
                                        MgtvMediaPlayer.this.mReportParams.setPlaySessionId(smoothMediaSource3.getReporter().g());
                                    }
                                }
                                return true;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    default:
                        return false;
                }
            }

            @Override
            public void onSourceNetEvent(int i2, Bundle bundle2) {
                if (i2 != 78338) {
                    return;
                }
                didHostAddr(bundle2);
            }

            private void notifyHttpDnsReport(com.hunantv.media.player.a.a.b bVar, int i2, int i3, String str) {
                if (bVar != com.hunantv.media.player.a.a.b.FREE_HTTP_DNS || MgtvMediaPlayer.this.mOnWarningListener == null) {
                    return;
                }
                notifyMessage(i2, i3, str);
            }

            private void notifyMessage(int i2, String str, String str2) {
                Message message = new Message();
                message.what = i2;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MainNotifyHandler.BUNDLE_STR_INFO1, str);
                bundle2.putString(MainNotifyHandler.BUNDLE_STR_INFO2, str2);
                message.setData(bundle2);
                MgtvMediaPlayer.this.mNotifyHandler.sendMessage(message);
            }

            private boolean resolveStrategy(@NonNull com.hunantv.media.player.a.a aVar, @NonNull String str, Bundle bundle2, boolean z2, boolean z3) {
                com.hunantv.media.player.a.a.b bVar;
                String logTag;
                String str2;
                if (z2 || (bundle2 != null && bundle2.getInt("addr_handle") == 1 && MgtvMediaPlayer.this.mBackJavaDns)) {
                    aVar.b(1);
                    bVar = com.hunantv.media.player.a.a.b.FREE_HTTP_DNS;
                } else {
                    if (MgtvMediaPlayer.this.isDnsCacheEnable()) {
                        if (MgtvMediaPlayer.this.mHttpDnsEnable) {
                            String strB = !StringUtil.isEmpty(MgtvMediaPlayer.this.mLastUri) ? com.hunantv.media.player.a.f.b(MgtvMediaPlayer.this.mLastUri) : null;
                            if (strB != null && !strB.trim().equals("")) {
                                logTag = MgtvMediaPlayer.this.getLogTag();
                                str2 = "resolveStrategy cache valid";
                            }
                        } else {
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str2 = "resolveStrategy cache valid and httpdns not open";
                        }
                        DebugLog.d(logTag, str2);
                        return false;
                    }
                    bVar = MgtvMediaPlayer.this.mJavaDnsType;
                }
                aVar.a(str, bVar, z3);
                return true;
            }
        };
        this.mLogTagKey = "";
        this.mEnableReport = true;
        this.p2pLocker = new Object();
        this.mSeekStartMs = -1L;
        this.mHw2SwType = Hw2SwType.NONE;
        this.mPlaybackSpeed = 1.0f;
        this.mRecordMaxPlaySpeed = 1.0f;
        this.mFrameListener = new MgtvPlayerListener.OnFrameListener() {
            @Override
            public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                synchronized (MgtvMediaPlayer.this.ptsLocker) {
                    try {
                        WeakHandler weakHandler = MgtvMediaPlayer.this.ptsWeakHandler;
                        if (weakHandler != null) {
                            weakHandler.removeMessages(256);
                            Message message = new Message();
                            message.what = 256;
                            message.obj = frameClock;
                            MgtvMediaPlayer.this.ptsWeakHandler.sendMessage(message);
                        }
                        if (MgtvMediaPlayer.this.mOnFrameListener != null) {
                            MgtvMediaPlayer.this.mOnFrameListener.onVFrameClockCome(frameClock);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.mInnerFlowDataStatistic = new FlowDataStatistic();
        this.mEnableImgoVsr = false;
        this.mLoopSourceKey = new AtomicInteger(1);
        this.mSubtitleSources = new ArrayList();
        this.ptsHandlerThread = null;
        this.ptsWeakHandler = null;
        this.ptsListeners = new HashSet();
        this.ptsLocker = new Object();
        this.mSmoothSourceListener = new d.n() {
            int lastSwitchingKey = -1;

            @Override
            public void onSmoothSwitchSourceComplete(d dVar, int i2, int i3, String str) {
                SmoothMediaSource smoothMediaSource;
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    try {
                        DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceComplete (type:" + i3 + ",key:" + i2 + ",msg:" + str + ")");
                        String logTag = MgtvMediaPlayer.this.getLogTag();
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSmoothSwitchSourceComplete current: ");
                        sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                        DebugLog.i(logTag, sb.toString());
                        for (Map.Entry entry : MgtvMediaPlayer.this.mSmoothSourcesRecord.entrySet()) {
                            if (((Integer) entry.getKey()).intValue() < i2 && (smoothMediaSource = (SmoothMediaSource) entry.getValue()) != null && !smoothMediaSource.isReleased()) {
                                smoothMediaSource.release();
                            }
                        }
                        MgtvMediaPlayer.this.mSmoothUseP2pFailed = false;
                        if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                            MgtvMediaPlayer.this.mMediaPlayer.c(false);
                        }
                        SmoothMediaSource smoothMediaSource2 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i2));
                        if (smoothMediaSource2 != null) {
                            if (!StringUtil.isEmpty(smoothMediaSource2.getVfps())) {
                                MgtvMediaPlayer.this.mRecordVfps = Float.parseFloat(smoothMediaSource2.getVfps());
                            }
                            MgtvMediaPlayer.this.mLastVideoWidth = smoothMediaSource2.getVideoWidth();
                            MgtvMediaPlayer.this.mLastVideoHeight = smoothMediaSource2.getVideoHeight();
                            if (MgtvMediaPlayer.this.mReporter != null) {
                                MgtvMediaPlayer.this.mReporter.c();
                            }
                            MgtvMediaPlayer.this.mReporter = smoothMediaSource2.getReporter();
                            if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                                MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mReporter);
                                MgtvMediaPlayer.this.mMediaPlayer.a(smoothMediaSource2.getReadType(), smoothMediaSource2.getUrl(), smoothMediaSource2.getPlayingUrl());
                                MgtvMediaPlayer.this.mMediaPlayer.h(smoothMediaSource2.getEnableImgoAIQE());
                            }
                            if (MgtvMediaPlayer.this.mDataSourceInfo != null) {
                                MgtvMediaPlayer.this.mDataSourceInfo.setVideoFormat(smoothMediaSource2.getVideoFormat());
                                MgtvMediaPlayer.this.mDataSourceInfo.setAudioFormat(smoothMediaSource2.getAudioFormat());
                                MgtvMediaPlayer.this.mDataSourceInfo.setFileFormat(smoothMediaSource2.getFileFormat());
                            }
                            if (MgtvMediaPlayer.this.mReporter != null) {
                                MgtvMediaPlayer.this.mReportParams.deepCopy(smoothMediaSource2.getReportParams());
                                MgtvMediaPlayer.this.mReporter.a(MgtvMediaPlayer.this.mReportParams);
                                MgtvMediaPlayer.this.mReporter.b();
                            }
                            String keyFrameMapKey = MgtvMediaPlayer.this.getKeyFrameMapKey(smoothMediaSource2.getVid(), smoothMediaSource2.getDef());
                            if (MgtvMediaPlayer.this.mSmoothKeyFrameMap.containsKey(keyFrameMapKey)) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "find smoothKeyFrameKey :" + keyFrameMapKey + " set to player");
                                byte[] bArr = MgtvMediaPlayer.this.mSmoothKeyFrameMap.get(keyFrameMapKey);
                                if (KeyFrameInfoUtils.isKeyFrameDataValid(bArr, smoothMediaSource2.videoFileHash) == 0) {
                                    MgtvMediaPlayer.this.setKeyFrameInfoFileBuf(bArr);
                                }
                            }
                        }
                        SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i2);
                        if (smoothMediaSourceMatchLastKeySource == null) {
                            DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceComplete matchKeySource failed");
                            return;
                        }
                        if (smoothMediaSourceMatchLastKeySource.getSwitchMod() == 1) {
                            MgtvMediaPlayer.this.mMediaPlayer.d(true);
                        }
                        MgtvMediaPlayer.this.mSwitchedSmoothSource = smoothMediaSourceMatchLastKeySource;
                        MgtvMediaPlayer.this.mSourceSwitchingComplete = true;
                        MgtvMediaPlayer.this.mSourceSwitching = false;
                        if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                            MgtvMediaPlayer.this.mMainFlowReportProcessor = smoothMediaSourceMatchLastKeySource.getFlowReportProcessor();
                            MgtvMediaPlayer.this.mMediaPlayer.a(smoothMediaSourceMatchLastKeySource.getP2pTask());
                            MgtvMediaPlayer.this.mMediaPlayer.b(smoothMediaSourceMatchLastKeySource.getReadType());
                        }
                        MgtvMediaPlayer.this.mSmoothKeyFrameMap.clear();
                        if (MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null) {
                            MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceSuccess(smoothMediaSourceMatchLastKeySource);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override
            public void onSmoothSwitchSourceFailed(d dVar, int i2, int i3, String str) {
                String[] strArrSplit;
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed (type:" + i3 + ",key:" + i2 + ",msg:" + str + ")");
                    String logTag = MgtvMediaPlayer.this.getLogTag();
                    StringBuilder sb = new StringBuilder();
                    sb.append("onSmoothSwitchSourceFailed current: ");
                    sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                    DebugLog.e(logTag, sb.toString());
                    int i4 = MgtvMediaPlayer.WHAT_SMOOTHSOURCE_FAIL;
                    int i5 = -1;
                    try {
                        if (!StringUtil.isEmpty(str) && (strArrSplit = str.split("-")) != null && strArrSplit.length >= 2) {
                            i4 = NumericUtil.parseInt(strArrSplit[0]);
                            i5 = NumericUtil.parseInt(strArrSplit[1]);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i2));
                    if (smoothMediaSource != null) {
                        if (smoothMediaSource.getReporter() != null) {
                            smoothMediaSource.getReporter().a(i4, i5, "");
                        }
                        if (MgtvMediaPlayer.this.mReportParams != null) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed mReportParams:" + MgtvMediaPlayer.this.mReportParams.getProxyType() + "-" + MgtvMediaPlayer.this.mReportParams.getP2ps());
                        }
                        if (smoothMediaSource.getReportParams() != null) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed currentSource.getReportParams():" + smoothMediaSource.getReportParams().getProxyType() + "-" + smoothMediaSource.getReportParams().getP2ps());
                        }
                        if (MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.isP2p() && smoothMediaSource.getReportParams() != null && smoothMediaSource.getReportParams().isP2p()) {
                            MgtvMediaPlayer.this.mSmoothUseP2pFailed = true;
                            if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                                MgtvMediaPlayer.this.mMediaPlayer.c(true);
                            }
                        }
                        if (smoothMediaSource.isThrowErrorIfSwitchFailed()) {
                            MgtvMediaPlayer.this.mErrorListener.onError(MgtvMediaPlayer.WHAT_SMOOTHSOURCE_EX_ERROR, i5);
                            return;
                        }
                    }
                    if (i3 == 1) {
                        MgtvMediaPlayer.this.mErrorListener.onError(i4, i5);
                        return;
                    }
                    SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i2);
                    if (smoothMediaSourceMatchLastKeySource == null) {
                        DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed matchKeySource failed");
                    } else {
                        MgtvMediaPlayer.this.notifySwitchSmoothSourceFail(smoothMediaSourceMatchLastKeySource, i4, i5);
                    }
                }
            }

            @Override
            public void onSmoothSwitchSourceInfo(d dVar, int i2, int i3, String str) {
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    try {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceInfo (event:" + i3 + ",key:" + i2 + ",msg:" + str + ")");
                        String logTag = MgtvMediaPlayer.this.getLogTag();
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSmoothSwitchSourceInfo current: ");
                        sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                        DebugLog.i(logTag, sb.toString());
                        SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i2));
                        if (smoothMediaSource != null) {
                            if (i3 == 0) {
                                smoothMediaSource.s_event_0_timestamp = System.currentTimeMillis();
                            } else if (i3 == 11) {
                                smoothMediaSource.s_event_11_timestamp = System.currentTimeMillis();
                            } else if (i3 == 2) {
                                if (MgtvMediaPlayer.this.isFlowReportEnable) {
                                    smoothMediaSource.genFlowReporter();
                                }
                                smoothMediaSource.s_event_2_timestamp = System.currentTimeMillis();
                            } else if (i3 == 3) {
                                if (MgtvMediaPlayer.this.isFlowReportEnable && MgtvMediaPlayer.this.mMainFlowReportProcessor != null) {
                                    MgtvMediaPlayer.this.mMainFlowReportProcessor.stop();
                                }
                                for (Map.Entry entry : MgtvMediaPlayer.this.mSmoothSourcesRecord.entrySet()) {
                                    if (((Integer) entry.getKey()).intValue() < smoothMediaSource.getKey()) {
                                        SmoothMediaSource smoothMediaSource2 = (SmoothMediaSource) entry.getValue();
                                        if (MgtvMediaPlayer.this.isFlowReportEnable && smoothMediaSource2 != null && smoothMediaSource2.getFlowReportProcessor() != null) {
                                            smoothMediaSource2.getFlowReportProcessor().stop();
                                        }
                                    }
                                }
                                smoothMediaSource.s_event_3_timestamp = System.currentTimeMillis();
                            }
                        }
                        if (i3 != 3) {
                            if (MgtvMediaPlayer.this.matchLastKeySource(i2) == null) {
                                DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceInfo matchKeySource failed");
                                return;
                            } else {
                                if (i3 == 0) {
                                    MgtvMediaPlayer.this.mSourceSwitching = true;
                                }
                                return;
                            }
                        }
                        SmoothMediaSource smoothMediaSource3 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(this.lastSwitchingKey));
                        if (smoothMediaSource3 != null && smoothMediaSource3.getReporter() != null) {
                            smoothMediaSource3.getReporter().c();
                        }
                        this.lastSwitchingKey = i2;
                        SmoothMediaSource smoothMediaSource4 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i2));
                        if (smoothMediaSource4 != null && MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null) {
                            MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceInfo(smoothMediaSource4, i3);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.mSmoothSourcesRecord = new HashMap();
        this.mSwitchSmoothSourceLocker = new Object();
        this.mSmoothUseP2pFailed = false;
        this.mSmoothKeyFrameMap = Collections.synchronizedMap(new HashMap());
        this.isBackground = false;
        init(i, context, z);
    }

    public void seekTo(int i, boolean z, boolean z2) throws IllegalStateException {
        preSeekTo(i, z2);
        com.hunantv.media.report.a aVar = this.mReporter;
        if (aVar != null) {
            aVar.d();
        }
        int iValidSeekPosition = validSeekPosition(i);
        if (iValidSeekPosition >= 0) {
            this.mMediaPlayer.a(iValidSeekPosition, z);
        }
    }

    public void setNetAddrinfo(AddrinfoType addrinfoType, int i, boolean z, com.hunantv.media.player.a.a.b bVar, boolean z2, boolean z3) {
        this.mAddrinfoType = addrinfoType;
        this.mAddrinfoTimeoutMs = i;
        setAsyncDns(z, bVar);
        this.mBackJavaDns = z3;
        h hVar = this.mMediaPlayer;
        if (hVar != null) {
            if (this.mAddrinfoType != AddrinfoType.TYPE_DNS_CACHE) {
                hVar.a(2018022701, 0);
            } else {
                hVar.a(2018022701, 1);
                int i2 = this.mAddrinfoTimeoutMs;
                if (i2 > 0) {
                    this.mMediaPlayer.a(2018022702, i2);
                }
            }
            this.mMediaPlayer.a(2018110701, z2 ? 1 : 0);
        }
    }

    public MgtvMediaPlayer(int i, Context context, boolean z, int i2, Bundle bundle) throws SecurityException, UnsatisfiedLinkError, NullPointerException, OutOfMemoryError {
        this.mDebug = false;
        this.mPreBufferTimeoutMs = 1800000;
        this.mBufferTimeoutMs = 180000;
        this.mImgoMediaPlayerAudioMode = false;
        this.mAccurateSeekEnable = true;
        this.mAccSeekKeyFrameInterval = 1000;
        this.mKeyframeSeekEnable = false;
        this.mInnerAutoRotateEnable = false;
        this.mWeakBufferSpeedKB = 1;
        this.mWeakBufferTimeoutMs = 120000;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 2;
        this.mPrepared = false;
        this.mIsBuffering = false;
        this.mErrorUrl = "";
        this.mLastRequestUrl = "";
        this.mLastDlSize = 0;
        this.mIsLive = false;
        this.mPlayerMode = 0;
        this.mLiveReopen = false;
        this.mLoopPlayerSwitchUrl = "";
        this.mHDJSwitchUrl = "";
        this.mDataSourceType = DataSourceType.TYPE_DATASOUCE_DEFAULT;
        this.mErrorExtraCodeStore = -1;
        this.mRecordVfps = 0.0f;
        this.mLastVideoWidth = 0;
        this.mLastVideoHeight = 0;
        this.mSkipLoopFilterType = SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mAddrinfoType = AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrinfoTimeoutMs = 0;
        this.mPrepared4StartMode = Prepared4StartMode.MODE_PREPARED4START_DEFAULT;
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            private boolean needInnerRetry(int i3, int i4) {
                return !MgtvMediaPlayer.this.mIsInnerRetrying && MgtvMediaPlayer.this.mMediaPlayer.v() == 2 && i3 == 200003 && i4 == 100606;
            }

            @Override
            public boolean onError(int i3, int i4) {
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onError what:" + i3 + ",extra:" + i4 + ",netType:" + NetPlayConfig.getNetworkType());
                if (MgtvMediaPlayer.this.mGifRecorder != null) {
                    MgtvMediaPlayer.this.mGifRecorder.interrupt(101);
                }
                if (MgtvMediaPlayer.this.isDnsCacheEnable()) {
                    MgtvMediaPlayer.this.checkAndCleanDnsCache(i3, i4);
                }
                if (needInnerRetry(i3, i4)) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onError needInnerRetry");
                    MgtvMediaPlayer.this.mIsInnerRetrying = true;
                    MgtvMediaPlayer.this.mRetryLastErrorCode = i4;
                    MgtvMediaPlayer.this.setPlayerReset(true);
                    if (MgtvMediaPlayer.this.mMediaPlayer.aj()) {
                        MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mMediaPlayer.H(), i3, i4, MgtvMediaPlayer.this.mMediaPlayer.v());
                    } else {
                        MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mMediaPlayer.H(), i3, i4);
                    }
                    return true;
                }
                MgtvMediaPlayer.this.beforeThrowError(i3, i4);
                MgtvMediaPlayer.this.reportErrorWarning(i3, i4);
                if (i3 != 7000006) {
                    MgtvMediaPlayer.this.reportError(i3, i4, "");
                }
                MgtvMediaPlayer.this.stopTickers();
                MgtvMediaPlayer.this.mPlayStatus = PlayStatus.ERROR;
                MgtvMediaPlayer.this.mErrorExtraCodeStore = i4;
                if (MgtvMediaPlayer.this.mOnErrorListener != null) {
                    return MgtvMediaPlayer.this.mOnErrorListener.onError(i3, i4);
                }
                return true;
            }
        };
        this.mIsGetPositionCallback = false;
        this.mPlayStatus = PlayStatus.IDLE;
        this.mRenderType = RenderType.NATIVE_WINDOW;
        this.mPlayTicker = new ExTicker(1000).setTypeStr(PlayAudioData.TAG_NEED_PLAY);
        this.mBufferTick = new ExTicker(1000).setTypeStr("buffer");
        this.mPlayerType = 2;
        this.mMainThreadID = -1L;
        this.mCacheReplaceMap = new LinkedHashMap();
        this.mIsInnerRetrying = false;
        this.mRetryLastErrorCode = 0;
        this.mRenderDisableWarnSended = false;
        this.mForceHttpDns = false;
        this.mHttpDnsNeedRetry = false;
        this.mJavaDnsEnable = false;
        this.mJavaDnsType = com.hunantv.media.player.a.a.b.FREE_HTTP_DNS;
        this.mHttpDnsEnable = false;
        this.mPlayerReset = true;
        this.mLoopPlayerReset = true;
        this.mLastUri = null;
        this.mLastHostErr = "00";
        this.mLastTcpErr = "00";
        this.mLastIpCount = 0;
        this.mLastIpIndex = -1;
        this.mLastDnsType = -1;
        this.mCurrentDnsDsc = "native";
        this.mEnableP2PHttpDns = false;
        this.mForceP2pHttpDns = false;
        this.mDnsThreadManager = new com.hunantv.media.player.a.d().a(new com.hunantv.media.player.a.d.b() {
            @Override
            public void updateIPs(String str, List<String> list) {
                P2pMgr.YfAddBackupIps(str, list, MgtvMediaPlayer.this.mForceP2pHttpDns);
            }
        });
        this.mAVSyncErrReported = false;
        this.mAVSyncErrSumReported = false;
        this.mAVSyncErrSum = 0;
        this.mAVSyncStartTimestamp = 0L;
        this.mPrepareAsyncTimeStampMs = 0L;
        this.mPreBufferState = new SyncStateMachine(1);
        this.mPreBufferMaxS = 5;
        this.mIsAudioExist = -1;
        this.mIsVsrOpen = -1;
        this.mIsNativePausedLoadData = 0;
        this.mIsWanosAudioEffectValid = false;
        this.mLastPosition = 0;
        this.mPositionLoged = false;
        this.mRealEncodeType = -1;
        this.mStreamFormatType = -1;
        this.mNotifyHandler = new MainNotifyHandler(this);
        this.mWillOpenUrl = "";
        this.mReportedTSLAN = false;
        this.mDnsLock = new Object();
        this.mIsP2pTSSkipReport = false;
        this.mCodecName = "n";
        this.mVVbuft = -1;
        this.mEnableJAVAIPCacheMap = false;
        this.mIPCacheMap = new HashMap();
        this.mVideoFrameClockNotifyMs = -1;
        this.mVideoFrameClockNotifyType = -1;
        this.mVideoFrameClockNotifyTimeStart = -1L;
        this.mVideoFrameClockNotifyTimeEnd = -1L;
        this.mCacheReportTag = "default";
        this.mCacheReportLerr = 0;
        this.mEnableDnsNoNetStrategy = false;
        this.mDnsNoNetWaiter = new Object();
        this.mLastIsNetworkAvailableNNS = true;
        this.mDnsNoNetMaxRetry = 20;
        this.mLastTsSkipErrExtra = 0;
        this.fstime = "n/n";
        this.mcColorFormat = "n_n";
        this.isFlowReportEnable = false;
        this.vsri = "0|0_0|0_0";
        this.vsrver = "n";
        this.vsrvkver = "n";
        this.mSourceNetListner = new MgtvPlayerListener.OnSourceNetHandledListener() {
            public static final int REPORT_HTTP_DNS_INTERRUPT = -2;
            public static final int REPORT_HTTP_DNS_PV = 0;
            private boolean mIsPauseLoad = false;

            private void checkErrorCode(int i3, int i4, Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                int i5 = bundle2.getInt("retry_counter");
                MgtvMediaPlayer.this.mSourceRetryCount = i5;
                MgtvMediaPlayer.this.mSourceRetryCode = i4;
                if (MgtvMediaPlayer.this.isDnsCacheEnable() && i5 >= 1 && MgtvMediaPlayer.this.checkAndCleanDnsCache(i3, i4)) {
                    MgtvMediaPlayer.this.mHttpDnsEnable = true;
                }
            }

            private boolean didHDJSwitch(Bundle bundle2) {
                if (MgtvMediaPlayer.this.mHDJSwitchUrl.length() <= 0 || bundle2 == null) {
                    return false;
                }
                bundle2.putString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_URL_STRING, MgtvMediaPlayer.this.mHDJSwitchUrl);
                bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_IS_LAST_INT, 1);
                MgtvMediaPlayer.this.mHDJSwitchUrl = "";
                return true;
            }

            private void didHostAddr(Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                int i3 = bundle2.getInt("host_error");
                int i4 = bundle2.getInt("host_family");
                String string = bundle2.getString("host_hostname");
                String string2 = bundle2.getString("host_ip");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback didHostAddr error:" + i3 + ",family:" + i4 + ",hostname:" + string + ",ip_list:" + string2 + ",port:" + bundle2.getInt("host_port") + ",hostDnsType:" + MgtvMediaPlayer.this.mLastDnsType = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_HOST_ARRR_DNS_TYPE_INT));
                MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                StringBuilder sb = new StringBuilder();
                sb.append(i3);
                sb.append("");
                mgtvMediaPlayer.mLastHostErr = sb.toString();
                MgtvMediaPlayer.this.mLastIpIndex = 0;
                try {
                    String[] strArrSplit = string2.split(ProcessInfo.SPLIT_NEW_VERSION);
                    MgtvMediaPlayer.this.mLastIpCount = 0;
                    if (strArrSplit != null) {
                        for (String str : strArrSplit) {
                            if (com.hunantv.media.player.a.e.e(str)) {
                                MgtvMediaPlayer.access$4208(MgtvMediaPlayer.this);
                            }
                        }
                    }
                    MgtvMediaPlayer.this.mLastIps = strArrSplit;
                    if (!MgtvMediaPlayer.this.mEnableJAVAIPCacheMap || i3 != 0 || MgtvMediaPlayer.this.mIPCacheMap.containsKey(string) || strArrSplit == null || strArrSplit.length <= 0) {
                        return;
                    }
                    IPList iPList = new IPList(string, strArrSplit);
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didHostAddr put:" + string + "-" + IPList.formatIPList(iPList.nUseList));
                    MgtvMediaPlayer.this.mIPCacheMap.put(string, iPList);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            private boolean didLiveOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return false;
                }
                return onLiveWillOpen(bundle2);
            }

            private boolean didLiveReopen(Bundle bundle2) {
                boolean z2 = MgtvMediaPlayer.this.mLiveReopen;
                if (MgtvMediaPlayer.this.mLiveReopen) {
                    MgtvMediaPlayer.this.mLiveReopen = false;
                }
                return z2;
            }

            private boolean didLoopOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return false;
                }
                return onLiveWillOpen(bundle2);
            }

            private boolean didLoopReopen(Bundle bundle2) {
                if (MgtvMediaPlayer.this.mLoopPlayerSwitchUrl.length() <= 0) {
                    return false;
                }
                bundle2.putString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_URL_STRING, MgtvMediaPlayer.this.mLoopPlayerSwitchUrl);
                MgtvMediaPlayer.this.mLoopPlayerSwitchUrl = "";
                return true;
            }

            private void didTcpOpen(Bundle bundle2) {
                StringBuilder sb;
                IPList iPList;
                if (bundle2 == null) {
                    return;
                }
                int i3 = bundle2.getInt("port");
                int i4 = bundle2.getInt("family");
                int i5 = bundle2.getInt("error");
                String string = bundle2.getString("ip");
                String string2 = bundle2.getString("tcp_hostname");
                long j = bundle2.getLong("switch_key");
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "didTcpOpen switch_key:" + j);
                if (MgtvMediaPlayer.this.mMediaPlayer != null && MgtvMediaPlayer.this.mMediaPlayer.I() != null) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "didTcpOpen origin:" + MgtvMediaPlayer.this.mMediaPlayer.I());
                }
                String logTag = MgtvMediaPlayer.this.getLogTag();
                if (i5 != 0) {
                    sb = new StringBuilder();
                    sb.append("chodison didTcpOpen port:");
                    sb.append(i3);
                    sb.append(",family:");
                    sb.append(i4);
                    sb.append(",error_code:");
                    sb.append(i5);
                    sb.append(",ip:");
                    sb.append(string);
                    sb.append(",hostname:");
                    sb.append(string2);
                    DebugLog.e(logTag, sb.toString());
                } else {
                    sb = new StringBuilder();
                    sb.append("chodison didTcpOpen port:");
                    sb.append(i3);
                    sb.append(",family:");
                    sb.append(i4);
                    sb.append(",ip:");
                    sb.append(string);
                    sb.append(",hostname:");
                    sb.append(string2);
                    DebugLog.i(logTag, sb.toString());
                }
                MgtvMediaPlayer.this.mLastTcpErr = i5 + "";
                MgtvMediaPlayer.this.mLastTcpIP = string;
                MgtvMediaPlayer.access$2808(MgtvMediaPlayer.this);
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap) {
                    try {
                        if (!MgtvMediaPlayer.this.mIPCacheMap.containsKey(string2) || (iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(string2)) == null) {
                            return;
                        }
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didTcpOpen remove " + string + " from " + string2);
                        iPList.nUseList.remove(string);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didTcpOpen rest ip:" + IPList.formatIPList(iPList.nUseList));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }

            private boolean doNetHttpWillOpenFailed(int i3, int i4, Bundle bundle2) {
                boolean z2;
                List<String> list;
                String logTag;
                String str;
                checkErrorCode(i3, i4, bundle2);
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                int i5 = bundle2.getInt("cur_dl_dize");
                if (isInitMp4(MgtvMediaPlayer.this.mErrorUrl)) {
                    MgtvMediaPlayer.this.mIsInitMp4Error = true;
                } else {
                    MgtvMediaPlayer.this.mIsInitMp4Error = false;
                }
                int i6 = bundle2.getInt("retry_counter");
                if (UrlUtil.isFilePrefix(MgtvMediaPlayer.this.mErrorUrl) && !MgtvMediaPlayer.this.mCacheReplaceMap.isEmpty()) {
                    if (MgtvMediaPlayer.this.mOnWarningListener != null) {
                        MgtvMediaPlayer.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_TS_CACHE_SKIP, i4 + "", MgtvMediaPlayer.this.mErrorUrl, null);
                    }
                    String str2 = (String) MgtvMediaPlayer.this.mCacheReplaceMap.get(MgtvMediaPlayer.this.mErrorUrl);
                    if (str2 != null) {
                        MgtvMediaPlayer.access$7408(MgtvMediaPlayer.this);
                        MgtvMediaPlayer.this.mErrorUrl = str2;
                        bundle2.putString("url", str2);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed replace local_url to " + str2);
                    }
                }
                bundle2.getString("player_hash");
                int i7 = bundle2.getInt("io_type");
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i7), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4));
                if (isENETUNREACHcode(i3, i4) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i3, i4))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4));
                    return true;
                }
                synchronized (MgtvMediaPlayer.this.mDnsNoNetWaiter) {
                    if (!isPlayerReset() && MgtvMediaPlayer.this.mEnableDnsNoNetStrategy && isDnsError(i3, i4)) {
                        boolean zC = com.hunantv.media.report.c.d.c(MgtvMediaPlayer.this.mContext);
                        if (!zC) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 1000 in");
                            try {
                                MgtvMediaPlayer.this.mDnsNoNetWaiter.wait(1000L);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str = "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 1000 out";
                            DebugLog.i(logTag, str);
                            z2 = true;
                        } else if (!zC || MgtvMediaPlayer.this.mLastIsNetworkAvailableNNS) {
                            z2 = false;
                        } else {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 3000 in");
                            try {
                                MgtvMediaPlayer.this.mDnsNoNetWaiter.wait(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str = "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 3000 out";
                            DebugLog.i(logTag, str);
                            z2 = true;
                        }
                        MgtvMediaPlayer.this.mLastIsNetworkAvailableNNS = zC;
                    } else {
                        z2 = false;
                    }
                }
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed mIsLive:" + MgtvMediaPlayer.this.mIsLive + ",mPlayerMode:" + MgtvMediaPlayer.this.mPlayerMode + ",mPrepared:" + MgtvMediaPlayer.this.mPrepared + ",mIsBuffering:" + MgtvMediaPlayer.this.mIsBuffering + ",mTsNotSkip:" + MgtvMediaPlayer.this.mTsNotSkip + ",mLoadMaxRetryTime:" + MgtvMediaPlayer.this.mLoadMaxRetryTime + ",mPlayStatus:" + MgtvMediaPlayer.this.mPlayStatus + ",lip:" + MgtvMediaPlayer.this.getLastIP());
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed %d-%d-%d-%d-%s", Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                if ((!MgtvMediaPlayer.this.mIsLive || MgtvMediaPlayer.this.isVod()) && MgtvMediaPlayer.this.mPlayerMode != 1) {
                    if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && (i4 == 100911 || i4 == 300021 || CodeUtil.isHttp4XX(i3, i4) || CodeUtil.isHttp5XX(i3, i4))) {
                        String hostName = UrlUtil.getHostName(UrlUtil.getValidHttpUrl(bundle2.getString("url")));
                        if (!StringUtil.isEmpty(hostName) && !com.hunantv.media.player.a.e.a(hostName) && MgtvMediaPlayer.this.mIPCacheMap.containsKey(hostName)) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http contains host:" + hostName);
                            IPList iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(hostName);
                            if (iPList != null && iPList.checkTTL() && (list = iPList.nUseList) != null && list.size() > 0) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http check ttl success." + iPList);
                                if (i6 >= 6) {
                                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http return false.not retry");
                                    reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                                    return false;
                                }
                                bundle2.putString("user_msg", MgtvMediaPlayer.USER_MSG_FLAG_USE_CACHE);
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http return true.try to goto ip choose");
                                reportHttpErrorPV(i6, MgtvMediaPlayer.this.mErrorUrl, i4, "ipcache");
                                return true;
                            }
                        }
                    }
                    reportHttpErrorPV(i6, MgtvMediaPlayer.this.mErrorUrl, i4, "default");
                    if (z2) {
                        if (i6 < MgtvMediaPlayer.this.mDnsNoNetMaxRetry) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy retry cause by inDnsNetStrategy");
                            return true;
                        }
                        reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy skip retry cause by errorRetryCount >= mDnsNoNetMaxRetry");
                        return false;
                    }
                    if (!MgtvMediaPlayer.this.mPrepared) {
                        if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl)) {
                            if (i6 < 2) {
                                return true;
                            }
                            reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                            return false;
                        }
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && isInitMp4(MgtvMediaPlayer.this.mErrorUrl) && i5 > 0 && i6 < 10) {
                            return true;
                        }
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i6 < MgtvMediaPlayer.this.mLoadMaxRetryTime) {
                            return true;
                        }
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                        mgtvMediaPlayer.callbackTsSkip(mgtvMediaPlayer.mErrorUrl, i3, i4);
                        reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                        return false;
                    }
                    if (MgtvMediaPlayer.this.mTsNotSkip && MgtvMediaPlayer.this.isRendered()) {
                        return true;
                    }
                } else {
                    if (!MgtvMediaPlayer.this.mPrepared) {
                        if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl)) {
                            return i6 < 2;
                        }
                        MgtvMediaPlayer mgtvMediaPlayer2 = MgtvMediaPlayer.this;
                        mgtvMediaPlayer2.callbackTsSkip(mgtvMediaPlayer2.mErrorUrl, i3, i4);
                        return false;
                    }
                    if (MgtvMediaPlayer.this.mIsBuffering && MgtvMediaPlayer.this.isHLSPlayingUrl() && i6 >= 1) {
                        if (UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) {
                            MgtvMediaPlayer mgtvMediaPlayer3 = MgtvMediaPlayer.this;
                            mgtvMediaPlayer3.callbackTsSkip(mgtvMediaPlayer3.mErrorUrl, i3, i4);
                        }
                        return false;
                    }
                }
                if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i6 < 2) {
                    return true;
                }
                if (UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) {
                    MgtvMediaPlayer mgtvMediaPlayer4 = MgtvMediaPlayer.this;
                    mgtvMediaPlayer4.callbackTsSkip(mgtvMediaPlayer4.mErrorUrl, i3, i4);
                }
                reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                return false;
            }

            private boolean doNewHttpWillOpen(Bundle bundle2) {
                int i3 = bundle2.getInt("error_type");
                int i4 = bundle2.getInt("error_code");
                bundle2.getInt("retry_counter");
                int i5 = bundle2.getInt("reset_iplist");
                MgtvMediaPlayer.this.mLastDlSize = bundle2.getInt("cur_dl_dize");
                bundle2.putString("user_msg", "init");
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && i5 == 1) {
                    MgtvMediaPlayer.this.clearIPCache();
                }
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doNewHttpWillOpen in error_what:" + i3 + ",error_extra:" + i4 + ",reset_iplist:" + i5 + ",mLastDlSize:" + MgtvMediaPlayer.this.mLastDlSize);
                bundle2.putInt("reset_iplist", 0);
                if (i4 == 0) {
                    MgtvMediaPlayer.this.mIsInitMp4Error = false;
                    if (i4 == 0 && MgtvMediaPlayer.this.mCacheEable) {
                        replaceUrlFromCache(bundle2);
                    }
                    return false;
                }
                boolean zDoNetHttpWillOpenFailed = doNetHttpWillOpenFailed(i3, i4, bundle2);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed return " + zDoNetHttpWillOpenFailed + StringUtils.COMMA + i3 + "-" + i4 + "-" + MgtvMediaPlayer.this.mErrorUrl);
                return zDoNetHttpWillOpenFailed;
            }

            private boolean doWillGetEnv(Bundle bundle2) {
                String string = bundle2.getString("env_key");
                if (string == null || string.length() <= 0) {
                    return false;
                }
                bundle2.putString("env_value", System.getenv(string));
                return true;
            }

            private boolean doWillHostAddr(Bundle bundle2) {
                List<String> list;
                if (bundle2 == null) {
                    return false;
                }
                int i3 = bundle2.getInt("addr_handle");
                String string = bundle2.getString("player_hash");
                int i4 = bundle2.getInt("retry_counter");
                String string2 = bundle2.getString("user_msg");
                String string3 = bundle2.getString("addr_hostname");
                long j = bundle2.getLong("switch_key");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback doWillHostAddr is_handle:" + i3 + ",hash:" + string + ",count_int:" + i4 + ",user_msg:" + string2 + ",hostname:" + string3 + ",switch_key:" + j);
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && i3 != 1 && MgtvMediaPlayer.USER_MSG_FLAG_USE_CACHE.equals(string2) && !com.hunantv.media.player.a.e.a(string3) && MgtvMediaPlayer.this.mIPCacheMap.containsKey(string3)) {
                    try {
                        IPList iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(string3);
                        if (iPList != null && (list = iPList.nUseList) != null && list.size() > 0 && iPList.checkTTL()) {
                            String str = iPList.nUseList.get(0);
                            if (com.hunantv.media.player.a.e.e(str)) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache doWillHostAddr put chooseip:" + str);
                                String iPList2 = IPList.formatIPList(iPList.nUseList);
                                if (!StringUtil.isEmpty(iPList2)) {
                                    DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback ipcache doWillHostAddr put srcIPListStr:" + iPList2);
                                    bundle2.putString("addr_hostname", iPList2);
                                }
                                bundle2.putString("addr_ip", str);
                                bundle2.putInt("addr_error", 0);
                                return false;
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                String string4 = bundle2.getString("addr_uri");
                if (com.hunantv.media.player.a.e.d(string3)) {
                    notifyIpIsLAN(MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "0", "hostname_" + string3);
                }
                boolean zA = com.hunantv.media.player.a.e.a(string3);
                boolean zC = com.hunantv.media.report.c.d.c(MgtvMediaPlayer.this.mContext);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doWillHostAddr hostname:" + string3 + ",isIp:" + zA);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doWillHostAddr is_handle=" + i3 + ",mBackJavaDns=" + MgtvMediaPlayer.this.mBackJavaDns + ",isIp=" + zA + ",mForceHttpDns:" + MgtvMediaPlayer.this.mForceHttpDns);
                if ((MgtvMediaPlayer.this.mForceHttpDns && !zA) || ((MgtvMediaPlayer.this.mJavaDnsEnable && !zA) || (i3 == 1 && MgtvMediaPlayer.this.mBackJavaDns && !zA))) {
                    if (zC) {
                        MgtvMediaPlayer.this.mLastUri = string4;
                        domainResolve(string3, bundle2, MgtvMediaPlayer.this.mForceHttpDns);
                    } else {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "skip domainResolve cause net not available");
                    }
                    return MgtvMediaPlayer.this.mPlayerReset;
                }
                if (i3 == 1 && zA) {
                    bundle2.putString("addr_ip", string3);
                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, 0);
                    bundle2.putInt("addr_error", 0);
                }
                return false;
            }

            private boolean doWillHttpOpen(Bundle bundle2) {
                if (bundle2 != null) {
                    MgtvMediaPlayer.this.mLastRequestUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                }
                if (MgtvMediaPlayer.this.mReportParams != null && (MgtvMediaPlayer.this.mReportParams.getVideoType().equals(ReportParams.VideoType.AD_PRE) || MgtvMediaPlayer.this.mReportParams.getVideoType().equals(ReportParams.VideoType.AD_MID))) {
                    return onNormalHttpWillOpen(bundle2);
                }
                if (bundle2 != null) {
                    MgtvMediaPlayer.this.mWillOpenUrl = bundle2.getString("url");
                }
                return doNewHttpWillOpen(bundle2);
            }

            private void domainResolve(String str, Bundle bundle2, boolean z2) {
                com.hunantv.media.player.a.a.b bVarD;
                int iE;
                if (str == null || bundle2 == null) {
                    DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "skip domainResolve hostname or args is null");
                    return;
                }
                com.hunantv.media.player.a.a aVar = new com.hunantv.media.player.a.a();
                aVar.a(new com.hunantv.media.player.a.a.InterfaceC0133a() {
                    @Override
                    public void onDnsFail(com.hunantv.media.player.a.a aVar2) {
                    }

                    @Override
                    public void onDnsFinish(com.hunantv.media.player.a.a aVar2) {
                        synchronized (MgtvMediaPlayer.this.mDnsLock) {
                            MgtvMediaPlayer.this.mDnsLock.notifyAll();
                        }
                    }

                    @Override
                    public void onDnsStart(com.hunantv.media.player.a.a aVar2) {
                    }

                    @Override
                    public void onDnsSuc(com.hunantv.media.player.a.a aVar2, String[] strArr) {
                    }
                });
                boolean zResolveStrategy = resolveStrategy(aVar, str, bundle2, z2, MgtvMediaPlayer.this.mHttpDnsNeedRetry);
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve use:" + zResolveStrategy);
                if (zResolveStrategy) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve use type:" + aVar.d());
                    notifyHttpDnsReport(aVar.d(), 2000, 0);
                }
                synchronized (MgtvMediaPlayer.this.mDnsLock) {
                    while (aVar.a() && !isJavaDnsInterrupt()) {
                        DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "domainResolve wait in");
                        try {
                            MgtvMediaPlayer.this.mDnsLock.wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "domainResolve wait out. resolving:" + aVar.a() + ",isJavaDnsInterrupt:" + isJavaDnsInterrupt());
                String[] strArrA = com.hunantv.media.player.a.e.a(aVar.b());
                aVar.c();
                String str2 = "costMs:" + aVar.f() + ";ips:" + com.hunantv.media.utils.StringUtil.formatArrayString(strArrA) + ";net:" + NetPlayConfig.getNetworkType() + ProcessInfo.SPLIT_NEW_VERSION;
                String iPList = IPList.formatIPList(strArrA);
                String str3 = (strArrA == null || strArrA.length <= 0) ? null : strArrA[0];
                int i3 = AnonymousClass28.$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType[aVar.d().ordinal()] != 1 ? 5 : 4;
                if (!isJavaDnsInterrupt() && com.hunantv.media.player.a.e.e(str3)) {
                    if (zResolveStrategy) {
                        updateCurrentDnsDsc(aVar.d());
                        if (com.hunantv.media.player.a.e.d(str3)) {
                            notifyHttpDnsReport(aVar.d(), 2001, 100, str2);
                        } else {
                            notifyHttpDnsReport(aVar.d(), 2001, 0, str2);
                        }
                    }
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve put iplist:" + iPList);
                    bundle2.putString("addr_hostname", iPList);
                    if (com.hunantv.media.player.a.e.e(str3)) {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve put firstIP:" + str3);
                        bundle2.putString("addr_ip", str3);
                    }
                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, i3);
                    bundle2.putInt("addr_error", 0);
                    return;
                }
                if (zResolveStrategy) {
                    if (isJavaDnsInterrupt() && aVar.e() == 0) {
                        bVarD = aVar.d();
                        iE = -2;
                    } else {
                        bVarD = aVar.d();
                        iE = aVar.e();
                    }
                    notifyHttpDnsReport(bVarD, 2002, iE, str2);
                    if (!isJavaDnsInterrupt()) {
                        int iA = aVar.a(199);
                        if (aVar.e() != 0) {
                            iA = aVar.e();
                        } else if (str3 != null && !com.hunantv.media.player.a.e.a(str3)) {
                            iA = aVar.a(107);
                        }
                        int i4 = -iA;
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), aVar.d() + "resolve putInt error:" + i4);
                        bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, i3);
                        bundle2.putInt("addr_error", i4);
                    }
                }
                MgtvMediaPlayer.this.mCurrentDnsDsc = "native";
            }

            private String findTsCachPath(String str, String[] strArr) {
                if (strArr == null) {
                    return null;
                }
                try {
                    String fileName = UrlUtil.getFileName(str);
                    for (String str2 : strArr) {
                        if (str2 != null && new File(str2).getName().equals(fileName)) {
                            return str2;
                        }
                    }
                } catch (Exception unused) {
                }
                return null;
            }

            private boolean isDnsError(int i3, int i4) {
                return i4 == 300600 || i3 == 400605 || MGTVP2pDirectMediaDataSource.isP2pDirectDnsError(i3, i4);
            }

            private boolean isENETUNREACHcode(int i3, int i4) {
                return i4 == 300005 || MGTVP2pDirectMediaDataSource.getShortErrorCode(i3, i4) == 101;
            }

            private boolean isInitMp4(String str) {
                return MgtvMediaPlayer.this.isHLSPlayingUrl() && UrlUtil.isSuffixUrl(str, Video.SUFFIX.SUFFIX_MP4);
            }

            private boolean isJavaDnsInterrupt() {
                return isPlayerReset();
            }

            private boolean isPlayerReset() {
                return MgtvMediaPlayer.this.mPlayerReset || (MgtvMediaPlayer.this.mPlayerMode == 2 && MgtvMediaPlayer.this.mLoopPlayerReset);
            }

            private void notifyHttpDnsReport(com.hunantv.media.player.a.a.b bVar, int i3, int i4) {
                notifyHttpDnsReport(bVar, i3, i4, "");
            }

            private void notifyIpIsLAN(String str, String str2) {
                if (MgtvMediaPlayer.this.mOnWarningListener == null || MgtvMediaPlayer.this.mReportParams == null || MgtvMediaPlayer.this.mReportParams.getVideoType() != ReportParams.VideoType.VOD) {
                    return;
                }
                if (!MgtvMediaPlayer.this.mReportedTSLAN) {
                    notifyMessage(1002, str, str2 + "_suffix_" + UrlUtil.getSuffix(MgtvMediaPlayer.this.mWillOpenUrl));
                }
                if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mWillOpenUrl)) {
                    return;
                }
                MgtvMediaPlayer.this.mReportedTSLAN = true;
            }

            private void notifyMessage(int i3, int i4, String str) {
                Message message = new Message();
                message.what = i3;
                message.arg1 = i4;
                message.obj = str;
                MgtvMediaPlayer.this.mNotifyHandler.sendMessage(message);
            }

            private boolean onLiveWillOpen(Bundle bundle2) {
                int i3 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERROR_WHAT_INT);
                int i4 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERROR_EXTRA_INT);
                MgtvMediaPlayer.this.mLastRequestUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_SRC_URL_STRING));
                if (i4 == 0) {
                    return false;
                }
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_SRC_URL_STRING));
                int i5 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_COUNTER_INT);
                int i6 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERR_IO_TYPE_INT);
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLiveWillOpen url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                if (isENETUNREACHcode(i3, i4) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i3, i4))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLiveWillOpen network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                    return true;
                }
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_LIVE_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                return !MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i5 < 2;
            }

            private boolean onLoopWillOpen(Bundle bundle2) {
                int i3 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERROR_WHAT_INT);
                int i4 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERROR_EXTRA_INT);
                if (i4 == 0) {
                    return false;
                }
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_SRC_URL_STRING));
                int i5 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_COUNTER_INT);
                int i6 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERR_IO_TYPE_INT);
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLoopWillOpen url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                if (isENETUNREACHcode(i3, i4) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i3, i4))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLoopWillOpen network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                    return true;
                }
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_LOOP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                return !MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i5 < 2;
            }

            private boolean onNormalHttpWillOpen(Bundle bundle2) {
                int i3 = bundle2.getInt("error_type");
                int i4 = bundle2.getInt("error_code");
                if (i4 == 0) {
                    return false;
                }
                checkErrorCode(i3, i4, bundle2);
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                bundle2.getString("player_hash");
                bundle2.getString("user_msg");
                int i5 = bundle2.getInt("retry_counter");
                int i6 = bundle2.getInt("io_type");
                long j = bundle2.getLong("switch_key");
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl switch_key:" + j);
                if (isENETUNREACHcode(i3, i4) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i3, i4))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                    return true;
                }
                if (MgtvMediaPlayer.this.mIsLive) {
                    if ((!MgtvMediaPlayer.this.mIsBuffering || !MgtvMediaPlayer.this.isHLSPlayingUrl() || !UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) && MgtvMediaPlayer.this.mPrepared) {
                        UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl);
                        DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_HTTP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4)) {
                            return true;
                        }
                    }
                } else if (!MgtvMediaPlayer.this.mIsBuffering && MgtvMediaPlayer.this.mPrepared) {
                    DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_HTTP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                    if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i5 < 2) {
                        return true;
                    }
                }
                MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                mgtvMediaPlayer.callbackTsSkip(mgtvMediaPlayer.mErrorUrl, i3, i4);
                return false;
            }

            private boolean replaceUrlFromCache(Bundle bundle2) {
                String string = bundle2.getString("url");
                if (!UrlUtil.isFilePrefix(string) && !UrlUtil.isLocal(string)) {
                    String fileName = UrlUtil.getFileName(string);
                    if (StringUtil.isEmpty(fileName)) {
                        return false;
                    }
                    DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache try to find replace cache:" + string);
                    String strFindTsCachPath = null;
                    if (UrlUtil.isM3u8(string)) {
                        String str = MgtvMediaPlayer.this.mCacheM3u8Path;
                        String fileName2 = UrlUtil.getFileName(str);
                        if (!StringUtil.isEmpty(str) && !StringUtil.isEmpty(fileName2) && fileName2.equals(fileName)) {
                            strFindTsCachPath = str;
                        }
                    } else if (MgtvMediaPlayer.this.isHLSPlayingUrl() && UrlUtil.isSegment(string)) {
                        strFindTsCachPath = findTsCachPath(string, MgtvMediaPlayer.this.mCacheTsPaths);
                    }
                    if (FileUtil.exist(strFindTsCachPath)) {
                        String strAddLocalPrefix = UrlUtil.addLocalPrefix(strFindTsCachPath);
                        if (!StringUtil.isEmpty(strAddLocalPrefix)) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache from " + string);
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache to " + strAddLocalPrefix);
                            bundle2.putString("url", strAddLocalPrefix);
                            if (UrlUtil.isM3u8(string)) {
                                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache put SRC_URL " + string);
                                bundle2.putString("src_url", string);
                            }
                            MgtvMediaPlayer.this.mCacheReplaceMap.put(strAddLocalPrefix, string);
                            return true;
                        }
                    }
                }
                return false;
            }

            private void reportHttpErrorErr(int i3, String str) {
                if ((isInitMp4(str) || UrlUtil.isM3u8(str)) && MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.getVideoType() == ReportParams.VideoType.VOD && MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.NO_PROXY && MgtvMediaPlayer.this.mOnWarningListener != null) {
                    String strG = MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "00";
                    MgtvPlayerListener.OnWarningListener onWarningListener = MgtvMediaPlayer.this.mOnWarningListener;
                    String str2 = i3 + Consts.DOT + MgtvMediaPlayer.this.mCacheReportLerr;
                    StringBuilder sb = new StringBuilder();
                    sb.append("psuuid_");
                    sb.append(strG);
                    sb.append("_render_");
                    sb.append(MgtvMediaPlayer.this.isRendered() ? "1" : "0");
                    sb.append("_url_");
                    sb.append(str);
                    sb.append("_type_");
                    sb.append(MgtvMediaPlayer.this.mCacheReportTag);
                    onWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTP_ERROR_ERR, str2, sb.toString(), null);
                }
            }

            private void reportHttpErrorPV(int i3, String str, int i4, String str2) {
                if (i3 == 0) {
                    MgtvMediaPlayer.this.mCacheReportTag = "default";
                    MgtvMediaPlayer.this.mCacheReportLerr = 0;
                }
                if (i3 == 0) {
                    if ((isInitMp4(str) || UrlUtil.isM3u8(str)) && MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.getVideoType() == ReportParams.VideoType.VOD && MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.NO_PROXY && MgtvMediaPlayer.this.mOnWarningListener != null) {
                        String strG = MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "00";
                        MgtvMediaPlayer.this.mCacheReportTag = str2;
                        MgtvMediaPlayer.this.mCacheReportLerr = i4;
                        MgtvPlayerListener.OnWarningListener onWarningListener = MgtvMediaPlayer.this.mOnWarningListener;
                        String str3 = i4 + "";
                        StringBuilder sb = new StringBuilder();
                        sb.append("psuuid_");
                        sb.append(strG);
                        sb.append("_render_");
                        sb.append(MgtvMediaPlayer.this.isRendered() ? "1" : "0");
                        sb.append("_url_");
                        sb.append(str);
                        sb.append("_type_");
                        sb.append(str2);
                        onWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTP_ERROR_PV, str3, sb.toString(), null);
                    }
                }
            }

            private boolean resolveStrategy(@NonNull com.hunantv.media.player.a.a aVar, @NonNull String str, Bundle bundle2) {
                return resolveStrategy(aVar, str, bundle2, false, false);
            }

            private void updateCurrentDnsDsc(com.hunantv.media.player.a.a.b bVar) {
                MgtvMediaPlayer mgtvMediaPlayer;
                String str;
                int i3 = AnonymousClass28.$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType[bVar.ordinal()];
                if (i3 == 1) {
                    mgtvMediaPlayer = MgtvMediaPlayer.this;
                    str = MgtvMediaPlayer.DNS_JAVA_NORMAL;
                } else {
                    if (i3 != 2) {
                        return;
                    }
                    mgtvMediaPlayer = MgtvMediaPlayer.this;
                    str = MgtvMediaPlayer.DNS_JAVA_HTTPDNS;
                }
                mgtvMediaPlayer.mCurrentDnsDsc = str;
            }

            private void updateIp(String str) {
                String logTag;
                StringBuilder sb;
                String str2;
                if (MgtvMediaPlayer.this.mMediaPlayer == null || (!(MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) || MgtvMediaPlayer.this.mMediaPlayer.ai() == null)) {
                    if (MgtvMediaPlayer.this.mMediaPlayer == null || !((MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) && MgtvMediaPlayer.this.mMediaPlayer.ai() == null)) {
                        MgtvMediaPlayer.this.mLastIP = str;
                    } else {
                        MgtvMediaPlayer.this.mLastIP = "0.0.0.1";
                    }
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    str2 = "didTcpOpen tcp_ip:";
                } else {
                    com.mgtv.a.d taskInfo = P2pMgr.getTaskInfo(MgtvMediaPlayer.this.mMediaPlayer.ai());
                    if (taskInfo != null) {
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                        mgtvMediaPlayer.mLastIP = mgtvMediaPlayer.mLastP2pCdnIP = taskInfo.b;
                    } else {
                        MgtvMediaPlayer.this.mLastIP = null;
                    }
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    str2 = "didTcpOpen p2p QueryTaskInfo cdnIp:";
                }
                sb.append(str2);
                sb.append(MgtvMediaPlayer.this.mLastIP);
                DebugLog.d(logTag, sb.toString());
            }

            private void willTcpOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                String string = bundle2.getString("tcp_hostname");
                String string2 = bundle2.getString("ip");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback willTcpOpen tcp_hostname:" + string + ",tcp_ip:" + string2);
                MgtvMediaPlayer.this.mLastHostIP = string2;
                updateIp(string2);
                if (string2 == null || string2.length() <= 1 || !com.hunantv.media.player.a.e.d(string2)) {
                    return;
                }
                notifyIpIsLAN("1", MgtvMediaPlayer.this.getCurrentDnsDsc() + "_hostip_" + string2);
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override
            public boolean onSourceNetCtrl(int i3, Bundle bundle2) {
                IP2pTask iP2pTaskAi;
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.onSourceNetCtrl 0x%5x", Integer.valueOf(i3));
                switch (i3) {
                    case 131073:
                        willTcpOpen(bundle2);
                        return false;
                    case 131074:
                        didTcpOpen(bundle2);
                        return false;
                    case 131075:
                        return doWillHttpOpen(bundle2);
                    case 131077:
                        return didLiveOpen(bundle2);
                    case 131078:
                        return doWillHostAddr(bundle2);
                    case 131081:
                        return didLiveReopen(bundle2);
                    case 131088:
                        return didLoopOpen(bundle2);
                    case 131089:
                        return didLoopReopen(bundle2);
                    case 131090:
                        return didHDJSwitch(bundle2);
                    case 131104:
                        return doWillGetEnv(bundle2);
                    case 131120:
                        if (MgtvMediaPlayer.this.mPreBufferState.isEnable() && MgtvMediaPlayer.this.mPreBufferState.getState() == 2) {
                            this.mIsPauseLoad = true;
                            return true;
                        }
                        if (MgtvMediaPlayer.this.isSourceSwitching() || MgtvMediaPlayer.this.mMediaPlayer == null || (!(MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) || (iP2pTaskAi = MgtvMediaPlayer.this.mMediaPlayer.ai()) == null || iP2pTaskAi.getStatus() == 0)) {
                            if (this.mIsPauseLoad) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "CTRL_WILL_CHECK_PAUSE_LOAD will return false. will resume load");
                            }
                            this.mIsPauseLoad = false;
                            return false;
                        }
                        if (!this.mIsPauseLoad) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "CTRL_WILL_CHECK_PAUSE_LOAD will return true. will pause load");
                        }
                        this.mIsPauseLoad = true;
                        return true;
                    case 131184:
                        synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                            try {
                                if (bundle2 == null) {
                                    return false;
                                }
                                if (bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT) == 1) {
                                    if (MgtvMediaPlayer.this.mReporter != null) {
                                        MgtvMediaPlayer.this.mReporter.c();
                                    }
                                    int i4 = (int) bundle2.getLong(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_RETRY_KEY_LONG);
                                    SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i4));
                                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1 find:" + i4);
                                    if (smoothMediaSource != null) {
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1 , will retry use :" + smoothMediaSource.getUrl());
                                        bundle2.putString("smooth_switch_url", smoothMediaSource.getUrl());
                                        if (smoothMediaSource.getReporter() != null) {
                                            smoothMediaSource.getReporter().a();
                                            if (MgtvMediaPlayer.this.mReportParams != null) {
                                                MgtvMediaPlayer.this.mReportParams.setPlaySessionId(smoothMediaSource.getReporter().g());
                                            }
                                        }
                                    } else {
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1, not found source");
                                    }
                                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT, 0);
                                    return true;
                                }
                                int i5 = (int) bundle2.getLong("smooth_switch_key");
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH switch_key:" + i5);
                                SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i5);
                                if (smoothMediaSourceMatchLastKeySource != null) {
                                    if (smoothMediaSourceMatchLastKeySource.isLastRetry() && MgtvMediaPlayer.this.mReportParams != null && (MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.ONLY_P2P || MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.P2P_DRM)) {
                                        SmoothMediaSource smoothMediaSource2 = new SmoothMediaSource(MgtvMediaPlayer.this.getPlayingOriginUrl());
                                        smoothMediaSource2.setReportParams(MgtvMediaPlayer.this.mReportParams);
                                        smoothMediaSource2.bind(MgtvMediaPlayer.this);
                                        smoothMediaSource2.setThrowErrorIfSwitchFailed(true);
                                        MgtvMediaPlayer.this.mSmoothSourcesRecord.put(Integer.valueOf(smoothMediaSource2.getKey()), smoothMediaSource2);
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth is last retry. will retry key:" + smoothMediaSource2.getKey());
                                        bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT, 1);
                                        bundle2.putLong(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_RETRY_KEY_LONG, (long) smoothMediaSource2.getKey());
                                    }
                                    if (!smoothMediaSourceMatchLastKeySource.isLastRetry()) {
                                        String string = bundle2.getString("smooth_switch_url");
                                        bundle2.putString("smooth_switch_url", string);
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH switch_url:" + string);
                                        if (!StringUtil.isEmpty(string)) {
                                            int iIndexOf = string.indexOf(",mgtvjsource:");
                                            String strSubstring = iIndexOf >= 0 ? string.substring(iIndexOf) : "";
                                            boolean zOnSwitchSmoothSourceWillUpdate = MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null ? MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceWillUpdate(smoothMediaSourceMatchLastKeySource) : false;
                                            if (smoothMediaSourceMatchLastKeySource.getReadType() != 2 && zOnSwitchSmoothSourceWillUpdate && !StringUtil.isEmpty(smoothMediaSourceMatchLastKeySource.useUpdateUrl())) {
                                                String str = smoothMediaSourceMatchLastKeySource.useUpdateUrl() + strSubstring;
                                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH will update url:" + str);
                                                bundle2.putString("smooth_switch_url", str);
                                            }
                                        }
                                    }
                                }
                                SmoothMediaSource smoothMediaSource3 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i5));
                                if (smoothMediaSource3 != null && smoothMediaSource3.getReporter() != null) {
                                    smoothMediaSource3.getReporter().a();
                                    if (MgtvMediaPlayer.this.mReportParams != null) {
                                        MgtvMediaPlayer.this.mReportParams.setPlaySessionId(smoothMediaSource3.getReporter().g());
                                    }
                                }
                                return true;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    default:
                        return false;
                }
            }

            @Override
            public void onSourceNetEvent(int i3, Bundle bundle2) {
                if (i3 != 78338) {
                    return;
                }
                didHostAddr(bundle2);
            }

            private void notifyHttpDnsReport(com.hunantv.media.player.a.a.b bVar, int i3, int i4, String str) {
                if (bVar != com.hunantv.media.player.a.a.b.FREE_HTTP_DNS || MgtvMediaPlayer.this.mOnWarningListener == null) {
                    return;
                }
                notifyMessage(i3, i4, str);
            }

            private void notifyMessage(int i3, String str, String str2) {
                Message message = new Message();
                message.what = i3;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MainNotifyHandler.BUNDLE_STR_INFO1, str);
                bundle2.putString(MainNotifyHandler.BUNDLE_STR_INFO2, str2);
                message.setData(bundle2);
                MgtvMediaPlayer.this.mNotifyHandler.sendMessage(message);
            }

            private boolean resolveStrategy(@NonNull com.hunantv.media.player.a.a aVar, @NonNull String str, Bundle bundle2, boolean z2, boolean z3) {
                com.hunantv.media.player.a.a.b bVar;
                String logTag;
                String str2;
                if (z2 || (bundle2 != null && bundle2.getInt("addr_handle") == 1 && MgtvMediaPlayer.this.mBackJavaDns)) {
                    aVar.b(1);
                    bVar = com.hunantv.media.player.a.a.b.FREE_HTTP_DNS;
                } else {
                    if (MgtvMediaPlayer.this.isDnsCacheEnable()) {
                        if (MgtvMediaPlayer.this.mHttpDnsEnable) {
                            String strB = !StringUtil.isEmpty(MgtvMediaPlayer.this.mLastUri) ? com.hunantv.media.player.a.f.b(MgtvMediaPlayer.this.mLastUri) : null;
                            if (strB != null && !strB.trim().equals("")) {
                                logTag = MgtvMediaPlayer.this.getLogTag();
                                str2 = "resolveStrategy cache valid";
                            }
                        } else {
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str2 = "resolveStrategy cache valid and httpdns not open";
                        }
                        DebugLog.d(logTag, str2);
                        return false;
                    }
                    bVar = MgtvMediaPlayer.this.mJavaDnsType;
                }
                aVar.a(str, bVar, z3);
                return true;
            }
        };
        this.mLogTagKey = "";
        this.mEnableReport = true;
        this.p2pLocker = new Object();
        this.mSeekStartMs = -1L;
        this.mHw2SwType = Hw2SwType.NONE;
        this.mPlaybackSpeed = 1.0f;
        this.mRecordMaxPlaySpeed = 1.0f;
        this.mFrameListener = new MgtvPlayerListener.OnFrameListener() {
            @Override
            public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                synchronized (MgtvMediaPlayer.this.ptsLocker) {
                    try {
                        WeakHandler weakHandler = MgtvMediaPlayer.this.ptsWeakHandler;
                        if (weakHandler != null) {
                            weakHandler.removeMessages(256);
                            Message message = new Message();
                            message.what = 256;
                            message.obj = frameClock;
                            MgtvMediaPlayer.this.ptsWeakHandler.sendMessage(message);
                        }
                        if (MgtvMediaPlayer.this.mOnFrameListener != null) {
                            MgtvMediaPlayer.this.mOnFrameListener.onVFrameClockCome(frameClock);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.mInnerFlowDataStatistic = new FlowDataStatistic();
        this.mEnableImgoVsr = false;
        this.mLoopSourceKey = new AtomicInteger(1);
        this.mSubtitleSources = new ArrayList();
        this.ptsHandlerThread = null;
        this.ptsWeakHandler = null;
        this.ptsListeners = new HashSet();
        this.ptsLocker = new Object();
        this.mSmoothSourceListener = new d.n() {
            int lastSwitchingKey = -1;

            @Override
            public void onSmoothSwitchSourceComplete(d dVar, int i3, int i4, String str) {
                SmoothMediaSource smoothMediaSource;
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    try {
                        DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceComplete (type:" + i4 + ",key:" + i3 + ",msg:" + str + ")");
                        String logTag = MgtvMediaPlayer.this.getLogTag();
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSmoothSwitchSourceComplete current: ");
                        sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                        DebugLog.i(logTag, sb.toString());
                        for (Map.Entry entry : MgtvMediaPlayer.this.mSmoothSourcesRecord.entrySet()) {
                            if (((Integer) entry.getKey()).intValue() < i3 && (smoothMediaSource = (SmoothMediaSource) entry.getValue()) != null && !smoothMediaSource.isReleased()) {
                                smoothMediaSource.release();
                            }
                        }
                        MgtvMediaPlayer.this.mSmoothUseP2pFailed = false;
                        if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                            MgtvMediaPlayer.this.mMediaPlayer.c(false);
                        }
                        SmoothMediaSource smoothMediaSource2 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                        if (smoothMediaSource2 != null) {
                            if (!StringUtil.isEmpty(smoothMediaSource2.getVfps())) {
                                MgtvMediaPlayer.this.mRecordVfps = Float.parseFloat(smoothMediaSource2.getVfps());
                            }
                            MgtvMediaPlayer.this.mLastVideoWidth = smoothMediaSource2.getVideoWidth();
                            MgtvMediaPlayer.this.mLastVideoHeight = smoothMediaSource2.getVideoHeight();
                            if (MgtvMediaPlayer.this.mReporter != null) {
                                MgtvMediaPlayer.this.mReporter.c();
                            }
                            MgtvMediaPlayer.this.mReporter = smoothMediaSource2.getReporter();
                            if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                                MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mReporter);
                                MgtvMediaPlayer.this.mMediaPlayer.a(smoothMediaSource2.getReadType(), smoothMediaSource2.getUrl(), smoothMediaSource2.getPlayingUrl());
                                MgtvMediaPlayer.this.mMediaPlayer.h(smoothMediaSource2.getEnableImgoAIQE());
                            }
                            if (MgtvMediaPlayer.this.mDataSourceInfo != null) {
                                MgtvMediaPlayer.this.mDataSourceInfo.setVideoFormat(smoothMediaSource2.getVideoFormat());
                                MgtvMediaPlayer.this.mDataSourceInfo.setAudioFormat(smoothMediaSource2.getAudioFormat());
                                MgtvMediaPlayer.this.mDataSourceInfo.setFileFormat(smoothMediaSource2.getFileFormat());
                            }
                            if (MgtvMediaPlayer.this.mReporter != null) {
                                MgtvMediaPlayer.this.mReportParams.deepCopy(smoothMediaSource2.getReportParams());
                                MgtvMediaPlayer.this.mReporter.a(MgtvMediaPlayer.this.mReportParams);
                                MgtvMediaPlayer.this.mReporter.b();
                            }
                            String keyFrameMapKey = MgtvMediaPlayer.this.getKeyFrameMapKey(smoothMediaSource2.getVid(), smoothMediaSource2.getDef());
                            if (MgtvMediaPlayer.this.mSmoothKeyFrameMap.containsKey(keyFrameMapKey)) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "find smoothKeyFrameKey :" + keyFrameMapKey + " set to player");
                                byte[] bArr = MgtvMediaPlayer.this.mSmoothKeyFrameMap.get(keyFrameMapKey);
                                if (KeyFrameInfoUtils.isKeyFrameDataValid(bArr, smoothMediaSource2.videoFileHash) == 0) {
                                    MgtvMediaPlayer.this.setKeyFrameInfoFileBuf(bArr);
                                }
                            }
                        }
                        SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i3);
                        if (smoothMediaSourceMatchLastKeySource == null) {
                            DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceComplete matchKeySource failed");
                            return;
                        }
                        if (smoothMediaSourceMatchLastKeySource.getSwitchMod() == 1) {
                            MgtvMediaPlayer.this.mMediaPlayer.d(true);
                        }
                        MgtvMediaPlayer.this.mSwitchedSmoothSource = smoothMediaSourceMatchLastKeySource;
                        MgtvMediaPlayer.this.mSourceSwitchingComplete = true;
                        MgtvMediaPlayer.this.mSourceSwitching = false;
                        if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                            MgtvMediaPlayer.this.mMainFlowReportProcessor = smoothMediaSourceMatchLastKeySource.getFlowReportProcessor();
                            MgtvMediaPlayer.this.mMediaPlayer.a(smoothMediaSourceMatchLastKeySource.getP2pTask());
                            MgtvMediaPlayer.this.mMediaPlayer.b(smoothMediaSourceMatchLastKeySource.getReadType());
                        }
                        MgtvMediaPlayer.this.mSmoothKeyFrameMap.clear();
                        if (MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null) {
                            MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceSuccess(smoothMediaSourceMatchLastKeySource);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override
            public void onSmoothSwitchSourceFailed(d dVar, int i3, int i4, String str) {
                String[] strArrSplit;
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed (type:" + i4 + ",key:" + i3 + ",msg:" + str + ")");
                    String logTag = MgtvMediaPlayer.this.getLogTag();
                    StringBuilder sb = new StringBuilder();
                    sb.append("onSmoothSwitchSourceFailed current: ");
                    sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                    DebugLog.e(logTag, sb.toString());
                    int i5 = MgtvMediaPlayer.WHAT_SMOOTHSOURCE_FAIL;
                    int i6 = -1;
                    try {
                        if (!StringUtil.isEmpty(str) && (strArrSplit = str.split("-")) != null && strArrSplit.length >= 2) {
                            i5 = NumericUtil.parseInt(strArrSplit[0]);
                            i6 = NumericUtil.parseInt(strArrSplit[1]);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                    if (smoothMediaSource != null) {
                        if (smoothMediaSource.getReporter() != null) {
                            smoothMediaSource.getReporter().a(i5, i6, "");
                        }
                        if (MgtvMediaPlayer.this.mReportParams != null) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed mReportParams:" + MgtvMediaPlayer.this.mReportParams.getProxyType() + "-" + MgtvMediaPlayer.this.mReportParams.getP2ps());
                        }
                        if (smoothMediaSource.getReportParams() != null) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed currentSource.getReportParams():" + smoothMediaSource.getReportParams().getProxyType() + "-" + smoothMediaSource.getReportParams().getP2ps());
                        }
                        if (MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.isP2p() && smoothMediaSource.getReportParams() != null && smoothMediaSource.getReportParams().isP2p()) {
                            MgtvMediaPlayer.this.mSmoothUseP2pFailed = true;
                            if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                                MgtvMediaPlayer.this.mMediaPlayer.c(true);
                            }
                        }
                        if (smoothMediaSource.isThrowErrorIfSwitchFailed()) {
                            MgtvMediaPlayer.this.mErrorListener.onError(MgtvMediaPlayer.WHAT_SMOOTHSOURCE_EX_ERROR, i6);
                            return;
                        }
                    }
                    if (i4 == 1) {
                        MgtvMediaPlayer.this.mErrorListener.onError(i5, i6);
                        return;
                    }
                    SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i3);
                    if (smoothMediaSourceMatchLastKeySource == null) {
                        DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed matchKeySource failed");
                    } else {
                        MgtvMediaPlayer.this.notifySwitchSmoothSourceFail(smoothMediaSourceMatchLastKeySource, i5, i6);
                    }
                }
            }

            @Override
            public void onSmoothSwitchSourceInfo(d dVar, int i3, int i4, String str) {
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    try {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceInfo (event:" + i4 + ",key:" + i3 + ",msg:" + str + ")");
                        String logTag = MgtvMediaPlayer.this.getLogTag();
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSmoothSwitchSourceInfo current: ");
                        sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                        DebugLog.i(logTag, sb.toString());
                        SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                        if (smoothMediaSource != null) {
                            if (i4 == 0) {
                                smoothMediaSource.s_event_0_timestamp = System.currentTimeMillis();
                            } else if (i4 == 11) {
                                smoothMediaSource.s_event_11_timestamp = System.currentTimeMillis();
                            } else if (i4 == 2) {
                                if (MgtvMediaPlayer.this.isFlowReportEnable) {
                                    smoothMediaSource.genFlowReporter();
                                }
                                smoothMediaSource.s_event_2_timestamp = System.currentTimeMillis();
                            } else if (i4 == 3) {
                                if (MgtvMediaPlayer.this.isFlowReportEnable && MgtvMediaPlayer.this.mMainFlowReportProcessor != null) {
                                    MgtvMediaPlayer.this.mMainFlowReportProcessor.stop();
                                }
                                for (Map.Entry entry : MgtvMediaPlayer.this.mSmoothSourcesRecord.entrySet()) {
                                    if (((Integer) entry.getKey()).intValue() < smoothMediaSource.getKey()) {
                                        SmoothMediaSource smoothMediaSource2 = (SmoothMediaSource) entry.getValue();
                                        if (MgtvMediaPlayer.this.isFlowReportEnable && smoothMediaSource2 != null && smoothMediaSource2.getFlowReportProcessor() != null) {
                                            smoothMediaSource2.getFlowReportProcessor().stop();
                                        }
                                    }
                                }
                                smoothMediaSource.s_event_3_timestamp = System.currentTimeMillis();
                            }
                        }
                        if (i4 != 3) {
                            if (MgtvMediaPlayer.this.matchLastKeySource(i3) == null) {
                                DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceInfo matchKeySource failed");
                                return;
                            } else {
                                if (i4 == 0) {
                                    MgtvMediaPlayer.this.mSourceSwitching = true;
                                }
                                return;
                            }
                        }
                        SmoothMediaSource smoothMediaSource3 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(this.lastSwitchingKey));
                        if (smoothMediaSource3 != null && smoothMediaSource3.getReporter() != null) {
                            smoothMediaSource3.getReporter().c();
                        }
                        this.lastSwitchingKey = i3;
                        SmoothMediaSource smoothMediaSource4 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                        if (smoothMediaSource4 != null && MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null) {
                            MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceInfo(smoothMediaSource4, i4);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.mSmoothSourcesRecord = new HashMap();
        this.mSwitchSmoothSourceLocker = new Object();
        this.mSmoothUseP2pFailed = false;
        this.mSmoothKeyFrameMap = Collections.synchronizedMap(new HashMap());
        this.isBackground = false;
        this.mBundle = bundle;
        this.mPlayerMode = i2;
        extractBundleData();
        init(i, context, z);
    }

    public MgtvMediaPlayer(int i, Context context, boolean z, Bundle bundle) throws SecurityException, UnsatisfiedLinkError, NullPointerException, OutOfMemoryError {
        this.mDebug = false;
        this.mPreBufferTimeoutMs = 1800000;
        this.mBufferTimeoutMs = 180000;
        this.mImgoMediaPlayerAudioMode = false;
        this.mAccurateSeekEnable = true;
        this.mAccSeekKeyFrameInterval = 1000;
        this.mKeyframeSeekEnable = false;
        this.mInnerAutoRotateEnable = false;
        this.mWeakBufferSpeedKB = 1;
        this.mWeakBufferTimeoutMs = 120000;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 2;
        this.mPrepared = false;
        this.mIsBuffering = false;
        this.mErrorUrl = "";
        this.mLastRequestUrl = "";
        this.mLastDlSize = 0;
        this.mIsLive = false;
        this.mPlayerMode = 0;
        this.mLiveReopen = false;
        this.mLoopPlayerSwitchUrl = "";
        this.mHDJSwitchUrl = "";
        this.mDataSourceType = DataSourceType.TYPE_DATASOUCE_DEFAULT;
        this.mErrorExtraCodeStore = -1;
        this.mRecordVfps = 0.0f;
        this.mLastVideoWidth = 0;
        this.mLastVideoHeight = 0;
        this.mSkipLoopFilterType = SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mAddrinfoType = AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrinfoTimeoutMs = 0;
        this.mPrepared4StartMode = Prepared4StartMode.MODE_PREPARED4START_DEFAULT;
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            private boolean needInnerRetry(int i3, int i4) {
                return !MgtvMediaPlayer.this.mIsInnerRetrying && MgtvMediaPlayer.this.mMediaPlayer.v() == 2 && i3 == 200003 && i4 == 100606;
            }

            @Override
            public boolean onError(int i3, int i4) {
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onError what:" + i3 + ",extra:" + i4 + ",netType:" + NetPlayConfig.getNetworkType());
                if (MgtvMediaPlayer.this.mGifRecorder != null) {
                    MgtvMediaPlayer.this.mGifRecorder.interrupt(101);
                }
                if (MgtvMediaPlayer.this.isDnsCacheEnable()) {
                    MgtvMediaPlayer.this.checkAndCleanDnsCache(i3, i4);
                }
                if (needInnerRetry(i3, i4)) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onError needInnerRetry");
                    MgtvMediaPlayer.this.mIsInnerRetrying = true;
                    MgtvMediaPlayer.this.mRetryLastErrorCode = i4;
                    MgtvMediaPlayer.this.setPlayerReset(true);
                    if (MgtvMediaPlayer.this.mMediaPlayer.aj()) {
                        MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mMediaPlayer.H(), i3, i4, MgtvMediaPlayer.this.mMediaPlayer.v());
                    } else {
                        MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mMediaPlayer.H(), i3, i4);
                    }
                    return true;
                }
                MgtvMediaPlayer.this.beforeThrowError(i3, i4);
                MgtvMediaPlayer.this.reportErrorWarning(i3, i4);
                if (i3 != 7000006) {
                    MgtvMediaPlayer.this.reportError(i3, i4, "");
                }
                MgtvMediaPlayer.this.stopTickers();
                MgtvMediaPlayer.this.mPlayStatus = PlayStatus.ERROR;
                MgtvMediaPlayer.this.mErrorExtraCodeStore = i4;
                if (MgtvMediaPlayer.this.mOnErrorListener != null) {
                    return MgtvMediaPlayer.this.mOnErrorListener.onError(i3, i4);
                }
                return true;
            }
        };
        this.mIsGetPositionCallback = false;
        this.mPlayStatus = PlayStatus.IDLE;
        this.mRenderType = RenderType.NATIVE_WINDOW;
        this.mPlayTicker = new ExTicker(1000).setTypeStr(PlayAudioData.TAG_NEED_PLAY);
        this.mBufferTick = new ExTicker(1000).setTypeStr("buffer");
        this.mPlayerType = 2;
        this.mMainThreadID = -1L;
        this.mCacheReplaceMap = new LinkedHashMap();
        this.mIsInnerRetrying = false;
        this.mRetryLastErrorCode = 0;
        this.mRenderDisableWarnSended = false;
        this.mForceHttpDns = false;
        this.mHttpDnsNeedRetry = false;
        this.mJavaDnsEnable = false;
        this.mJavaDnsType = com.hunantv.media.player.a.a.b.FREE_HTTP_DNS;
        this.mHttpDnsEnable = false;
        this.mPlayerReset = true;
        this.mLoopPlayerReset = true;
        this.mLastUri = null;
        this.mLastHostErr = "00";
        this.mLastTcpErr = "00";
        this.mLastIpCount = 0;
        this.mLastIpIndex = -1;
        this.mLastDnsType = -1;
        this.mCurrentDnsDsc = "native";
        this.mEnableP2PHttpDns = false;
        this.mForceP2pHttpDns = false;
        this.mDnsThreadManager = new com.hunantv.media.player.a.d().a(new com.hunantv.media.player.a.d.b() {
            @Override
            public void updateIPs(String str, List<String> list) {
                P2pMgr.YfAddBackupIps(str, list, MgtvMediaPlayer.this.mForceP2pHttpDns);
            }
        });
        this.mAVSyncErrReported = false;
        this.mAVSyncErrSumReported = false;
        this.mAVSyncErrSum = 0;
        this.mAVSyncStartTimestamp = 0L;
        this.mPrepareAsyncTimeStampMs = 0L;
        this.mPreBufferState = new SyncStateMachine(1);
        this.mPreBufferMaxS = 5;
        this.mIsAudioExist = -1;
        this.mIsVsrOpen = -1;
        this.mIsNativePausedLoadData = 0;
        this.mIsWanosAudioEffectValid = false;
        this.mLastPosition = 0;
        this.mPositionLoged = false;
        this.mRealEncodeType = -1;
        this.mStreamFormatType = -1;
        this.mNotifyHandler = new MainNotifyHandler(this);
        this.mWillOpenUrl = "";
        this.mReportedTSLAN = false;
        this.mDnsLock = new Object();
        this.mIsP2pTSSkipReport = false;
        this.mCodecName = "n";
        this.mVVbuft = -1;
        this.mEnableJAVAIPCacheMap = false;
        this.mIPCacheMap = new HashMap();
        this.mVideoFrameClockNotifyMs = -1;
        this.mVideoFrameClockNotifyType = -1;
        this.mVideoFrameClockNotifyTimeStart = -1L;
        this.mVideoFrameClockNotifyTimeEnd = -1L;
        this.mCacheReportTag = "default";
        this.mCacheReportLerr = 0;
        this.mEnableDnsNoNetStrategy = false;
        this.mDnsNoNetWaiter = new Object();
        this.mLastIsNetworkAvailableNNS = true;
        this.mDnsNoNetMaxRetry = 20;
        this.mLastTsSkipErrExtra = 0;
        this.fstime = "n/n";
        this.mcColorFormat = "n_n";
        this.isFlowReportEnable = false;
        this.vsri = "0|0_0|0_0";
        this.vsrver = "n";
        this.vsrvkver = "n";
        this.mSourceNetListner = new MgtvPlayerListener.OnSourceNetHandledListener() {
            public static final int REPORT_HTTP_DNS_INTERRUPT = -2;
            public static final int REPORT_HTTP_DNS_PV = 0;
            private boolean mIsPauseLoad = false;

            private void checkErrorCode(int i3, int i4, Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                int i5 = bundle2.getInt("retry_counter");
                MgtvMediaPlayer.this.mSourceRetryCount = i5;
                MgtvMediaPlayer.this.mSourceRetryCode = i4;
                if (MgtvMediaPlayer.this.isDnsCacheEnable() && i5 >= 1 && MgtvMediaPlayer.this.checkAndCleanDnsCache(i3, i4)) {
                    MgtvMediaPlayer.this.mHttpDnsEnable = true;
                }
            }

            private boolean didHDJSwitch(Bundle bundle2) {
                if (MgtvMediaPlayer.this.mHDJSwitchUrl.length() <= 0 || bundle2 == null) {
                    return false;
                }
                bundle2.putString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_URL_STRING, MgtvMediaPlayer.this.mHDJSwitchUrl);
                bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_IS_LAST_INT, 1);
                MgtvMediaPlayer.this.mHDJSwitchUrl = "";
                return true;
            }

            private void didHostAddr(Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                int i3 = bundle2.getInt("host_error");
                int i4 = bundle2.getInt("host_family");
                String string = bundle2.getString("host_hostname");
                String string2 = bundle2.getString("host_ip");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback didHostAddr error:" + i3 + ",family:" + i4 + ",hostname:" + string + ",ip_list:" + string2 + ",port:" + bundle2.getInt("host_port") + ",hostDnsType:" + MgtvMediaPlayer.this.mLastDnsType = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_HOST_ARRR_DNS_TYPE_INT));
                MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                StringBuilder sb = new StringBuilder();
                sb.append(i3);
                sb.append("");
                mgtvMediaPlayer.mLastHostErr = sb.toString();
                MgtvMediaPlayer.this.mLastIpIndex = 0;
                try {
                    String[] strArrSplit = string2.split(ProcessInfo.SPLIT_NEW_VERSION);
                    MgtvMediaPlayer.this.mLastIpCount = 0;
                    if (strArrSplit != null) {
                        for (String str : strArrSplit) {
                            if (com.hunantv.media.player.a.e.e(str)) {
                                MgtvMediaPlayer.access$4208(MgtvMediaPlayer.this);
                            }
                        }
                    }
                    MgtvMediaPlayer.this.mLastIps = strArrSplit;
                    if (!MgtvMediaPlayer.this.mEnableJAVAIPCacheMap || i3 != 0 || MgtvMediaPlayer.this.mIPCacheMap.containsKey(string) || strArrSplit == null || strArrSplit.length <= 0) {
                        return;
                    }
                    IPList iPList = new IPList(string, strArrSplit);
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didHostAddr put:" + string + "-" + IPList.formatIPList(iPList.nUseList));
                    MgtvMediaPlayer.this.mIPCacheMap.put(string, iPList);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            private boolean didLiveOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return false;
                }
                return onLiveWillOpen(bundle2);
            }

            private boolean didLiveReopen(Bundle bundle2) {
                boolean z2 = MgtvMediaPlayer.this.mLiveReopen;
                if (MgtvMediaPlayer.this.mLiveReopen) {
                    MgtvMediaPlayer.this.mLiveReopen = false;
                }
                return z2;
            }

            private boolean didLoopOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return false;
                }
                return onLiveWillOpen(bundle2);
            }

            private boolean didLoopReopen(Bundle bundle2) {
                if (MgtvMediaPlayer.this.mLoopPlayerSwitchUrl.length() <= 0) {
                    return false;
                }
                bundle2.putString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_URL_STRING, MgtvMediaPlayer.this.mLoopPlayerSwitchUrl);
                MgtvMediaPlayer.this.mLoopPlayerSwitchUrl = "";
                return true;
            }

            private void didTcpOpen(Bundle bundle2) {
                StringBuilder sb;
                IPList iPList;
                if (bundle2 == null) {
                    return;
                }
                int i3 = bundle2.getInt("port");
                int i4 = bundle2.getInt("family");
                int i5 = bundle2.getInt("error");
                String string = bundle2.getString("ip");
                String string2 = bundle2.getString("tcp_hostname");
                long j = bundle2.getLong("switch_key");
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "didTcpOpen switch_key:" + j);
                if (MgtvMediaPlayer.this.mMediaPlayer != null && MgtvMediaPlayer.this.mMediaPlayer.I() != null) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "didTcpOpen origin:" + MgtvMediaPlayer.this.mMediaPlayer.I());
                }
                String logTag = MgtvMediaPlayer.this.getLogTag();
                if (i5 != 0) {
                    sb = new StringBuilder();
                    sb.append("chodison didTcpOpen port:");
                    sb.append(i3);
                    sb.append(",family:");
                    sb.append(i4);
                    sb.append(",error_code:");
                    sb.append(i5);
                    sb.append(",ip:");
                    sb.append(string);
                    sb.append(",hostname:");
                    sb.append(string2);
                    DebugLog.e(logTag, sb.toString());
                } else {
                    sb = new StringBuilder();
                    sb.append("chodison didTcpOpen port:");
                    sb.append(i3);
                    sb.append(",family:");
                    sb.append(i4);
                    sb.append(",ip:");
                    sb.append(string);
                    sb.append(",hostname:");
                    sb.append(string2);
                    DebugLog.i(logTag, sb.toString());
                }
                MgtvMediaPlayer.this.mLastTcpErr = i5 + "";
                MgtvMediaPlayer.this.mLastTcpIP = string;
                MgtvMediaPlayer.access$2808(MgtvMediaPlayer.this);
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap) {
                    try {
                        if (!MgtvMediaPlayer.this.mIPCacheMap.containsKey(string2) || (iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(string2)) == null) {
                            return;
                        }
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didTcpOpen remove " + string + " from " + string2);
                        iPList.nUseList.remove(string);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didTcpOpen rest ip:" + IPList.formatIPList(iPList.nUseList));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }

            private boolean doNetHttpWillOpenFailed(int i3, int i4, Bundle bundle2) {
                boolean z2;
                List<String> list;
                String logTag;
                String str;
                checkErrorCode(i3, i4, bundle2);
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                int i5 = bundle2.getInt("cur_dl_dize");
                if (isInitMp4(MgtvMediaPlayer.this.mErrorUrl)) {
                    MgtvMediaPlayer.this.mIsInitMp4Error = true;
                } else {
                    MgtvMediaPlayer.this.mIsInitMp4Error = false;
                }
                int i6 = bundle2.getInt("retry_counter");
                if (UrlUtil.isFilePrefix(MgtvMediaPlayer.this.mErrorUrl) && !MgtvMediaPlayer.this.mCacheReplaceMap.isEmpty()) {
                    if (MgtvMediaPlayer.this.mOnWarningListener != null) {
                        MgtvMediaPlayer.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_TS_CACHE_SKIP, i4 + "", MgtvMediaPlayer.this.mErrorUrl, null);
                    }
                    String str2 = (String) MgtvMediaPlayer.this.mCacheReplaceMap.get(MgtvMediaPlayer.this.mErrorUrl);
                    if (str2 != null) {
                        MgtvMediaPlayer.access$7408(MgtvMediaPlayer.this);
                        MgtvMediaPlayer.this.mErrorUrl = str2;
                        bundle2.putString("url", str2);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed replace local_url to " + str2);
                    }
                }
                bundle2.getString("player_hash");
                int i7 = bundle2.getInt("io_type");
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i7), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4));
                if (isENETUNREACHcode(i3, i4) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i3, i4))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4));
                    return true;
                }
                synchronized (MgtvMediaPlayer.this.mDnsNoNetWaiter) {
                    if (!isPlayerReset() && MgtvMediaPlayer.this.mEnableDnsNoNetStrategy && isDnsError(i3, i4)) {
                        boolean zC = com.hunantv.media.report.c.d.c(MgtvMediaPlayer.this.mContext);
                        if (!zC) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 1000 in");
                            try {
                                MgtvMediaPlayer.this.mDnsNoNetWaiter.wait(1000L);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str = "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 1000 out";
                            DebugLog.i(logTag, str);
                            z2 = true;
                        } else if (!zC || MgtvMediaPlayer.this.mLastIsNetworkAvailableNNS) {
                            z2 = false;
                        } else {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 3000 in");
                            try {
                                MgtvMediaPlayer.this.mDnsNoNetWaiter.wait(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str = "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 3000 out";
                            DebugLog.i(logTag, str);
                            z2 = true;
                        }
                        MgtvMediaPlayer.this.mLastIsNetworkAvailableNNS = zC;
                    } else {
                        z2 = false;
                    }
                }
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed mIsLive:" + MgtvMediaPlayer.this.mIsLive + ",mPlayerMode:" + MgtvMediaPlayer.this.mPlayerMode + ",mPrepared:" + MgtvMediaPlayer.this.mPrepared + ",mIsBuffering:" + MgtvMediaPlayer.this.mIsBuffering + ",mTsNotSkip:" + MgtvMediaPlayer.this.mTsNotSkip + ",mLoadMaxRetryTime:" + MgtvMediaPlayer.this.mLoadMaxRetryTime + ",mPlayStatus:" + MgtvMediaPlayer.this.mPlayStatus + ",lip:" + MgtvMediaPlayer.this.getLastIP());
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed %d-%d-%d-%d-%s", Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                if ((!MgtvMediaPlayer.this.mIsLive || MgtvMediaPlayer.this.isVod()) && MgtvMediaPlayer.this.mPlayerMode != 1) {
                    if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && (i4 == 100911 || i4 == 300021 || CodeUtil.isHttp4XX(i3, i4) || CodeUtil.isHttp5XX(i3, i4))) {
                        String hostName = UrlUtil.getHostName(UrlUtil.getValidHttpUrl(bundle2.getString("url")));
                        if (!StringUtil.isEmpty(hostName) && !com.hunantv.media.player.a.e.a(hostName) && MgtvMediaPlayer.this.mIPCacheMap.containsKey(hostName)) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http contains host:" + hostName);
                            IPList iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(hostName);
                            if (iPList != null && iPList.checkTTL() && (list = iPList.nUseList) != null && list.size() > 0) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http check ttl success." + iPList);
                                if (i6 >= 6) {
                                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http return false.not retry");
                                    reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                                    return false;
                                }
                                bundle2.putString("user_msg", MgtvMediaPlayer.USER_MSG_FLAG_USE_CACHE);
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http return true.try to goto ip choose");
                                reportHttpErrorPV(i6, MgtvMediaPlayer.this.mErrorUrl, i4, "ipcache");
                                return true;
                            }
                        }
                    }
                    reportHttpErrorPV(i6, MgtvMediaPlayer.this.mErrorUrl, i4, "default");
                    if (z2) {
                        if (i6 < MgtvMediaPlayer.this.mDnsNoNetMaxRetry) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy retry cause by inDnsNetStrategy");
                            return true;
                        }
                        reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy skip retry cause by errorRetryCount >= mDnsNoNetMaxRetry");
                        return false;
                    }
                    if (!MgtvMediaPlayer.this.mPrepared) {
                        if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl)) {
                            if (i6 < 2) {
                                return true;
                            }
                            reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                            return false;
                        }
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && isInitMp4(MgtvMediaPlayer.this.mErrorUrl) && i5 > 0 && i6 < 10) {
                            return true;
                        }
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i6 < MgtvMediaPlayer.this.mLoadMaxRetryTime) {
                            return true;
                        }
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                        mgtvMediaPlayer.callbackTsSkip(mgtvMediaPlayer.mErrorUrl, i3, i4);
                        reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                        return false;
                    }
                    if (MgtvMediaPlayer.this.mTsNotSkip && MgtvMediaPlayer.this.isRendered()) {
                        return true;
                    }
                } else {
                    if (!MgtvMediaPlayer.this.mPrepared) {
                        if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl)) {
                            return i6 < 2;
                        }
                        MgtvMediaPlayer mgtvMediaPlayer2 = MgtvMediaPlayer.this;
                        mgtvMediaPlayer2.callbackTsSkip(mgtvMediaPlayer2.mErrorUrl, i3, i4);
                        return false;
                    }
                    if (MgtvMediaPlayer.this.mIsBuffering && MgtvMediaPlayer.this.isHLSPlayingUrl() && i6 >= 1) {
                        if (UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) {
                            MgtvMediaPlayer mgtvMediaPlayer3 = MgtvMediaPlayer.this;
                            mgtvMediaPlayer3.callbackTsSkip(mgtvMediaPlayer3.mErrorUrl, i3, i4);
                        }
                        return false;
                    }
                }
                if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i6 < 2) {
                    return true;
                }
                if (UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) {
                    MgtvMediaPlayer mgtvMediaPlayer4 = MgtvMediaPlayer.this;
                    mgtvMediaPlayer4.callbackTsSkip(mgtvMediaPlayer4.mErrorUrl, i3, i4);
                }
                reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                return false;
            }

            private boolean doNewHttpWillOpen(Bundle bundle2) {
                int i3 = bundle2.getInt("error_type");
                int i4 = bundle2.getInt("error_code");
                bundle2.getInt("retry_counter");
                int i5 = bundle2.getInt("reset_iplist");
                MgtvMediaPlayer.this.mLastDlSize = bundle2.getInt("cur_dl_dize");
                bundle2.putString("user_msg", "init");
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && i5 == 1) {
                    MgtvMediaPlayer.this.clearIPCache();
                }
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doNewHttpWillOpen in error_what:" + i3 + ",error_extra:" + i4 + ",reset_iplist:" + i5 + ",mLastDlSize:" + MgtvMediaPlayer.this.mLastDlSize);
                bundle2.putInt("reset_iplist", 0);
                if (i4 == 0) {
                    MgtvMediaPlayer.this.mIsInitMp4Error = false;
                    if (i4 == 0 && MgtvMediaPlayer.this.mCacheEable) {
                        replaceUrlFromCache(bundle2);
                    }
                    return false;
                }
                boolean zDoNetHttpWillOpenFailed = doNetHttpWillOpenFailed(i3, i4, bundle2);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed return " + zDoNetHttpWillOpenFailed + StringUtils.COMMA + i3 + "-" + i4 + "-" + MgtvMediaPlayer.this.mErrorUrl);
                return zDoNetHttpWillOpenFailed;
            }

            private boolean doWillGetEnv(Bundle bundle2) {
                String string = bundle2.getString("env_key");
                if (string == null || string.length() <= 0) {
                    return false;
                }
                bundle2.putString("env_value", System.getenv(string));
                return true;
            }

            private boolean doWillHostAddr(Bundle bundle2) {
                List<String> list;
                if (bundle2 == null) {
                    return false;
                }
                int i3 = bundle2.getInt("addr_handle");
                String string = bundle2.getString("player_hash");
                int i4 = bundle2.getInt("retry_counter");
                String string2 = bundle2.getString("user_msg");
                String string3 = bundle2.getString("addr_hostname");
                long j = bundle2.getLong("switch_key");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback doWillHostAddr is_handle:" + i3 + ",hash:" + string + ",count_int:" + i4 + ",user_msg:" + string2 + ",hostname:" + string3 + ",switch_key:" + j);
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && i3 != 1 && MgtvMediaPlayer.USER_MSG_FLAG_USE_CACHE.equals(string2) && !com.hunantv.media.player.a.e.a(string3) && MgtvMediaPlayer.this.mIPCacheMap.containsKey(string3)) {
                    try {
                        IPList iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(string3);
                        if (iPList != null && (list = iPList.nUseList) != null && list.size() > 0 && iPList.checkTTL()) {
                            String str = iPList.nUseList.get(0);
                            if (com.hunantv.media.player.a.e.e(str)) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache doWillHostAddr put chooseip:" + str);
                                String iPList2 = IPList.formatIPList(iPList.nUseList);
                                if (!StringUtil.isEmpty(iPList2)) {
                                    DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback ipcache doWillHostAddr put srcIPListStr:" + iPList2);
                                    bundle2.putString("addr_hostname", iPList2);
                                }
                                bundle2.putString("addr_ip", str);
                                bundle2.putInt("addr_error", 0);
                                return false;
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                String string4 = bundle2.getString("addr_uri");
                if (com.hunantv.media.player.a.e.d(string3)) {
                    notifyIpIsLAN(MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "0", "hostname_" + string3);
                }
                boolean zA = com.hunantv.media.player.a.e.a(string3);
                boolean zC = com.hunantv.media.report.c.d.c(MgtvMediaPlayer.this.mContext);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doWillHostAddr hostname:" + string3 + ",isIp:" + zA);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doWillHostAddr is_handle=" + i3 + ",mBackJavaDns=" + MgtvMediaPlayer.this.mBackJavaDns + ",isIp=" + zA + ",mForceHttpDns:" + MgtvMediaPlayer.this.mForceHttpDns);
                if ((MgtvMediaPlayer.this.mForceHttpDns && !zA) || ((MgtvMediaPlayer.this.mJavaDnsEnable && !zA) || (i3 == 1 && MgtvMediaPlayer.this.mBackJavaDns && !zA))) {
                    if (zC) {
                        MgtvMediaPlayer.this.mLastUri = string4;
                        domainResolve(string3, bundle2, MgtvMediaPlayer.this.mForceHttpDns);
                    } else {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "skip domainResolve cause net not available");
                    }
                    return MgtvMediaPlayer.this.mPlayerReset;
                }
                if (i3 == 1 && zA) {
                    bundle2.putString("addr_ip", string3);
                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, 0);
                    bundle2.putInt("addr_error", 0);
                }
                return false;
            }

            private boolean doWillHttpOpen(Bundle bundle2) {
                if (bundle2 != null) {
                    MgtvMediaPlayer.this.mLastRequestUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                }
                if (MgtvMediaPlayer.this.mReportParams != null && (MgtvMediaPlayer.this.mReportParams.getVideoType().equals(ReportParams.VideoType.AD_PRE) || MgtvMediaPlayer.this.mReportParams.getVideoType().equals(ReportParams.VideoType.AD_MID))) {
                    return onNormalHttpWillOpen(bundle2);
                }
                if (bundle2 != null) {
                    MgtvMediaPlayer.this.mWillOpenUrl = bundle2.getString("url");
                }
                return doNewHttpWillOpen(bundle2);
            }

            private void domainResolve(String str, Bundle bundle2, boolean z2) {
                com.hunantv.media.player.a.a.b bVarD;
                int iE;
                if (str == null || bundle2 == null) {
                    DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "skip domainResolve hostname or args is null");
                    return;
                }
                com.hunantv.media.player.a.a aVar = new com.hunantv.media.player.a.a();
                aVar.a(new com.hunantv.media.player.a.a.InterfaceC0133a() {
                    @Override
                    public void onDnsFail(com.hunantv.media.player.a.a aVar2) {
                    }

                    @Override
                    public void onDnsFinish(com.hunantv.media.player.a.a aVar2) {
                        synchronized (MgtvMediaPlayer.this.mDnsLock) {
                            MgtvMediaPlayer.this.mDnsLock.notifyAll();
                        }
                    }

                    @Override
                    public void onDnsStart(com.hunantv.media.player.a.a aVar2) {
                    }

                    @Override
                    public void onDnsSuc(com.hunantv.media.player.a.a aVar2, String[] strArr) {
                    }
                });
                boolean zResolveStrategy = resolveStrategy(aVar, str, bundle2, z2, MgtvMediaPlayer.this.mHttpDnsNeedRetry);
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve use:" + zResolveStrategy);
                if (zResolveStrategy) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve use type:" + aVar.d());
                    notifyHttpDnsReport(aVar.d(), 2000, 0);
                }
                synchronized (MgtvMediaPlayer.this.mDnsLock) {
                    while (aVar.a() && !isJavaDnsInterrupt()) {
                        DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "domainResolve wait in");
                        try {
                            MgtvMediaPlayer.this.mDnsLock.wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "domainResolve wait out. resolving:" + aVar.a() + ",isJavaDnsInterrupt:" + isJavaDnsInterrupt());
                String[] strArrA = com.hunantv.media.player.a.e.a(aVar.b());
                aVar.c();
                String str2 = "costMs:" + aVar.f() + ";ips:" + com.hunantv.media.utils.StringUtil.formatArrayString(strArrA) + ";net:" + NetPlayConfig.getNetworkType() + ProcessInfo.SPLIT_NEW_VERSION;
                String iPList = IPList.formatIPList(strArrA);
                String str3 = (strArrA == null || strArrA.length <= 0) ? null : strArrA[0];
                int i3 = AnonymousClass28.$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType[aVar.d().ordinal()] != 1 ? 5 : 4;
                if (!isJavaDnsInterrupt() && com.hunantv.media.player.a.e.e(str3)) {
                    if (zResolveStrategy) {
                        updateCurrentDnsDsc(aVar.d());
                        if (com.hunantv.media.player.a.e.d(str3)) {
                            notifyHttpDnsReport(aVar.d(), 2001, 100, str2);
                        } else {
                            notifyHttpDnsReport(aVar.d(), 2001, 0, str2);
                        }
                    }
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve put iplist:" + iPList);
                    bundle2.putString("addr_hostname", iPList);
                    if (com.hunantv.media.player.a.e.e(str3)) {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve put firstIP:" + str3);
                        bundle2.putString("addr_ip", str3);
                    }
                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, i3);
                    bundle2.putInt("addr_error", 0);
                    return;
                }
                if (zResolveStrategy) {
                    if (isJavaDnsInterrupt() && aVar.e() == 0) {
                        bVarD = aVar.d();
                        iE = -2;
                    } else {
                        bVarD = aVar.d();
                        iE = aVar.e();
                    }
                    notifyHttpDnsReport(bVarD, 2002, iE, str2);
                    if (!isJavaDnsInterrupt()) {
                        int iA = aVar.a(199);
                        if (aVar.e() != 0) {
                            iA = aVar.e();
                        } else if (str3 != null && !com.hunantv.media.player.a.e.a(str3)) {
                            iA = aVar.a(107);
                        }
                        int i4 = -iA;
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), aVar.d() + "resolve putInt error:" + i4);
                        bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, i3);
                        bundle2.putInt("addr_error", i4);
                    }
                }
                MgtvMediaPlayer.this.mCurrentDnsDsc = "native";
            }

            private String findTsCachPath(String str, String[] strArr) {
                if (strArr == null) {
                    return null;
                }
                try {
                    String fileName = UrlUtil.getFileName(str);
                    for (String str2 : strArr) {
                        if (str2 != null && new File(str2).getName().equals(fileName)) {
                            return str2;
                        }
                    }
                } catch (Exception unused) {
                }
                return null;
            }

            private boolean isDnsError(int i3, int i4) {
                return i4 == 300600 || i3 == 400605 || MGTVP2pDirectMediaDataSource.isP2pDirectDnsError(i3, i4);
            }

            private boolean isENETUNREACHcode(int i3, int i4) {
                return i4 == 300005 || MGTVP2pDirectMediaDataSource.getShortErrorCode(i3, i4) == 101;
            }

            private boolean isInitMp4(String str) {
                return MgtvMediaPlayer.this.isHLSPlayingUrl() && UrlUtil.isSuffixUrl(str, Video.SUFFIX.SUFFIX_MP4);
            }

            private boolean isJavaDnsInterrupt() {
                return isPlayerReset();
            }

            private boolean isPlayerReset() {
                return MgtvMediaPlayer.this.mPlayerReset || (MgtvMediaPlayer.this.mPlayerMode == 2 && MgtvMediaPlayer.this.mLoopPlayerReset);
            }

            private void notifyHttpDnsReport(com.hunantv.media.player.a.a.b bVar, int i3, int i4) {
                notifyHttpDnsReport(bVar, i3, i4, "");
            }

            private void notifyIpIsLAN(String str, String str2) {
                if (MgtvMediaPlayer.this.mOnWarningListener == null || MgtvMediaPlayer.this.mReportParams == null || MgtvMediaPlayer.this.mReportParams.getVideoType() != ReportParams.VideoType.VOD) {
                    return;
                }
                if (!MgtvMediaPlayer.this.mReportedTSLAN) {
                    notifyMessage(1002, str, str2 + "_suffix_" + UrlUtil.getSuffix(MgtvMediaPlayer.this.mWillOpenUrl));
                }
                if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mWillOpenUrl)) {
                    return;
                }
                MgtvMediaPlayer.this.mReportedTSLAN = true;
            }

            private void notifyMessage(int i3, int i4, String str) {
                Message message = new Message();
                message.what = i3;
                message.arg1 = i4;
                message.obj = str;
                MgtvMediaPlayer.this.mNotifyHandler.sendMessage(message);
            }

            private boolean onLiveWillOpen(Bundle bundle2) {
                int i3 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERROR_WHAT_INT);
                int i4 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERROR_EXTRA_INT);
                MgtvMediaPlayer.this.mLastRequestUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_SRC_URL_STRING));
                if (i4 == 0) {
                    return false;
                }
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_SRC_URL_STRING));
                int i5 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_COUNTER_INT);
                int i6 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERR_IO_TYPE_INT);
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLiveWillOpen url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                if (isENETUNREACHcode(i3, i4) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i3, i4))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLiveWillOpen network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                    return true;
                }
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_LIVE_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                return !MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i5 < 2;
            }

            private boolean onLoopWillOpen(Bundle bundle2) {
                int i3 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERROR_WHAT_INT);
                int i4 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERROR_EXTRA_INT);
                if (i4 == 0) {
                    return false;
                }
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_SRC_URL_STRING));
                int i5 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_COUNTER_INT);
                int i6 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERR_IO_TYPE_INT);
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLoopWillOpen url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                if (isENETUNREACHcode(i3, i4) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i3, i4))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLoopWillOpen network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                    return true;
                }
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_LOOP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                return !MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i5 < 2;
            }

            private boolean onNormalHttpWillOpen(Bundle bundle2) {
                int i3 = bundle2.getInt("error_type");
                int i4 = bundle2.getInt("error_code");
                if (i4 == 0) {
                    return false;
                }
                checkErrorCode(i3, i4, bundle2);
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                bundle2.getString("player_hash");
                bundle2.getString("user_msg");
                int i5 = bundle2.getInt("retry_counter");
                int i6 = bundle2.getInt("io_type");
                long j = bundle2.getLong("switch_key");
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl switch_key:" + j);
                if (isENETUNREACHcode(i3, i4) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i3, i4))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                    return true;
                }
                if (MgtvMediaPlayer.this.mIsLive) {
                    if ((!MgtvMediaPlayer.this.mIsBuffering || !MgtvMediaPlayer.this.isHLSPlayingUrl() || !UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) && MgtvMediaPlayer.this.mPrepared) {
                        UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl);
                        DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_HTTP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4)) {
                            return true;
                        }
                    }
                } else if (!MgtvMediaPlayer.this.mIsBuffering && MgtvMediaPlayer.this.mPrepared) {
                    DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_HTTP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                    if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i5 < 2) {
                        return true;
                    }
                }
                MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                mgtvMediaPlayer.callbackTsSkip(mgtvMediaPlayer.mErrorUrl, i3, i4);
                return false;
            }

            private boolean replaceUrlFromCache(Bundle bundle2) {
                String string = bundle2.getString("url");
                if (!UrlUtil.isFilePrefix(string) && !UrlUtil.isLocal(string)) {
                    String fileName = UrlUtil.getFileName(string);
                    if (StringUtil.isEmpty(fileName)) {
                        return false;
                    }
                    DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache try to find replace cache:" + string);
                    String strFindTsCachPath = null;
                    if (UrlUtil.isM3u8(string)) {
                        String str = MgtvMediaPlayer.this.mCacheM3u8Path;
                        String fileName2 = UrlUtil.getFileName(str);
                        if (!StringUtil.isEmpty(str) && !StringUtil.isEmpty(fileName2) && fileName2.equals(fileName)) {
                            strFindTsCachPath = str;
                        }
                    } else if (MgtvMediaPlayer.this.isHLSPlayingUrl() && UrlUtil.isSegment(string)) {
                        strFindTsCachPath = findTsCachPath(string, MgtvMediaPlayer.this.mCacheTsPaths);
                    }
                    if (FileUtil.exist(strFindTsCachPath)) {
                        String strAddLocalPrefix = UrlUtil.addLocalPrefix(strFindTsCachPath);
                        if (!StringUtil.isEmpty(strAddLocalPrefix)) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache from " + string);
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache to " + strAddLocalPrefix);
                            bundle2.putString("url", strAddLocalPrefix);
                            if (UrlUtil.isM3u8(string)) {
                                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache put SRC_URL " + string);
                                bundle2.putString("src_url", string);
                            }
                            MgtvMediaPlayer.this.mCacheReplaceMap.put(strAddLocalPrefix, string);
                            return true;
                        }
                    }
                }
                return false;
            }

            private void reportHttpErrorErr(int i3, String str) {
                if ((isInitMp4(str) || UrlUtil.isM3u8(str)) && MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.getVideoType() == ReportParams.VideoType.VOD && MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.NO_PROXY && MgtvMediaPlayer.this.mOnWarningListener != null) {
                    String strG = MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "00";
                    MgtvPlayerListener.OnWarningListener onWarningListener = MgtvMediaPlayer.this.mOnWarningListener;
                    String str2 = i3 + Consts.DOT + MgtvMediaPlayer.this.mCacheReportLerr;
                    StringBuilder sb = new StringBuilder();
                    sb.append("psuuid_");
                    sb.append(strG);
                    sb.append("_render_");
                    sb.append(MgtvMediaPlayer.this.isRendered() ? "1" : "0");
                    sb.append("_url_");
                    sb.append(str);
                    sb.append("_type_");
                    sb.append(MgtvMediaPlayer.this.mCacheReportTag);
                    onWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTP_ERROR_ERR, str2, sb.toString(), null);
                }
            }

            private void reportHttpErrorPV(int i3, String str, int i4, String str2) {
                if (i3 == 0) {
                    MgtvMediaPlayer.this.mCacheReportTag = "default";
                    MgtvMediaPlayer.this.mCacheReportLerr = 0;
                }
                if (i3 == 0) {
                    if ((isInitMp4(str) || UrlUtil.isM3u8(str)) && MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.getVideoType() == ReportParams.VideoType.VOD && MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.NO_PROXY && MgtvMediaPlayer.this.mOnWarningListener != null) {
                        String strG = MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "00";
                        MgtvMediaPlayer.this.mCacheReportTag = str2;
                        MgtvMediaPlayer.this.mCacheReportLerr = i4;
                        MgtvPlayerListener.OnWarningListener onWarningListener = MgtvMediaPlayer.this.mOnWarningListener;
                        String str3 = i4 + "";
                        StringBuilder sb = new StringBuilder();
                        sb.append("psuuid_");
                        sb.append(strG);
                        sb.append("_render_");
                        sb.append(MgtvMediaPlayer.this.isRendered() ? "1" : "0");
                        sb.append("_url_");
                        sb.append(str);
                        sb.append("_type_");
                        sb.append(str2);
                        onWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTP_ERROR_PV, str3, sb.toString(), null);
                    }
                }
            }

            private boolean resolveStrategy(@NonNull com.hunantv.media.player.a.a aVar, @NonNull String str, Bundle bundle2) {
                return resolveStrategy(aVar, str, bundle2, false, false);
            }

            private void updateCurrentDnsDsc(com.hunantv.media.player.a.a.b bVar) {
                MgtvMediaPlayer mgtvMediaPlayer;
                String str;
                int i3 = AnonymousClass28.$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType[bVar.ordinal()];
                if (i3 == 1) {
                    mgtvMediaPlayer = MgtvMediaPlayer.this;
                    str = MgtvMediaPlayer.DNS_JAVA_NORMAL;
                } else {
                    if (i3 != 2) {
                        return;
                    }
                    mgtvMediaPlayer = MgtvMediaPlayer.this;
                    str = MgtvMediaPlayer.DNS_JAVA_HTTPDNS;
                }
                mgtvMediaPlayer.mCurrentDnsDsc = str;
            }

            private void updateIp(String str) {
                String logTag;
                StringBuilder sb;
                String str2;
                if (MgtvMediaPlayer.this.mMediaPlayer == null || (!(MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) || MgtvMediaPlayer.this.mMediaPlayer.ai() == null)) {
                    if (MgtvMediaPlayer.this.mMediaPlayer == null || !((MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) && MgtvMediaPlayer.this.mMediaPlayer.ai() == null)) {
                        MgtvMediaPlayer.this.mLastIP = str;
                    } else {
                        MgtvMediaPlayer.this.mLastIP = "0.0.0.1";
                    }
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    str2 = "didTcpOpen tcp_ip:";
                } else {
                    com.mgtv.a.d taskInfo = P2pMgr.getTaskInfo(MgtvMediaPlayer.this.mMediaPlayer.ai());
                    if (taskInfo != null) {
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                        mgtvMediaPlayer.mLastIP = mgtvMediaPlayer.mLastP2pCdnIP = taskInfo.b;
                    } else {
                        MgtvMediaPlayer.this.mLastIP = null;
                    }
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    str2 = "didTcpOpen p2p QueryTaskInfo cdnIp:";
                }
                sb.append(str2);
                sb.append(MgtvMediaPlayer.this.mLastIP);
                DebugLog.d(logTag, sb.toString());
            }

            private void willTcpOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                String string = bundle2.getString("tcp_hostname");
                String string2 = bundle2.getString("ip");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback willTcpOpen tcp_hostname:" + string + ",tcp_ip:" + string2);
                MgtvMediaPlayer.this.mLastHostIP = string2;
                updateIp(string2);
                if (string2 == null || string2.length() <= 1 || !com.hunantv.media.player.a.e.d(string2)) {
                    return;
                }
                notifyIpIsLAN("1", MgtvMediaPlayer.this.getCurrentDnsDsc() + "_hostip_" + string2);
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override
            public boolean onSourceNetCtrl(int i3, Bundle bundle2) {
                IP2pTask iP2pTaskAi;
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.onSourceNetCtrl 0x%5x", Integer.valueOf(i3));
                switch (i3) {
                    case 131073:
                        willTcpOpen(bundle2);
                        return false;
                    case 131074:
                        didTcpOpen(bundle2);
                        return false;
                    case 131075:
                        return doWillHttpOpen(bundle2);
                    case 131077:
                        return didLiveOpen(bundle2);
                    case 131078:
                        return doWillHostAddr(bundle2);
                    case 131081:
                        return didLiveReopen(bundle2);
                    case 131088:
                        return didLoopOpen(bundle2);
                    case 131089:
                        return didLoopReopen(bundle2);
                    case 131090:
                        return didHDJSwitch(bundle2);
                    case 131104:
                        return doWillGetEnv(bundle2);
                    case 131120:
                        if (MgtvMediaPlayer.this.mPreBufferState.isEnable() && MgtvMediaPlayer.this.mPreBufferState.getState() == 2) {
                            this.mIsPauseLoad = true;
                            return true;
                        }
                        if (MgtvMediaPlayer.this.isSourceSwitching() || MgtvMediaPlayer.this.mMediaPlayer == null || (!(MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) || (iP2pTaskAi = MgtvMediaPlayer.this.mMediaPlayer.ai()) == null || iP2pTaskAi.getStatus() == 0)) {
                            if (this.mIsPauseLoad) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "CTRL_WILL_CHECK_PAUSE_LOAD will return false. will resume load");
                            }
                            this.mIsPauseLoad = false;
                            return false;
                        }
                        if (!this.mIsPauseLoad) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "CTRL_WILL_CHECK_PAUSE_LOAD will return true. will pause load");
                        }
                        this.mIsPauseLoad = true;
                        return true;
                    case 131184:
                        synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                            try {
                                if (bundle2 == null) {
                                    return false;
                                }
                                if (bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT) == 1) {
                                    if (MgtvMediaPlayer.this.mReporter != null) {
                                        MgtvMediaPlayer.this.mReporter.c();
                                    }
                                    int i4 = (int) bundle2.getLong(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_RETRY_KEY_LONG);
                                    SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i4));
                                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1 find:" + i4);
                                    if (smoothMediaSource != null) {
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1 , will retry use :" + smoothMediaSource.getUrl());
                                        bundle2.putString("smooth_switch_url", smoothMediaSource.getUrl());
                                        if (smoothMediaSource.getReporter() != null) {
                                            smoothMediaSource.getReporter().a();
                                            if (MgtvMediaPlayer.this.mReportParams != null) {
                                                MgtvMediaPlayer.this.mReportParams.setPlaySessionId(smoothMediaSource.getReporter().g());
                                            }
                                        }
                                    } else {
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1, not found source");
                                    }
                                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT, 0);
                                    return true;
                                }
                                int i5 = (int) bundle2.getLong("smooth_switch_key");
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH switch_key:" + i5);
                                SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i5);
                                if (smoothMediaSourceMatchLastKeySource != null) {
                                    if (smoothMediaSourceMatchLastKeySource.isLastRetry() && MgtvMediaPlayer.this.mReportParams != null && (MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.ONLY_P2P || MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.P2P_DRM)) {
                                        SmoothMediaSource smoothMediaSource2 = new SmoothMediaSource(MgtvMediaPlayer.this.getPlayingOriginUrl());
                                        smoothMediaSource2.setReportParams(MgtvMediaPlayer.this.mReportParams);
                                        smoothMediaSource2.bind(MgtvMediaPlayer.this);
                                        smoothMediaSource2.setThrowErrorIfSwitchFailed(true);
                                        MgtvMediaPlayer.this.mSmoothSourcesRecord.put(Integer.valueOf(smoothMediaSource2.getKey()), smoothMediaSource2);
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth is last retry. will retry key:" + smoothMediaSource2.getKey());
                                        bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT, 1);
                                        bundle2.putLong(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_RETRY_KEY_LONG, (long) smoothMediaSource2.getKey());
                                    }
                                    if (!smoothMediaSourceMatchLastKeySource.isLastRetry()) {
                                        String string = bundle2.getString("smooth_switch_url");
                                        bundle2.putString("smooth_switch_url", string);
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH switch_url:" + string);
                                        if (!StringUtil.isEmpty(string)) {
                                            int iIndexOf = string.indexOf(",mgtvjsource:");
                                            String strSubstring = iIndexOf >= 0 ? string.substring(iIndexOf) : "";
                                            boolean zOnSwitchSmoothSourceWillUpdate = MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null ? MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceWillUpdate(smoothMediaSourceMatchLastKeySource) : false;
                                            if (smoothMediaSourceMatchLastKeySource.getReadType() != 2 && zOnSwitchSmoothSourceWillUpdate && !StringUtil.isEmpty(smoothMediaSourceMatchLastKeySource.useUpdateUrl())) {
                                                String str = smoothMediaSourceMatchLastKeySource.useUpdateUrl() + strSubstring;
                                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH will update url:" + str);
                                                bundle2.putString("smooth_switch_url", str);
                                            }
                                        }
                                    }
                                }
                                SmoothMediaSource smoothMediaSource3 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i5));
                                if (smoothMediaSource3 != null && smoothMediaSource3.getReporter() != null) {
                                    smoothMediaSource3.getReporter().a();
                                    if (MgtvMediaPlayer.this.mReportParams != null) {
                                        MgtvMediaPlayer.this.mReportParams.setPlaySessionId(smoothMediaSource3.getReporter().g());
                                    }
                                }
                                return true;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    default:
                        return false;
                }
            }

            @Override
            public void onSourceNetEvent(int i3, Bundle bundle2) {
                if (i3 != 78338) {
                    return;
                }
                didHostAddr(bundle2);
            }

            private void notifyHttpDnsReport(com.hunantv.media.player.a.a.b bVar, int i3, int i4, String str) {
                if (bVar != com.hunantv.media.player.a.a.b.FREE_HTTP_DNS || MgtvMediaPlayer.this.mOnWarningListener == null) {
                    return;
                }
                notifyMessage(i3, i4, str);
            }

            private void notifyMessage(int i3, String str, String str2) {
                Message message = new Message();
                message.what = i3;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MainNotifyHandler.BUNDLE_STR_INFO1, str);
                bundle2.putString(MainNotifyHandler.BUNDLE_STR_INFO2, str2);
                message.setData(bundle2);
                MgtvMediaPlayer.this.mNotifyHandler.sendMessage(message);
            }

            private boolean resolveStrategy(@NonNull com.hunantv.media.player.a.a aVar, @NonNull String str, Bundle bundle2, boolean z2, boolean z3) {
                com.hunantv.media.player.a.a.b bVar;
                String logTag;
                String str2;
                if (z2 || (bundle2 != null && bundle2.getInt("addr_handle") == 1 && MgtvMediaPlayer.this.mBackJavaDns)) {
                    aVar.b(1);
                    bVar = com.hunantv.media.player.a.a.b.FREE_HTTP_DNS;
                } else {
                    if (MgtvMediaPlayer.this.isDnsCacheEnable()) {
                        if (MgtvMediaPlayer.this.mHttpDnsEnable) {
                            String strB = !StringUtil.isEmpty(MgtvMediaPlayer.this.mLastUri) ? com.hunantv.media.player.a.f.b(MgtvMediaPlayer.this.mLastUri) : null;
                            if (strB != null && !strB.trim().equals("")) {
                                logTag = MgtvMediaPlayer.this.getLogTag();
                                str2 = "resolveStrategy cache valid";
                            }
                        } else {
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str2 = "resolveStrategy cache valid and httpdns not open";
                        }
                        DebugLog.d(logTag, str2);
                        return false;
                    }
                    bVar = MgtvMediaPlayer.this.mJavaDnsType;
                }
                aVar.a(str, bVar, z3);
                return true;
            }
        };
        this.mLogTagKey = "";
        this.mEnableReport = true;
        this.p2pLocker = new Object();
        this.mSeekStartMs = -1L;
        this.mHw2SwType = Hw2SwType.NONE;
        this.mPlaybackSpeed = 1.0f;
        this.mRecordMaxPlaySpeed = 1.0f;
        this.mFrameListener = new MgtvPlayerListener.OnFrameListener() {
            @Override
            public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                synchronized (MgtvMediaPlayer.this.ptsLocker) {
                    try {
                        WeakHandler weakHandler = MgtvMediaPlayer.this.ptsWeakHandler;
                        if (weakHandler != null) {
                            weakHandler.removeMessages(256);
                            Message message = new Message();
                            message.what = 256;
                            message.obj = frameClock;
                            MgtvMediaPlayer.this.ptsWeakHandler.sendMessage(message);
                        }
                        if (MgtvMediaPlayer.this.mOnFrameListener != null) {
                            MgtvMediaPlayer.this.mOnFrameListener.onVFrameClockCome(frameClock);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.mInnerFlowDataStatistic = new FlowDataStatistic();
        this.mEnableImgoVsr = false;
        this.mLoopSourceKey = new AtomicInteger(1);
        this.mSubtitleSources = new ArrayList();
        this.ptsHandlerThread = null;
        this.ptsWeakHandler = null;
        this.ptsListeners = new HashSet();
        this.ptsLocker = new Object();
        this.mSmoothSourceListener = new d.n() {
            int lastSwitchingKey = -1;

            @Override
            public void onSmoothSwitchSourceComplete(d dVar, int i3, int i4, String str) {
                SmoothMediaSource smoothMediaSource;
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    try {
                        DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceComplete (type:" + i4 + ",key:" + i3 + ",msg:" + str + ")");
                        String logTag = MgtvMediaPlayer.this.getLogTag();
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSmoothSwitchSourceComplete current: ");
                        sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                        DebugLog.i(logTag, sb.toString());
                        for (Map.Entry entry : MgtvMediaPlayer.this.mSmoothSourcesRecord.entrySet()) {
                            if (((Integer) entry.getKey()).intValue() < i3 && (smoothMediaSource = (SmoothMediaSource) entry.getValue()) != null && !smoothMediaSource.isReleased()) {
                                smoothMediaSource.release();
                            }
                        }
                        MgtvMediaPlayer.this.mSmoothUseP2pFailed = false;
                        if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                            MgtvMediaPlayer.this.mMediaPlayer.c(false);
                        }
                        SmoothMediaSource smoothMediaSource2 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                        if (smoothMediaSource2 != null) {
                            if (!StringUtil.isEmpty(smoothMediaSource2.getVfps())) {
                                MgtvMediaPlayer.this.mRecordVfps = Float.parseFloat(smoothMediaSource2.getVfps());
                            }
                            MgtvMediaPlayer.this.mLastVideoWidth = smoothMediaSource2.getVideoWidth();
                            MgtvMediaPlayer.this.mLastVideoHeight = smoothMediaSource2.getVideoHeight();
                            if (MgtvMediaPlayer.this.mReporter != null) {
                                MgtvMediaPlayer.this.mReporter.c();
                            }
                            MgtvMediaPlayer.this.mReporter = smoothMediaSource2.getReporter();
                            if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                                MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mReporter);
                                MgtvMediaPlayer.this.mMediaPlayer.a(smoothMediaSource2.getReadType(), smoothMediaSource2.getUrl(), smoothMediaSource2.getPlayingUrl());
                                MgtvMediaPlayer.this.mMediaPlayer.h(smoothMediaSource2.getEnableImgoAIQE());
                            }
                            if (MgtvMediaPlayer.this.mDataSourceInfo != null) {
                                MgtvMediaPlayer.this.mDataSourceInfo.setVideoFormat(smoothMediaSource2.getVideoFormat());
                                MgtvMediaPlayer.this.mDataSourceInfo.setAudioFormat(smoothMediaSource2.getAudioFormat());
                                MgtvMediaPlayer.this.mDataSourceInfo.setFileFormat(smoothMediaSource2.getFileFormat());
                            }
                            if (MgtvMediaPlayer.this.mReporter != null) {
                                MgtvMediaPlayer.this.mReportParams.deepCopy(smoothMediaSource2.getReportParams());
                                MgtvMediaPlayer.this.mReporter.a(MgtvMediaPlayer.this.mReportParams);
                                MgtvMediaPlayer.this.mReporter.b();
                            }
                            String keyFrameMapKey = MgtvMediaPlayer.this.getKeyFrameMapKey(smoothMediaSource2.getVid(), smoothMediaSource2.getDef());
                            if (MgtvMediaPlayer.this.mSmoothKeyFrameMap.containsKey(keyFrameMapKey)) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "find smoothKeyFrameKey :" + keyFrameMapKey + " set to player");
                                byte[] bArr = MgtvMediaPlayer.this.mSmoothKeyFrameMap.get(keyFrameMapKey);
                                if (KeyFrameInfoUtils.isKeyFrameDataValid(bArr, smoothMediaSource2.videoFileHash) == 0) {
                                    MgtvMediaPlayer.this.setKeyFrameInfoFileBuf(bArr);
                                }
                            }
                        }
                        SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i3);
                        if (smoothMediaSourceMatchLastKeySource == null) {
                            DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceComplete matchKeySource failed");
                            return;
                        }
                        if (smoothMediaSourceMatchLastKeySource.getSwitchMod() == 1) {
                            MgtvMediaPlayer.this.mMediaPlayer.d(true);
                        }
                        MgtvMediaPlayer.this.mSwitchedSmoothSource = smoothMediaSourceMatchLastKeySource;
                        MgtvMediaPlayer.this.mSourceSwitchingComplete = true;
                        MgtvMediaPlayer.this.mSourceSwitching = false;
                        if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                            MgtvMediaPlayer.this.mMainFlowReportProcessor = smoothMediaSourceMatchLastKeySource.getFlowReportProcessor();
                            MgtvMediaPlayer.this.mMediaPlayer.a(smoothMediaSourceMatchLastKeySource.getP2pTask());
                            MgtvMediaPlayer.this.mMediaPlayer.b(smoothMediaSourceMatchLastKeySource.getReadType());
                        }
                        MgtvMediaPlayer.this.mSmoothKeyFrameMap.clear();
                        if (MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null) {
                            MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceSuccess(smoothMediaSourceMatchLastKeySource);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override
            public void onSmoothSwitchSourceFailed(d dVar, int i3, int i4, String str) {
                String[] strArrSplit;
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed (type:" + i4 + ",key:" + i3 + ",msg:" + str + ")");
                    String logTag = MgtvMediaPlayer.this.getLogTag();
                    StringBuilder sb = new StringBuilder();
                    sb.append("onSmoothSwitchSourceFailed current: ");
                    sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                    DebugLog.e(logTag, sb.toString());
                    int i5 = MgtvMediaPlayer.WHAT_SMOOTHSOURCE_FAIL;
                    int i6 = -1;
                    try {
                        if (!StringUtil.isEmpty(str) && (strArrSplit = str.split("-")) != null && strArrSplit.length >= 2) {
                            i5 = NumericUtil.parseInt(strArrSplit[0]);
                            i6 = NumericUtil.parseInt(strArrSplit[1]);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                    if (smoothMediaSource != null) {
                        if (smoothMediaSource.getReporter() != null) {
                            smoothMediaSource.getReporter().a(i5, i6, "");
                        }
                        if (MgtvMediaPlayer.this.mReportParams != null) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed mReportParams:" + MgtvMediaPlayer.this.mReportParams.getProxyType() + "-" + MgtvMediaPlayer.this.mReportParams.getP2ps());
                        }
                        if (smoothMediaSource.getReportParams() != null) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed currentSource.getReportParams():" + smoothMediaSource.getReportParams().getProxyType() + "-" + smoothMediaSource.getReportParams().getP2ps());
                        }
                        if (MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.isP2p() && smoothMediaSource.getReportParams() != null && smoothMediaSource.getReportParams().isP2p()) {
                            MgtvMediaPlayer.this.mSmoothUseP2pFailed = true;
                            if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                                MgtvMediaPlayer.this.mMediaPlayer.c(true);
                            }
                        }
                        if (smoothMediaSource.isThrowErrorIfSwitchFailed()) {
                            MgtvMediaPlayer.this.mErrorListener.onError(MgtvMediaPlayer.WHAT_SMOOTHSOURCE_EX_ERROR, i6);
                            return;
                        }
                    }
                    if (i4 == 1) {
                        MgtvMediaPlayer.this.mErrorListener.onError(i5, i6);
                        return;
                    }
                    SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i3);
                    if (smoothMediaSourceMatchLastKeySource == null) {
                        DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed matchKeySource failed");
                    } else {
                        MgtvMediaPlayer.this.notifySwitchSmoothSourceFail(smoothMediaSourceMatchLastKeySource, i5, i6);
                    }
                }
            }

            @Override
            public void onSmoothSwitchSourceInfo(d dVar, int i3, int i4, String str) {
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    try {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceInfo (event:" + i4 + ",key:" + i3 + ",msg:" + str + ")");
                        String logTag = MgtvMediaPlayer.this.getLogTag();
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSmoothSwitchSourceInfo current: ");
                        sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                        DebugLog.i(logTag, sb.toString());
                        SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                        if (smoothMediaSource != null) {
                            if (i4 == 0) {
                                smoothMediaSource.s_event_0_timestamp = System.currentTimeMillis();
                            } else if (i4 == 11) {
                                smoothMediaSource.s_event_11_timestamp = System.currentTimeMillis();
                            } else if (i4 == 2) {
                                if (MgtvMediaPlayer.this.isFlowReportEnable) {
                                    smoothMediaSource.genFlowReporter();
                                }
                                smoothMediaSource.s_event_2_timestamp = System.currentTimeMillis();
                            } else if (i4 == 3) {
                                if (MgtvMediaPlayer.this.isFlowReportEnable && MgtvMediaPlayer.this.mMainFlowReportProcessor != null) {
                                    MgtvMediaPlayer.this.mMainFlowReportProcessor.stop();
                                }
                                for (Map.Entry entry : MgtvMediaPlayer.this.mSmoothSourcesRecord.entrySet()) {
                                    if (((Integer) entry.getKey()).intValue() < smoothMediaSource.getKey()) {
                                        SmoothMediaSource smoothMediaSource2 = (SmoothMediaSource) entry.getValue();
                                        if (MgtvMediaPlayer.this.isFlowReportEnable && smoothMediaSource2 != null && smoothMediaSource2.getFlowReportProcessor() != null) {
                                            smoothMediaSource2.getFlowReportProcessor().stop();
                                        }
                                    }
                                }
                                smoothMediaSource.s_event_3_timestamp = System.currentTimeMillis();
                            }
                        }
                        if (i4 != 3) {
                            if (MgtvMediaPlayer.this.matchLastKeySource(i3) == null) {
                                DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceInfo matchKeySource failed");
                                return;
                            } else {
                                if (i4 == 0) {
                                    MgtvMediaPlayer.this.mSourceSwitching = true;
                                }
                                return;
                            }
                        }
                        SmoothMediaSource smoothMediaSource3 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(this.lastSwitchingKey));
                        if (smoothMediaSource3 != null && smoothMediaSource3.getReporter() != null) {
                            smoothMediaSource3.getReporter().c();
                        }
                        this.lastSwitchingKey = i3;
                        SmoothMediaSource smoothMediaSource4 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                        if (smoothMediaSource4 != null && MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null) {
                            MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceInfo(smoothMediaSource4, i4);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.mSmoothSourcesRecord = new HashMap();
        this.mSwitchSmoothSourceLocker = new Object();
        this.mSmoothUseP2pFailed = false;
        this.mSmoothKeyFrameMap = Collections.synchronizedMap(new HashMap());
        this.isBackground = false;
        this.mBundle = bundle;
        extractBundleData();
        init(i, context, z);
    }

    public MgtvMediaPlayer(Context context) throws SecurityException, UnsatisfiedLinkError, NullPointerException, OutOfMemoryError {
        this.mDebug = false;
        this.mPreBufferTimeoutMs = 1800000;
        this.mBufferTimeoutMs = 180000;
        this.mImgoMediaPlayerAudioMode = false;
        this.mAccurateSeekEnable = true;
        this.mAccSeekKeyFrameInterval = 1000;
        this.mKeyframeSeekEnable = false;
        this.mInnerAutoRotateEnable = false;
        this.mWeakBufferSpeedKB = 1;
        this.mWeakBufferTimeoutMs = 120000;
        this.mTsNotSkip = false;
        this.mLoadMaxRetryTime = 2;
        this.mPrepared = false;
        this.mIsBuffering = false;
        this.mErrorUrl = "";
        this.mLastRequestUrl = "";
        this.mLastDlSize = 0;
        this.mIsLive = false;
        this.mPlayerMode = 0;
        this.mLiveReopen = false;
        this.mLoopPlayerSwitchUrl = "";
        this.mHDJSwitchUrl = "";
        this.mDataSourceType = DataSourceType.TYPE_DATASOUCE_DEFAULT;
        this.mErrorExtraCodeStore = -1;
        this.mRecordVfps = 0.0f;
        this.mLastVideoWidth = 0;
        this.mLastVideoHeight = 0;
        this.mSkipLoopFilterType = SkipLoopFilterType.TYPE_SKIPLOOPFILTER_ALL;
        this.mAddrinfoType = AddrinfoType.TYPE_ADDRINFO_DEFAULT;
        this.mAddrinfoTimeoutMs = 0;
        this.mPrepared4StartMode = Prepared4StartMode.MODE_PREPARED4START_DEFAULT;
        this.mErrorListener = new MgtvPlayerListener.OnErrorListener() {
            private boolean needInnerRetry(int i3, int i4) {
                return !MgtvMediaPlayer.this.mIsInnerRetrying && MgtvMediaPlayer.this.mMediaPlayer.v() == 2 && i3 == 200003 && i4 == 100606;
            }

            @Override
            public boolean onError(int i3, int i4) {
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onError what:" + i3 + ",extra:" + i4 + ",netType:" + NetPlayConfig.getNetworkType());
                if (MgtvMediaPlayer.this.mGifRecorder != null) {
                    MgtvMediaPlayer.this.mGifRecorder.interrupt(101);
                }
                if (MgtvMediaPlayer.this.isDnsCacheEnable()) {
                    MgtvMediaPlayer.this.checkAndCleanDnsCache(i3, i4);
                }
                if (needInnerRetry(i3, i4)) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onError needInnerRetry");
                    MgtvMediaPlayer.this.mIsInnerRetrying = true;
                    MgtvMediaPlayer.this.mRetryLastErrorCode = i4;
                    MgtvMediaPlayer.this.setPlayerReset(true);
                    if (MgtvMediaPlayer.this.mMediaPlayer.aj()) {
                        MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mMediaPlayer.H(), i3, i4, MgtvMediaPlayer.this.mMediaPlayer.v());
                    } else {
                        MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mMediaPlayer.H(), i3, i4);
                    }
                    return true;
                }
                MgtvMediaPlayer.this.beforeThrowError(i3, i4);
                MgtvMediaPlayer.this.reportErrorWarning(i3, i4);
                if (i3 != 7000006) {
                    MgtvMediaPlayer.this.reportError(i3, i4, "");
                }
                MgtvMediaPlayer.this.stopTickers();
                MgtvMediaPlayer.this.mPlayStatus = PlayStatus.ERROR;
                MgtvMediaPlayer.this.mErrorExtraCodeStore = i4;
                if (MgtvMediaPlayer.this.mOnErrorListener != null) {
                    return MgtvMediaPlayer.this.mOnErrorListener.onError(i3, i4);
                }
                return true;
            }
        };
        this.mIsGetPositionCallback = false;
        this.mPlayStatus = PlayStatus.IDLE;
        this.mRenderType = RenderType.NATIVE_WINDOW;
        this.mPlayTicker = new ExTicker(1000).setTypeStr(PlayAudioData.TAG_NEED_PLAY);
        this.mBufferTick = new ExTicker(1000).setTypeStr("buffer");
        this.mPlayerType = 2;
        this.mMainThreadID = -1L;
        this.mCacheReplaceMap = new LinkedHashMap();
        this.mIsInnerRetrying = false;
        this.mRetryLastErrorCode = 0;
        this.mRenderDisableWarnSended = false;
        this.mForceHttpDns = false;
        this.mHttpDnsNeedRetry = false;
        this.mJavaDnsEnable = false;
        this.mJavaDnsType = com.hunantv.media.player.a.a.b.FREE_HTTP_DNS;
        this.mHttpDnsEnable = false;
        this.mPlayerReset = true;
        this.mLoopPlayerReset = true;
        this.mLastUri = null;
        this.mLastHostErr = "00";
        this.mLastTcpErr = "00";
        this.mLastIpCount = 0;
        this.mLastIpIndex = -1;
        this.mLastDnsType = -1;
        this.mCurrentDnsDsc = "native";
        this.mEnableP2PHttpDns = false;
        this.mForceP2pHttpDns = false;
        this.mDnsThreadManager = new com.hunantv.media.player.a.d().a(new com.hunantv.media.player.a.d.b() {
            @Override
            public void updateIPs(String str, List<String> list) {
                P2pMgr.YfAddBackupIps(str, list, MgtvMediaPlayer.this.mForceP2pHttpDns);
            }
        });
        this.mAVSyncErrReported = false;
        this.mAVSyncErrSumReported = false;
        this.mAVSyncErrSum = 0;
        this.mAVSyncStartTimestamp = 0L;
        this.mPrepareAsyncTimeStampMs = 0L;
        this.mPreBufferState = new SyncStateMachine(1);
        this.mPreBufferMaxS = 5;
        this.mIsAudioExist = -1;
        this.mIsVsrOpen = -1;
        this.mIsNativePausedLoadData = 0;
        this.mIsWanosAudioEffectValid = false;
        this.mLastPosition = 0;
        this.mPositionLoged = false;
        this.mRealEncodeType = -1;
        this.mStreamFormatType = -1;
        this.mNotifyHandler = new MainNotifyHandler(this);
        this.mWillOpenUrl = "";
        this.mReportedTSLAN = false;
        this.mDnsLock = new Object();
        this.mIsP2pTSSkipReport = false;
        this.mCodecName = "n";
        this.mVVbuft = -1;
        this.mEnableJAVAIPCacheMap = false;
        this.mIPCacheMap = new HashMap();
        this.mVideoFrameClockNotifyMs = -1;
        this.mVideoFrameClockNotifyType = -1;
        this.mVideoFrameClockNotifyTimeStart = -1L;
        this.mVideoFrameClockNotifyTimeEnd = -1L;
        this.mCacheReportTag = "default";
        this.mCacheReportLerr = 0;
        this.mEnableDnsNoNetStrategy = false;
        this.mDnsNoNetWaiter = new Object();
        this.mLastIsNetworkAvailableNNS = true;
        this.mDnsNoNetMaxRetry = 20;
        this.mLastTsSkipErrExtra = 0;
        this.fstime = "n/n";
        this.mcColorFormat = "n_n";
        this.isFlowReportEnable = false;
        this.vsri = "0|0_0|0_0";
        this.vsrver = "n";
        this.vsrvkver = "n";
        this.mSourceNetListner = new MgtvPlayerListener.OnSourceNetHandledListener() {
            public static final int REPORT_HTTP_DNS_INTERRUPT = -2;
            public static final int REPORT_HTTP_DNS_PV = 0;
            private boolean mIsPauseLoad = false;

            private void checkErrorCode(int i3, int i4, Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                int i5 = bundle2.getInt("retry_counter");
                MgtvMediaPlayer.this.mSourceRetryCount = i5;
                MgtvMediaPlayer.this.mSourceRetryCode = i4;
                if (MgtvMediaPlayer.this.isDnsCacheEnable() && i5 >= 1 && MgtvMediaPlayer.this.checkAndCleanDnsCache(i3, i4)) {
                    MgtvMediaPlayer.this.mHttpDnsEnable = true;
                }
            }

            private boolean didHDJSwitch(Bundle bundle2) {
                if (MgtvMediaPlayer.this.mHDJSwitchUrl.length() <= 0 || bundle2 == null) {
                    return false;
                }
                bundle2.putString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_URL_STRING, MgtvMediaPlayer.this.mHDJSwitchUrl);
                bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_IS_LAST_INT, 1);
                MgtvMediaPlayer.this.mHDJSwitchUrl = "";
                return true;
            }

            private void didHostAddr(Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                int i3 = bundle2.getInt("host_error");
                int i4 = bundle2.getInt("host_family");
                String string = bundle2.getString("host_hostname");
                String string2 = bundle2.getString("host_ip");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback didHostAddr error:" + i3 + ",family:" + i4 + ",hostname:" + string + ",ip_list:" + string2 + ",port:" + bundle2.getInt("host_port") + ",hostDnsType:" + MgtvMediaPlayer.this.mLastDnsType = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_HOST_ARRR_DNS_TYPE_INT));
                MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                StringBuilder sb = new StringBuilder();
                sb.append(i3);
                sb.append("");
                mgtvMediaPlayer.mLastHostErr = sb.toString();
                MgtvMediaPlayer.this.mLastIpIndex = 0;
                try {
                    String[] strArrSplit = string2.split(ProcessInfo.SPLIT_NEW_VERSION);
                    MgtvMediaPlayer.this.mLastIpCount = 0;
                    if (strArrSplit != null) {
                        for (String str : strArrSplit) {
                            if (com.hunantv.media.player.a.e.e(str)) {
                                MgtvMediaPlayer.access$4208(MgtvMediaPlayer.this);
                            }
                        }
                    }
                    MgtvMediaPlayer.this.mLastIps = strArrSplit;
                    if (!MgtvMediaPlayer.this.mEnableJAVAIPCacheMap || i3 != 0 || MgtvMediaPlayer.this.mIPCacheMap.containsKey(string) || strArrSplit == null || strArrSplit.length <= 0) {
                        return;
                    }
                    IPList iPList = new IPList(string, strArrSplit);
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didHostAddr put:" + string + "-" + IPList.formatIPList(iPList.nUseList));
                    MgtvMediaPlayer.this.mIPCacheMap.put(string, iPList);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            private boolean didLiveOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return false;
                }
                return onLiveWillOpen(bundle2);
            }

            private boolean didLiveReopen(Bundle bundle2) {
                boolean z2 = MgtvMediaPlayer.this.mLiveReopen;
                if (MgtvMediaPlayer.this.mLiveReopen) {
                    MgtvMediaPlayer.this.mLiveReopen = false;
                }
                return z2;
            }

            private boolean didLoopOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return false;
                }
                return onLiveWillOpen(bundle2);
            }

            private boolean didLoopReopen(Bundle bundle2) {
                if (MgtvMediaPlayer.this.mLoopPlayerSwitchUrl.length() <= 0) {
                    return false;
                }
                bundle2.putString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_URL_STRING, MgtvMediaPlayer.this.mLoopPlayerSwitchUrl);
                MgtvMediaPlayer.this.mLoopPlayerSwitchUrl = "";
                return true;
            }

            private void didTcpOpen(Bundle bundle2) {
                StringBuilder sb;
                IPList iPList;
                if (bundle2 == null) {
                    return;
                }
                int i3 = bundle2.getInt("port");
                int i4 = bundle2.getInt("family");
                int i5 = bundle2.getInt("error");
                String string = bundle2.getString("ip");
                String string2 = bundle2.getString("tcp_hostname");
                long j = bundle2.getLong("switch_key");
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "didTcpOpen switch_key:" + j);
                if (MgtvMediaPlayer.this.mMediaPlayer != null && MgtvMediaPlayer.this.mMediaPlayer.I() != null) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "didTcpOpen origin:" + MgtvMediaPlayer.this.mMediaPlayer.I());
                }
                String logTag = MgtvMediaPlayer.this.getLogTag();
                if (i5 != 0) {
                    sb = new StringBuilder();
                    sb.append("chodison didTcpOpen port:");
                    sb.append(i3);
                    sb.append(",family:");
                    sb.append(i4);
                    sb.append(",error_code:");
                    sb.append(i5);
                    sb.append(",ip:");
                    sb.append(string);
                    sb.append(",hostname:");
                    sb.append(string2);
                    DebugLog.e(logTag, sb.toString());
                } else {
                    sb = new StringBuilder();
                    sb.append("chodison didTcpOpen port:");
                    sb.append(i3);
                    sb.append(",family:");
                    sb.append(i4);
                    sb.append(",ip:");
                    sb.append(string);
                    sb.append(",hostname:");
                    sb.append(string2);
                    DebugLog.i(logTag, sb.toString());
                }
                MgtvMediaPlayer.this.mLastTcpErr = i5 + "";
                MgtvMediaPlayer.this.mLastTcpIP = string;
                MgtvMediaPlayer.access$2808(MgtvMediaPlayer.this);
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap) {
                    try {
                        if (!MgtvMediaPlayer.this.mIPCacheMap.containsKey(string2) || (iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(string2)) == null) {
                            return;
                        }
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didTcpOpen remove " + string + " from " + string2);
                        iPList.nUseList.remove(string);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache didTcpOpen rest ip:" + IPList.formatIPList(iPList.nUseList));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }

            private boolean doNetHttpWillOpenFailed(int i3, int i4, Bundle bundle2) {
                boolean z2;
                List<String> list;
                String logTag;
                String str;
                checkErrorCode(i3, i4, bundle2);
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                int i5 = bundle2.getInt("cur_dl_dize");
                if (isInitMp4(MgtvMediaPlayer.this.mErrorUrl)) {
                    MgtvMediaPlayer.this.mIsInitMp4Error = true;
                } else {
                    MgtvMediaPlayer.this.mIsInitMp4Error = false;
                }
                int i6 = bundle2.getInt("retry_counter");
                if (UrlUtil.isFilePrefix(MgtvMediaPlayer.this.mErrorUrl) && !MgtvMediaPlayer.this.mCacheReplaceMap.isEmpty()) {
                    if (MgtvMediaPlayer.this.mOnWarningListener != null) {
                        MgtvMediaPlayer.this.mOnWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_TS_CACHE_SKIP, i4 + "", MgtvMediaPlayer.this.mErrorUrl, null);
                    }
                    String str2 = (String) MgtvMediaPlayer.this.mCacheReplaceMap.get(MgtvMediaPlayer.this.mErrorUrl);
                    if (str2 != null) {
                        MgtvMediaPlayer.access$7408(MgtvMediaPlayer.this);
                        MgtvMediaPlayer.this.mErrorUrl = str2;
                        bundle2.putString("url", str2);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed replace local_url to " + str2);
                    }
                }
                bundle2.getString("player_hash");
                int i7 = bundle2.getInt("io_type");
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i7), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4));
                if (isENETUNREACHcode(i3, i4) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i3, i4))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4));
                    return true;
                }
                synchronized (MgtvMediaPlayer.this.mDnsNoNetWaiter) {
                    if (!isPlayerReset() && MgtvMediaPlayer.this.mEnableDnsNoNetStrategy && isDnsError(i3, i4)) {
                        boolean zC = com.hunantv.media.report.c.d.c(MgtvMediaPlayer.this.mContext);
                        if (!zC) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 1000 in");
                            try {
                                MgtvMediaPlayer.this.mDnsNoNetWaiter.wait(1000L);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str = "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 1000 out";
                            DebugLog.i(logTag, str);
                            z2 = true;
                        } else if (!zC || MgtvMediaPlayer.this.mLastIsNetworkAvailableNNS) {
                            z2 = false;
                        } else {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 3000 in");
                            try {
                                MgtvMediaPlayer.this.mDnsNoNetWaiter.wait(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str = "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 3000 out";
                            DebugLog.i(logTag, str);
                            z2 = true;
                        }
                        MgtvMediaPlayer.this.mLastIsNetworkAvailableNNS = zC;
                    } else {
                        z2 = false;
                    }
                }
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed mIsLive:" + MgtvMediaPlayer.this.mIsLive + ",mPlayerMode:" + MgtvMediaPlayer.this.mPlayerMode + ",mPrepared:" + MgtvMediaPlayer.this.mPrepared + ",mIsBuffering:" + MgtvMediaPlayer.this.mIsBuffering + ",mTsNotSkip:" + MgtvMediaPlayer.this.mTsNotSkip + ",mLoadMaxRetryTime:" + MgtvMediaPlayer.this.mLoadMaxRetryTime + ",mPlayStatus:" + MgtvMediaPlayer.this.mPlayStatus + ",lip:" + MgtvMediaPlayer.this.getLastIP());
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed %d-%d-%d-%d-%s", Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                if ((!MgtvMediaPlayer.this.mIsLive || MgtvMediaPlayer.this.isVod()) && MgtvMediaPlayer.this.mPlayerMode != 1) {
                    if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && (i4 == 100911 || i4 == 300021 || CodeUtil.isHttp4XX(i3, i4) || CodeUtil.isHttp5XX(i3, i4))) {
                        String hostName = UrlUtil.getHostName(UrlUtil.getValidHttpUrl(bundle2.getString("url")));
                        if (!StringUtil.isEmpty(hostName) && !com.hunantv.media.player.a.e.a(hostName) && MgtvMediaPlayer.this.mIPCacheMap.containsKey(hostName)) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http contains host:" + hostName);
                            IPList iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(hostName);
                            if (iPList != null && iPList.checkTTL() && (list = iPList.nUseList) != null && list.size() > 0) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http check ttl success." + iPList);
                                if (i6 >= 6) {
                                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http return false.not retry");
                                    reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                                    return false;
                                }
                                bundle2.putString("user_msg", MgtvMediaPlayer.USER_MSG_FLAG_USE_CACHE);
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache will http return true.try to goto ip choose");
                                reportHttpErrorPV(i6, MgtvMediaPlayer.this.mErrorUrl, i4, "ipcache");
                                return true;
                            }
                        }
                    }
                    reportHttpErrorPV(i6, MgtvMediaPlayer.this.mErrorUrl, i4, "default");
                    if (z2) {
                        if (i6 < MgtvMediaPlayer.this.mDnsNoNetMaxRetry) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy retry cause by inDnsNetStrategy");
                            return true;
                        }
                        reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed DnsNetStrategy skip retry cause by errorRetryCount >= mDnsNoNetMaxRetry");
                        return false;
                    }
                    if (!MgtvMediaPlayer.this.mPrepared) {
                        if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl)) {
                            if (i6 < 2) {
                                return true;
                            }
                            reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                            return false;
                        }
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && isInitMp4(MgtvMediaPlayer.this.mErrorUrl) && i5 > 0 && i6 < 10) {
                            return true;
                        }
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i6 < MgtvMediaPlayer.this.mLoadMaxRetryTime) {
                            return true;
                        }
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                        mgtvMediaPlayer.callbackTsSkip(mgtvMediaPlayer.mErrorUrl, i3, i4);
                        reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                        return false;
                    }
                    if (MgtvMediaPlayer.this.mTsNotSkip && MgtvMediaPlayer.this.isRendered()) {
                        return true;
                    }
                } else {
                    if (!MgtvMediaPlayer.this.mPrepared) {
                        if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl)) {
                            return i6 < 2;
                        }
                        MgtvMediaPlayer mgtvMediaPlayer2 = MgtvMediaPlayer.this;
                        mgtvMediaPlayer2.callbackTsSkip(mgtvMediaPlayer2.mErrorUrl, i3, i4);
                        return false;
                    }
                    if (MgtvMediaPlayer.this.mIsBuffering && MgtvMediaPlayer.this.isHLSPlayingUrl() && i6 >= 1) {
                        if (UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) {
                            MgtvMediaPlayer mgtvMediaPlayer3 = MgtvMediaPlayer.this;
                            mgtvMediaPlayer3.callbackTsSkip(mgtvMediaPlayer3.mErrorUrl, i3, i4);
                        }
                        return false;
                    }
                }
                if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i6 < 2) {
                    return true;
                }
                if (UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) {
                    MgtvMediaPlayer mgtvMediaPlayer4 = MgtvMediaPlayer.this;
                    mgtvMediaPlayer4.callbackTsSkip(mgtvMediaPlayer4.mErrorUrl, i3, i4);
                }
                reportHttpErrorErr(i4, MgtvMediaPlayer.this.mErrorUrl);
                return false;
            }

            private boolean doNewHttpWillOpen(Bundle bundle2) {
                int i3 = bundle2.getInt("error_type");
                int i4 = bundle2.getInt("error_code");
                bundle2.getInt("retry_counter");
                int i5 = bundle2.getInt("reset_iplist");
                MgtvMediaPlayer.this.mLastDlSize = bundle2.getInt("cur_dl_dize");
                bundle2.putString("user_msg", "init");
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && i5 == 1) {
                    MgtvMediaPlayer.this.clearIPCache();
                }
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doNewHttpWillOpen in error_what:" + i3 + ",error_extra:" + i4 + ",reset_iplist:" + i5 + ",mLastDlSize:" + MgtvMediaPlayer.this.mLastDlSize);
                bundle2.putInt("reset_iplist", 0);
                if (i4 == 0) {
                    MgtvMediaPlayer.this.mIsInitMp4Error = false;
                    if (i4 == 0 && MgtvMediaPlayer.this.mCacheEable) {
                        replaceUrlFromCache(bundle2);
                    }
                    return false;
                }
                boolean zDoNetHttpWillOpenFailed = doNetHttpWillOpenFailed(i3, i4, bundle2);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doNetHttpWillOpenFailed return " + zDoNetHttpWillOpenFailed + StringUtils.COMMA + i3 + "-" + i4 + "-" + MgtvMediaPlayer.this.mErrorUrl);
                return zDoNetHttpWillOpenFailed;
            }

            private boolean doWillGetEnv(Bundle bundle2) {
                String string = bundle2.getString("env_key");
                if (string == null || string.length() <= 0) {
                    return false;
                }
                bundle2.putString("env_value", System.getenv(string));
                return true;
            }

            private boolean doWillHostAddr(Bundle bundle2) {
                List<String> list;
                if (bundle2 == null) {
                    return false;
                }
                int i3 = bundle2.getInt("addr_handle");
                String string = bundle2.getString("player_hash");
                int i4 = bundle2.getInt("retry_counter");
                String string2 = bundle2.getString("user_msg");
                String string3 = bundle2.getString("addr_hostname");
                long j = bundle2.getLong("switch_key");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback doWillHostAddr is_handle:" + i3 + ",hash:" + string + ",count_int:" + i4 + ",user_msg:" + string2 + ",hostname:" + string3 + ",switch_key:" + j);
                if (MgtvMediaPlayer.this.mEnableJAVAIPCacheMap && i3 != 1 && MgtvMediaPlayer.USER_MSG_FLAG_USE_CACHE.equals(string2) && !com.hunantv.media.player.a.e.a(string3) && MgtvMediaPlayer.this.mIPCacheMap.containsKey(string3)) {
                    try {
                        IPList iPList = (IPList) MgtvMediaPlayer.this.mIPCacheMap.get(string3);
                        if (iPList != null && (list = iPList.nUseList) != null && list.size() > 0 && iPList.checkTTL()) {
                            String str = iPList.nUseList.get(0);
                            if (com.hunantv.media.player.a.e.e(str)) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "callback ipcache doWillHostAddr put chooseip:" + str);
                                String iPList2 = IPList.formatIPList(iPList.nUseList);
                                if (!StringUtil.isEmpty(iPList2)) {
                                    DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback ipcache doWillHostAddr put srcIPListStr:" + iPList2);
                                    bundle2.putString("addr_hostname", iPList2);
                                }
                                bundle2.putString("addr_ip", str);
                                bundle2.putInt("addr_error", 0);
                                return false;
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                String string4 = bundle2.getString("addr_uri");
                if (com.hunantv.media.player.a.e.d(string3)) {
                    notifyIpIsLAN(MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "0", "hostname_" + string3);
                }
                boolean zA = com.hunantv.media.player.a.e.a(string3);
                boolean zC = com.hunantv.media.report.c.d.c(MgtvMediaPlayer.this.mContext);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doWillHostAddr hostname:" + string3 + ",isIp:" + zA);
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "doWillHostAddr is_handle=" + i3 + ",mBackJavaDns=" + MgtvMediaPlayer.this.mBackJavaDns + ",isIp=" + zA + ",mForceHttpDns:" + MgtvMediaPlayer.this.mForceHttpDns);
                if ((MgtvMediaPlayer.this.mForceHttpDns && !zA) || ((MgtvMediaPlayer.this.mJavaDnsEnable && !zA) || (i3 == 1 && MgtvMediaPlayer.this.mBackJavaDns && !zA))) {
                    if (zC) {
                        MgtvMediaPlayer.this.mLastUri = string4;
                        domainResolve(string3, bundle2, MgtvMediaPlayer.this.mForceHttpDns);
                    } else {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "skip domainResolve cause net not available");
                    }
                    return MgtvMediaPlayer.this.mPlayerReset;
                }
                if (i3 == 1 && zA) {
                    bundle2.putString("addr_ip", string3);
                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, 0);
                    bundle2.putInt("addr_error", 0);
                }
                return false;
            }

            private boolean doWillHttpOpen(Bundle bundle2) {
                if (bundle2 != null) {
                    MgtvMediaPlayer.this.mLastRequestUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                }
                if (MgtvMediaPlayer.this.mReportParams != null && (MgtvMediaPlayer.this.mReportParams.getVideoType().equals(ReportParams.VideoType.AD_PRE) || MgtvMediaPlayer.this.mReportParams.getVideoType().equals(ReportParams.VideoType.AD_MID))) {
                    return onNormalHttpWillOpen(bundle2);
                }
                if (bundle2 != null) {
                    MgtvMediaPlayer.this.mWillOpenUrl = bundle2.getString("url");
                }
                return doNewHttpWillOpen(bundle2);
            }

            private void domainResolve(String str, Bundle bundle2, boolean z2) {
                com.hunantv.media.player.a.a.b bVarD;
                int iE;
                if (str == null || bundle2 == null) {
                    DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "skip domainResolve hostname or args is null");
                    return;
                }
                com.hunantv.media.player.a.a aVar = new com.hunantv.media.player.a.a();
                aVar.a(new com.hunantv.media.player.a.a.InterfaceC0133a() {
                    @Override
                    public void onDnsFail(com.hunantv.media.player.a.a aVar2) {
                    }

                    @Override
                    public void onDnsFinish(com.hunantv.media.player.a.a aVar2) {
                        synchronized (MgtvMediaPlayer.this.mDnsLock) {
                            MgtvMediaPlayer.this.mDnsLock.notifyAll();
                        }
                    }

                    @Override
                    public void onDnsStart(com.hunantv.media.player.a.a aVar2) {
                    }

                    @Override
                    public void onDnsSuc(com.hunantv.media.player.a.a aVar2, String[] strArr) {
                    }
                });
                boolean zResolveStrategy = resolveStrategy(aVar, str, bundle2, z2, MgtvMediaPlayer.this.mHttpDnsNeedRetry);
                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve use:" + zResolveStrategy);
                if (zResolveStrategy) {
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve use type:" + aVar.d());
                    notifyHttpDnsReport(aVar.d(), 2000, 0);
                }
                synchronized (MgtvMediaPlayer.this.mDnsLock) {
                    while (aVar.a() && !isJavaDnsInterrupt()) {
                        DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "domainResolve wait in");
                        try {
                            MgtvMediaPlayer.this.mDnsLock.wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "domainResolve wait out. resolving:" + aVar.a() + ",isJavaDnsInterrupt:" + isJavaDnsInterrupt());
                String[] strArrA = com.hunantv.media.player.a.e.a(aVar.b());
                aVar.c();
                String str2 = "costMs:" + aVar.f() + ";ips:" + com.hunantv.media.utils.StringUtil.formatArrayString(strArrA) + ";net:" + NetPlayConfig.getNetworkType() + ProcessInfo.SPLIT_NEW_VERSION;
                String iPList = IPList.formatIPList(strArrA);
                String str3 = (strArrA == null || strArrA.length <= 0) ? null : strArrA[0];
                int i3 = AnonymousClass28.$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType[aVar.d().ordinal()] != 1 ? 5 : 4;
                if (!isJavaDnsInterrupt() && com.hunantv.media.player.a.e.e(str3)) {
                    if (zResolveStrategy) {
                        updateCurrentDnsDsc(aVar.d());
                        if (com.hunantv.media.player.a.e.d(str3)) {
                            notifyHttpDnsReport(aVar.d(), 2001, 100, str2);
                        } else {
                            notifyHttpDnsReport(aVar.d(), 2001, 0, str2);
                        }
                    }
                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve put iplist:" + iPList);
                    bundle2.putString("addr_hostname", iPList);
                    if (com.hunantv.media.player.a.e.e(str3)) {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "domainResolve put firstIP:" + str3);
                        bundle2.putString("addr_ip", str3);
                    }
                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, i3);
                    bundle2.putInt("addr_error", 0);
                    return;
                }
                if (zResolveStrategy) {
                    if (isJavaDnsInterrupt() && aVar.e() == 0) {
                        bVarD = aVar.d();
                        iE = -2;
                    } else {
                        bVarD = aVar.d();
                        iE = aVar.e();
                    }
                    notifyHttpDnsReport(bVarD, 2002, iE, str2);
                    if (!isJavaDnsInterrupt()) {
                        int iA = aVar.a(199);
                        if (aVar.e() != 0) {
                            iA = aVar.e();
                        } else if (str3 != null && !com.hunantv.media.player.a.e.a(str3)) {
                            iA = aVar.a(107);
                        }
                        int i4 = -iA;
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), aVar.d() + "resolve putInt error:" + i4);
                        bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CTRL_ARRR_DNS_TYPE_INT, i3);
                        bundle2.putInt("addr_error", i4);
                    }
                }
                MgtvMediaPlayer.this.mCurrentDnsDsc = "native";
            }

            private String findTsCachPath(String str, String[] strArr) {
                if (strArr == null) {
                    return null;
                }
                try {
                    String fileName = UrlUtil.getFileName(str);
                    for (String str2 : strArr) {
                        if (str2 != null && new File(str2).getName().equals(fileName)) {
                            return str2;
                        }
                    }
                } catch (Exception unused) {
                }
                return null;
            }

            private boolean isDnsError(int i3, int i4) {
                return i4 == 300600 || i3 == 400605 || MGTVP2pDirectMediaDataSource.isP2pDirectDnsError(i3, i4);
            }

            private boolean isENETUNREACHcode(int i3, int i4) {
                return i4 == 300005 || MGTVP2pDirectMediaDataSource.getShortErrorCode(i3, i4) == 101;
            }

            private boolean isInitMp4(String str) {
                return MgtvMediaPlayer.this.isHLSPlayingUrl() && UrlUtil.isSuffixUrl(str, Video.SUFFIX.SUFFIX_MP4);
            }

            private boolean isJavaDnsInterrupt() {
                return isPlayerReset();
            }

            private boolean isPlayerReset() {
                return MgtvMediaPlayer.this.mPlayerReset || (MgtvMediaPlayer.this.mPlayerMode == 2 && MgtvMediaPlayer.this.mLoopPlayerReset);
            }

            private void notifyHttpDnsReport(com.hunantv.media.player.a.a.b bVar, int i3, int i4) {
                notifyHttpDnsReport(bVar, i3, i4, "");
            }

            private void notifyIpIsLAN(String str, String str2) {
                if (MgtvMediaPlayer.this.mOnWarningListener == null || MgtvMediaPlayer.this.mReportParams == null || MgtvMediaPlayer.this.mReportParams.getVideoType() != ReportParams.VideoType.VOD) {
                    return;
                }
                if (!MgtvMediaPlayer.this.mReportedTSLAN) {
                    notifyMessage(1002, str, str2 + "_suffix_" + UrlUtil.getSuffix(MgtvMediaPlayer.this.mWillOpenUrl));
                }
                if (UrlUtil.isM3u8(MgtvMediaPlayer.this.mWillOpenUrl)) {
                    return;
                }
                MgtvMediaPlayer.this.mReportedTSLAN = true;
            }

            private void notifyMessage(int i3, int i4, String str) {
                Message message = new Message();
                message.what = i3;
                message.arg1 = i4;
                message.obj = str;
                MgtvMediaPlayer.this.mNotifyHandler.sendMessage(message);
            }

            private boolean onLiveWillOpen(Bundle bundle2) {
                int i3 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERROR_WHAT_INT);
                int i4 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERROR_EXTRA_INT);
                MgtvMediaPlayer.this.mLastRequestUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_SRC_URL_STRING));
                if (i4 == 0) {
                    return false;
                }
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_SRC_URL_STRING));
                int i5 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_COUNTER_INT);
                int i6 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LIVE_RETRY_ERR_IO_TYPE_INT);
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLiveWillOpen url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                if (isENETUNREACHcode(i3, i4) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i3, i4))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLiveWillOpen network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                    return true;
                }
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_LIVE_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                return !MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i5 < 2;
            }

            private boolean onLoopWillOpen(Bundle bundle2) {
                int i3 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERROR_WHAT_INT);
                int i4 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERROR_EXTRA_INT);
                if (i4 == 0) {
                    return false;
                }
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_SRC_URL_STRING));
                int i5 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_COUNTER_INT);
                int i6 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_CRTL_LOOP_RETRY_ERR_IO_TYPE_INT);
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLoopWillOpen url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                if (isENETUNREACHcode(i3, i4) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i3, i4))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onLoopWillOpen network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                    return true;
                }
                DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_LOOP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                return !MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i5 < 2;
            }

            private boolean onNormalHttpWillOpen(Bundle bundle2) {
                int i3 = bundle2.getInt("error_type");
                int i4 = bundle2.getInt("error_code");
                if (i4 == 0) {
                    return false;
                }
                checkErrorCode(i3, i4, bundle2);
                MgtvMediaPlayer.this.mErrorUrl = UrlUtil.getValidUrl(bundle2.getString("url"));
                bundle2.getString("player_hash");
                bundle2.getString("user_msg");
                int i5 = bundle2.getInt("retry_counter");
                int i6 = bundle2.getInt("io_type");
                long j = bundle2.getLong("switch_key");
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d", MgtvMediaPlayer.this.mErrorUrl, Integer.valueOf(i6), Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl switch_key:" + j);
                if (isENETUNREACHcode(i3, i4) || (MgtvMediaPlayer.this.mPrepared && isDnsError(i3, i4))) {
                    com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "onSourceNetCtrl network broken,RetryCount:%d,error_code:%d-%d", Integer.valueOf(i5), Integer.valueOf(i3), Integer.valueOf(i4));
                    return true;
                }
                if (MgtvMediaPlayer.this.mIsLive) {
                    if ((!MgtvMediaPlayer.this.mIsBuffering || !MgtvMediaPlayer.this.isHLSPlayingUrl() || !UrlUtil.isSegment(MgtvMediaPlayer.this.mErrorUrl)) && MgtvMediaPlayer.this.mPrepared) {
                        UrlUtil.isM3u8(MgtvMediaPlayer.this.mErrorUrl);
                        DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_HTTP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                        if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4)) {
                            return true;
                        }
                    }
                } else if (!MgtvMediaPlayer.this.mIsBuffering && MgtvMediaPlayer.this.mPrepared) {
                    DebugLog.ifmt(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.CTRL_WILL_HTTP_OPEN %d-%d-%d-%d-%s", Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i3), Integer.valueOf(i4), MgtvMediaPlayer.this.mErrorUrl);
                    if (!MgtvMediaPlayer.this.isSkipRetryCode(i3, i4) && i5 < 2) {
                        return true;
                    }
                }
                MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                mgtvMediaPlayer.callbackTsSkip(mgtvMediaPlayer.mErrorUrl, i3, i4);
                return false;
            }

            private boolean replaceUrlFromCache(Bundle bundle2) {
                String string = bundle2.getString("url");
                if (!UrlUtil.isFilePrefix(string) && !UrlUtil.isLocal(string)) {
                    String fileName = UrlUtil.getFileName(string);
                    if (StringUtil.isEmpty(fileName)) {
                        return false;
                    }
                    DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache try to find replace cache:" + string);
                    String strFindTsCachPath = null;
                    if (UrlUtil.isM3u8(string)) {
                        String str = MgtvMediaPlayer.this.mCacheM3u8Path;
                        String fileName2 = UrlUtil.getFileName(str);
                        if (!StringUtil.isEmpty(str) && !StringUtil.isEmpty(fileName2) && fileName2.equals(fileName)) {
                            strFindTsCachPath = str;
                        }
                    } else if (MgtvMediaPlayer.this.isHLSPlayingUrl() && UrlUtil.isSegment(string)) {
                        strFindTsCachPath = findTsCachPath(string, MgtvMediaPlayer.this.mCacheTsPaths);
                    }
                    if (FileUtil.exist(strFindTsCachPath)) {
                        String strAddLocalPrefix = UrlUtil.addLocalPrefix(strFindTsCachPath);
                        if (!StringUtil.isEmpty(strAddLocalPrefix)) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache from " + string);
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache to " + strAddLocalPrefix);
                            bundle2.putString("url", strAddLocalPrefix);
                            if (UrlUtil.isM3u8(string)) {
                                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "replaceUrlFromCache put SRC_URL " + string);
                                bundle2.putString("src_url", string);
                            }
                            MgtvMediaPlayer.this.mCacheReplaceMap.put(strAddLocalPrefix, string);
                            return true;
                        }
                    }
                }
                return false;
            }

            private void reportHttpErrorErr(int i3, String str) {
                if ((isInitMp4(str) || UrlUtil.isM3u8(str)) && MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.getVideoType() == ReportParams.VideoType.VOD && MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.NO_PROXY && MgtvMediaPlayer.this.mOnWarningListener != null) {
                    String strG = MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "00";
                    MgtvPlayerListener.OnWarningListener onWarningListener = MgtvMediaPlayer.this.mOnWarningListener;
                    String str2 = i3 + Consts.DOT + MgtvMediaPlayer.this.mCacheReportLerr;
                    StringBuilder sb = new StringBuilder();
                    sb.append("psuuid_");
                    sb.append(strG);
                    sb.append("_render_");
                    sb.append(MgtvMediaPlayer.this.isRendered() ? "1" : "0");
                    sb.append("_url_");
                    sb.append(str);
                    sb.append("_type_");
                    sb.append(MgtvMediaPlayer.this.mCacheReportTag);
                    onWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTP_ERROR_ERR, str2, sb.toString(), null);
                }
            }

            private void reportHttpErrorPV(int i3, String str, int i4, String str2) {
                if (i3 == 0) {
                    MgtvMediaPlayer.this.mCacheReportTag = "default";
                    MgtvMediaPlayer.this.mCacheReportLerr = 0;
                }
                if (i3 == 0) {
                    if ((isInitMp4(str) || UrlUtil.isM3u8(str)) && MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.getVideoType() == ReportParams.VideoType.VOD && MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.NO_PROXY && MgtvMediaPlayer.this.mOnWarningListener != null) {
                        String strG = MgtvMediaPlayer.this.mReporter != null ? MgtvMediaPlayer.this.mReporter.g() : "00";
                        MgtvMediaPlayer.this.mCacheReportTag = str2;
                        MgtvMediaPlayer.this.mCacheReportLerr = i4;
                        MgtvPlayerListener.OnWarningListener onWarningListener = MgtvMediaPlayer.this.mOnWarningListener;
                        String str3 = i4 + "";
                        StringBuilder sb = new StringBuilder();
                        sb.append("psuuid_");
                        sb.append(strG);
                        sb.append("_render_");
                        sb.append(MgtvMediaPlayer.this.isRendered() ? "1" : "0");
                        sb.append("_url_");
                        sb.append(str);
                        sb.append("_type_");
                        sb.append(str2);
                        onWarningListener.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_HTTP_ERROR_PV, str3, sb.toString(), null);
                    }
                }
            }

            private boolean resolveStrategy(@NonNull com.hunantv.media.player.a.a aVar, @NonNull String str, Bundle bundle2) {
                return resolveStrategy(aVar, str, bundle2, false, false);
            }

            private void updateCurrentDnsDsc(com.hunantv.media.player.a.a.b bVar) {
                MgtvMediaPlayer mgtvMediaPlayer;
                String str;
                int i3 = AnonymousClass28.$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType[bVar.ordinal()];
                if (i3 == 1) {
                    mgtvMediaPlayer = MgtvMediaPlayer.this;
                    str = MgtvMediaPlayer.DNS_JAVA_NORMAL;
                } else {
                    if (i3 != 2) {
                        return;
                    }
                    mgtvMediaPlayer = MgtvMediaPlayer.this;
                    str = MgtvMediaPlayer.DNS_JAVA_HTTPDNS;
                }
                mgtvMediaPlayer.mCurrentDnsDsc = str;
            }

            private void updateIp(String str) {
                String logTag;
                StringBuilder sb;
                String str2;
                if (MgtvMediaPlayer.this.mMediaPlayer == null || (!(MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) || MgtvMediaPlayer.this.mMediaPlayer.ai() == null)) {
                    if (MgtvMediaPlayer.this.mMediaPlayer == null || !((MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) && MgtvMediaPlayer.this.mMediaPlayer.ai() == null)) {
                        MgtvMediaPlayer.this.mLastIP = str;
                    } else {
                        MgtvMediaPlayer.this.mLastIP = "0.0.0.1";
                    }
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    str2 = "didTcpOpen tcp_ip:";
                } else {
                    com.mgtv.a.d taskInfo = P2pMgr.getTaskInfo(MgtvMediaPlayer.this.mMediaPlayer.ai());
                    if (taskInfo != null) {
                        MgtvMediaPlayer mgtvMediaPlayer = MgtvMediaPlayer.this;
                        mgtvMediaPlayer.mLastIP = mgtvMediaPlayer.mLastP2pCdnIP = taskInfo.b;
                    } else {
                        MgtvMediaPlayer.this.mLastIP = null;
                    }
                    logTag = MgtvMediaPlayer.this.getLogTag();
                    sb = new StringBuilder();
                    str2 = "didTcpOpen p2p QueryTaskInfo cdnIp:";
                }
                sb.append(str2);
                sb.append(MgtvMediaPlayer.this.mLastIP);
                DebugLog.d(logTag, sb.toString());
            }

            private void willTcpOpen(Bundle bundle2) {
                if (bundle2 == null) {
                    return;
                }
                String string = bundle2.getString("tcp_hostname");
                String string2 = bundle2.getString("ip");
                DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "callback willTcpOpen tcp_hostname:" + string + ",tcp_ip:" + string2);
                MgtvMediaPlayer.this.mLastHostIP = string2;
                updateIp(string2);
                if (string2 == null || string2.length() <= 1 || !com.hunantv.media.player.a.e.d(string2)) {
                    return;
                }
                notifyIpIsLAN("1", MgtvMediaPlayer.this.getCurrentDnsDsc() + "_hostip_" + string2);
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override
            public boolean onSourceNetCtrl(int i3, Bundle bundle2) {
                IP2pTask iP2pTaskAi;
                com.hunantv.media.report.c.c.a(MgtvMediaPlayer.this.getLogTag(), "OnSourceNetHandledListener.onSourceNetCtrl 0x%5x", Integer.valueOf(i3));
                switch (i3) {
                    case 131073:
                        willTcpOpen(bundle2);
                        return false;
                    case 131074:
                        didTcpOpen(bundle2);
                        return false;
                    case 131075:
                        return doWillHttpOpen(bundle2);
                    case 131077:
                        return didLiveOpen(bundle2);
                    case 131078:
                        return doWillHostAddr(bundle2);
                    case 131081:
                        return didLiveReopen(bundle2);
                    case 131088:
                        return didLoopOpen(bundle2);
                    case 131089:
                        return didLoopReopen(bundle2);
                    case 131090:
                        return didHDJSwitch(bundle2);
                    case 131104:
                        return doWillGetEnv(bundle2);
                    case 131120:
                        if (MgtvMediaPlayer.this.mPreBufferState.isEnable() && MgtvMediaPlayer.this.mPreBufferState.getState() == 2) {
                            this.mIsPauseLoad = true;
                            return true;
                        }
                        if (MgtvMediaPlayer.this.isSourceSwitching() || MgtvMediaPlayer.this.mMediaPlayer == null || (!(MgtvMediaPlayer.this.mMediaPlayer.l() == 2 || MgtvMediaPlayer.this.mMediaPlayer.l() == 1) || (iP2pTaskAi = MgtvMediaPlayer.this.mMediaPlayer.ai()) == null || iP2pTaskAi.getStatus() == 0)) {
                            if (this.mIsPauseLoad) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "CTRL_WILL_CHECK_PAUSE_LOAD will return false. will resume load");
                            }
                            this.mIsPauseLoad = false;
                            return false;
                        }
                        if (!this.mIsPauseLoad) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "CTRL_WILL_CHECK_PAUSE_LOAD will return true. will pause load");
                        }
                        this.mIsPauseLoad = true;
                        return true;
                    case 131184:
                        synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                            try {
                                if (bundle2 == null) {
                                    return false;
                                }
                                if (bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT) == 1) {
                                    if (MgtvMediaPlayer.this.mReporter != null) {
                                        MgtvMediaPlayer.this.mReporter.c();
                                    }
                                    int i4 = (int) bundle2.getLong(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_RETRY_KEY_LONG);
                                    SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i4));
                                    DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1 find:" + i4);
                                    if (smoothMediaSource != null) {
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1 , will retry use :" + smoothMediaSource.getUrl());
                                        bundle2.putString("smooth_switch_url", smoothMediaSource.getUrl());
                                        if (smoothMediaSource.getReporter() != null) {
                                            smoothMediaSource.getReporter().a();
                                            if (MgtvMediaPlayer.this.mReportParams != null) {
                                                MgtvMediaPlayer.this.mReportParams.setPlaySessionId(smoothMediaSource.getReporter().g());
                                            }
                                        }
                                    } else {
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth need_retry == 1, not found source");
                                    }
                                    bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT, 0);
                                    return true;
                                }
                                int i5 = (int) bundle2.getLong("smooth_switch_key");
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH switch_key:" + i5);
                                SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i5);
                                if (smoothMediaSourceMatchLastKeySource != null) {
                                    if (smoothMediaSourceMatchLastKeySource.isLastRetry() && MgtvMediaPlayer.this.mReportParams != null && (MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.ONLY_P2P || MgtvMediaPlayer.this.mReportParams.getProxyType() == ReportParams.ProxyType.P2P_DRM)) {
                                        SmoothMediaSource smoothMediaSource2 = new SmoothMediaSource(MgtvMediaPlayer.this.getPlayingOriginUrl());
                                        smoothMediaSource2.setReportParams(MgtvMediaPlayer.this.mReportParams);
                                        smoothMediaSource2.bind(MgtvMediaPlayer.this);
                                        smoothMediaSource2.setThrowErrorIfSwitchFailed(true);
                                        MgtvMediaPlayer.this.mSmoothSourcesRecord.put(Integer.valueOf(smoothMediaSource2.getKey()), smoothMediaSource2);
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth is last retry. will retry key:" + smoothMediaSource2.getKey());
                                        bundle2.putInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_NEED_RETRY_INT, 1);
                                        bundle2.putLong(MgtvPlayerListener.OnSourceNetHandledListener.ARG_SMOOTH_SWITCH_RETRY_KEY_LONG, (long) smoothMediaSource2.getKey());
                                    }
                                    if (!smoothMediaSourceMatchLastKeySource.isLastRetry()) {
                                        String string = bundle2.getString("smooth_switch_url");
                                        bundle2.putString("smooth_switch_url", string);
                                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH switch_url:" + string);
                                        if (!StringUtil.isEmpty(string)) {
                                            int iIndexOf = string.indexOf(",mgtvjsource:");
                                            String strSubstring = iIndexOf >= 0 ? string.substring(iIndexOf) : "";
                                            boolean zOnSwitchSmoothSourceWillUpdate = MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null ? MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceWillUpdate(smoothMediaSourceMatchLastKeySource) : false;
                                            if (smoothMediaSourceMatchLastKeySource.getReadType() != 2 && zOnSwitchSmoothSourceWillUpdate && !StringUtil.isEmpty(smoothMediaSourceMatchLastKeySource.useUpdateUrl())) {
                                                String str = smoothMediaSourceMatchLastKeySource.useUpdateUrl() + strSubstring;
                                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "smooth CTRL_WILL_SMOOTH_SWITCH will update url:" + str);
                                                bundle2.putString("smooth_switch_url", str);
                                            }
                                        }
                                    }
                                }
                                SmoothMediaSource smoothMediaSource3 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i5));
                                if (smoothMediaSource3 != null && smoothMediaSource3.getReporter() != null) {
                                    smoothMediaSource3.getReporter().a();
                                    if (MgtvMediaPlayer.this.mReportParams != null) {
                                        MgtvMediaPlayer.this.mReportParams.setPlaySessionId(smoothMediaSource3.getReporter().g());
                                    }
                                }
                                return true;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    default:
                        return false;
                }
            }

            @Override
            public void onSourceNetEvent(int i3, Bundle bundle2) {
                if (i3 != 78338) {
                    return;
                }
                didHostAddr(bundle2);
            }

            private void notifyHttpDnsReport(com.hunantv.media.player.a.a.b bVar, int i3, int i4, String str) {
                if (bVar != com.hunantv.media.player.a.a.b.FREE_HTTP_DNS || MgtvMediaPlayer.this.mOnWarningListener == null) {
                    return;
                }
                notifyMessage(i3, i4, str);
            }

            private void notifyMessage(int i3, String str, String str2) {
                Message message = new Message();
                message.what = i3;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MainNotifyHandler.BUNDLE_STR_INFO1, str);
                bundle2.putString(MainNotifyHandler.BUNDLE_STR_INFO2, str2);
                message.setData(bundle2);
                MgtvMediaPlayer.this.mNotifyHandler.sendMessage(message);
            }

            private boolean resolveStrategy(@NonNull com.hunantv.media.player.a.a aVar, @NonNull String str, Bundle bundle2, boolean z2, boolean z3) {
                com.hunantv.media.player.a.a.b bVar;
                String logTag;
                String str2;
                if (z2 || (bundle2 != null && bundle2.getInt("addr_handle") == 1 && MgtvMediaPlayer.this.mBackJavaDns)) {
                    aVar.b(1);
                    bVar = com.hunantv.media.player.a.a.b.FREE_HTTP_DNS;
                } else {
                    if (MgtvMediaPlayer.this.isDnsCacheEnable()) {
                        if (MgtvMediaPlayer.this.mHttpDnsEnable) {
                            String strB = !StringUtil.isEmpty(MgtvMediaPlayer.this.mLastUri) ? com.hunantv.media.player.a.f.b(MgtvMediaPlayer.this.mLastUri) : null;
                            if (strB != null && !strB.trim().equals("")) {
                                logTag = MgtvMediaPlayer.this.getLogTag();
                                str2 = "resolveStrategy cache valid";
                            }
                        } else {
                            logTag = MgtvMediaPlayer.this.getLogTag();
                            str2 = "resolveStrategy cache valid and httpdns not open";
                        }
                        DebugLog.d(logTag, str2);
                        return false;
                    }
                    bVar = MgtvMediaPlayer.this.mJavaDnsType;
                }
                aVar.a(str, bVar, z3);
                return true;
            }
        };
        this.mLogTagKey = "";
        this.mEnableReport = true;
        this.p2pLocker = new Object();
        this.mSeekStartMs = -1L;
        this.mHw2SwType = Hw2SwType.NONE;
        this.mPlaybackSpeed = 1.0f;
        this.mRecordMaxPlaySpeed = 1.0f;
        this.mFrameListener = new MgtvPlayerListener.OnFrameListener() {
            @Override
            public void onVFrameClockCome(MgtvPlayerListener.FrameClock frameClock) {
                synchronized (MgtvMediaPlayer.this.ptsLocker) {
                    try {
                        WeakHandler weakHandler = MgtvMediaPlayer.this.ptsWeakHandler;
                        if (weakHandler != null) {
                            weakHandler.removeMessages(256);
                            Message message = new Message();
                            message.what = 256;
                            message.obj = frameClock;
                            MgtvMediaPlayer.this.ptsWeakHandler.sendMessage(message);
                        }
                        if (MgtvMediaPlayer.this.mOnFrameListener != null) {
                            MgtvMediaPlayer.this.mOnFrameListener.onVFrameClockCome(frameClock);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.mInnerFlowDataStatistic = new FlowDataStatistic();
        this.mEnableImgoVsr = false;
        this.mLoopSourceKey = new AtomicInteger(1);
        this.mSubtitleSources = new ArrayList();
        this.ptsHandlerThread = null;
        this.ptsWeakHandler = null;
        this.ptsListeners = new HashSet();
        this.ptsLocker = new Object();
        this.mSmoothSourceListener = new d.n() {
            int lastSwitchingKey = -1;

            @Override
            public void onSmoothSwitchSourceComplete(d dVar, int i3, int i4, String str) {
                SmoothMediaSource smoothMediaSource;
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    try {
                        DebugLog.d(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceComplete (type:" + i4 + ",key:" + i3 + ",msg:" + str + ")");
                        String logTag = MgtvMediaPlayer.this.getLogTag();
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSmoothSwitchSourceComplete current: ");
                        sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                        DebugLog.i(logTag, sb.toString());
                        for (Map.Entry entry : MgtvMediaPlayer.this.mSmoothSourcesRecord.entrySet()) {
                            if (((Integer) entry.getKey()).intValue() < i3 && (smoothMediaSource = (SmoothMediaSource) entry.getValue()) != null && !smoothMediaSource.isReleased()) {
                                smoothMediaSource.release();
                            }
                        }
                        MgtvMediaPlayer.this.mSmoothUseP2pFailed = false;
                        if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                            MgtvMediaPlayer.this.mMediaPlayer.c(false);
                        }
                        SmoothMediaSource smoothMediaSource2 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                        if (smoothMediaSource2 != null) {
                            if (!StringUtil.isEmpty(smoothMediaSource2.getVfps())) {
                                MgtvMediaPlayer.this.mRecordVfps = Float.parseFloat(smoothMediaSource2.getVfps());
                            }
                            MgtvMediaPlayer.this.mLastVideoWidth = smoothMediaSource2.getVideoWidth();
                            MgtvMediaPlayer.this.mLastVideoHeight = smoothMediaSource2.getVideoHeight();
                            if (MgtvMediaPlayer.this.mReporter != null) {
                                MgtvMediaPlayer.this.mReporter.c();
                            }
                            MgtvMediaPlayer.this.mReporter = smoothMediaSource2.getReporter();
                            if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                                MgtvMediaPlayer.this.mMediaPlayer.a(MgtvMediaPlayer.this.mReporter);
                                MgtvMediaPlayer.this.mMediaPlayer.a(smoothMediaSource2.getReadType(), smoothMediaSource2.getUrl(), smoothMediaSource2.getPlayingUrl());
                                MgtvMediaPlayer.this.mMediaPlayer.h(smoothMediaSource2.getEnableImgoAIQE());
                            }
                            if (MgtvMediaPlayer.this.mDataSourceInfo != null) {
                                MgtvMediaPlayer.this.mDataSourceInfo.setVideoFormat(smoothMediaSource2.getVideoFormat());
                                MgtvMediaPlayer.this.mDataSourceInfo.setAudioFormat(smoothMediaSource2.getAudioFormat());
                                MgtvMediaPlayer.this.mDataSourceInfo.setFileFormat(smoothMediaSource2.getFileFormat());
                            }
                            if (MgtvMediaPlayer.this.mReporter != null) {
                                MgtvMediaPlayer.this.mReportParams.deepCopy(smoothMediaSource2.getReportParams());
                                MgtvMediaPlayer.this.mReporter.a(MgtvMediaPlayer.this.mReportParams);
                                MgtvMediaPlayer.this.mReporter.b();
                            }
                            String keyFrameMapKey = MgtvMediaPlayer.this.getKeyFrameMapKey(smoothMediaSource2.getVid(), smoothMediaSource2.getDef());
                            if (MgtvMediaPlayer.this.mSmoothKeyFrameMap.containsKey(keyFrameMapKey)) {
                                DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "find smoothKeyFrameKey :" + keyFrameMapKey + " set to player");
                                byte[] bArr = MgtvMediaPlayer.this.mSmoothKeyFrameMap.get(keyFrameMapKey);
                                if (KeyFrameInfoUtils.isKeyFrameDataValid(bArr, smoothMediaSource2.videoFileHash) == 0) {
                                    MgtvMediaPlayer.this.setKeyFrameInfoFileBuf(bArr);
                                }
                            }
                        }
                        SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i3);
                        if (smoothMediaSourceMatchLastKeySource == null) {
                            DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceComplete matchKeySource failed");
                            return;
                        }
                        if (smoothMediaSourceMatchLastKeySource.getSwitchMod() == 1) {
                            MgtvMediaPlayer.this.mMediaPlayer.d(true);
                        }
                        MgtvMediaPlayer.this.mSwitchedSmoothSource = smoothMediaSourceMatchLastKeySource;
                        MgtvMediaPlayer.this.mSourceSwitchingComplete = true;
                        MgtvMediaPlayer.this.mSourceSwitching = false;
                        if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                            MgtvMediaPlayer.this.mMainFlowReportProcessor = smoothMediaSourceMatchLastKeySource.getFlowReportProcessor();
                            MgtvMediaPlayer.this.mMediaPlayer.a(smoothMediaSourceMatchLastKeySource.getP2pTask());
                            MgtvMediaPlayer.this.mMediaPlayer.b(smoothMediaSourceMatchLastKeySource.getReadType());
                        }
                        MgtvMediaPlayer.this.mSmoothKeyFrameMap.clear();
                        if (MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null) {
                            MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceSuccess(smoothMediaSourceMatchLastKeySource);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override
            public void onSmoothSwitchSourceFailed(d dVar, int i3, int i4, String str) {
                String[] strArrSplit;
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed (type:" + i4 + ",key:" + i3 + ",msg:" + str + ")");
                    String logTag = MgtvMediaPlayer.this.getLogTag();
                    StringBuilder sb = new StringBuilder();
                    sb.append("onSmoothSwitchSourceFailed current: ");
                    sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                    DebugLog.e(logTag, sb.toString());
                    int i5 = MgtvMediaPlayer.WHAT_SMOOTHSOURCE_FAIL;
                    int i6 = -1;
                    try {
                        if (!StringUtil.isEmpty(str) && (strArrSplit = str.split("-")) != null && strArrSplit.length >= 2) {
                            i5 = NumericUtil.parseInt(strArrSplit[0]);
                            i6 = NumericUtil.parseInt(strArrSplit[1]);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                    if (smoothMediaSource != null) {
                        if (smoothMediaSource.getReporter() != null) {
                            smoothMediaSource.getReporter().a(i5, i6, "");
                        }
                        if (MgtvMediaPlayer.this.mReportParams != null) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed mReportParams:" + MgtvMediaPlayer.this.mReportParams.getProxyType() + "-" + MgtvMediaPlayer.this.mReportParams.getP2ps());
                        }
                        if (smoothMediaSource.getReportParams() != null) {
                            DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed currentSource.getReportParams():" + smoothMediaSource.getReportParams().getProxyType() + "-" + smoothMediaSource.getReportParams().getP2ps());
                        }
                        if (MgtvMediaPlayer.this.mReportParams != null && MgtvMediaPlayer.this.mReportParams.isP2p() && smoothMediaSource.getReportParams() != null && smoothMediaSource.getReportParams().isP2p()) {
                            MgtvMediaPlayer.this.mSmoothUseP2pFailed = true;
                            if (MgtvMediaPlayer.this.mMediaPlayer != null) {
                                MgtvMediaPlayer.this.mMediaPlayer.c(true);
                            }
                        }
                        if (smoothMediaSource.isThrowErrorIfSwitchFailed()) {
                            MgtvMediaPlayer.this.mErrorListener.onError(MgtvMediaPlayer.WHAT_SMOOTHSOURCE_EX_ERROR, i6);
                            return;
                        }
                    }
                    if (i4 == 1) {
                        MgtvMediaPlayer.this.mErrorListener.onError(i5, i6);
                        return;
                    }
                    SmoothMediaSource smoothMediaSourceMatchLastKeySource = MgtvMediaPlayer.this.matchLastKeySource(i3);
                    if (smoothMediaSourceMatchLastKeySource == null) {
                        DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceFailed matchKeySource failed");
                    } else {
                        MgtvMediaPlayer.this.notifySwitchSmoothSourceFail(smoothMediaSourceMatchLastKeySource, i5, i6);
                    }
                }
            }

            @Override
            public void onSmoothSwitchSourceInfo(d dVar, int i3, int i4, String str) {
                synchronized (MgtvMediaPlayer.this.mSwitchSmoothSourceLocker) {
                    try {
                        DebugLog.i(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceInfo (event:" + i4 + ",key:" + i3 + ",msg:" + str + ")");
                        String logTag = MgtvMediaPlayer.this.getLogTag();
                        StringBuilder sb = new StringBuilder();
                        sb.append("onSmoothSwitchSourceInfo current: ");
                        sb.append(MgtvMediaPlayer.this.getCurrentSmoothSourceKey());
                        DebugLog.i(logTag, sb.toString());
                        SmoothMediaSource smoothMediaSource = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                        if (smoothMediaSource != null) {
                            if (i4 == 0) {
                                smoothMediaSource.s_event_0_timestamp = System.currentTimeMillis();
                            } else if (i4 == 11) {
                                smoothMediaSource.s_event_11_timestamp = System.currentTimeMillis();
                            } else if (i4 == 2) {
                                if (MgtvMediaPlayer.this.isFlowReportEnable) {
                                    smoothMediaSource.genFlowReporter();
                                }
                                smoothMediaSource.s_event_2_timestamp = System.currentTimeMillis();
                            } else if (i4 == 3) {
                                if (MgtvMediaPlayer.this.isFlowReportEnable && MgtvMediaPlayer.this.mMainFlowReportProcessor != null) {
                                    MgtvMediaPlayer.this.mMainFlowReportProcessor.stop();
                                }
                                for (Map.Entry entry : MgtvMediaPlayer.this.mSmoothSourcesRecord.entrySet()) {
                                    if (((Integer) entry.getKey()).intValue() < smoothMediaSource.getKey()) {
                                        SmoothMediaSource smoothMediaSource2 = (SmoothMediaSource) entry.getValue();
                                        if (MgtvMediaPlayer.this.isFlowReportEnable && smoothMediaSource2 != null && smoothMediaSource2.getFlowReportProcessor() != null) {
                                            smoothMediaSource2.getFlowReportProcessor().stop();
                                        }
                                    }
                                }
                                smoothMediaSource.s_event_3_timestamp = System.currentTimeMillis();
                            }
                        }
                        if (i4 != 3) {
                            if (MgtvMediaPlayer.this.matchLastKeySource(i3) == null) {
                                DebugLog.e(MgtvMediaPlayer.this.getLogTag(), "onSmoothSwitchSourceInfo matchKeySource failed");
                                return;
                            } else {
                                if (i4 == 0) {
                                    MgtvMediaPlayer.this.mSourceSwitching = true;
                                }
                                return;
                            }
                        }
                        SmoothMediaSource smoothMediaSource3 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(this.lastSwitchingKey));
                        if (smoothMediaSource3 != null && smoothMediaSource3.getReporter() != null) {
                            smoothMediaSource3.getReporter().c();
                        }
                        this.lastSwitchingKey = i3;
                        SmoothMediaSource smoothMediaSource4 = (SmoothMediaSource) MgtvMediaPlayer.this.mSmoothSourcesRecord.get(Integer.valueOf(i3));
                        if (smoothMediaSource4 != null && MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener != null) {
                            MgtvMediaPlayer.this.mOnSwitchSmoothSourceListener.onSwitchSmoothSourceInfo(smoothMediaSource4, i4);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.mSmoothSourcesRecord = new HashMap();
        this.mSwitchSmoothSourceLocker = new Object();
        this.mSmoothUseP2pFailed = false;
        this.mSmoothKeyFrameMap = Collections.synchronizedMap(new HashMap());
        this.isBackground = false;
        this.mMediaPlayer = new h(2, context);
        initData(context);
        initConfig();
        initReporter(context);
        initListener();
    }
}
