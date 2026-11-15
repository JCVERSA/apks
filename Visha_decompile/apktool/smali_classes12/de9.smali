.class public Lde9;
.super Lcom/transsion/retrofit/factory/BaseAPIManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde9$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/transsion/retrofit/factory/BaseAPIManager;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lee9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lde9;-><init>()V

    return-void
.end method

.method public static a()Lde9;
    .locals 1

    invoke-static {}, Lde9$a;->a()Lde9;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createBaseUrl()Ljava/lang/String;
    .locals 0

    sget-boolean p0, Lah8;->a:Z

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

    new-instance p0, Lge9;

    invoke-direct {p0}, Lge9;-><init>()V

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
