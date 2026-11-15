.class Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;
.super Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->initVideoBuilderMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->release()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoReset()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->startAfterPrepared()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;->removeFullWindowViewOnly()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->showFull()V

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->getGSYADVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/GSYADVideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getSaveBeforeFullSystemUiVisibility()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->setSaveBeforeFullSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public varargs onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    iget-object p1, p1, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->backToProtVideo()I

    :cond_0
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->getCurrentPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getGSYVideoPlayer()Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->onBackFullscreen()V

    :cond_1
    return-void
.end method

.method public varargs onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$2;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->mADOrientationUtils:Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->getDetailOrientationRotateAuto()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/OrientationUtils;->setEnable(Z)V

    return-void
.end method
