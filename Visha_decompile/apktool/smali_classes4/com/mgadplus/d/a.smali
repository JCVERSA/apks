.class public Lcom/mgadplus/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Ljava/util/Queue;

.field public d:Lcom/mgadplus/d/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/d/a;->a:Z

    iput-boolean v0, p0, Lcom/mgadplus/d/a;->b:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/d/a;->c:Ljava/util/Queue;

    return-void
.end method

.method public static synthetic a(Lcom/mgadplus/d/a;)Lw5d;
    .locals 0

    invoke-virtual {p0}, Lcom/mgadplus/d/a;->l()Lw5d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/mgadplus/d/a;Lcom/mgadplus/d/c;)Lcom/mgadplus/d/c;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/d/a;->d:Lcom/mgadplus/d/c;

    return-object p1
.end method

.method public static synthetic d(Lcom/mgadplus/d/a;Ljava/util/concurrent/Executor;Lw5d;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mgadplus/d/a;->e(Ljava/util/concurrent/Executor;Lw5d;)V

    return-void
.end method

.method public static synthetic f(Lcom/mgadplus/d/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mgadplus/d/a;->b:Z

    return p1
.end method


# virtual methods
.method public c()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/d/a;->c:Ljava/util/Queue;

    return-object p0
.end method

.method public final e(Ljava/util/concurrent/Executor;Lw5d;)V
    .locals 2

    iget-boolean v0, p0, Lcom/mgadplus/d/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    invoke-static {}, Lj4d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/mgadplus/d/c;

    invoke-direct {v0}, Lcom/mgadplus/d/c;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/d/a;->d:Lcom/mgadplus/d/c;

    new-instance v1, Lcom/mgadplus/d/a$a;

    invoke-direct {v1, p0, p1}, Lcom/mgadplus/d/a$a;-><init>(Lcom/mgadplus/d/a;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/mgadplus/d/c;->d(Ljava/util/concurrent/Executor;Lw5d;Lcom/mgadplus/d/c$b;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/mgadplus/d/a$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/mgadplus/d/a$2;-><init>(Lcom/mgadplus/d/a;Ljava/util/concurrent/Executor;Lw5d;)V

    invoke-static {v0}, Lj4d;->b(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public g(Ljava/util/concurrent/Executor;Ljava/util/List;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/mgadplus/d/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mgadplus/d/a;->i(Ljava/util/concurrent/Executor;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/d/a;->b:Z

    return p0
.end method

.method public final i(Ljava/util/concurrent/Executor;Ljava/util/List;)Z
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "QueueTask"

    const-string p1, "startInternal empty"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/mgadplus/d/a;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/d/a;->b:Z

    invoke-virtual {p0}, Lcom/mgadplus/d/a;->c()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    invoke-virtual {p0}, Lcom/mgadplus/d/a;->c()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/mgadplus/d/a;->l()Lw5d;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/mgadplus/d/a;->e(Ljava/util/concurrent/Executor;Lw5d;)V

    return v0

    :cond_1
    return v1
.end method

.method public j()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgadplus/d/a;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/d/a;->k()Z

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 2

    invoke-virtual {p0}, Lcom/mgadplus/d/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mgadplus/d/a;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/d/a;->a:Z

    invoke-virtual {p0}, Lcom/mgadplus/d/a;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object p0, p0, Lcom/mgadplus/d/a;->d:Lcom/mgadplus/d/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final l()Lw5d;
    .locals 1

    invoke-virtual {p0}, Lcom/mgadplus/d/a;->c()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/d/a;->c()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw5d;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
