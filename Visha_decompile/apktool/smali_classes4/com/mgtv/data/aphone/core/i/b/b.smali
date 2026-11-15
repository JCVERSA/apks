.class public Lcom/mgtv/data/aphone/core/i/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/data/aphone/core/i/b/c;


# static fields
.field private static a:Lcom/mgtv/data/aphone/core/i/b/b;


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/i/b/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/i/b/b;->b()V

    return-void
.end method

.method public static a()Lcom/mgtv/data/aphone/core/i/b/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/mgtv/data/aphone/core/i/b/b;->a:Lcom/mgtv/data/aphone/core/i/b/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mgtv/data/aphone/core/i/b/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mgtv/data/aphone/core/i/b/b;->a:Lcom/mgtv/data/aphone/core/i/b/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mgtv/data/aphone/core/i/b/b;

    invoke-direct {v1}, Lcom/mgtv/data/aphone/core/i/b/b;-><init>()V

    sput-object v1, Lcom/mgtv/data/aphone/core/i/b/b;->a:Lcom/mgtv/data/aphone/core/i/b/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgtv/data/aphone/core/i/b/b;->a:Lcom/mgtv/data/aphone/core/i/b/b;

    return-object v0
.end method

.method private a(Lcom/mgtv/data/aphone/core/bean/TraceBasketBean;)V
    .locals 2

    .line 12
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/i/b/b;->b:Ljava/lang/Object;

    monitor-enter p0

    .line 13
    :try_start_0
    invoke-static {}, Lcom/mgtv/data/aphone/core/i/b;->a()Lcom/mgtv/data/aphone/core/i/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mgtv/data/aphone/core/bean/TraceBasketBean;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mgtv/data/aphone/core/bean/TraceBasketBean;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/mgtv/data/aphone/core/i/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b()V
    .locals 1

    const-string p0, "big_data_sdk"

    const-string v0, "TraceLogRequestHandler  init()"

    invoke-static {p0, v0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/data/aphone/core/i/a/b;)Lcom/mgtv/data/aphone/core/i/a/c;
    .locals 3

    if-eqz p1, :cond_0

    .line 7
    :try_start_0
    iget-object p1, p1, Lcom/mgtv/data/aphone/core/i/a/b;->b:[B

    invoke-static {p1}, Lcom/mgtv/data/aphone/core/bean/TraceBasketBean;->a([B)Lcom/mgtv/data/aphone/core/bean/TraceBasketBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-direct {p0, p1}, Lcom/mgtv/data/aphone/core/i/b/b;->a(Lcom/mgtv/data/aphone/core/bean/TraceBasketBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    const-string p0, "OK"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 11
    new-instance p1, Lcom/mgtv/data/aphone/core/i/a/c;

    new-instance v0, Lcom/mgtv/data/aphone/core/i/a/a;

    array-length v1, p0

    const/16 v2, 0x14

    invoke-direct {v0, v2, v1}, Lcom/mgtv/data/aphone/core/i/a/a;-><init>(BI)V

    invoke-direct {p1, v0, p0}, Lcom/mgtv/data/aphone/core/i/a/c;-><init>(Lcom/mgtv/data/aphone/core/i/a/a;[B)V

    return-object p1
.end method
