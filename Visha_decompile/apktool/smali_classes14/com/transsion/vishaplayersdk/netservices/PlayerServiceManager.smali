.class public Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager;
.super Lcom/transsion/retrofit/factory/BaseAPIManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager$InstanceHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/retrofit/factory/BaseAPIManager;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkb8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager;
    .locals 1

    invoke-static {}, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager$InstanceHolder;->a()Lcom/transsion/vishaplayersdk/netservices/PlayerServiceManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearApiCache()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/retrofit/factory/BaseAPIManager;->apiCache:Landroidx/collection/LruCache;

    if-eqz p0, :cond_0

    const-class v0, Lcom/transsion/vishaplayersdk/netservices/PlayerService;

    invoke-virtual {p0, v0}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public createBaseUrl()Ljava/lang/String;
    .locals 0

    sget-boolean p0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->bTestMode:Z

    if-eqz p0, :cond_0

    const-string p0, "https://test-visha.transsion-os.com"

    goto :goto_0

    :cond_0
    const-string p0, "https://api.vishavideo.com"

    :goto_0
    return-object p0
.end method

.method public createInterceptor()Lokhttp3/Interceptor;
    .locals 0

    new-instance p0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceReqParamInterceptor;

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceReqParamInterceptor;-><init>()V

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
