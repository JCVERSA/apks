.class Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;
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

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mCurrentState:I

    if-eqz v1, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isShortVideo()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget-object v2, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget-object v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mHideKey:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mIfCurrentIsFullscreen:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView$5;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->mVideoAllCallBack:Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onEnterImmerse()V

    :cond_2
    return-void
.end method
