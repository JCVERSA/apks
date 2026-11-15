.class Lcom/mgtv/ssp/play/PlayerCore$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/play/PlayerCore;->init(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/ssp/play/PlayerCore;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/play/PlayerCore;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$600(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$600(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdClickListener;->onAdClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdComplete()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$400(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$400(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCompleteListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCompleteListener;->onAdComplete()V

    :cond_0
    return-void
.end method

.method public onAdCutDown(I)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$500(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCountdownListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$500(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCountdownListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdCountdownListener;->onAdCountdown(I)V

    :cond_0
    return-void
.end method

.method public onAdEmpty()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$700(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdEmptyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$700(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdEmptyListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdEmptyListener;->onAdEmpty()V

    :cond_0
    return-void
.end method

.method public onAdError(Lcom/mgmi/ssp/AdError;)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$800(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$800(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdErrorListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdErrorListener;->onAdError(Lcom/mgmi/ssp/AdError;)V

    :cond_0
    return-void
.end method

.method public onAdPrepare()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$200(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$200(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdPreparedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdPreparedListener;->onAdPrepared()V

    :cond_0
    return-void
.end method

.method public onAdSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$900(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$900(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdSizeChangedListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdSizeChangedListener;->onAdSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onAdStartPlayering()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$300(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdStartPlayingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$300(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdStartPlayingListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/ssp/play/playsdk/PlayListener$OnAdStartPlayingListener;->onAdStartPlaying()V

    :cond_0
    return-void
.end method

.method public onClickBack()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$100(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$100(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/ssp/d;->a()V

    :cond_0
    return-void
.end method

.method public onClickFullScreen()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$100(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$4;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$100(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/ssp/d;->b()V

    :cond_0
    return-void
.end method
