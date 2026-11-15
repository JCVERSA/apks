.class public Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager;
.super Lcom/transsion/retrofit/factory/BaseAPIManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager$InstanceHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/retrofit/factory/BaseAPIManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager;
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager$InstanceHolder;->a()Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createBaseUrl()Ljava/lang/String;
    .locals 0

    const-string p0, "https://api.acoustid.org"

    return-object p0
.end method

.method public createInterceptor()Lokhttp3/Interceptor;
    .locals 0

    new-instance p0, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsInterceptor;

    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/aistatistics/AiStatisticsInterceptor;-><init>()V

    return-object p0
.end method

.method public createLogInterceptor()Lokhttp3/Interceptor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
