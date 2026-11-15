.class public Lcom/hunantv/imgo/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/hunantv/imgo/b/e;

.field private static c:Lcom/hunantv/imgo/b/d;


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/b/e;->a()Lcom/hunantv/imgo/b/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/hunantv/imgo/b/d;->a:Z

    iput-boolean v0, p0, Lcom/hunantv/imgo/b/e;->a:Z

    return-void
.end method

.method public static a()Lcom/hunantv/imgo/b/d;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/hunantv/imgo/b/e;->a(Lcom/hunantv/imgo/b/d;)V

    .line 7
    sget-object v0, Lcom/hunantv/imgo/b/e;->c:Lcom/hunantv/imgo/b/d;

    return-object v0
.end method

.method public static a(Lcom/hunantv/imgo/b/d;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/hunantv/imgo/b/e;->c:Lcom/hunantv/imgo/b/d;

    if-nez v0, :cond_2

    .line 2
    const-class v0, Lcom/hunantv/imgo/b/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/hunantv/imgo/b/e;->c:Lcom/hunantv/imgo/b/d;

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lcom/hunantv/imgo/b/d;->a()Lcom/hunantv/imgo/b/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/b/d$a;->a()Lcom/hunantv/imgo/b/d;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sput-object p0, Lcom/hunantv/imgo/b/e;->c:Lcom/hunantv/imgo/b/d;

    .line 5
    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public static c()Lcom/hunantv/imgo/b/e;
    .locals 2

    sget-object v0, Lcom/hunantv/imgo/b/e;->b:Lcom/hunantv/imgo/b/e;

    if-nez v0, :cond_1

    const-class v0, Lcom/hunantv/imgo/b/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/imgo/b/e;->b:Lcom/hunantv/imgo/b/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hunantv/imgo/b/e;

    invoke-direct {v1}, Lcom/hunantv/imgo/b/e;-><init>()V

    sput-object v1, Lcom/hunantv/imgo/b/e;->b:Lcom/hunantv/imgo/b/e;

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
    sget-object v0, Lcom/hunantv/imgo/b/e;->b:Lcom/hunantv/imgo/b/e;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 8
    invoke-static {}, Lcom/hunantv/imgo/net/c;->d()Ljava/lang/String;

    move-result-object v0

    .line 9
    const-string v1, "Wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 10
    :goto_1
    iput-boolean p1, p0, Lcom/hunantv/imgo/b/e;->a:Z

    return-void
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/imgo/b/e;->a:Z

    return p0
.end method
