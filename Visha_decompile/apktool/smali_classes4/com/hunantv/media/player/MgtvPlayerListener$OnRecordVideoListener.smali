.class public interface abstract Lcom/hunantv/media/player/MgtvPlayerListener$OnRecordVideoListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRecordVideoListener"
.end annotation


# static fields
.field public static final REC_VIDEO_ERROR_APEND_FRAME_ERR:I = 0x14

.field public static final REC_VIDEO_ERROR_BASE_ERR:I = 0x2710

.field public static final REC_VIDEO_ERROR_DEINIT_ERR:I = 0x1e

.field public static final REC_VIDEO_ERROR_ILLEGAL_ARGUMENT_ERR:I = 0x2712

.field public static final REC_VIDEO_ERROR_ILLEGAL_STATUS_ERR:I = 0x2713

.field public static final REC_VIDEO_ERROR_INIT_ERR:I = 0xa

.field public static final REC_VIDEO_ERROR_IO_ERR:I = 0x2711

.field public static final REC_VIDEO_INFO_ASTART:I = 0x15

.field public static final REC_VIDEO_INFO_END:I = 0x1e

.field public static final REC_VIDEO_INFO_PREPARED:I = 0xa

.field public static final REC_VIDEO_INFO_VSTART:I = 0x14


# virtual methods
.method public abstract onRecordVideoErr(II)V
.end method

.method public abstract onRecordVideoInfo(II)V
.end method
