.class public final Lbge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhge;


# instance fields
.field public final a:Lgge;

.field public final b:J

.field public final c:J

.field public final d:Lmge;

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>(Lmge;JJJJZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ln7g;->d(Z)V

    iput-object p1, p0, Lbge;->d:Lmge;

    iput-wide p2, p0, Lbge;->b:J

    iput-wide p4, p0, Lbge;->c:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    :cond_1
    iput v1, p0, Lbge;->e:I

    goto :goto_2

    :cond_2
    :goto_1
    iput-wide p8, p0, Lbge;->f:J

    const/4 p1, 0x4

    iput p1, p0, Lbge;->e:I

    :goto_2
    new-instance p1, Lgge;

    invoke-direct {p1}, Lgge;-><init>()V

    iput-object p1, p0, Lbge;->a:Lgge;

    return-void
.end method

.method public static bridge synthetic c(Lbge;)J
    .locals 2

    iget-wide v0, p0, Lbge;->c:J

    return-wide v0
.end method

.method public static bridge synthetic d(Lbge;)J
    .locals 2

    iget-wide v0, p0, Lbge;->b:J

    return-wide v0
.end method

.method public static bridge synthetic e(Lbge;)J
    .locals 2

    iget-wide v0, p0, Lbge;->f:J

    return-wide v0
.end method

.method public static bridge synthetic f(Lbge;)Lmge;
    .locals 0

    iget-object p0, p0, Lbge;->d:Lmge;

    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 4

    iget-wide v0, p0, Lbge;->f:J

    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    sget v2, Lkfh;->a:I

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lbge;->h:J

    const/4 p1, 0x2

    iput p1, p0, Lbge;->e:I

    iget-wide p1, p0, Lbge;->b:J

    iput-wide p1, p0, Lbge;->i:J

    iget-wide p1, p0, Lbge;->c:J

    iput-wide p1, p0, Lbge;->j:J

    iput-wide v0, p0, Lbge;->k:J

    iget-wide p1, p0, Lbge;->f:J

    iput-wide p1, p0, Lbge;->l:J

    return-void
.end method

.method public final b(Ld9e;)J
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lbge;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_b

    if-eq v2, v4, :cond_c

    const/4 v4, 0x2

    const/4 v10, 0x3

    if-eq v2, v4, :cond_0

    if-eq v2, v10, :cond_9

    return-wide v6

    :cond_0
    iget-wide v11, v0, Lbge;->i:J

    iget-wide v13, v0, Lbge;->j:J

    cmp-long v2, v11, v13

    if-nez v2, :cond_1

    :goto_0
    move-wide v13, v6

    goto/16 :goto_3

    :cond_1
    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v11

    iget-object v2, v0, Lbge;->a:Lgge;

    invoke-virtual {v2, v1, v13, v14}, Lgge;->c(Ld9e;J)Z

    move-result v4

    if-nez v4, :cond_3

    iget-wide v13, v0, Lbge;->i:J

    cmp-long v2, v13, v11

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No ogg page can be found."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v2, v1, v3}, Lgge;->b(Ld9e;Z)Z

    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    iget-wide v13, v0, Lbge;->h:J

    iget-wide v8, v2, Lgge;->b:J

    sub-long/2addr v13, v8

    iget v4, v2, Lgge;->d:I

    iget v2, v2, Lgge;->e:I

    add-int/2addr v4, v2

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-ltz v2, :cond_4

    const-wide/32 v15, 0x11940

    cmp-long v15, v13, v15

    if-gez v15, :cond_4

    goto :goto_0

    :cond_4
    if-gez v2, :cond_5

    iput-wide v11, v0, Lbge;->j:J

    iput-wide v8, v0, Lbge;->l:J

    goto :goto_1

    :cond_5
    int-to-long v11, v4

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v15

    add-long/2addr v11, v15

    iput-wide v11, v0, Lbge;->i:J

    iput-wide v8, v0, Lbge;->k:J

    :goto_1
    iget-wide v8, v0, Lbge;->j:J

    iget-wide v11, v0, Lbge;->i:J

    sub-long v15, v8, v11

    const-wide/32 v17, 0x186a0

    cmp-long v17, v15, v17

    if-gez v17, :cond_6

    iput-wide v11, v0, Lbge;->j:J

    move-wide v13, v11

    goto :goto_3

    :cond_6
    int-to-long v3, v4

    if-gtz v2, :cond_7

    const-wide/16 v18, 0x2

    goto :goto_2

    :cond_7
    const-wide/16 v18, 0x1

    :goto_2
    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v20

    mul-long v3, v3, v18

    sub-long v20, v20, v3

    mul-long/2addr v13, v15

    iget-wide v2, v0, Lbge;->l:J

    move-wide v15, v11

    iget-wide v10, v0, Lbge;->k:J

    sub-long/2addr v2, v10

    div-long/2addr v13, v2

    add-long v2, v20, v13

    add-long/2addr v8, v6

    sget v10, Lkfh;->a:I

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v8, v15

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    :goto_3
    cmp-long v2, v13, v6

    if-eqz v2, :cond_8

    return-wide v13

    :cond_8
    const/4 v2, 0x3

    iput v2, v0, Lbge;->e:I

    :cond_9
    :goto_4
    iget-object v2, v0, Lbge;->a:Lgge;

    invoke-virtual {v2, v1, v6, v7}, Lgge;->c(Ld9e;J)Z

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lgge;->b(Ld9e;Z)Z

    iget-wide v3, v2, Lgge;->b:J

    iget-wide v8, v0, Lbge;->h:J

    cmp-long v3, v3, v8

    if-lez v3, :cond_a

    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    iput v5, v0, Lbge;->e:I

    iget-wide v0, v0, Lbge;->k:J

    const-wide/16 v8, 0x2

    add-long/2addr v0, v8

    neg-long v0, v0

    return-wide v0

    :cond_a
    const-wide/16 v8, 0x2

    iget v3, v2, Lgge;->d:I

    iget v4, v2, Lgge;->e:I

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Ld9e;->f(I)V

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v3

    iput-wide v3, v0, Lbge;->i:J

    iget-wide v2, v2, Lgge;->b:J

    iput-wide v2, v0, Lbge;->k:J

    goto :goto_4

    :cond_b
    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v2

    iput-wide v2, v0, Lbge;->g:J

    iput v4, v0, Lbge;->e:I

    iget-wide v8, v0, Lbge;->c:J

    const-wide/32 v10, -0xff1b

    add-long/2addr v8, v10

    cmp-long v2, v8, v2

    if-lez v2, :cond_c

    return-wide v8

    :cond_c
    iget-object v2, v0, Lbge;->a:Lgge;

    invoke-virtual {v2}, Lgge;->a()V

    invoke-virtual {v2, v1, v6, v7}, Lgge;->c(Ld9e;J)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lgge;->b(Ld9e;Z)Z

    iget v3, v2, Lgge;->d:I

    iget v8, v2, Lgge;->e:I

    add-int/2addr v3, v8

    invoke-interface {v1, v3}, Ld9e;->f(I)V

    iget-wide v8, v2, Lgge;->b:J

    :goto_5
    iget v3, v2, Lgge;->a:I

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_e

    invoke-virtual {v2, v1, v6, v7}, Lgge;->c(Ld9e;J)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v10

    iget-wide v12, v0, Lbge;->c:J

    cmp-long v3, v10, v12

    if-gez v3, :cond_e

    invoke-virtual {v2, v1, v4}, Lgge;->b(Ld9e;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, v2, Lgge;->d:I

    iget v10, v2, Lgge;->e:I

    add-int/2addr v3, v10

    invoke-static {v1, v3}, Lg9e;->e(Ld9e;I)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_6

    :cond_d
    iget-wide v8, v2, Lgge;->b:J

    goto :goto_5

    :cond_e
    :goto_6
    iput-wide v8, v0, Lbge;->f:J

    iput v5, v0, Lbge;->e:I

    iget-wide v0, v0, Lbge;->g:J

    return-wide v0

    :cond_f
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic zze()Lkae;
    .locals 4

    iget-wide v0, p0, Lbge;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lzfe;

    invoke-direct {v0, p0, v1}, Lzfe;-><init>(Lbge;Lage;)V

    return-object v0

    :cond_0
    return-object v1
.end method
