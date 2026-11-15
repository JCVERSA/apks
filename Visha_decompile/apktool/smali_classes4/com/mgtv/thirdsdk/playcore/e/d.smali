.class public Lcom/mgtv/thirdsdk/playcore/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "d"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/mgtv/thirdsdk/playcore/e;

.field private d:Lcom/mgtv/thirdsdk/playcore/c$b;

.field private e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/e;Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object p3, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    return-void
.end method

.method private b()V
    .locals 12

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    invoke-direct {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->videoHeight:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setVideoHeight(I)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->videoWidth:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setVideoWidth(I)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/mgtv/thirdsdk/playcore/e/d;->a:Ljava/lang/String;

    const-string v3, "parse Int error"

    invoke-static {v2, v3, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->videoformat:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "h264"

    const-string v4, "H264"

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v5, v2, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-eqz v5, :cond_3

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->videoformat:Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->videoformat:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->videoformat:Ljava/lang/String;

    const-string v3, "H265"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "h265"

    invoke-virtual {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->setVideoFormat(Ljava/lang/String;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v2}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setDataSourceInfo(Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;)V

    :cond_6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->I:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->d:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/mgtv/ssp/R$string;->chang_definition_failed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "130104"

    invoke-interface {v0, v3, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    if-eqz v2, :cond_8

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    invoke-virtual {v2, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f(Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VOD_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/hunantv/imgo/util/f;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->h(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->t:I

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setStreamKey(I)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    const-string v3, "1"

    const-string v4, ""

    const-string v5, "0"

    if-eqz v2, :cond_d

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz v0, :cond_a

    iget-object v6, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->fstlvlId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/hunantv/media/report/ReportParams;->setCid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->seriesId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/hunantv/media/report/ReportParams;->setBsid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    if-eqz v0, :cond_9

    move-object v0, v3

    goto :goto_2

    :cond_9
    move-object v0, v5

    :goto_2
    invoke-virtual {v2, v0}, Lcom/hunantv/media/report/ReportParams;->setIstry(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    :cond_a
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v2, :cond_b

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    if-eqz v0, :cond_b

    iget-object v2, v0, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->info:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->info:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/u;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/hunantv/media/report/ReportParams;->setCdnip(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    :cond_b
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v5}, Lcom/hunantv/media/report/ReportParams;->setAcp(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v4}, Lcom/hunantv/media/report/ReportParams;->setRefmdid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    if-eqz v0, :cond_c

    move-object v0, v3

    goto :goto_3

    :cond_c
    move-object v0, v5

    :goto_3
    invoke-virtual {v2, v0}, Lcom/hunantv/media/report/ReportParams;->setIstry(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v4}, Lcom/hunantv/media/report/ReportParams;->setDatano(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v4}, Lcom/hunantv/media/report/ReportParams;->setAbt(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    iget v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->t:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/hunantv/media/report/ReportParams;->setDef(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v4}, Lcom/hunantv/media/report/ReportParams;->setBdid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v4}, Lcom/hunantv/media/report/ReportParams;->setCpn(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v2, :cond_d

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v6, v6, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v6, v6, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->url:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v6, v6, Lcom/mgtv/thirdsdk/playcore/e;->B:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hunantv/media/report/ReportParams;->setUrl(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    :cond_d
    :try_start_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v9, v0, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    iget-object v10, v0, Lcom/mgtv/thirdsdk/playcore/e;->N:Ljava/lang/String;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v4}, Lcom/hunantv/media/report/ReportParams;->setPlid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    iget v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->P:I

    invoke-virtual {v2, v0}, Lcom/hunantv/media/report/ReportParams;->setRetryIndex(I)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/hunantv/media/report/ReportParams;->setVid(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v5}, Lcom/hunantv/media/report/ReportParams;->setSwitcher(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v5}, Lcom/hunantv/media/report/ReportParams;->setSubmit(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v2

    iget-object v2, v2, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/hunantv/media/report/ReportParams;->setVideoSession(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v5}, Lcom/hunantv/media/report/ReportParams;->setAp(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {v0, v2}, Lcom/hunantv/media/report/ReportParams;->setVideoType(Lcom/hunantv/media/report/ReportParams$VideoType;)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->S:Z

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    sget-object v6, Lcom/hunantv/media/report/ReportParams$ProxyType;->NO_PROXY:Lcom/hunantv/media/report/ReportParams$ProxyType;

    invoke-virtual {v0, v6}, Lcom/hunantv/media/report/ReportParams;->setProxyType(Lcom/hunantv/media/report/ReportParams$ProxyType;)Lcom/hunantv/media/report/ReportParams;

    goto :goto_4

    :catch_1
    move-exception p0

    goto/16 :goto_9

    :cond_e
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    sget-object v6, Lcom/hunantv/media/report/ReportParams$ProxyType;->ONLY_P2P:Lcom/hunantv/media/report/ReportParams$ProxyType;

    invoke-virtual {v0, v6}, Lcom/hunantv/media/report/ReportParams;->setProxyType(Lcom/hunantv/media/report/ReportParams$ProxyType;)Lcom/hunantv/media/report/ReportParams;

    :goto_4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v6, v0, Lcom/mgtv/thirdsdk/playcore/e;->aw:Z

    if-eqz v6, :cond_f

    const-string v3, "2"

    goto :goto_5

    :cond_f
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v0

    sget-object v6, Lcom/hunantv/media/report/ReportParams$ProxyType;->ONLY_P2P:Lcom/hunantv/media/report/ReportParams$ProxyType;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5

    :cond_10
    move-object v3, v5

    :goto_5
    sput-object v3, Lcom/mgtv/data/aphone/b/a;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setReportParams(Lcom/hunantv/media/report/ReportParams;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->configPlayer()V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_LOADDATA:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v0, v3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setPrepareStartMode(Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v0, :cond_11

    iget-object v4, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->m3u8:Ljava/lang/String;

    :cond_11
    move-object v8, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->av:Z

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v2}, Lcom/hunantv/media/report/ReportParams;->setSptp(I)Lcom/hunantv/media/report/ReportParams;

    goto :goto_6

    :cond_12
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->av:Z

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v1}, Lcom/hunantv/media/report/ReportParams;->setSptp(I)Lcom/hunantv/media/report/ReportParams;

    :goto_6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, v2}, Lcom/hunantv/media/report/ReportParams;->setSptp(I)Lcom/hunantv/media/report/ReportParams;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->framerate:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/hunantv/media/report/ReportParams;->setVfps(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->fileStartTime:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->fileStartTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setFileStartTimeMs(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_13
    :goto_7
    :try_start_4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-static {v9}, Lcom/mgtv/thirdsdk/playcore/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setTsFlowTag(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    :try_start_5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/utils/c;->g(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_14

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->j()J

    move-result-wide v2

    long-to-int v0, v2

    :cond_14
    if-lez v0, :cond_15

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v2}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setStartPosMs(I)V

    :cond_15
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->av:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v6

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v7, v0, Lcom/mgtv/thirdsdk/playcore/e;->k:Ljava/lang/String;

    iget-object v11, v0, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    invoke-virtual/range {v6 .. v11}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->startPlayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_16
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v6

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v7, v0, Lcom/mgtv/thirdsdk/playcore/e;->k:Ljava/lang/String;

    const-string v8, ""

    iget-object v11, v0, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    invoke-virtual/range {v6 .. v11}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->startPlayer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->d:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz v0, :cond_17

    const v2, 0x10002

    invoke-interface {v0, v2}, Lcom/mgtv/thirdsdk/playcore/c$b;->b(I)V

    :cond_17
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->showRenderView()V

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/e/d;->a:Ljava/lang/String;

    const-string v2, "playVideo success"

    invoke-static {v0, v2, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPlayerData.mVideoReportParams:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_a

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/d;->b()V

    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/c$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->d:Lcom/mgtv/thirdsdk/playcore/c$b;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iget v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->O:I

    const/16 v2, -0x3e8

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v1, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    iput v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->O:I

    .line 5
    :cond_0
    iget v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->O:I

    .line 6
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->m:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7
    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v3

    invoke-virtual {v3, p1, v2, v1, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->changeSourceAsync(Ljava/lang/String;III)V

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/d;->c:Lcom/mgtv/thirdsdk/playcore/e;

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->O:I

    return-void
.end method
