.class public final Lcom/cloud/hisavana/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwsd;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lxnd;

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NoOpVideoPlayer"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/h;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/h;->c:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/h;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/h;->e:Z

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V
    .locals 0

    const-string p1, "path"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/h;->a:Ljava/lang/String;

    const-string p3, "ExoPlayer unavailable, notifying error via listener"

    invoke-virtual {p1, p2, p3}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/h;->b:Lxnd;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/cloud/hisavana/sdk/p;->e:Lcom/cloud/hisavana/sdk/p$a;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p$a;->a()Lcom/cloud/hisavana/sdk/p;

    move-result-object p1

    invoke-interface {p0, p1}, Lxnd;->a(Lcom/cloud/hisavana/sdk/p;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lxnd;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/h;->b:Lxnd;

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/h;->c:Z

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/h;->b:Lxnd;

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/h;->c:Z

    return-void
.end method
