.class public Lcom/hunantv/media/player/MgtvMediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$EncodeType;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;,
        Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_BOOLEAN_AUDIO_MODE:Ljava/lang/String; = "BUNDLE_KEY_BOOLEAN_AUDIO_MODE"

.field public static final BUNDLE_KEY_BOOLEAN_ENABLE_REPORT:Ljava/lang/String; = "BUNDLE_KEY_BOOLEAN_ENABLE_REPORT"

.field public static final BUNDLE_KEY_LOG_TAG_KEY:Ljava/lang/String; = "BUNDLE_KEY_LOG_TAG_KEY"

.field public static final DATA_PROTOCOL_IMGOCUS:I = 0x0

.field public static final DATA_PROTOCOL_IMGODS:I = 0x1

.field private static final DEFAULT_CACHE_REPORT_TAG:Ljava/lang/String; = "default"

.field private static final DEFAULT_HTTP_DNS_ENABLE:Z = false

.field public static final DNS_FAMILY_DEFAULT:I = 0x0

.field public static final DNS_FAMILY_ONLY_IPV4:I = 0x1

.field public static final DNS_FAMILY_ONLY_IPV6:I = 0x2

.field private static final DNS_JAVA_HTTPDNS:Ljava/lang/String; = "java_httpdns"

.field private static final DNS_JAVA_NORMAL:Ljava/lang/String; = "java_normal"

.field private static final DNS_NATIVE:Ljava/lang/String; = "native"

.field public static final ENABLE_PLAYER_MODE_LIVE:I = 0x1

.field public static final ENABLE_PLAYER_MODE_LOOP:I = 0x2

.field public static final ENABLE_PLAYER_MODE_NORMAL:I = 0x0

.field public static final ENABLE_PLAYER_MODE_SMOOTH:I = 0x3

.field public static final EXTRA_REPORT_PARAMS:Ljava/lang/String; = "EXTRA_REPORT_PARAMS"

.field public static final FFP_PROP_INT64_GETFRAMETIME_DF:I = 0x5019

.field public static final FFP_PROP_INT64_GETFRAMETIME_DROP_NUM:I = 0x501e

.field public static final FFP_PROP_INT64_GETFRAMETIME_FIN:I = 0x5020

.field public static final FFP_PROP_INT64_GETFRAMETIME_GEN_NUM:I = 0x501f

.field public static final FFP_PROP_INT64_GETFRAMETIME_T1:I = 0x5015

.field public static final FFP_PROP_INT64_GETFRAMETIME_T2:I = 0x5016

.field public static final FFP_PROP_INT64_GETFRAMETIME_T3:I = 0x5017

.field public static final FFP_PROP_INT64_GETFRAMETIME_T4:I = 0x5018

.field public static final FFP_PROP_INT64_GETFRAMETIME_TD:I = 0x501a

.field public static final FFP_PROP_INT64_GETFRAMETIME_TE:I = 0x501c

.field public static final FFP_PROP_INT64_GETFRAMETIME_TF:I = 0x501d

.field public static final FFP_PROP_INT64_GETFRAMETIME_TS:I = 0x501b

.field public static final ID_METHOD_GETCURRENTPOSITION:I = 0x0

.field public static final ID_METHOD_RELEASE:I = 0x2

.field public static final ID_METHOD_RESET:I = 0x1

.field public static final ID_METHOD_SETPLAYSPEED:I = 0x3

.field public static final INFO_EXTRA_BUFFER_ACCSEEK:I = 0x5

.field public static final INFO_EXTRA_BUFFER_FIRST_LOAD:I = 0x0

.field public static final INFO_EXTRA_BUFFER_LOOPSWITCH:I = 0x7

.field public static final INFO_EXTRA_BUFFER_NET_BROKEN:I = 0x8

.field public static final INFO_EXTRA_BUFFER_NORMAL:I = 0x1

.field public static final INFO_EXTRA_BUFFER_SEEK:I = 0x2

.field public static final INFO_EXTRA_BUFFER_SPEED:I = 0x3

.field public static final INFO_EXTRA_BUFFER_STEP:I = 0x6

.field public static final INFO_EXTRA_BUFFER_SWITCH:I = 0x4

.field public static final INFO_EXTRA_BUFFER_VFIRST:I = 0xa

.field private static final INVALID_ID:I = -0x1

.field private static final INVALID_MS:I = -0x1

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final MEDIA_INFO_ACCURATE_SEEK_COMPLETE:I = 0xaf4

.field public static final MEDIA_INFO_ACODEC_RECONFIGURE:I = 0xaf5

.field public static final MEDIA_INFO_AUDIO_IS_EXIST:I = 0x2724

.field public static final MEDIA_INFO_AUDIO_RENDERING_START:I = 0x4

.field public static final MEDIA_INFO_AV_SYNC_ERROR:I = 0xb22

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_DATA_PROTOCOL:I = 0xaf3

.field public static final MEDIA_INFO_DECODER_HW_RESET_TO_SW:I = 0x1f7

.field public static final MEDIA_INFO_DECODER_HW_TO_SW:I = 0x1f5

.field public static final MEDIA_INFO_DECODER_HW_TO_SW_DATA:I = 0x1f8

.field public static final MEDIA_INFO_DECODER_HW_TO_SW_HEVC:I = 0x1fa

.field public static final MEDIA_INFO_DECODER_HW_TO_SW_INNER:I = 0x1f9

.field public static final MEDIA_INFO_DECODER_SW_TO_HW:I = 0x1f6

.field public static final MEDIA_INFO_DECODER_TYPE_CHANGED:I = 0x5

.field public static final MEDIA_INFO_DL_BYTES_UPDATE:I = 0x8

.field public static final MEDIA_INFO_DL_SPEED_UPDATE:I = 0x7

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_FILE_ENCODE_INFO:I = 0xb55

.field public static final MEDIA_INFO_FILE_START_TIME:I = 0xb4b

.field public static final MEDIA_INFO_LOAD_DATA_STATUS:I = 0x2725

.field public static final MEDIA_INFO_LOOPSEEK_POS_ZERO:I = 0xb4c

.field public static final MEDIA_INFO_MEDIACODEC_COLOR_FORMAT:I = 0xb54

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NETWORK_BANDWIDTH:I = 0x2bf

.field public static final MEDIA_INFO_NONET_BUFFER_NOENOUGH:I = 0xb4d

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_PLAYBACK_STATE_CHANGED:I = 0xb0e

.field public static final MEDIA_INFO_PREPARED_WATER_MARK_MS:I = 0x272e

.field public static final MEDIA_INFO_PREPARE_WILL_PLAYING:I = 0xb04

.field public static final MEDIA_INFO_RESET_RENDER_VIEW:I = 0x30d41

.field public static final MEDIA_INFO_SEI_SYS_TIMESTAMP:I = 0xb2c

.field public static final MEDIA_INFO_SPEED_RENDER_DISABLE:I = 0x271a

.field public static final MEDIA_INFO_SPEED_RENDER_WARNING:I = 0x271b

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_STREAM_FORMAT_TYPE_EXTRA_FLV:I = 0x4

.field public static final MEDIA_INFO_STREAM_FORMAT_TYPE_EXTRA_HLS:I = 0x1

.field public static final MEDIA_INFO_STREAM_FORMAT_TYPE_EXTRA_MP4:I = 0x3

.field public static final MEDIA_INFO_STREAM_FORMAT_TYPE_EXTRA_OTHER:I = 0x0

.field public static final MEDIA_INFO_STREAM_FORMAT_TYPE_EXTRA_TS:I = 0x2

.field public static final MEDIA_INFO_STREAM_INFO_HLS_SEG_SIZE_INFO:I = 0x32a

.field public static final MEDIA_INFO_STREAM_TYPE:I = 0xaf6

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_DECODER_EXTRA_HW:I = 0x1

.field public static final MEDIA_INFO_VIDEO_DECODER_EXTRA_SW:I = 0x0

.field public static final MEDIA_INFO_VIDEO_DECODER_OPEN:I = 0x6

.field public static final MEDIA_INFO_VIDEO_FPS:I = 0xafa

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_ROTATION_CHANGED:I = 0x2711

.field public static final MEDIA_INFO_VIDEO_STREAM_CODEC_INFO:I = 0xb36

.field public static final MEDIA_INFO_VIDEO_STREAM_TYPE:I = 0xb18

.field public static final MEDIA_INFO_VIDEO_STREAM_TYPE_EXTRA_H264:I = 0x0

.field public static final MEDIA_INFO_VIDEO_STREAM_TYPE_EXTRA_H265:I = 0x1

.field public static final MEDIA_INFO_VIDEO_STREAM_TYPE_EXTRA_MPEG2:I = 0x2

.field public static final MEDIA_INFO_VIDEO_STREAM_TYPE_EXTRA_MPEG4:I = 0x3

.field public static final MEDIA_INFO_VIDEO_STREAM_TYPE_EXTRA_OTHER:I = 0xa

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_INFO_VSR_IS_OPEN:I = 0x2728

.field public static final MEDIA_INFO_VSR_RUN_INFO:I = 0xb57

.field public static final MEDIA_INFO_VV_BUFFER_PREPARED:I = 0x9

.field public static final MEDIA_INFO_WANOS_AUDIO_DLOPEN:I = 0x2727

.field public static final MEDIA_INFO_WANOS_AUDIO_EFFECT:I = 0x2726

.field public static final MEDIA_INFO_WANOS_EFFECT_INFO:I = 0xb56

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final MEDIA_MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field public static final MGTVMEDIA_ERROR_100001:I = 0x186a1

.field public static final MGTVMEDIA_ERROR_100002:I = 0x186a2

.field public static final MGTVMEDIA_ERROR_100003:I = 0x186a3

.field public static final MGTVMEDIA_ERROR_100004:I = 0x186a4

.field public static final MGTVMEDIA_ERROR_200001:I = 0x30d41

.field public static final MGTVMEDIA_ERROR_200002:I = 0x30d42

.field public static final MGTVMEDIA_ERROR_200003:I = 0x30d43

.field public static final MGTVMEDIA_ERROR_300001:I = 0x493e1

.field public static final MGTVMEDIA_ERROR_300002:I = 0x493e2

.field public static final MGTVMEDIA_ERROR_300003:I = 0x493e3

.field public static final MGTVMEDIA_ERROR_300004:I = 0x493e4

.field public static final MGTVMEDIA_ERROR_400400:I = 0x61c10

.field public static final MGTVMEDIA_ERROR_400401:I = 0x61c11

.field public static final MGTVMEDIA_ERROR_400402:I = 0x61c12

.field public static final MGTVMEDIA_ERROR_400403:I = 0x61c13

.field public static final MGTVMEDIA_ERROR_400404:I = 0x61c14

.field public static final MGTVMEDIA_ERROR_400407:I = 0x61c17

.field public static final MGTVMEDIA_ERROR_400408:I = 0x61c18

.field public static final MGTVMEDIA_ERROR_400410:I = 0x61c1a

.field public static final MGTVMEDIA_ERROR_400416:I = 0x61c20

.field public static final MGTVMEDIA_ERROR_4004XX:I = 0x61c73

.field public static final MGTVMEDIA_ERROR_400500:I = 0x61c74

.field public static final MGTVMEDIA_ERROR_400501:I = 0x61c75

.field public static final MGTVMEDIA_ERROR_400502:I = 0x61c76

.field public static final MGTVMEDIA_ERROR_400503:I = 0x61c77

.field public static final MGTVMEDIA_ERROR_400504:I = 0x61c78

.field public static final MGTVMEDIA_ERROR_4005XX:I = 0x61cd7

.field public static final MGTVMEDIA_ERROR_400600:I = 0x61cd8

.field public static final MGTVMEDIA_ERROR_400601:I = 0x61cd9

.field public static final MGTVMEDIA_ERROR_400602:I = 0x61cda

.field public static final MGTVMEDIA_ERROR_400802:I = 0x61da2

.field public static final MGTVMEDIA_ERROR_400803:I = 0x61da3

.field public static final MGTVMEDIA_ERROR_400804:I = 0x61da4

.field public static final MGTVMEDIA_ERROR_500001:I = 0x7a121

.field public static final MGTVMEDIA_ERROR_500002:I = 0x7a122

.field public static final MGTVMEDIA_ERROR_500003:I = 0x7a123

.field public static final MGTVMEDIA_ERROR_500004:I = 0x7a124

.field public static final MGTVMEDIA_ERROR_500999:I = 0x7a507

.field public static final MGTVMEDIA_ERROR_EXTRA_100701:I = 0x1895d

.field public static final MGTVMEDIA_ERROR_EXTRA_100900:I = 0x18a24

.field public static final MGTVMEDIA_ERROR_EXTRA_100903:I = 0x18a27

.field public static final MGTVMEDIA_ERROR_EXTRA_100906:I = 0x18a2a

.field public static final MGTVMEDIA_ERROR_EXTRA_100907:I = 0x18a2b

.field public static final MGTVMEDIA_ERROR_EXTRA_400100:I = 0x61ae4

.field public static final MGTVMEDIA_ERROR_EXTRA_400198:I = 0x61b46

.field public static final MGTVMEDIA_ERROR_EXTRA_400199:I = 0x61b47

.field public static final MGTVMEDIA_ERROR_EXTRA_DRM_BASE:I = 0x61b8e

.field public static final MGTVMEDIA_ERROR_EXTRA_DRM_INFO_LIST_INVALID:I = 0x61b94

.field public static final MGTVMEDIA_ERROR_EXTRA_DRM_INIT_ERROR:I = 0x61b93

.field public static final MGTVMEDIA_ERROR_EXTRA_DRM_INIT_INVALID:I = 0x61b91

.field public static final MGTVMEDIA_ERROR_EXTRA_DRM_INVALID_PARAMS:I = 0x61b96

.field public static final MGTVMEDIA_ERROR_EXTRA_DRM_INVALID_SESSION:I = 0x61b90

.field public static final MGTVMEDIA_ERROR_EXTRA_DRM_KEYID_INVALID:I = 0x61b8f

.field public static final MGTVMEDIA_ERROR_EXTRA_DRM_LIB_LOAD_FAILED:I = 0x61bab

.field public static final MGTVMEDIA_ERROR_EXTRA_DRM_LICENSE_BASE:I = 0x62250

.field public static final MGTVMEDIA_ERROR_EXTRA_DRM_LICENSE_URL_INVALID:I = 0x61b95

.field public static final MGTVMEDIA_ERROR_EXTRA_DRM_PROVISION_BASE:I = 0x61e68

.field public static final MGTVMEDIA_ERROR_VIDEO_DATA_AMCDECODER_FAILED:I = 0x188fe

.field public static final MGTVMEDIA_ERROR_VIDEO_DATA_FFDECODER_FAILED:I = 0x188ff

.field public static final MGTVMEDIA_ERROR_WHAT_200100:I = 0x30da4

.field public static final MGTVMEDIA_EXTRA_ERROR_300400:I = 0x49570

.field public static final MGTVMEDIA_EXTRA_ERROR_3004XX:I = 0x495d3

.field public static final MGTVMEDIA_EXTRA_ERROR_300500:I = 0x495d4

.field public static final MGTVMEDIA_EXTRA_ERROR_3005XX:I = 0x49637

.field public static final MGTVMEDIA_EXTRA_ERROR_301400:I = 0x49958

.field public static final MGTVMEDIA_EXTRA_ERROR_3014XX:I = 0x499bb

.field public static final MGTVMEDIA_EXTRA_ERROR_301500:I = 0x499bc

.field public static final MGTVMEDIA_EXTRA_ERROR_3015XX:I = 0x49a1f

.field public static final MGTVMEDIA_WARNING_403_PRE_PLAY:I = 0xc3693

.field public static final MGTVMEDIA_WARNING_410_PRE_PLAY:I = 0xc369a

.field public static final MGTVMEDIA_WARNING_AV_SYNC_ERR:I = 0xc36f4

.field public static final MGTVMEDIA_WARNING_AV_SYNC_SUM_ERR:I = 0xc36f5

.field public static final MGTVMEDIA_WARNING_BACKUP_LOAD_SUCCESS:I = 0xc3506

.field public static final MGTVMEDIA_WARNING_BASE:I = 0xc3500

.field public static final MGTVMEDIA_WARNING_DNS_ABORT:I = 0xc3566

.field public static final MGTVMEDIA_WARNING_DNS_SYNC_IN_ASYNC:I = 0xc3569

.field public static final MGTVMEDIA_WARNING_DS_LOAD_ERROR:I = 0xc3503

.field public static final MGTVMEDIA_WARNING_ERROR_COMPLETION:I = 0xc3509

.field public static final MGTVMEDIA_WARNING_EXTRA_300301:I = 0xc362d

.field public static final MGTVMEDIA_WARNING_HTTPDNS_REPORT_ERR:I = 0xc35ca

.field public static final MGTVMEDIA_WARNING_HTTPDNS_REPORT_PV:I = 0xc35c8

.field public static final MGTVMEDIA_WARNING_HTTPDNS_REPORT_SUC:I = 0xc35c9

.field public static final MGTVMEDIA_WARNING_HTTP_ERROR_ERR:I = 0xc3886

.field public static final MGTVMEDIA_WARNING_HTTP_ERROR_PV:I = 0xc3885

.field public static final MGTVMEDIA_WARNING_INNER_RETRY_RENDER_START:I = 0xc38f4

.field public static final MGTVMEDIA_WARNING_INVALID_THREAD:I = 0xc3505

.field public static final MGTVMEDIA_WARNING_IP_IS_LAN:I = 0xc3565

.field public static final MGTVMEDIA_WARNING_JAVA_OPENGL:I = 0xc38e9

.field public static final MGTVMEDIA_WARNING_LEAVE_TIME_INVALID:I = 0xc350a

.field public static final MGTVMEDIA_WARNING_LIVE_IN_VOD:I = 0xc3514

.field public static final MGTVMEDIA_WARNING_LIVE_IN_VOD_COMPLETE:I = 0xc3515

.field public static final MGTVMEDIA_WARNING_LOCAL_100201:I = 0xc39b1

.field public static final MGTVMEDIA_WARNING_LOW_MEMORY:I = 0xc3758

.field public static final MGTVMEDIA_WARNING_P2P_TS_SKIP:I = 0xc38f3

.field public static final MGTVMEDIA_WARNING_RENDER_DISABLE:I = 0xc3508

.field public static final MGTVMEDIA_WARNING_TARGET_ERROR:I = 0xc38f2

.field public static final MGTVMEDIA_WARNING_TS_CACHE_SKIP:I = 0xc3507

.field public static final MGTVMEDIA_WARNING_TS_ERROR:I = 0xc3889

.field public static final MGTVPLAYER_VERSION:Ljava/lang/String; = "MGTV_1.25.3"

.field public static final MGTV_LOG_DEBUG_BRIEF:I = 0x1

.field public static final MGTV_LOG_DEBUG_DETAIL:I = 0x2

.field public static final MGTV_LOG_DEBUG_NONE:I = 0x0

.field public static final MGTV_LOG_LEVEL_DEBUG:I = 0x3

.field public static final MGTV_LOG_LEVEL_DEFAULT:I = 0x1

.field public static final MGTV_LOG_LEVEL_ERROR:I = 0x6

.field public static final MGTV_LOG_LEVEL_FATAL:I = 0x7

.field public static final MGTV_LOG_LEVEL_INFO:I = 0x4

.field public static final MGTV_LOG_LEVEL_SILENT:I = 0x8

.field public static final MGTV_LOG_LEVEL_UNKNOWN:I = 0x0

.field public static final MGTV_LOG_LEVEL_VERBOSE:I = 0x2

.field public static final MGTV_LOG_LEVEL_WARN:I = 0x5

.field public static final MGTV_PROP_INT64_DECODER_PLAY_NOTIFY:I = 0x15f93

.field private static final NETWORK_RECONNECT_COUNT:I = 0x2

.field private static final NETWORK_RECONNECT_COUNT_MAX_LIMIT:I = 0x6

.field private static final OFFSET_MS:I = 0x1388

.field public static final OPPO_FUNC_OSIE:I = 0x2

.field public static final OPPO_FUNC_SR:I = 0x1

.field public static final PLAYER_TYPE_CODECPLAYER:I = 0x2

.field public static final PLAYER_TYPE_FFPLAYER:I = 0x1

.field public static final PLAYER_TYPE_SYSTEM:I = 0x0

.field public static final PREPARE_WILL_PLAYING_AUDIO_DECODED_START:I = 0x14055

.field public static final PREPARE_WILL_PLAYING_COMPONENT_OPEN:I = 0x14053

.field public static final PREPARE_WILL_PLAYING_FIND_STREAM_INFO:I = 0x14052

.field public static final PREPARE_WILL_PLAYING_OPEN_INPUT:I = 0x14051

.field public static final PREPARE_WILL_PLAYING_VIDEO_DECODED_START:I = 0x14054

.field private static final PRE_BUFFER_DEFAULT:I = 0x1

.field private static final PRE_BUFFER_LIMIT:I = 0x2

.field private static final PRE_BUFFER_MAX_S:I = 0x5

.field private static final PRE_BUFFER_UNLIMIT:I = 0x3

.field public static final READ_DATASOURCE_TYPE_DATA_SOURCE:I = 0x3

.field public static final READ_DATASOURCE_TYPE_NORMAL:I = 0x0

.field public static final READ_DATASOURCE_TYPE_P2P_DIRECT:I = 0x2

.field public static final READ_DATASOURCE_TYPE_PROXY:I = 0x1

.field public static final REPORT_BROADCAST_ACTION:Ljava/lang/String; = "mgtv.player.action.PLAYER_REPORT_EVENT"

.field private static final START_RECORD:I = 0x0

.field private static final STOP_RECORD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MgtvMediaPlayer"

.field public static final TYPE_NORMAL_MEMORY_PLAY:I = 0x1

.field public static final TYPE_NO_MEMORY_PLAY:I = 0x0

.field public static final TYPE_QUICK_MEMORY_PLAY:I = 0x2

.field private static final USER_MSG_FLAG_DEFAULT:Ljava/lang/String; = "init"

.field private static final USER_MSG_FLAG_USE_CACHE:Ljava/lang/String; = "usecache"

.field private static final WHAT_SMOOTHSOURCE_EX_ERROR:I = 0x61d47

.field private static final WHAT_SMOOTHSOURCE_FAIL:I = 0x61d46


# instance fields
.field private avdiffS:I

.field private dfps:I

.field private fstime:Ljava/lang/String;

.field public hdrInfo:Ljava/lang/String;

.field private imp4dh:I

.field public isBackground:Z

.field private isExAudioEnable:Z

.field private isFlowReportEnable:Z

.field private isUserAudioEnable:Z

.field private mAVSyncErrReported:Z

.field private mAVSyncErrSum:I

.field private mAVSyncErrSumReported:Z

.field private mAVSyncStartTimestamp:J

.field private mAccSeekKeyFrameInterval:I

.field private mAccurateSeekEnable:Z

.field private mAddrinfoTimeoutMs:I

.field private mAddrinfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

.field private mBackJavaDns:Z

.field private mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

.field private mBufferTimeoutMs:I

.field private mBundle:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCacheEable:Z

.field private mCacheM3u8Path:Ljava/lang/String;

.field private mCacheReplaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheReportLerr:I

.field private mCacheReportTag:Ljava/lang/String;

.field private volatile mCacheTsPaths:[Ljava/lang/String;

.field private mCodecName:Ljava/lang/String;

.field private mConnectTimeOutMs:I

.field private mContext:Landroid/content/Context;

.field private mCurrentDnsDsc:Ljava/lang/String;

.field private mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

.field private mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

.field private mDebug:Z

.field public mDlt:J

.field private mDnsLock:Ljava/lang/Object;

.field private mDnsNoNetMaxRetry:I

.field private mDnsNoNetWaiter:Ljava/lang/Object;

.field private mDnsThreadManager:Lcom/hunantv/media/player/a/d;

.field private mEnableDnsNoNetStrategy:Z

.field private mEnableImgoVsr:Z

.field private mEnableJAVAIPCacheMap:Z

.field private mEnableP2PHttpDns:Z

.field private mEnableReport:Z

.field private mErrorExtraCodeStore:I

.field private mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

.field private mErrorUrl:Ljava/lang/String;

.field private mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

.field private mForceHttpDns:Z

.field private mForceP2pHttpDns:Z

.field private mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

.field private mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

.field private volatile mHDJSwitchUrl:Ljava/lang/String;

.field private mHttpDnsEnable:Z

.field private mHttpDnsNeedRetry:Z

.field private mHw2SwType:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

.field private mIPCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;",
            ">;"
        }
    .end annotation
.end field

.field private mImgoMediaPlayerAudioMode:Z

.field private mInnerAutoRotateEnable:Z

.field private mInnerFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

.field private mIsAudioExist:I

.field private mIsBuffering:Z

.field private mIsGetPositionCallback:Z

.field private mIsInitMp4Error:Z

.field private mIsInnerRetrying:Z

.field private mIsLive:Z

.field private mIsNativePausedLoadData:I

.field private mIsP2pTSSkipReport:Z

.field private mIsVideoRendered:Z

.field private mIsVsrOpen:I

.field private mIsWanosAudioEffectValid:Z

.field private mJavaDnsEnable:Z

.field private mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

.field private mKeyframeSeekEnable:Z

.field private mLastDlSize:I

.field private mLastDnsType:I

.field private mLastErrorTypeCode:Ljava/lang/String;

.field private mLastHostErr:Ljava/lang/String;

.field private mLastHostIP:Ljava/lang/String;

.field private mLastIP:Ljava/lang/String;

.field private mLastIpCount:I

.field private mLastIpIndex:I

.field private mLastIps:[Ljava/lang/String;

.field private mLastIsNetworkAvailableNNS:Z

.field private mLastP2pCdnIP:Ljava/lang/String;

.field private mLastPosition:I

.field private mLastRequestUrl:Ljava/lang/String;

.field private mLastTcpErr:Ljava/lang/String;

.field private mLastTcpIP:Ljava/lang/String;

.field mLastTsSkipErrExtra:I

.field mLastTsSkipErrFileName:Ljava/lang/String;

.field private mLastUri:Ljava/lang/String;

.field private mLastVideoHeight:I

.field private mLastVideoWidth:I

.field private volatile mLiveReopen:Z

.field private mLoadMaxRetryTime:I

.field private mLogTagKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mLoopPlayerReset:Z

.field private volatile mLoopPlayerSwitchUrl:Ljava/lang/String;

.field private mLoopSourceKey:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mMainFlowReportProcessor:Lcom/hunantv/media/player/flow/FlowReportProcessor;

.field private mMainThreadID:J

.field private mMediaPlayer:Lcom/hunantv/media/player/h;

.field mNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

.field private mNetdSVCTimeMs:J

.field private mNetworkChangeWhilePlaying:Z

.field private mNotifyHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

.field private mObserver:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;

.field private mOnAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

.field private mOnBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

.field private mOnCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

.field private mOnErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

.field private mOnFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

.field private mOnGetFrameImageListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;

.field private mOnInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

.field private mOnInfoStringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;

.field private mOnLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

.field private mOnPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

.field private mOnPlayerEventListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;

.field private mOnPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

.field private mOnRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

.field private mOnSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

.field private mOnSourceNetHandledListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;

.field private mOnStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

.field private mOnSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

.field private mOnSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

.field private mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

.field private mP2pNotify:Lcom/mgtv/a/a$a;

.field private mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

.field private mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

.field private mPlaybackSpeed:F

.field private mPlayerMode:I

.field private mPlayerReset:Z

.field private mPlayerType:I

.field private mPositionLoged:Z

.field private mPreBufferMaxS:I

.field private mPreBufferState:Lcom/hunantv/media/player/utils/SyncStateMachine;

.field private mPreBufferTimeoutMs:I

.field private mPrepareAsyncTimeStampMs:J

.field private mPrepared:Z

.field private mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

.field private mRealEncodeType:I

.field private mReceiveDataTimeOutMs:I

.field private mRecordMaxPlaySpeed:F

.field private mRecordVfps:F

.field private mRenderDisableWarnSended:Z

.field private mRenderType:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

.field private mRenderView:Lcom/hunantv/media/player/IMgtvRenderView;

.field private mReportParams:Lcom/hunantv/media/report/ReportParams;

.field private mReportedTSLAN:Z

.field private mReporter:Lcom/hunantv/media/report/a;

.field private mReporterSL:Lcom/hunantv/media/report/a;

.field private mRetryLastErrorCode:I

.field private mSeekStartMs:J

.field private mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

.field mSmoothKeyFrameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mSmoothSourceListener:Lcom/hunantv/media/player/d$n;

.field private mSmoothSourcesRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/hunantv/media/player/smooth/SmoothMediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private mSmoothUseP2pFailed:Z

.field public mSmt:J

.field private mSourceNetListner:Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;

.field private mSourceRetryCode:I

.field private mSourceRetryCount:I

.field private mSourceSwitching:Z

.field private mSourceSwitchingComplete:Z

.field private mStreamFormatType:I

.field private mSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

.field private mSubtitleController:Lcom/hunantv/media/player/subtitle/b;

.field private mSubtitleSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/media/player/subtitle/SubtitleSource;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchSmoothSourceLocker:Ljava/lang/Object;

.field private volatile mSwitchedSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

.field private mSwitchingPrepared:Z

.field private volatile mSwitchingSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

.field private mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

.field private mTsCacheSkipNum:I

.field private mTsNotSkip:Z

.field private mVVbuft:I

.field private volatile mVideoFrameClockNotifyMs:I

.field private volatile mVideoFrameClockNotifyTimeEnd:J

.field private volatile mVideoFrameClockNotifyTimeStart:J

.field private volatile mVideoFrameClockNotifyType:I

.field private mWeakBufferSpeedKB:I

.field private mWeakBufferTimeoutMs:I

.field private mWeakTimer:I

.field private mWillOpenUrl:Ljava/lang/String;

.field private mcColorFormat:Ljava/lang/String;

.field private mpx:I

.field private p2pLocker:Ljava/lang/Object;

.field ptsHandlerThread:Landroid/os/HandlerThread;

.field ptsListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;",
            ">;"
        }
    .end annotation
.end field

.field ptsLocker:Ljava/lang/Object;

.field ptsWeakHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;

.field private rfps:I

.field private rfpsLowCounter:I

.field private rfpsLowFilterChanged:Z

.field private sfps:I

.field private vfps:I

.field public vsri:Ljava/lang/String;

.field public vsrver:Ljava/lang/String;

.field public vsrvkver:Ljava/lang/String;

.field public wadls:I

.field public waev:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$1;

    invoke-direct {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "mgtvmp_jPreInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDebug:Z

    const v1, 0x1b7740

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferTimeoutMs:I

    const v1, 0x2bf20

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTimeoutMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mImgoMediaPlayerAudioMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAccurateSeekEnable:Z

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAccSeekKeyFrameInterval:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mKeyframeSeekEnable:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerAutoRotateEnable:Z

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferSpeedKB:I

    const v3, 0x1d4c0

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferTimeoutMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTsNotSkip:Z

    const/4 v3, 0x2

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoadMaxRetryTime:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsBuffering:Z

    const-string v4, ""

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastRequestUrl:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDlSize:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsLive:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLiveReopen:Z

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerSwitchUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHDJSwitchUrl:Ljava/lang/String;

    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    const/4 v5, -0x1

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorExtraCodeStore:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordVfps:F

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoWidth:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoHeight:I

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoTimeoutMs:I

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    new-instance v6, Lcom/hunantv/media/player/MgtvMediaPlayer$2;

    invoke-direct {v6, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$2;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsGetPositionCallback:Z

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->IDLE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->NATIVE_WINDOW:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderType:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    new-instance v6, Lcom/hunantv/media/player/utils/ExTicker;

    invoke-direct {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    const-string v7, "play"

    invoke-virtual {v6, v7}, Lcom/hunantv/media/player/utils/ExTicker;->setTypeStr(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;

    move-result-object v6

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    new-instance v6, Lcom/hunantv/media/player/utils/ExTicker;

    invoke-direct {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    const-string v2, "buffer"

    invoke-virtual {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;->setTypeStr(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;

    move-result-object v2

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerType:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainThreadID:J

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReplaceMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInnerRetrying:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRetryLastErrorCode:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderDisableWarnSended:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceHttpDns:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsNeedRetry:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsEnable:Z

    sget-object v6, Lcom/hunantv/media/player/a/a$b;->b:Lcom/hunantv/media/player/a/a$b;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerReset:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerReset:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastUri:Ljava/lang/String;

    const-string v7, "00"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastHostErr:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTcpErr:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpCount:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpIndex:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDnsType:I

    const-string v7, "native"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCurrentDnsDsc:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableP2PHttpDns:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceP2pHttpDns:Z

    new-instance v7, Lcom/hunantv/media/player/a/d;

    invoke-direct {v7}, Lcom/hunantv/media/player/a/d;-><init>()V

    new-instance v8, Lcom/hunantv/media/player/MgtvMediaPlayer$3;

    invoke-direct {v8, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$3;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/a/d;->a(Lcom/hunantv/media/player/a/d$b;)Lcom/hunantv/media/player/a/d;

    move-result-object v7

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsThreadManager:Lcom/hunantv/media/player/a/d;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrReported:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSumReported:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSum:I

    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncStartTimestamp:J

    iput-wide v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepareAsyncTimeStampMs:J

    new-instance v7, Lcom/hunantv/media/player/utils/SyncStateMachine;

    invoke-direct {v7, v1}, Lcom/hunantv/media/player/utils/SyncStateMachine;-><init>(I)V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferState:Lcom/hunantv/media/player/utils/SyncStateMachine;

    const/4 v7, 0x5

    iput v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferMaxS:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsAudioExist:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVsrOpen:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsNativePausedLoadData:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsWanosAudioEffectValid:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastPosition:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPositionLoged:Z

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRealEncodeType:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mStreamFormatType:I

    new-instance v7, Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    invoke-direct {v7, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mNotifyHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWillOpenUrl:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportedTSLAN:Z

    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsP2pTSSkipReport:Z

    const-string v7, "n"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCodecName:Ljava/lang/String;

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVVbuft:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableJAVAIPCacheMap:Z

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIPCacheMap:Ljava/util/Map;

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyMs:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyType:I

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeStart:J

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeEnd:J

    const-string v5, "default"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportTag:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportLerr:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableDnsNoNetStrategy:Z

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetWaiter:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIsNetworkAvailableNNS:Z

    const/16 v5, 0x14

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetMaxRetry:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTsSkipErrExtra:I

    const-string v5, "n/n"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->fstime:Ljava/lang/String;

    const-string v5, "n_n"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mcColorFormat:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isFlowReportEnable:Z

    const-string v5, "0|0_0|0_0"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsri:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsrver:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsrvkver:Ljava/lang/String;

    new-instance v5, Lcom/hunantv/media/player/MgtvMediaPlayer$4;

    invoke-direct {v5, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceNetListner:Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLogTagKey:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableReport:Z

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->p2pLocker:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSeekStartMs:J

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;->NONE:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHw2SwType:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlaybackSpeed:F

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordMaxPlaySpeed:F

    new-instance v2, Lcom/hunantv/media/player/MgtvMediaPlayer$23;

    invoke-direct {v2, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$23;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    new-instance v2, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v2}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableImgoVsr:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopSourceKey:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleSources:Ljava/util/List;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsHandlerThread:Landroid/os/HandlerThread;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsWeakHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsListeners:Ljava/util/Set;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsLocker:Ljava/lang/Object;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$27;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$27;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourceListener:Lcom/hunantv/media/player/d$n;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourcesRecord:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchSmoothSourceLocker:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothUseP2pFailed:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothKeyFrameMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isBackground:Z

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->init(ILandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDebug:Z

    const v1, 0x1b7740

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferTimeoutMs:I

    const v1, 0x2bf20

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTimeoutMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mImgoMediaPlayerAudioMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAccurateSeekEnable:Z

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAccSeekKeyFrameInterval:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mKeyframeSeekEnable:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerAutoRotateEnable:Z

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferSpeedKB:I

    const v3, 0x1d4c0

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferTimeoutMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTsNotSkip:Z

    const/4 v3, 0x2

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoadMaxRetryTime:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsBuffering:Z

    const-string v4, ""

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastRequestUrl:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDlSize:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsLive:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLiveReopen:Z

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerSwitchUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHDJSwitchUrl:Ljava/lang/String;

    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    const/4 v5, -0x1

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorExtraCodeStore:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordVfps:F

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoWidth:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoHeight:I

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoTimeoutMs:I

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    new-instance v6, Lcom/hunantv/media/player/MgtvMediaPlayer$2;

    invoke-direct {v6, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$2;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsGetPositionCallback:Z

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->IDLE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->NATIVE_WINDOW:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderType:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    new-instance v6, Lcom/hunantv/media/player/utils/ExTicker;

    invoke-direct {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    const-string v7, "play"

    invoke-virtual {v6, v7}, Lcom/hunantv/media/player/utils/ExTicker;->setTypeStr(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;

    move-result-object v6

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    new-instance v6, Lcom/hunantv/media/player/utils/ExTicker;

    invoke-direct {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    const-string v2, "buffer"

    invoke-virtual {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;->setTypeStr(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;

    move-result-object v2

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerType:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainThreadID:J

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReplaceMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInnerRetrying:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRetryLastErrorCode:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderDisableWarnSended:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceHttpDns:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsNeedRetry:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsEnable:Z

    sget-object v6, Lcom/hunantv/media/player/a/a$b;->b:Lcom/hunantv/media/player/a/a$b;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerReset:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerReset:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastUri:Ljava/lang/String;

    const-string v7, "00"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastHostErr:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTcpErr:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpCount:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpIndex:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDnsType:I

    const-string v7, "native"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCurrentDnsDsc:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableP2PHttpDns:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceP2pHttpDns:Z

    new-instance v7, Lcom/hunantv/media/player/a/d;

    invoke-direct {v7}, Lcom/hunantv/media/player/a/d;-><init>()V

    new-instance v8, Lcom/hunantv/media/player/MgtvMediaPlayer$3;

    invoke-direct {v8, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$3;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/a/d;->a(Lcom/hunantv/media/player/a/d$b;)Lcom/hunantv/media/player/a/d;

    move-result-object v7

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsThreadManager:Lcom/hunantv/media/player/a/d;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrReported:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSumReported:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSum:I

    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncStartTimestamp:J

    iput-wide v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepareAsyncTimeStampMs:J

    new-instance v7, Lcom/hunantv/media/player/utils/SyncStateMachine;

    invoke-direct {v7, v1}, Lcom/hunantv/media/player/utils/SyncStateMachine;-><init>(I)V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferState:Lcom/hunantv/media/player/utils/SyncStateMachine;

    const/4 v7, 0x5

    iput v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferMaxS:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsAudioExist:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVsrOpen:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsNativePausedLoadData:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsWanosAudioEffectValid:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastPosition:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPositionLoged:Z

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRealEncodeType:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mStreamFormatType:I

    new-instance v7, Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    invoke-direct {v7, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mNotifyHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWillOpenUrl:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportedTSLAN:Z

    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsP2pTSSkipReport:Z

    const-string v7, "n"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCodecName:Ljava/lang/String;

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVVbuft:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableJAVAIPCacheMap:Z

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIPCacheMap:Ljava/util/Map;

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyMs:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyType:I

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeStart:J

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeEnd:J

    const-string v5, "default"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportTag:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportLerr:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableDnsNoNetStrategy:Z

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetWaiter:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIsNetworkAvailableNNS:Z

    const/16 v5, 0x14

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetMaxRetry:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTsSkipErrExtra:I

    const-string v5, "n/n"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->fstime:Ljava/lang/String;

    const-string v5, "n_n"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mcColorFormat:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isFlowReportEnable:Z

    const-string v5, "0|0_0|0_0"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsri:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsrver:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsrvkver:Ljava/lang/String;

    new-instance v5, Lcom/hunantv/media/player/MgtvMediaPlayer$4;

    invoke-direct {v5, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceNetListner:Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLogTagKey:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableReport:Z

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->p2pLocker:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSeekStartMs:J

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;->NONE:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHw2SwType:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlaybackSpeed:F

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordMaxPlaySpeed:F

    new-instance v2, Lcom/hunantv/media/player/MgtvMediaPlayer$23;

    invoke-direct {v2, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$23;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    new-instance v2, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v2}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableImgoVsr:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopSourceKey:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleSources:Ljava/util/List;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsHandlerThread:Landroid/os/HandlerThread;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsWeakHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsListeners:Ljava/util/Set;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsLocker:Ljava/lang/Object;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$27;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$27;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourceListener:Lcom/hunantv/media/player/d$n;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourcesRecord:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchSmoothSourceLocker:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothUseP2pFailed:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothKeyFrameMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isBackground:Z

    iput-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->extractBundleData()V

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->init(ILandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDebug:Z

    const v1, 0x1b7740

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferTimeoutMs:I

    const v1, 0x2bf20

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTimeoutMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mImgoMediaPlayerAudioMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAccurateSeekEnable:Z

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAccSeekKeyFrameInterval:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mKeyframeSeekEnable:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerAutoRotateEnable:Z

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferSpeedKB:I

    const v3, 0x1d4c0

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferTimeoutMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTsNotSkip:Z

    const/4 v3, 0x2

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoadMaxRetryTime:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsBuffering:Z

    const-string v4, ""

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastRequestUrl:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDlSize:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsLive:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLiveReopen:Z

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerSwitchUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHDJSwitchUrl:Ljava/lang/String;

    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    const/4 v5, -0x1

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorExtraCodeStore:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordVfps:F

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoWidth:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoHeight:I

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoTimeoutMs:I

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    new-instance v6, Lcom/hunantv/media/player/MgtvMediaPlayer$2;

    invoke-direct {v6, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$2;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsGetPositionCallback:Z

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->IDLE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->NATIVE_WINDOW:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderType:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    new-instance v6, Lcom/hunantv/media/player/utils/ExTicker;

    invoke-direct {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    const-string v7, "play"

    invoke-virtual {v6, v7}, Lcom/hunantv/media/player/utils/ExTicker;->setTypeStr(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;

    move-result-object v6

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    new-instance v6, Lcom/hunantv/media/player/utils/ExTicker;

    invoke-direct {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    const-string v2, "buffer"

    invoke-virtual {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;->setTypeStr(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;

    move-result-object v2

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerType:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainThreadID:J

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReplaceMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInnerRetrying:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRetryLastErrorCode:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderDisableWarnSended:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceHttpDns:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsNeedRetry:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsEnable:Z

    sget-object v6, Lcom/hunantv/media/player/a/a$b;->b:Lcom/hunantv/media/player/a/a$b;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerReset:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerReset:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastUri:Ljava/lang/String;

    const-string v7, "00"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastHostErr:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTcpErr:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpCount:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpIndex:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDnsType:I

    const-string v7, "native"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCurrentDnsDsc:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableP2PHttpDns:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceP2pHttpDns:Z

    new-instance v7, Lcom/hunantv/media/player/a/d;

    invoke-direct {v7}, Lcom/hunantv/media/player/a/d;-><init>()V

    new-instance v8, Lcom/hunantv/media/player/MgtvMediaPlayer$3;

    invoke-direct {v8, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$3;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/a/d;->a(Lcom/hunantv/media/player/a/d$b;)Lcom/hunantv/media/player/a/d;

    move-result-object v7

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsThreadManager:Lcom/hunantv/media/player/a/d;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrReported:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSumReported:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSum:I

    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncStartTimestamp:J

    iput-wide v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepareAsyncTimeStampMs:J

    new-instance v7, Lcom/hunantv/media/player/utils/SyncStateMachine;

    invoke-direct {v7, v1}, Lcom/hunantv/media/player/utils/SyncStateMachine;-><init>(I)V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferState:Lcom/hunantv/media/player/utils/SyncStateMachine;

    const/4 v7, 0x5

    iput v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferMaxS:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsAudioExist:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVsrOpen:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsNativePausedLoadData:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsWanosAudioEffectValid:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastPosition:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPositionLoged:Z

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRealEncodeType:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mStreamFormatType:I

    new-instance v7, Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    invoke-direct {v7, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mNotifyHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWillOpenUrl:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportedTSLAN:Z

    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsP2pTSSkipReport:Z

    const-string v7, "n"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCodecName:Ljava/lang/String;

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVVbuft:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableJAVAIPCacheMap:Z

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIPCacheMap:Ljava/util/Map;

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyMs:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyType:I

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeStart:J

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeEnd:J

    const-string v5, "default"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportTag:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportLerr:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableDnsNoNetStrategy:Z

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetWaiter:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIsNetworkAvailableNNS:Z

    const/16 v5, 0x14

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetMaxRetry:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTsSkipErrExtra:I

    const-string v5, "n/n"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->fstime:Ljava/lang/String;

    const-string v5, "n_n"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mcColorFormat:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isFlowReportEnable:Z

    const-string v5, "0|0_0|0_0"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsri:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsrver:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsrvkver:Ljava/lang/String;

    new-instance v5, Lcom/hunantv/media/player/MgtvMediaPlayer$4;

    invoke-direct {v5, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceNetListner:Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLogTagKey:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableReport:Z

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->p2pLocker:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSeekStartMs:J

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;->NONE:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHw2SwType:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlaybackSpeed:F

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordMaxPlaySpeed:F

    new-instance v2, Lcom/hunantv/media/player/MgtvMediaPlayer$23;

    invoke-direct {v2, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$23;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    new-instance v2, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v2}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableImgoVsr:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopSourceKey:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleSources:Ljava/util/List;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsHandlerThread:Landroid/os/HandlerThread;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsWeakHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsListeners:Ljava/util/Set;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsLocker:Ljava/lang/Object;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$27;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$27;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourceListener:Lcom/hunantv/media/player/d$n;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourcesRecord:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchSmoothSourceLocker:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothUseP2pFailed:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothKeyFrameMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isBackground:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->init(ILandroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;ZILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDebug:Z

    const v1, 0x1b7740

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferTimeoutMs:I

    const v1, 0x2bf20

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTimeoutMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mImgoMediaPlayerAudioMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAccurateSeekEnable:Z

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAccSeekKeyFrameInterval:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mKeyframeSeekEnable:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerAutoRotateEnable:Z

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferSpeedKB:I

    const v3, 0x1d4c0

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferTimeoutMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTsNotSkip:Z

    const/4 v3, 0x2

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoadMaxRetryTime:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsBuffering:Z

    const-string v4, ""

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastRequestUrl:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDlSize:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsLive:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLiveReopen:Z

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerSwitchUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHDJSwitchUrl:Ljava/lang/String;

    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    const/4 v5, -0x1

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorExtraCodeStore:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordVfps:F

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoWidth:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoHeight:I

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoTimeoutMs:I

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    new-instance v6, Lcom/hunantv/media/player/MgtvMediaPlayer$2;

    invoke-direct {v6, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$2;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsGetPositionCallback:Z

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->IDLE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->NATIVE_WINDOW:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderType:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    new-instance v6, Lcom/hunantv/media/player/utils/ExTicker;

    invoke-direct {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    const-string v7, "play"

    invoke-virtual {v6, v7}, Lcom/hunantv/media/player/utils/ExTicker;->setTypeStr(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;

    move-result-object v6

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    new-instance v6, Lcom/hunantv/media/player/utils/ExTicker;

    invoke-direct {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    const-string v2, "buffer"

    invoke-virtual {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;->setTypeStr(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;

    move-result-object v2

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerType:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainThreadID:J

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReplaceMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInnerRetrying:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRetryLastErrorCode:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderDisableWarnSended:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceHttpDns:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsNeedRetry:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsEnable:Z

    sget-object v6, Lcom/hunantv/media/player/a/a$b;->b:Lcom/hunantv/media/player/a/a$b;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerReset:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerReset:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastUri:Ljava/lang/String;

    const-string v7, "00"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastHostErr:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTcpErr:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpCount:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpIndex:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDnsType:I

    const-string v7, "native"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCurrentDnsDsc:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableP2PHttpDns:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceP2pHttpDns:Z

    new-instance v7, Lcom/hunantv/media/player/a/d;

    invoke-direct {v7}, Lcom/hunantv/media/player/a/d;-><init>()V

    new-instance v8, Lcom/hunantv/media/player/MgtvMediaPlayer$3;

    invoke-direct {v8, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$3;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/a/d;->a(Lcom/hunantv/media/player/a/d$b;)Lcom/hunantv/media/player/a/d;

    move-result-object v7

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsThreadManager:Lcom/hunantv/media/player/a/d;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrReported:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSumReported:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSum:I

    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncStartTimestamp:J

    iput-wide v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepareAsyncTimeStampMs:J

    new-instance v7, Lcom/hunantv/media/player/utils/SyncStateMachine;

    invoke-direct {v7, v1}, Lcom/hunantv/media/player/utils/SyncStateMachine;-><init>(I)V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferState:Lcom/hunantv/media/player/utils/SyncStateMachine;

    const/4 v7, 0x5

    iput v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferMaxS:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsAudioExist:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVsrOpen:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsNativePausedLoadData:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsWanosAudioEffectValid:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastPosition:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPositionLoged:Z

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRealEncodeType:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mStreamFormatType:I

    new-instance v7, Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    invoke-direct {v7, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mNotifyHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWillOpenUrl:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportedTSLAN:Z

    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsP2pTSSkipReport:Z

    const-string v7, "n"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCodecName:Ljava/lang/String;

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVVbuft:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableJAVAIPCacheMap:Z

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIPCacheMap:Ljava/util/Map;

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyMs:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyType:I

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeStart:J

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeEnd:J

    const-string v5, "default"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportTag:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportLerr:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableDnsNoNetStrategy:Z

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetWaiter:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIsNetworkAvailableNNS:Z

    const/16 v5, 0x14

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetMaxRetry:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTsSkipErrExtra:I

    const-string v5, "n/n"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->fstime:Ljava/lang/String;

    const-string v5, "n_n"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mcColorFormat:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isFlowReportEnable:Z

    const-string v5, "0|0_0|0_0"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsri:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsrver:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsrvkver:Ljava/lang/String;

    new-instance v5, Lcom/hunantv/media/player/MgtvMediaPlayer$4;

    invoke-direct {v5, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceNetListner:Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLogTagKey:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableReport:Z

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->p2pLocker:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSeekStartMs:J

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;->NONE:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHw2SwType:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlaybackSpeed:F

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordMaxPlaySpeed:F

    new-instance v2, Lcom/hunantv/media/player/MgtvMediaPlayer$23;

    invoke-direct {v2, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$23;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    new-instance v2, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v2}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableImgoVsr:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopSourceKey:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleSources:Ljava/util/List;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsHandlerThread:Landroid/os/HandlerThread;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsWeakHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsListeners:Ljava/util/Set;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsLocker:Ljava/lang/Object;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$27;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$27;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourceListener:Lcom/hunantv/media/player/d$n;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourcesRecord:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchSmoothSourceLocker:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothUseP2pFailed:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothKeyFrameMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isBackground:Z

    iput-object p5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBundle:Landroid/os/Bundle;

    iput p4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->extractBundleData()V

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->init(ILandroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;ZLandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDebug:Z

    const v1, 0x1b7740

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferTimeoutMs:I

    const v1, 0x2bf20

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTimeoutMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mImgoMediaPlayerAudioMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAccurateSeekEnable:Z

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAccSeekKeyFrameInterval:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mKeyframeSeekEnable:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerAutoRotateEnable:Z

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferSpeedKB:I

    const v3, 0x1d4c0

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferTimeoutMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTsNotSkip:Z

    const/4 v3, 0x2

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoadMaxRetryTime:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsBuffering:Z

    const-string v4, ""

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastRequestUrl:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDlSize:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsLive:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLiveReopen:Z

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerSwitchUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHDJSwitchUrl:Ljava/lang/String;

    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    const/4 v5, -0x1

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorExtraCodeStore:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordVfps:F

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoWidth:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoHeight:I

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoTimeoutMs:I

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    new-instance v6, Lcom/hunantv/media/player/MgtvMediaPlayer$2;

    invoke-direct {v6, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$2;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsGetPositionCallback:Z

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->IDLE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->NATIVE_WINDOW:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderType:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    new-instance v6, Lcom/hunantv/media/player/utils/ExTicker;

    invoke-direct {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    const-string v7, "play"

    invoke-virtual {v6, v7}, Lcom/hunantv/media/player/utils/ExTicker;->setTypeStr(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;

    move-result-object v6

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    new-instance v6, Lcom/hunantv/media/player/utils/ExTicker;

    invoke-direct {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    const-string v2, "buffer"

    invoke-virtual {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;->setTypeStr(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;

    move-result-object v2

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerType:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainThreadID:J

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReplaceMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInnerRetrying:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRetryLastErrorCode:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderDisableWarnSended:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceHttpDns:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsNeedRetry:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsEnable:Z

    sget-object v6, Lcom/hunantv/media/player/a/a$b;->b:Lcom/hunantv/media/player/a/a$b;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerReset:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerReset:Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastUri:Ljava/lang/String;

    const-string v7, "00"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastHostErr:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTcpErr:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpCount:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpIndex:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDnsType:I

    const-string v7, "native"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCurrentDnsDsc:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableP2PHttpDns:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceP2pHttpDns:Z

    new-instance v7, Lcom/hunantv/media/player/a/d;

    invoke-direct {v7}, Lcom/hunantv/media/player/a/d;-><init>()V

    new-instance v8, Lcom/hunantv/media/player/MgtvMediaPlayer$3;

    invoke-direct {v8, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$3;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v7, v8}, Lcom/hunantv/media/player/a/d;->a(Lcom/hunantv/media/player/a/d$b;)Lcom/hunantv/media/player/a/d;

    move-result-object v7

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsThreadManager:Lcom/hunantv/media/player/a/d;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrReported:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSumReported:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSum:I

    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncStartTimestamp:J

    iput-wide v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepareAsyncTimeStampMs:J

    new-instance v7, Lcom/hunantv/media/player/utils/SyncStateMachine;

    invoke-direct {v7, v1}, Lcom/hunantv/media/player/utils/SyncStateMachine;-><init>(I)V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferState:Lcom/hunantv/media/player/utils/SyncStateMachine;

    const/4 v7, 0x5

    iput v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferMaxS:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsAudioExist:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVsrOpen:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsNativePausedLoadData:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsWanosAudioEffectValid:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastPosition:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPositionLoged:Z

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRealEncodeType:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mStreamFormatType:I

    new-instance v7, Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    invoke-direct {v7, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mNotifyHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWillOpenUrl:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportedTSLAN:Z

    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsP2pTSSkipReport:Z

    const-string v7, "n"

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCodecName:Ljava/lang/String;

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVVbuft:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableJAVAIPCacheMap:Z

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIPCacheMap:Ljava/util/Map;

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyMs:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyType:I

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeStart:J

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeEnd:J

    const-string v5, "default"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportTag:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportLerr:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableDnsNoNetStrategy:Z

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetWaiter:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIsNetworkAvailableNNS:Z

    const/16 v5, 0x14

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetMaxRetry:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTsSkipErrExtra:I

    const-string v5, "n/n"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->fstime:Ljava/lang/String;

    const-string v5, "n_n"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mcColorFormat:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isFlowReportEnable:Z

    const-string v5, "0|0_0|0_0"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsri:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsrver:Ljava/lang/String;

    iput-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsrvkver:Ljava/lang/String;

    new-instance v5, Lcom/hunantv/media/player/MgtvMediaPlayer$4;

    invoke-direct {v5, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceNetListner:Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLogTagKey:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableReport:Z

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->p2pLocker:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSeekStartMs:J

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;->NONE:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHw2SwType:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlaybackSpeed:F

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordMaxPlaySpeed:F

    new-instance v2, Lcom/hunantv/media/player/MgtvMediaPlayer$23;

    invoke-direct {v2, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$23;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    new-instance v2, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v2}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableImgoVsr:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopSourceKey:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleSources:Ljava/util/List;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsHandlerThread:Landroid/os/HandlerThread;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsWeakHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsListeners:Ljava/util/Set;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsLocker:Ljava/lang/Object;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$27;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$27;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourceListener:Lcom/hunantv/media/player/d$n;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourcesRecord:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchSmoothSourceLocker:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothUseP2pFailed:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothKeyFrameMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isBackground:Z

    iput-object p4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->extractBundleData()V

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->init(ILandroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDebug:Z

    const v1, 0x1b7740

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferTimeoutMs:I

    const v1, 0x2bf20

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTimeoutMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mImgoMediaPlayerAudioMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAccurateSeekEnable:Z

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAccSeekKeyFrameInterval:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mKeyframeSeekEnable:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerAutoRotateEnable:Z

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferSpeedKB:I

    const v3, 0x1d4c0

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferTimeoutMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTsNotSkip:Z

    const/4 v3, 0x2

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoadMaxRetryTime:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsBuffering:Z

    const-string v4, ""

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastRequestUrl:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDlSize:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsLive:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLiveReopen:Z

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerSwitchUrl:Ljava/lang/String;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHDJSwitchUrl:Ljava/lang/String;

    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    const/4 v5, -0x1

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorExtraCodeStore:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordVfps:F

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoWidth:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoHeight:I

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoTimeoutMs:I

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    new-instance v6, Lcom/hunantv/media/player/MgtvMediaPlayer$2;

    invoke-direct {v6, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$2;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsGetPositionCallback:Z

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->IDLE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    sget-object v6, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->NATIVE_WINDOW:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderType:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    new-instance v6, Lcom/hunantv/media/player/utils/ExTicker;

    invoke-direct {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    const-string v7, "play"

    invoke-virtual {v6, v7}, Lcom/hunantv/media/player/utils/ExTicker;->setTypeStr(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;

    move-result-object v6

    iput-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    new-instance v6, Lcom/hunantv/media/player/utils/ExTicker;

    invoke-direct {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;-><init>(I)V

    const-string v2, "buffer"

    invoke-virtual {v6, v2}, Lcom/hunantv/media/player/utils/ExTicker;->setTypeStr(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;

    move-result-object v2

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerType:I

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainThreadID:J

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReplaceMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInnerRetrying:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRetryLastErrorCode:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderDisableWarnSended:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceHttpDns:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsNeedRetry:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsEnable:Z

    sget-object v2, Lcom/hunantv/media/player/a/a$b;->b:Lcom/hunantv/media/player/a/a$b;

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsEnable:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerReset:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerReset:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastUri:Ljava/lang/String;

    const-string v8, "00"

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastHostErr:Ljava/lang/String;

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTcpErr:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpCount:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpIndex:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDnsType:I

    const-string v8, "native"

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCurrentDnsDsc:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableP2PHttpDns:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceP2pHttpDns:Z

    new-instance v8, Lcom/hunantv/media/player/a/d;

    invoke-direct {v8}, Lcom/hunantv/media/player/a/d;-><init>()V

    new-instance v9, Lcom/hunantv/media/player/MgtvMediaPlayer$3;

    invoke-direct {v9, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$3;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v8, v9}, Lcom/hunantv/media/player/a/d;->a(Lcom/hunantv/media/player/a/d$b;)Lcom/hunantv/media/player/a/d;

    move-result-object v8

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsThreadManager:Lcom/hunantv/media/player/a/d;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrReported:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSumReported:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSum:I

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncStartTimestamp:J

    iput-wide v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepareAsyncTimeStampMs:J

    new-instance v8, Lcom/hunantv/media/player/utils/SyncStateMachine;

    invoke-direct {v8, v1}, Lcom/hunantv/media/player/utils/SyncStateMachine;-><init>(I)V

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferState:Lcom/hunantv/media/player/utils/SyncStateMachine;

    const/4 v8, 0x5

    iput v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferMaxS:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsAudioExist:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVsrOpen:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsNativePausedLoadData:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsWanosAudioEffectValid:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastPosition:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPositionLoged:Z

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRealEncodeType:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mStreamFormatType:I

    new-instance v8, Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    invoke-direct {v8, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mNotifyHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWillOpenUrl:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportedTSLAN:Z

    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsP2pTSSkipReport:Z

    const-string v8, "n"

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCodecName:Ljava/lang/String;

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVVbuft:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableJAVAIPCacheMap:Z

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIPCacheMap:Ljava/util/Map;

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyMs:I

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyType:I

    iput-wide v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeStart:J

    iput-wide v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeEnd:J

    const-string v5, "default"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportTag:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportLerr:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableDnsNoNetStrategy:Z

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetWaiter:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIsNetworkAvailableNNS:Z

    const/16 v5, 0x14

    iput v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetMaxRetry:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTsSkipErrExtra:I

    const-string v5, "n/n"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->fstime:Ljava/lang/String;

    const-string v5, "n_n"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mcColorFormat:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isFlowReportEnable:Z

    const-string v5, "0|0_0|0_0"

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsri:Ljava/lang/String;

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsrver:Ljava/lang/String;

    iput-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsrvkver:Ljava/lang/String;

    new-instance v5, Lcom/hunantv/media/player/MgtvMediaPlayer$4;

    invoke-direct {v5, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceNetListner:Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLogTagKey:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableReport:Z

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->p2pLocker:Ljava/lang/Object;

    iput-wide v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSeekStartMs:J

    sget-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;->NONE:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHw2SwType:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlaybackSpeed:F

    iput v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordMaxPlaySpeed:F

    new-instance v4, Lcom/hunantv/media/player/MgtvMediaPlayer$23;

    invoke-direct {v4, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$23;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    new-instance v4, Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-direct {v4}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;-><init>()V

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableImgoVsr:Z

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopSourceKey:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleSources:Ljava/util/List;

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsWeakHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsListeners:Ljava/util/Set;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsLocker:Ljava/lang/Object;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$27;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$27;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourceListener:Lcom/hunantv/media/player/d$n;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourcesRecord:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchSmoothSourceLocker:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothUseP2pFailed:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothKeyFrameMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isBackground:Z

    new-instance v0, Lcom/hunantv/media/player/h;

    invoke-direct {v0, v3, p1}, Lcom/hunantv/media/player/h;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->initData(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->initConfig()V

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->initReporter(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->initListener()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInnerRetrying:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/hunantv/media/player/MgtvMediaPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->reportErrorWarning(II)V

    return-void
.end method

.method public static synthetic access$10000(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->updateFpsInfo()V

    return-void
.end method

.method public static synthetic access$10100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getResolution()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$102(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInnerRetrying:Z

    return p1
.end method

.method public static synthetic access$10200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrReported:Z

    return p0
.end method

.method public static synthetic access$10202(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrReported:Z

    return p1
.end method

.method public static synthetic access$10300(Lcom/hunantv/media/player/MgtvMediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncStartTimestamp:J

    return-wide v0
.end method

.method public static synthetic access$10302(Lcom/hunantv/media/player/MgtvMediaPlayer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncStartTimestamp:J

    return-wide p1
.end method

.method public static synthetic access$10400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSumReported:Z

    return p0
.end method

.method public static synthetic access$10402(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSumReported:Z

    return p1
.end method

.method public static synthetic access$10500(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSum:I

    return p0
.end method

.method public static synthetic access$10508(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 2

    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSum:I

    return v0
.end method

.method public static synthetic access$10602(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVVbuft:I

    return p1
.end method

.method public static synthetic access$10702(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->imp4dh:I

    return p1
.end method

.method public static synthetic access$10802(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mpx:I

    return p1
.end method

.method public static synthetic access$10900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/hunantv/media/player/MgtvMediaPlayer;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->reportError(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$11000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCodecName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$11002(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCodecName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$11102(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->fstime:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$11202(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mcColorFormat:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$11300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isFlowReportEnable:Z

    return p0
.end method

.method public static synthetic access$11400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/statistic/FlowDataStatistic;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    return-object p0
.end method

.method public static synthetic access$11500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/statistic/FlowDataStatistic;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    return-object p0
.end method

.method public static synthetic access$11600(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferMaxS:I

    return p0
.end method

.method public static synthetic access$11700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnInfoStringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;

    return-object p0
.end method

.method public static synthetic access$11800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    return-object p0
.end method

.method public static synthetic access$11900(Lcom/hunantv/media/player/MgtvMediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSeekStartMs:J

    return-wide v0
.end method

.method public static synthetic access$1200(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stopTickers()V

    return-void
.end method

.method public static synthetic access$12000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/subtitle/e;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    return-object p0
.end method

.method public static synthetic access$12100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    return-object p0
.end method

.method public static synthetic access$12202(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchingPrepared:Z

    return p1
.end method

.method public static synthetic access$12300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    return-object p0
.end method

.method public static synthetic access$12400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporterSL:Lcom/hunantv/media/report/a;

    return-object p0
.end method

.method public static synthetic access$12502(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitchingComplete:Z

    return p1
.end method

.method public static synthetic access$12602(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitching:Z

    return p1
.end method

.method public static synthetic access$12700(Lcom/hunantv/media/player/MgtvMediaPlayer;IILjava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->callBufferingTimeout(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$12800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnPlayerEventListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;

    return-object p0
.end method

.method public static synthetic access$12900(Lcom/hunantv/media/player/MgtvMediaPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->callbackRecordInfo(II)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    return-object p0
.end method

.method public static synthetic access$13000(Lcom/hunantv/media/player/MgtvMediaPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->callbackRecordError(II)V

    return-void
.end method

.method public static synthetic access$1302(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;)Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    return-object p1
.end method

.method public static synthetic access$13100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnGetFrameImageListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;

    return-object p0
.end method

.method public static synthetic access$13200(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->rfpsLowCounter:I

    return p0
.end method

.method public static synthetic access$13202(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->rfpsLowCounter:I

    return p1
.end method

.method public static synthetic access$13208(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 2

    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->rfpsLowCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->rfpsLowCounter:I

    return v0
.end method

.method public static synthetic access$13300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/IMgtvRenderView;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderView:Lcom/hunantv/media/player/IMgtvRenderView;

    return-object p0
.end method

.method public static synthetic access$13400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->rfpsLowFilterChanged:Z

    return p0
.end method

.method public static synthetic access$13402(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->rfpsLowFilterChanged:Z

    return p1
.end method

.method public static synthetic access$13500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getNetSpeedStr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$13600(Lcom/hunantv/media/player/MgtvMediaPlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->doBufferTick(I)V

    return-void
.end method

.method public static synthetic access$13700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    return-object p0
.end method

.method public static synthetic access$1402(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorExtraCodeStore:I

    return p1
.end method

.method public static synthetic access$14100(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/subtitle/d;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->sendContent2Track(Lcom/hunantv/media/player/subtitle/d;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    return-void
.end method

.method public static synthetic access$14200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    return-object p0
.end method

.method public static synthetic access$14300(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentSmoothSourceKey()I

    move-result p0

    return p0
.end method

.method public static synthetic access$14402(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothUseP2pFailed:Z

    return p1
.end method

.method public static synthetic access$14502(Lcom/hunantv/media/player/MgtvMediaPlayer;F)F
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordVfps:F

    return p1
.end method

.method public static synthetic access$14602(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoWidth:I

    return p1
.end method

.method public static synthetic access$14702(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoHeight:I

    return p1
.end method

.method public static synthetic access$14800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    return-object p0
.end method

.method public static synthetic access$14900(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getKeyFrameMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    return-object p0
.end method

.method public static synthetic access$15002(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/smooth/SmoothMediaSource;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchedSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    return-object p1
.end method

.method public static synthetic access$15100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    return-object p0
.end method

.method public static synthetic access$15200(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/smooth/SmoothMediaSource;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->notifySwitchSmoothSourceFail(Lcom/hunantv/media/player/smooth/SmoothMediaSource;II)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceP2pHttpDns:Z

    return p0
.end method

.method public static synthetic access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/utils/SyncStateMachine;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferState:Lcom/hunantv/media/player/utils/SyncStateMachine;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchSmoothSourceLocker:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    return-object p0
.end method

.method public static synthetic access$2002(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/report/a;)Lcom/hunantv/media/report/a;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    return-object p1
.end method

.method public static synthetic access$2100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourcesRecord:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/hunantv/media/player/MgtvMediaPlayer;I)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->matchLastKeySource(I)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    return-object p0
.end method

.method public static synthetic access$2502(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastHostIP:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2602(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTcpErr:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2702(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTcpIP:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2802(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpIndex:I

    return p1
.end method

.method public static synthetic access$2808(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 2

    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpIndex:I

    return v0
.end method

.method public static synthetic access$2900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableJAVAIPCacheMap:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIPCacheMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIP:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3102(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIP:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$3202(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastP2pCdnIP:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$3302(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastRequestUrl:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3402(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorUrl:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$3500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared:Z

    return p0
.end method

.method public static synthetic access$3502(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared:Z

    return p1
.end method

.method public static synthetic access$3600(Lcom/hunantv/media/player/MgtvMediaPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isSkipRetryCode(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLiveReopen:Z

    return p0
.end method

.method public static synthetic access$3702(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLiveReopen:Z

    return p1
.end method

.method public static synthetic access$3800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerSwitchUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3802(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerSwitchUrl:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$3900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHDJSwitchUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3902(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHDJSwitchUrl:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/recoder/GifRecorder;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    return-object p0
.end method

.method public static synthetic access$4002(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDnsType:I

    return p1
.end method

.method public static synthetic access$4102(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastHostErr:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$4202(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpCount:I

    return p1
.end method

.method public static synthetic access$4208(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 2

    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpCount:I

    return v0
.end method

.method public static synthetic access$4302(Lcom/hunantv/media/player/MgtvMediaPlayer;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIps:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$4400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBackJavaDns:Z

    return p0
.end method

.method public static synthetic access$4500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsEnable:Z

    return p0
.end method

.method public static synthetic access$4502(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsEnable:Z

    return p1
.end method

.method public static synthetic access$4600(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastUri:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$4602(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastUri:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$4700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/a/a$b;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    return-object p0
.end method

.method public static synthetic access$4802(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCurrentDnsDsc:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$4900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportedTSLAN:Z

    return p0
.end method

.method public static synthetic access$4902(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportedTSLAN:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isDnsCacheEnable()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$5000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWillOpenUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$5002(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWillOpenUrl:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$5100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mNotifyHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    return-object p0
.end method

.method public static synthetic access$5200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerReset:Z

    return p0
.end method

.method public static synthetic access$5300(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    return p0
.end method

.method public static synthetic access$5400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerReset:Z

    return p0
.end method

.method public static synthetic access$5500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$5600(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsNeedRetry:Z

    return p0
.end method

.method public static synthetic access$5700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$5800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceHttpDns:Z

    return p0
.end method

.method public static synthetic access$5900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsEnable:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/hunantv/media/player/MgtvMediaPlayer;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->checkAndCleanDnsCache(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$6000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsLive:Z

    return p0
.end method

.method public static synthetic access$6002(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsLive:Z

    return p1
.end method

.method public static synthetic access$6100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsBuffering:Z

    return p0
.end method

.method public static synthetic access$6200(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->callbackTsSkip(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic access$6300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheM3u8Path:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$6400(Lcom/hunantv/media/player/MgtvMediaPlayer;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheTsPaths:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$6500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReplaceMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$6600(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDlSize:I

    return p0
.end method

.method public static synthetic access$6602(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDlSize:I

    return p1
.end method

.method public static synthetic access$6700(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->clearIPCache()V

    return-void
.end method

.method public static synthetic access$6802(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInitMp4Error:Z

    return p1
.end method

.method public static synthetic access$6900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheEable:Z

    return p0
.end method

.method public static synthetic access$7002(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceRetryCount:I

    return p1
.end method

.method public static synthetic access$702(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRetryLastErrorCode:I

    return p1
.end method

.method public static synthetic access$7102(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceRetryCode:I

    return p1
.end method

.method public static synthetic access$7200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportTag:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$7202(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportTag:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$7300(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportLerr:I

    return p0
.end method

.method public static synthetic access$7302(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportLerr:I

    return p1
.end method

.method public static synthetic access$7408(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 2

    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTsCacheSkipNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTsCacheSkipNum:I

    return v0
.end method

.method public static synthetic access$7500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetWaiter:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$7600(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableDnsNoNetStrategy:Z

    return p0
.end method

.method public static synthetic access$7700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIsNetworkAvailableNNS:Z

    return p0
.end method

.method public static synthetic access$7702(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIsNetworkAvailableNNS:Z

    return p1
.end method

.method public static synthetic access$7800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTsNotSkip:Z

    return p0
.end method

.method public static synthetic access$7900(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoadMaxRetryTime:I

    return p0
.end method

.method public static synthetic access$800(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerReset(Z)V

    return-void
.end method

.method public static synthetic access$8000(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetMaxRetry:I

    return p0
.end method

.method public static synthetic access$8102(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mNetworkChangeWhilePlaying:Z

    return p1
.end method

.method public static synthetic access$8200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/flow/FlowReportProcessor;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainFlowReportProcessor:Lcom/hunantv/media/player/flow/FlowReportProcessor;

    return-object p0
.end method

.method public static synthetic access$8202(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/flow/FlowReportProcessor;)Lcom/hunantv/media/player/flow/FlowReportProcessor;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainFlowReportProcessor:Lcom/hunantv/media/player/flow/FlowReportProcessor;

    return-object p1
.end method

.method public static synthetic access$8300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/subtitle/b;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleController:Lcom/hunantv/media/player/subtitle/b;

    return-object p0
.end method

.method public static synthetic access$8400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    return-object p0
.end method

.method public static synthetic access$8500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->onRenderStart()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$8602(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;)Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHw2SwType:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    return-object p1
.end method

.method public static synthetic access$8700(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->onBufferStart(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$8800(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->onBufferEnd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$8902(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/hunantv/media/player/MgtvMediaPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->beforeThrowError(II)V

    return-void
.end method

.method public static synthetic access$9000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    return-object p0
.end method

.method public static synthetic access$9100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    return-object p0
.end method

.method public static synthetic access$9202(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRealEncodeType:I

    return p1
.end method

.method public static synthetic access$9302(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mStreamFormatType:I

    return p1
.end method

.method public static synthetic access$9400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderDisableWarnSended:Z

    return p0
.end method

.method public static synthetic access$9402(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderDisableWarnSended:Z

    return p1
.end method

.method public static synthetic access$9502(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsAudioExist:I

    return p1
.end method

.method public static synthetic access$9600(Lcom/hunantv/media/player/MgtvMediaPlayer;)I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVsrOpen:I

    return p0
.end method

.method public static synthetic access$9602(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVsrOpen:I

    return p1
.end method

.method public static synthetic access$9702(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsWanosAudioEffectValid:Z

    return p1
.end method

.method public static synthetic access$9802(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsNativePausedLoadData:I

    return p1
.end method

.method public static synthetic access$9900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    return-object p0
.end method

.method private addP2pListener()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->p2pLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mP2pNotify:Lcom/mgtv/a/a$a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$8;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$8;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mP2pNotify:Lcom/mgtv/a/a$a;

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mP2pNotify:Lcom/mgtv/a/a$a;

    invoke-virtual {v1, p0}, Lcom/mgtv/a/b;->a(Lcom/mgtv/a/a$a;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private beforeThrowError(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getErrorCodeType(ZII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastErrorTypeCode:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beforeThrowError mLastErrorTypeCode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastErrorTypeCode:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private callBufferingTimeout(IILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->beforeThrowError(II)V

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->reportErrorWarning(II)V

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->reportError(IILjava/lang/String;)V

    sget-object p3, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->ERROR:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iput-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/hunantv/media/player/h;->l()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p3}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/hunantv/media/p2p/IP2pTask;->getStatus()I

    move-result p3

    if-eqz p3, :cond_0

    const p2, 0x18a2b

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;->onBufferingTimeout(II)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private callbackRecordError(II)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;->onRecordVideoErr(II)V

    :cond_0
    return-void
.end method

.method private callbackRecordInfo(II)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;->onRecordVideoInfo(II)V

    :cond_0
    return-void
.end method

.method private callbackTsSkip(Ljava/lang/String;II)V
    .locals 5

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->LOCAL:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTsSkipErrExtra:I

    invoke-static {p1}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTsSkipErrFileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isHLSPlayingUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/hunantv/media/player/utils/UrlUtil;->isSegment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackTsSkip what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onTsSkip(Ljava/lang/String;II)V

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsP2pTSSkipReport:Z

    if-nez v0, :cond_3

    invoke-static {p2, p3}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isNoTaskByHashError(II)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const-string v0, "00"

    const-string v1, ""

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p2}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object p2

    invoke-interface {p2}, Lcom/hunantv/media/p2p/IP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v2}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/media/p2p/P2pMgr;->isTaskExistInt(Lcom/hunantv/media/p2p/IP2pTask;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v3}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object v3

    invoke-interface {v3}, Lcom/hunantv/media/p2p/IP2pTask;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string p2, "22"

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_2
    const-string p2, "11"

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hash_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_taskcode_"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_taskStatus_"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_errorUrl_"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0xc38f3

    invoke-interface {v3, v0, p3, p1, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsP2pTSSkipReport:Z

    :cond_3
    return-void
.end method

.method private checkAndCleanDnsCache(II)Z
    .locals 1

    const v0, 0x61cda

    if-eq p1, v0, :cond_1

    const v0, 0x186a2

    if-eq p1, v0, :cond_1

    const v0, 0x49638

    if-eq p2, v0, :cond_1

    const v0, 0x18a25

    if-eq p2, v0, :cond_1

    const v0, 0x18a2e

    if-eq p2, v0, :cond_1

    const v0, 0x18a2f

    if-eq p2, v0, :cond_1

    const v0, 0x1895d

    if-eq p2, v0, :cond_1

    invoke-static {p1, p2}, Lcom/hunantv/media/player/utils/CodeUtil;->isHttp4XX(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/hunantv/media/player/utils/CodeUtil;->isHttp5XX(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastUri:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastUri:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/media/player/a/f;->a(Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private checkInvalidThread(ILjava/lang/String;)Z
    .locals 6

    iget-wide v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainThreadID:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    const-string v2, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "videotype:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v3}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " invalid thread. MainThread:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainThreadID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",CurrentThread:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsGetPositionCallback:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsGetPositionCallback:Z

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInvalidThread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const v2, 0xc3505

    invoke-interface {p0, v2, p1, p2, v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private clearIPCache()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIPCacheMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback ipcache clear"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIPCacheMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method private doBufferTick(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurDLSpeed()I

    move-result v0

    iget v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferSpeedKB:I

    mul-int/lit16 v1, v1, 0x400

    if-gt v0, v1, :cond_0

    iget p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakTimer:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakTimer:I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->getTickTime()I

    move-result v0

    mul-int/2addr p1, v0

    div-int/lit16 p1, p1, 0x3e8

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->doBufferTickWeakNet(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakTimer:I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->getTickTime()I

    move-result v0

    mul-int/2addr p1, v0

    div-int/lit16 p1, p1, 0x3e8

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->doBufferTickNormalNet(I)V

    :goto_0
    return-void
.end method

.method private doBufferTickNormalNet(I)V
    .locals 4

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doBufferTickNormalNet s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result v0

    const-string v1, ""

    const v2, 0x493e4

    const-string v3, "doBufferTickNormalNet >= "

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferTimeoutMs:I

    div-int/lit16 v0, v0, 0x3e8

    if-lt p1, v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferTimeoutMs:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x18a24

    :goto_0
    invoke-direct {p0, v2, p1, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->callBufferingTimeout(IILjava/lang/String;)Z

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTimeoutMs:I

    div-int/lit16 v0, v0, 0x3e8

    if-lt p1, v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTimeoutMs:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x18a27

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private doBufferTickWeakNet(I)V
    .locals 5

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doBufferTickWeakNet s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result v0

    const-string v1, ""

    const v2, 0x18a2a

    const v3, 0x493e4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferTimeoutMs:I

    div-int/lit16 v0, v0, 0x3e8

    if-lt p1, v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doBufferTickWeakNet >= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferTimeoutMs:I

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->callBufferingTimeout(IILjava/lang/String;)Z

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferTimeoutMs:I

    div-int/lit16 v0, v0, 0x3e8

    if-lt p1, v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWeakBufferTimeoutS >= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferTimeoutMs:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private doReportPV()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->a()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    invoke-virtual {p0}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hunantv/media/report/ReportParams;->setPlaySessionId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doReportSLPV()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporterSL:Lcom/hunantv/media/report/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->a()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    invoke-virtual {p0}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hunantv/media/report/ReportParams;->setPlaySessionId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private extractBundleData()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "BUNDLE_KEY_LOG_TAG_KEY"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLogTagKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_KEY_BOOLEAN_AUDIO_MODE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mImgoMediaPlayerAudioMode:Z

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_KEY_BOOLEAN_ENABLE_REPORT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableReport:Z

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extractBundleData bundle not null"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractBundleData mLogTagKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLogTagKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mImgoMediaPlayerAudioMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mImgoMediaPlayerAudioMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mEnableReport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableReport:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getCurrentSmoothSourceKey()I
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchingSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchingSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaSource;->getKey()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getCurrentSourceCodecType()Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCodecName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSourceCodecType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "hevc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "h265"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "avc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "h264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;->OTHER:Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    sget-object p0, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;->AVC:Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;->HEVC:Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    sget-object p0, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;->OTHER:Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    return-object p0
.end method

.method public static getErrorCodeType(ZII)Ljava/lang/String;
    .locals 2

    const-string v0, "103"

    const-string v1, ""

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isTimeoutError(II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "105"

    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "4."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isTimeoutError(II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "106"

    goto :goto_2

    :goto_3
    return-object p0
.end method

.method public static getH264Decoder()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isApi16_JellyBeanOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getH264Decoder()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "none"

    return-object v0
.end method

.method public static getH265Decoder(Z)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isApi16_JellyBeanOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getH265Decoder(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "none"

    return-object p0
.end method

.method private getKeyFrameMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLogTagKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNetSpeedStr()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurDLSpeed()I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "KB/S"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getResolution()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(ILandroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    new-instance v0, Lcom/hunantv/media/player/h;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, p1, p2, v1}, Lcom/hunantv/media/player/h;-><init>(ILandroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerType:I

    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->initData(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->initConfig()V

    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->initReporter(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->initListener()V

    return-void
.end method

.method private init(ILandroid/content/Context;Z)V
    .locals 7

    .line 2
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init playerType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enableTexture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    iget v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    if-ltz v1, :cond_2

    if-le v1, v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    :cond_3
    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isApi14_IceCreamSandwichOrLater()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/hunantv/media/player/h;

    iget v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBundle:Landroid/os/Bundle;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/hunantv/media/player/h;-><init>(ILandroid/content/Context;ZILandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p3

    const-string v0, "it isn\'t supported under 4.0 for setting TextureView"

    invoke-static {p3, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance p3, Lcom/hunantv/media/player/h;

    iget v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBundle:Landroid/os/Bundle;

    const/4 v4, 0x0

    move-object v1, p3

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/hunantv/media/player/h;-><init>(ILandroid/content/Context;ZILandroid/os/Bundle;)V

    iput-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    :goto_0
    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerType:I

    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->initData(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->initConfig()V

    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->initReporter(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->initListener()V

    return-void
.end method

.method private initConfig()V
    .locals 10

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0, p0}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const v1, 0xc02c0f7

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/media/player/h;->a(II)V

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mImgoMediaPlayerAudioMode:Z

    const/4 v1, 0x0

    const v2, 0xc02c0fb

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0, v2, v3}, Lcom/hunantv/media/player/h;->a(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0, v2, v1}, Lcom/hunantv/media/player/h;->a(II)V

    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const v2, 0x782aa329

    invoke-virtual {v0, v2, v3}, Lcom/hunantv/media/player/h;->a(II)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const v2, 0x782aa32a

    invoke-virtual {v0, v2, v3}, Lcom/hunantv/media/player/h;->a(II)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSourceType(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSkipLoopFilter(Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;)V

    invoke-virtual {p0, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setAccurateSeekEnable(Z)V

    sget-boolean v0, Lcom/hunantv/media/global/Constants;->FOR_OTT:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->NATIVE_WINDOW:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setRenderType(Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;)V

    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_ADDRINFO_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    sget-object v8, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetAddrinfo(Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;IZLcom/hunantv/media/player/a/a$b;Z)V

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mImgoMediaPlayerAudioMode:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setForceKeyframeSeekEnable(Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setForceKeyframeSeekEnable(Z)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isNativeOpenglEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->OPENGL_ES:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setRenderType(Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->NATIVE_WINDOW:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    goto :goto_1

    :goto_2
    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isWanosAudioEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isExAudioEnable:Z

    return-void
.end method

.method private initData(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hunantv/media/global/PlayerReferenceObserver;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLogTagKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz v1, :cond_0

    const v2, 0x7848e285

    invoke-virtual {v1, v2, v0}, Lcom/hunantv/media/player/h;->a(ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainThreadID:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v0, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;

    invoke-direct {v0, p1}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mObserver:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;

    new-instance p1, Lcom/hunantv/media/player/MgtvMediaPlayer$5;

    invoke-direct {p1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$5;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, p1}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->setOnNetworkChangeListener(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnNetworkChangeListener;)Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mObserver:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$6;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$6;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->setOnHeadsetListener(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnHeadsetListener;)Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mObserver:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$7;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$7;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {p1, v0}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->setOnBluetoothHeadsetListener(Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnBluetoothHeadsetListener;)Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;

    return-void
.end method

.method private initListener()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$9;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$9;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$10;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$10;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$11;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$12;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$12;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$13;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$13;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$14;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$14;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$15;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$15;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceNetListner:Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$16;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$16;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$17;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$17;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourceListener:Lcom/hunantv/media/player/d$n;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/d$n;)Lcom/hunantv/media/player/h;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$18;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$18;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$19;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$19;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceFlowHandledListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/utils/ExTicker;->setHostLogTag(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$20;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$20;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/utils/ExTicker;->setCallback(Lcom/hunantv/media/player/utils/ExTicker$onTickListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$21;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$21;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/utils/ExTicker;->setExCallback(Lcom/hunantv/media/player/utils/ExTicker$OnExTickListener;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/utils/ExTicker;->setHostLogTag(Ljava/lang/String;)Lcom/hunantv/media/player/utils/ExTicker;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$22;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$22;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/utils/ExTicker;->setCallback(Lcom/hunantv/media/player/utils/ExTicker$onTickListener;)V

    return-void
.end method

.method private initReporter(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableReport:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/hunantv/media/report/a;

    invoke-direct {v0, p1, p0}, Lcom/hunantv/media/report/a;-><init>(Landroid/content/Context;Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    new-instance v0, Lcom/hunantv/media/report/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/hunantv/media/report/a;-><init>(Landroid/content/Context;Lcom/hunantv/media/player/MgtvMediaPlayer;Z)V

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporterSL:Lcom/hunantv/media/report/a;

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/report/a;)Lcom/hunantv/media/player/h;

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporterSL:Lcom/hunantv/media/report/a;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/report/a;)Lcom/hunantv/media/player/h;

    :cond_1
    return-void
.end method

.method private isDnsCacheEnable()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->ab()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isInPlaybackState()Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->ERROR:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->IDLE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->PREPARING:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSkipRetryCode(II)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/hunantv/media/player/utils/CodeUtil;->isHttp4XX(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/hunantv/media/player/utils/CodeUtil;->isHttp5XX(II)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isDnsCacheEnable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBackJavaDns:Z

    if-nez p0, :cond_0

    const p0, 0x1895d

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isTimeoutError(II)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/hunantv/media/report/a;->c(II)Z

    move-result p0

    return p0
.end method

.method private legalPosition(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDuration()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDuration()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDuration()I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private matchLastKeySource(I)Lcom/hunantv/media/player/smooth/SmoothMediaSource;
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchingSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchingSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaSource;->getKey()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchingSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private matchSwitchedSmoothSource(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchedSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchedSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    invoke-virtual {v0}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchedSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    invoke-virtual {v0}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getDef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchedSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    invoke-virtual {v0}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getVid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchedSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    invoke-virtual {v1}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getDef()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getKeyFrameMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifySwitchSmoothSourceFail(Lcom/hunantv/media/player/smooth/SmoothMediaSource;II)V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySwitchSmoothSourceFail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    if-eqz p0, :cond_0

    const p2, 0x61d46

    invoke-interface {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;->onSwitchSmoothSourceFail(Lcom/hunantv/media/player/smooth/SmoothMediaSource;II)V

    :cond_0
    return-void
.end method

.method private onBufferEnd(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBufferEnd"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/subtitle/e;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/recoder/GifRecorder;->resume()V

    :cond_1
    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakTimer:I

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsBuffering:Z

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->stop()V

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->resume()V

    :cond_2
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/hunantv/media/report/a;->b(Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method private onBufferStart(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBufferStart"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/subtitle/e;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/recoder/GifRecorder;->pause()V

    :cond_1
    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsBuffering:Z

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->pause()V

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoadDataPaused()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/UrlUtil;->isLocal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->start()V

    :cond_2
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/hunantv/media/report/a;->a(Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private onRenderStart()Z
    .locals 5

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVideoRendered:Z

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->start()V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/report/a;->b()V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInnerRetrying:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getRetryLastErrorCode()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0xc38f4

    invoke-interface {v0, v4, v2, p0, v3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return v1
.end method

.method private preLoopSeek(Z)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->l()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->l()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p0, 0x41f00000    # 30.0f

    :goto_0
    invoke-static {p0}, Lcom/hunantv/media/p2p/P2pMgr;->setPlaySpeed(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlaybackSpeed()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private preSeekTo(IZ)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSeekStartMs:J

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->l()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->l()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/hunantv/media/p2p/P2pMgr;->setPlayingTimepoint(Lcom/hunantv/media/p2p/IP2pTask;IZ)V

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p1}, Lcom/hunantv/media/player/h;->aq()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    const/16 p1, 0xa

    :goto_0
    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mpx:I

    goto :goto_1

    :cond_2
    const/16 p1, 0x9

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private printErrorMd5()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->LOCAL:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u79bb\u7ebf\u64ad\u653eURL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u79bb\u7ebf\u64ad\u653emd5:[status-remote]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v2}, Lcom/hunantv/media/report/ReportParams;->getLocalMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getRemoteMd5()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private removeP2pListener()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->p2pLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mP2pNotify:Lcom/mgtv/a/a$a;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mP2pNotify:Lcom/mgtv/a/a$a;

    invoke-virtual {v1, v2}, Lcom/mgtv/a/b;->b(Lcom/mgtv/a/a$a;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mP2pNotify:Lcom/mgtv/a/a$a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private reportError(IILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitching:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporterSL:Lcom/hunantv/media/report/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/hunantv/media/report/a;->a(IILjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitching:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->printErrorMd5()V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/report/a;->a(IILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private reportErrorWarning(II)V
    .locals 12

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result v0

    const-string v1, "."

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getRouterTimeStamp()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    iget-wide v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepareAsyncTimeStampMs:J

    cmp-long v0, v7, v5

    if-lez v0, :cond_2

    sub-long/2addr v7, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v7, v5

    long-to-int v0, v7

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    invoke-virtual {v5}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object v5

    div-int/lit16 v6, v0, 0x708

    invoke-static {p1, p2}, Lcom/hunantv/media/player/utils/CodeUtil;->isHttp410(II)Z

    move-result v7

    const-string v8, "_duration_"

    const-string v9, "_routerTimeMs_"

    const-string v10, "_prepareasync_"

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepareAsyncTimeStampMs:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0xc369a

    :goto_0
    invoke-interface {v7, v3, v5, v0, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lcom/hunantv/media/player/utils/CodeUtil;->isHttp403(II)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepareAsyncTimeStampMs:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0xc3693

    goto :goto_0

    :cond_2
    :goto_1
    const v0, 0x4950d

    const-string v3, ""

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    invoke-virtual {v4}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object v4

    const v5, 0xc362d

    invoke-interface {v0, v5, v4, v3, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const v0, 0x18e11

    if-eq p2, v0, :cond_4

    const v0, 0x18830

    if-eq p2, v0, :cond_4

    const v0, 0x18831

    if-ne p2, v0, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_6

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    array-length v5, v4

    if-lez v5, :cond_6

    const/4 v5, 0x0

    aget-object v4, v4, v5

    goto :goto_3

    :cond_6
    move-object v4, v3

    :goto_3
    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0xc3889

    invoke-interface {v5, v4, v1, v0, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->LOCAL:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v0, v1, :cond_8

    const v0, 0x18769

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0xc39b1

    const-string v5, "0"

    invoke-interface {v0, v4, v5, v1, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingOriginUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/UrlUtil;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    const-string v4, "00"

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v5}, Lcom/hunantv/media/report/ReportParams;->getP2ps()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v6}, Lcom/hunantv/media/report/ReportParams;->getRetryIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v7}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_9
    move-object v1, v4

    move-object v3, v1

    move-object v5, v3

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "psuuid_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    invoke-virtual {v7}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_playsta_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "_p2ps_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_rdst_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getReadDataSourceType()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_p2psta_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v1}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v1}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object v1

    invoke-interface {v1}, Lcom/hunantv/media/p2p/IP2pTask;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_pdsn_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsNativePausedLoadData:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_pdsj_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoadDataPaused()Z

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "_live_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsLive:Z

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "_dsty_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_retry_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_sr_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceRetryCount:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_err_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_last_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastRequestUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_cip_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_pcip_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastP2pCdnIP:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_proxy_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_v_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/player/pragma/PlayerConfig;->getLibFullVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_herr_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastHostErr:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_terr_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTcpErr:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_hip_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastHostIP:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_tip_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTcpIP:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_lhost_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_ipn_"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIPCount()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIpArrayStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ipt_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastDnsType()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0xc38f2

    invoke-interface {p0, p2, p1, v1, v2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private resetData()V
    .locals 6

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isWanosAudioEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isExAudioEnable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->waev:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSeekStartMs:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->imp4dh:I

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mpx:I

    const-string v2, "n"

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->fstime:Ljava/lang/String;

    const-string v2, "n_n"

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mcColorFormat:Ljava/lang/String;

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTsSkipErrExtra:I

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTsSkipErrFileName:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIsNetworkAvailableNNS:Z

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRfpsLow()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->rfpsLowFilterChanged:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "resetData rfps too low, close opengl next time"

    invoke-static {v3, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/hunantv/media/player/j;->a:Z

    :cond_0
    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/hunantv/media/recoder/GifRecorder;->reset()V

    :cond_1
    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->removeSubtitleSources()V

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsGetPositionCallback:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitching:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitchingComplete:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared:Z

    const-string v3, ""

    iput-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorUrl:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastRequestUrl:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsBuffering:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsLive:Z

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakTimer:I

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheM3u8Path:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheTsPaths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReplaceMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTsCacheSkipNum:I

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInnerRetrying:Z

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRetryLastErrorCode:I

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderDisableWarnSended:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRealEncodeType:I

    invoke-direct {p0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerReset(Z)V

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsEnable:Z

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastUri:Ljava/lang/String;

    const-string v2, "native"

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCurrentDnsDsc:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIP:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastP2pCdnIP:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastHostIP:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTcpIP:Ljava/lang/String;

    const-string v0, "00"

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastHostErr:Ljava/lang/String;

    const-string v0, "00"

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTcpErr:Ljava/lang/String;

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpCount:I

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpIndex:I

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDnsType:I

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceRetryCount:I

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceRetryCode:I

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrReported:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSumReported:Z

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSum:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepareAsyncTimeStampMs:J

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportedTSLAN:Z

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsAudioExist:I

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsP2pTSSkipReport:Z

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInitMp4Error:Z

    iput-wide v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmt:J

    iput-wide v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDlt:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlaybackSpeed:F

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->clearIPCache()V

    const-string v0, "n"

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCodecName:Ljava/lang/String;

    const-string v0, "n"

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->hdrInfo:Ljava/lang/String;

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyMs:I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mObserver:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->unregister()V

    :cond_2
    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mNetworkChangeWhilePlaying:Z

    const-string v0, "default"

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReportTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-virtual {v0}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->reset()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferState:Lcom/hunantv/media/player/utils/SyncStateMachine;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/SyncStateMachine;->reset()V

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->avdiffS:I

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->sfps:I

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vfps:I

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->rfps:I

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->rfpsLowCounter:I

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->rfpsLowFilterChanged:Z

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastPosition:I

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPositionLoged:Z

    iput v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVVbuft:I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsThreadManager:Lcom/hunantv/media/player/a/d;

    invoke-virtual {v0}, Lcom/hunantv/media/player/a/d;->b()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetWaiter:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resetData DnsNetStrategy mDnsNoNetWaiter notifyAll"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetWaiter:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourcesRecord:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaSource;->isReleased()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->release()V

    goto :goto_0

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private resetDataAfter()V
    .locals 4

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isFlowReportEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainFlowReportProcessor:Lcom/hunantv/media/player/flow/FlowReportProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->stop()V

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->removeP2pListener()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourcesRecord:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    iget-boolean v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isFlowReportEnable:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getFlowReportProcessor()Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getFlowReportProcessor()Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->stop()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchSmoothSourceLocker:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchingSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchedSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourcesRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothKeyFrameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    new-instance v1, Lcom/hunantv/media/report/a;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/hunantv/media/report/a;-><init>(Landroid/content/Context;Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/report/a;)Lcom/hunantv/media/player/h;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v1, v3}, Lcom/hunantv/media/player/h;->c(Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothUseP2pFailed:Z

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sendContent2Track(Lcom/hunantv/media/player/subtitle/d;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/e;->a:Landroid/os/Handler;

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private setAsyncDns(ZLcom/hunantv/media/player/a/a$b;)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsEnable:Z

    iput-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mJavaDnsType:Lcom/hunantv/media/player/a/a$b;

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/h;->a(ZLcom/hunantv/media/player/a/a$b;)V

    :cond_0
    return-void
.end method

.method public static setPlayerDebug(Z)V
    .locals 0

    invoke-static {p0}, Lcom/hunantv/media/player/pragma/PlayerConfig;->setPlayerDebug(Z)V

    return-void
.end method

.method public static setPlayerDebugLog(II)V
    .locals 0

    invoke-static {p0}, Lcom/hunantv/media/player/pragma/PlayerConfig;->setPlayerDebugInfo(I)V

    invoke-static {p1}, Lcom/hunantv/media/player/pragma/PlayerConfig;->setPlayerDebugLogLevel(I)V

    return-void
.end method

.method private setPlayerReset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerReset:Z

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerReset:Z

    return-void
.end method

.method private declared-synchronized setSubtitleAnchor()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleController:Lcom/hunantv/media/player/subtitle/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hunantv/media/player/subtitle/b;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    new-instance v3, Lcom/hunantv/media/player/MgtvMediaPlayer$25;

    invoke-direct {v3, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$25;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/hunantv/media/player/subtitle/b;-><init>(Landroid/content/Context;Lcom/hunantv/media/player/b/a;Lcom/hunantv/media/player/subtitle/b$b;)V

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleController:Lcom/hunantv/media/player/subtitle/b;

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$26;

    invoke-direct {v1, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$26;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/subtitle/b;->a(Lcom/hunantv/media/player/subtitle/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private stopTickers()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->stop()V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {p0}, Lcom/hunantv/media/player/utils/ExTicker;->stop()V

    return-void
.end method

.method private updateFpsInfo()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->K()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->avdiffS:I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->M()I

    move-result v0

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->sfps:I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->O()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->dfps:I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->N()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vfps:I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderView:Lcom/hunantv/media/player/IMgtvRenderView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/media/player/IMgtvRenderView;->getFps()I

    move-result v0

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->rfps:I

    :cond_0
    return-void
.end method

.method private validSeekPosition(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->PREPARED:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    if-ne v1, v2, :cond_1

    add-int/lit16 v1, v0, -0x3e8

    if-lt p1, v1, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "validSeekPos seekTo failed, pos >=  duration - 1 * 1000, return -1"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    add-int/lit16 v0, v0, -0x1388

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validSeekPos seekTo newMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",origMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public addSubtitleSource(Lcom/hunantv/media/player/subtitle/d$c;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->isBinded()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2, p0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->bindHolder(Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceHolder;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleSources:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "subtitle"

    const-string v1, "addSubtitleSource in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getMediaTimeProvider()Lcom/hunantv/media/player/b/a;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleController:Lcom/hunantv/media/player/subtitle/b;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSubtitleAnchor()V

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleController:Lcom/hunantv/media/player/subtitle/b;

    invoke-virtual {p2}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->getFormat()Lcom/hunantv/media/player/subtitle/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/hunantv/media/player/subtitle/b;->a(Lcom/hunantv/media/player/subtitle/d$c;Lcom/hunantv/media/player/subtitle/MediaFormat;)Lcom/hunantv/media/player/subtitle/d;

    move-result-object p1

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$24;

    invoke-direct {v0, p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$24;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    invoke-virtual {p2, v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->setCallback(Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;)V

    invoke-virtual {p2, p1, p2}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->readSource(Lcom/hunantv/media/player/subtitle/d;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    return-void

    :cond_3
    :goto_0
    sget-object p1, Lcom/hunantv/media/player/MgtvMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "addSubtitleSource called with invalid source"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    if-eqz p0, :cond_4

    invoke-interface {p0, p2}, Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;->onError(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    :cond_4
    return-void
.end method

.method public addVideoPTSListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsLocker:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "mgtvmp_jPts"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsWeakHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;

    if-nez v1, :cond_1

    new-instance v1, Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;-><init>(Landroid/os/Looper;Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsWeakHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public autoWanosAudioEffectChoice()V
    .locals 2

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isExAudioEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isUserAudioEnable:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "autoWanosAudioEffectChoice in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/utils/AudioUtil;->isWired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setWanosAudioEffectChoice(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "autoWanosAudioEffectChoice out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public bindDrmSession(Lcom/hunantv/media/drm/IDrmSession;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/drm/IDrmSession;)V

    return-void
.end method

.method public declared-synchronized bindGifRecorder(Lcom/hunantv/media/recoder/GifRecorder;)Lcom/hunantv/media/recoder/GifRecorder;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/recoder/GifRecorder;->reset()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    invoke-virtual {p1, p0}, Lcom/hunantv/media/recoder/GifRecorder;->bindMediaPlayer(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bindRenderView(Lcom/hunantv/media/player/IMgtvRenderView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderView:Lcom/hunantv/media/player/IMgtvRenderView;

    return-void
.end method

.method public clearSurface(Landroid/view/Surface;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public clearVideoPTSListener()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public configDSMemoryKeepSize(II)V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configDSMemoryKeepSize, BW_SIZE_KB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",FW_SIZE_KB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const v1, 0x783ad799

    invoke-virtual {v0, v1, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    if-lez p2, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const p1, 0x783ad79a

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_1
    return-void
.end method

.method public configForceHW(Z)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x784903b9

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    return-void
.end method

.method public configLoadMaxRetryTime(I)V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configLoadMaxRetryTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoadMaxRetryTime:I

    :cond_0
    return-void
.end method

.method public configTsNotSkip(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configTsNotSkip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTsNotSkip:Z

    return-void
.end method

.method public configWeakBufferSpeed(I)V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configWeakBufferSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferSpeedKB:I

    :cond_0
    return-void
.end method

.method public configWeakBufferTimeout(I)V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configWeakBufferTimeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferTimeoutMs:I

    :cond_0
    return-void
.end method

.method public enableFramePTSNotify(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->b(Z)V

    return-void
.end method

.method public enableImgoAIQE(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->g(Z)V

    :cond_0
    return-void
.end method

.method public enableImgoVSR(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->g(Z)V

    :cond_0
    return-void
.end method

.method public enableJAVAIPCacheMap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableJAVAIPCacheMap:Z

    return-void
.end method

.method public enableLiveLowLatency(Z)V
    .locals 1

    const v0, 0x78767a01    # 1.9996556E34f

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setConfig(II)V

    return-void
.end method

.method public enableM3u8Cache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheEable:Z

    return-void
.end method

.method public enableMgtvMediaCodec(Z)V
    .locals 2

    const v0, 0x78584e2d

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object p1

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public enableOppoFunc(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/h;->b(IZ)V

    :cond_0
    return-void
.end method

.method public enableP2PSmoothFailMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->c(Z)V

    return-void
.end method

.method public enableTsSkipError(Z)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x78584469

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/global/PlayerReferenceObserver;->remove(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mObserver:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->unregister()V

    :cond_0
    return-void
.end method

.method public getAddrinfoType()Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    return-object p0
.end method

.method public getAudioFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->access$13900(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvdiffS()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->avdiffS:I

    return p0
.end method

.method public getBufferedPercentage()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->s()I

    move-result p0

    return p0
.end method

.method public getBufferedPositionMs()J
    .locals 2

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferingPercent()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->r()I

    move-result p0

    return p0
.end method

.method public getCacheReplaceMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReplaceMap:Ljava/util/Map;

    return-object p0
.end method

.method public getCacheTsPaths()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheTsPaths:[Ljava/lang/String;

    return-object p0
.end method

.method public getCodecName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCodecName:Ljava/lang/String;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurDLSpeed()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->w()I

    move-result p0

    return p0
.end method

.method public getCurrentAudioDecoderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->Y()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDnsDsc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCurrentDnsDsc:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentDrmMetodName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->ag()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentPosition()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "getCurrentPosition"

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->checkInvalidThread(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentPositionUnSafe()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getCurrentPosition Exception return 0"

    invoke-static {p0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getCurrentPositionUnSafe()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->n()I

    move-result v0

    iget v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastPosition:I

    if-lez v1, :cond_0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPositionLoged:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPositionLoged:Z

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentPosition warning position mLastPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " check it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->ERROR:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorExtraCodeStore:I

    const v2, 0x188ff

    if-eq v1, v2, :cond_1

    const v2, 0x188fe

    if-ne v1, v2, :cond_2

    :cond_1
    add-int/lit16 v0, v0, -0x1388

    :cond_2
    invoke-direct {p0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->legalPosition(I)I

    move-result v0

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getCurrentPositionUnSafe Exception return 0"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentVideoDecoderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->X()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDataSourceInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    return-object p0
.end method

.method public getDataSourceType()Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    return-object p0
.end method

.method public getDataSourceTypeOrdinal()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public getDfps()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->dfps:I

    return p0
.end method

.method public getDrmSession()Lcom/hunantv/media/drm/IDrmSession;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->as()Lcom/hunantv/media/drm/IDrmSession;

    move-result-object p0

    return-object p0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerType:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->d()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getErrorUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getFileFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->access$14000(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFileStartTimeFloatS()F
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->L()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getFpsMsg()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isVfpsLow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRfpsLow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getAvdiffS()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getSfps()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDfps()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVfps()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getRfps()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlaybackSpeed()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRfpsLowFilterChanged()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFstime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->fstime:Ljava/lang/String;

    return-object p0
.end method

.method public getHdrInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->hdrInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getHw2SwType()Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHw2SwType:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    return-object p0
.end method

.method public getImgoMediaPlayer()Lcom/hunantv/media/player/h;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    return-object p0
.end method

.method public getImp4dh()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->imp4dh:I

    return p0
.end method

.method public getInnerFlowDataStatistic()Lcom/hunantv/media/player/statistic/FlowDataStatistic;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    return-object p0
.end method

.method public getInnerFrameListener()Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    return-object p0
.end method

.method public getIsAudioExist()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsAudioExist:I

    return p0
.end method

.method public getLastDlSize()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDlSize:I

    return p0
.end method

.method public getLastDnsType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDnsType:I

    return p0
.end method

.method public getLastErrorTypeCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastErrorTypeCode:Ljava/lang/String;

    return-object p0
.end method

.method public getLastIP()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->l()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->l()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/p2p/P2pMgr;->getTaskInfo(Lcom/hunantv/media/p2p/IP2pTask;)Lcom/mgtv/a/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgtv/a/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastP2pCdnIP:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIP:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastIP update cdnIp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIP:Ljava/lang/String;

    return-object p0
.end method

.method public getLastIPCount()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpCount:I

    return p0
.end method

.method public getLastIpArrayStr()Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIps:[Ljava/lang/String;

    const-string v0, ""

    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLastIpIndex()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpIndex:I

    return p0
.end method

.method public getLastRequestUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastRequestUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getLastTsSkipErrExtra()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTsSkipErrExtra:I

    return p0
.end method

.method public getLastTsSkipErrFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTsSkipErrFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxDnsMs()J
    .locals 2

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->Z()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDnsType()J
    .locals 2

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->aa()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getMediaCodecColorFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mcColorFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getMediaInfo()Lcom/hunantv/media/player/f;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->U()Lcom/hunantv/media/player/f;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMediaTimeProvider()Lcom/hunantv/media/player/b/a;
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hunantv/media/player/subtitle/e;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/subtitle/e;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    iget v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlaybackSpeed:F

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/subtitle/e;->a(F)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isPlaying()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/subtitle/e;->a(Z)V

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsBuffering:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    invoke-virtual {v1, v0}, Lcom/hunantv/media/player/subtitle/e;->b(Z)V

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    return-object p0
.end method

.method public getMemoryPlayType()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->at()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMgtvFastMode()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->an()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMpx()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mpx:I

    return p0
.end method

.method public getNetdSVCTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mNetdSVCTimeMs:J

    return-wide v0
.end method

.method public getOnAVPlayListener()Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

    return-object p0
.end method

.method public getOnFrameListener()Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    return-object p0
.end method

.method public getOnPlayerEventListener()Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnPlayerEventListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;

    return-object p0
.end method

.method public getPlayTicker()Lcom/hunantv/media/player/utils/ExTicker;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    return-object p0
.end method

.method public getPlaybackSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->x()F

    move-result p0

    return p0
.end method

.method public getPlayerExtraInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;
    .locals 3

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;

    invoke-direct {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;->playSessionID:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIP()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;->lastIP:Ljava/lang/String;

    iget-wide v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmt:J

    iput-wide v1, v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;->smt:J

    iget-wide v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDlt:J

    iput-wide v1, v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;->dlt:J

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hunantv/media/player/h;->al()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;->buftimeMs:J

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->ak()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerExtraInfo;->bufsizeByte:J

    :cond_1
    return-object v0
.end method

.method public getPlayerFileStartTimeFloatS()F
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->am()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getPlayerMode()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    return p0
.end method

.method public getPlayerType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerType:I

    return p0
.end method

.method public getPlayingOriginUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->I()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlayingUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->H()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrepared4StartMode()Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    return-object p0
.end method

.method public getPropertyFloat(IF)F
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/h;->b(IF)F

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public getPropertyLong(IJ)J
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/h;->a(IJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public getReadDataSourceType()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->l()I

    move-result p0

    return p0
.end method

.method public getRecordMaxPlaySpeed()F
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordMaxPlaySpeed:F

    return p0
.end method

.method public getRenderType()Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderType:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    return-object p0
.end method

.method public getReportParams()Lcom/hunantv/media/report/ReportParams;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    return-object p0
.end method

.method public getRetryLastErrorCode()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRetryLastErrorCode:I

    return p0
.end method

.method public getRfps()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->rfps:I

    return p0
.end method

.method public getSfps()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->sfps:I

    return p0
.end method

.method public getSnapshot(II)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/h;->b(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getSourceRetryCode()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceRetryCode:I

    return p0
.end method

.method public getSourceRetryCount()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceRetryCount:I

    return p0
.end method

.method public getSwitchP2ps()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->y()I

    move-result p0

    return p0
.end method

.method public getTsCacheSkipNum()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTsCacheSkipNum:I

    return p0
.end method

.method public getVVbuft()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVVbuft:I

    return p0
.end method

.method public getVfps()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vfps:I

    return p0
.end method

.method public getVideoBitRate()J
    .locals 2

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->P()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoFPS()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->M()I

    move-result p0

    return p0
.end method

.method public getVideoFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->access$13800(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoFrameClockNotifyMs()I
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyType:I

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyMs:I

    return p0
.end method

.method public getVideoFrameClockNotifyType()I
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyType:I

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->f()I

    move-result p0

    return p0
.end method

.method public getVideoSarDen()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->h()I

    move-result p0

    return p0
.end method

.method public getVideoSarNum()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->g()I

    move-result p0

    return p0
.end method

.method public getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/hunantv/media/report/ReportParams$VideoType;->NONE:Lcom/hunantv/media/report/ReportParams$VideoType;

    :goto_0
    return-object p0
.end method

.method public getVideoWidth()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->e()I

    move-result p0

    return p0
.end method

.method public getWanosAudioEffectChoice()I
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->V()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getmVideoFrameClockNotifyTimeEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeEnd:J

    return-wide v0
.end method

.method public getmVideoFrameClockNotifyTimeStart()J
    .locals 2

    iget-wide v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeStart:J

    return-wide v0
.end method

.method public isBackground()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isBackground:Z

    return p0
.end method

.method public isDebug()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDebug:Z

    return p0
.end method

.method public isEnableDnsNoNetStrategy()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableDnsNoNetStrategy:Z

    return p0
.end method

.method public isForceHttpDns()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceHttpDns:Z

    return p0
.end method

.method public isHDR()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getHdrInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHDR hdrInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const-string v1, "1"

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return v0
.end method

.method public isHLSPlayingUrl()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->J()Z

    move-result p0

    return p0
.end method

.method public isHardware()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->u()Z

    move-result p0

    return p0
.end method

.method public isHttpDnsNeedRetry()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsNeedRetry:Z

    return p0
.end method

.method public isInitMp4Error()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInitMp4Error:Z

    return p0
.end method

.method public isLive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsLive:Z

    return p0
.end method

.method public isLoadDataPaused()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->B()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLoopSwitching()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->p()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMediaCodecSWRender()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->G()Z

    move-result p0

    return p0
.end method

.method public isMgtvCore()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->W()Z

    move-result p0

    return p0
.end method

.method public isNativePausedLoadData()Z
    .locals 1

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsNativePausedLoadData:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkChangeWhilePlaying()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mNetworkChangeWhilePlaying:Z

    return p0
.end method

.method public isOppoExFunEnable()Z
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->R()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->i()Z

    move-result p0

    return p0
.end method

.method public isRecording()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->af()Z

    move-result p0

    return p0
.end method

.method public isRendered()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVideoRendered:Z

    return p0
.end method

.method public isRfpsLow()Z
    .locals 2

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getSfps()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getRfps()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getRfps()I

    move-result p0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRfpsLowFilterChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->rfpsLowFilterChanged:Z

    return p0
.end method

.method public isSourceSwitching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitching:Z

    return p0
.end method

.method public isSourceSwitchingComplete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitchingComplete:Z

    return p0
.end method

.method public isSupportAMCKeyFrameBackup()Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->ah()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSupportedSnapshot()Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isHDR()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSwitchingPrepared()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchingPrepared:Z

    return p0
.end method

.method public isSystemPlayer()Z
    .locals 0

    iget p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVfpsLow()Z
    .locals 2

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getSfps()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVfps()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVfps()I

    move-result p0

    if-ge p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVod()Z
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object p0

    sget-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWanosAudioEffectValid()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsWanosAudioEffectValid:Z

    return p0
.end method

.method public nativeCrashTest(Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;)V
    .locals 2

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$NativeSoType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/h;->g(I)V

    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pause player"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableDnsNoNetStrategy:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/hunantv/media/report/c/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->pauseLoadData()V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->a()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->pause()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->pause()V

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->PAUSED:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/recoder/GifRecorder;->pause()V

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/subtitle/e;->a(Z)V

    :cond_2
    return-void
.end method

.method public pauseLoadData()V
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoadDataPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->C()V

    :cond_0
    return-void
.end method

.method public prepareAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepareAsync in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->PREPARING:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVideoRendered:Z

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferState:Lcom/hunantv/media/player/utils/SyncStateMachine;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/SyncStateMachine;->reset()V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isDnsCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getRetryIndex()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getLastErrorCodeExtra()I

    move-result v0

    const v1, 0x1895d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsEnable:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepareAsyncTimeStampMs:J

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->printErrorMd5()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mObserver:Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver;->register()V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-virtual {v0}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->reset()V

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isSystemPlayer()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/hunantv/media/player/libnative/FFmpegApi;->remove_all_dns_cache()I

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->k()V

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->autoWanosAudioEffectChoice()V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "prepareAsync out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 4

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release player"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->c()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->f()V

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resetData()V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stopTickers()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVideoRendered:Z

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->IDLE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    const/4 v0, -0x1

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorExtraCodeStore:I

    const/4 v0, 0x2

    const-string v1, "release"

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->checkInvalidThread(ILjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->o()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsHandlerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsHandlerThread:Landroid/os/HandlerThread;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsWeakHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;

    if-eqz v1, :cond_2

    const/16 v3, 0x100

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsWeakHandler:Lcom/hunantv/media/player/MgtvMediaPlayer$WeakHandler;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resetDataAfter()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeSubtitleSources()V
    .locals 2

    const-string v0, "subtitle"

    const-string v1, "removeSubtitleSources in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/subtitle/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/subtitle/e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleSources:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/media/player/subtitle/SubtitleSource;

    invoke-virtual {v1}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->unBindHolder()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleController:Lcom/hunantv/media/player/subtitle/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hunantv/media/player/subtitle/b;->c()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleController:Lcom/hunantv/media/player/subtitle/b;

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hunantv/media/player/subtitle/e;->a()V

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    :cond_4
    return-void
.end method

.method public removeVideoPTSListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoPTSListener;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsLocker:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->ptsListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reportEndWithError(II)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/report/a;->a(II)V

    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 6

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset player in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/hunantv/media/report/a;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resetData()V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stopTickers()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVideoRendered:Z

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->IDLE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;->NONE:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHw2SwType:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    const/4 v2, -0x1

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorExtraCodeStore:I

    const/4 v2, 0x1

    const-string v3, "reset"

    invoke-direct {p0, v2, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->checkInvalidThread(ILjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stop()V

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v2}, Lcom/hunantv/media/player/h;->j()Z

    move-result v2

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resetDataAfter()V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset player out cost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public resetLoopDataImpl()V
    .locals 4

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSeekStartMs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->imp4dh:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mpx:I

    const-string v1, "n"

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->fstime:Ljava/lang/String;

    const-string v1, "n_n"

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mcColorFormat:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTsSkipErrExtra:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTsSkipErrFileName:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIsNetworkAvailableNNS:Z

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/hunantv/media/recoder/GifRecorder;->reset()V

    :cond_0
    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVideoRendered:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitching:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitchingComplete:Z

    const-string v3, ""

    iput-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorUrl:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastRequestUrl:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsBuffering:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsLive:Z

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheM3u8Path:Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheTsPaths:[Ljava/lang/String;

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheReplaceMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTsCacheSkipNum:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInnerRetrying:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRetryLastErrorCode:I

    iput-boolean v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopPlayerReset:Z

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsEnable:Z

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastUri:Ljava/lang/String;

    const-string v2, "native"

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCurrentDnsDsc:Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIP:Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastP2pCdnIP:Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastHostIP:Ljava/lang/String;

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTcpIP:Ljava/lang/String;

    const-string v1, "00"

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastHostErr:Ljava/lang/String;

    const-string v1, "00"

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastTcpErr:Ljava/lang/String;

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpCount:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIpIndex:I

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastDnsType:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceRetryCount:I

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceRetryCode:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrReported:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSumReported:Z

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAVSyncErrSum:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepareAsyncTimeStampMs:J

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportedTSLAN:Z

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsAudioExist:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsInitMp4Error:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlaybackSpeed:F

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->clearIPCache()V

    const-string v2, "n"

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCodecName:Ljava/lang/String;

    const-string v2, "n"

    iput-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->hdrInfo:Ljava/lang/String;

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyMs:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mNetworkChangeWhilePlaying:Z

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    invoke-virtual {v2}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->reset()V

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastPosition:I

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPositionLoged:Z

    iput v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVVbuft:I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetWaiter:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resetLoopData DnsNetStrategy mDnsNoNetWaiter notifyAll"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsNoNetWaiter:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public resetLoopPlay()V
    .locals 0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resetLoopDataImpl()V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/report/a;->c()V

    :cond_0
    return-void
.end method

.method public resumeLoadData()V
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLoadDataPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;->onBeforeLoadDataResume()V

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->D()V

    :cond_1
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->preSeekTo(IZ)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->d()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->validSeekPosition(I)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->a(I)V

    :cond_1
    return-void
.end method

.method public seekTo(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->seekTo(IZZ)V

    return-void
.end method

.method public seekTo(IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->preSeekTo(IZ)V

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/hunantv/media/report/a;->d()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->validSeekPosition(I)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/h;->a(IZ)V

    :cond_1
    return-void
.end method

.method public setAMCKeyFrameBackMode(I)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x7849a125

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    return-void
.end method

.method public setAccSeekKeyFrameInterval(I)V
    .locals 1

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAccSeekKeyFrameInterval:I

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x7839c499

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    return-void
.end method

.method public setAccurateSeekEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAccurateSeekEnable:Z

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x78397486

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAsync in. streamtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/h;->d(I)V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "prepareAsync out"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isBackground:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainFlowReportProcessor:Lcom/hunantv/media/player/flow/FlowReportProcessor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->forceTrigger()V

    :cond_0
    return-void
.end method

.method public setConfig(II)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/h;->a(II)V

    return-void
.end method

.method public setDataSource(Lcom/hunantv/media/player/MgtvPlayerDataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitching:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitchingComplete:Z

    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;->NONE:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHw2SwType:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerReset(Z)V

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v1, v0}, Lcom/hunantv/media/player/h;->b(I)V

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSourceBefore(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerDataSource;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->doReportPV()V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitching:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitchingComplete:Z

    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;->NONE:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHw2SwType:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerReset(Z)V

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v1, v0}, Lcom/hunantv/media/player/h;->b(I)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-static {p1, v0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->replaceUrlSftcNoP2p(Ljava/lang/String;Lcom/hunantv/media/report/ReportParams;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSourceBefore(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/h;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->doReportPV()V

    return-void
.end method

.method public setDataSourceBefore(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;)V
    .locals 10

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->addP2pListener()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainFlowReportProcessor:Lcom/hunantv/media/player/flow/FlowReportProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->stop()V

    :cond_0
    invoke-static {}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->isEnable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-static {v0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->isInvalidVideoType(Lcom/hunantv/media/report/ReportParams;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isFlowReportEnable:Z

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const v4, 0x78767e4d    # 1.9997917E34f

    invoke-virtual {v3, v4, v0}, Lcom/hunantv/media/player/h;->a(II)V

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isFlowReportEnable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object p2

    sget-object v0, Lcom/hunantv/media/report/ReportParams$ProxyType;->ONLY_P2P:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {p2}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object p2

    sget-object v0, Lcom/hunantv/media/report/ReportParams$ProxyType;->P2P_DRM:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-ne p2, v0, :cond_3

    :cond_2
    move v8, v2

    goto :goto_1

    :cond_3
    move v8, v1

    :goto_1
    new-instance p2, Lcom/hunantv/media/player/flow/FlowReportProcessor;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVid()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getDef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoSession()Ljava/lang/String;

    move-result-object v7

    const-string v9, "main"

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/hunantv/media/player/flow/FlowReportProcessor;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    iput-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainFlowReportProcessor:Lcom/hunantv/media/player/flow/FlowReportProcessor;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMainFlowReportProcessor:Lcom/hunantv/media/player/flow/FlowReportProcessor;

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no FlowReportProcessor. isFlowReportEnable:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isFlowReportEnable:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isFlowReportEnable:Z

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no FlowReportProcessor. isInited:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgtv/easydatasource/FlowReporter;->isInited()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getFlowReportMode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "no FlowReportProcessor. mReportParams is null."

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setDataSourceInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataSourceInfo VideoFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getVideoFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AudioFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getAudioFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",FileFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getFileFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VideoWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",VideoHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getVideoHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bitRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getBitRate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getVideoWidth()I

    move-result p1

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoWidth:I

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceInfo:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoHeight:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setDataSourceInfo null"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDataSourceType(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;)V
    .locals 3

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDataSourceType:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$DataSourceType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x782a0cc9

    const v1, 0x782acb01

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v1, v2}, Lcom/hunantv/media/player/h;->a(II)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, v0, v2}, Lcom/hunantv/media/player/h;->a(II)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDebug:Z

    return-void
.end method

.method public setDisableAVDecoderStart(Z)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const v0, 0x7867db09

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->a(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/h;->a(Landroid/view/SurfaceHolder;I)V

    return-void
.end method

.method public setDnsFamilyType(I)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x7839e951

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    return-void
.end method

.method public setDrmInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hunantv/media/drm/MgtvDrmParams$DrmInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->a(Ljava/util/List;)V

    return-void
.end method

.method public setDrmLicensePrepared()V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->E()V

    return-void
.end method

.method public setEnableDnsNoNetStrategy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableDnsNoNetStrategy:Z

    return-void
.end method

.method public setEnableImgoVsr(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableImgoVsr:Z

    const p0, 0x7885be99

    invoke-virtual {v0, p0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    return-void
.end method

.method public setEnableMediacodecSWRender(Z)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x7867da41

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    return-void
.end method

.method public setEnablePlayerMode(Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_LIVE:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    const v2, 0x7849c641

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    invoke-virtual {v0, v2, p1}, Lcom/hunantv/media/player/h;->a(II)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_LOOP:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;->TYPE_PLAYER_MODE_SMOOTH:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayerModeType;

    if-ne p1, v1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setEnableVideoStartTime(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->f(Z)V

    :cond_0
    return-void
.end method

.method public setEnableWanosAudioEffect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isUserAudioEnable:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->autoWanosAudioEffectChoice()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->i(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFlowDataStatistic(Lcom/hunantv/media/player/statistic/FlowDataStatistic;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mFlowDataStatistic:Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    return-void
.end method

.method public setForceHttpDns(Z)Lcom/hunantv/media/player/MgtvMediaPlayer;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceHttpDns:Z

    return-object p0
.end method

.method public setForceKeyframeSeekEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mKeyframeSeekEnable:Z

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x783a357d

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    return-void
.end method

.method public setFrameImageAtTime(Ljava/lang/String;JJIII)V
    .locals 12

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrameImageAtTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v5, p2

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p4

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p6

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p8

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v3, v0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    move-object v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/hunantv/media/player/h;->a(Ljava/lang/String;JJIII)V

    return-void
.end method

.method public setHlsCheckMD5(I)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const v0, 0x78584c9d

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    return-void
.end method

.method public setHttpDnsNeedRetry(Z)Lcom/hunantv/media/player/MgtvMediaPlayer;
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsNeedRetry:Z

    return-object p0
.end method

.method public setInnerAutoRotateEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mInnerAutoRotateEnable:Z

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x7848e221

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setKeyFrameInfoFileBuf([B)I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setKeyFrameInfoFileBuf success"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/h;->a([B)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLastIP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastIP:Ljava/lang/String;

    return-void
.end method

.method public setLiveReopen()V
    .locals 2

    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLiveReopen:Z

    :cond_0
    return-void
.end method

.method public setLiveStartIndex(I)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x7849a126

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    return-void
.end method

.method public setLoopABPlay(ZJJ)V
    .locals 6

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hunantv/media/player/h;->a(ZJJ)V

    return-void
.end method

.method public setLoopSeekPlay(ZI)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->preLoopSeek(Z)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/h;->a(ZI)V

    return-void
.end method

.method public setM3u8Caches(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setM3u8Caches m3u8:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setM3u8Caches ts:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheM3u8Path:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mCacheTsPaths:[Ljava/lang/String;

    return-void
.end method

.method public setMarkMediacodecSWRender(Z)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x7867da42

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    return-void
.end method

.method public setMediacodecRecreateformat(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/h;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public setMgtvFastMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->j(I)V

    :cond_0
    return-void
.end method

.method public setNETIsBroken(Z)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->e(Z)V

    return-void
.end method

.method public setNetAddrinfo(Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;IZ)V
    .locals 7

    .line 1
    sget-object v4, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetAddrinfo(Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;IZLcom/hunantv/media/player/a/a$b;ZZ)V

    return-void
.end method

.method public setNetAddrinfo(Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;IZLcom/hunantv/media/player/a/a$b;Z)V
    .locals 7

    .line 2
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setNetAddrinfo(Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;IZLcom/hunantv/media/player/a/a$b;ZZ)V

    return-void
.end method

.method public setNetAddrinfo(Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;IZLcom/hunantv/media/player/a/a$b;ZZ)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    iput p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoTimeoutMs:I

    invoke-direct {p0, p3, p4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setAsyncDns(ZLcom/hunantv/media/player/a/a$b;)V

    iput-boolean p6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBackJavaDns:Z

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoType:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    sget-object p3, Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;->TYPE_DNS_CACHE:Lcom/hunantv/media/player/MgtvMediaPlayer$AddrinfoType;

    const p4, 0x7848952d

    if-eq p2, p3, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p2}, Lcom/hunantv/media/player/h;->a(II)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p4, p2}, Lcom/hunantv/media/player/h;->a(II)V

    iget p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mAddrinfoTimeoutMs:I

    if-lez p1, :cond_1

    iget-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const p3, 0x7848952e

    invoke-virtual {p2, p3, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const p1, 0x7849eced

    invoke-virtual {p0, p1, p5}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_2
    return-void
.end method

.method public setNetPlayConfig(Lcom/hunantv/media/config/NetPlayConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mNetPlayConfig:Lcom/hunantv/media/config/NetPlayConfig;

    return-void
.end method

.method public setNetdSVCTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mNetdSVCTimeMs:J

    return-void
.end method

.method public setOnAVPlayListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnAVPlayListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

    return-void
.end method

.method public setOnBufferingTimeoutListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnBufferingTimeoutListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingTimeoutListener;

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnBufferingUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnCompletionListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    return-void
.end method

.method public setOnFrameListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnFrameListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnFrameListener;

    return-void
.end method

.method public setOnGetFrameImageListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnGetFrameImageListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnInfoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    return-void
.end method

.method public setOnInfoStringListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnInfoStringListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;

    return-void
.end method

.method public setOnLoadDataListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnLoadDataListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    return-void
.end method

.method public setOnPauseListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnPauseListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    return-void
.end method

.method public setOnPlayerEventListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnPlayerEventListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPlayerEventListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnPreparedListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnPreparedListener;

    return-void
.end method

.method public setOnRecordVideoListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnRecordVideoListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnSeekCompleteListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSeekCompleteListener;

    return-void
.end method

.method public setOnSourceNetHandledListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnSourceNetHandledListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;

    return-void
.end method

.method public setOnStartListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnStartListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    return-void
.end method

.method public setOnSwitchSmoothSourceListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnSwitchSmoothSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    return-void
.end method

.method public setOnSwitchSourceListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnSwitchSourceListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnVideoSizeChangedListener;)V

    return-void
.end method

.method public setOnWarningListener(Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mOnWarningListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;)V

    :cond_0
    return-void
.end method

.method public setP2pDataSource(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;I)V
    .locals 2
    .param p2    # Lcom/hunantv/media/p2p/IP2pTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitching:Z

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitchingComplete:Z

    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;->NONE:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    iput-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHw2SwType:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setPlayerReset(Z)V

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableP2PHttpDns:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsThreadManager:Lcom/hunantv/media/player/a/d;

    invoke-virtual {v0}, Lcom/hunantv/media/player/a/d;->a()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsThreadManager:Lcom/hunantv/media/player/a/d;

    iget-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mHttpDnsNeedRetry:Z

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/a/d;->a(Z)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDnsThreadManager:Lcom/hunantv/media/player/a/d;

    invoke-static {p1}, Lcom/hunantv/media/player/utils/UrlUtil;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/a/d;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-static {p1, v0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->replaceUrlSftcNoP2p(Ljava/lang/String;Lcom/hunantv/media/report/ReportParams;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-static {p3, v0}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->replaceUrlSftcNoP2p(Ljava/lang/String;Lcom/hunantv/media/report/ReportParams;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSourceBefore(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hunantv/media/player/h;->a(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->doReportPV()V

    return-void
.end method

.method public setP2pHttpDns(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mEnableP2PHttpDns:Z

    iput-boolean p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mForceP2pHttpDns:Z

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 2

    const/4 v0, 0x3

    const-string v1, "setPlaybackSpeed"

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->checkInvalidThread(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlaybackSpeed:F

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/subtitle/e;->a(F)V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/h;->a(F)V

    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordMaxPlaySpeed:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordMaxPlaySpeed:F

    :cond_2
    return-void
.end method

.method public setPlaybackStep()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isHardware()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isSupportAMCKeyFrameBackup()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hunantv/media/player/h;->f(I)V

    :cond_1
    return-void
.end method

.method public setPlaybackStep(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->f(I)V

    return-void
.end method

.method public setPlayerFileStartTimeFloatS(F)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x7858bbf1

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(IF)V

    :cond_0
    return-void
.end method

.method public setPlayerPrepareStartPosMs(I)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x7849f4be

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    return-void
.end method

.method public setPlayerSeekAtStartPosMs(I)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x782a3565

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_0
    return-void
.end method

.method public setPreBufferTimeoutMs(I)V
    .locals 3

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreBufferTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferTimeoutMs:I

    :cond_0
    return-void
.end method

.method public setPrepared4StartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V
    .locals 5

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPrepared4StartMode:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$Prepared4StartMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferState:Lcom/hunantv/media/player/utils/SyncStateMachine;

    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/utils/SyncStateMachine;->setEnable(Z)Lcom/hunantv/media/player/utils/SyncStateMachine;

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const p1, 0x783ab0ed

    invoke-virtual {p0, p1, v1}, Lcom/hunantv/media/player/h;->a(II)V

    return-void
.end method

.method public setPropertyLong(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/player/h;->b(IJ)V

    :cond_0
    return-void
.end method

.method public setReadDataSourceType(I)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->b(I)V

    return-void
.end method

.method public setRenderType(Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;)V
    .locals 2

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRenderType:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$RenderType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0xc02c0f9

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/hunantv/media/player/h;->a(II)V

    :goto_0
    return-void
.end method

.method public setReportParams(Lcom/hunantv/media/report/ReportParams;)V
    .locals 3

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReportParams params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/ReportParams;)V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporterSL:Lcom/hunantv/media/report/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/ReportParams;)V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/h;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams;->getVfps()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams;->getVfps()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordVfps:F

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/report/ReportParams;)V

    :cond_3
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object p1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_PRE:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object p1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_MID:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const p1, 0xea60

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mWeakBufferTimeoutMs:I

    :cond_5
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOnWhilePlaying in. screenOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/h;->a(Z)V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setScreenOnWhilePlaying out."

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSeekAutoStartAfterComplete(Z)V
    .locals 1

    const v0, 0x7867fbd9

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setConfig(II)V

    return-void
.end method

.method public setSkipLoopFilter(Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;)V
    .locals 2

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSkipLoopFilterType:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$SkipLoopFilterType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x782a0cc5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const/16 p1, 0x30

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/hunantv/media/player/h;->a(II)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const/16 p1, 0x20

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const/16 p1, 0x10

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const/16 p1, 0x8

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setSmoothKeyFrameInfo([BLjava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSmoothKeyFrameInfoBuf in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchSmoothSourceLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getKeyFrameMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->matchSwitchedSmoothSource(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmoothKeyFrameInfoBuf matchSwitchedSmoothSource key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchedSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    iget-object p2, p2, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->videoFileHash:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/hunantv/media/utils/KeyFrameInfoUtils;->isKeyFrameDataValid([BLjava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setSmoothKeyFrameInfoBuf isKeyFrameDataValid error"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    const/4 p0, -0x2

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setKeyFrameInfoFileBuf([B)I

    move-result p1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothKeyFrameMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return p1

    :cond_2
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmoothKeyFrameInfoBuf not matchSwitchedSmoothSource key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " put into map size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothKeyFrameMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothKeyFrameMap:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setSmoothKeyFrameInfoBuf info error"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public setSubtitleCallback(Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSubtitleCallback:Lcom/hunantv/media/widget/ISubtitle$SubtitleCallback;

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->a(Landroid/view/Surface;)V

    return-void
.end method

.method public setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;I)V

    return-void
.end method

.method public setSurfaceHolder(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/IMgtvRenderView$ISurfaceHolder;I)V

    return-void
.end method

.method public setTimeout(III)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mConnectTimeOutMs:I

    :cond_0
    if-lez p2, :cond_1

    iput p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReceiveDataTimeOutMs:I

    :cond_1
    if-lez p3, :cond_2

    iput p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTimeoutMs:I

    :cond_2
    iget p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mConnectTimeOutMs:I

    if-lez p1, :cond_3

    iget-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const p3, 0xc02c0f5

    invoke-virtual {p2, p3, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_3
    iget p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReceiveDataTimeOutMs:I

    if-lez p1, :cond_4

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const p2, 0xc02c0f6

    invoke-virtual {p0, p2, p1}, Lcom/hunantv/media/player/h;->a(II)V

    :cond_4
    return-void
.end method

.method public setTsFlowTag(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/hunantv/media/report/ReportParams;->setFlowt(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    const v0, 0x78767c59    # 1.9997298E34f

    invoke-virtual {p0, v0, p1}, Lcom/hunantv/media/player/h;->a(ILjava/lang/String;)V

    return-void
.end method

.method public setVideoFrameClockNotifyMs(I)V
    .locals 0

    iput p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyMs:I

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->h(I)V

    :cond_0
    return-void
.end method

.method public setVideoFrameClockNotifyPts(JJ)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyType:I

    iput-wide p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeStart:J

    iput-wide p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mVideoFrameClockNotifyTimeEnd:J

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/h;->a(JJ)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume leftVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",rightVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/hunantv/media/player/h;->a(FF)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setWanosAudioEffectChoice(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isExAudioEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isUserAudioEnable:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWanosAudioEffectChoice value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/h;->i(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setWanosAudioEffectConfig([B)I
    .locals 3

    sget-boolean v0, Lcom/hunantv/media/global/Constants;->FOR_OTT:Z

    const-string v1, "setWanosAudioEffectConfig size:"

    const-string v2, "setWanosAudioEffectConfig null"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/h;->b([B)I

    move-result p0

    return p0

    :cond_1
    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->isExAudioEnable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/h;->b([B)I

    move-result p1

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->autoWanosAudioEffectChoice()V

    return p1

    :cond_3
    :goto_1
    const/16 p0, -0x3e7

    return p0
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start player"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->c()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPreBufferState:Lcom/hunantv/media/player/utils/SyncStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/utils/SyncStateMachine;->changeState(I)V

    iget-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsBuffering:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayTicker:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->resume()V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mBufferTick:Lcom/hunantv/media/player/utils/ExTicker;

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/ExTicker;->resume()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mGifRecorder:Lcom/hunantv/media/recoder/GifRecorder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/recoder/GifRecorder;->resume()V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mTimeProvider:Lcom/hunantv/media/player/subtitle/e;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hunantv/media/player/subtitle/e;->a(Z)V

    :cond_2
    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;->PLAYING:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    iput-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayStatus:Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    return-void
.end method

.method public startAVDecoder()V
    .locals 3

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    const v0, 0x15f93

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/hunantv/media/player/h;->b(IJ)V

    :cond_0
    return-void
.end method

.method public startRecVideo(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v1, p1}, Lcom/hunantv/media/player/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/16 p1, 0x2710

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->callbackRecordError(II)V

    goto :goto_1

    :catch_1
    const/16 p1, 0x2713

    goto :goto_0

    :catch_2
    const/16 p1, 0x2712

    goto :goto_0

    :catch_3
    const/16 p1, 0x2711

    goto :goto_0

    :goto_1
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stop player"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReporter:Lcom/hunantv/media/report/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->resetData()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mIsVideoRendered:Z

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->b()V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->stopTickers()V

    return-void
.end method

.method public stopRecVideo()V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v1}, Lcom/hunantv/media/player/h;->ae()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/16 v1, 0x2710

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->callbackRecordError(II)V

    goto :goto_1

    :catch_1
    const/16 v1, 0x2713

    goto :goto_0

    :catch_2
    const/16 v1, 0x2712

    goto :goto_0

    :catch_3
    const/16 v1, 0x2711

    goto :goto_0

    :goto_1
    return-void
.end method

.method public supportImgoAIQE(Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;)Z
    .locals 2

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    if-eqz p0, :cond_0

    iget v0, p1, Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;->ImgoAIQE_w:I

    iget v1, p1, Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;->ImgoAIQE_h:I

    iget p1, p1, Lcom/hunantv/media/player/MgtvMediaPlayer$ImgoAIQE;->ImgoAIQE_def:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/hunantv/media/player/h;->a(III)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportMaxSpeed(Z)F
    .locals 3

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingOriginUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/UrlUtil;->isLocal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoWidth:I

    iget v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLastVideoHeight:I

    iget v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mRecordVfps:F

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentSourceCodecType()Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    move-result-object p0

    invoke-static {v0, v1, v2, p0, p1}, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter;->getMaxSpeedExt(IIFLcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;Z)F

    move-result p0

    :goto_0
    return p0
.end method

.method public switchLoopSource(ILjava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;I)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mPlayerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x30da4

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->doReportPV()V

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-static {p2, v1}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->replaceUrlSftcNoP2p(Ljava/lang/String;Lcom/hunantv/media/report/ReportParams;)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mReportParams:Lcom/hunantv/media/report/ReportParams;

    invoke-static {p4, p2}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->replaceUrlSftcNoP2p(Ljava/lang/String;Lcom/hunantv/media/report/ReportParams;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setDataSourceBefore(Ljava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;)V

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    iget-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mLoopSourceKey:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    move v3, p1

    move-object v5, p3

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/hunantv/media/player/h;->a(ILjava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const p3, 0x61ae4

    add-int/2addr p1, p3

    invoke-interface {p2, v0, p1}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const p1, 0x61b47

    :goto_1
    invoke-interface {p0, v0, p1}, Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;->onError(II)Z

    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mErrorListener:Lcom/hunantv/media/player/MgtvPlayerListener$OnErrorListener;

    const p1, 0x61b46

    goto :goto_1

    :cond_0
    return-void
.end method

.method public switchLoopSource(Ljava/lang/String;I)V
    .locals 6

    .line 2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->switchLoopSource(ILjava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;I)V

    return-void
.end method

.method public switchP2pVideoSource(ILjava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/hunantv/media/player/h;->a(ILjava/lang/String;Lcom/hunantv/media/p2p/IP2pTask;Ljava/lang/String;III)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitching:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitchingComplete:Z

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchingPrepared:Z

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->doReportSLPV()V

    return-void
.end method

.method public switchSmoothSource(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchSmoothSourceLocker:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "switchSmoothSource is null"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p0}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->bind(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchSmoothSource key is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaSource;->getKey()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v1, p1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitching:Z

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmoothSourcesRecord:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaSource;->getKey()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchingSmoothSource:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitchingComplete:Z

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchingPrepared:Z

    goto :goto_0

    :cond_1
    const v2, 0x61d46

    invoke-direct {p0, p1, v2, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->notifySwitchSmoothSourceFail(Lcom/hunantv/media/player/smooth/SmoothMediaSource;II)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public switchVideoSource(Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mMediaPlayer:Lcom/hunantv/media/player/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/hunantv/media/player/h;->b(Ljava/lang/String;III)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitching:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSourceSwitchingComplete:Z

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSwitchingPrepared:Z

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->doReportSLPV()V

    return-void
.end method
