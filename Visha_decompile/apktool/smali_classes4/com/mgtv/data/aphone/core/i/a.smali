.class public Lcom/mgtv/data/aphone/core/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/data/aphone/core/i/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mgtv/data/aphone/core/i/a;


# instance fields
.field private b:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/mgtv/data/aphone/core/i/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mgtv/data/aphone/core/i/a$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/i/a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    const-string v0, "big_data_sdk"

    const-string v1, "####################  BigDataTrace  ()\u65b9\u6cd5"

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/i/a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v0, Lcom/mgtv/data/aphone/core/i/a$a;

    invoke-direct {v0, p0}, Lcom/mgtv/data/aphone/core/i/a$a;-><init>(Lcom/mgtv/data/aphone/core/i/a;)V

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/i/a;->c:Lcom/mgtv/data/aphone/core/i/a$a;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a()Lcom/mgtv/data/aphone/core/i/a;
    .locals 2

    .line 2
    sget-object v0, Lcom/mgtv/data/aphone/core/i/a;->a:Lcom/mgtv/data/aphone/core/i/a;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/mgtv/data/aphone/core/i/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mgtv/data/aphone/core/i/a;->a:Lcom/mgtv/data/aphone/core/i/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mgtv/data/aphone/core/i/a;

    invoke-direct {v1}, Lcom/mgtv/data/aphone/core/i/a;-><init>()V

    sput-object v1, Lcom/mgtv/data/aphone/core/i/a;->a:Lcom/mgtv/data/aphone/core/i/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgtv/data/aphone/core/i/a;->a:Lcom/mgtv/data/aphone/core/i/a;

    return-object v0
.end method

.method public static synthetic a(Lcom/mgtv/data/aphone/core/i/a;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/i/a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/data/aphone/core/i/a/b;
    .locals 1

    new-instance v0, Lcom/mgtv/data/aphone/core/bean/TraceBasketBean;

    invoke-direct {v0, p0, p1}, Lcom/mgtv/data/aphone/core/bean/TraceBasketBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/mgtv/data/aphone/core/i/a/b;

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/bean/TraceBasketBean;->b()Lcom/mgtv/data/aphone/core/i/a/a;

    move-result-object p1

    invoke-virtual {v0}, Lcom/mgtv/data/aphone/core/bean/TraceBasketBean;->a()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mgtv/data/aphone/core/i/a/b;-><init>(Lcom/mgtv/data/aphone/core/i/a/a;[B)V

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mgtv/data/aphone/core/i/a/b;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/mgtv/data/aphone/core/i/a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    const-string v0, "BigDataTrace"

    const-string v1, "BigDataSdkTrace offer to queue failed, remove old and retry"

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/data/aphone/core/i/a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    .line 14
    iget-object p0, p0, Lcom/mgtv/data/aphone/core/i/a;->b:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 8
    sget-boolean v0, Lcom/mgtv/data/aphone/core/i/b;->a:Z

    if-nez v0, :cond_0

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "####################  BigDataTrace  \u662f\u5426\u6253\u5f00\u9e70\u773c\u529f\u80fd\uff1a "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/mgtv/data/aphone/core/i/b;->a:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "big_data_sdk"

    invoke-static {p1, p0}, Lcom/mgtv/data/aphone/core/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    invoke-static {p1, p2}, Lcom/mgtv/data/aphone/core/i/a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/data/aphone/core/i/a/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/core/i/a;->a(Lcom/mgtv/data/aphone/core/i/a/b;)V

    return-void
.end method
