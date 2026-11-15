.class public final Lqbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh8e;


# instance fields
.field public final a:Ln9e;

.field public final b:I

.field public final c:Li9e;


# direct methods
.method public synthetic constructor <init>(Ln9e;ILrbe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqbe;->a:Ln9e;

    iput p2, p0, Lqbe;->b:I

    new-instance p1, Li9e;

    invoke-direct {p1}, Li9e;-><init>()V

    iput-object p1, p0, Lqbe;->c:Li9e;

    return-void
.end method


# virtual methods
.method public final a(Ld9e;J)Lg8e;
    .locals 9

    invoke-interface {p1}, Ld9e;->zzf()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lqbe;->b(Ld9e;)J

    move-result-wide v2

    invoke-interface {p1}, Ld9e;->zze()J

    move-result-wide v4

    iget-object v6, p0, Lqbe;->a:Ln9e;

    iget v6, v6, Ln9e;->c:I

    const/4 v7, 0x6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {p1, v6}, Ld9e;->zzg(I)V

    cmp-long v6, v2, p2

    invoke-virtual {p0, p1}, Lqbe;->b(Ld9e;)J

    move-result-wide v7

    invoke-interface {p1}, Ld9e;->zze()J

    move-result-wide p0

    if-gtz v6, :cond_1

    cmp-long v6, v7, p2

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v4, v5}, Lg8e;->e(J)Lg8e;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    cmp-long p2, v7, p2

    if-gtz p2, :cond_2

    invoke-static {v7, v8, p0, p1}, Lg8e;->f(JJ)Lg8e;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v2, v3, v0, v1}, Lg8e;->d(JJ)Lg8e;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ld9e;)J
    .locals 13

    :goto_0
    invoke-interface {p1}, Ld9e;->zze()J

    move-result-wide v0

    invoke-interface {p1}, Ld9e;->zzd()J

    move-result-wide v2

    const-wide/16 v4, -0x6

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lqbe;->a:Ln9e;

    iget v1, p0, Lqbe;->b:I

    iget-object v2, p0, Lqbe;->c:Li9e;

    invoke-interface {p1}, Ld9e;->zze()J

    move-result-wide v6

    const/4 v3, 0x2

    new-array v8, v3, [B

    const/4 v9, 0x0

    invoke-interface {p1, v8, v9, v3}, Ld9e;->i([BII)V

    aget-byte v10, v8, v9

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x1

    aget-byte v12, v8, v11

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v12

    if-eq v10, v1, :cond_0

    invoke-interface {p1}, Ld9e;->zzj()V

    invoke-interface {p1}, Ld9e;->zzf()J

    move-result-wide v0

    sub-long/2addr v6, v0

    long-to-int v0, v6

    invoke-interface {p1, v0}, Ld9e;->zzg(I)V

    goto :goto_1

    :cond_0
    new-instance v10, Lu4h;

    const/16 v12, 0x10

    invoke-direct {v10, v12}, Lu4h;-><init>(I)V

    invoke-virtual {v10}, Lu4h;->n()[B

    move-result-object v12

    invoke-static {v8, v9, v12, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v10}, Lu4h;->n()[B

    move-result-object v8

    const/16 v9, 0xe

    invoke-static {p1, v8, v3, v9}, Lg9e;->a(Ld9e;[BII)I

    move-result v3

    invoke-virtual {v10, v3}, Lu4h;->k(I)V

    invoke-interface {p1}, Ld9e;->zzj()V

    invoke-interface {p1}, Ld9e;->zzf()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v3, v6

    invoke-interface {p1, v3}, Ld9e;->zzg(I)V

    invoke-static {v10, v0, v1, v2}, Lj9e;->c(Lu4h;Ln9e;ILi9e;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {p1, v11}, Ld9e;->zzg(I)V

    goto :goto_0

    :cond_2
    :goto_2
    invoke-interface {p1}, Ld9e;->zze()J

    move-result-wide v0

    invoke-interface {p1}, Ld9e;->zzd()J

    move-result-wide v2

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    invoke-interface {p1}, Ld9e;->zzd()J

    move-result-wide v0

    invoke-interface {p1}, Ld9e;->zze()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p1, v0}, Ld9e;->zzg(I)V

    iget-object p0, p0, Lqbe;->a:Ln9e;

    iget-wide p0, p0, Ln9e;->j:J

    return-wide p0

    :cond_3
    iget-object p0, p0, Lqbe;->c:Li9e;

    iget-wide p0, p0, Li9e;->a:J

    return-wide p0
.end method

.method public final synthetic zzb()V
    .locals 0

    return-void
.end method
