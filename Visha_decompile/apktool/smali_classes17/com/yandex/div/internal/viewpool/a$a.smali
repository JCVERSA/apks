.class public final Lcom/yandex/div/internal/viewpool/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhcc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/viewpool/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/viewpool/a$a$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/yandex/div/internal/viewpool/a$a$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;

.field public final c:Lr08;

.field public final d:Lhcc;

.field public final e:Lcom/yandex/div/internal/viewpool/ViewCreator;

.field public final f:Ljava/util/concurrent/BlockingQueue;

.field public g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Z

.field public volatile j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/internal/viewpool/a$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/internal/viewpool/a$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/internal/viewpool/a$a;->k:Lcom/yandex/div/internal/viewpool/a$a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;Lr08;Lhcc;Lcom/yandex/div/internal/viewpool/ViewCreator;I)V
    .locals 1

    const-string v0, "viewName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionProfiler"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewFactory"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewCreator"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/viewpool/a$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/yandex/div/internal/viewpool/a$a;->b:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;

    iput-object p3, p0, Lcom/yandex/div/internal/viewpool/a$a;->c:Lr08;

    iput-object p4, p0, Lcom/yandex/div/internal/viewpool/a$a;->d:Lhcc;

    iput-object p5, p0, Lcom/yandex/div/internal/viewpool/a$a;->e:Lcom/yandex/div/internal/viewpool/ViewCreator;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/viewpool/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/yandex/div/internal/viewpool/a$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/yandex/div/internal/viewpool/a$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/div/internal/viewpool/a$a;->i:Z

    iput p6, p0, Lcom/yandex/div/internal/viewpool/a$a;->j:I

    move p1, p3

    :goto_0
    if-ge p1, p6, :cond_0

    iget-object p2, p0, Lcom/yandex/div/internal/viewpool/a$a;->e:Lcom/yandex/div/internal/viewpool/ViewCreator;

    invoke-virtual {p2, p0, p3}, Lcom/yandex/div/internal/viewpool/ViewCreator;->b(Lcom/yandex/div/internal/viewpool/a$a;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/internal/viewpool/a$a;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/internal/viewpool/a$a;->h()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/div/internal/viewpool/a$a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/a$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/div/internal/viewpool/a$a;)Lcom/yandex/div/internal/viewpool/ViewCreator;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/a$a;->e:Lcom/yandex/div/internal/viewpool/ViewCreator;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/div/internal/viewpool/a$a;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/internal/viewpool/a$a;->g()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/a$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/a$a;->d:Lhcc;

    invoke-interface {v0}, Lhcc;->a()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final g()Landroid/view/View;
    .locals 5

    sget-object v0, Lcom/yandex/div/internal/viewpool/a;->e:Lcom/yandex/div/internal/viewpool/a$b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {p0}, Lcom/yandex/div/internal/viewpool/a$a;->e(Lcom/yandex/div/internal/viewpool/a$a;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {p0}, Lcom/yandex/div/internal/viewpool/a$a;->b(Lcom/yandex/div/internal/viewpool/a$a;)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/a$a;->b:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->b(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/a$a;->c:Lr08;

    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    invoke-static {v0}, Lr08;->a(Lr08;)Lq08;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/a$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/a$a;->b:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3, v4}, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->c(J)V

    :cond_2
    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/a$a;->c:Lr08;

    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    invoke-static {v0}, Lr08;->a(Lr08;)Lq08;

    :goto_0
    invoke-virtual {p0}, Lcom/yandex/div/internal/viewpool/a$a;->k()V

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    check-cast v2, Landroid/view/View;

    return-object v2
.end method

.method public final h()Landroid/view/View;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/a$a;->e:Lcom/yandex/div/internal/viewpool/ViewCreator;

    invoke-virtual {v0, p0}, Lcom/yandex/div/internal/viewpool/ViewCreator;->a(Lcom/yandex/div/internal/viewpool/a$a;)V

    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/a$a;->f:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x10

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/a$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/viewpool/a$a;->d:Lhcc;

    invoke-interface {v0}, Lhcc;->a()Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/a$a;->d:Lhcc;

    invoke-interface {p0}, Lhcc;->a()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/internal/viewpool/a$a;->i:Z

    return p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final k()V
    .locals 4

    iget v0, p0, Lcom/yandex/div/internal/viewpool/a$a;->j:I

    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/a$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/yandex/div/internal/viewpool/a;->e:Lcom/yandex/div/internal/viewpool/a$b;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {p0}, Lcom/yandex/div/internal/viewpool/a$a;->e(Lcom/yandex/div/internal/viewpool/a$a;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {p0}, Lcom/yandex/div/internal/viewpool/a$a;->d(Lcom/yandex/div/internal/viewpool/a$a;)Lcom/yandex/div/internal/viewpool/ViewCreator;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/yandex/div/internal/viewpool/ViewCreator;->b(Lcom/yandex/div/internal/viewpool/a$a;I)V

    invoke-static {p0}, Lcom/yandex/div/internal/viewpool/a$a;->c(Lcom/yandex/div/internal/viewpool/a$a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/a$a;->b:Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2, v3}, Lcom/yandex/div/internal/viewpool/ViewPoolProfiler;->d(J)V

    :cond_1
    return-void
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/internal/viewpool/a$a;->j:I

    return-void
.end method
