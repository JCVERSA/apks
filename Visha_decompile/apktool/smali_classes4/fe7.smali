.class public Lfe7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfe7$b;
    }
.end annotation


# static fields
.field public static i:J = 0x12cL


# instance fields
.field public a:Landroid/app/Application;

.field public b:Landroid/os/Handler;

.field public c:Lokhttp3/OkHttpClient;

.field public d:Lcom/lzy/okgo/model/HttpParams;

.field public e:Lcom/lzy/okgo/model/HttpHeaders;

.field public f:I

.field public g:Lcom/lzy/okgo/cache/CacheMode;

.field public h:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lfe7;->b:Landroid/os/Handler;

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lfe7;->f:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lfe7;->h:J

    .line 6
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    iput-object v0, p0, Lfe7;->g:Lcom/lzy/okgo/cache/CacheMode;

    .line 7
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 8
    new-instance v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    const-string v2, "OkGo"

    invoke-direct {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 9
    sget-object v2, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->h(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V

    .line 10
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->g(Ljava/util/logging/Level;)V

    .line 11
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 12
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 13
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 14
    invoke-static {}, Lwt4;->b()Lwt4$c;

    move-result-object v1

    .line 15
    iget-object v2, v1, Lwt4$c;->a:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, v1, Lwt4$c;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v2, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 16
    sget-object v1, Lwt4;->b:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 17
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lfe7;->c:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public synthetic constructor <init>(Lfe7$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfe7;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;
    .locals 1

    new-instance v0, Lcom/lzy/okgo/request/GetRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/request/GetRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static i()Lfe7;
    .locals 1

    invoke-static {}, Lfe7$b;->a()Lfe7;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lfe7;->j()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lfe7;->j()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public c()Lcom/lzy/okgo/cache/CacheMode;
    .locals 0

    iget-object p0, p0, Lfe7;->g:Lcom/lzy/okgo/cache/CacheMode;

    return-object p0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lfe7;->h:J

    return-wide v0
.end method

.method public e()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 0

    iget-object p0, p0, Lfe7;->e:Lcom/lzy/okgo/model/HttpHeaders;

    return-object p0
.end method

.method public f()Lcom/lzy/okgo/model/HttpParams;
    .locals 0

    iget-object p0, p0, Lfe7;->d:Lcom/lzy/okgo/model/HttpParams;

    return-object p0
.end method

.method public g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lfe7;->a:Landroid/app/Application;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lfe7;->a:Landroid/app/Application;

    :cond_0
    return-object v0
.end method

.method public h()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lfe7;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public j()Lokhttp3/OkHttpClient;
    .locals 2

    iget-object v0, p0, Lfe7;->c:Lokhttp3/OkHttpClient;

    const-string v1, "please call OkGo.getInstance().setOkHttpClient() first in application!"

    invoke-static {v0, v1}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lfe7;->c:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public k()I
    .locals 0

    iget p0, p0, Lfe7;->f:I

    return p0
.end method

.method public l(Landroid/app/Application;)Lfe7;
    .locals 0

    iput-object p1, p0, Lfe7;->a:Landroid/app/Application;

    return-object p0
.end method

.method public m(Lcom/lzy/okgo/cache/CacheMode;)Lfe7;
    .locals 0

    iput-object p1, p0, Lfe7;->g:Lcom/lzy/okgo/cache/CacheMode;

    return-object p0
.end method

.method public n(J)Lfe7;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lfe7;->h:J

    return-object p0
.end method

.method public o(Lokhttp3/OkHttpClient;)Lfe7;
    .locals 1

    const-string v0, "okHttpClient == null"

    invoke-static {p1, v0}, Lut4;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lfe7;->c:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public p(I)Lfe7;
    .locals 0

    if-ltz p1, :cond_0

    iput p1, p0, Lfe7;->f:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "retryCount must > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
