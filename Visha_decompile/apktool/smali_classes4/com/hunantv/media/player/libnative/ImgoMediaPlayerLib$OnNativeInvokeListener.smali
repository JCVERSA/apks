.class public interface abstract Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$OnNativeInvokeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnNativeInvokeListener"
.end annotation


# static fields
.field public static final ARG_COMPAR_PLAYER_HASH_STRING:Ljava/lang/String; = "player_hash"

.field public static final ARG_COMPAR_RETRY_COUNTER_INT:Ljava/lang/String; = "retry_counter"

.field public static final ARG_COMPAR_SWITCH_KEY_LONG:Ljava/lang/String; = "switch_key"

.field public static final ARG_COMPAR_USER_MSG_STRING:Ljava/lang/String; = "user_msg"

.field public static final ARG_CRTL_RESET_IPLIST_INT:Ljava/lang/String; = "reset_iplist"

.field public static final ARG_CRTL_RETRY_COUNTER_INT:Ljava/lang/String; = "retry_counter"

.field public static final ARG_CRTL_RETRY_CUR_DL_SIZE:Ljava/lang/String; = "cur_dl_dize"

.field public static final ARG_CRTL_RETRY_ERROR_EXTRA_INT:Ljava/lang/String; = "error_code"

.field public static final ARG_CRTL_RETRY_ERROR_WHAT_INT:Ljava/lang/String; = "error_type"

.field public static final ARG_CRTL_RETRY_ERR_IO_TYPE_INT:Ljava/lang/String; = "io_type"

.field public static final ARG_CRTL_RETRY_IS_LAST_INT:Ljava/lang/String; = "is_last"

.field public static final ARG_CRTL_RETRY_SEGMENT_INDEX_INT:Ljava/lang/String; = "segment_index"

.field public static final ARG_CRTL_RETRY_SRC_URL_STRING:Ljava/lang/String; = "src_url"

.field public static final ARG_CRTL_RETRY_URL_STRING:Ljava/lang/String; = "url"

.field public static final ARG_CTRL_ADDR_ERROR_INT:Ljava/lang/String; = "addr_error"

.field public static final ARG_CTRL_ADDR_HANDLE_INT:Ljava/lang/String; = "addr_handle"

.field public static final ARG_CTRL_ADDR_HOSTNAME_STRING:Ljava/lang/String; = "addr_hostname"

.field public static final ARG_CTRL_ADDR_IP_STRING:Ljava/lang/String; = "addr_ip"

.field public static final ARG_CTRL_ADDR_URI_STRING:Ljava/lang/String; = "addr_uri"

.field public static final ARG_CTRL_GET_ENV_KEY:Ljava/lang/String; = "env_key"

.field public static final ARG_CTRL_GET_ENV_VALUE:Ljava/lang/String; = "env_value"

.field public static final ARG_EVENT_AVCODEC_DECORDER_AVNAME_STRING:Ljava/lang/String; = "codec_name"

.field public static final ARG_EVENT_STREAM_INFO_AFRAME_COMING_CLOCK_STRING:Ljava/lang/String; = "afame_coming_info"

.field public static final ARG_EVENT_STREAM_INFO_DNS_ABORT_INFO_STRING:Ljava/lang/String; = "dns_abort_time"

.field public static final ARG_EVENT_STREAM_INFO_DNS_SYNC_BEGIN_STRING:Ljava/lang/String; = "dns_cache_value"

.field public static final ARG_EVENT_STREAM_INFO_DRM_METHOD_NAME_STRING:Ljava/lang/String; = "drm_method"

.field public static final ARG_EVENT_STREAM_INFO_EVENT_IO_TRAFFIC_AVCACHEDTIMEMS_INT:Ljava/lang/String; = "av_cached_time_ms"

.field public static final ARG_EVENT_STREAM_INFO_EVENT_IO_TRAFFIC_DLBYTES_INT:Ljava/lang/String; = "update_dl_bytes"

.field public static final ARG_EVENT_STREAM_INFO_HLS_SEG_SIZE_INFO_STRING:Ljava/lang/String; = "seg_size_info"

.field public static final ARG_EVENT_STREAM_INFO_VFRAME_COMING_CLOCK_STRING:Ljava/lang/String; = "vfame_coming_info"

.field public static final ARG_EVENT_TIME_CONSUME_LONG:Ljava/lang/String; = "time_consume"

.field public static final ARG_HOST_ARRR_ERROR_INT:Ljava/lang/String; = "host_error"

.field public static final ARG_HOST_ARRR_FAMILY_INT:Ljava/lang/String; = "host_family"

.field public static final ARG_HOST_ARRR_HOSTNAME_STRING:Ljava/lang/String; = "host_hostname"

.field public static final ARG_HOST_ARRR_IP_STRING:Ljava/lang/String; = "host_ip"

.field public static final ARG_HOST_ARRR_PORT_INT:Ljava/lang/String; = "host_port"

.field public static final ARG_HTTP_CODE_INT:Ljava/lang/String; = "http_code"

.field public static final ARG_HTTP_ERROR_INT:Ljava/lang/String; = "http_error"

.field public static final ARG_HTTP_FILESIZE_LONG:Ljava/lang/String; = "http_filesize"

.field public static final ARG_HTTP_OFFSET_LONG:Ljava/lang/String; = "http_offset"

.field public static final ARG_HTTP_URL_STRING:Ljava/lang/String; = "http_url"

.field public static final ARG_PLAYER_EVENT_ARG1_INT:Ljava/lang/String; = "event_arg1"

.field public static final ARG_PLAYER_EVENT_ARG2_INT:Ljava/lang/String; = "event_arg2"

.field public static final ARG_PLAYER_EVENT_TYPE_INT:Ljava/lang/String; = "event_type"

.field public static final ARG_SMOOTH_SWITCH_KEY_LONG:Ljava/lang/String; = "smooth_switch_key"

.field public static final ARG_SMOOTH_SWITCH_STREAM_AUDIO_INT:Ljava/lang/String; = "smooth_switch_stream_audio"

.field public static final ARG_SMOOTH_SWITCH_URL_STRING:Ljava/lang/String; = "smooth_switch_url"

.field public static final ARG_SMOOTH_SWITCH_VID_INT:Ljava/lang/String; = "smooth_switch_vid"

.field public static final ARG_TCP_ERROR_INT:Ljava/lang/String; = "error"

.field public static final ARG_TCP_FAMILY_INT:Ljava/lang/String; = "family"

.field public static final ARG_TCP_FD_INT:Ljava/lang/String; = "fd"

.field public static final ARG_TCP_HOSTNAME_STRING:Ljava/lang/String; = "tcp_hostname"

.field public static final ARG_TCP_IP_STRING:Ljava/lang/String; = "ip"

.field public static final ARG_TCP_PORT_INT:Ljava/lang/String; = "port"

.field public static final CTRL_DID_TCP_CLOSE:I = 0x20004

.field public static final CTRL_DID_TCP_OPEN:I = 0x20002

.field public static final CTRL_WILL_ADDRESS_BYNAME:I = 0x20006

.field public static final CTRL_WILL_CHECK_PAUSE_LOAD:I = 0x20030

.field public static final CTRL_WILL_CONCAT_RESOLVE_SEGMENT:I = 0x20007

.field public static final CTRL_WILL_GET_ENV:I = 0x20020

.field public static final CTRL_WILL_HDJ_URL_SWITCH:I = 0x20012

.field public static final CTRL_WILL_HTTP_OPEN:I = 0x20003

.field public static final CTRL_WILL_LIVE_OPEN:I = 0x20005

.field public static final CTRL_WILL_LIVE_RESET:I = 0x20009

.field public static final CTRL_WILL_LOOP_OPEN:I = 0x20010

.field public static final CTRL_WILL_LOOP_RESET:I = 0x20011

.field public static final CTRL_WILL_SMOOTH_SWITCH:I = 0x20070

.field public static final CTRL_WILL_TCP_OPEN:I = 0x20001

.field public static final EVENT_AVCODEC_DECORDER_AUDIO_NAME:I = 0x21

.field public static final EVENT_AVCODEC_DECORDER_VIDEO_NAME:I = 0x20

.field public static final EVENT_DID_HOST_ADDR:I = 0x13202

.field public static final EVENT_DID_HTTP_CLOSE:I = 0x6

.field public static final EVENT_DID_HTTP_OPEN:I = 0x2

.field public static final EVENT_DID_HTTP_SEEK:I = 0x4

.field public static final EVENT_FLOW_INFO_REPORT:I = 0x13301

.field public static final EVENT_STREAM_INFO_AFRAME_COMING_CLOCK:I = 0x51

.field public static final EVENT_STREAM_INFO_DNS_ABORT_INFO:I = 0x31

.field public static final EVENT_STREAM_INFO_DNS_SYNC_BEGIN:I = 0x40

.field public static final EVENT_STREAM_INFO_DRM_METHOD_NAME:I = 0x29

.field public static final EVENT_STREAM_INFO_EVENT_IO_TRAFFIC:I = 0x12204

.field public static final EVENT_STREAM_INFO_HLS_SEG_SIZE_INFO:I = 0x30

.field public static final EVENT_STREAM_INFO_VFRAME_COMING_CLOCK:I = 0x50

.field public static final EVENT_TIME_CONSUME_DNS_ANALYZE:I = 0x10

.field public static final EVENT_TIME_CONSUME_FIND_STREAM:I = 0x13

.field public static final EVENT_TIME_CONSUME_FIRST_BUFFER:I = 0x14

.field public static final EVENT_TIME_CONSUME_HTTP_RESPONSE:I = 0x12

.field public static final EVENT_TIME_CONSUME_PAUSE_NOTIFY:I = 0x16

.field public static final EVENT_TIME_CONSUME_TCP_CONNECT:I = 0x11

.field public static final EVENT_WILL_HOST_ADDR:I = 0x13201

.field public static final EVENT_WILL_HTTP_CLOSE:I = 0x5

.field public static final EVENT_WILL_HTTP_OPEN:I = 0x1

.field public static final EVENT_WILL_HTTP_SEEK:I = 0x3

.field public static final MEDIA_ERROR_ENETUNREACH:I = 0x493e5

.field public static final MEDIA_ERROR_HTTP_BAD_REQUEST_400:I = 0x49570

.field public static final MEDIA_ERROR_HTTP_OTHER_4XX:I = 0x495d3

.field public static final MEDIA_ERROR_HTTP_SERVER_INTERNAL_ERROR_500:I = 0x495d4

.field public static final MEDIA_ERROR_HTTP_SERVER_OTHER_5XX:I = 0x49637

.field public static final MEDIA_ERROR_TCP_HOSTNAME_RESOLVE_ERROR:I = 0x49638

.field public static final PLAYER_EVENT_ONINFO:I = 0x20050


# virtual methods
.method public abstract onNativeInvoke(ILandroid/os/Bundle;)Z
.end method
