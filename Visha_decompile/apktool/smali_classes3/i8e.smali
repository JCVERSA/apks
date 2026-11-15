.class public abstract Li8e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc8e;

.field public final b:Lh8e;

.field public c:Le8e;

.field public final d:I


# direct methods
.method public constructor <init>(Lf8e;Lh8e;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Li8e;->b:Lh8e;

    move/from16 v1, p15

    iput v1, v0, Li8e;->d:I

    new-instance v15, Lc8e;

    const-wide/16 v5, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lc8e;-><init>(Lf8e;JJJJJJ)V

    iput-object v15, v0, Li8e;->a:Lc8e;

    return-void
.end method

.method public static final f(Ld9e;JLy9e;)I
    .locals 2

    invoke-interface {p0}, Ld9e;->zzf()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p3, Ly9e;->a:J

    const/4 p0, 0x1

    return p0
.end method

.method public static final g(Ld9e;J)Z
    .locals 2

    invoke-interface {p0}, Ld9e;->zzf()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int p1, p1

    invoke-interface {p0, p1}, Ld9e;->f(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ld9e;Ly9e;)I
    .locals 9

    :goto_0
    iget-object v0, p0, Li8e;->c:Le8e;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Le8e;->b(Le8e;)J

    move-result-wide v1

    invoke-static {v0}, Le8e;->a(Le8e;)J

    move-result-wide v3

    invoke-static {v0}, Le8e;->c(Le8e;)J

    move-result-wide v5

    sub-long/2addr v3, v1

    iget v7, p0, Li8e;->d:I

    int-to-long v7, v7

    cmp-long v3, v3, v7

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    invoke-virtual {p0, v4, v1, v2}, Li8e;->c(ZJ)V

    invoke-static {p1, v1, v2, p2}, Li8e;->f(Ld9e;JLy9e;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p1, v5, v6}, Li8e;->g(Ld9e;J)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1, v5, v6, p2}, Li8e;->f(Ld9e;JLy9e;)I

    move-result p0

    return p0

    :cond_1
    invoke-interface {p1}, Ld9e;->zzj()V

    iget-object v1, p0, Li8e;->b:Lh8e;

    invoke-static {v0}, Le8e;->e(Le8e;)J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lh8e;->a(Ld9e;J)Lg8e;

    move-result-object v1

    invoke-static {v1}, Lg8e;->a(Lg8e;)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_4

    const/4 v3, -0x2

    if-eq v2, v3, :cond_3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-static {v1}, Lg8e;->b(Lg8e;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Li8e;->g(Ld9e;J)Z

    const/4 v0, 0x1

    invoke-static {v1}, Lg8e;->b(Lg8e;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Li8e;->c(ZJ)V

    invoke-static {v1}, Lg8e;->b(Lg8e;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Li8e;->f(Ld9e;JLy9e;)I

    move-result p0

    return p0

    :cond_2
    invoke-static {v1}, Lg8e;->c(Lg8e;)J

    move-result-wide v2

    invoke-static {v1}, Lg8e;->b(Lg8e;)J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Le8e;->g(Le8e;JJ)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lg8e;->c(Lg8e;)J

    move-result-wide v2

    invoke-static {v1}, Lg8e;->b(Lg8e;)J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Le8e;->h(Le8e;JJ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4, v5, v6}, Li8e;->c(ZJ)V

    invoke-static {p1, v5, v6, p2}, Li8e;->f(Ld9e;JLy9e;)I

    move-result p0

    return p0
.end method

.method public final b()Lkae;
    .locals 0

    iget-object p0, p0, Li8e;->a:Lc8e;

    return-object p0
.end method

.method public final c(ZJ)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Li8e;->c:Le8e;

    iget-object p0, p0, Li8e;->b:Lh8e;

    invoke-interface {p0}, Lh8e;->zzb()V

    return-void
.end method

.method public final d(J)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    iget-object v1, v0, Li8e;->c:Le8e;

    if-eqz v1, :cond_0

    invoke-static {v1}, Le8e;->d(Le8e;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Li8e;->a:Lc8e;

    new-instance v14, Le8e;

    invoke-virtual {v1, v2, v3}, Lc8e;->g(J)J

    move-result-wide v4

    invoke-static {v1}, Lc8e;->e(Lc8e;)J

    move-result-wide v8

    invoke-static {v1}, Lc8e;->f(Lc8e;)J

    move-result-wide v10

    invoke-static {v1}, Lc8e;->d(Lc8e;)J

    move-result-wide v12

    invoke-static {v1}, Lc8e;->b(Lc8e;)J

    move-result-wide v15

    const-wide/16 v6, 0x0

    move-object v1, v14

    move-wide/from16 v2, p1

    move-object/from16 v17, v14

    move-wide v14, v15

    invoke-direct/range {v1 .. v15}, Le8e;-><init>(JJJJJJJ)V

    move-object/from16 v1, v17

    iput-object v1, v0, Li8e;->c:Le8e;

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Li8e;->c:Le8e;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
