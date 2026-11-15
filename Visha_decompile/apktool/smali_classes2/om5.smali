.class public final Lom5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lom5$c;,
        Lom5$b;,
        Lom5$a;
    }
.end annotation


# instance fields
.field public final a:Ley0;

.field public final b:Lxn4;

.field public final c:Lom5$b;

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final e:Ljava/util/ArrayDeque;

.field public final f:Ljava/util/ArrayDeque;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ley0;Lom5$b;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lom5;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ley0;Lom5$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ley0;Lom5$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lom5;->a:Ley0;

    .line 4
    iput-object p1, p0, Lom5;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    iput-object p4, p0, Lom5;->c:Lom5$b;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lom5;->e:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lom5;->f:Ljava/util/ArrayDeque;

    .line 8
    new-instance p1, Lmm5;

    invoke-direct {p1, p0}, Lmm5;-><init>(Lom5;)V

    invoke-interface {p3, p2, p1}, Ley0;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lxn4;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lom5;->b:Lxn4;

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/CopyOnWriteArraySet;ILom5$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lom5;->h(Ljava/util/concurrent/CopyOnWriteArraySet;ILom5$a;)V

    return-void
.end method

.method public static synthetic b(Lom5;Landroid/os/Message;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lom5;->g(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Ljava/util/concurrent/CopyOnWriteArraySet;ILom5$a;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lom5$c;

    invoke-virtual {v0, p1, p2}, Lom5$c;->a(ILom5$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lom5;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lom5;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lom5$c;

    invoke-direct {v0, p1}, Lom5$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Landroid/os/Looper;Ley0;Lom5$b;)Lom5;
    .locals 1

    new-instance v0, Lom5;

    iget-object p0, p0, Lom5;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, p0, p1, p2, p3}, Lom5;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Ley0;Lom5$b;)V

    return-object v0
.end method

.method public e(Landroid/os/Looper;Lom5$b;)Lom5;
    .locals 1

    iget-object v0, p0, Lom5;->a:Ley0;

    invoke-virtual {p0, p1, v0, p2}, Lom5;->d(Landroid/os/Looper;Ley0;Lom5$b;)Lom5;

    move-result-object p0

    return-object p0
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lom5;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lom5;->b:Lxn4;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lxn4;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lom5;->b:Lxn4;

    invoke-interface {v0, v1}, Lxn4;->obtainMessage(I)Lxn4$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lxn4;->a(Lxn4$a;)Z

    :cond_1
    iget-object v0, p0, Lom5;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lom5;->e:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lom5;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lom5;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    if-nez v0, :cond_2

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lom5;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lom5;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lom5;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final g(Landroid/os/Message;)Z
    .locals 2

    iget-object p1, p0, Lom5;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lom5$c;

    iget-object v1, p0, Lom5;->c:Lom5$b;

    invoke-virtual {v0, v1}, Lom5$c;->b(Lom5$b;)V

    iget-object v0, p0, Lom5;->b:Lxn4;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lxn4;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public i(ILom5$a;)V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lom5;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lom5;->f:Ljava/util/ArrayDeque;

    new-instance v1, Lkm5;

    invoke-direct {v1, v0, p1, p2}, Lkm5;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILom5$a;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lom5;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lom5$c;

    iget-object v2, p0, Lom5;->c:Lom5$b;

    invoke-virtual {v1, v2}, Lom5$c;->c(Lom5$b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lom5;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lom5;->g:Z

    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lom5;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lom5$c;

    iget-object v2, v1, Lom5$c;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lom5;->c:Lom5$b;

    invoke-virtual {v1, v2}, Lom5$c;->c(Lom5$b;)V

    iget-object v2, p0, Lom5;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l(ILom5$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lom5;->i(ILom5$a;)V

    invoke-virtual {p0}, Lom5;->f()V

    return-void
.end method
