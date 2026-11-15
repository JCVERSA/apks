.class public Ll8d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc7d$a;


# instance fields
.field public final a:Ljava/util/concurrent/BlockingQueue;

.field public final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final c:Ljava/util/ArrayDeque;

.field public d:Lc7d;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ll8d;->c:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-object v0, p0, Ll8d;->d:Lc7d;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v7, p0, Ll8d;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    const/4 v2, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Ll8d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public a(Lc7d;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Ll8d;->d:Lc7d;

    invoke-virtual {p0}, Ll8d;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Ll8d;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc7d;

    iput-object v0, p0, Ll8d;->d:Lc7d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ll8d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Lc7d;->c(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_0
    return-void
.end method

.method public c(Lc7d;)V
    .locals 1

    invoke-virtual {p1, p0}, Lc7d;->a(Lc7d$a;)V

    iget-object v0, p0, Ll8d;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ll8d;->d:Lc7d;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ll8d;->b()V

    :cond_0
    return-void
.end method
