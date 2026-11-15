.class public final Lcom/android/net/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/c$a;
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/net/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/net/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/android/net/b;

.field private final e:Lcom/android/net/q;

.field private volatile f:Z

.field private final g:Lcom/android/net/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/net/v;->b:Z

    sput-boolean v0, Lcom/android/net/c;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/net/b;Lcom/android/net/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/net/n<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/net/n<",
            "*>;>;",
            "Lcom/android/net/b;",
            "Lcom/android/net/q;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/net/c;->f:Z

    iput-object p1, p0, Lcom/android/net/c;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/android/net/c;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/android/net/c;->d:Lcom/android/net/b;

    iput-object p4, p0, Lcom/android/net/c;->e:Lcom/android/net/q;

    new-instance p1, Lcom/android/net/c$a;

    invoke-direct {p1, p0}, Lcom/android/net/c$a;-><init>(Lcom/android/net/c;)V

    iput-object p1, p0, Lcom/android/net/c;->g:Lcom/android/net/c$a;

    return-void
.end method

.method public static synthetic a(Lcom/android/net/c;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/net/c;->c:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/net/c;)Lcom/android/net/q;
    .locals 0

    iget-object p0, p0, Lcom/android/net/c;->e:Lcom/android/net/q;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/net/c;->f:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 8

    sget-boolean v0, Lcom/android/net/c;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "start new dispatcher"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/net/v;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/net/c;->d:Lcom/android/net/b;

    invoke-interface {v0}, Lcom/android/net/b;->a()V

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/net/c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/net/n;

    const-string v2, "cache-queue-take"

    invoke-virtual {v0, v2}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/net/n;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "cache-discard-canceled"

    invoke-virtual {v0, v2}, Lcom/android/net/n;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/net/c;->d:Lcom/android/net/b;

    iget-object v3, v0, Lcom/android/net/n;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/net/b;->a(Ljava/lang/String;)Lcom/android/net/b$a;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "cache-miss"

    invoke-virtual {v0, v2}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/net/c;->g:Lcom/android/net/c$a;

    invoke-virtual {v2, v0}, Lcom/android/net/c$a;->b(Lcom/android/net/n;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/android/net/c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/android/net/b$a;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "cache-hit-expired"

    invoke-virtual {v0, v3}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/net/n;->k:Lcom/android/net/b$a;

    iget-object v2, p0, Lcom/android/net/c;->g:Lcom/android/net/c$a;

    invoke-virtual {v2, v0}, Lcom/android/net/c$a;->b(Lcom/android/net/n;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_4
    const-string v3, "cache-hit"

    invoke-virtual {v0, v3}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/android/net/k;

    iget-object v4, v2, Lcom/android/net/b$a;->a:[B

    iget-object v5, v2, Lcom/android/net/b$a;->g:Ljava/util/Map;

    invoke-direct {v3, v4, v5, v1}, Lcom/android/net/k;-><init>([BLjava/util/Map;B)V

    invoke-virtual {v0, v3}, Lcom/android/net/n;->a(Lcom/android/net/k;)Lcom/android/net/p;

    move-result-object v3

    const-string v4, "cache-hit-parsed"

    invoke-virtual {v0, v4}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    iget-wide v4, v2, Lcom/android/net/b$a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    const-string v4, "cache-hit-refresh-needed"

    invoke-virtual {v0, v4}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/net/n;->k:Lcom/android/net/b$a;

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/android/net/p;->d:Z

    iget-object v2, p0, Lcom/android/net/c;->g:Lcom/android/net/c$a;

    invoke-virtual {v2, v0}, Lcom/android/net/c$a;->b(Lcom/android/net/n;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/net/c;->e:Lcom/android/net/q;

    new-instance v4, Lcom/android/net/c$1;

    invoke-direct {v4, p0, v0}, Lcom/android/net/c$1;-><init>(Lcom/android/net/c;Lcom/android/net/n;)V

    invoke-interface {v2, v0, v3, v4}, Lcom/android/net/q;->a(Lcom/android/net/n;Lcom/android/net/p;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/net/c;->e:Lcom/android/net/q;

    invoke-interface {v2, v0, v3}, Lcom/android/net/q;->a(Lcom/android/net/n;Lcom/android/net/p;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/android/net/c;->f:Z

    if-eqz v0, :cond_1

    return-void
.end method
