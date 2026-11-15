.class public interface abstract Lcom/hunantv/media/player/MgtvPlayerListener$OnGetFrameImageListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGetFrameImageListener"
.end annotation


# static fields
.field public static final GET_FRAME_IMAGE_ERROR:I = 0x2

.field public static final GET_FRAME_IMAGE_FAIL:I = 0x3

.field public static final GET_FRAME_IMAGE_START:I = 0x0

.field public static final GET_FRAME_IMAGE_SUCCESS:I = 0x1


# virtual methods
.method public abstract onGetFrameImageInfo(IILjava/lang/String;)V
.end method

.method public abstract onGetFrameImageStatus(II)V
.end method
