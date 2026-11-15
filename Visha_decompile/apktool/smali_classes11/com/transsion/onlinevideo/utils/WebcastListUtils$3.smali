.class Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/utils/WebcastListUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/onlinevideo/utils/WebcastListUtils;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;->this$0:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;->this$0:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->m(Lcom/transsion/onlinevideo/utils/WebcastListUtils;Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;->this$0:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;->this$0:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->c(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;->this$0:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->i(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;->this$0:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->onVideoResume()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;->this$0:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getPreLoading()Lcom/transsion/vishaplayersdk/widgets/LoadingLayer;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;->this$0:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;->this$0:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->e(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;->this$0:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->X()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;->this$0:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->k(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->getLiveMuteButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;->this$0:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {v0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/onlinevideo/utils/WebcastListUtils$3;->this$0:Lcom/transsion/onlinevideo/utils/WebcastListUtils;

    invoke-static {p0}, Lcom/transsion/onlinevideo/utils/WebcastListUtils;->d(Lcom/transsion/onlinevideo/utils/WebcastListUtils;)Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBanner;->showMuteButton(Z)V

    :cond_2
    return-void
.end method
