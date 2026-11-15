.class Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V
    .locals 1
    .param p1    # Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->I(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$OnProgressChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->I(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$OnProgressChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$OnProgressChangeListener;->onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result p2

    mul-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {p2}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$1900(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {p2}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$2000(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$2100(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$2200(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result p0

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 2
    .param p1    # Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$1500(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$1600(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$1702(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;Z)Z

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$1802(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;I)I

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p0

    iput-boolean v1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mProgressChange:Z

    return-void
.end method

.method public onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 5
    .param p1    # Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$000(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$100(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$202(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;Z)Z

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$300(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$400(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onClickSeekbarFullscreen"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$700(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v3}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$500(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v4}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$600(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickSeekbarFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "onClickSeekbar"

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$1000(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v3}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$800(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v4}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$900(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VideoAllCallBack;->onClickSeekbar(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$1100(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result v0

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result v3

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x64

    iget-object v3, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v3}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$1200(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/utils/Debuger;->printfWarning(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v0, "seekbar"

    invoke-static {v0}, Lwz5;->N(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {v0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$1300(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;)I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-virtual {v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->getDuration()I

    move-result v1

    mul-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Lwz5;->W(ZI)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer$1;->this$0:Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    invoke-static {p0, v2}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;->access$1402(Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;Z)Z

    return-void
.end method
