.class public Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;
.super Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "ShortPlayerDetailFragment"

    const-string v1, "onAutoComplete"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->h0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->playNext()V

    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "ShortPlayerDetailFragment"

    const-string p2, "onPrepared"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    const/4 p1, 0x1

    iget p2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->V:I

    const-string v0, "vd_sdk_videoprepare"

    invoke-static {p0, v0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->i0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Ljava/lang/String;II)V

    return-void
.end method

.method public varargs onRequestVip(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onRequestVip(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "request vip"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ShortPlayerDetailFragment"

    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->j0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    iget-wide p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->F:J

    iget-wide v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    const/4 p0, 0x1

    invoke-static {p1, p2, v0, v1, p0}, Lwz5;->B(JJZ)V

    return-void
.end method

.method public onRetryPlay()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->O0()V

    return-void
.end method

.method public varargs onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "ShortPlayerDetailFragment"

    const-string p2, "onStartPrepared"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->getInstance()Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->mIsLoading:Z

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoControlView;->showLoadingView(Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    iget-wide v0, p1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->G:J

    sput-wide v0, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->h0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->T:Lcom/transsion/widgetslib/view/OSLoadingView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    const-string p1, "vd_sdk_playercoreprepare"

    iget v0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->V:I

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->i0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Ljava/lang/String;II)V

    return-void
.end method

.method public varargs onVideoStartShow(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/listener/VishaPlayerCallBack;->onVideoStartShow(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "ShortPlayerDetailFragment"

    const-string p2, "onVideoStartShow"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->d0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->e0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)J

    move-result-wide v0

    long-to-int p2, v0

    invoke-virtual {p1, p2}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->setPlayPosition(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-virtual {p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->k0()Lcom/transsion/vishaplayersdk/vishaplayer/VishaShortVideoPlayer;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->e0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->seekTo(J)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment$a;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->g0(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Z)V

    :cond_0
    sget-object p0, Lyz5;->a:Ljava/lang/String;

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method
