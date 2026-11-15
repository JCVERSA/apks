.class public final Lasi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbvi;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/ha;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ha;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Lzsi;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/ha;->a:Lasi;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/ha;)Lasi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a:Lasi;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lasi;

    invoke-direct {v0, p0}, Lasi;-><init>(Lcom/google/android/gms/internal/ads/ha;)V

    return-object v0
.end method


# virtual methods
.method public final A(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Losi;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Losi;

    if-eqz p3, :cond_1

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Losi;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Losi;->c(I)I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_1
    invoke-virtual {p2}, Losi;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Losi;->c(I)I

    move-result p1

    add-int p3, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Losi;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p2, v2}, Losi;->c(I)I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->x(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

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

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->x(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final B(ILjava/util/List;Z)V
    .locals 6

    instance-of v0, p2, Leti;

    const/4 v1, 0x2

    const/16 v2, 0x3f

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Leti;

    if-eqz p3, :cond_1

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v3

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Leti;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Leti;->c(I)J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_1
    invoke-virtual {p2}, Leti;->size()I

    move-result p1

    if-ge v3, p1, :cond_5

    invoke-virtual {p2, v3}, Leti;->c(I)J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->A(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Leti;->size()I

    move-result p3

    if-ge v3, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p2, v3}, Leti;->c(I)J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->z(IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v3

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_5

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->A(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->z(IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final C(ILjava/util/List;)V
    .locals 4

    instance-of v0, p2, Lbti;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lbti;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0}, Lbti;->zzc()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/ads/ha;->v(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/ads/ha;->m(ILcom/google/android/gms/internal/ads/zzgwn;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/ha;->v(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final D(IJ)V
    .locals 0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ha;->z(IJ)V

    return-void
.end method

.method public final E(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Leti;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Leti;

    if-eqz p3, :cond_1

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Leti;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Leti;->c(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_1
    invoke-virtual {p2}, Leti;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Leti;->c(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->A(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Leti;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p2, v2}, Leti;->c(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->z(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->A(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->z(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final F(ILjava/lang/Object;Lcui;)V
    .locals 0

    check-cast p2, Lrti;

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ha;->u(ILrti;Lcui;)V

    return-void
.end method

.method public final G(II)V
    .locals 0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ha;->o(II)V

    return-void
.end method

.method public final H(ILjava/lang/Object;Lcui;)V
    .locals 1

    check-cast p2, Lrti;

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ha;->a:Lasi;

    invoke-interface {p3, p2, v0}, Lcui;->c(Ljava/lang/Object;Lbvi;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    return-void
.end method

.method public final I(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Losi;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Losi;

    if-eqz p3, :cond_1

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Losi;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Losi;->c(I)I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_1
    invoke-virtual {p2}, Losi;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Losi;->c(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->p(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Losi;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p2, v2}, Losi;->c(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->o(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

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
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->p(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->o(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final J(IJ)V
    .locals 0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ha;->q(IJ)V

    return-void
.end method

.method public final b(II)V
    .locals 0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ha;->s(II)V

    return-void
.end method

.method public final c(IZ)V
    .locals 0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ha;->l(IZ)V

    return-void
.end method

.method public final d(ILjava/util/List;Z)V
    .locals 2

    instance-of v0, p2, Lori;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {p2}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    throw p2

    :cond_0
    throw p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

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
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->k(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_4

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->l(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final e(ID)V
    .locals 0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ha;->q(IJ)V

    return-void
.end method

.method public final f(II)V
    .locals 0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ha;->o(II)V

    return-void
.end method

.method public final g(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Losi;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Losi;

    if-eqz p3, :cond_1

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Losi;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Losi;->c(I)I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_1
    invoke-virtual {p2}, Losi;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Losi;->c(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->p(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Losi;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p2, v2}, Losi;->c(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->o(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

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
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->p(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->o(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final h(II)V
    .locals 0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ha;->s(II)V

    return-void
.end method

.method public final i(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Losi;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Losi;

    if-eqz p3, :cond_1

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Losi;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Losi;->c(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_1
    invoke-virtual {p2}, Losi;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Losi;->c(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->t(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Losi;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p2, v2}, Losi;->c(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->s(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

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

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->t(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->s(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final j(IF)V
    .locals 0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ha;->o(II)V

    return-void
.end method

.method public final k(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Lbsi;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {p2}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    throw p2

    :cond_0
    throw p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

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
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

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

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/ha;->r(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_4

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ha;->q(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final l(IJ)V
    .locals 0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ha;->q(IJ)V

    return-void
.end method

.method public final m(ILjava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/ha;->m(ILcom/google/android/gms/internal/ads/zzgwn;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n(IJ)V
    .locals 0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ha;->z(IJ)V

    return-void
.end method

.method public final o(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Losi;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Losi;

    if-eqz p3, :cond_1

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Losi;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Losi;->c(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_1
    invoke-virtual {p2}, Losi;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Losi;->c(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->t(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Losi;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p2, v2}, Losi;->c(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->s(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

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

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->t(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->s(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final p(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Leti;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Leti;

    if-eqz p3, :cond_1

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Leti;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Leti;->c(I)J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_1
    invoke-virtual {p2}, Leti;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Leti;->c(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->r(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Leti;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p2, v2}, Leti;->c(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->q(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->r(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->q(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final q(ILjava/util/List;Z)V
    .locals 2

    instance-of v0, p2, Lisi;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-static {p2}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    throw p2

    :cond_0
    throw p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

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
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->p(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_4

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->o(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final r(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Leti;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Leti;

    if-eqz p3, :cond_1

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Leti;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Leti;->c(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_1
    invoke-virtual {p2}, Leti;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Leti;->c(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->A(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Leti;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p2, v2}, Leti;->c(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->z(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ha;->f(J)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->A(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->z(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final s(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ha;->v(ILjava/lang/String;)V

    return-void
.end method

.method public final t(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Leti;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Leti;

    if-eqz p3, :cond_1

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Leti;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Leti;->c(I)J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_1
    invoke-virtual {p2}, Leti;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Leti;->c(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->r(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Leti;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p2, v2}, Leti;->c(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->q(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v2

    move p3, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->r(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/ha;->q(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final u(IJ)V
    .locals 3

    add-long v0, p2, p2

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ha;->z(IJ)V

    return-void
.end method

.method public final v(ILcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ha;->m(ILcom/google/android/gms/internal/ads/zzgwn;)V

    return-void
.end method

.method public final w(II)V
    .locals 1

    add-int v0, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ha;->x(II)V

    return-void
.end method

.method public final x(I)V
    .locals 1

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    return-void
.end method

.method public final y(II)V
    .locals 0

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ha;->x(II)V

    return-void
.end method

.method public final z(ILjava/util/List;Z)V
    .locals 3

    instance-of v0, p2, Losi;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Losi;

    if-eqz p3, :cond_1

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    move p1, v2

    move p3, p1

    :goto_0
    invoke-virtual {p2}, Losi;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Losi;->c(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_1
    invoke-virtual {p2}, Losi;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Losi;->c(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Losi;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p2, v2}, Losi;->c(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->x(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_4

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

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

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ha;->e(I)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ha;->y(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    iget-object p3, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->x(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final zzh(I)V
    .locals 1

    iget-object p0, p0, Lasi;->a:Lcom/google/android/gms/internal/ads/ha;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ha;->w(II)V

    return-void
.end method
