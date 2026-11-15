.class public final Luej;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly2f;

.field public b:Lcom/google/android/gms/internal/ads/zzfww;

.field public c:Lcom/google/android/gms/internal/ads/zzfwz;

.field public d:Lbnj;

.field public e:Lbnj;

.field public f:Lbnj;


# direct methods
.method public constructor <init>(Ly2f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luej;->a:Ly2f;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Luej;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwz;->zzd()Lcom/google/android/gms/internal/ads/zzfwz;

    move-result-object p1

    iput-object p1, p0, Luej;->c:Lcom/google/android/gms/internal/ads/zzfwz;

    return-void
.end method

.method public static bridge synthetic f(Luej;)Lcom/google/android/gms/internal/ads/zzfww;
    .locals 0

    iget-object p0, p0, Luej;->b:Lcom/google/android/gms/internal/ads/zzfww;

    return-object p0
.end method

.method public static j(Ll1f;Lcom/google/android/gms/internal/ads/zzfww;Lbnj;Ly2f;)Lbnj;
    .locals 10

    invoke-interface {p0}, Ll1f;->zzo()Lw4f;

    move-result-object v0

    invoke-interface {p0}, Ll1f;->zzf()I

    move-result v1

    invoke-virtual {v0}, Lw4f;->o()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lw4f;->f(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-interface {p0}, Ll1f;->zzx()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lw4f;->o()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move p3, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1, p3, v5}, Lw4f;->d(ILy2f;Z)Ly2f;

    move-result-object p3

    invoke-interface {p0}, Ll1f;->zzl()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkfh;->N(J)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ly2f;->c(J)I

    move-result p3

    :goto_1
    move v0, v5

    :goto_2
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbnj;

    invoke-interface {p0}, Ll1f;->zzx()Z

    move-result v6

    invoke-interface {p0}, Ll1f;->zzc()I

    move-result v7

    invoke-interface {p0}, Ll1f;->zzd()I

    move-result v8

    move-object v4, v1

    move-object v5, v2

    move v9, p3

    invoke-static/range {v4 .. v9}, Luej;->m(Lbnj;Ljava/lang/Object;ZIII)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ll1f;->zzx()Z

    move-result v6

    invoke-interface {p0}, Ll1f;->zzc()I

    move-result v7

    invoke-interface {p0}, Ll1f;->zzd()I

    move-result v8

    move-object v4, p2

    move-object v5, v2

    move v9, p3

    invoke-static/range {v4 .. v9}, Luej;->m(Lbnj;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object p2

    :cond_5
    return-object v3
.end method

.method public static m(Lbnj;Ljava/lang/Object;ZIII)Z
    .locals 1

    iget-object v0, p0, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_2

    iget p2, p0, Lbnj;->b:I

    if-ne p2, p3, :cond_3

    iget p0, p0, Lbnj;->c:I

    if-ne p0, p4, :cond_1

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    iget p2, p0, Lbnj;->b:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    iget p0, p0, Lbnj;->e:I

    if-ne p0, p5, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public final a(Lbnj;)Lw4f;
    .locals 0

    iget-object p0, p0, Luej;->c:Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw4f;

    return-object p0
.end method

.method public final b()Lbnj;
    .locals 0

    iget-object p0, p0, Luej;->d:Lbnj;

    return-object p0
.end method

.method public final c()Lbnj;
    .locals 2

    iget-object v0, p0, Luej;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Luej;->b:Lcom/google/android/gms/internal/ads/zzfww;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    move-object p0, v0

    :goto_0
    check-cast p0, Lbnj;

    return-object p0
.end method

.method public final d()Lbnj;
    .locals 0

    iget-object p0, p0, Luej;->e:Lbnj;

    return-object p0
.end method

.method public final e()Lbnj;
    .locals 0

    iget-object p0, p0, Luej;->f:Lbnj;

    return-object p0
.end method

.method public final g(Ll1f;)V
    .locals 3

    iget-object v0, p0, Luej;->b:Lcom/google/android/gms/internal/ads/zzfww;

    iget-object v1, p0, Luej;->e:Lbnj;

    iget-object v2, p0, Luej;->a:Ly2f;

    invoke-static {p1, v0, v1, v2}, Luej;->j(Ll1f;Lcom/google/android/gms/internal/ads/zzfww;Lbnj;Ly2f;)Lbnj;

    move-result-object p1

    iput-object p1, p0, Luej;->d:Lbnj;

    return-void
.end method

.method public final h(Ljava/util/List;Lbnj;Ll1f;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfww;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    iput-object v0, p0, Luej;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbnj;

    iput-object p1, p0, Luej;->e:Lbnj;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Luej;->f:Lbnj;

    :cond_0
    iget-object p1, p0, Luej;->d:Lbnj;

    if-nez p1, :cond_1

    iget-object p1, p0, Luej;->b:Lcom/google/android/gms/internal/ads/zzfww;

    iget-object p2, p0, Luej;->e:Lbnj;

    iget-object v0, p0, Luej;->a:Ly2f;

    invoke-static {p3, p1, p2, v0}, Luej;->j(Ll1f;Lcom/google/android/gms/internal/ads/zzfww;Lbnj;Ly2f;)Lbnj;

    move-result-object p1

    iput-object p1, p0, Luej;->d:Lbnj;

    :cond_1
    invoke-interface {p3}, Ll1f;->zzo()Lw4f;

    move-result-object p1

    invoke-virtual {p0, p1}, Luej;->l(Lw4f;)V

    return-void
.end method

.method public final i(Ll1f;)V
    .locals 3

    iget-object v0, p0, Luej;->b:Lcom/google/android/gms/internal/ads/zzfww;

    iget-object v1, p0, Luej;->e:Lbnj;

    iget-object v2, p0, Luej;->a:Ly2f;

    invoke-static {p1, v0, v1, v2}, Luej;->j(Ll1f;Lcom/google/android/gms/internal/ads/zzfww;Lbnj;Ly2f;)Lbnj;

    move-result-object v0

    iput-object v0, p0, Luej;->d:Lbnj;

    invoke-interface {p1}, Ll1f;->zzo()Lw4f;

    move-result-object p1

    invoke-virtual {p0, p1}, Luej;->l(Lw4f;)V

    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/ads/l7;Lbnj;Lw4f;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lbnj;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lw4f;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/l7;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/l7;

    return-void

    :cond_1
    iget-object p0, p0, Luej;->c:Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfwz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw4f;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/ads/l7;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/l7;

    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Lw4f;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/l7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/l7;-><init>()V

    iget-object v1, p0, Luej;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Luej;->e:Lbnj;

    invoke-virtual {p0, v0, v1, p1}, Luej;->k(Lcom/google/android/gms/internal/ads/l7;Lbnj;Lw4f;)V

    iget-object v1, p0, Luej;->f:Lbnj;

    iget-object v2, p0, Luej;->e:Lbnj;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Luej;->f:Lbnj;

    invoke-virtual {p0, v0, v1, p1}, Luej;->k(Lcom/google/android/gms/internal/ads/l7;Lbnj;Lw4f;)V

    :cond_0
    iget-object v1, p0, Luej;->d:Lbnj;

    iget-object v2, p0, Luej;->e:Lbnj;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Luej;->d:Lbnj;

    iget-object v2, p0, Luej;->f:Lbnj;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Luej;->d:Lbnj;

    invoke-virtual {p0, v0, v1, p1}, Luej;->k(Lcom/google/android/gms/internal/ads/l7;Lbnj;Lw4f;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Luej;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Luej;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbnj;

    invoke-virtual {p0, v0, v2, p1}, Luej;->k(Lcom/google/android/gms/internal/ads/l7;Lbnj;Lw4f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Luej;->b:Lcom/google/android/gms/internal/ads/zzfww;

    iget-object v2, p0, Luej;->d:Lbnj;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfww;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Luej;->d:Lbnj;

    invoke-virtual {p0, v0, v1, p1}, Luej;->k(Lcom/google/android/gms/internal/ads/l7;Lbnj;Lw4f;)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/l7;->c()Lcom/google/android/gms/internal/ads/zzfwz;

    move-result-object p1

    iput-object p1, p0, Luej;->c:Lcom/google/android/gms/internal/ads/zzfwz;

    return-void
.end method
