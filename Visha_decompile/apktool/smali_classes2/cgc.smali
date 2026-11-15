.class public Lcgc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcgc$c;
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile c:Ljava/lang/String;

.field public volatile d:J

.field public volatile e:J

.field public volatile f:Ljava/lang/String;

.field public volatile g:Ljava/lang/String;

.field public volatile h:Z

.field public volatile i:Ljava/lang/Boolean;

.field public volatile j:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcgc;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcgc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iput-boolean v1, p0, Lcgc;->h:Z

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcgc;->i:Ljava/lang/Boolean;

    .line 7
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string v2, "hisavanaRequestUrl"

    invoke-virtual {v0, v2}, Lo9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgc;->f:Ljava/lang/String;

    .line 8
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string/jumbo v2, "show_ru_style"

    invoke-virtual {v0, v2}, Lo9;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcgc;->h:Z

    .line 9
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string v2, "is_om_id_enabled"

    invoke-virtual {v0, v2, v1}, Lo9;->d(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcgc;->i:Ljava/lang/Boolean;

    .line 10
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string v1, "cloudConfigExtInfo"

    invoke-virtual {v0, v1}, Lo9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcgc;->i(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->parseCustomTabData()V

    .line 13
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->parseABTestData()V

    .line 14
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->parseCommonConfigData()V

    return-void
.end method

.method public synthetic constructor <init>(Lcgc$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcgc;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcgc;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcgc;->m(I)V

    return-void
.end method

.method public static synthetic b(Lcgc;J)J
    .locals 0

    iput-wide p1, p0, Lcgc;->d:J

    return-wide p1
.end method

.method public static synthetic d(Lcgc;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcgc;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic g(Lcgc;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcgc;->h(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;IZ)V

    return-void
.end method

.method public static synthetic k(Lcgc;)J
    .locals 2

    iget-wide v0, p0, Lcgc;->d:J

    return-wide v0
.end method

.method public static n()Lcgc;
    .locals 1

    invoke-static {}, Lcgc$c;->a()Lcgc;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic o(Lcgc;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcgc;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcgc;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string v1, "dcdnUrl"

    invoke-virtual {v0, v1}, Lo9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgc;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcgc;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcgc;->g:Ljava/lang/String;

    const-string v1, "blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lp9;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lp9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgc;->g:Ljava/lang/String;

    :cond_2
    iget-object p0, p0, Lcgc;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final e(I)V
    .locals 8

    const-string/jumbo v0, "ssp_sdk_version_code"

    const-string v1, "ConfigManager"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcgc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lo9;->g(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lmd8;->m()I

    move-result v3

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lo9;->p(Ljava/lang/String;I)V

    if-eqz v2, :cond_4

    if-lt v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string/jumbo v5, "ssp_cloud_config_raw_response"

    invoke-virtual {v0, v5}, Lo9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "checkVersionUpgradeAndReparse: no cached raw response, skip"

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    const-class v5, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;

    invoke-static {v0, v5}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->getCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {}, Likd;->b()Likd;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkVersionUpgradeAndReparse: re-parsing for version upgrade "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0, p1, v4}, Lcgc;->h(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    :goto_0
    return-void

    :goto_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkVersionUpgradeAndReparse failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final f(ILjava/lang/String;Z)V
    .locals 9

    iget-object v0, p0, Lcgc;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "ConfigManager"

    if-eqz v0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "config is requesting"

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcgc;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->L(ILjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Lr7;

    invoke-direct {v0}, Lr7;-><init>()V

    new-instance v1, Lcgc$b;

    move-object v2, v1

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcgc$b;-><init>(Lcgc;JILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lr7;->m(Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;)Lr7;

    move-result-object p1

    new-instance p2, Lcgc$a;

    invoke-direct {p2, p0}, Lcgc$a;-><init>(Lcgc;)V

    invoke-virtual {p1, p2}, Lr7;->o(Lr7$b;)Lr7;

    move-result-object p0

    invoke-static {}, Lr6;->p()Z

    move-result p1

    invoke-virtual {p0, p1}, Lr7;->k(Z)Lr7;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lp9;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lp9;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr7;->q(Ljava/lang/String;)Lr7;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lxs8;->b()V

    :cond_1
    return-void
.end method

.method public final h(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;IZ)V
    .locals 4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCloudControlCacheInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v0, v0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcgc;->e:J

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    iget-wide v1, p0, Lcgc;->e:J

    const-string v3, "requestConfigInterval"

    invoke-virtual {v0, v3, v1, v2}, Lo9;->q(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->isShowRuStyle()Z

    move-result v0

    iput-boolean v0, p0, Lcgc;->h:Z

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    iget-boolean v1, p0, Lcgc;->h:Z

    const-string/jumbo v2, "show_ru_style"

    invoke-virtual {v0, v2, v1}, Lo9;->o(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcgc;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->isOmIdEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/n;->c(Landroid/content/Context;Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->isOmIdEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcgc;->i:Ljava/lang/Boolean;

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    iget-object v1, p0, Lcgc;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "is_om_id_enabled"

    invoke-virtual {v0, v2, v1}, Lo9;->o(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalBlackBrands()Ljava/util/List;

    move-result-object v0

    const-string v1, "ad_internal_black_brands"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalBlackBrands()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ad internal black brands\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalBlackBrands()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfigManager"

    invoke-virtual {v0, v3, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalBlackBrands()Ljava/util/List;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo9;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo9;->s(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->isInitPolyGammaEnable()Z

    move-result v1

    const-string v2, "polygamma_init_enable"

    invoke-virtual {v0, v2, v1}, Lo9;->o(Ljava/lang/String;Z)V

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalRequestEnable()Z

    move-result v1

    const-string v2, "default_is_open"

    invoke-virtual {v0, v2, v1}, Lo9;->o(Ljava/lang/String;Z)V

    sget-object v0, Lcom/cloud/hisavana/sdk/g0;->a:Lcom/cloud/hisavana/sdk/g0;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalRequestEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/g0;->q(Z)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getShowDataSyncTimeInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getClickDataSyncTimeInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Llxd;->c(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getExtInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v1

    const-string v2, "cloudConfigExtInfo"

    invoke-virtual {v1, v2, v0}, Lo9;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcgc;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCustomConfigs()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->saveCustomConfigs(Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCodeSeats()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCodeSeats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCdnVersionAddressRequestTimeInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCdnVersionAddressRequestTimeInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xea60

    mul-int/2addr v1, v2

    int-to-long v1, v1

    const-string v3, "default_interval"

    invoke-virtual {v0, v3, v1, v2}, Lo9;->q(Ljava/lang/String;J)V

    :cond_3
    invoke-static {}, Lspc;->f()Lspc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCodeSeats()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lspc;->e(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCloudControlVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgc;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getSspUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgc;->f:Ljava/lang/String;

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    iget-object v1, p0, Lcgc;->c:Ljava/lang/String;

    const-string v2, "hisavanaCurrentCloudControlVersion"

    invoke-virtual {v0, v2, v1}, Lo9;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    iget-object v1, p0, Lcgc;->c:Ljava/lang/String;

    const-string v2, "new_hisavana_ver"

    invoke-virtual {v0, v2, v1}, Lo9;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    iget-object v1, p0, Lcgc;->f:Ljava/lang/String;

    const-string v2, "hisavanaRequestUrl"

    invoke-virtual {v0, v2, v1}, Lo9;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getPreConnectEnable()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "preLoadNet"

    invoke-virtual {v1, v2, v0}, Lo9;->o(Ljava/lang/String;Z)V

    :cond_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCommonConfigData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;->getAntifraudPowerEnable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;->getAntifraudSubfunctionControl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    move-object v0, v1

    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lrd;->u0(Z)V

    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lrd;->t0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsing AntifraudSubfunctionControl failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ssp_load"

    invoke-virtual {v1, v2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    if-eqz p3, :cond_8

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCodeSeats()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcgc;->j(Ljava/util/Collection;I)V

    :cond_8
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    invoke-static {p1, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    iput-object p1, p0, Lcgc;->j:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcgc;->j:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    :catch_0
    :goto_0
    return-void
.end method

.method public final j(Ljava/util/Collection;I)V
    .locals 0

    invoke-static {}, Lcom/cloud/hisavana/sdk/i;->M()Lcom/cloud/hisavana/sdk/i;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/i;->B(Ljava/util/Collection;I)V

    return-void
.end method

.method public l()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;
    .locals 0

    iget-object p0, p0, Lcgc;->j:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    return-object p0
.end method

.method public final synthetic m(I)V
    .locals 8

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcgc;->e(I)V

    invoke-static {}, Lspc;->f()Lspc;

    move-result-object v1

    invoke-virtual {v1}, Lspc;->c()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    invoke-static {}, Lspc;->f()Lspc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lspc;->h(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    invoke-static {}, Lspc;->f()Lspc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lspc;->a(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    goto :goto_0

    :cond_0
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->c(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->setIsNetAvailable(Z)V

    const-string v3, "ConfigManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcgc;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v2, p0, Lcgc;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v2

    const-string v5, "hisavanaCurrentCloudControlVersion"

    invoke-virtual {v2, v5, v4}, Lo9;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcgc;->c:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcgc;->c:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v2, :cond_3

    invoke-virtual {p0, p1, v0, v4}, Lcgc;->f(ILjava/lang/String;Z)V

    return-void

    :cond_3
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v2

    const-string v5, "new_hisavana_ver"

    invoke-virtual {v2, v5}, Lo9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcgc;->c:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-wide v4, p0, Lcgc;->d:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v2

    const-string v4, "requestConfigTime"

    invoke-virtual {v2, v4, v6, v7}, Lo9;->i(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcgc;->d:J

    :cond_4
    iget-wide v4, p0, Lcgc;->e:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_5

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v2

    const-string v4, "requestConfigInterval"

    const-wide/32 v5, 0xf731400

    invoke-virtual {v2, v4, v5, v6}, Lo9;->i(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcgc;->e:J

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcgc;->d:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcgc;->e:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcgc;->f(ILjava/lang/String;Z)V

    goto :goto_1

    :cond_6
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string/jumbo v2, "time is not ready"

    invoke-virtual {v0, v3, v2}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcgc;->j(Ljava/util/Collection;I)V

    goto :goto_1

    :cond_7
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "requestCloudControl download material fail,config list is null"

    invoke-virtual {p0, v3, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, p1, v0, v4}, Lcgc;->f(ILjava/lang/String;Z)V

    :goto_1
    return-void

    :cond_9
    :goto_2
    const/4 p0, 0x3

    if-eq p1, p0, :cond_a

    invoke-static {v4, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->p0(Ljava/lang/String;I)V

    const/4 p0, 0x2

    invoke-static {v4, p1, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->d0(Ljava/lang/String;II)V

    :cond_a
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "requestCloudControl net is not available,or is requesting"

    invoke-virtual {p0, v3, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p(I)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCloudControl type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigManager"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lbgc;

    invoke-direct {v1, p0, p1}, Lbgc;-><init>(Lcgc;I)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 2

    sget-object v0, Lq1d;->a:Lq1d;

    invoke-virtual {v0}, Lq1d;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcgc;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcgc;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string v1, "hisavanaRequestUrl"

    invoke-virtual {v0, v1}, Lo9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgc;->f:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcgc;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lp9;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lp9;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgc;->f:Ljava/lang/String;

    :cond_2
    iget-object p0, p0, Lcgc;->f:Ljava/lang/String;

    return-object p0
.end method

.method public r()Z
    .locals 0

    iget-object p0, p0, Lcgc;->i:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public s()Z
    .locals 0

    iget-boolean p0, p0, Lcgc;->h:Z

    return p0
.end method
