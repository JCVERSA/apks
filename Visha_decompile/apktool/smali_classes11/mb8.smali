.class public Lmb8;
.super Lcom/transsion/retrofit/factory/BaseAPIManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmb8$c;
    }
.end annotation


# static fields
.field public static a:F = 4.0f

.field public static b:F = 0.25f

.field public static c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v4, 0x3fa00000    # 1.25f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmb8;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/retrofit/factory/BaseAPIManager;-><init>()V

    new-instance v0, Lmb8$a;

    invoke-direct {v0, p0}, Lmb8$a;-><init>(Lmb8;)V

    iput-object v0, p0, Lcom/transsion/retrofit/factory/BaseAPIManager;->apiFactory:Lcom/transsion/retrofit/factory/AbsAPIFactory;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Float;)Z
    .locals 0

    invoke-static {p0}, Lmb8;->e(Ljava/lang/Float;)Z

    move-result p0

    return p0
.end method

.method public static c()Lmb8;
    .locals 1

    invoke-static {}, Lmb8$c;->a()Lmb8;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Ljava/lang/Float;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget v1, Lmb8;->b:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sget v0, Lmb8;->a:F

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 0

    sget-object p0, Lmb8;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public createBaseUrl()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lge;->e()Z

    move-result p0

    const-string v0, "https://api.vishavideo.com"

    if-eqz p0, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    const-string v1, "environment_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const-string v0, "https://test-visha.transsion-os.com"

    :cond_0
    return-object v0
.end method

.method public createInterceptor()Lokhttp3/Interceptor;
    .locals 1

    new-instance v0, Lmb8$b;

    invoke-direct {v0, p0}, Lmb8$b;-><init>(Lmb8;)V

    return-object v0
.end method

.method public createLogInterceptor()Lokhttp3/Interceptor;
    .locals 1

    invoke-static {}, Lge;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor;

    const-string v0, "visha_api"

    invoke-direct {p0, v0}, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {p0, v0}, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor;->setPrintLevel(Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;)V

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor;->setColorLevel(Ljava/util/logging/Level;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Z
    .locals 1

    sget-object p0, Lmb8;->c:Ljava/util/ArrayList;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f(Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;)V
    .locals 2

    const-string p0, "visha_PlayerSpeedConfigManager"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v0, p1, Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;->enable_max_speed:F

    sput v0, Lmb8;->a:F

    iget p1, p1, Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;->enable_min_speed:F

    sput p1, Lmb8;->b:F

    sget-object p1, Lmb8;->c:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Llb8;

    invoke-direct {v0}, Llb8;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    sput-object p1, Lmb8;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sGestureSpeedList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lmb8;->c:Ljava/util/ArrayList;

    filled-new-array {v0}, [Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageDisableSpeedList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public g(Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;)V
    .locals 3

    const-string v0, "cache_player_speed_config"

    if-nez p1, :cond_0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;

    invoke-static {p1, v0}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;

    invoke-virtual {p0, p1}, Lmb8;->f(Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playerSpeedConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "visha_PlayerSpeedConfigManager"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lmb8;->f(Lcom/transsion/dbdata/beans/appconfig/PlayerSpeedConfigBean;)V

    invoke-static {p1}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/transsion/retrofit/cache/CacheManager;->putCache(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
