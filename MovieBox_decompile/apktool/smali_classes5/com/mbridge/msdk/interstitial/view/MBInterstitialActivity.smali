.class public Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;
.super Lcom/mbridge/msdk/activity/MBBaseActivity;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/mbsignalcommon/mraid/b;


# static fields
.field public static final INTENT_CAMAPIGN:Ljava/lang/String; = "campaign"

.field public static final INTENT_UNIT_ID:Ljava/lang/String; = "unitId"

.field public static final WATI_JS_INVOKE:J = 0x7d0L

.field public static final WEB_LOAD_TIME:J = 0x3a98L


# instance fields
.field private f:Z

.field private g:Z

.field private h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/mbridge/msdk/interstitial/controller/a$d;

.field private l:Z

.field private m:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

.field public mIsMBPage:Z

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mUnitid:Ljava/lang/String;

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Landroid/os/Handler;

.field r:Ljava/lang/Runnable;

.field s:Ljava/lang/Runnable;

.field private t:Lcom/mbridge/msdk/click/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/activity/MBBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->f:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->g:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mIsMBPage:Z

    .line 10
    .line 11
    new-instance v0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$f;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$f;-><init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->q:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$j;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$j;-><init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->r:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance v0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$k;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$k;-><init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->s:Ljava/lang/Runnable;

    .line 31
    .line 32
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->d(I)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->n:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->e(Ljava/lang/String;)V

    .line 11
    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->g(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 13
    const-string p1, "5"

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->a(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/mbridge/msdk/foundation/entity/m;->N:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/mbridge/msdk/foundation/entity/m;->O:I

    :goto_0
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 15
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    iget-object p2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, p1, p2}, Lcom/mbridge/msdk/foundation/same/report/g;->b(Lcom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .line 16
    invoke-virtual {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->getMraidCampaign()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/h;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mbridge/msdk/foundation/same/report/h;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v7

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/mbridge/msdk/foundation/same/report/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->l:Z

    return p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->k()V

    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->f:Z

    return p1
.end method

.method static synthetic d(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Lcom/mbridge/msdk/interstitial/controller/a$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->k:Lcom/mbridge/msdk/interstitial/controller/a$d;

    return-object p0
.end method

.method private e()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->g()V

    .line 3
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->n()V

    .line 4
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->f()V

    .line 5
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h()V

    return-void
.end method

.method static synthetic f(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->q:Landroid/os/Handler;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 2
    :try_start_0
    sget-object v0, Lcom/mbridge/msdk/interstitial/controller/a;->r:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mbridge/msdk/interstitial/controller/a;->r:Ljava/util/Map;

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/mbridge/msdk/interstitial/controller/a;->r:Ljava/util/Map;

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/interstitial/controller/a$d;

    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->k:Lcom/mbridge/msdk/interstitial/controller/a$d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    const-string v1, "unitId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 4
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->m:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    .line 7
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->c()V

    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->m:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    new-instance v1, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$l;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$l;-><init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->a(Lcom/mbridge/msdk/mbsignalcommon/mraid/d$b;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mbridge/msdk/click/c;->a(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i()V

    return-void
.end method

.method private h()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 3
    :cond_0
    :goto_0
    const-string v0, "MBInterstitialActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->goneWebView()V

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    new-instance v1, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$i;-><init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/mbridge/msdk/mbsignalcommon/windvane/c;)V

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:////"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->n:J

    .line 12
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->k:Lcom/mbridge/msdk/interstitial/controller/a$d;

    if-eqz v0, :cond_3

    .line 15
    const-string v1, "htmlurl is null"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/interstitial/controller/a$d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 16
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic h(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->g:Z

    return p0
.end method

.method private i()V
    .locals 9

    .line 2
    const-string v0, "true"

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 4
    const-string v1, "UNDEFINED"

    goto :goto_0

    .line 5
    :cond_0
    const-string v1, "landscape"

    goto :goto_0

    .line 6
    :cond_1
    const-string v1, "portrait"

    goto :goto_0

    .line 7
    :cond_2
    const-string v1, "undefined"

    .line 8
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 9
    :try_start_0
    const-string v3, "orientation"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v1, "locked"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :goto_1
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/k0;->n(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 13
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/k0;->m(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    .line 14
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 16
    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    .line 17
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    .line 18
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 19
    const-string v7, "placementType"

    const-string v8, "Interstitial"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v7, "state"

    const-string v8, "default"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v7, "viewable"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v0, "currentAppOrientation"

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v2, v1, v3}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Landroid/webkit/WebView;FF)V

    .line 24
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v1, v5, v4}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;FF)V

    .line 25
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v1, v6}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    .line 26
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->m:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    invoke-virtual {v2}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->a()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;D)V

    .line 27
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;)V

    :cond_3
    return-void
.end method

.method static synthetic i(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->f:Z

    return p0
.end method

.method static synthetic j(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    new-instance v1, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$d;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$d;-><init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/mbridge/msdk/foundation/entity/m;->N:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget v1, Lcom/mbridge/msdk/foundation/entity/m;->O:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/g;->d(Lcom/mbridge/msdk/foundation/entity/m;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic k(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->m()V

    return-void
.end method

.method private l()V
    .locals 7

    .line 1
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/h;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/h;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v4, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-static {v5}, Lcom/mbridge/msdk/mbsignalcommon/mraid/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    iget-object v6, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 43
    .line 44
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    invoke-virtual/range {v0 .. v6}, Lcom/mbridge/msdk/foundation/same/report/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/c;->a(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->o:Z

    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method private m()V
    .locals 8

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/foundation/controller/a;->a(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    sget v7, Lcom/mbridge/msdk/click/retry/a;->m:I

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x1

    .line 40
    invoke-static/range {v1 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 68
    .line 69
    iget-object v3, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    sget v7, Lcom/mbridge/msdk/click/retry/a;->n:I

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    const/4 v6, 0x1

    .line 79
    invoke-static/range {v1 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 85
    .line 86
    const-string v2, "interstitial"

    .line 87
    .line 88
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/buffer/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$e;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$e;-><init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/d;->a()Lcom/mbridge/msdk/foundation/controller/d;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/d;->e()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 115
    .line 116
    .line 117
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 118
    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-lez v1, :cond_3

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_3

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    move-object v5, v1

    .line 148
    check-cast v5, Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 159
    .line 160
    iget-object v4, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 161
    .line 162
    const/4 v6, 0x0

    .line 163
    const/4 v7, 0x1

    .line 164
    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-string v1, "MBInterstitialActivity"

    .line 173
    .line 174
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_3
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->j:Landroid/widget/ImageView;

    .line 2
    .line 3
    new-instance v1, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$h;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$h;-><init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v1, Lcom/mbridge/msdk/foundation/same/webview/a;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lcom/mbridge/msdk/foundation/same/webview/a;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/same/webview/a;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setCampaignId(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public clickTracking()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y0;->a(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->onIntersClick()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/mbridge/msdk/click/a;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->t:Lcom/mbridge/msdk/click/a;

    .line 29
    .line 30
    new-instance v1, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$c;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$c;-><init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->t:Lcom/mbridge/msdk/click/a;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    return-void

    .line 49
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_2
    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public expand(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->o:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->l()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->p:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->reportPlayableClosed()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public getIntersUnitSetting()Lcom/mbridge/msdk/setting/l;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v1, v3}, Lcom/mbridge/msdk/setting/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/mbridge/msdk/setting/l;->h(Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    .line 34
    .line 35
    .line 36
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    return-object v1

    .line 41
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method public getMraidCampaign()Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    return-object v0
.end method

.method public goneWebView()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$n;-><init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public hideLoading()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$b;-><init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "mbridge_interstitial_wv"

    .line 6
    .line 7
    const-string v2, "id"

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "mbridge_interstitial_pb"

    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/ProgressBar;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "mbridge_interstitial_iv_close"

    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->j:Landroid/widget/ImageView;

    .line 56
    .line 57
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "mbridge_interstitial_activity"

    .line 9
    .line 10
    const-string v1, "layout"

    .line 11
    .line 12
    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->initView()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->e()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p0}, Lcom/mbridge/msdk/foundation/controller/a;->a(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v5, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$g;

    .line 45
    .line 46
    invoke-direct {v5, p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$g;-><init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    .line 47
    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    move-object v2, p0

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/mbridge/msdk/foundation/feedback/a;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->g()V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->f()V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->k:Lcom/mbridge/msdk/interstitial/controller/a$d;

    .line 83
    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    const-string v0, "not found resource"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/interstitial/controller/a$d;->a(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->k:Lcom/mbridge/msdk/interstitial/controller/a$d;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mbridge/msdk/interstitial/controller/a$d;->b()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->t:Lcom/mbridge/msdk/click/a;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/click/a;->a(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->t:Lcom/mbridge/msdk/click/a;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/a;->a(Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->t:Lcom/mbridge/msdk/click/a;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mbridge/msdk/click/a;->c()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->m:Lcom/mbridge/msdk/mbsignalcommon/mraid/d;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/d;->d()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-boolean v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->o:Z

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->l()V

    .line 45
    .line 46
    .line 47
    :cond_3
    sget-object v0, Lcom/mbridge/msdk/interstitial/controller/a;->r:Ljava/util/Map;

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    sget-object v0, Lcom/mbridge/msdk/interstitial/controller/a;->r:Ljava/util/Map;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_4
    iput-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->k:Lcom/mbridge/msdk/interstitial/controller/a$d;

    .line 67
    .line 68
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :goto_2
    return-void
.end method

.method public onIntersClick()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->k:Lcom/mbridge/msdk/interstitial/controller/a$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/interstitial/controller/a$d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 19
    .line 20
    const-string v2, "false"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 19
    .line 20
    const-string v2, "true"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setClickTempSource(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setClickType(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setTriggerClickSource(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->clickTracking()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public reportPlayableClosed()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    new-instance v0, Lcom/mbridge/msdk/foundation/entity/m;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "2000061"

    .line 40
    .line 41
    move-object v1, v0

    .line 42
    invoke-direct/range {v1 .. v7}, Lcom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->h:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    sget v1, Lcom/mbridge/msdk/foundation/entity/m;->N:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    sget v1, Lcom/mbridge/msdk/foundation/entity/m;->O:I

    .line 57
    .line 58
    :goto_0
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->b(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/g;->b(Lcom/mbridge/msdk/foundation/entity/m;Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->p:Z

    .line 76
    .line 77
    :cond_1
    return-void
.end method

.method public setTopControllerPadding(IIIII)V
    .locals 1

    .line 1
    const/high16 p1, 0x41200000    # 10.0f

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-gtz p2, :cond_0

    .line 8
    .line 9
    move p2, p1

    .line 10
    :cond_0
    if-gtz p3, :cond_1

    .line 11
    .line 12
    move p3, p1

    .line 13
    :cond_1
    if-gtz p4, :cond_2

    .line 14
    .line 15
    move p4, p1

    .line 16
    :cond_2
    if-gtz p5, :cond_3

    .line 17
    .line 18
    move p5, p1

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->j:Landroid/widget/ImageView;

    .line 20
    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    const/high16 p1, 0x41c80000    # 25.0f

    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 30
    .line 31
    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    .line 34
    const/16 p1, 0xb

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2, p4, p3, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->j:Landroid/widget/ImageView;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    :cond_4
    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$a;-><init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public showWebView()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$m;-><init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public unload()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->close()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public useCustomClose(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->j:Landroid/widget/ImageView;

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->j:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "mbridge_interstitial_close"

    .line 22
    .line 23
    const-string v2, "drawable"

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
