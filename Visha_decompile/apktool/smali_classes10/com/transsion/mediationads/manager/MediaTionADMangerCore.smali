.class public final Lcom/transsion/mediationads/manager/MediaTionADMangerCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mediationads/manager/MediaTionADMangerCore$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/mediationads/manager/MediaTionADMangerCore$a;

.field public static volatile e:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lhk1;

.field public final c:Lnk1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->d:Lcom/transsion/mediationads/manager/MediaTionADMangerCore$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "mediation_ad_MediaTionADMangerCore"

    iput-object v0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->a:Ljava/lang/String;

    .line 4
    sget-object v0, Lhk1;->w1:Lhk1$b;

    new-instance v1, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$c;

    invoke-direct {v1, v0, p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$c;-><init>(Lhk1$b;Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)V

    .line 5
    iput-object v1, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->b:Lhk1;

    .line 6
    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->c:Lnk1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->l(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->i()V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;Lcom/transsion/mediationads/beans/AdDisplayResponse;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->j(Lcom/transsion/mediationads/beans/AdDisplayResponse;)V

    return-void
.end method

.method public static final synthetic d()Lcom/transsion/mediationads/manager/MediaTionADMangerCore;
    .locals 1

    sget-object v0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->e:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;Lcom/transsion/mediationads/beans/AdDisplayResponse;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->m(Lcom/transsion/mediationads/beans/AdDisplayResponse;)V

    return-void
.end method

.method public static final synthetic g(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->p()V

    return-void
.end method

.method public static final synthetic h(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)V
    .locals 0

    sput-object p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->e:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    return-void
.end method

.method public static final l(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->a:Ljava/lang/String;

    const-string p1, "TAdManager init complete "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 2

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "visha_ad_strategy_cache"

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-class v1, Lcom/transsion/mediationads/beans/AdDisplayResponse;

    invoke-static {v0, v1}, Lfi1;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/mediationads/beans/AdDisplayResponse;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->m(Lcom/transsion/mediationads/beans/AdDisplayResponse;)V

    iget-object p0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->a:Ljava/lang/String;

    const-string v0, "Ad strategy loaded from cache"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/mediationads/manager/a;->a:Lcom/transsion/mediationads/manager/a$a;

    invoke-virtual {v0}, Lcom/transsion/mediationads/manager/a$a;->a()Lcom/transsion/mediationads/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/mediationads/manager/a;->j()V

    iget-object p0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->a:Ljava/lang/String;

    const-string v0, "Ad strategy cache miss, marked parse completed"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final j(Lcom/transsion/mediationads/beans/AdDisplayResponse;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->c:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$cacheAdStrategy$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$cacheAdStrategy$1;-><init>(Lcom/transsion/mediationads/beans/AdDisplayResponse;Lcom/transsion/mediationads/manager/MediaTionADMangerCore;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->a:Ljava/lang/String;

    const-string v1, "TAdManager init start "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/transsion/mediationads/manager/b;->a:Lcom/transsion/mediationads/manager/b$a;

    invoke-virtual {v0}, Lcom/transsion/mediationads/manager/b$a;->a()Lcom/transsion/mediationads/manager/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/mediationads/manager/b;->i()V

    invoke-static {}, Lge;->e()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lge;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    const-string v0, "environment_mode"

    invoke-static {v0, v2}, Lfec;->b(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    move v0, v1

    :cond_3
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_4
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {v1}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    new-instance v3, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    invoke-direct {v3}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;-><init>()V

    const-string v4, "251023IuRwtyUo"

    invoke-virtual {v3, v4}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->setAppId(Ljava/lang/String;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->setDebug(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->testDevice(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->setMuteVideo(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->isInitAdMob(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    move-result-object v0

    const-wide v2, 0x19d0ab2cdfbL

    invoke-virtual {v0, v2, v3}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->setInternalDefaultAdVersion(J)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    move-result-object v0

    new-instance v2, Llm6;

    invoke-direct {v2, p0}, Llm6;-><init>(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)V

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->setCloudCompleteListener(Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->build()Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/hisavana/mediation/config/TAdManager;->init(Landroid/content/Context;Lcom/hisavana/mediation/config/TAdManager$AdConfig;)V

    return-void
.end method

.method public final m(Lcom/transsion/mediationads/beans/AdDisplayResponse;)V
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/manager/c;->a:Lcom/transsion/mediationads/manager/c$a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/c$a;->a()Lcom/transsion/mediationads/manager/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/c;->p(Lcom/transsion/mediationads/beans/AdDisplayResponse;)V

    sget-object p0, Lcom/transsion/mediationads/manager/a;->a:Lcom/transsion/mediationads/manager/a$a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/a$a;->a()Lcom/transsion/mediationads/manager/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/a;->k(Lcom/transsion/mediationads/beans/AdDisplayResponse;)V

    sget-object p0, Lcom/transsion/mediationads/manager/d;->f:Lcom/transsion/mediationads/manager/d$a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/d$a;->a()Lcom/transsion/mediationads/manager/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/d;->n(Lcom/transsion/mediationads/beans/AdDisplayResponse;)V

    return-void
.end method

.method public final n()V
    .locals 1

    sget-object v0, Lcom/transsion/mediationads/manager/a;->a:Lcom/transsion/mediationads/manager/a$a;

    invoke-virtual {v0}, Lcom/transsion/mediationads/manager/a$a;->a()Lcom/transsion/mediationads/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/mediationads/manager/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->a:Ljava/lang/String;

    const-string v0, "preloadAdStrategyFromCacheSync skip, already parsed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->i()V

    return-void
.end method

.method public final o()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->p()V

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start requesting ad strategy config for region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v1

    const-class v2, Lbu4;

    invoke-virtual {v1, v2}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbu4;

    invoke-interface {v1, v0}, Lbu4;->a(I)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$b;

    invoke-direct {v1, p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$b;-><init>(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred while requesting ad strategy config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final p()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->c:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$requestFromCache$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$requestFromCache$1;-><init>(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method
