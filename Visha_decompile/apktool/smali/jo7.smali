.class public Ljo7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile c:Ljo7;


# instance fields
.field public a:Lokhttp3/OkHttpClient;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ljo7;->b:Landroid/content/Context;

    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {p0}, Ljo7;->a()Lokhttp3/Interceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Ljo7;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 2

    sget-object v0, Ljo7;->c:Ljo7;

    if-nez v0, :cond_1

    const-class v0, Ljo7;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljo7;->c:Ljo7;

    if-nez v1, :cond_0

    new-instance v1, Ljo7;

    invoke-direct {v1, p0}, Ljo7;-><init>(Landroid/content/Context;)V

    sput-object v1, Ljo7;->c:Ljo7;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object v0, Ljo7;->c:Ljo7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Ljo7;->b:Landroid/content/Context;

    sget-object p0, Ljo7;->c:Ljo7;

    iget-object p0, p0, Ljo7;->a:Lokhttp3/OkHttpClient;

    return-object p0
.end method


# virtual methods
.method public final a()Lokhttp3/Interceptor;
    .locals 1

    new-instance v0, Ljo7$a;

    invoke-direct {v0, p0}, Ljo7$a;-><init>(Ljo7;)V

    return-object v0
.end method
