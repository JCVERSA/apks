.class public final Lgge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public final f:[I

.field public final g:Lu4h;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Lgge;->f:[I

    new-instance v1, Lu4h;

    invoke-direct {v1, v0}, Lu4h;-><init>(I)V

    iput-object v1, p0, Lgge;->g:Lu4h;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lgge;->a:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lgge;->b:J

    iput v0, p0, Lgge;->c:I

    iput v0, p0, Lgge;->d:I

    iput v0, p0, Lgge;->e:I

    return-void
.end method

.method public final b(Ld9e;Z)Z
    .locals 6

    invoke-virtual {p0}, Lgge;->a()V

    iget-object v0, p0, Lgge;->g:Lu4h;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lu4h;->i(I)V

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v1, p2}, Lg9e;->c(Ld9e;[BIIZ)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lu4h;->O()J

    move-result-wide v1

    const-wide/32 v4, 0x4f676753

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lu4h;->G()I

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    return v3

    :cond_1
    const-string p0, "unsupported bit stream revision"

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {v0}, Lu4h;->G()I

    move-result v1

    iput v1, p0, Lgge;->a:I

    invoke-virtual {v0}, Lu4h;->L()J

    move-result-wide v1

    iput-wide v1, p0, Lgge;->b:J

    invoke-virtual {v0}, Lu4h;->M()J

    invoke-virtual {v0}, Lu4h;->M()J

    invoke-virtual {v0}, Lu4h;->M()J

    invoke-virtual {v0}, Lu4h;->G()I

    move-result v1

    iput v1, p0, Lgge;->c:I

    add-int/lit8 v2, v1, 0x1b

    iput v2, p0, Lgge;->d:I

    invoke-virtual {v0, v1}, Lu4h;->i(I)V

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v1

    iget v2, p0, Lgge;->c:I

    invoke-static {p1, v1, v3, v2, p2}, Lg9e;->c(Ld9e;[BIIZ)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    iget p1, p0, Lgge;->c:I

    if-ge v3, p1, :cond_3

    iget-object p1, p0, Lgge;->f:[I

    invoke-virtual {v0}, Lu4h;->G()I

    move-result p2

    aput p2, p1, v3

    iget p1, p0, Lgge;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lgge;->e:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v3
.end method

.method public final c(Ld9e;J)Z
    .locals 8

    invoke-interface {p1}, Ld9e;->zzf()J

    move-result-wide v0

    invoke-interface {p1}, Ld9e;->zze()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ln7g;->d(Z)V

    iget-object p0, p0, Lgge;->g:Lu4h;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lu4h;->i(I)V

    :goto_1
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ld9e;->zzf()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    cmp-long v4, v4, p2

    if-ltz v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v4

    invoke-static {p1, v4, v1, v0, v2}, Lg9e;->c(Ld9e;[BIIZ)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v1}, Lu4h;->l(I)V

    invoke-virtual {p0}, Lu4h;->O()J

    move-result-wide v3

    const-wide/32 v5, 0x4f676753

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    invoke-interface {p1}, Ld9e;->zzj()V

    return v2

    :cond_2
    invoke-interface {p1, v2}, Ld9e;->f(I)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    invoke-interface {p1}, Ld9e;->zzf()J

    move-result-wide v4

    cmp-long p0, v4, p2

    if-gez p0, :cond_5

    :cond_4
    invoke-interface {p1, v2}, Ld9e;->a(I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    :cond_5
    return v1
.end method
