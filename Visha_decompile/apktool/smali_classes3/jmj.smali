.class public abstract Ljmj;
.super Lulj;
.source "SourceFile"


# instance fields
.field public final h:Ljava/util/HashMap;

.field public i:Landroid/os/Handler;

.field public j:Lixi;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lulj;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljmj;->h:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;JLbnj;)J
    .locals 0

    return-wide p2
.end method

.method public abstract B(Ljava/lang/Object;Lbnj;)Lbnj;
.end method

.method public final r()V
    .locals 2

    iget-object p0, p0, Ljmj;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limj;

    iget-object v1, v0, Limj;->a:Lknj;

    iget-object v0, v0, Limj;->b:Lcnj;

    invoke-interface {v1, v0}, Lknj;->g(Lcnj;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 2

    iget-object p0, p0, Ljmj;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limj;

    iget-object v1, v0, Limj;->a:Lknj;

    iget-object v0, v0, Limj;->b:Lcnj;

    invoke-interface {v1, v0}, Lknj;->e(Lcnj;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t(Lixi;)V
    .locals 0

    iput-object p1, p0, Ljmj;->j:Lixi;

    const/4 p1, 0x0

    invoke-static {p1}, Lkfh;->T(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Ljmj;->i:Landroid/os/Handler;

    return-void
.end method

.method public v()V
    .locals 4

    iget-object p0, p0, Ljmj;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Limj;

    iget-object v2, v1, Limj;->a:Lknj;

    iget-object v3, v1, Limj;->b:Lcnj;

    invoke-interface {v2, v3}, Lknj;->c(Lcnj;)V

    iget-object v1, v1, Limj;->c:Lhmj;

    invoke-interface {v2, v1}, Lknj;->j(Lsnj;)V

    invoke-interface {v2, v1}, Lknj;->a(Lkjj;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public abstract x(Ljava/lang/Object;Lknj;Lw4f;)V
.end method

.method public final y(Ljava/lang/Object;Lknj;)V
    .locals 4

    iget-object v0, p0, Ljmj;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ln7g;->d(Z)V

    new-instance v1, Lgmj;

    invoke-direct {v1, p0, p1}, Lgmj;-><init>(Ljmj;Ljava/lang/Object;)V

    new-instance v2, Lhmj;

    invoke-direct {v2, p0, p1}, Lhmj;-><init>(Ljmj;Ljava/lang/Object;)V

    new-instance v3, Limj;

    invoke-direct {v3, p2, v1, v2}, Limj;-><init>(Lknj;Lcnj;Lhmj;)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Ljmj;->i:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1, v2}, Lknj;->l(Landroid/os/Handler;Lsnj;)V

    iget-object p1, p0, Ljmj;->i:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1, v2}, Lknj;->d(Landroid/os/Handler;Lkjj;)V

    iget-object p1, p0, Ljmj;->j:Lixi;

    invoke-virtual {p0}, Lulj;->m()Ltfj;

    move-result-object v0

    invoke-interface {p2, v1, p1, v0}, Lknj;->f(Lcnj;Lixi;Ltfj;)V

    invoke-virtual {p0}, Lulj;->w()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p2, v1}, Lknj;->g(Lcnj;)V

    :cond_0
    return-void
.end method

.method public z(Ljava/lang/Object;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public zzz()V
    .locals 1

    iget-object p0, p0, Ljmj;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limj;

    iget-object v0, v0, Limj;->a:Lknj;

    invoke-interface {v0}, Lknj;->zzz()V

    goto :goto_0

    :cond_0
    return-void
.end method
