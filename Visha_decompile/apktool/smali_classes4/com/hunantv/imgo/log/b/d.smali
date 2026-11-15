.class public Lcom/hunantv/imgo/log/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/log/b/d$a;
    }
.end annotation


# static fields
.field private static b:Lcom/hunantv/imgo/log/b/d;


# instance fields
.field private a:Lcom/hunantv/imgo/log/b/d$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hunantv/imgo/log/b/d;
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/log/b/d;->b:Lcom/hunantv/imgo/log/b/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/hunantv/imgo/log/b/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/imgo/log/b/d;->b:Lcom/hunantv/imgo/log/b/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hunantv/imgo/log/b/d;

    invoke-direct {v1}, Lcom/hunantv/imgo/log/b/d;-><init>()V

    sput-object v1, Lcom/hunantv/imgo/log/b/d;->b:Lcom/hunantv/imgo/log/b/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/hunantv/imgo/log/b/d;->b:Lcom/hunantv/imgo/log/b/d;

    return-object v0
.end method

.method private d()Landroid/net/LocalServerSocket;
    .locals 2

    const-string p0, "createLocalServerSocket start"

    const-string v0, "LogService"

    invoke-static {v0, p0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Landroid/net/LocalServerSocket;

    const-string v1, "com.hunantv.imgo.log"

    invoke-direct {p0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    const-string v1, "createLocalServerSocket success"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/imgo/log/b/a;->a()Lcom/hunantv/imgo/log/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/log/b/a;->b()V

    iget-object v0, p0, Lcom/hunantv/imgo/log/b/d;->a:Lcom/hunantv/imgo/log/b/d$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hunantv/imgo/log/b/d;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/hunantv/imgo/log/b/d;->d()Landroid/net/LocalServerSocket;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/hunantv/imgo/log/b/d$a;

    invoke-direct {v1, p0, v0}, Lcom/hunantv/imgo/log/b/d$a;-><init>(Lcom/hunantv/imgo/log/b/d;Landroid/net/LocalServerSocket;)V

    iput-object v1, p0, Lcom/hunantv/imgo/log/b/d;->a:Lcom/hunantv/imgo/log/b/d$a;

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/imgo/log/b/d;->a:Lcom/hunantv/imgo/log/b/d$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/imgo/log/b/d$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/imgo/log/b/d;->a:Lcom/hunantv/imgo/log/b/d$a;

    :cond_0
    return-void
.end method
