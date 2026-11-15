.class Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_5

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mPlayerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    sget-object v1, Lcom/transsion/vishaplayersdk/base/config/PlayerType;->MGTV_PLAYER:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setTextAndProgress(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    if-ne v1, v2, :cond_3

    iget-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mbPreviewVideo:Z

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isLive()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-wide v0, Lcom/transsion/vishaplayersdk/base/config/PlayerStatisticInfo;->playRealDuration:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/transsion/vishaplayersdk/base/config/PlayerStatisticInfo;->playRealDuration:J

    :cond_5
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    if-eqz v1, :cond_6

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method
