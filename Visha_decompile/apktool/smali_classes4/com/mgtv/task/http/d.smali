.class public Lcom/mgtv/task/http/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/task/http/d$a;
    }
.end annotation


# static fields
.field public static a:Lokhttp3/OkHttpClient;

.field private static b:Lcom/mgtv/task/http/d$a;

.field private static c:Lcom/mgtv/task/http/h;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 17
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0}, Lcom/mgtv/task/http/d;->c(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0

    .line 19
    :cond_0
    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-static {p0}, Lcom/mgtv/task/http/d;->b(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Lokhttp3/OkHttpClient;
    .locals 1

    .line 16
    sget-object v0, Lcom/mgtv/task/http/d;->a:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/mgtv/task/http/d$a;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/mgtv/task/http/d;->a:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/mgtv/task/http/d$a;->c()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/mgtv/task/http/d$a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Interceptor;

    .line 5
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lcom/mgtv/task/http/d$1;

    invoke-direct {v1, p1}, Lcom/mgtv/task/http/d$1;-><init>(Lcom/mgtv/task/http/d$a;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 7
    invoke-virtual {p1}, Lcom/mgtv/task/http/d$a;->b()Lokhttp3/CookieJar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/mgtv/task/http/d$a;->b()Lokhttp3/CookieJar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 9
    :cond_2
    sput-object p1, Lcom/mgtv/task/http/d;->b:Lcom/mgtv/task/http/d$a;

    .line 10
    invoke-static {p0}, Lcom/mgtv/task/http/h;->a(Landroid/content/Context;)Lcom/mgtv/task/http/h;

    move-result-object p0

    sput-object p0, Lcom/mgtv/task/http/d;->c:Lcom/mgtv/task/http/h;

    .line 11
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 12
    invoke-static {p1}, Lcom/mgtv/task/http/d$a;->a(Lcom/mgtv/task/http/d$a;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 13
    new-instance p0, Lokhttp3/ConnectionPool;

    const-wide/16 v1, 0x78

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x5

    invoke-direct {p0, v3, v1, v2, p1}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 14
    :cond_3
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    sput-object p0, Lcom/mgtv/task/http/d;->a:Lokhttp3/OkHttpClient;

    .line 15
    const-string p0, "HttpClientUtil"

    const-string p1, "initClient   end"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b()Lcom/mgtv/task/http/d$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgtv/task/http/d;->b:Lcom/mgtv/task/http/d$a;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
