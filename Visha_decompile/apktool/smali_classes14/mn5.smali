.class public Lmn5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = true

.field public static volatile b:Lmn5;

.field public static c:Z

.field public static d:Z

.field public static e:I

.field public static f:Z

.field public static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lmn5;
    .locals 2

    sget-object v0, Lmn5;->b:Lmn5;

    if-nez v0, :cond_1

    const-class v0, Lmn5;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmn5;->b:Lmn5;

    if-nez v1, :cond_0

    new-instance v1, Lmn5;

    invoke-direct {v1}, Lmn5;-><init>()V

    sput-object v1, Lmn5;->b:Lmn5;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lmn5;->b:Lmn5;

    return-object v0
.end method

.method public static f()V
    .locals 4

    invoke-static {}, Lqha;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sput-boolean v1, Lmn5;->c:Z

    return-void

    :cond_0
    const-string v0, "visha_local_ad"

    invoke-static {v0}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v0

    const-string v2, "local_ad_disable_show"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lsg9;->c(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmn5;->c:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lmn5;->l(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lmn5;->j()V

    :goto_0
    invoke-static {}, Lmn5;->k()V

    return-void
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Lmn5;->c:Z

    return v0
.end method

.method public static h()Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local_launch_ad_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "yyyy-MM-dd"

    invoke-static {v2}, Lit1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visha_local_ad"

    invoke-static {v2}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v3

    invoke-virtual {v3, v1}, Lsg9;->f(Ljava/lang/String;)I

    move-result v1

    sget-boolean v3, Lmn5;->a:Z

    const-string v4, "LocalAdsManager"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isShowLocalSplashAd day:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " have show "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x2

    const/4 v5, 0x0

    if-lt v1, v3, :cond_1

    return v5

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_ad_show_mark_on_day_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsg9;->f(Ljava/lang/String;)I

    move-result v0

    sget-boolean v1, Lmn5;->a:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowLocalSplashAd startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lmn5;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lastMarkDay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    sget v2, Lmn5;->e:I

    sub-int/2addr v2, v0

    if-gt v2, v1, :cond_3

    return v5

    :cond_3
    return v1
.end method

.method public static i()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local_launch_ad_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "yyyy-MM-dd"

    invoke-static {v2}, Lit1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_ad_show_mark_on_day_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "visha_local_ad"

    invoke-static {v2}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v3

    invoke-virtual {v3, v1}, Lsg9;->f(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v1, v3}, Lsg9;->p(Ljava/lang/String;I)V

    invoke-static {v2}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v1

    sget v2, Lmn5;->e:I

    invoke-virtual {v1, v0, v2}, Lsg9;->p(Ljava/lang/String;I)V

    sget-boolean v0, Lmn5;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markLocalSplashAdShow todayCnt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",startTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lmn5;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalAdsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static j()V
    .locals 8

    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lit1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "visha_local_ad"

    invoke-static {v2}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v3

    const-string v4, "local_ad_no_network_date"

    invoke-virtual {v3, v4}, Lsg9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lit1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-boolean v5, Lmn5;->a:Z

    const-string v6, "LocalAdsManager"

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "markNoNetworkDay internalDay:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-lt v0, v5, :cond_4

    :cond_1
    invoke-static {v2}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lsg9;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v0

    const-string v1, "local_ad_no_network_day"

    invoke-virtual {v0, v1}, Lsg9;->f(Ljava/lang/String;)I

    move-result v0

    sget-boolean v3, Lmn5;->a:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "markNoNetworkDay haveMarkDays:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x3

    if-lt v0, v3, :cond_3

    invoke-static {v5}, Lmn5;->l(Z)V

    return-void

    :cond_3
    invoke-static {v2}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v2

    add-int/2addr v0, v5

    invoke-virtual {v2, v1, v0}, Lsg9;->p(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public static k()V
    .locals 3

    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lit1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local_ad_start_on_day_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visha_local_ad"

    invoke-static {v1}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsg9;->f(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lsg9;->p(Ljava/lang/String;I)V

    sput v2, Lmn5;->e:I

    sget-boolean v0, Lmn5;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markStartTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lmn5;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalAdsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static l(Z)V
    .locals 2

    sget-boolean v0, Lmn5;->c:Z

    if-nez v0, :cond_0

    const-string v0, "visha_local_ad"

    invoke-static {v0}, Lsg9;->e(Ljava/lang/String;)Lsg9;

    move-result-object v0

    const-string v1, "local_ad_disable_show"

    invoke-virtual {v0, v1, p0}, Lsg9;->m(Ljava/lang/String;Z)V

    :cond_0
    sput-boolean p0, Lmn5;->c:Z

    return-void
.end method


# virtual methods
.method public b()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
    .locals 2

    sget-boolean p0, Lmn5;->c:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    sget-boolean p0, Lmn5;->d:Z

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    sget-boolean p0, Lmn5;->g:Z

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalAd:Z

    sget v0, Lcom/transsion/vishaads/R$drawable;->re_local_banner_ad:I

    iput v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->localAdResourceId:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->setAdSourceType(I)V

    sget-boolean v0, Lmn5;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLocalAudioBannerAdAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalAdsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object p0
.end method

.method public c()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
    .locals 2

    sget-boolean v0, Lmn5;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lmn5;->h()Z

    move-result v0

    sput-boolean v0, Lmn5;->d:Z

    invoke-virtual {p0, v0}, Lmn5;->n(Z)V

    sget-boolean v0, Lmn5;->d:Z

    invoke-virtual {p0, v0}, Lmn5;->m(Z)V

    sget-boolean p0, Lmn5;->d:Z

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    new-instance p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalAd:Z

    sget v0, Lcom/transsion/vishaads/R$drawable;->re_local_splash_ad:I

    iput v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->localAdResourceId:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->setAdSourceType(I)V

    const-wide/16 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->setDuration(J)V

    sget-boolean v0, Lmn5;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLocalSplashAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalAdsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method

.method public d()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
    .locals 2

    sget-boolean p0, Lmn5;->c:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    sget-boolean p0, Lmn5;->d:Z

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    sget-boolean p0, Lmn5;->f:Z

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->isLocalAd:Z

    sget v0, Lcom/transsion/vishaads/R$drawable;->re_local_banner_ad:I

    iput v0, p0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->localAdResourceId:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->setAdSourceType(I)V

    sget-boolean v0, Lmn5;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLocalVideoBannerAdAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalAdsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object p0
.end method

.method public e()Lcom/transsion/dbdata/beans/adsbean/AdItemBean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public m(Z)V
    .locals 0

    sput-boolean p1, Lmn5;->g:Z

    return-void
.end method

.method public n(Z)V
    .locals 0

    sput-boolean p1, Lmn5;->f:Z

    return-void
.end method
