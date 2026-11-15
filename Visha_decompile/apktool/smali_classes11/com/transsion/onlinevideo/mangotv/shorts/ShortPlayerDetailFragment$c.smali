.class public Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo18$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->S0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$c;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$c;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->h0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->playNext()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$c;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->h0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->flushPip(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$c;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->h0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->playPre()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$c;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->h0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->flushPip(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$c;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoWndView;->isAdPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$c;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$c;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->h0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$c;->a:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoPlayer;->getGSYVideoManager()Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYVideoViewBridge;->isPlaying()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->flushPip(Z)V

    :cond_0
    return-void
.end method
