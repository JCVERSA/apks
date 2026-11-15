.class public final Laje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public final a:Lbje;

.field public final b:Lu4h;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbje;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "audio/ac3"

    invoke-direct {v0, v1, v2, v3}, Lbje;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Laje;->a:Lbje;

    new-instance v0, Lu4h;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lu4h;-><init>(I)V

    iput-object v0, p0, Laje;->b:Lu4h;

    return-void
.end method


# virtual methods
.method public final b(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Laje;->c:Z

    iget-object p0, p0, Laje;->a:Lbje;

    invoke-virtual {p0}, Lbje;->zze()V

    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 4

    iget-object p2, p0, Laje;->b:Lu4h;

    invoke-virtual {p2}, Lu4h;->n()[B

    move-result-object v0

    const/16 v1, 0xae2

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ld9e;->b([BII)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2, v2}, Lu4h;->l(I)V

    invoke-virtual {p2, p1}, Lu4h;->k(I)V

    iget-boolean p1, p0, Laje;->c:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Laje;->a:Lbje;

    const-wide/16 v0, 0x0

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lbje;->b(JI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Laje;->c:Z

    :cond_1
    iget-object p0, p0, Laje;->a:Lbje;

    invoke-virtual {p0, p2}, Lbje;->a(Lu4h;)V

    return v2
.end method

.method public final e(Ld9e;)Z
    .locals 7

    new-instance p0, Lu4h;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lu4h;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lm8e;

    invoke-virtual {v4, v3, v1, v0, v1}, Lm8e;->e([BIIZ)Z

    invoke-virtual {p0, v1}, Lu4h;->l(I)V

    invoke-virtual {p0}, Lu4h;->I()I

    move-result v3

    const v5, 0x494433

    if-eq v3, v5, :cond_4

    invoke-interface {p1}, Ld9e;->zzj()V

    move-object v3, p1

    check-cast v3, Lm8e;

    invoke-virtual {v3, v2, v1}, Lm8e;->k(IZ)Z

    move v0, v1

    move v4, v2

    :goto_1
    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v3, v5, v1, v6, v1}, Lm8e;->e([BIIZ)Z

    invoke-virtual {p0, v1}, Lu4h;->l(I)V

    invoke-virtual {p0}, Lu4h;->K()I

    move-result v5

    const/16 v6, 0xb77

    if-eq v5, v6, :cond_1

    invoke-interface {p1}, Ld9e;->zzj()V

    add-int/lit8 v4, v4, 0x1

    sub-int v0, v4, v2

    const/16 v5, 0x2000

    if-ge v0, v5, :cond_0

    invoke-virtual {v3, v4, v1}, Lm8e;->k(IZ)Z

    move v0, v1

    goto :goto_1

    :cond_0
    return v1

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v0, v5

    const/4 v6, 0x4

    if-lt v0, v6, :cond_2

    return v5

    :cond_2
    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v5

    invoke-static {v5}, Lw7e;->b([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v5, v5, -0x6

    invoke-virtual {v3, v5, v1}, Lm8e;->k(IZ)Z

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lu4h;->m(I)V

    invoke-virtual {p0}, Lu4h;->F()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    add-int/2addr v2, v5

    invoke-virtual {v4, v3, v1}, Lm8e;->k(IZ)Z

    goto :goto_0
.end method

.method public final f(Lf9e;)V
    .locals 4

    new-instance v0, Lcle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-direct {v0, v3, v1, v2}, Lcle;-><init>(III)V

    iget-object p0, p0, Laje;->a:Lbje;

    invoke-virtual {p0, p1, v0}, Lbje;->c(Lf9e;Lcle;)V

    invoke-interface {p1}, Lf9e;->zzG()V

    new-instance p0, Ljae;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljae;-><init>(JJ)V

    invoke-interface {p1, p0}, Lf9e;->i(Lkae;)V

    return-void
.end method

.method public final synthetic zzc()Lc9e;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method
