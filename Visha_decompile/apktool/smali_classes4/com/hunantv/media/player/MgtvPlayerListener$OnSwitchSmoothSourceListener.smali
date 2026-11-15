.class public interface abstract Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSwitchSmoothSourceListener"
.end annotation


# static fields
.field public static final MSG_SMOOTH_SWITCH_INFO_SWITCHED_DELAY:I = 0x14

.field public static final SMOOTH_SWITCH_INFO_ADATA_DECODER:I = 0x6

.field public static final SMOOTH_SWITCH_INFO_ADATA_PREPARED:I = 0x4

.field public static final SMOOTH_SWITCH_INFO_AUDIO_FPRAPARE:I = 0x8

.field public static final SMOOTH_SWITCH_INFO_AUDIO_RENDER:I = 0xa

.field public static final SMOOTH_SWITCH_INFO_DID_START:I = 0x2

.field public static final SMOOTH_SWITCH_INFO_EXEC_SUCCESS:I = 0x1

.field public static final SMOOTH_SWITCH_INFO_SWITCHING:I = 0x3

.field public static final SMOOTH_SWITCH_INFO_VDATA_DECODER:I = 0x7

.field public static final SMOOTH_SWITCH_INFO_VDATA_PREPARED:I = 0x5

.field public static final SMOOTH_SWITCH_INFO_VIDEO_FPRAPARE:I = 0x9

.field public static final SMOOTH_SWITCH_INFO_VIDEO_RENDER:I = 0xb

.field public static final SMOOTH_SWITCH_INFO_WILL_START:I


# virtual methods
.method public abstract onSwitchSmoothSourceError(Lcom/hunantv/media/player/smooth/SmoothMediaSource;II)V
.end method

.method public abstract onSwitchSmoothSourceFail(Lcom/hunantv/media/player/smooth/SmoothMediaSource;II)V
.end method

.method public abstract onSwitchSmoothSourceInfo(Lcom/hunantv/media/player/smooth/SmoothMediaSource;I)V
.end method

.method public abstract onSwitchSmoothSourceSuccess(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)V
.end method

.method public abstract onSwitchSmoothSourceWillUpdate(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)Z
.end method
