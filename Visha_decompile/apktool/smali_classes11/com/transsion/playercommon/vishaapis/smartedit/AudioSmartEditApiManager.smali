.class public Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiManager;
.super Lcom/transsion/retrofit/factory/BaseAPIManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiManager$InstanceHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/transsion/retrofit/factory/BaseAPIManager;-><init>()V

    .line 3
    new-instance v0, Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiManager$1;-><init>(Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiManager;)V

    iput-object v0, p0, Lcom/transsion/retrofit/factory/BaseAPIManager;->apiFactory:Lcom/transsion/retrofit/factory/AbsAPIFactory;

    return-void
.end method

.method public synthetic constructor <init>(Lt00;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiManager;
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiManager$InstanceHolder;->a()Lcom/transsion/playercommon/vishaapis/smartedit/AudioSmartEditApiManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createBaseUrl()Ljava/lang/String;
    .locals 0

    const-string p0, "https://musicbrainz.org"

    return-object p0
.end method

.method public createInterceptor()Lokhttp3/Interceptor;
    .locals 0

    new-instance p0, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsInterceptor;

    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsInterceptor;-><init>()V

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
