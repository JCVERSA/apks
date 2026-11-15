.class final Lcom/mgmi/ssp/PreRollVideoAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/platform/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/ssp/PreRollVideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/hunantv/media/widget/MgtvVideoView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvVideoView;)V
    .locals 1
    .param p1    # Lcom/hunantv/media/widget/MgtvVideoView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$a;->b:Lcom/hunantv/media/widget/MgtvVideoView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AdPlayer\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$a;->a:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u5e7f\u544a\u5f02\u6b65"

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd$a;->b:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MgtvVideoView 528@@@@@stopAd"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$a;->b:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->stop()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/mgmi/ssp/PreRollVideoAd$a;->a:Z

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setStatus\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u5e7f\u544a\u5f02\u6b65"

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd$a;->b:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MgtvVideoView 536pauseAd"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$a;->b:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/ssp/PreRollVideoAd$a;->a:Z

    iget-object v0, p0, Lcom/mgmi/ssp/PreRollVideoAd$a;->b:Lcom/hunantv/media/widget/MgtvVideoView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MgtvVideoView resumeAd"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$a;->b:Lcom/hunantv/media/widget/MgtvVideoView;

    invoke-virtual {p0}, Lcom/hunantv/media/widget/MgtvVideoView;->start()V

    :cond_0
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/mgmi/ssp/PreRollVideoAd;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MgtvVideoView getAdPlayerView"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/ssp/PreRollVideoAd$a;->b:Lcom/hunantv/media/widget/MgtvVideoView;

    return-object p0
.end method
