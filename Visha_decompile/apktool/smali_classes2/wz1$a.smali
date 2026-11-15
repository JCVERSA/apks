.class public final Lwz1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwz1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/a0$b;

.field public b:Lcom/google/common/collect/ImmutableList;

.field public c:Lcom/google/common/collect/ImmutableMap;

.field public d:Lcom/google/android/exoplayer2/source/i$b;

.field public e:Lcom/google/android/exoplayer2/source/i$b;

.field public f:Lcom/google/android/exoplayer2/source/i$b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/a0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwz1$a;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lwz1$a;->b:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lwz1$a;->c:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public static synthetic a(Lwz1$a;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lwz1$a;->b:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static c(Lcom/google/android/exoplayer2/t;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/source/i$b;
    .locals 10

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentPeriodIndex()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a0;->q(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->isPlayingAd()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1, p3}, Lcom/google/android/exoplayer2/a0;->j(ILcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentPosition()J

    move-result-wide v4

    invoke-static {v4, v5}, Lblb;->t0(J)J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/a0$b;->q()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/a0$b;->g(J)I

    move-result p3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, -0x1

    :goto_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->isPlayingAd()Z

    move-result v6

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentAdGroupIndex()I

    move-result v7

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentAdIndexInAdGroup()I

    move-result v8

    move-object v4, v1

    move-object v5, v2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lwz1$a;->i(Lcom/google/android/exoplayer2/source/i$b;Ljava/lang/Object;ZIII)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->isPlayingAd()Z

    move-result v6

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentAdGroupIndex()I

    move-result v7

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentAdIndexInAdGroup()I

    move-result v8

    move-object v4, p2

    move-object v5, v2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lwz1$a;->i(Lcom/google/android/exoplayer2/source/i$b;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object p2

    :cond_5
    return-object v3
.end method

.method public static i(Lcom/google/android/exoplayer2/source/i$b;Ljava/lang/Object;ZIII)Z
    .locals 1

    iget-object v0, p0, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    iget p1, p0, Lxk6;->b:I

    if-ne p1, p3, :cond_1

    iget p1, p0, Lxk6;->c:I

    if-eq p1, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget p1, p0, Lxk6;->b:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    iget p0, p0, Lxk6;->e:I

    if-ne p0, p5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method


# virtual methods
.method public final b(Lcom/google/common/collect/ImmutableMap$b;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lxk6;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/a0;->f(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lwz1$a;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/a0;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p2, p0}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    :cond_2
    :goto_0
    return-void
.end method

.method public d()Lcom/google/android/exoplayer2/source/i$b;
    .locals 0

    iget-object p0, p0, Lwz1$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    return-object p0
.end method

.method public e()Lcom/google/android/exoplayer2/source/i$b;
    .locals 1

    iget-object v0, p0, Lwz1$a;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lwz1$a;->b:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0}, Lv55;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/i$b;

    :goto_0
    return-object p0
.end method

.method public f(Lcom/google/android/exoplayer2/source/i$b;)Lcom/google/android/exoplayer2/a0;
    .locals 0

    iget-object p0, p0, Lwz1$a;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/a0;

    return-object p0
.end method

.method public g()Lcom/google/android/exoplayer2/source/i$b;
    .locals 0

    iget-object p0, p0, Lwz1$a;->e:Lcom/google/android/exoplayer2/source/i$b;

    return-object p0
.end method

.method public h()Lcom/google/android/exoplayer2/source/i$b;
    .locals 0

    iget-object p0, p0, Lwz1$a;->f:Lcom/google/android/exoplayer2/source/i$b;

    return-object p0
.end method

.method public j(Lcom/google/android/exoplayer2/t;)V
    .locals 3

    iget-object v0, p0, Lwz1$a;->b:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lwz1$a;->e:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, p0, Lwz1$a;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-static {p1, v0, v1, v2}, Lwz1$a;->c(Lcom/google/android/exoplayer2/t;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object p1

    iput-object p1, p0, Lwz1$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    return-void
.end method

.method public k(Ljava/util/List;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/t;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lwz1$a;->b:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/i$b;

    iput-object p1, p0, Lwz1$a;->e:Lcom/google/android/exoplayer2/source/i$b;

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/i$b;

    iput-object p1, p0, Lwz1$a;->f:Lcom/google/android/exoplayer2/source/i$b;

    :cond_0
    iget-object p1, p0, Lwz1$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    if-nez p1, :cond_1

    iget-object p1, p0, Lwz1$a;->b:Lcom/google/common/collect/ImmutableList;

    iget-object p2, p0, Lwz1$a;->e:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v0, p0, Lwz1$a;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-static {p3, p1, p2, v0}, Lwz1$a;->c(Lcom/google/android/exoplayer2/t;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object p1

    iput-object p1, p0, Lwz1$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    :cond_1
    invoke-interface {p3}, Lcom/google/android/exoplayer2/t;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwz1$a;->m(Lcom/google/android/exoplayer2/a0;)V

    return-void
.end method

.method public l(Lcom/google/android/exoplayer2/t;)V
    .locals 3

    iget-object v0, p0, Lwz1$a;->b:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lwz1$a;->e:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, p0, Lwz1$a;->a:Lcom/google/android/exoplayer2/a0$b;

    invoke-static {p1, v0, v1, v2}, Lwz1$a;->c(Lcom/google/android/exoplayer2/t;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/source/i$b;

    move-result-object v0

    iput-object v0, p0, Lwz1$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getCurrentTimeline()Lcom/google/android/exoplayer2/a0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwz1$a;->m(Lcom/google/android/exoplayer2/a0;)V

    return-void
.end method

.method public final m(Lcom/google/android/exoplayer2/a0;)V
    .locals 3

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    iget-object v1, p0, Lwz1$a;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lwz1$a;->e:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p0, v0, v1, p1}, Lwz1$a;->b(Lcom/google/common/collect/ImmutableMap$b;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;)V

    iget-object v1, p0, Lwz1$a;->f:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, p0, Lwz1$a;->e:Lcom/google/android/exoplayer2/source/i$b;

    invoke-static {v1, v2}, Lkc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lwz1$a;->f:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p0, v0, v1, p1}, Lwz1$a;->b(Lcom/google/common/collect/ImmutableMap$b;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;)V

    :cond_0
    iget-object v1, p0, Lwz1$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, p0, Lwz1$a;->e:Lcom/google/android/exoplayer2/source/i$b;

    invoke-static {v1, v2}, Lkc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lwz1$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, p0, Lwz1$a;->f:Lcom/google/android/exoplayer2/source/i$b;

    invoke-static {v1, v2}, Lkc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lwz1$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p0, v0, v1, p1}, Lwz1$a;->b(Lcom/google/common/collect/ImmutableMap$b;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lwz1$a;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lwz1$a;->b:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p0, v0, v2, p1}, Lwz1$a;->b(Lcom/google/common/collect/ImmutableMap$b;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lwz1$a;->b:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lwz1$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lwz1$a;->d:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {p0, v0, v1, p1}, Lwz1$a;->b(Lcom/google/common/collect/ImmutableMap$b;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->d()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lwz1$a;->c:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method
