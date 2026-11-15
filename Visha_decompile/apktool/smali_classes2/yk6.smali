.class public final Lyk6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/i$b;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/i$b;JJJJZZZZ)V
    .locals 8

    move-object v0, p0

    move/from16 v1, p10

    move/from16 v2, p11

    move/from16 v3, p12

    move/from16 v4, p13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v5

    :goto_1
    invoke-static {v7}, Lzi;->a(Z)V

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v7, v6

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v5

    :goto_3
    invoke-static {v7}, Lzi;->a(Z)V

    if-eqz v1, :cond_5

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    move v5, v6

    :cond_5
    :goto_4
    invoke-static {v5}, Lzi;->a(Z)V

    move-object v5, p1

    iput-object v5, v0, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    move-wide v5, p2

    iput-wide v5, v0, Lyk6;->b:J

    move-wide v5, p4

    iput-wide v5, v0, Lyk6;->c:J

    move-wide v5, p6

    iput-wide v5, v0, Lyk6;->d:J

    move-wide/from16 v5, p8

    iput-wide v5, v0, Lyk6;->e:J

    iput-boolean v1, v0, Lyk6;->f:Z

    iput-boolean v2, v0, Lyk6;->g:Z

    iput-boolean v3, v0, Lyk6;->h:Z

    iput-boolean v4, v0, Lyk6;->i:Z

    return-void
.end method


# virtual methods
.method public a(J)Lyk6;
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Lyk6;->c:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lyk6;

    iget-object v4, v0, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v5, v0, Lyk6;->b:J

    iget-wide v9, v0, Lyk6;->d:J

    iget-wide v11, v0, Lyk6;->e:J

    iget-boolean v13, v0, Lyk6;->f:Z

    iget-boolean v14, v0, Lyk6;->g:Z

    iget-boolean v15, v0, Lyk6;->h:Z

    iget-boolean v0, v0, Lyk6;->i:Z

    move-object v3, v1

    move-wide/from16 v7, p1

    move/from16 v16, v0

    invoke-direct/range {v3 .. v16}, Lyk6;-><init>(Lcom/google/android/exoplayer2/source/i$b;JJJJZZZZ)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public b(J)Lyk6;
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Lyk6;->b:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lyk6;

    iget-object v4, v0, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-wide v7, v0, Lyk6;->c:J

    iget-wide v9, v0, Lyk6;->d:J

    iget-wide v11, v0, Lyk6;->e:J

    iget-boolean v13, v0, Lyk6;->f:Z

    iget-boolean v14, v0, Lyk6;->g:Z

    iget-boolean v15, v0, Lyk6;->h:Z

    iget-boolean v0, v0, Lyk6;->i:Z

    move-object v3, v1

    move-wide/from16 v5, p1

    move/from16 v16, v0

    invoke-direct/range {v3 .. v16}, Lyk6;-><init>(Lcom/google/android/exoplayer2/source/i$b;JJJJZZZZ)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lyk6;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lyk6;

    iget-wide v2, p0, Lyk6;->b:J

    iget-wide v4, p1, Lyk6;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lyk6;->c:J

    iget-wide v4, p1, Lyk6;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lyk6;->d:J

    iget-wide v4, p1, Lyk6;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lyk6;->e:J

    iget-wide v4, p1, Lyk6;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lyk6;->f:Z

    iget-boolean v3, p1, Lyk6;->f:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lyk6;->g:Z

    iget-boolean v3, p1, Lyk6;->g:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lyk6;->h:Z

    iget-boolean v3, p1, Lyk6;->h:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lyk6;->i:Z

    iget-boolean v3, p1, Lyk6;->i:Z

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    iget-object p1, p1, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    invoke-static {p0, p1}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lyk6;->a:Lcom/google/android/exoplayer2/source/i$b;

    invoke-virtual {v0}, Lxk6;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lyk6;->b:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lyk6;->c:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lyk6;->d:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lyk6;->e:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lyk6;->f:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lyk6;->g:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lyk6;->h:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lyk6;->i:Z

    add-int/2addr v1, p0

    return v1
.end method
