.class final Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;
.super Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

.field private b:Landroid/webkit/WebView;

.field private c:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;Landroid/webkit/WebView;Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->i:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->j:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->k:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->n:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->o:Z

    .line 14
    .line 15
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->b:Landroid/webkit/WebView;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->c:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p2, p1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->d:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->c:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->e:Ljava/lang/String;

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;Lcom/iab/omid/library/mmadbridge/adsession/media/a;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->c:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 2
    const-string v0, "DefaultVideoPlayerStatusListener"

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/q0;->a()Lcom/mbridge/msdk/foundation/tools/q0;

    move-result-object v1

    const-string v2, "h_c_r_w_p_c"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/q0;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->l:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_4

    iget v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->m:I

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->n:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v1, v1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v1

    const/16 v2, 0x11f

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v2, v2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v2, v2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v2, v2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    .line 6
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v2, v2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v2, v2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v2, v2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_1
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/mbridge/msdk/videocommon/download/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/download/a;->v()V

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->n:Z

    .line 10
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 11
    const-string v1, "CDRate is : 0  and start download when player create!"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 12
    :goto_2
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private a(II)V
    .locals 4

    const-string v0, "DefaultVideoPlayerStatusListener"

    .line 14
    :try_start_0
    iget v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->l:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_3

    iget-boolean v3, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->n:Z

    if-nez v3, :cond_3

    if-nez v1, :cond_0

    return-void

    .line 15
    :cond_0
    iget v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->m:I

    if-ltz v1, :cond_3

    mul-int/2addr p2, v1

    .line 16
    div-int/2addr p2, v2

    if-lt p1, p2, :cond_3

    .line 17
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object p1, p1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v1, 0x5e

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object p1, p1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v1, 0x11f

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v1, v1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v1, v1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v1, v1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 19
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v1, v1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v1, v1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v1, v1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    :goto_1
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/mbridge/msdk/videocommon/download/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/download/a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/download/a;->v()V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->n:Z

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CDRate is : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and start download !"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 24
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public b(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->l:I

    .line 2
    .line 3
    iput p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->m:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onBufferingEnd()V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onBufferingEnd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->c:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->o:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "omsdk"

    .line 13
    .line 14
    const-string v1, "bt onBufferingEnd"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->o:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->c:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method public onBufferingStart(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "omsdk"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "bt onBufferingStart1"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onBufferingStart(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->c:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "bt onBufferingStart"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->c:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->c()V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->o:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    return-void
.end method

.method public onBufferingTimeOut(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "mediaplayer prepare timeout"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "play buffering tiemout"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->b:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v0, "code"

    .line 30
    .line 31
    sget v1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->n:I

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    const-string v0, "id"

    .line 37
    .line 38
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    new-instance v0, Lorg/json/JSONObject;

    .line 44
    .line 45
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "data"

    .line 49
    .line 50
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->b:Landroid/webkit/WebView;

    .line 58
    .line 59
    const-string v2, "onPlayerTimeout"

    .line 60
    .line 61
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const/4 v3, 0x2

    .line 70
    invoke-static {p1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v0, v1, v2, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catch_1
    move-exception p1

    .line 79
    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->b:Landroid/webkit/WebView;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_2
    return-void
.end method

.method public onPlayCompleted()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayCompleted()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 7
    .line 8
    const-string v2, "0"

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCompleteTime()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->f(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Landroid/widget/TextView;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "mbridge_reward_video_view_reward_time_complete"

    .line 33
    .line 34
    const-string v3, "string"

    .line 35
    .line 36
    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->f(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Landroid/widget/TextView;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->f(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lcom/mbridge/msdk/playercommon/PlayerView;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->b:Landroid/webkit/WebView;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->d:Ljava/lang/String;

    .line 76
    .line 77
    const-string v2, "onPlayerFinish"

    .line 78
    .line 79
    invoke-static {v0, v2, v1}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->c:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->d()V

    .line 87
    .line 88
    .line 89
    const-string v0, "omsdk"

    .line 90
    .line 91
    const-string v1, "play:  videoEvents.complete()"

    .line 92
    .line 93
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    iget v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->g:I

    .line 97
    .line 98
    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->f:I

    .line 99
    .line 100
    const/4 v0, 0x1

    .line 101
    invoke-static {v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b(Z)Z

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->stop()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public onPlayError(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayError(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->b:Landroid/webkit/WebView;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "code"

    .line 16
    .line 17
    sget v3, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->o:I

    .line 18
    .line 19
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    new-instance v2, Lorg/json/JSONObject;

    .line 28
    .line 29
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "error"

    .line 33
    .line 34
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->d:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    const-string p1, "data"

    .line 43
    .line 44
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->b:Landroid/webkit/WebView;

    .line 52
    .line 53
    const-string v2, "onPlayerFailed"

    .line 54
    .line 55
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/4 v3, 0x2

    .line 64
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p1, v0, v2, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->b:Landroid/webkit/WebView;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    :goto_0
    return-void
.end method

.method public onPlayProgress(II)V
    .locals 9

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayProgress(II)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->c()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v1, v1, v3

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {v1, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(J)J

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 24
    .line 25
    iget-boolean v2, v1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->h:Z

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v2, :cond_c

    .line 29
    .line 30
    iget-object v1, v1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCompleteTime()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 48
    .line 49
    iget-object v5, v5, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, "_"

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v2, v4, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v1, 0x0

    .line 75
    :goto_0
    if-gt v1, p2, :cond_2

    .line 76
    .line 77
    if-gtz v1, :cond_3

    .line 78
    .line 79
    :cond_2
    move v1, p2

    .line 80
    :cond_3
    if-gtz v1, :cond_4

    .line 81
    .line 82
    sub-int v2, p2, p1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    sub-int v2, v1, p1

    .line 86
    .line 87
    :goto_1
    const-string v4, "string"

    .line 88
    .line 89
    if-gtz v2, :cond_6

    .line 90
    .line 91
    if-gtz v1, :cond_5

    .line 92
    .line 93
    const-string v2, "0"

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const-string v6, "mbridge_reward_video_view_reward_time_complete"

    .line 115
    .line 116
    invoke-static {v5, v6, v4}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/lang/String;

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    if-gtz v1, :cond_7

    .line 128
    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v2, ""

    .line 138
    .line 139
    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    goto :goto_3

    .line 147
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    const-string v7, "mbridge_reward_video_view_reward_time_left"

    .line 174
    .line 175
    invoke-static {v6, v7, v4}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Ljava/lang/String;

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :goto_3
    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 187
    .line 188
    iget-object v5, v5, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 189
    .line 190
    if-eqz v5, :cond_b

    .line 191
    .line 192
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getUseSkipTime()I

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-ne v5, v3, :cond_b

    .line 197
    .line 198
    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 199
    .line 200
    iget-object v5, v5, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 201
    .line 202
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVst()I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    const/4 v6, 0x4

    .line 211
    const/16 v7, 0x11f

    .line 212
    .line 213
    const-string v8, "mbridge_reward_video_view_reward_time_left_skip_time"

    .line 214
    .line 215
    if-ge v5, v1, :cond_9

    .line 216
    .line 217
    if-ltz v5, :cond_9

    .line 218
    .line 219
    sub-int/2addr v5, p1

    .line 220
    if-lez v5, :cond_8

    .line 221
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 231
    .line 232
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-static {v5, v8, v4}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    check-cast v2, Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    goto :goto_4

    .line 266
    :cond_8
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 267
    .line 268
    iget-object v1, v1, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 269
    .line 270
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-ne v1, v7, :cond_b

    .line 275
    .line 276
    if-nez v5, :cond_b

    .line 277
    .line 278
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 279
    .line 280
    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->f(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Landroid/widget/TextView;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_9
    sub-int/2addr v1, p1

    .line 289
    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 290
    .line 291
    iget-object v5, v5, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 292
    .line 293
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-ne v5, v7, :cond_b

    .line 298
    .line 299
    if-lez v1, :cond_a

    .line 300
    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 310
    .line 311
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    invoke-static {v5, v8, v4}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    check-cast v1, Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    goto :goto_4

    .line 345
    :cond_a
    if-nez v1, :cond_b

    .line 346
    .line 347
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 348
    .line 349
    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->f(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Landroid/widget/TextView;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 354
    .line 355
    .line 356
    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 357
    .line 358
    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->f(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Landroid/widget/TextView;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    .line 364
    .line 365
    :cond_c
    iput p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->g:I

    .line 366
    .line 367
    iput p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->f:I

    .line 368
    .line 369
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 370
    .line 371
    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->e(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Landroid/widget/ProgressBar;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    iget v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->g:I

    .line 376
    .line 377
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 378
    .line 379
    .line 380
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 381
    .line 382
    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->e(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Landroid/widget/ProgressBar;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    iget v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->f:I

    .line 387
    .line 388
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 389
    .line 390
    .line 391
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->b:Landroid/webkit/WebView;

    .line 392
    .line 393
    if-eqz v1, :cond_d

    .line 394
    .line 395
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 396
    .line 397
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 398
    .line 399
    .line 400
    const-string v2, "code"

    .line 401
    .line 402
    sget v4, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->n:I

    .line 403
    .line 404
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 405
    .line 406
    .line 407
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->d:Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    .line 411
    .line 412
    new-instance v2, Lorg/json/JSONObject;

    .line 413
    .line 414
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 415
    .line 416
    .line 417
    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->d:Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    .line 421
    .line 422
    const-string v0, "progress"

    .line 423
    .line 424
    invoke-static {p1, p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(II)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    .line 430
    .line 431
    const-string v0, "time"

    .line 432
    .line 433
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    .line 439
    .line 440
    const-string v0, "duration"

    .line 441
    .line 442
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    .line 448
    .line 449
    const-string v0, "data"

    .line 450
    .line 451
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    .line 453
    .line 454
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->b:Landroid/webkit/WebView;

    .line 459
    .line 460
    const-string v4, "onPlayerProgressChanged"

    .line 461
    .line 462
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    const/4 v5, 0x2

    .line 471
    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v0, v2, v4, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .line 477
    .line 478
    goto :goto_5

    .line 479
    :catch_0
    move-exception v0

    .line 480
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->b:Landroid/webkit/WebView;

    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->c:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 494
    .line 495
    if-eqz v0, :cond_10

    .line 496
    .line 497
    mul-int/lit8 v1, p1, 0x64

    .line 498
    .line 499
    div-int/2addr v1, p2

    .line 500
    add-int/lit8 v2, p1, 0x1

    .line 501
    .line 502
    mul-int/lit8 v2, v2, 0x64

    .line 503
    .line 504
    div-int/2addr v2, p2

    .line 505
    const/16 v4, 0x19

    .line 506
    .line 507
    const-string v5, "omsdk"

    .line 508
    .line 509
    if-gt v1, v4, :cond_e

    .line 510
    .line 511
    if-ge v4, v2, :cond_e

    .line 512
    .line 513
    iget-boolean v4, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->i:Z

    .line 514
    .line 515
    if-nez v4, :cond_e

    .line 516
    .line 517
    iput-boolean v3, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->i:Z

    .line 518
    .line 519
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->h()V

    .line 520
    .line 521
    .line 522
    const-string v0, "play:  videoEvents.firstQuartile()"

    .line 523
    .line 524
    invoke-static {v5, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    goto :goto_6

    .line 528
    :cond_e
    const/16 v4, 0x32

    .line 529
    .line 530
    if-gt v1, v4, :cond_f

    .line 531
    .line 532
    if-ge v4, v2, :cond_f

    .line 533
    .line 534
    iget-boolean v4, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->j:Z

    .line 535
    .line 536
    if-nez v4, :cond_f

    .line 537
    .line 538
    iput-boolean v3, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->j:Z

    .line 539
    .line 540
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->i()V

    .line 541
    .line 542
    .line 543
    const-string v0, "play:  videoEvents.midpoint()"

    .line 544
    .line 545
    invoke-static {v5, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    goto :goto_6

    .line 549
    :cond_f
    const/16 v4, 0x4b

    .line 550
    .line 551
    if-gt v1, v4, :cond_10

    .line 552
    .line 553
    if-ge v4, v2, :cond_10

    .line 554
    .line 555
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->k:Z

    .line 556
    .line 557
    if-nez v1, :cond_10

    .line 558
    .line 559
    iput-boolean v3, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->k:Z

    .line 560
    .line 561
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->o()V

    .line 562
    .line 563
    .line 564
    const-string v0, "play:  videoEvents.thirdQuartile()"

    .line 565
    .line 566
    invoke-static {v5, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    :cond_10
    :goto_6
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a(II)V

    .line 570
    .line 571
    .line 572
    return-void
.end method

.method public onPlaySetDataSourceError(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlaySetDataSourceError(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayStarted(I)V
    .locals 4

    .line 1
    const-string v0, "omsdk"

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayStarted(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->h:Z

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->e(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Landroid/widget/ProgressBar;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->b:Landroid/webkit/WebView;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->d:Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "onPlayerPlay"

    .line 26
    .line 27
    invoke-static {v1, v3, v2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->h:Z

    .line 32
    .line 33
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->c:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lcom/mbridge/msdk/playercommon/PlayerView;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lcom/mbridge/msdk/playercommon/PlayerView;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/mbridge/msdk/playercommon/PlayerView;->getVolume()F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v1, 0x0

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$d;->c:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 62
    .line 63
    int-to-float p1, p1

    .line 64
    invoke-virtual {v2, p1, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->n(FF)V

    .line 65
    .line 66
    .line 67
    const-string p1, "play2: videoEvents.start()"

    .line 68
    .line 69
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_2
    const/4 p1, 0x0

    .line 81
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b(Z)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method
