.class Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/widget/MgtvAbstractVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchSmoothSourceError(Lcom/hunantv/media/player/smooth/SmoothMediaSource;II)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnSwitchSmoothSourceListener:Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;->onSwitchSmoothSourceError(Lcom/hunantv/media/player/smooth/SmoothMediaSource;II)V

    :cond_0
    return-void
.end method

.method public onSwitchSmoothSourceFail(Lcom/hunantv/media/player/smooth/SmoothMediaSource;II)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnSwitchSmoothSourceListener:Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;->onSwitchSmoothSourceFail(Lcom/hunantv/media/player/smooth/SmoothMediaSource;II)V

    :cond_0
    return-void
.end method

.method public onSwitchSmoothSourceInfo(Lcom/hunantv/media/player/smooth/SmoothMediaSource;I)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnSwitchSmoothSourceListener:Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;->onSwitchSmoothSourceInfo(Lcom/hunantv/media/player/smooth/SmoothMediaSource;I)V

    :cond_0
    return-void
.end method

.method public onSwitchSmoothSourceSuccess(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaSource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    iput-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaSource;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mCurrentUri:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaSource;->getProxyUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    :goto_1
    iput-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mProxyUri:Landroid/net/Uri;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaSource;->getProxyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaSource;->getP2pTask()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object v1

    iput-object v1, v0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mMainP2pTask:Lcom/hunantv/media/p2p/IP2pTask;

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    invoke-interface {v0}, Lcom/hunantv/media/widget/IVideoView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSwitchSmoothSourceSuccess then change media mode"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getSwitchMod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    :goto_3
    invoke-virtual {v0, v1}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->setLastMediaMode(I)V

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    const/4 v1, 0x0

    goto :goto_3

    :goto_4
    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnSwitchSmoothSourceListener:Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;->onSwitchSmoothSourceSuccess(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)V

    :cond_4
    return-void
.end method

.method public onSwitchSmoothSourceWillUpdate(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$4;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->mOnSwitchSmoothSourceListener:Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/IVideoView$OnSwitchSmoothSourceListener;->onSwitchSmoothSourceWillUpdate(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
