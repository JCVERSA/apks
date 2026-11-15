.class public final Lcq/f;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcq/f;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;

.field private static final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcq/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcq/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcq/f;->a:Lcq/f;

    .line 7
    .line 8
    new-instance v0, Lcq/c;

    .line 9
    .line 10
    invoke-direct {v0}, Lcq/c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcq/f;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v0, Lcq/d;

    .line 20
    .line 21
    invoke-direct {v0}, Lcq/d;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcq/f;->c:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance v0, Lcq/e;

    .line 31
    .line 32
    invoke-direct {v0}, Lcq/e;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcq/f;->d:Lkotlin/Lazy;

    .line 40
    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    invoke-static {}, Lcq/f;->j()Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lcq/a;
    .locals 1

    .line 1
    invoke-static {}, Lcq/f;->d()Lcq/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lretrofit2/k0;
    .locals 1

    .line 1
    invoke-static {}, Lcq/f;->k()Lretrofit2/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final d()Lcq/a;
    .locals 2

    .line 1
    sget-object v0, Lcq/f;->a:Lcq/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcq/f;->h()Lretrofit2/k0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcq/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lretrofit2/k0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcq/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private final e()Lcq/a;
    .locals 2

    .line 1
    sget-object v0, Lcq/f;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcq/a;

    .line 13
    .line 14
    return-object v0
.end method

.method private final g()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    sget-object v0, Lcq/f;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    return-object v0
.end method

.method private final h()Lretrofit2/k0;
    .locals 2

    .line 1
    sget-object v0, Lcq/f;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lretrofit2/k0;

    .line 13
    .line 14
    return-object v0
.end method

.method private final i()Lokhttp3/OkHttpClient;
    .locals 8

    .line 1
    sget-object v0, Lag/a;->a:Lag/a$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lag/a$a;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 12
    .line 13
    :goto_0
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    .line 14
    .line 15
    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Llg/a;->a()Ljavax/net/ssl/SSLSocketFactory;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "createSSLSocketFactory(...)"

    .line 23
    .line 24
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Llg/a;

    .line 28
    .line 29
    invoke-direct {v4}, Llg/a;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    new-instance v4, Llg/a$a;

    .line 37
    .line 38
    invoke-direct {v4}, Llg/a$a;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 49
    .line 50
    const-wide/16 v4, 0x28

    .line 51
    .line 52
    invoke-virtual {v1, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-wide/16 v6, 0x14

    .line 57
    .line 58
    invoke-virtual {v1, v6, v7, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1, v6, v7, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lag/a$a;->c()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    new-instance v0, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;

    .line 76
    .line 77
    new-instance v1, Lcom/tn/lib/net/interceptor/a;

    .line 78
    .line 79
    invoke-direct {v1}, Lcom/tn/lib/net/interceptor/a;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;-><init>(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$a;)V

    .line 83
    .line 84
    .line 85
    sget-object v1, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor;->b(Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0
.end method

.method private static final j()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    sget-object v0, Lcq/f;->a:Lcq/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcq/f;->i()Lokhttp3/OkHttpClient;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private static final k()Lretrofit2/k0;
    .locals 2

    .line 1
    new-instance v0, Lretrofit2/k0$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lretrofit2/k0$b;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "https://www.google.com/"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->c(Ljava/lang/String;)Lretrofit2/k0$b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcq/f;->a:Lcq/f;

    .line 13
    .line 14
    invoke-direct {v1}, Lcq/f;->g()Lokhttp3/OkHttpClient;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->g(Lokhttp3/OkHttpClient;)Lretrofit2/k0$b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Lfg/a;->f()Lfg/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->b(Lretrofit2/k$a;)Lretrofit2/k0$b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {}, Lj00/g;->d()Lj00/g;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->a(Lretrofit2/e$a;)Lretrofit2/k0$b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lretrofit2/k0$b;->e()Lretrofit2/k0;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method


# virtual methods
.method public final f(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;
    .locals 6

    .line 1
    const-string v0, "keyword"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcq/h;->a:Lcq/h;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcq/h;->c()Lcom/transsion/search/net/GoogleSuggestConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1}, Lcom/transsion/search/net/GoogleSuggestConfig;->getQueryParams()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v1}, Lcom/transsion/search/net/GoogleSuggestConfig;->getQueryParams()Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/transsion/search/net/GoogleSuggestConfig;->getQueryParams()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    const-string v4, "hl"

    .line 43
    .line 44
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v5, 0x1

    .line 49
    if-ne v3, v5, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lcq/h;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_2
    const-string v0, "q"

    .line 59
    .line 60
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lkotlin/collections/MapsKt;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v1}, Lcom/transsion/search/net/GoogleSuggestConfig;->getHeaders()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_3
    invoke-direct {p0}, Lcq/f;->e()Lcq/a;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1, v0, p1}, Lcq/a;->a(Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/rxjava3/core/j;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1
.end method
