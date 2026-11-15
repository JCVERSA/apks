.class public final Lm9j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ltfj;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/Map;

.field public final e:Lj9j;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/Set;

.field public final h:Lqaj;

.field public final i:Lolg;

.field public j:Z

.field public k:Lixi;

.field public l:Lbpj;


# direct methods
.method public constructor <init>(Lj9j;Lqaj;Lolg;Ltfj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lm9j;->a:Ltfj;

    iput-object p1, p0, Lm9j;->e:Lj9j;

    new-instance p1, Lbpj;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lbpj;-><init>(I)V

    iput-object p1, p0, Lm9j;->l:Lbpj;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lm9j;->c:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm9j;->d:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm9j;->b:Ljava/util/List;

    iput-object p2, p0, Lm9j;->h:Lqaj;

    iput-object p3, p0, Lm9j;->i:Lolg;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm9j;->f:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lm9j;->g:Ljava/util/Set;

    return-void
.end method

.method public static bridge synthetic d(Lm9j;)Lolg;
    .locals 0

    iget-object p0, p0, Lm9j;->i:Lolg;

    return-object p0
.end method

.method public static bridge synthetic e(Lm9j;)Lqaj;
    .locals 0

    iget-object p0, p0, Lm9j;->h:Lqaj;

    return-object p0
.end method

.method public static synthetic f(Lm9j;Lknj;Lw4f;)V
    .locals 0

    iget-object p0, p0, Lm9j;->e:Lj9j;

    invoke-interface {p0}, Lj9j;->zzk()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lm9j;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final b()Lw4f;
    .locals 4

    iget-object v0, p0, Lm9j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh9j;

    iput v2, v3, Lh9j;->d:I

    iget-object v3, v3, Lh9j;->a:Lwmj;

    invoke-virtual {v3}, Lwmj;->F()Lw4f;

    move-result-object v3

    invoke-virtual {v3}, Lw4f;->c()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lv9j;

    iget-object p0, p0, Lm9j;->l:Lbpj;

    invoke-direct {v1, v0, p0}, Lv9j;-><init>(Ljava/util/Collection;Lbpj;)V

    return-object v1

    :cond_1
    sget-object p0, Lw4f;->a:Lw4f;

    return-object p0
.end method

.method public final c(IILjava/util/List;)Lw4f;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Lm9j;->a()I

    move-result v2

    if-gt p2, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Ln7g;->d(Z)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int v3, p2, p1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Ln7g;->d(Z)V

    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_2

    iget-object v1, p0, Lm9j;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh9j;

    iget-object v1, v1, Lh9j;->a:Lwmj;

    sub-int v2, v0, p1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcme;

    invoke-virtual {v1, v2}, Lulj;->i(Lcme;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lm9j;->b()Lw4f;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lixi;)V
    .locals 3

    iget-boolean v0, p0, Lm9j;->j:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ln7g;->f(Z)V

    iput-object p1, p0, Lm9j;->k:Lixi;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lm9j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh9j;

    invoke-virtual {p0, v0}, Lm9j;->u(Lh9j;)V

    iget-object v2, p0, Lm9j;->g:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lm9j;->j:Z

    return-void
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lm9j;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf9j;

    :try_start_0
    iget-object v2, v1, Lf9j;->a:Lknj;

    iget-object v3, v1, Lf9j;->b:Lcnj;

    invoke-interface {v2, v3}, Lknj;->c(Lcnj;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MediaSourceList"

    const-string v4, "Failed to release child source."

    invoke-static {v3, v4, v2}, Lzrg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v2, v1, Lf9j;->a:Lknj;

    iget-object v1, v1, Lf9j;->c:Ld9j;

    invoke-interface {v2, v1}, Lknj;->j(Lsnj;)V

    invoke-interface {v2, v1}, Lknj;->a(Lkjj;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm9j;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lm9j;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm9j;->j:Z

    return-void
.end method

.method public final i(Lzmj;)V
    .locals 3

    iget-object v0, p0, Lm9j;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh9j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lh9j;->a:Lwmj;

    invoke-virtual {v2, p1}, Lopj;->h(Lzmj;)V

    iget-object v2, v1, Lh9j;->c:Ljava/util/List;

    check-cast p1, Ltmj;

    iget-object p1, p1, Ltmj;->b:Lbnj;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lm9j;->s()V

    :cond_0
    invoke-virtual {p0, v1}, Lm9j;->t(Lh9j;)V

    return-void
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lm9j;->j:Z

    return p0
.end method

.method public final k(ILjava/util/List;Lbpj;)Lw4f;
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p3, p0, Lm9j;->l:Lbpj;

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh9j;

    if-lez p3, :cond_0

    iget-object v1, p0, Lm9j;->b:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh9j;

    iget-object v2, v1, Lh9j;->a:Lwmj;

    invoke-virtual {v2}, Lwmj;->F()Lw4f;

    move-result-object v2

    iget v1, v1, Lh9j;->d:I

    invoke-virtual {v2}, Lw4f;->c()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lh9j;->a(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh9j;->a(I)V

    :goto_1
    iget-object v1, v0, Lh9j;->a:Lwmj;

    invoke-virtual {v1}, Lwmj;->F()Lw4f;

    move-result-object v1

    invoke-virtual {v1}, Lw4f;->c()I

    move-result v1

    invoke-virtual {p0, p3, v1}, Lm9j;->q(II)V

    iget-object v1, p0, Lm9j;->b:Ljava/util/List;

    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lm9j;->d:Ljava/util/Map;

    iget-object v2, v0, Lh9j;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lm9j;->j:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lm9j;->u(Lh9j;)V

    iget-object v1, p0, Lm9j;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lm9j;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Lm9j;->r(Lh9j;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lm9j;->b()Lw4f;

    move-result-object p0

    return-object p0
.end method

.method public final l(IILbpj;)Lw4f;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Lm9j;->a()I

    move-result v1

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ln7g;->d(Z)V

    iput-object p3, p0, Lm9j;->l:Lbpj;

    invoke-virtual {p0, p1, p2}, Lm9j;->v(II)V

    invoke-virtual {p0}, Lm9j;->b()Lw4f;

    move-result-object p0

    return-object p0
.end method

.method public final m(Ljava/util/List;Lbpj;)Lw4f;
    .locals 3

    iget-object v0, p0, Lm9j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lm9j;->v(II)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lm9j;->k(ILjava/util/List;Lbpj;)Lw4f;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lbpj;)Lw4f;
    .locals 2

    invoke-virtual {p0}, Lm9j;->a()I

    move-result v0

    invoke-virtual {p1}, Lbpj;->c()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Lbpj;->f()Lbpj;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lbpj;->g(II)Lbpj;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lm9j;->l:Lbpj;

    invoke-virtual {p0}, Lm9j;->b()Lw4f;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lbnj;Lnrj;J)Lzmj;
    .locals 3

    sget v0, Lv9j;->k:I

    iget-object v0, p1, Lbnj;->a:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lbnj;->a(Ljava/lang/Object;)Lbnj;

    move-result-object p1

    iget-object v0, p0, Lm9j;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh9j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lm9j;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lm9j;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf9j;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lf9j;->a:Lknj;

    iget-object v1, v1, Lf9j;->b:Lcnj;

    invoke-interface {v2, v1}, Lknj;->e(Lcnj;)V

    :cond_0
    iget-object v1, v0, Lh9j;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lh9j;->a:Lwmj;

    invoke-virtual {v1, p1, p2, p3, p4}, Lwmj;->G(Lbnj;Lnrj;J)Ltmj;

    move-result-object p1

    iget-object p2, p0, Lm9j;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lm9j;->s()V

    return-object p1
.end method

.method public final p()Lbpj;
    .locals 0

    iget-object p0, p0, Lm9j;->l:Lbpj;

    return-object p0
.end method

.method public final q(II)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lm9j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh9j;

    iget v1, v0, Lh9j;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Lh9j;->d:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(Lh9j;)V
    .locals 0

    iget-object p0, p0, Lm9j;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf9j;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lf9j;->a:Lknj;

    iget-object p0, p0, Lf9j;->b:Lcnj;

    invoke-interface {p1, p0}, Lknj;->g(Lcnj;)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Lm9j;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh9j;

    iget-object v2, v1, Lh9j;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lm9j;->r(Lh9j;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final t(Lh9j;)V
    .locals 3

    iget-boolean v0, p1, Lh9j;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lh9j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm9j;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf9j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lf9j;->a:Lknj;

    iget-object v2, v0, Lf9j;->b:Lcnj;

    invoke-interface {v1, v2}, Lknj;->c(Lcnj;)V

    iget-object v0, v0, Lf9j;->c:Ld9j;

    invoke-interface {v1, v0}, Lknj;->j(Lsnj;)V

    invoke-interface {v1, v0}, Lknj;->a(Lkjj;)V

    iget-object p0, p0, Lm9j;->g:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final u(Lh9j;)V
    .locals 5

    iget-object v0, p1, Lh9j;->a:Lwmj;

    new-instance v1, Lr8j;

    invoke-direct {v1, p0}, Lr8j;-><init>(Lm9j;)V

    new-instance v2, Ld9j;

    invoke-direct {v2, p0, p1}, Ld9j;-><init>(Lm9j;Lh9j;)V

    new-instance v3, Lf9j;

    invoke-direct {v3, v0, v1, v2}, Lf9j;-><init>(Lknj;Lcnj;Ld9j;)V

    iget-object v4, p0, Lm9j;->f:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lkfh;->U()Landroid/os/Looper;

    move-result-object p1

    new-instance v3, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-interface {v0, v3, v2}, Lknj;->l(Landroid/os/Handler;Lsnj;)V

    invoke-static {}, Lkfh;->U()Landroid/os/Looper;

    move-result-object p1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-interface {v0, v3, v2}, Lknj;->d(Landroid/os/Handler;Lkjj;)V

    iget-object p1, p0, Lm9j;->k:Lixi;

    iget-object p0, p0, Lm9j;->a:Ltfj;

    invoke-interface {v0, v1, p1, p0}, Lknj;->f(Lcnj;Lixi;Ltfj;)V

    return-void
.end method

.method public final v(II)V
    .locals 3

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_1

    iget-object v0, p0, Lm9j;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh9j;

    iget-object v1, p0, Lm9j;->d:Ljava/util/Map;

    iget-object v2, v0, Lh9j;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lh9j;->a:Lwmj;

    invoke-virtual {v1}, Lwmj;->F()Lw4f;

    move-result-object v1

    invoke-virtual {v1}, Lw4f;->c()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, p2, v1}, Lm9j;->q(II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lh9j;->e:Z

    iget-boolean v1, p0, Lm9j;->j:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lm9j;->t(Lh9j;)V

    goto :goto_0

    :cond_1
    return-void
.end method
