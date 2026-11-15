.class Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager$1;
.super Lcom/transsion/retrofit/factory/AbsAPIFactoryImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager$1;->this$0:Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager;

    invoke-direct {p0}, Lcom/transsion/retrofit/factory/AbsAPIFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager$1;->this$0:Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager;

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager;->createBaseUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInterceptor()Lokhttp3/Interceptor;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager$1;->this$0:Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager;

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager;->createInterceptor()Lokhttp3/Interceptor;

    move-result-object p0

    return-object p0
.end method

.method public getLoggerInterceptor()Lokhttp3/Interceptor;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager$1;->this$0:Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager;

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager;->createLogInterceptor()Lokhttp3/Interceptor;

    move-result-object p0

    return-object p0
.end method

.method public makeApiClient(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager$1;->getInterceptor()Lokhttp3/Interceptor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager$1;->getLoggerInterceptor()Lokhttp3/Interceptor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const-wide/16 v4, 0x5a

    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    invoke-static {}, Lfi1;->a()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lru8$b;

    invoke-direct {v2}, Lru8$b;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v2, v0}, Lru8$b;->g(Lokhttp3/OkHttpClient;)Lru8$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager$1;->getBaseUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lru8$b;->c(Ljava/lang/String;)Lru8$b;

    move-result-object p0

    invoke-static {}, Lxw8;->a()Lxw8;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru8$b;->a(Llq0$a;)Lru8$b;

    move-result-object p0

    invoke-static {v1}, Lak4;->b(Lcom/google/gson/Gson;)Lak4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lru8$b;->b(Lsi1$a;)Lru8$b;

    move-result-object p0

    invoke-virtual {p0}, Lru8$b;->e()Lru8;

    move-result-object p0

    invoke-virtual {p0, p1}, Lru8;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
