.class public interface abstract Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceFlowHandledListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSourceFlowHandledListener"
.end annotation


# static fields
.field public static final ARG_FLOW_CUR_DL_SIZE_LONG:Ljava/lang/String; = "flow_cur_dl_size"

.field public static final ARG_FLOW_ERROR_CODE_INT:Ljava/lang/String; = "flow_error_code"

.field public static final ARG_FLOW_ERROR_TYPE_INT:Ljava/lang/String; = "flow_error_type"

.field public static final ARG_FLOW_FILE_SIZE_LONG:Ljava/lang/String; = "flow_file_size"

.field public static final ARG_FLOW_SEG_DUR_LONG:Ljava/lang/String; = "flow_seg_dur"

.field public static final ARG_FLOW_SEG_INDEX_LONG:Ljava/lang/String; = "flow_seg_index"

.field public static final ARG_FLOW_SEG_NUMS_LONG:Ljava/lang/String; = "flow_seg_nums"

.field public static final ARG_FLOW_SEG_STARTTIME_LONG:Ljava/lang/String; = "flow_seg_starttime"

.field public static final ARG_FLOW_STREAM_TYPE_INT:Ljava/lang/String; = "flow_stream_type"

.field public static final ARG_FLOW_SWITCH_KEY_LONG:Ljava/lang/String; = "flow_switch_key"

.field public static final ARG_FLOW_SWITCH_URL_STRING:Ljava/lang/String; = "flow_switch_url"

.field public static final EVENT_FLOW_INFO_REPORT:I = 0x13301


# virtual methods
.method public abstract onSourceFlowInfoEvent(ILandroid/os/Bundle;)V
.end method
