.class final Ld3/a;
.super Lk2/i;
.source "source.java"

# interfaces
.implements Ld3/g;


# instance fields
.field private final h:J

.field private final i:I

.field private final j:I

.field private final k:Z

.field private final l:J


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lk2/i;-><init>(JJIIZ)V

    .line 3
    iput-wide p3, p0, Ld3/a;->h:J

    .line 4
    iput p5, p0, Ld3/a;->i:I

    .line 5
    iput p6, p0, Ld3/a;->j:I

    .line 6
    iput-boolean p7, p0, Ld3/a;->k:Z

    const-wide/16 p3, -0x1

    cmp-long p5, p1, p3

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, p3

    .line 7
    :goto_0
    iput-wide p1, p0, Ld3/a;->l:J

    return-void
.end method

.method public constructor <init>(JJLk2/i0$a;Z)V
    .locals 8

    .line 1
    iget v5, p5, Lk2/i0$a;->f:I

    iget v6, p5, Lk2/i0$a;->c:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v7, p6

    invoke-direct/range {v0 .. v7}, Ld3/a;-><init>(JJIIZ)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ld3/a;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public e(J)Ld3/a;
    .locals 9

    .line 1
    new-instance v8, Ld3/a;

    .line 2
    .line 3
    iget-wide v3, p0, Ld3/a;->h:J

    .line 4
    .line 5
    iget v5, p0, Ld3/a;->i:I

    .line 6
    .line 7
    iget v6, p0, Ld3/a;->j:I

    .line 8
    .line 9
    iget-boolean v7, p0, Ld3/a;->k:Z

    .line 10
    .line 11
    move-object v0, v8

    .line 12
    move-wide v1, p1

    .line 13
    invoke-direct/range {v0 .. v7}, Ld3/a;-><init>(JJIIZ)V

    .line 14
    .line 15
    .line 16
    return-object v8
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Ld3/a;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimeUs(J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk2/i;->c(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method
