.class public Lpud;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpud$a;
    }
.end annotation


# instance fields
.field public a:Lpud$a;

.field public b:Z

.field public final c:Lvnd;

.field public d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public e:Z


# direct methods
.method public constructor <init>(Lvnd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpud;->b:Z

    iput-boolean v0, p0, Lpud;->e:Z

    iput-object p1, p0, Lpud;->c:Lvnd;

    return-void
.end method

.method public static synthetic a(Lpud;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    iget-object p0, p0, Lpud;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0
.end method

.method public static synthetic b(Lpud;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    iput-object p1, p0, Lpud;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p1
.end method

.method public static synthetic c(Lpud;Lpud$a;)Lpud$a;
    .locals 0

    iput-object p1, p0, Lpud;->a:Lpud$a;

    return-object p1
.end method

.method public static synthetic g(Lpud;)Lvnd;
    .locals 0

    iget-object p0, p0, Lpud;->c:Lvnd;

    return-object p0
.end method

.method public static synthetic i(Lpud;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lpud;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lpud;)V
    .locals 0

    invoke-virtual {p0}, Lpud;->m()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    invoke-virtual {p0}, Lpud;->m()V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "InterGemini"

    const-string v1, "destroy"

    invoke-virtual {p0, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    iput-object p1, p0, Lpud;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p1, :cond_1

    iget-object p0, p0, Lpud;->c:Lvnd;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1}, Lvnd;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "InterGemini"

    const-string/jumbo v0, "show() --> mAdBean == null"

    invoke-virtual {p0, p1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lpud;->l()V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lpud;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lul4;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_adx_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lpud;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Landroid/content/IntentFilter;
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0}, Lpud;->f()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_click"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_close"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_show"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_pre_imp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_destroy"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public final j()V
    .locals 5

    iget-boolean v0, p0, Lpud;->b:Z

    const-string v1, "InterGemini"

    if-eqz v0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "registerInterstitialAdReceiver: already registered, skip"

    invoke-virtual {p0, v1, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lpud;->h()Landroid/content/IntentFilter;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_1

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lpud;->a:Lpud$a;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lpud;->a:Lpud$a;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpud;->b:Z

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "registerInterstitialAdReceiver"

    invoke-virtual {p0, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerInterstitialAdReceiver error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final l()V
    .locals 4

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "interstitial showNormalAd"

    const-string v2, "InterGemini"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lpud;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string/jumbo v1, "show Ad error: ad data is null"

    invoke-virtual {v0, v2, v1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lpud;->c:Lvnd;

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Lvnd;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_0
    iget-object v0, p0, Lpud;->a:Lpud$a;

    if-nez v0, :cond_1

    new-instance v0, Lpud$a;

    invoke-direct {v0, p0}, Lpud$a;-><init>(Lpud;)V

    iput-object v0, p0, Lpud;->a:Lpud$a;

    :cond_1
    invoke-virtual {p0}, Lpud;->j()V

    iget-object v0, p0, Lpud;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lpud;->c:Lvnd;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/G;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setCloseDelayTime(I)V

    iget-object v0, p0, Lpud;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lpud;->c:Lvnd;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setRetentionEndCardRatio(I)V

    iget-object v0, p0, Lpud;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTemplateHtmlFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpud;->c:Lvnd;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->O(Lvnd;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->i:Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lpud;->c:Lvnd;

    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity$a;->a(Ljava/lang/ref/WeakReference;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    iget-object v1, p0, Lpud;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const-string v3, "mAdBean"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lpud;->f()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BroadCastPrefix"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lvl4;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lzk5;->h()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lzk5;->i(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string/jumbo v1, "show() --> topActivity is not alive"

    invoke-virtual {v0, v2, v1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lpud;->c:Lvnd;

    if-eqz p0, :cond_3

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_TOP_ACTIVITY_IS_NOT_ALIVE:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Lvnd;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_3
    return-void

    :cond_4
    const/high16 p0, 0x10000

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string/jumbo v1, "show() --> startActivity error"

    invoke-virtual {v0, v2, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    const/high16 p0, 0x10010000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public final m()V
    .locals 7

    iget-object v0, p0, Lpud;->a:Lpud$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lpud;->a:Lpud$a;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object v3

    const-string v4, "InterGemini"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterReceiver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v1, p0, Lpud;->a:Lpud$a;

    iput-boolean v0, p0, Lpud;->b:Z

    goto :goto_2

    :goto_1
    iput-object v1, p0, Lpud;->a:Lpud$a;

    iput-boolean v0, p0, Lpud;->b:Z

    throw v2

    :cond_0
    :goto_2
    return-void
.end method
