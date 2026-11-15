.class public interface abstract Lcom/hunantv/media/player/MgtvPlayerListener$OnLoopSwitchSourceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLoopSwitchSourceListener"
.end annotation


# static fields
.field public static final LOOPSWITCH_EXEC_FAIL_FERR:I = 0x17

.field public static final LOOPSWITCH_EXEC_FAIL_MERR:I = 0x16

.field public static final LOOPSWITCH_EXEC_FAIL_PTR:I = 0x15

.field public static final LOOPSWITCH_EXEC_QUICK_FAIL:I = 0x1e

.field public static final LOOPSWITCH_INFO_ADATA_DECODER:I = 0x4

.field public static final LOOPSWITCH_INFO_ADATA_PREPARED:I = 0x2

.field public static final LOOPSWITCH_INFO_AUDIO_FPRAPARE:I = 0x6

.field public static final LOOPSWITCH_INFO_AUDIO_RENDER:I = 0x8

.field public static final LOOPSWITCH_INFO_EXEC_SUCCESS:I = 0x14

.field public static final LOOPSWITCH_INFO_START:I = 0x0

.field public static final LOOPSWITCH_INFO_STARTED:I = 0xa

.field public static final LOOPSWITCH_INFO_SWITCHING:I = 0x1

.field public static final LOOPSWITCH_INFO_VDATA_DECODER:I = 0x5

.field public static final LOOPSWITCH_INFO_VDATA_PREPARED:I = 0x3

.field public static final LOOPSWITCH_INFO_VIDEO_FPRAPARE:I = 0x7

.field public static final LOOPSWITCH_INFO_VIDEO_RENDER:I = 0x9


# virtual methods
.method public abstract onLoopSwitchSourceComplete(Ljava/lang/String;II)V
.end method

.method public abstract onLoopSwitchSourceFail(Ljava/lang/String;II)V
.end method

.method public abstract onLoopSwitchSourceInfo(Ljava/lang/String;II)V
.end method
