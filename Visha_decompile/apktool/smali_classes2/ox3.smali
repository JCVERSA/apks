.class public final Lox3;
.super Lre0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lox3$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Lwx3;IJJ)V
    .locals 16

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lmx3;

    invoke-direct {v1, v0}, Lmx3;-><init>(Lwx3;)V

    new-instance v2, Lox3$b;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lox3$b;-><init>(Lwx3;ILox3$a;)V

    invoke-virtual/range {p1 .. p1}, Lwx3;->f()J

    move-result-wide v3

    iget-wide v7, v0, Lwx3;->j:J

    invoke-virtual/range {p1 .. p1}, Lwx3;->d()J

    move-result-wide v13

    const/4 v5, 0x6

    iget v0, v0, Lwx3;->c:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-direct/range {v0 .. v15}, Lre0;-><init>(Lre0$d;Lre0$f;JJJJJJI)V

    return-void
.end method
