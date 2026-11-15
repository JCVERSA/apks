.class public Llz6;
.super Lvec;
.source "SourceFile"


# static fields
.field public static volatile b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvec;-><init>()V

    return-void
.end method

.method public static j()V
    .locals 2

    sget-boolean v0, Llz6;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Llz6;->b:Z

    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    new-instance v1, Llz6$a;

    invoke-direct {v1, v0}, Llz6$a;-><init>(Ljava/net/ProxySelector;)V

    invoke-static {v1}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Llz6;->h(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/Void;
    .locals 1

    invoke-static {}, Llz6;->j()V

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p0, p1}, Llz6;->i(Landroid/app/Application;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final i(Landroid/app/Application;)V
    .locals 3

    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    const-string v1, "OkGo"

    invoke-direct {v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->h(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->g(Ljava/util/logging/Level;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    new-instance v0, Lsj1;

    new-instance v1, Lip1;

    invoke-direct {v1, p1}, Lip1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lsj1;-><init>(Lvj1;)V

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    invoke-static {}, Lfe7;->i()Lfe7;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfe7;->l(Landroid/app/Application;)Lfe7;

    move-result-object p1

    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfe7;->o(Lokhttp3/OkHttpClient;)Lfe7;

    move-result-object p0

    sget-object p1, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    invoke-virtual {p0, p1}, Lfe7;->m(Lcom/lzy/okgo/cache/CacheMode;)Lfe7;

    move-result-object p0

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lfe7;->n(J)Lfe7;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lfe7;->p(I)Lfe7;

    return-void
.end method
