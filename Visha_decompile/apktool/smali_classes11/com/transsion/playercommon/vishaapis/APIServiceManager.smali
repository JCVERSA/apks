.class public Lcom/transsion/playercommon/vishaapis/APIServiceManager;
.super Lcom/transsion/retrofit/factory/BaseAPIManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/vishaapis/APIServiceManager$InstanceHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/retrofit/factory/BaseAPIManager;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lq0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/APIServiceManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/playercommon/vishaapis/APIServiceManager;
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/APIServiceManager$InstanceHolder;->a()Lcom/transsion/playercommon/vishaapis/APIServiceManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearApiCache()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/retrofit/factory/BaseAPIManager;->apiCache:Landroidx/collection/LruCache;

    if-eqz p0, :cond_0

    const-class v0, Lcom/transsion/playercommon/vishaapis/APIService;

    invoke-virtual {p0, v0}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public createBaseUrl()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lge;->e()Z

    move-result p0

    const-string v0, "https://visha.shalltry.com"

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    const-string v1, "environment_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const-string v0, "https://test-visha.transsion-os.com"

    :cond_0
    return-object v0
.end method

.method public createInterceptor()Lokhttp3/Interceptor;
    .locals 0

    new-instance p0, Lcom/transsion/playercommon/vishaapis/APIReqParamInterceptor;

    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/APIReqParamInterceptor;-><init>()V

    return-object p0
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
