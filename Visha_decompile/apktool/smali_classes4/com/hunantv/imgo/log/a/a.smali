.class public Lcom/hunantv/imgo/log/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/log/a/a$a;
    }
.end annotation


# static fields
.field private static c:Lcom/hunantv/imgo/log/a/a;


# instance fields
.field private a:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/hunantv/imgo/log/entity/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/hunantv/imgo/log/a/a$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hunantv/imgo/log/a/a;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/hunantv/imgo/log/a/a;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v0, Lcom/hunantv/imgo/log/a/a$a;

    invoke-direct {v0, p0}, Lcom/hunantv/imgo/log/a/a$a;-><init>(Lcom/hunantv/imgo/log/a/a;)V

    iput-object v0, p0, Lcom/hunantv/imgo/log/a/a;->b:Lcom/hunantv/imgo/log/a/a$a;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a()Lcom/hunantv/imgo/log/a/a;
    .locals 2

    .line 2
    sget-object v0, Lcom/hunantv/imgo/log/a/a;->c:Lcom/hunantv/imgo/log/a/a;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/hunantv/imgo/log/a/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/hunantv/imgo/log/a/a;->c:Lcom/hunantv/imgo/log/a/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/hunantv/imgo/log/a/a;

    invoke-direct {v1}, Lcom/hunantv/imgo/log/a/a;-><init>()V

    sput-object v1, Lcom/hunantv/imgo/log/a/a;->c:Lcom/hunantv/imgo/log/a/a;

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
    sget-object v0, Lcom/hunantv/imgo/log/a/a;->c:Lcom/hunantv/imgo/log/a/a;

    return-object v0
.end method

.method public static synthetic a(Lcom/hunantv/imgo/log/a/a;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/imgo/log/a/a;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/log/entity/b;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/hunantv/imgo/log/a/a;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    const-string v0, "LogClient"

    const-string v1, "offer to queue failed, remove old and retry"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/hunantv/imgo/log/a/a;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    .line 11
    iget-object p0, p0, Lcom/hunantv/imgo/log/a/a;->a:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
