.class public final Lsbe;
.super Li8e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ln9e;IJJ)V
    .locals 16

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lpbe;

    invoke-direct {v1, v0}, Lpbe;-><init>(Ln9e;)V

    new-instance v2, Lqbe;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lqbe;-><init>(Ln9e;ILrbe;)V

    invoke-virtual/range {p1 .. p1}, Ln9e;->a()J

    move-result-wide v3

    iget-wide v7, v0, Ln9e;->j:J

    iget v5, v0, Ln9e;->d:I

    if-lez v5, :cond_0

    iget v6, v0, Ln9e;->c:I

    int-to-long v9, v6

    int-to-long v5, v5

    add-long/2addr v5, v9

    const-wide/16 v9, 0x2

    div-long/2addr v5, v9

    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    move-wide v13, v5

    goto :goto_0

    :cond_0
    iget v5, v0, Ln9e;->a:I

    iget v6, v0, Ln9e;->b:I

    const-wide/16 v9, 0x1000

    if-ne v5, v6, :cond_1

    if-lez v5, :cond_1

    int-to-long v9, v5

    :cond_1
    iget v5, v0, Ln9e;->g:I

    int-to-long v5, v5

    iget v11, v0, Ln9e;->h:I

    int-to-long v11, v11

    mul-long/2addr v9, v5

    mul-long/2addr v9, v11

    const-wide/16 v5, 0x8

    div-long/2addr v9, v5

    const-wide/16 v5, 0x40

    add-long/2addr v9, v5

    move-wide v13, v9

    :goto_0
    const/4 v5, 0x6

    iget v0, v0, Ln9e;->c:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-direct/range {v0 .. v15}, Li8e;-><init>(Lf8e;Lh8e;JJJJJJI)V

    return-void
.end method
