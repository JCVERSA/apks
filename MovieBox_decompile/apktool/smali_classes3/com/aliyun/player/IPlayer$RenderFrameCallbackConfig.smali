.class public Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderFrameCallbackConfig"
.end annotation


# instance fields
.field public mAudioDataAddr:Z

.field public mVideoDataAddr:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;->mVideoDataAddr:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/aliyun/player/IPlayer$RenderFrameCallbackConfig;->mAudioDataAddr:Z

    .line 9
    .line 10
    return-void
.end method
