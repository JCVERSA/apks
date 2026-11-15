.class public interface abstract Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSourceNetHandledListener"
.end annotation


# static fields
.field public static final ARG_COMPAR_PLAYER_HASH_STRING:Ljava/lang/String; = "player_hash"

.field public static final ARG_COMPAR_RETRY_COUNTER_INT:Ljava/lang/String; = "retry_counter"

.field public static final ARG_COMPAR_SWITCH_KEY_LONG:Ljava/lang/String; = "switch_key"

.field public static final ARG_COMPAR_USER_MSG_STRING:Ljava/lang/String; = "user_msg"

.field public static final ARG_CRTL_LIVE_RETRY_COUNTER_INT:Ljava/lang/String; = "live_retry_counter"

.field public static final ARG_CRTL_LIVE_RETRY_ERROR_EXTRA_INT:Ljava/lang/String; = "live_error_code"

.field public static final ARG_CRTL_LIVE_RETRY_ERROR_WHAT_INT:Ljava/lang/String; = "live_error_type"

.field public static final ARG_CRTL_LIVE_RETRY_ERR_IO_TYPE_INT:Ljava/lang/String; = "live_io_type"

.field public static final ARG_CRTL_LIVE_RETRY_IS_LAST_INT:Ljava/lang/String; = "live_is_last"

.field public static final ARG_CRTL_LIVE_RETRY_SEGMENT_INDEX_INT:Ljava/lang/String; = "live_segment_index"

.field public static final ARG_CRTL_LIVE_RETRY_SRC_URL_STRING:Ljava/lang/String; = "live_src_url"

.field public static final ARG_CRTL_LIVE_RETRY_URL_STRING:Ljava/lang/String; = "live_url"

.field public static final ARG_CRTL_LOOP_RETRY_COUNTER_INT:Ljava/lang/String; = "loop_retry_counter"

.field public static final ARG_CRTL_LOOP_RETRY_ERROR_EXTRA_INT:Ljava/lang/String; = "loop_error_code"

.field public static final ARG_CRTL_LOOP_RETRY_ERROR_WHAT_INT:Ljava/lang/String; = "loop_error_type"

.field public static final ARG_CRTL_LOOP_RETRY_ERR_IO_TYPE_INT:Ljava/lang/String; = "loop_io_type"

.field public static final ARG_CRTL_LOOP_RETRY_IS_LAST_INT:Ljava/lang/String; = "loop_is_last"

.field public static final ARG_CRTL_LOOP_RETRY_SEGMENT_INDEX_INT:Ljava/lang/String; = "loop_segment_index"

.field public static final ARG_CRTL_LOOP_RETRY_SRC_URL_STRING:Ljava/lang/String; = "loop_src_url"

.field public static final ARG_CRTL_LOOP_RETRY_URL_STRING:Ljava/lang/String; = "loop_url"

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

.field public static final ARG_CTRL_ARRR_DNS_TYPE_INT:Ljava/lang/String; = "addr_dns_type"

.field public static final ARG_CTRL_GET_ENV_KEY:Ljava/lang/String; = "env_key"

.field public static final ARG_CTRL_GET_ENV_VALUE:Ljava/lang/String; = "env_value"

.field public static final ARG_EVENT_TIME_CONSUME_LONG:Ljava/lang/String; = "time_consume"

.field public static final ARG_HOST_ARRR_DNS_TIME_INT:Ljava/lang/String; = "host_dns_time"

.field public static final ARG_HOST_ARRR_DNS_TYPE_INT:Ljava/lang/String; = "host_dns_type"

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

.field public static final ARG_SMOOTH_SWITCH_KEY_LONG:Ljava/lang/String; = "smooth_switch_key"

.field public static final ARG_SMOOTH_SWITCH_MODE_INT:Ljava/lang/String; = "smooth_switch_mode"

.field public static final ARG_SMOOTH_SWITCH_NEED_RETRY_INT:Ljava/lang/String; = "smooth_switch_need_retry"

.field public static final ARG_SMOOTH_SWITCH_RETRY_KEY_LONG:Ljava/lang/String; = "smooth_switch_retry_key"

.field public static final ARG_SMOOTH_SWITCH_SMOOTH_LEVEL_INT:Ljava/lang/String; = "smooth_switch_smooth_level"

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

.field public static final EVENT_DID_HOST_ADDR:I = 0x13202

.field public static final EVENT_DID_HTTP_CLOSE:I = 0x6

.field public static final EVENT_DID_HTTP_OPEN:I = 0x2

.field public static final EVENT_DID_HTTP_SEEK:I = 0x4

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

.field public static final MGTVMEDIA_WHAT_ERROR_400400:I = 0x61c10

.field public static final MGTVMEDIA_WHAT_ERROR_4004XX:I = 0x61c73

.field public static final MGTVMEDIA_WHAT_ERROR_400500:I = 0x61c74

.field public static final MGTVMEDIA_WHAT_ERROR_4005XX:I = 0x61cd7


# virtual methods
.method public abstract onSourceNetCtrl(ILandroid/os/Bundle;)Z
.end method

.method public abstract onSourceNetEvent(ILandroid/os/Bundle;)V
.end method
