.class public final Lynj;
.super Ljmj;
.source "SourceFile"


# static fields
.field public static final s:Lcme;


# instance fields
.field public final k:[Lknj;

.field public final l:Ljava/util/List;

.field public final m:[Lw4f;

.field public final n:Ljava/util/ArrayList;

.field public o:I

.field public p:[[J

.field public q:Lcom/google/android/gms/internal/ads/zzvp;

.field public final r:Lmmj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv8e;

    invoke-direct {v0}, Lv8e;-><init>()V

    const-string v1, "MergingMediaSource"

    invoke-virtual {v0, v1}, Lv8e;->a(Ljava/lang/String;)Lv8e;

    invoke-virtual {v0}, Lv8e;->c()Lcme;

    move-result-object v0

    sput-object v0, Lynj;->s:Lcme;

    return-void
.end method

.method public varargs constructor <init>(ZZLmmj;[Lknj;)V
    .locals 1

    invoke-direct {p0}, Ljmj;-><init>()V

    iput-object p4, p0, Lynj;->k:[Lknj;

    iput-object p3, p0, Lynj;->r:Lmmj;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lynj;->n:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lynj;->o:I

    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lynj;->l:Ljava/util/List;

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    array-length p3, p4

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lynj;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-array p2, p3, [Lw4f;

    iput-object p2, p0, Lynj;->m:[Lw4f;

    new-array p1, p1, [[J

    iput-object p1, p0, Lynj;->p:[[J

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 p0, 0x8

    invoke-static {p0}, Li5i;->a(I)Lg5i;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lg5i;->b(I)Ld5i;

    move-result-object p0

    invoke-virtual {p0}, Ld5i;->c()Lu4i;

    return-void
.end method


# virtual methods
.method public final bridge synthetic B(Ljava/lang/Object;Lbnj;)Lbnj;
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lynj;->l:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwnj;

    invoke-static {v2}, Lwnj;->b(Lwnj;)Lbnj;

    move-result-object v2

    invoke-virtual {v2, p2}, Lbnj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwnj;

    invoke-static {p0}, Lwnj;->b(Lwnj;)Lbnj;

    move-result-object p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final b(Lbnj;Lnrj;J)Lzmj;
    .locals 11

    iget-object v0, p0, Lynj;->m:[Lw4f;

    iget-object v1, p0, Lynj;->k:[Lknj;

    array-length v2, v1

    new-array v3, v2, [Lzmj;

    const/4 v4, 0x0

    aget-object v5, v0, v4

    iget-object v6, p1, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v5

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, v0, v4

    invoke-virtual {v6, v5}, Lw4f;->f(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Lbnj;->a(Ljava/lang/Object;)Lbnj;

    move-result-object v6

    aget-object v7, v1, v4

    iget-object v8, p0, Lynj;->p:[[J

    aget-object v8, v8, v5

    aget-wide v8, v8, v4

    sub-long v8, p3, v8

    invoke-interface {v7, v6, p2, v8, v9}, Lknj;->b(Lbnj;Lnrj;J)Lzmj;

    move-result-object v7

    aput-object v7, v3, v4

    iget-object v7, p0, Lynj;->l:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    new-instance v8, Lwnj;

    aget-object v9, v3, v4

    const/4 v10, 0x0

    invoke-direct {v8, v6, v9, v10}, Lwnj;-><init>(Lbnj;Lzmj;Lxnj;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lynj;->r:Lmmj;

    new-instance p2, Lvnj;

    iget-object p0, p0, Lynj;->p:[[J

    aget-object p0, p0, v5

    invoke-direct {p2, p1, p0, v3}, Lvnj;-><init>(Lmmj;[J[Lzmj;)V

    return-object p2
.end method

.method public final h(Lzmj;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Lvnj;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lynj;->k:[Lknj;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lynj;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move v5, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lwnj;

    invoke-static {v6}, Lwnj;->a(Lwnj;)Lzmj;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    aget-object v3, v3, v2

    invoke-virtual {v0, v2}, Lvnj;->i(I)Lzmj;

    move-result-object v4

    invoke-interface {v3, v4}, Lknj;->h(Lzmj;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final i(Lcme;)V
    .locals 1

    iget-object p0, p0, Lynj;->k:[Lknj;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-interface {p0, p1}, Lknj;->i(Lcme;)V

    return-void
.end method

.method public final t(Lixi;)V
    .locals 2

    invoke-super {p0, p1}, Ljmj;->t(Lixi;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lynj;->k:[Lknj;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v0, v0, p1

    invoke-virtual {p0, v1, v0}, Ljmj;->y(Ljava/lang/Object;Lknj;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v()V
    .locals 2

    invoke-super {p0}, Ljmj;->v()V

    iget-object v0, p0, Lynj;->m:[Lw4f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lynj;->o:I

    iput-object v1, p0, Lynj;->q:Lcom/google/android/gms/internal/ads/zzvp;

    iget-object v0, p0, Lynj;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lynj;->k:[Lknj;

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic x(Ljava/lang/Object;Lknj;Lw4f;)V
    .locals 5

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lynj;->q:Lcom/google/android/gms/internal/ads/zzvp;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lynj;->o:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Lw4f;->b()I

    move-result v0

    iput v0, p0, Lynj;->o:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lw4f;->b()I

    move-result v0

    iget v1, p0, Lynj;->o:I

    if-eq v0, v1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzvp;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzvp;-><init>(I)V

    iput-object p1, p0, Lynj;->q:Lcom/google/android/gms/internal/ads/zzvp;

    return-void

    :cond_2
    move v0, v1

    :goto_0
    iget-object v1, p0, Lynj;->p:[[J

    array-length v1, v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lynj;->m:[Lw4f;

    array-length v1, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lynj;->p:[[J

    :cond_3
    iget-object v0, p0, Lynj;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lynj;->m:[Lw4f;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, p2, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    aget-object p1, p2, v2

    invoke-virtual {p0, p1}, Lulj;->u(Lw4f;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final zzJ()Lcme;
    .locals 1

    iget-object p0, p0, Lynj;->k:[Lknj;

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-interface {p0}, Lknj;->zzJ()Lcme;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lynj;->s:Lcme;

    :goto_0
    return-object p0
.end method

.method public final zzz()V
    .locals 1

    iget-object v0, p0, Lynj;->q:Lcom/google/android/gms/internal/ads/zzvp;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljmj;->zzz()V

    return-void

    :cond_0
    throw v0
.end method
