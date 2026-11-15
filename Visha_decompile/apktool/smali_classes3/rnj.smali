.class public final Lrnj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lbnj;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lrnj;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILbnj;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILbnj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrnj;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lrnj;->a:I

    iput-object p3, p0, Lrnj;->b:Lbnj;

    return-void
.end method


# virtual methods
.method public final a(ILbnj;)Lrnj;
    .locals 1

    new-instance p1, Lrnj;

    iget-object p0, p0, Lrnj;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lrnj;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILbnj;)V

    return-object p1
.end method

.method public final b(Landroid/os/Handler;Lsnj;)V
    .locals 1

    new-instance v0, Lqnj;

    invoke-direct {v0, p1, p2}, Lqnj;-><init>(Landroid/os/Handler;Lsnj;)V

    iget-object p0, p0, Lrnj;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lqfg;)V
    .locals 3

    iget-object p0, p0, Lrnj;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqnj;

    iget-object v1, v0, Lqnj;->b:Lsnj;

    iget-object v0, v0, Lqnj;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzvg;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzvg;-><init>(Lqfg;Lsnj;)V

    invoke-static {v0, v2}, Lkfh;->p(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lxmj;)V
    .locals 1

    new-instance v0, Llnj;

    invoke-direct {v0, p0, p1}, Llnj;-><init>(Lrnj;Lxmj;)V

    invoke-virtual {p0, v0}, Lrnj;->c(Lqfg;)V

    return-void
.end method

.method public final e(Lsmj;Lxmj;)V
    .locals 1

    new-instance v0, Lpnj;

    invoke-direct {v0, p0, p1, p2}, Lpnj;-><init>(Lrnj;Lsmj;Lxmj;)V

    invoke-virtual {p0, v0}, Lrnj;->c(Lqfg;)V

    return-void
.end method

.method public final f(Lsmj;Lxmj;)V
    .locals 1

    new-instance v0, Lnnj;

    invoke-direct {v0, p0, p1, p2}, Lnnj;-><init>(Lrnj;Lsmj;Lxmj;)V

    invoke-virtual {p0, v0}, Lrnj;->c(Lqfg;)V

    return-void
.end method

.method public final g(Lsmj;Lxmj;Ljava/io/IOException;Z)V
    .locals 7

    new-instance v6, Lonj;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lonj;-><init>(Lrnj;Lsmj;Lxmj;Ljava/io/IOException;Z)V

    invoke-virtual {p0, v6}, Lrnj;->c(Lqfg;)V

    return-void
.end method

.method public final h(Lsmj;Lxmj;I)V
    .locals 1

    new-instance v0, Lmnj;

    invoke-direct {v0, p0, p1, p2, p3}, Lmnj;-><init>(Lrnj;Lsmj;Lxmj;I)V

    invoke-virtual {p0, v0}, Lrnj;->c(Lqfg;)V

    return-void
.end method

.method public final i(Lsnj;)V
    .locals 3

    iget-object p0, p0, Lrnj;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqnj;

    iget-object v2, v1, Lqnj;->b:Lsnj;

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
