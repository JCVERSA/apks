.class public Lcom/mgtv/thirdsdk/playcore/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "f"


# instance fields
.field public a:Z

.field b:Lcom/hunantv/imgo/adview/AdTopBar;

.field private c:Ljava/lang/String;

.field private e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

.field private f:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/FrameLayout;

.field private i:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

.field private j:I

.field private k:Lcom/mgtv/thirdsdk/playcore/e;

.field private l:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

.field private m:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdUpdateStatusListener;

.field private n:Lcom/mgtv/thirdsdk/playcore/c$b;

.field private o:Z

.field private p:Z

.field private q:Lcom/mgtv/ssp/authbase/MgSspAccountCallback;

.field private r:Lcom/mgtv/ssp/authbase/c;

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;Lcom/mgtv/thirdsdk/playcore/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->s:Z

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->f:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/e/f;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->p:Z

    return p1
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/thirdsdk/playcore/e/f;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->g:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->l:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    return-object p0
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/e/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 12

    .line 2
    const-string v0, "lyzzz3213131"

    new-instance v9, Lcom/mgmi/ssp/TParams;

    invoke-direct {v9}, Lcom/mgmi/ssp/TParams;-><init>()V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->aH:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->aH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/mgmi/ssp/TParams;->setPosition(I)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v9, v1}, Lcom/mgmi/ssp/TParams;->setPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :goto_1
    const-string v2, ""

    invoke-static {v2}, Lcom/hunantv/imgo/util/b;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/mgmi/ssp/TParams;->setNid(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/hunantv/imgo/util/b;->j()I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/mgmi/ssp/TParams;->setisVip(I)Lcom/mgmi/ssp/TParams;

    .line 9
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    invoke-virtual {v9, v2}, Lcom/mgmi/ssp/TParams;->setIsppreview(I)V

    const/4 v10, 0x1

    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v2, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    if-eqz v3, :cond_4

    .line 11
    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->aj:Lcom/hunantv/imgo/net/entity/LiveSourceEntity;

    if-eqz v2, :cond_3

    .line 12
    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->cameraId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->aj:Lcom/hunantv/imgo/net/entity/LiveSourceEntity;

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->cameraId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 14
    invoke-virtual {v9, v2}, Lcom/mgmi/ssp/TParams;->setVid(I)Lcom/mgmi/ssp/TParams;

    .line 15
    invoke-virtual {v9, v2}, Lcom/mgmi/ssp/TParams;->setCamera_id(I)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 16
    :cond_1
    invoke-virtual {v9, v1}, Lcom/mgmi/ssp/TParams;->setVid(I)Lcom/mgmi/ssp/TParams;

    .line 17
    invoke-virtual {v9, v1}, Lcom/mgmi/ssp/TParams;->setCamera_id(I)V

    .line 18
    :goto_2
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->aj:Lcom/hunantv/imgo/net/entity/LiveSourceEntity;

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->activityId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 19
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->aj:Lcom/hunantv/imgo/net/entity/LiveSourceEntity;

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->activityId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 20
    invoke-virtual {v9, v2}, Lcom/mgmi/ssp/TParams;->setActivityId(I)V

    goto :goto_3

    .line 21
    :cond_2
    invoke-virtual {v9, v1}, Lcom/mgmi/ssp/TParams;->setActivityId(I)V

    .line 22
    :goto_3
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->aj:Lcom/hunantv/imgo/net/entity/LiveSourceEntity;

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/LiveSourceEntity;->adParams:Ljava/lang/String;

    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 24
    invoke-virtual {v9, v2}, Lcom/mgmi/ssp/TParams;->setAdParams(Ljava/lang/String;)V

    .line 25
    :cond_3
    invoke-virtual {v9, v10}, Lcom/mgmi/ssp/TParams;->setChannellive(I)V

    goto :goto_4

    .line 26
    :cond_4
    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 27
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/mgmi/ssp/TParams;->setVid(I)Lcom/mgmi/ssp/TParams;

    .line 28
    :cond_5
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz v2, :cond_a

    .line 29
    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->adParams:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 31
    invoke-virtual {v9, v2}, Lcom/mgmi/ssp/TParams;->setAdParams(Ljava/lang/String;)V

    .line 32
    :cond_6
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->clipId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 33
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->clipId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 34
    invoke-virtual {v9, v2}, Lcom/mgmi/ssp/TParams;->setHid(I)V

    goto :goto_4

    .line 35
    :cond_7
    invoke-virtual {v9, v1}, Lcom/mgmi/ssp/TParams;->setHid(I)V

    .line 36
    :goto_4
    invoke-virtual {v9, v1}, Lcom/mgmi/ssp/TParams;->setIspay(I)V

    .line 37
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->c:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/mgmi/ssp/TParams;->setFrom(Ljava/lang/String;)V

    .line 38
    const-string v1, "initPreRollVideoAd1"

    invoke-static {v0, v1, v10}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 39
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->a:Landroid/app/Activity;

    if-eqz v1, :cond_8

    .line 40
    sget-object v1, Lcom/mgtv/thirdsdk/playcore/e/f;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreRollVideoAd: ppid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hunantv/imgo/data/MgtvPlayerConstants;->MGSDK_PPID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; preid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hunantv/imgo/data/MgtvPlayerConstants;->MGSDK_PREID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params:vid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/mgmi/ssp/TParams;->getVid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": vip="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/mgmi/ssp/TParams;->getISVip()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": preview="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v9}, Lcom/mgmi/ssp/TParams;->getIspreview()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": hid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/mgmi/ssp/TParams;->getHid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v1, v2, v10}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 44
    const-string v1, "initPreRollVideoAd2"

    invoke-static {v0, v1, v10}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 45
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    new-instance v11, Lcom/mgmi/ssp/PreRollVideoAd;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->g:Landroid/widget/FrameLayout;

    sget-object v4, Lcom/hunantv/imgo/data/MgtvPlayerConstants;->MGSDK_PPID:Ljava/lang/String;

    sget-object v5, Lcom/hunantv/imgo/data/MgtvPlayerConstants;->MGSDK_PREID:Ljava/lang/String;

    new-instance v6, Lcom/mgtv/thirdsdk/playcore/e/f$1;

    invoke-direct {v6, p0}, Lcom/mgtv/thirdsdk/playcore/e/f$1;-><init>(Lcom/mgtv/thirdsdk/playcore/e/f;)V

    .line 46
    invoke-static {}, Lcom/hunantv/imgo/util/b;->Y()Z

    move-result v8

    const/4 v7, 0x5

    move-object v1, v11

    invoke-direct/range {v1 .. v9}, Lcom/mgmi/ssp/PreRollVideoAd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/mgmi/ssp/MediaListener;IZLcom/mgmi/ssp/TParams;)V

    iput-object v11, v0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    .line 47
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->ag:Z

    invoke-virtual {v1, v0}, Lcom/mgmi/ssp/PreRollVideoAd;->setLocalPlay(Z)V

    .line 48
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {v0, v10}, Lcom/mgmi/ssp/PreRollVideoAd;->setIsDeatilBtnShow(Z)V

    .line 49
    :cond_8
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz v1, :cond_b

    .line 50
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->n:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz v1, :cond_9

    .line 51
    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->at:Z

    .line 52
    :cond_9
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->resumeByUser()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_a
    return-void

    .line 53
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    sget-object p0, Lcom/mgtv/thirdsdk/playcore/e/f;->d:Ljava/lang/String;

    const-string v0, "adexception"

    invoke-static {p0, v0, v10}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_b
    :goto_6
    return-void
.end method

.method public static synthetic e(Lcom/mgtv/thirdsdk/playcore/e/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->o:Z

    return p0
.end method

.method public static synthetic f(Lcom/mgtv/thirdsdk/playcore/e/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method private f()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->i()V

    return-void
.end method

.method public static synthetic g(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->n:Lcom/mgtv/thirdsdk/playcore/c$b;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->n:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    .line 4
    invoke-interface {v0, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    return-void
.end method

.method private h()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aA:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->n:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz p0, :cond_0

    const/16 v0, 0xb

    .line 4
    invoke-interface {p0, v0}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic h(Lcom/mgtv/thirdsdk/playcore/e/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->h()V

    return-void
.end method

.method private i()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->b:Lcom/hunantv/imgo/adview/AdTopBar;

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/mgtv/thirdsdk/playcore/e/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->f()V

    return-void
.end method

.method public static synthetic j(Lcom/mgtv/thirdsdk/playcore/e/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->g()V

    return-void
.end method

.method public static synthetic k(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdUpdateStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->m:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdUpdateStatusListener;

    return-object p0
.end method

.method public static synthetic l(Lcom/mgtv/thirdsdk/playcore/e/f;)Lcom/mgtv/ssp/authbase/c;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->r:Lcom/mgtv/ssp/authbase/c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->f:Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    .line 5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getAdLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->g:Landroid/widget/FrameLayout;

    .line 6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->e:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getAdControlFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->h:Landroid/widget/FrameLayout;

    .line 7
    :cond_0
    invoke-static {}, Lcom/hunantv/imgo/util/b;->Z()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->s:Z

    return-void
.end method

.method public a(Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->q:Lcom/mgtv/ssp/authbase/MgSspAccountCallback;

    return-void
.end method

.method public a(Lcom/mgtv/ssp/authbase/c;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->r:Lcom/mgtv/ssp/authbase/c;

    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/c$b;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->n:Lcom/mgtv/thirdsdk/playcore/c$b;

    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->l:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdUpdateStatusListener;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->m:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdUpdateStatusListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz p0, :cond_1

    .line 15
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/e;->at:Z

    if-eqz p1, :cond_0

    .line 16
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz p0, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->noticeFullScreen()V

    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->noticeHarlfScreen()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->k()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->a:Z

    const/4 v1, 0x7

    const/4 v2, 0x4

    const-string v3, "lyzzz3213131"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v4, v0, Lcom/mgtv/thirdsdk/playcore/e;->Y:Z

    .line 5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->n:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->h()V

    .line 7
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/e;->b([I)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->n:Lcom/mgtv/thirdsdk/playcore/c$b;

    invoke-interface {v0, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    .line 9
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->f()V

    .line 10
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v5, p0, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    .line 11
    :cond_1
    const-string p0, "IMMERSION_SOURCE.equals(from)"

    invoke-static {v3, p0, v5}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v6, v0, Lcom/mgtv/thirdsdk/playcore/e;->aI:Z

    if-nez v6, :cond_5

    .line 13
    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-nez v1, :cond_3

    .line 14
    iput-boolean v5, v0, Lcom/mgtv/thirdsdk/playcore/e;->ab:Z

    .line 15
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Player isInterruptBeforeAd 11"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    iput-boolean v5, v0, Lcom/mgtv/thirdsdk/playcore/e;->ab:Z

    .line 17
    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->ae:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->Y:Z

    if-nez v0, :cond_4

    .line 18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Player isInterruptBeforeAd 22"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->finish()V

    .line 20
    :cond_4
    :goto_0
    const-string p0, "!mPlayerData.videoVisiable()"

    invoke-static {v3, p0, v5}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    .line 21
    :cond_5
    iput-boolean v4, v0, Lcom/mgtv/thirdsdk/playcore/e;->ab:Z

    .line 22
    iget-boolean v6, v0, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    if-nez v6, :cond_6

    .line 23
    iget-object v6, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iput-object v6, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->i:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz v6, :cond_6

    .line 24
    iget v6, v6, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->time:I

    iput v6, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->j:I

    .line 25
    :cond_6
    iput v5, v0, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    .line 26
    iput-boolean v5, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->o:Z

    .line 27
    iput-boolean v4, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->p:Z

    .line 28
    iput-boolean v4, v0, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    const-wide/16 v6, -0x1

    .line 29
    iput-wide v6, v0, Lcom/mgtv/thirdsdk/playcore/e;->ad:J

    .line 30
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->f()V

    .line 31
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/e/f;->d:Ljava/lang/String;

    const-string v6, "playAd()"

    invoke-static {v0, v6, v5}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 32
    iget-object v6, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v6, v6, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 33
    iget-object v6, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v4, v6, Lcom/mgtv/thirdsdk/playcore/e;->Y:Z

    .line 34
    iget-boolean v6, v6, Lcom/mgtv/thirdsdk/playcore/e;->ae:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->l:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    if-eqz v6, :cond_7

    .line 35
    invoke-interface {v6}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;->onAdComplete()V

    .line 36
    iput-boolean v4, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->p:Z

    .line 37
    :cond_7
    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v4, v4, Lcom/mgtv/thirdsdk/playcore/e;->ae:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->l:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;

    if-eqz v4, :cond_8

    .line 38
    invoke-interface {v4}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;->onAdEmpty()V

    .line 39
    const-string v4, "onNoAd\uff1aonAdEmpty"

    invoke-static {v0, v4, v5}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 40
    :cond_8
    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->n:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz v4, :cond_9

    .line 41
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->h()V

    .line 42
    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mgtv/thirdsdk/playcore/e;->b([I)V

    .line 43
    const-string v2, "onNoAd--------------\uff1a videoId empty"

    invoke-static {v0, v2, v5}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 44
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->n:Lcom/mgtv/thirdsdk/playcore/c$b;

    invoke-interface {v0, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    .line 45
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->f()V

    .line 46
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v5, p0, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    .line 47
    :cond_9
    const-string p0, "mPlayerData.videoId"

    invoke-static {v3, p0, v5}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    .line 48
    :cond_a
    iget-object v6, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v6, v6, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-nez v6, :cond_b

    .line 49
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->e()V

    goto :goto_1

    .line 50
    :cond_b
    const-string v6, "stop()"

    invoke-static {v3, v6, v5}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 51
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->c()V

    .line 52
    const-string v6, "finish"

    invoke-static {v0, v6, v5}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 53
    iget-object v6, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    .line 54
    const-string v6, "initPreRollVideoAd0()"

    invoke-static {v3, v6, v5}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 55
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->e()V

    .line 56
    :goto_1
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v6, v3, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz v6, :cond_d

    .line 57
    iget-boolean v1, v3, Lcom/mgtv/thirdsdk/playcore/e;->ab:Z

    if-nez v1, :cond_c

    .line 58
    invoke-virtual {v6, v5}, Lcom/mgmi/ssp/PreRollVideoAd;->loadAd(Z)V

    .line 59
    :cond_c
    const-string v1, "loadAd"

    invoke-static {v0, v1, v5}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_2

    :cond_d
    if-eqz v3, :cond_f

    .line 60
    filled-new-array {v2}, [I

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mgtv/thirdsdk/playcore/e;->b([I)V

    .line 61
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->n:Lcom/mgtv/thirdsdk/playcore/c$b;

    if-eqz v0, :cond_e

    .line 62
    invoke-interface {v0, v1}, Lcom/mgtv/thirdsdk/playcore/c$b;->a(I)V

    .line 63
    :cond_e
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v5, v0, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    .line 64
    :cond_f
    :goto_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Player isInterruptBeforeAd 33"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v4, p0, Lcom/mgtv/thirdsdk/playcore/e;->ab:Z

    :cond_10
    :goto_3
    return-void
.end method

.method public c()V
    .locals 4

    .line 2
    const-string v0, "stop"

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/mgtv/thirdsdk/playcore/e/f;->d:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 3
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->g:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->f()V

    .line 6
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e/f;->k:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 8
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    sget-object v2, Lcom/mgtv/thirdsdk/playcore/e/f;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_1
    :goto_2
    return-void
.end method
