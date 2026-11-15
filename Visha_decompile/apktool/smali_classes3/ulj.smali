.class public abstract Lulj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lknj;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/HashSet;

.field public final c:Lrnj;

.field public final d:Ljjj;

.field public e:Landroid/os/Looper;

.field public f:Lw4f;

.field public g:Ltfj;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lulj;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lulj;->b:Ljava/util/HashSet;

    new-instance v0, Lrnj;

    invoke-direct {v0}, Lrnj;-><init>()V

    iput-object v0, p0, Lulj;->c:Lrnj;

    new-instance v0, Ljjj;

    invoke-direct {v0}, Ljjj;-><init>()V

    iput-object v0, p0, Lulj;->d:Ljjj;

    return-void
.end method


# virtual methods
.method public final a(Lkjj;)V
    .locals 0

    iget-object p0, p0, Lulj;->d:Ljjj;

    invoke-virtual {p0, p1}, Ljjj;->c(Lkjj;)V

    return-void
.end method

.method public final c(Lcnj;)V
    .locals 1

    iget-object v0, p0, Lulj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lulj;->e:Landroid/os/Looper;

    iput-object p1, p0, Lulj;->f:Lw4f;

    iput-object p1, p0, Lulj;->g:Ltfj;

    iget-object p1, p0, Lulj;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lulj;->v()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lulj;->g(Lcnj;)V

    return-void
.end method

.method public final d(Landroid/os/Handler;Lkjj;)V
    .locals 0

    iget-object p0, p0, Lulj;->d:Ljjj;

    invoke-virtual {p0, p1, p2}, Ljjj;->b(Landroid/os/Handler;Lkjj;)V

    return-void
.end method

.method public final e(Lcnj;)V
    .locals 2

    iget-object v0, p0, Lulj;->e:Landroid/os/Looper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lulj;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lulj;->s()V

    :cond_0
    return-void
.end method

.method public final f(Lcnj;Lixi;Ltfj;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lulj;->e:Landroid/os/Looper;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-static {v2}, Ln7g;->d(Z)V

    iput-object p3, p0, Lulj;->g:Ltfj;

    iget-object p3, p0, Lulj;->f:Lw4f;

    iget-object v1, p0, Lulj;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lulj;->e:Landroid/os/Looper;

    if-nez v1, :cond_2

    iput-object v0, p0, Lulj;->e:Landroid/os/Looper;

    iget-object p3, p0, Lulj;->b:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lulj;->t(Lixi;)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Lulj;->e(Lcnj;)V

    invoke-interface {p1, p0, p3}, Lcnj;->a(Lknj;Lw4f;)V

    :cond_3
    return-void
.end method

.method public final g(Lcnj;)V
    .locals 2

    iget-object v0, p0, Lulj;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lulj;->r()V

    :cond_0
    return-void
.end method

.method public abstract synthetic i(Lcme;)V
.end method

.method public final j(Lsnj;)V
    .locals 0

    iget-object p0, p0, Lulj;->c:Lrnj;

    invoke-virtual {p0, p1}, Lrnj;->i(Lsnj;)V

    return-void
.end method

.method public final l(Landroid/os/Handler;Lsnj;)V
    .locals 0

    iget-object p0, p0, Lulj;->c:Lrnj;

    invoke-virtual {p0, p1, p2}, Lrnj;->b(Landroid/os/Handler;Lsnj;)V

    return-void
.end method

.method public final m()Ltfj;
    .locals 0

    iget-object p0, p0, Lulj;->g:Ltfj;

    invoke-static {p0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final n(Lbnj;)Ljjj;
    .locals 1

    iget-object p0, p0, Lulj;->d:Ljjj;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljjj;->a(ILbnj;)Ljjj;

    move-result-object p0

    return-object p0
.end method

.method public final o(ILbnj;)Ljjj;
    .locals 0

    iget-object p0, p0, Lulj;->d:Ljjj;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljjj;->a(ILbnj;)Ljjj;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lbnj;)Lrnj;
    .locals 1

    iget-object p0, p0, Lulj;->c:Lrnj;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lrnj;->a(ILbnj;)Lrnj;

    move-result-object p0

    return-object p0
.end method

.method public final q(ILbnj;)Lrnj;
    .locals 0

    iget-object p0, p0, Lulj;->c:Lrnj;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lrnj;->a(ILbnj;)Lrnj;

    move-result-object p0

    return-object p0
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public abstract t(Lixi;)V
.end method

.method public final u(Lw4f;)V
    .locals 4

    iput-object p1, p0, Lulj;->f:Lw4f;

    iget-object v0, p0, Lulj;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcnj;

    invoke-interface {v3, p0, p1}, Lcnj;->a(Lknj;Lw4f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract v()V
.end method

.method public final w()Z
    .locals 0

    iget-object p0, p0, Lulj;->b:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic zzM()Lw4f;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic zzv()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
