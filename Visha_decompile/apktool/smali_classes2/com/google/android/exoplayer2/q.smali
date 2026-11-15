.class public final Lcom/google/android/exoplayer2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/q$a;,
        Lcom/google/android/exoplayer2/q$b;,
        Lcom/google/android/exoplayer2/q$c;,
        Lcom/google/android/exoplayer2/q$d;
    }
.end annotation


# instance fields
.field public final a:Lta8;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/Map;

.field public final e:Lcom/google/android/exoplayer2/q$d;

.field public final f:Lcom/google/android/exoplayer2/source/j$a;

.field public final g:Lcom/google/android/exoplayer2/drm/b$a;

.field public final h:Ljava/util/HashMap;

.field public final i:Ljava/util/Set;

.field public j:Lmi9;

.field public k:Z

.field public l:Lu5b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/q$d;Lkb;Landroid/os/Handler;Lta8;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/q;->a:Lta8;

    iput-object p1, p0, Lcom/google/android/exoplayer2/q;->e:Lcom/google/android/exoplayer2/q$d;

    new-instance p1, Lmi9$a;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lmi9$a;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/q;->j:Lmi9;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/q;->c:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/q;->d:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    new-instance p1, Lcom/google/android/exoplayer2/source/j$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/j$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/q;->f:Lcom/google/android/exoplayer2/source/j$a;

    new-instance p4, Lcom/google/android/exoplayer2/drm/b$a;

    invoke-direct {p4}, Lcom/google/android/exoplayer2/drm/b$a;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplayer2/q;->g:Lcom/google/android/exoplayer2/drm/b$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/q;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/q;->i:Ljava/util/Set;

    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/j$a;->f(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/j;)V

    invoke-virtual {p4, p3, p2}, Lcom/google/android/exoplayer2/drm/b$a;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/b;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/source/i;Lcom/google/android/exoplayer2/a0;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/q;->t(Lcom/google/android/exoplayer2/source/i;Lcom/google/android/exoplayer2/a0;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/source/j$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q;->f:Lcom/google/android/exoplayer2/source/j$a;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/drm/b$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q;->g:Lcom/google/android/exoplayer2/drm/b$a;

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/q$c;Lcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/source/i$b;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q;->n(Lcom/google/android/exoplayer2/q$c;Lcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/q$c;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/q;->r(Lcom/google/android/exoplayer2/q$c;I)I

    move-result p0

    return p0
.end method

.method public static m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/google/android/exoplayer2/q$c;Lcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/source/i$b;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/q$c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/q$c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v1, v1, Lxk6;->d:J

    iget-wide v3, p1, Lxk6;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, p1, Lxk6;->a:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/q;->p(Lcom/google/android/exoplayer2/q$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/i$b;->c(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcom/google/android/exoplayer2/q$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$c;->b:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->E(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lcom/google/android/exoplayer2/q$c;I)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/q$c;->d:I

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final A(II)V
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-lt p2, p1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/q$c;

    iget-object v2, p0, Lcom/google/android/exoplayer2/q;->d:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/android/exoplayer2/q$c;->b:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/google/android/exoplayer2/q$c;->a:Lcom/google/android/exoplayer2/source/g;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/g;->H()Lcom/google/android/exoplayer2/a0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, p2, v2}, Lcom/google/android/exoplayer2/q;->g(II)V

    iput-boolean v0, v1, Lcom/google/android/exoplayer2/q$c;->e:Z

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/q;->k:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/q;->u(Lcom/google/android/exoplayer2/q$c;)V

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public B(Ljava/util/List;Lmi9;)Lcom/google/android/exoplayer2/a0;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/q;->A(II)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/q;->f(ILjava/util/List;Lmi9;)Lcom/google/android/exoplayer2/a0;

    move-result-object p0

    return-object p0
.end method

.method public C(Lmi9;)Lcom/google/android/exoplayer2/a0;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/q;->q()I

    move-result v0

    invoke-interface {p1}, Lmi9;->getLength()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-interface {p1}, Lmi9;->cloneAndClear()Lmi9;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lmi9;->cloneAndInsert(II)Lmi9;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/q;->j:Lmi9;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/q;->i()Lcom/google/android/exoplayer2/a0;

    move-result-object p0

    return-object p0
.end method

.method public f(ILjava/util/List;Lmi9;)Lcom/google/android/exoplayer2/a0;
    .locals 3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p3, p0, Lcom/google/android/exoplayer2/q;->j:Lmi9;

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/q$c;

    if-lez p3, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/q$c;

    iget-object v2, v1, Lcom/google/android/exoplayer2/q$c;->a:Lcom/google/android/exoplayer2/source/g;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/g;->H()Lcom/google/android/exoplayer2/a0;

    move-result-object v2

    iget v1, v1, Lcom/google/android/exoplayer2/q$c;->d:I

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/q$c;->a(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/q$c;->a(I)V

    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/q$c;->a:Lcom/google/android/exoplayer2/source/g;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/g;->H()Lcom/google/android/exoplayer2/a0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v1

    invoke-virtual {p0, p3, v1}, Lcom/google/android/exoplayer2/q;->g(II)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/q;->d:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/exoplayer2/q$c;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/q;->k:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/q;->w(Lcom/google/android/exoplayer2/q$c;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/q;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/q;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/q;->j(Lcom/google/android/exoplayer2/q$c;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/q;->i()Lcom/google/android/exoplayer2/a0;

    move-result-object p0

    return-object p0
.end method

.method public final g(II)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/q$c;

    iget v1, v0, Lcom/google/android/exoplayer2/q$c;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/q$c;->d:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h(Lcom/google/android/exoplayer2/source/i$b;Lcb;J)Lcom/google/android/exoplayer2/source/h;
    .locals 2

    iget-object v0, p1, Lxk6;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/q;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lxk6;->a:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/exoplayer2/q;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/i$b;->c(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/q;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/q$c;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/q$c;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/q;->l(Lcom/google/android/exoplayer2/q$c;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/q$c;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/google/android/exoplayer2/q$c;->a:Lcom/google/android/exoplayer2/source/g;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/g;->D(Lcom/google/android/exoplayer2/source/i$b;Lcb;J)Lcom/google/android/exoplayer2/source/f;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/q;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/q;->k()V

    return-object p1
.end method

.method public i()Lcom/google/android/exoplayer2/a0;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/exoplayer2/a0;->b:Lcom/google/android/exoplayer2/a0;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/q$c;

    iput v1, v2, Lcom/google/android/exoplayer2/q$c;->d:I

    iget-object v2, v2, Lcom/google/android/exoplayer2/q$c;->a:Lcom/google/android/exoplayer2/source/g;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/g;->H()Lcom/google/android/exoplayer2/a0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/a0;->t()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lzb8;

    iget-object v1, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/exoplayer2/q;->j:Lmi9;

    invoke-direct {v0, v1, p0}, Lzb8;-><init>(Ljava/util/Collection;Lmi9;)V

    return-object v0
.end method

.method public final j(Lcom/google/android/exoplayer2/q$c;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/q$b;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/q$b;->a:Lcom/google/android/exoplayer2/source/i;

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$b;->b:Lcom/google/android/exoplayer2/source/i$c;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/i;->g(Lcom/google/android/exoplayer2/source/i$c;)V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/q;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/q$c;

    iget-object v2, v1, Lcom/google/android/exoplayer2/q$c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/q;->j(Lcom/google/android/exoplayer2/q$c;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final l(Lcom/google/android/exoplayer2/q$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/q;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/q;->h:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/q$b;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/q$b;->a:Lcom/google/android/exoplayer2/source/i;

    iget-object p0, p0, Lcom/google/android/exoplayer2/q$b;->b:Lcom/google/android/exoplayer2/source/i$c;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/i;->f(Lcom/google/android/exoplayer2/source/i$c;)V

    :cond_0
    return-void
.end method

.method public q()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public s()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/q;->k:Z

    return p0
.end method

.method public final synthetic t(Lcom/google/android/exoplayer2/source/i;Lcom/google/android/exoplayer2/a0;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/q;->e:Lcom/google/android/exoplayer2/q$d;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/q$d;->onPlaylistUpdateRequested()V

    return-void
.end method

.method public final u(Lcom/google/android/exoplayer2/q$c;)V
    .locals 3

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/q$c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/q$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/q;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/q$b;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/q$b;

    iget-object v1, v0, Lcom/google/android/exoplayer2/q$b;->a:Lcom/google/android/exoplayer2/source/i;

    iget-object v2, v0, Lcom/google/android/exoplayer2/q$b;->b:Lcom/google/android/exoplayer2/source/i$c;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/i;->a(Lcom/google/android/exoplayer2/source/i$c;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/q$b;->a:Lcom/google/android/exoplayer2/source/i;

    iget-object v2, v0, Lcom/google/android/exoplayer2/q$b;->c:Lcom/google/android/exoplayer2/q$a;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/i;->b(Lcom/google/android/exoplayer2/source/j;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/q$b;->a:Lcom/google/android/exoplayer2/source/i;

    iget-object v0, v0, Lcom/google/android/exoplayer2/q$b;->c:Lcom/google/android/exoplayer2/q$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/i;->j(Lcom/google/android/exoplayer2/drm/b;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/q;->i:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public v(Lu5b;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/q;->k:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lzi;->g(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/q;->l:Lu5b;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/q;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/q$c;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/q;->w(Lcom/google/android/exoplayer2/q$c;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/q;->i:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/q;->k:Z

    return-void
.end method

.method public final w(Lcom/google/android/exoplayer2/q$c;)V
    .locals 5

    iget-object v0, p1, Lcom/google/android/exoplayer2/q$c;->a:Lcom/google/android/exoplayer2/source/g;

    new-instance v1, Lxl6;

    invoke-direct {v1, p0}, Lxl6;-><init>(Lcom/google/android/exoplayer2/q;)V

    new-instance v2, Lcom/google/android/exoplayer2/q$a;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/q$a;-><init>(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/q$c;)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/q;->h:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/exoplayer2/q$b;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/q$b;-><init>(Lcom/google/android/exoplayer2/source/i;Lcom/google/android/exoplayer2/source/i$c;Lcom/google/android/exoplayer2/q$a;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lblb;->w()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/source/i;->d(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/j;)V

    invoke-static {}, Lblb;->w()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer2/source/i;->i(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/b;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/q;->l:Lu5b;

    iget-object p0, p0, Lcom/google/android/exoplayer2/q;->a:Lta8;

    invoke-interface {v0, v1, p1, p0}, Lcom/google/android/exoplayer2/source/i;->k(Lcom/google/android/exoplayer2/source/i$c;Lu5b;Lta8;)V

    return-void
.end method

.method public x()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/q;->h:Ljava/util/HashMap;

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

    check-cast v1, Lcom/google/android/exoplayer2/q$b;

    :try_start_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/q$b;->a:Lcom/google/android/exoplayer2/source/i;

    iget-object v3, v1, Lcom/google/android/exoplayer2/q$b;->b:Lcom/google/android/exoplayer2/source/i$c;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/i;->a(Lcom/google/android/exoplayer2/source/i$c;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MediaSourceList"

    const-string v4, "Failed to release child source."

    invoke-static {v3, v4, v2}, Lop5;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/q$b;->a:Lcom/google/android/exoplayer2/source/i;

    iget-object v3, v1, Lcom/google/android/exoplayer2/q$b;->c:Lcom/google/android/exoplayer2/q$a;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/i;->b(Lcom/google/android/exoplayer2/source/j;)V

    iget-object v2, v1, Lcom/google/android/exoplayer2/q$b;->a:Lcom/google/android/exoplayer2/source/i;

    iget-object v1, v1, Lcom/google/android/exoplayer2/q$b;->c:Lcom/google/android/exoplayer2/q$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/i;->j(Lcom/google/android/exoplayer2/drm/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/q;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/q;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/q;->k:Z

    return-void
.end method

.method public y(Lcom/google/android/exoplayer2/source/h;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/q;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/q$c;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/q$c;

    iget-object v1, v0, Lcom/google/android/exoplayer2/q$c;->a:Lcom/google/android/exoplayer2/source/g;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/g;->e(Lcom/google/android/exoplayer2/source/h;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/q$c;->c:Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplayer2/source/f;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/f;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/q;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/q;->k()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/q;->u(Lcom/google/android/exoplayer2/q$c;)V

    return-void
.end method

.method public z(IILmi9;)Lcom/google/android/exoplayer2/a0;
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/q;->q()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->a(Z)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/q;->j:Lmi9;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/q;->A(II)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/q;->i()Lcom/google/android/exoplayer2/a0;

    move-result-object p0

    return-object p0
.end method
