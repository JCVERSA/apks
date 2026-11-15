.class public final Le5i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5j;


# instance fields
.field public final a:Lo4i;


# direct methods
.method public constructor <init>(Lo4i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5i;->a:Lo4i;

    iput-object p0, p1, Lo4i;->a:Ljava/lang/Object;

    return-void
.end method

.method public static J(Lo4i;)Le5i;
    .locals 1

    iget-object v0, p0, Lo4i;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Le5i;

    return-object v0

    :cond_0
    new-instance v0, Le5i;

    invoke-direct {v0, p0}, Le5i;-><init>(Lo4i;)V

    return-object v0
.end method


# virtual methods
.method public final A(ILjava/lang/Object;Lu1j;)V
    .locals 2

    iget-object v0, p0, Le5i;->a:Lo4i;

    check-cast p2, Lplh;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lo4i;->q(II)V

    invoke-interface {p3, p2, p0}, Lu1j;->e(Ljava/lang/Object;La5j;)V

    const/4 p0, 0x4

    invoke-virtual {v0, p1, p0}, Lo4i;->q(II)V

    return-void
.end method

.method public final B(II)V
    .locals 0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, p2}, Lo4i;->r(II)V

    return-void
.end method

.method public final C(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Lmmi;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lmmi;

    if-eqz p3, :cond_1

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lmmi;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lmmi;->f(I)I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_1
    invoke-virtual {p2}, Lmmi;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Lmmi;->f(I)I

    move-result p1

    add-int p3, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lo4i;->s(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lmmi;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-virtual {p2, v2}, Lmmi;->f(I)I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-virtual {p3, p1, v0}, Lo4i;->r(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int p3, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lo4i;->s(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-virtual {p3, p1, v0}, Lo4i;->r(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final D(ILcom/google/android/gms/internal/play_billing/zzfp;)V
    .locals 0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, p2}, Lo4i;->f(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    return-void
.end method

.method public final E(ILozi;Ljava/util/Map;)V
    .locals 4

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Le5i;->a:Lo4i;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lo4i;->q(II)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lrzi;->b(Lozi;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lo4i;->s(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Lrzi;->e(Lo4i;Lozi;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final F(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Lmmi;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lmmi;

    if-eqz p3, :cond_1

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lmmi;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lmmi;->f(I)I

    move-result v0

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_1
    invoke-virtual {p2}, Lmmi;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Lmmi;->f(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->s(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lmmi;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-virtual {p2, v2}, Lmmi;->f(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lo4i;->r(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lo4i;->w(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->s(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lo4i;->r(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final G(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Lkzi;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {p2}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    throw p2

    :cond_0
    throw p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo4i;->x(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lo4i;->u(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_4

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lo4i;->t(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final H(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Lmmi;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lmmi;

    if-eqz p3, :cond_1

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lmmi;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lmmi;->f(I)I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_1
    invoke-virtual {p2}, Lmmi;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Lmmi;->f(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->i(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lmmi;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-virtual {p2, v2}, Lmmi;->f(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lo4i;->h(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->i(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lo4i;->h(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final I(II)V
    .locals 0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, p2}, Lo4i;->h(II)V

    return-void
.end method

.method public final a(IJ)V
    .locals 0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, p2, p3}, Lo4i;->j(IJ)V

    return-void
.end method

.method public final b(II)V
    .locals 0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, p2}, Lo4i;->l(II)V

    return-void
.end method

.method public final c(IZ)V
    .locals 0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, p2}, Lo4i;->d(IZ)V

    return-void
.end method

.method public final d(ILjava/util/List;Z)V
    .locals 2

    instance-of v0, p2, Lsqh;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {p2}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    throw p2

    :cond_0
    throw p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->c(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_4

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lo4i;->d(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final e(ID)V
    .locals 0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lo4i;->j(IJ)V

    return-void
.end method

.method public final f(II)V
    .locals 0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, p2}, Lo4i;->h(II)V

    return-void
.end method

.method public final g(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Lmmi;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lmmi;

    if-eqz p3, :cond_1

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lmmi;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lmmi;->f(I)I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_1
    invoke-virtual {p2}, Lmmi;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Lmmi;->f(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->i(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lmmi;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-virtual {p2, v2}, Lmmi;->f(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lo4i;->h(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->i(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lo4i;->h(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final h(II)V
    .locals 0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, p2}, Lo4i;->l(II)V

    return-void
.end method

.method public final i(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Lmmi;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lmmi;

    if-eqz p3, :cond_1

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lmmi;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lmmi;->f(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lo4i;->x(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_1
    invoke-virtual {p2}, Lmmi;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Lmmi;->f(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->m(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lmmi;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-virtual {p2, v2}, Lmmi;->f(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lo4i;->l(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lo4i;->x(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->m(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lo4i;->l(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final j(IF)V
    .locals 0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lo4i;->h(II)V

    return-void
.end method

.method public final k(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Lt5i;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {p2}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    throw p2

    :cond_0
    throw p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lo4i;->k(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_4

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lo4i;->j(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final l(IJ)V
    .locals 0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, p2, p3}, Lo4i;->j(IJ)V

    return-void
.end method

.method public final m(ILjava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v1, p1, v2}, Lo4i;->f(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n(IJ)V
    .locals 0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, p2, p3}, Lo4i;->t(IJ)V

    return-void
.end method

.method public final o(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Lmmi;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Lmmi;

    if-eqz p3, :cond_1

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Lmmi;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Lmmi;->f(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lo4i;->x(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_1
    invoke-virtual {p2}, Lmmi;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Lmmi;->f(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->m(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lmmi;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-virtual {p2, v2}, Lmmi;->f(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lo4i;->l(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lo4i;->x(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->m(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lo4i;->l(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final p(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Lkzi;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {p2}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    throw p2

    :cond_0
    throw p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lo4i;->k(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_4

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lo4i;->j(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final q(ILjava/util/List;Z)V
    .locals 2

    instance-of v0, p2, Lbfi;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {p2}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    throw p2

    :cond_0
    throw p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lo4i;->i(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_4

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lo4i;->h(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final r(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Lkzi;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {p2}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    throw p2

    :cond_0
    throw p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo4i;->x(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lo4i;->u(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_4

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lo4i;->t(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final s(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, p2}, Lo4i;->o(ILjava/lang/String;)V

    return-void
.end method

.method public final t(ILjava/lang/Object;Lu1j;)V
    .locals 2

    iget-object v0, p0, Le5i;->a:Lo4i;

    check-cast p2, Lplh;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lo4i;->q(II)V

    invoke-virtual {p2, p3}, Lplh;->c(Lu1j;)I

    move-result p1

    invoke-virtual {v0, p1}, Lo4i;->s(I)V

    invoke-interface {p3, p2, p0}, Lu1j;->e(Ljava/lang/Object;La5j;)V

    return-void
.end method

.method public final u(IJ)V
    .locals 3

    add-long v0, p2, p2

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, p2, p3}, Lo4i;->t(IJ)V

    return-void
.end method

.method public final v(II)V
    .locals 1

    add-int v0, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, p2}, Lo4i;->r(II)V

    return-void
.end method

.method public final w(ILjava/util/List;Z)V
    .locals 7

    instance-of v0, p2, Lkzi;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {p2}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    throw p2

    :cond_0
    throw p2

    :cond_1
    const/16 v0, 0x3f

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v5, v3, v3

    shr-long/2addr v3, v0

    xor-long/2addr v3, v5

    invoke-static {v3, v4}, Lo4i;->x(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v5, v3, v3

    shr-long/2addr v3, v0

    xor-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lo4i;->u(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_4

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v5, v3, v3

    shr-long/2addr v3, v0

    xor-long/2addr v3, v5

    invoke-virtual {p3, p1, v3, v4}, Lo4i;->t(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final x(IJ)V
    .locals 0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, p2, p3}, Lo4i;->t(IJ)V

    return-void
.end method

.method public final y(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Lkzi;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {p2}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    throw p2

    :cond_0
    throw p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object p0, p0, Le5i;->a:Lo4i;

    invoke-virtual {p0, p1, v1}, Lo4i;->q(II)V

    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lo4i;->s(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lo4i;->k(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_4

    iget-object p3, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lo4i;->j(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final z(ILjava/util/List;)V
    .locals 4

    instance-of v0, p2, Lmwi;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lmwi;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0}, Lmwi;->zza()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Le5i;->a:Lo4i;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lo4i;->o(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Le5i;->a:Lo4i;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v3, p1, v2}, Lo4i;->f(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Le5i;->a:Lo4i;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lo4i;->o(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final zzG(I)V
    .locals 1

    iget-object p0, p0, Le5i;->a:Lo4i;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lo4i;->q(II)V

    return-void
.end method

.method public final zzh(I)V
    .locals 1

    iget-object p0, p0, Le5i;->a:Lo4i;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lo4i;->q(II)V

    return-void
.end method
