.class public Lcom/mgtv/thirdsdk/playcore/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mgtv/thirdsdk/playcore/e;

.field private c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

.field private d:Lcom/mgtv/thirdsdk/playcore/c$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/e;Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object p3, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->al:Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_1

    .line 3
    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->LIVE:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/report/ReportParams;->setVideoType(Lcom/hunantv/media/report/ReportParams$VideoType;)Lcom/hunantv/media/report/ReportParams;

    .line 4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->an:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hunantv/media/report/ReportParams;->setVid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    .line 5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->al:Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/u;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hunantv/media/report/ReportParams;->setCdnip(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    .line 6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/report/ReportParams;->setVideoSession(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    .line 7
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    iget v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->am:I

    invoke-virtual {v1, v0}, Lcom/hunantv/media/report/ReportParams;->setCaseType(I)Lcom/hunantv/media/report/ReportParams;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->b:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v1, 0x2

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    .line 9
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->al:Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;

    iget-object v1, v1, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->k(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    .line 11
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->configPlayer()V

    .line 12
    const-string v0, "H265"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->al:Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;

    iget-object v1, v1, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->videoFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setForceDecodeMode(Z)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setForceDecodeMode(Z)V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setLiveMode(Z)V

    .line 16
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->c:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->al:Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;

    iget-object v2, p0, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->url:Ljava/lang/String;

    iget-object v6, p0, Lcom/hunantv/imgo/net/entity/LiveItemSourceEntity;->sid:Ljava/lang/String;

    const-string v3, ""

    move-object v4, v5

    invoke-virtual/range {v1 .. v6}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->startPlayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->b:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->ai:Z

    if-eqz v0, :cond_4

    .line 18
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->d:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_5

    .line 19
    const-string v0, "170004"

    const-string v1, "\u5207\u6362\u6e05\u6670\u5ea6\u5931\u8d25"

    invoke-interface {p0, v0, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_4
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->d:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_5

    .line 21
    const-string v0, "170001"

    const-string v1, "\u65e0\u53ef\u7528\u6e90"

    invoke-interface {p0, v0, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/c$b;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/b;->d:Lcom/mgtv/thirdsdk/playcore/c$b;

    return-void
.end method
