.class public final Lf8j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbnj;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z


# direct methods
.method public constructor <init>(Lbnj;JJJJZZZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p10, 0x0

    const/4 p11, 0x1

    if-eqz p14, :cond_0

    if-eqz p12, :cond_1

    :cond_0
    move v0, p11

    goto :goto_0

    :cond_1
    move v0, p10

    :goto_0
    invoke-static {v0}, Ln7g;->d(Z)V

    if-eqz p13, :cond_3

    if-eqz p12, :cond_2

    goto :goto_1

    :cond_2
    move p11, p10

    :cond_3
    :goto_1
    invoke-static {p11}, Ln7g;->d(Z)V

    iput-object p1, p0, Lf8j;->a:Lbnj;

    iput-wide p2, p0, Lf8j;->b:J

    iput-wide p4, p0, Lf8j;->c:J

    iput-wide p6, p0, Lf8j;->d:J

    iput-wide p8, p0, Lf8j;->e:J

    iput-boolean p10, p0, Lf8j;->f:Z

    iput-boolean p10, p0, Lf8j;->g:Z

    iput-boolean p12, p0, Lf8j;->h:Z

    iput-boolean p13, p0, Lf8j;->i:Z

    iput-boolean p14, p0, Lf8j;->j:Z

    return-void
.end method


# virtual methods
.method public final a(J)Lf8j;
    .locals 18

    move-object/from16 v0, p0

    iget-wide v1, v0, Lf8j;->c:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v4, v0, Lf8j;->a:Lbnj;

    iget-wide v5, v0, Lf8j;->b:J

    iget-wide v9, v0, Lf8j;->d:J

    iget-wide v11, v0, Lf8j;->e:J

    iget-boolean v15, v0, Lf8j;->h:Z

    iget-boolean v1, v0, Lf8j;->i:Z

    iget-boolean v0, v0, Lf8j;->j:Z

    new-instance v2, Lf8j;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, v2

    move-wide/from16 v7, p1

    move/from16 v16, v1

    move/from16 v17, v0

    invoke-direct/range {v3 .. v17}, Lf8j;-><init>(Lbnj;JJJJZZZZZ)V

    return-object v2
.end method

.method public final b(J)Lf8j;
    .locals 18

    move-object/from16 v0, p0

    iget-wide v1, v0, Lf8j;->b:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v4, v0, Lf8j;->a:Lbnj;

    iget-wide v7, v0, Lf8j;->c:J

    iget-wide v9, v0, Lf8j;->d:J

    iget-wide v11, v0, Lf8j;->e:J

    iget-boolean v15, v0, Lf8j;->h:Z

    iget-boolean v1, v0, Lf8j;->i:Z

    iget-boolean v0, v0, Lf8j;->j:Z

    new-instance v2, Lf8j;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, v2

    move-wide/from16 v5, p1

    move/from16 v16, v1

    move/from16 v17, v0

    invoke-direct/range {v3 .. v17}, Lf8j;-><init>(Lbnj;JJJJZZZZZ)V

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lf8j;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lf8j;

    iget-wide v2, p0, Lf8j;->b:J

    iget-wide v4, p1, Lf8j;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lf8j;->c:J

    iget-wide v4, p1, Lf8j;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lf8j;->d:J

    iget-wide v4, p1, Lf8j;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lf8j;->e:J

    iget-wide v4, p1, Lf8j;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lf8j;->h:Z

    iget-boolean v3, p1, Lf8j;->h:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lf8j;->i:Z

    iget-boolean v3, p1, Lf8j;->i:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lf8j;->j:Z

    iget-boolean v3, p1, Lf8j;->j:Z

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lf8j;->a:Lbnj;

    iget-object p1, p1, Lf8j;->a:Lbnj;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 9

    iget-object v0, p0, Lf8j;->a:Lbnj;

    invoke-virtual {v0}, Lbnj;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iget-wide v1, p0, Lf8j;->e:J

    iget-wide v3, p0, Lf8j;->d:J

    iget-wide v5, p0, Lf8j;->c:J

    iget-wide v7, p0, Lf8j;->b:J

    mul-int/lit8 v0, v0, 0x1f

    long-to-int v7, v7

    add-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x1f

    long-to-int v5, v5

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    long-to-int v3, v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x745f

    iget-boolean v1, p0, Lf8j;->h:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lf8j;->i:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lf8j;->j:Z

    add-int/2addr v0, p0

    return v0
.end method
