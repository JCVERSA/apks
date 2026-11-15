.class public abstract Lyh5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field public static c:Z = true

.field public static d:Z = true

.field public static e:Lcom/airbnb/lottie/AsyncUpdates;

.field public static f:Lgt5;

.field public static g:Lft5;

.field public static volatile h:Lrz6;

.field public static volatile i:Loz6;

.field public static j:Ljava/lang/ThreadLocal;

.field public static k:Llp8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    sput-object v0, Lyh5;->e:Lcom/airbnb/lottie/AsyncUpdates;

    new-instance v0, Lqaa;

    invoke-direct {v0}, Lqaa;-><init>()V

    sput-object v0, Lyh5;->k:Llp8;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    invoke-static {p0}, Lyh5;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lyh5;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lyh5;->g()Lmt5;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmt5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)F
    .locals 1

    sget-boolean v0, Lyh5;->b:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lyh5;->g()Lmt5;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmt5;->b(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static d()Lcom/airbnb/lottie/AsyncUpdates;
    .locals 1

    sget-object v0, Lyh5;->e:Lcom/airbnb/lottie/AsyncUpdates;

    return-object v0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lyh5;->d:Z

    return v0
.end method

.method public static f()Llp8;
    .locals 1

    sget-object v0, Lyh5;->k:Llp8;

    return-object v0
.end method

.method public static g()Lmt5;
    .locals 2

    sget-object v0, Lyh5;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmt5;

    if-nez v0, :cond_0

    new-instance v0, Lmt5;

    invoke-direct {v0}, Lmt5;-><init>()V

    sget-object v1, Lyh5;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lyh5;->b:Z

    return v0
.end method

.method public static synthetic i(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "lottie_network_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Loz6;
    .locals 3

    sget-boolean v0, Lyh5;->c:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lyh5;->i:Loz6;

    if-nez v0, :cond_3

    const-class v1, Loz6;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyh5;->i:Loz6;

    if-nez v0, :cond_2

    new-instance v0, Loz6;

    sget-object v2, Lyh5;->g:Lft5;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lvh5;

    invoke-direct {v2, p0}, Lvh5;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {v0, v2}, Loz6;-><init>(Lft5;)V

    sput-object v0, Lyh5;->i:Loz6;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_3
    return-object v0
.end method

.method public static k(Landroid/content/Context;)Lrz6;
    .locals 3

    sget-object v0, Lyh5;->h:Lrz6;

    if-nez v0, :cond_2

    const-class v1, Lrz6;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyh5;->h:Lrz6;

    if-nez v0, :cond_1

    new-instance v0, Lrz6;

    invoke-static {p0}, Lyh5;->j(Landroid/content/Context;)Loz6;

    move-result-object p0

    sget-object v2, Lyh5;->f:Lgt5;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lk22;

    invoke-direct {v2}, Lk22;-><init>()V

    :goto_0
    invoke-direct {v0, p0, v2}, Lrz6;-><init>(Loz6;Lgt5;)V

    sput-object v0, Lyh5;->h:Lrz6;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-object v0
.end method
