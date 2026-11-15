.class public Lcom/mgtv/thirdsdk/playcore/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/mgtv/thirdsdk/playcore/b/c;

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Landroid/content/IntentFilter;

.field private d:Landroid/os/Handler;

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/net/c;->c()I

    move-result v0

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->g:I

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/b/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->h:Ljava/lang/String;

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/b/b$1;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/b/b$1;-><init>(Lcom/mgtv/thirdsdk/playcore/b/b;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->b:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->c:Landroid/content/IntentFilter;

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/b/b$2;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/b/b$2;-><init>(Lcom/mgtv/thirdsdk/playcore/b/b;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->d:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/b/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->f:Z

    return p0
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/b/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/thirdsdk/playcore/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/b/b;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->a:Lcom/mgtv/thirdsdk/playcore/b/c;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/hunantv/imgo/net/c;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/b/b;->e()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->g:I

    if-eq v0, v3, :cond_3

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->g:I

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->h:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-object v2, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->h:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->a:Lcom/mgtv/thirdsdk/playcore/b/c;

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->i:Z

    invoke-interface {v0, v1, p0}, Lcom/mgtv/thirdsdk/playcore/b/c;->a(ZZ)V

    :cond_4
    return-void
.end method

.method private static e()Ljava/lang/String;
    .locals 5

    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v3, "::"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "127.0.0.1"

    :goto_0
    return-object v0
.end method

.method private f()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->e:Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quitSafely()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->i:Z

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->f:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->b:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->c:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 7
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/b/c;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->a:Lcom/mgtv/thirdsdk/playcore/b/c;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->i:Z

    return-void
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->f:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 5
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/b/b;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/b/b;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->i:Z

    .line 3
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->f:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/b/b;->d:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
