.class public Li44;
.super Lcom/transsion/retrofit/factory/BaseAPIManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li44$b;
    }
.end annotation


# static fields
.field public static a:Ljava/util/List;

.field public static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Li44;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Li44;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/transsion/retrofit/factory/BaseAPIManager;-><init>()V

    .line 3
    new-instance v0, Li44$a;

    invoke-direct {v0, p0}, Li44$a;-><init>(Li44;)V

    iput-object v0, p0, Lcom/transsion/retrofit/factory/BaseAPIManager;->apiFactory:Lcom/transsion/retrofit/factory/AbsAPIFactory;

    return-void
.end method

.method public synthetic constructor <init>(Lj44;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li44;-><init>()V

    return-void
.end method

.method public static synthetic a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Li44;->e(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/FormatCopyrightBeans;)V
    .locals 0

    invoke-static {p0, p1}, Li44;->f(Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/FormatCopyrightBeans;)V

    return-void
.end method

.method public static d()Li44;
    .locals 1

    invoke-static {}, Li44$b;->a()Li44;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3

    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-static {}, Lydc;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "X-API-KEY"

    const-string v2, "kkLCdl3*p9mQPkZtOy"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/util/List;Lcom/transsion/dbdata/beans/appconfig/FormatCopyrightBeans;)V
    .locals 0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/appconfig/FormatCopyrightBeans;->encodingFormat:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public c()Ljava/util/HashMap;
    .locals 0

    sget-object p0, Li44;->b:Ljava/util/HashMap;

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
    .locals 0

    new-instance p0, Lf44;

    invoke-direct {p0}, Lf44;-><init>()V

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

.method public g(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Li44;->a:Ljava/util/List;

    new-instance v0, Lg44;

    invoke-direct {v0, p0}, Lg44;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    sget-object p1, Li44;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lh44;

    invoke-direct {v0}, Lh44;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "codec-is-copyright"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseEncodingFormat "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FormatCopyrightManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
