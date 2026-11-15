.class public final Lwri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laui;


# instance fields
.field public final a:Lvri;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lvri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lwri;->d:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lzsi;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lwri;->a:Lvri;

    iput-object p0, p1, Lvri;->c:Lwri;

    return-void
.end method

.method public static A(Lvri;)Lwri;
    .locals 1

    iget-object v0, p0, Lvri;->c:Lwri;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lwri;

    invoke-direct {v0, p0}, Lwri;-><init>(Lvri;)V

    return-object v0
.end method

.method public static final y(I)V
    .locals 1

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "Failed to parse the message."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final z(I)V
    .locals 1

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "Failed to parse the message."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Losi;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Losi;

    iget p1, p0, Lwri;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->q()I

    move-result v1

    invoke-virtual {p1}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {p1}, Lvri;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Losi;->zzi(I)V

    invoke-virtual {p1}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Losi;->zzi(I)V

    invoke-virtual {p1}, Lvri;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lvri;->p()I

    move-result p1

    iget v1, p0, Lwri;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->q()I

    move-result v1

    invoke-virtual {v0}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_5
    invoke-virtual {v0}, Lvri;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_5

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lwri;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lbsi;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    iget p1, p0, Lwri;->b:I

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x0

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->q()I

    move-result p1

    invoke-static {p1}, Lwri;->z(I)V

    invoke-virtual {p0}, Lvri;->i()I

    invoke-virtual {p0}, Lvri;->g()D

    throw v0

    :cond_1
    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->g()D

    throw v0

    :cond_2
    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_4

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->q()I

    move-result v0

    invoke-static {v0}, Lwri;->z(I)V

    invoke-virtual {p0}, Lvri;->i()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lvri;->g()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lvri;->i()I

    move-result v1

    if-lt v1, v0, :cond_3

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->g()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lwri;->d:I

    :cond_6
    :goto_0
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 2

    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lwri;->zzp()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lwri;->d:I

    return-void

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    const-string p1, "Protocol message tag had invalid wire type."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Ljava/util/List;Lcui;Lesi;)V
    .locals 3

    iget v0, p0, Lwri;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p2}, Lcui;->zze()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lwri;->v(Ljava/lang/Object;Lcui;Lesi;)V

    invoke-interface {p2, v1}, Lcui;->a(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lwri;->a:Lvri;

    invoke-virtual {v1}, Lvri;->a()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lwri;->d:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lvri;->p()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lwri;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    const-string p1, "Protocol message tag had invalid wire type."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Ljava/util/List;Lcui;Lesi;)V
    .locals 3

    iget v0, p0, Lwri;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p2}, Lcui;->zze()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lwri;->u(Ljava/lang/Object;Lcui;Lesi;)V

    invoke-interface {p2, v1}, Lcui;->a(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lwri;->a:Lvri;

    invoke-virtual {v1}, Lvri;->a()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lwri;->d:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lvri;->p()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lwri;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    const-string p1, "Protocol message tag had invalid wire type."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Ljava/util/List;)V
    .locals 6

    instance-of v0, p1, Losi;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Losi;

    iget p1, p0, Lwri;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_2

    :cond_0
    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Losi;->zzi(I)V

    invoke-virtual {p1}, Lvri;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lvri;->p()I

    move-result p1

    iget v1, p0, Lwri;->b:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v4, p0, Lwri;->a:Lvri;

    invoke-virtual {v4}, Lvri;->q()I

    move-result p0

    invoke-static {p0}, Lwri;->y(I)V

    invoke-virtual {v4}, Lvri;->i()I

    move-result p1

    add-int v5, p1, p0

    :cond_4
    invoke-virtual {v4}, Lvri;->l()I

    move-result p0

    invoke-virtual {v0, p0}, Losi;->zzi(I)V

    invoke-virtual {v4}, Lvri;->i()I

    move-result p0

    if-lt p0, v5, :cond_4

    goto :goto_1

    :cond_5
    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    :cond_6
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->l()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_6

    move p1, v0

    :goto_0
    iput p1, p0, Lwri;->d:I

    return-void

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->q()I

    move-result v0

    invoke-static {v0}, Lwri;->y(I)V

    invoke-virtual {p0}, Lvri;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_9
    invoke-virtual {p0}, Lvri;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lvri;->i()I

    move-result v0

    if-lt v0, v1, :cond_9

    :cond_a
    :goto_1
    return-void
.end method

.method public final g(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Lori;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    iget p1, p0, Lwri;->b:I

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->q()I

    invoke-virtual {p0}, Lvri;->i()I

    invoke-virtual {p0}, Lvri;->b()Z

    throw v0

    :cond_1
    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->b()Z

    throw v0

    :cond_2
    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_5

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->q()I

    move-result v1

    invoke-virtual {v0}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_3
    invoke-virtual {v0}, Lvri;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_3

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lwri;->d:I

    :cond_6
    return-void
.end method

.method public final h(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Leti;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Leti;

    iget p1, p0, Lwri;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->q()I

    move-result v1

    invoke-virtual {p1}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {p1}, Lvri;->v()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Leti;->i(J)V

    invoke-virtual {p1}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->v()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Leti;->i(J)V

    invoke-virtual {p1}, Lvri;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lvri;->p()I

    move-result p1

    iget v1, p0, Lwri;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->q()I

    move-result v1

    invoke-virtual {v0}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_5
    invoke-virtual {v0}, Lvri;->v()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_5

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->v()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lwri;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final i(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Leti;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Leti;

    iget p1, p0, Lwri;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->q()I

    move-result v1

    invoke-virtual {p1}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {p1}, Lvri;->u()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Leti;->i(J)V

    invoke-virtual {p1}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->u()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Leti;->i(J)V

    invoke-virtual {p1}, Lvri;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lvri;->p()I

    move-result p1

    iget v1, p0, Lwri;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->q()I

    move-result v1

    invoke-virtual {v0}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_5
    invoke-virtual {v0}, Lvri;->u()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_5

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->u()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lwri;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final j(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Losi;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Losi;

    iget p1, p0, Lwri;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->q()I

    move-result v1

    invoke-virtual {p1}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {p1}, Lvri;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Losi;->zzi(I)V

    invoke-virtual {p1}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Losi;->zzi(I)V

    invoke-virtual {p1}, Lvri;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lvri;->p()I

    move-result p1

    iget v1, p0, Lwri;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->q()I

    move-result v1

    invoke-virtual {v0}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_5
    invoke-virtual {v0}, Lvri;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_5

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lwri;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Losi;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Losi;

    iget p1, p0, Lwri;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->q()I

    move-result v1

    invoke-virtual {p1}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {p1}, Lvri;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Losi;->zzi(I)V

    invoke-virtual {p1}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Losi;->zzi(I)V

    invoke-virtual {p1}, Lvri;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lvri;->p()I

    move-result p1

    iget v1, p0, Lwri;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->q()I

    move-result v1

    invoke-virtual {v0}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_5
    invoke-virtual {v0}, Lvri;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_5

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lwri;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final l(Ljava/lang/Object;Lcui;Lesi;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    invoke-virtual {p0, p1, p2, p3}, Lwri;->u(Ljava/lang/Object;Lcui;Lesi;)V

    return-void
.end method

.method public final m(Ljava/util/List;)V
    .locals 5

    instance-of v0, p1, Leti;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Leti;

    iget p1, p0, Lwri;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->q()I

    move-result v1

    invoke-virtual {p1}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {p1}, Lvri;->s()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Leti;->i(J)V

    invoke-virtual {p1}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Leti;->i(J)V

    invoke-virtual {p1}, Lvri;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lvri;->p()I

    move-result p1

    iget v1, p0, Lwri;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->q()I

    move-result v1

    invoke-virtual {v0}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_5
    invoke-virtual {v0}, Lvri;->s()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_5

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->s()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lwri;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 3

    instance-of v0, p1, Losi;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Losi;

    iget p1, p0, Lwri;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->q()I

    move-result v1

    invoke-virtual {p1}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_0
    invoke-virtual {p1}, Lvri;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Losi;->zzi(I)V

    invoke-virtual {p1}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Losi;->zzi(I)V

    invoke-virtual {p1}, Lvri;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lvri;->p()I

    move-result p1

    iget v1, p0, Lwri;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->q()I

    move-result v1

    invoke-virtual {v0}, Lvri;->i()I

    move-result v2

    add-int/2addr v2, v1

    :cond_5
    invoke-virtual {v0}, Lvri;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->i()I

    move-result v1

    if-lt v1, v2, :cond_5

    invoke-virtual {p0, v2}, Lwri;->w(I)V

    return-void

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lwri;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final o(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Leti;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Leti;

    iget p1, p0, Lwri;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_1

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->q()I

    move-result p1

    invoke-static {p1}, Lwri;->z(I)V

    invoke-virtual {p0}, Lvri;->i()I

    move-result v1

    add-int/2addr p1, v1

    :cond_0
    invoke-virtual {p0}, Lvri;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Leti;->i(J)V

    invoke-virtual {p0}, Lvri;->i()I

    move-result v1

    if-lt v1, p1, :cond_0

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Leti;->i(J)V

    invoke-virtual {p1}, Lvri;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lvri;->p()I

    move-result p1

    iget v1, p0, Lwri;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_6

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->q()I

    move-result v0

    invoke-static {v0}, Lwri;->z(I)V

    invoke-virtual {p0}, Lvri;->i()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lvri;->t()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lvri;->i()I

    move-result v1

    if-lt v1, v0, :cond_5

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->t()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lwri;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final p(Ljava/util/List;)V
    .locals 6

    instance-of v0, p1, Losi;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Losi;

    iget p1, p0, Lwri;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_2

    :cond_0
    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Losi;->zzi(I)V

    invoke-virtual {p1}, Lvri;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lvri;->p()I

    move-result p1

    iget v1, p0, Lwri;->b:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v4, p0, Lwri;->a:Lvri;

    invoke-virtual {v4}, Lvri;->q()I

    move-result p0

    invoke-static {p0}, Lwri;->y(I)V

    invoke-virtual {v4}, Lvri;->i()I

    move-result p1

    add-int v5, p1, p0

    :cond_4
    invoke-virtual {v4}, Lvri;->n()I

    move-result p0

    invoke-virtual {v0, p0}, Losi;->zzi(I)V

    invoke-virtual {v4}, Lvri;->i()I

    move-result p0

    if-lt p0, v5, :cond_4

    goto :goto_1

    :cond_5
    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    :cond_6
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_6

    move p1, v0

    :goto_0
    iput p1, p0, Lwri;->d:I

    return-void

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->q()I

    move-result v0

    invoke-static {v0}, Lwri;->y(I)V

    invoke-virtual {p0}, Lvri;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_9
    invoke-virtual {p0}, Lvri;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lvri;->i()I

    move-result v0

    if-lt v0, v1, :cond_9

    :cond_a
    :goto_1
    return-void
.end method

.method public final q(Ljava/lang/Object;Lcui;Lesi;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    invoke-virtual {p0, p1, p2, p3}, Lwri;->v(Ljava/lang/Object;Lcui;Lesi;)V

    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Leti;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Leti;

    iget p1, p0, Lwri;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v3, :cond_2

    if-ne p1, v2, :cond_1

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->q()I

    move-result p1

    invoke-static {p1}, Lwri;->z(I)V

    invoke-virtual {p0}, Lvri;->i()I

    move-result v1

    add-int/2addr p1, v1

    :cond_0
    invoke-virtual {p0}, Lvri;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Leti;->i(J)V

    invoke-virtual {p0}, Lvri;->i()I

    move-result v1

    if-lt v1, p1, :cond_0

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, p0, Lwri;->a:Lvri;

    invoke-virtual {p1}, Lvri;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Leti;->i(J)V

    invoke-virtual {p1}, Lvri;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lvri;->p()I

    move-result p1

    iget v1, p0, Lwri;->b:I

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_4
    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_6

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->q()I

    move-result v0

    invoke-static {v0}, Lwri;->z(I)V

    invoke-virtual {p0}, Lvri;->i()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lvri;->r()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lvri;->i()I

    move-result v1

    if-lt v1, v0, :cond_5

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->r()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_7

    move p1, v0

    :goto_0
    iput p1, p0, Lwri;->d:I

    :cond_8
    :goto_1
    return-void
.end method

.method public final s(Ljava/util/List;)V
    .locals 4

    instance-of v0, p1, Lisi;

    const-string v1, "Protocol message tag had invalid wire type."

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    invoke-static {p1}, Lubc;->a(Ljava/lang/Object;)V

    iget p1, p0, Lwri;->b:I

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x0

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->h()F

    throw v0

    :cond_1
    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->q()I

    move-result p1

    invoke-static {p1}, Lwri;->y(I)V

    invoke-virtual {p0}, Lvri;->i()I

    invoke-virtual {p0}, Lvri;->h()F

    throw v0

    :cond_2
    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v3, :cond_5

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->h()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lwri;->d:I

    return-void

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->q()I

    move-result v0

    invoke-static {v0}, Lwri;->y(I)V

    invoke-virtual {p0}, Lvri;->i()I

    move-result v1

    add-int/2addr v1, v0

    :cond_6
    invoke-virtual {p0}, Lvri;->h()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lvri;->i()I

    move-result v0

    if-lt v0, v1, :cond_6

    :cond_7
    return-void
.end method

.method public final t(Ljava/util/List;Z)V
    .locals 2

    iget v0, p0, Lwri;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    instance-of v0, p1, Lbti;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    check-cast p1, Lbti;

    :cond_1
    invoke-virtual {p0}, Lwri;->zzp()Lcom/google/android/gms/internal/ads/zzgwn;

    invoke-interface {p1}, Lbti;->zzb()V

    iget-object p2, p0, Lwri;->a:Lvri;

    invoke-virtual {p2}, Lvri;->a()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lvri;->p()I

    move-result p2

    iget v0, p0, Lwri;->b:I

    if-eq p2, v0, :cond_1

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lwri;->zzs()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lwri;->zzr()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iget v1, p0, Lwri;->b:I

    if-eq v0, v1, :cond_2

    move p2, v0

    :goto_2
    iput p2, p0, Lwri;->d:I

    return-void

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    const-string p1, "Protocol message tag had invalid wire type."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final u(Ljava/lang/Object;Lcui;Lesi;)V
    .locals 2

    iget v0, p0, Lwri;->c:I

    iget v1, p0, Lwri;->b:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lwri;->c:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcui;->e(Ljava/lang/Object;Laui;Lesi;)V

    iget p1, p0, Lwri;->b:I

    iget p2, p0, Lwri;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lwri;->c:I

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p2, "Failed to parse the message."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lwri;->c:I

    throw p1
.end method

.method public final v(Ljava/lang/Object;Lcui;Lesi;)V
    .locals 4

    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->q()I

    move-result v1

    iget v2, v0, Lvri;->a:I

    iget v3, v0, Lvri;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lvri;->j(I)I

    move-result v1

    iget v2, v0, Lvri;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lvri;->a:I

    invoke-interface {p2, p1, p0, p3}, Lcui;->e(Ljava/lang/Object;Laui;Lesi;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lvri;->z(I)V

    iget p0, v0, Lvri;->a:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Lvri;->a:I

    invoke-virtual {v0, v1}, Lvri;->A(I)V

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final w(I)V
    .locals 0

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->i()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x(I)V
    .locals 0

    iget p0, p0, Lwri;->b:I

    and-int/lit8 p0, p0, 0x7

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyj;

    const-string p1, "Protocol message tag had invalid wire type."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyj;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzN()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->b()Z

    move-result p0

    return p0
.end method

.method public final zza()D
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->g()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()F
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->h()F

    move-result p0

    return p0
.end method

.method public final zzc()I
    .locals 2

    iget v0, p0, Lwri;->d:I

    if-eqz v0, :cond_0

    iput v0, p0, Lwri;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lwri;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lwri;->a:Lvri;

    invoke-virtual {v0}, Lvri;->p()I

    move-result v0

    iput v0, p0, Lwri;->b:I

    :goto_0
    if-eqz v0, :cond_2

    iget p0, p0, Lwri;->c:I

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 p0, v0, 0x3

    return p0

    :cond_2
    :goto_1
    const p0, 0x7fffffff

    return p0
.end method

.method public final zzd()I
    .locals 0

    iget p0, p0, Lwri;->b:I

    return p0
.end method

.method public final zze()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->k()I

    move-result p0

    return p0
.end method

.method public final zzf()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->l()I

    move-result p0

    return p0
.end method

.method public final zzg()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->m()I

    move-result p0

    return p0
.end method

.method public final zzh()I
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->n()I

    move-result p0

    return p0
.end method

.method public final zzi()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->o()I

    move-result p0

    return p0
.end method

.method public final zzj()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->q()I

    move-result p0

    return p0
.end method

.method public final zzk()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzn()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->w()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p0

    return-object p0
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->x()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzs()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lwri;->x(I)V

    iget-object p0, p0, Lwri;->a:Lvri;

    invoke-virtual {p0}, Lvri;->y()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
