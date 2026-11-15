.class public final Lkpj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzmj;
.implements Lymj;


# instance fields
.field public final b:Lzmj;

.field public final c:J

.field public d:Lymj;


# direct methods
.method public constructor <init>(Lzmj;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkpj;->b:Lzmj;

    iput-wide p2, p0, Lkpj;->c:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget-wide v0, p0, Lkpj;->c:J

    iget-object p0, p0, Lkpj;->b:Lzmj;

    sub-long/2addr p1, v0

    invoke-interface {p0, p1, p2}, Lzmj;->a(J)V

    return-void
.end method

.method public final b(Lz7j;)Z
    .locals 4

    iget-wide v0, p1, Lz7j;->a:J

    iget-wide v2, p0, Lkpj;->c:J

    invoke-virtual {p1}, Lz7j;->a()Lv7j;

    move-result-object p1

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lv7j;->e(J)Lv7j;

    invoke-virtual {p1}, Lv7j;->g()Lz7j;

    move-result-object p1

    iget-object p0, p0, Lkpj;->b:Lzmj;

    invoke-interface {p0, p1}, Lzmj;->b(Lz7j;)Z

    move-result p0

    return p0
.end method

.method public final c(J)J
    .locals 2

    iget-wide v0, p0, Lkpj;->c:J

    iget-object p0, p0, Lkpj;->b:Lzmj;

    sub-long/2addr p1, v0

    invoke-interface {p0, p1, p2}, Lzmj;->c(J)J

    move-result-wide p0

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public final d(Lymj;J)V
    .locals 2

    iput-object p1, p0, Lkpj;->d:Lymj;

    iget-wide v0, p0, Lkpj;->c:J

    sub-long/2addr p2, v0

    iget-object p1, p0, Lkpj;->b:Lzmj;

    invoke-interface {p1, p0, p2, p3}, Lzmj;->d(Lymj;J)V

    return-void
.end method

.method public final e(JZ)V
    .locals 2

    iget-wide v0, p0, Lkpj;->c:J

    iget-object p0, p0, Lkpj;->b:Lzmj;

    sub-long/2addr p1, v0

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Lzmj;->e(JZ)V

    return-void
.end method

.method public final f(Lzmj;)V
    .locals 0

    iget-object p1, p0, Lkpj;->d:Lymj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lymj;->f(Lzmj;)V

    return-void
.end method

.method public final g(JLkaj;)J
    .locals 2

    iget-wide v0, p0, Lkpj;->c:J

    iget-object p0, p0, Lkpj;->b:Lzmj;

    sub-long/2addr p1, v0

    invoke-interface {p0, p1, p2, p3}, Lzmj;->g(JLkaj;)J

    move-result-wide p0

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public final bridge synthetic h(Lapj;)V
    .locals 0

    check-cast p1, Lzmj;

    iget-object p1, p0, Lkpj;->d:Lymj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lzoj;->h(Lapj;)V

    return-void
.end method

.method public final i()Lzmj;
    .locals 0

    iget-object p0, p0, Lkpj;->b:Lzmj;

    return-object p0
.end method

.method public final m([Ltqj;[Z[Lyoj;[ZJ)J
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p3

    array-length v2, v1

    new-array v2, v2, [Lyoj;

    const/4 v10, 0x0

    move v3, v10

    :goto_0
    array-length v4, v1

    const/4 v11, 0x0

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    check-cast v4, Lepj;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lepj;->c()Lyoj;

    move-result-object v11

    :cond_0
    aput-object v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lkpj;->b:Lzmj;

    iget-wide v12, v0, Lkpj;->c:J

    sub-long v8, p5, v12

    move-object v4, p1

    move-object/from16 v5, p2

    move-object v6, v2

    move-object/from16 v7, p4

    invoke-interface/range {v3 .. v9}, Lzmj;->m([Ltqj;[Z[Lyoj;[ZJ)J

    move-result-wide v3

    :goto_1
    array-length v0, v1

    if-ge v10, v0, :cond_5

    aget-object v0, v2, v10

    if-nez v0, :cond_2

    aput-object v11, v1, v10

    goto :goto_2

    :cond_2
    aget-object v5, v1, v10

    if-eqz v5, :cond_3

    check-cast v5, Lepj;

    invoke-virtual {v5}, Lepj;->c()Lyoj;

    move-result-object v5

    if-eq v5, v0, :cond_4

    :cond_3
    new-instance v5, Lepj;

    invoke-direct {v5, v0, v12, v13}, Lepj;-><init>(Lyoj;J)V

    aput-object v5, v1, v10

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    add-long/2addr v3, v12

    return-wide v3
.end method

.method public final zzb()J
    .locals 5

    iget-object v0, p0, Lkpj;->b:Lzmj;

    invoke-interface {v0}, Lzmj;->zzb()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lkpj;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzc()J
    .locals 5

    iget-object v0, p0, Lkpj;->b:Lzmj;

    invoke-interface {v0}, Lzmj;->zzc()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lkpj;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzd()J
    .locals 5

    iget-object v0, p0, Lkpj;->b:Lzmj;

    invoke-interface {v0}, Lzmj;->zzd()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Lkpj;->c:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzg()Lnpj;
    .locals 0

    iget-object p0, p0, Lkpj;->b:Lzmj;

    invoke-interface {p0}, Lzmj;->zzg()Lnpj;

    move-result-object p0

    return-object p0
.end method

.method public final zzi()V
    .locals 0

    iget-object p0, p0, Lkpj;->b:Lzmj;

    invoke-interface {p0}, Lzmj;->zzi()V

    return-void
.end method

.method public final zzp()Z
    .locals 0

    iget-object p0, p0, Lkpj;->b:Lzmj;

    invoke-interface {p0}, Lzmj;->zzp()Z

    move-result p0

    return p0
.end method
