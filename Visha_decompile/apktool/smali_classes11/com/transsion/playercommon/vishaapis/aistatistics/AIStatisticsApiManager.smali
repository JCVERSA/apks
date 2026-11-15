.class public Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisticsApiManager;
.super Lcom/transsion/retrofit/factory/BaseAPIManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisticsApiManager$InstanceHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "online_video_api"

.field public static volatile index:I = 0x1

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/transsion/retrofit/factory/BaseAPIManager;-><init>()V

    .line 3
    new-instance v0, Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisticsApiManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisticsApiManager$1;-><init>(Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisticsApiManager;)V

    iput-object v0, p0, Lcom/transsion/retrofit/factory/BaseAPIManager;->apiFactory:Lcom/transsion/retrofit/factory/AbsAPIFactory;

    return-void
.end method

.method public synthetic constructor <init>(Lu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisticsApiManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisticsApiManager;
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisticsApiManager$InstanceHolder;->a()Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisticsApiManager;

    move-result-object v0

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisticsApiManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createBaseUrl()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lge;->e()Z

    move-result p0

    const-string v0, "https://api.vishavideo.com"

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/playercommon/vishaapis/aistatistics/AIStatisticsApiManager;->mContext:Landroid/content/Context;

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
