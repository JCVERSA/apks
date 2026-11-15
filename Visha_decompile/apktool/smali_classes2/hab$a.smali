.class public final Lhab$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre0$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lpoa;

.field public final b:Lqw7;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(ILpoa;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lhab$a;->c:I

    iput-object p2, p0, Lhab$a;->a:Lpoa;

    iput p3, p0, Lhab$a;->d:I

    new-instance p1, Lqw7;

    invoke-direct {p1}, Lqw7;-><init>()V

    iput-object p1, p0, Lhab$a;->b:Lqw7;

    return-void
.end method


# virtual methods
.method public a(Lpk3;J)Lre0$e;
    .locals 6

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v4

    iget v0, p0, Lhab$a;->d:I

    int-to-long v0, v0

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lhab$a;->b:Lqw7;

    invoke-virtual {v1, v0}, Lqw7;->K(I)V

    iget-object v1, p0, Lhab$a;->b:Lqw7;

    invoke-virtual {v1}, Lqw7;->d()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lpk3;->peekFully([BII)V

    iget-object v1, p0, Lhab$a;->b:Lqw7;

    move-object v0, p0

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lhab$a;->b(Lqw7;JJ)Lre0$e;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lqw7;JJ)Lre0$e;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Lqw7;->f()I

    move-result v4

    const-wide/16 v5, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, v5

    move-wide v11, v7

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lqw7;->a()I

    move-result v13

    const/16 v14, 0xbc

    if-lt v13, v14, :cond_5

    invoke-virtual/range {p1 .. p1}, Lqw7;->d()[B

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lqw7;->e()I

    move-result v14

    invoke-static {v13, v14, v4}, Loab;->a([BII)I

    move-result v13

    add-int/lit16 v14, v13, 0xbc

    if-le v14, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v5, v0, Lhab$a;->c:I

    invoke-static {v1, v13, v5}, Loab;->c(Lqw7;II)J

    move-result-wide v5

    cmp-long v15, v5, v7

    if-eqz v15, :cond_4

    iget-object v15, v0, Lhab$a;->a:Lpoa;

    invoke-virtual {v15, v5, v6}, Lpoa;->b(J)J

    move-result-wide v5

    cmp-long v15, v5, p2

    if-lez v15, :cond_2

    cmp-long v0, v11, v7

    if-nez v0, :cond_1

    invoke-static {v5, v6, v2, v3}, Lre0$e;->d(JJ)Lre0$e;

    move-result-object v0

    return-object v0

    :cond_1
    add-long v0, v2, v9

    invoke-static {v0, v1}, Lre0$e;->e(J)Lre0$e;

    move-result-object v0

    return-object v0

    :cond_2
    const-wide/32 v9, 0x186a0

    add-long/2addr v9, v5

    cmp-long v9, v9, p2

    if-lez v9, :cond_3

    int-to-long v0, v13

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lre0$e;->e(J)Lre0$e;

    move-result-object v0

    return-object v0

    :cond_3
    int-to-long v9, v13

    move-wide v11, v5

    :cond_4
    invoke-virtual {v1, v14}, Lqw7;->O(I)V

    int-to-long v5, v14

    goto :goto_0

    :cond_5
    :goto_1
    cmp-long v0, v11, v7

    if-eqz v0, :cond_6

    add-long v0, v2, v5

    invoke-static {v11, v12, v0, v1}, Lre0$e;->f(JJ)Lre0$e;

    move-result-object v0

    return-object v0

    :cond_6
    sget-object v0, Lre0$e;->d:Lre0$e;

    return-object v0
.end method

.method public onSeekFinished()V
    .locals 1

    iget-object p0, p0, Lhab$a;->b:Lqw7;

    sget-object v0, Lblb;->f:[B

    invoke-virtual {p0, v0}, Lqw7;->L([B)V

    return-void
.end method
