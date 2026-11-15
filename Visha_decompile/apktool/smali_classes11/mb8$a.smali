.class public Lmb8$a;
.super Lcom/transsion/retrofit/factory/AbsAPIFactoryImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmb8;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmb8;


# direct methods
.method public constructor <init>(Lmb8;)V
    .locals 0

    iput-object p1, p0, Lmb8$a;->a:Lmb8;

    invoke-direct {p0}, Lcom/transsion/retrofit/factory/AbsAPIFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb8$a;->a:Lmb8;

    invoke-virtual {p0}, Lmb8;->createBaseUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInterceptor()Lokhttp3/Interceptor;
    .locals 0

    iget-object p0, p0, Lmb8$a;->a:Lmb8;

    invoke-virtual {p0}, Lmb8;->createInterceptor()Lokhttp3/Interceptor;

    move-result-object p0

    return-object p0
.end method

.method public getLoggerInterceptor()Lokhttp3/Interceptor;
    .locals 0

    iget-object p0, p0, Lmb8$a;->a:Lmb8;

    invoke-virtual {p0}, Lmb8;->createLogInterceptor()Lokhttp3/Interceptor;

    move-result-object p0

    return-object p0
.end method

.method public makeApiClient(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {p0}, Lmb8$a;->getInterceptor()Lokhttp3/Interceptor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    invoke-virtual {p0}, Lmb8$a;->getLoggerInterceptor()Lokhttp3/Interceptor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-static {}, Lwt4;->b()Lwt4$c;

    move-result-object v1

    iget-object v2, v1, Lwt4$c;->a:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, v1, Lwt4$c;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v2, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Lwt4;->b:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    invoke-static {}, Lfi1;->a()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lru8$b;

    invoke-direct {v2}, Lru8$b;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v2, v0}, Lru8$b;->g(Lokhttp3/OkHttpClient;)Lru8$b;

    move-result-object v0

    invoke-virtual {p0}, Lmb8$a;->getBaseUrl()Ljava/lang/String;

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
