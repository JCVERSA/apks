.class public final Lcom/transsion/cloud_drive/base/network/RetrofitInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/transsion/cloud_drive/base/network/RetrofitInstance;

.field public static b:Lqz6;

.field public static c:Ljava/lang/String;

.field public static final d:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;

    invoke-direct {v0}, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;-><init>()V

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->a:Lcom/transsion/cloud_drive/base/network/RetrofitInstance;

    sget-object v0, Lcom/transsion/cloud_drive/base/network/RetrofitInstance$retrofit$2;->INSTANCE:Lcom/transsion/cloud_drive/base/network/RetrofitInstance$retrofit$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->d:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/cloud_drive/base/network/RetrofitInstance;)Lokhttp3/OkHttpClient;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->e()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/cloud_drive/base/network/RetrofitInstance;Lokhttp3/OkHttpClient;ZLnpa;)Lru8;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->g(Lokhttp3/OkHttpClient;ZLnpa;)Lru8;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Lqz6;
    .locals 1

    sget-object v0, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->b:Lqz6;

    return-object v0
.end method

.method public static final f(Ljava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Loq5;->a:Loq5;

    const-string v1, "OkHttpClient"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Loq5;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e()Lokhttp3/OkHttpClient;
    .locals 5

    sget-object p0, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->b:Lqz6;

    if-eqz p0, :cond_8

    sget-object v0, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->c:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lqz6;->g()Lhe7;

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lqz6;->e()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p0}, Lqz6;->m()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p0}, Lqz6;->r()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lxj4;

    invoke-virtual {p0}, Lqz6;->k()Lyj4;

    move-result-object v2

    invoke-direct {v1, v2}, Lxj4;-><init>(Lyj4;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p0}, Lqz6;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lpr8;->a:Lpr8;

    invoke-virtual {v1}, Lpr8;->b()Lor8;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    invoke-virtual {p0}, Lqz6;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;

    invoke-virtual {p0}, Lqz6;->l()I

    move-result v2

    invoke-virtual {p0}, Lqz6;->n()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/cloud_drive/base/network/interceptor/NetworkRetryInterceptor;-><init>(IJ)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    :cond_1
    new-instance v1, Lsz6;

    invoke-direct {v1}, Lsz6;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :goto_0
    new-instance v1, Lqo4;

    invoke-virtual {p0}, Lqz6;->b()Lqe;

    move-result-object v2

    invoke-direct {v1, v2}, Lqo4;-><init>(Lqe;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lfc2;

    sget-object v2, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->c:Ljava/lang/String;

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lfc2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lt4;

    invoke-virtual {p0}, Lqz6;->a()Ljpa;

    move-result-object v2

    invoke-direct {v1, v2}, Lt4;-><init>(Ljpa;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p0}, Lqz6;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lyd;

    const-string v2, "os-cloud-disk"

    const-string v3, "os-cloud-disk2"

    invoke-direct {v1, v2, v3}, Lyd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_2
    new-instance v1, Llo1;

    invoke-direct {v1}, Llo1;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p0}, Lqz6;->f()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Interceptor;

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_1

    :cond_3
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v2, Lsu8;

    invoke-direct {v2}, Lsu8;-><init>()V

    invoke-direct {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    invoke-virtual {p0}, Lqz6;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_2

    :cond_4
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    :goto_2
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lwi9;

    invoke-virtual {p0}, Lqz6;->p()Lyfb;

    move-result-object v2

    invoke-direct {v1, v2}, Lwi9;-><init>(Lyfb;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p0}, Lqz6;->d()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p0}, Lqz6;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lqz6;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    :goto_3
    new-instance v1, Ljava/io/File;

    sget-object p0, Lrh1;->a:Lrh1;

    invoke-virtual {p0}, Lrh1;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "http_cache"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_4
    new-instance p0, Lokhttp3/Cache;

    const-wide/32 v2, 0x3200000

    invoke-direct {p0, v1, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    :cond_7
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "NetworkConfig or diskDomain is not initialized, please call initRetrofit() first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Lokhttp3/OkHttpClient;ZLnpa;)Lru8;
    .locals 0

    new-instance p0, Lru8$b;

    invoke-direct {p0}, Lru8$b;-><init>()V

    if-eqz p2, :cond_0

    const-string p2, "https://test-oscloud.transsion-os.com"

    goto :goto_0

    :cond_0
    const-string p2, "https://oscloud.palm.tech"

    :goto_0
    invoke-virtual {p0, p2}, Lru8$b;->c(Ljava/lang/String;)Lru8$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lru8$b;->g(Lokhttp3/OkHttpClient;)Lru8$b;

    move-result-object p0

    sget-object p1, Lkc5;->a:Lkc5;

    invoke-virtual {p1}, Lkc5;->a()Lcom/squareup/moshi/j;

    move-result-object p1

    invoke-static {p1}, Lbr6;->a(Lcom/squareup/moshi/j;)Lbr6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru8$b;->b(Lsi1$a;)Lru8$b;

    move-result-object p0

    new-instance p1, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory;

    invoke-direct {p1, p3}, Lcom/transsion/cloud_drive/base/network/TokenRefreshCallAdapterFactory;-><init>(Lnpa;)V

    invoke-virtual {p0, p1}, Lru8$b;->a(Llq0$a;)Lru8$b;

    move-result-object p0

    invoke-virtual {p0}, Lru8$b;->e()Lru8;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final h()Lru8;
    .locals 0

    sget-object p0, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lru8;

    return-object p0
.end method

.method public final i(Ljava/lang/String;Lqz6;)V
    .locals 0

    const-string p0, "diskDomain"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "networkConfig"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->c:Ljava/lang/String;

    sput-object p2, Lcom/transsion/cloud_drive/base/network/RetrofitInstance;->b:Lqz6;

    return-void
.end method
