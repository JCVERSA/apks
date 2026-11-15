.class Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/playsdk/PlayListener$OnVideoFirstFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->setMgtvPlayerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$1;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoFirstFrame()V
    .locals 2

    invoke-static {}, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVideoFirstFrame"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl$1;->this$0:Lcom/transsion/vishaplayersdk/mgtvplayer/MgtvPlayerImpl;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnVideoFirstFrameShow()V

    return-void
.end method
