.class public final Lcom/android/net/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field volatile a:Z

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/net/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/android/net/h;

.field private final d:Lcom/android/net/b;

.field private final e:Lcom/android/net/q;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/net/h;Lcom/android/net/b;Lcom/android/net/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/net/n<",
            "*>;>;",
            "Lcom/android/net/h;",
            "Lcom/android/net/b;",
            "Lcom/android/net/q;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/net/i;->a:Z

    iput-object p1, p0, Lcom/android/net/i;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/android/net/i;->c:Lcom/android/net/h;

    iput-object p3, p0, Lcom/android/net/i;->d:Lcom/android/net/b;

    iput-object p4, p0, Lcom/android/net/i;->e:Lcom/android/net/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/net/i;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/net/n;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "network-queue-take"

    invoke-virtual {v2, v3}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/net/n;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "network-discard-cancelled"

    invoke-virtual {v2, v3}, Lcom/android/net/n;->b(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Lcom/android/net/n;->m()V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_4

    :cond_1
    iget v3, v2, Lcom/android/net/n;->c:I

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v3, p0, Lcom/android/net/i;->c:Lcom/android/net/h;

    invoke-interface {v3, v2}, Lcom/android/net/h;->a(Lcom/android/net/n;)Lcom/android/net/k;

    move-result-object v3

    const-string v4, "network-http-complete"

    invoke-virtual {v2, v4}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/android/net/k;->e:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/net/n;->l()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "not-modified"

    invoke-virtual {v2, v3}, Lcom/android/net/n;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/net/n;->a(Lcom/android/net/k;)Lcom/android/net/p;

    move-result-object v3

    const-string v4, "network-parse-complete"

    invoke-virtual {v2, v4}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    iget-boolean v4, v2, Lcom/android/net/n;->h:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/net/p;->b:Lcom/android/net/b$a;

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/net/i;->d:Lcom/android/net/b;

    iget-object v6, v2, Lcom/android/net/n;->b:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Lcom/android/net/b;->a(Ljava/lang/String;Lcom/android/net/b$a;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v2, v4}, Lcom/android/net/n;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/android/net/n;->k()V

    iget-object v4, p0, Lcom/android/net/i;->e:Lcom/android/net/q;

    invoke-interface {v4, v2, v3}, Lcom/android/net/q;->a(Lcom/android/net/n;Lcom/android/net/p;)V

    invoke-virtual {v2, v3}, Lcom/android/net/n;->a(Lcom/android/net/p;)V
    :try_end_1
    .catch Lcom/android/net/u; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :goto_2
    :try_start_2
    const-string v4, "Unhandled exception %s"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/net/v;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/android/net/u;

    invoke-direct {v4, v3}, Lcom/android/net/u;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/net/u;->b:J

    iget-object v0, p0, Lcom/android/net/i;->e:Lcom/android/net/q;

    invoke-interface {v0, v2, v4}, Lcom/android/net/q;->a(Lcom/android/net/n;Lcom/android/net/u;)V

    :goto_3
    invoke-virtual {v2}, Lcom/android/net/n;->m()V

    goto/16 :goto_0

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    iput-wide v4, v3, Lcom/android/net/u;->b:J

    invoke-static {v3}, Lcom/android/net/n;->a(Lcom/android/net/u;)Lcom/android/net/u;

    move-result-object v0

    iget-object v1, p0, Lcom/android/net/i;->e:Lcom/android/net/q;

    invoke-interface {v1, v2, v0}, Lcom/android/net/q;->a(Lcom/android/net/n;Lcom/android/net/u;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    iget-boolean v0, p0, Lcom/android/net/i;->a:Z

    if-eqz v0, :cond_0

    return-void
.end method
