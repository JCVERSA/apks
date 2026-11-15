.class public final Lfmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzmj;
.implements Lymj;


# instance fields
.field public final b:Lzmj;

.field public c:Lymj;

.field public d:[Lemj;

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>(Lzmj;ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfmj;->b:Lzmj;

    const/4 p1, 0x0

    new-array p1, p1, [Lemj;

    iput-object p1, p0, Lfmj;->d:[Lemj;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lfmj;->e:J

    iput-wide p5, p0, Lfmj;->f:J

    return-void
.end method

.method public static k(JJJ)J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p4, v0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :cond_0
    return-wide p0
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iget-object p0, p0, Lfmj;->b:Lzmj;

    invoke-interface {p0, p1, p2}, Lzmj;->a(J)V

    return-void
.end method

.method public final b(Lz7j;)Z
    .locals 0

    iget-object p0, p0, Lfmj;->b:Lzmj;

    invoke-interface {p0, p1}, Lzmj;->b(Lz7j;)Z

    move-result p0

    return p0
.end method

.method public final c(J)J
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lfmj;->e:J

    iget-object v0, p0, Lfmj;->d:[Lemj;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lemj;->c()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfmj;->b:Lzmj;

    invoke-interface {v0, p1, p2}, Lzmj;->c(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lfmj;->f:J

    invoke-static/range {v1 .. v6}, Lfmj;->k(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final d(Lymj;J)V
    .locals 0

    iput-object p1, p0, Lfmj;->c:Lymj;

    iget-object p1, p0, Lfmj;->b:Lzmj;

    invoke-interface {p1, p0, p2, p3}, Lzmj;->d(Lymj;J)V

    return-void
.end method

.method public final e(JZ)V
    .locals 0

    iget-object p0, p0, Lfmj;->b:Lzmj;

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3}, Lzmj;->e(JZ)V

    return-void
.end method

.method public final f(Lzmj;)V
    .locals 0

    iget-object p1, p0, Lfmj;->c:Lymj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lymj;->f(Lzmj;)V

    return-void
.end method

.method public final g(JLkaj;)J
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    iget-wide v2, p3, Lkaj;->a:J

    sget v4, Lkfh;->a:I

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-wide v6, p3, Lkaj;->b:J

    iget-wide v8, p0, Lfmj;->f:J

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v10, v8, v10

    if-nez v10, :cond_0

    const-wide v8, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    sub-long/2addr v8, p1

    :goto_0
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    :cond_1
    new-instance p3, Lkaj;

    invoke-direct {p3, v4, v5, v0, v1}, Lkaj;-><init>(JJ)V

    :cond_2
    iget-object p0, p0, Lfmj;->b:Lzmj;

    invoke-interface {p0, p1, p2, p3}, Lzmj;->g(JLkaj;)J

    move-result-wide p0

    return-wide p0

    :cond_3
    return-wide v0
.end method

.method public final bridge synthetic h(Lapj;)V
    .locals 0

    check-cast p1, Lzmj;

    iget-object p1, p0, Lfmj;->c:Lymj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lzoj;->h(Lapj;)V

    return-void
.end method

.method public final i(JJ)V
    .locals 0

    iput-wide p3, p0, Lfmj;->f:J

    return-void
.end method

.method public final j()Z
    .locals 4

    iget-wide v0, p0, Lfmj;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m([Ltqj;[Z[Lyoj;[ZJ)J
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    array-length v1, v9

    new-array v2, v1, [Lemj;

    iput-object v2, v0, Lfmj;->d:[Lemj;

    new-array v10, v1, [Lyoj;

    const/4 v11, 0x0

    move v1, v11

    :goto_0
    array-length v2, v9

    const/4 v12, 0x0

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lfmj;->d:[Lemj;

    aget-object v3, v9, v1

    check-cast v3, Lemj;

    aput-object v3, v2, v1

    if-eqz v3, :cond_0

    iget-object v12, v3, Lemj;->a:Lyoj;

    :cond_0
    aput-object v12, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lfmj;->b:Lzmj;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lzmj;->m([Ltqj;[Z[Lyoj;[ZJ)J

    move-result-wide v13

    iget-wide v6, v0, Lfmj;->f:J

    move-wide v2, v13

    move-wide/from16 v4, p5

    invoke-static/range {v2 .. v7}, Lfmj;->k(JJJ)J

    move-result-wide v1

    invoke-virtual {p0}, Lfmj;->j()Z

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_4

    cmp-long v3, v13, p5

    if-gez v3, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v3, v13, v6

    if-eqz v3, :cond_4

    array-length v3, v8

    move v6, v11

    :goto_1
    if-ge v6, v3, :cond_4

    aget-object v7, v8, v6

    if-eqz v7, :cond_3

    invoke-interface {v7}, Ltqj;->zzf()Lerj;

    move-result-object v7

    iget-object v13, v7, Lerj;->o:Ljava/lang/String;

    iget-object v7, v7, Lerj;->k:Ljava/lang/String;

    invoke-static {v13, v7}, Lbue;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :goto_2
    move-wide v4, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    iput-wide v4, v0, Lfmj;->e:J

    :goto_4
    array-length v3, v9

    if-ge v11, v3, :cond_8

    aget-object v3, v10, v11

    if-nez v3, :cond_5

    iget-object v3, v0, Lfmj;->d:[Lemj;

    aput-object v12, v3, v11

    goto :goto_5

    :cond_5
    iget-object v4, v0, Lfmj;->d:[Lemj;

    aget-object v5, v4, v11

    if-eqz v5, :cond_6

    iget-object v5, v5, Lemj;->a:Lyoj;

    if-eq v5, v3, :cond_7

    :cond_6
    new-instance v5, Lemj;

    invoke-direct {v5, p0, v3}, Lemj;-><init>(Lfmj;Lyoj;)V

    aput-object v5, v4, v11

    :cond_7
    :goto_5
    iget-object v3, v0, Lfmj;->d:[Lemj;

    aget-object v3, v3, v11

    aput-object v3, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_8
    return-wide v1
.end method

.method public final zzb()J
    .locals 6

    iget-object v0, p0, Lfmj;->b:Lzmj;

    invoke-interface {v0}, Lzmj;->zzb()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lfmj;->f:J

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final zzc()J
    .locals 6

    iget-object v0, p0, Lfmj;->b:Lzmj;

    invoke-interface {v0}, Lzmj;->zzc()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lfmj;->f:J

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final zzd()J
    .locals 9

    invoke-virtual {p0}, Lfmj;->j()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lfmj;->e:J

    iput-wide v1, p0, Lfmj;->e:J

    invoke-virtual {p0}, Lfmj;->zzd()J

    move-result-wide v5

    cmp-long p0, v5, v1

    if-eqz p0, :cond_0

    return-wide v5

    :cond_0
    return-wide v3

    :cond_1
    iget-object v0, p0, Lfmj;->b:Lzmj;

    invoke-interface {v0}, Lzmj;->zzd()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    const-wide/16 v5, 0x0

    iget-wide v7, p0, Lfmj;->f:J

    invoke-static/range {v3 .. v8}, Lfmj;->k(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg()Lnpj;
    .locals 0

    iget-object p0, p0, Lfmj;->b:Lzmj;

    invoke-interface {p0}, Lzmj;->zzg()Lnpj;

    move-result-object p0

    return-object p0
.end method

.method public final zzi()V
    .locals 0

    iget-object p0, p0, Lfmj;->b:Lzmj;

    invoke-interface {p0}, Lzmj;->zzi()V

    return-void
.end method

.method public final zzp()Z
    .locals 0

    iget-object p0, p0, Lfmj;->b:Lzmj;

    invoke-interface {p0}, Lzmj;->zzp()Z

    move-result p0

    return p0
.end method
