.class public final Ln9e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:J

.field public final k:Lm9e;

.field public final l:Lhre;


# direct methods
.method public constructor <init>(IIIIIIIJLm9e;Lhre;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln9e;->a:I

    iput p2, p0, Ln9e;->b:I

    iput p3, p0, Ln9e;->c:I

    iput p4, p0, Ln9e;->d:I

    iput p5, p0, Ln9e;->e:I

    invoke-static {p5}, Ln9e;->i(I)I

    move-result p1

    iput p1, p0, Ln9e;->f:I

    iput p6, p0, Ln9e;->g:I

    iput p7, p0, Ln9e;->h:I

    invoke-static {p7}, Ln9e;->h(I)I

    move-result p1

    iput p1, p0, Ln9e;->i:I

    iput-wide p8, p0, Ln9e;->j:J

    iput-object p10, p0, Ln9e;->k:Lm9e;

    iput-object p11, p0, Ln9e;->l:Lhre;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lp3h;

    array-length v1, p1

    invoke-direct {v0, p1, v1}, Lp3h;-><init>([BI)V

    mul-int/lit8 p2, p2, 0x8

    .line 3
    invoke-virtual {v0, p2}, Lp3h;->l(I)V

    const/16 p1, 0x10

    .line 4
    invoke-virtual {v0, p1}, Lp3h;->d(I)I

    move-result p2

    iput p2, p0, Ln9e;->a:I

    .line 5
    invoke-virtual {v0, p1}, Lp3h;->d(I)I

    move-result p1

    iput p1, p0, Ln9e;->b:I

    const/16 p1, 0x18

    .line 6
    invoke-virtual {v0, p1}, Lp3h;->d(I)I

    move-result p2

    iput p2, p0, Ln9e;->c:I

    .line 7
    invoke-virtual {v0, p1}, Lp3h;->d(I)I

    move-result p1

    iput p1, p0, Ln9e;->d:I

    const/16 p1, 0x14

    .line 8
    invoke-virtual {v0, p1}, Lp3h;->d(I)I

    move-result p1

    iput p1, p0, Ln9e;->e:I

    invoke-static {p1}, Ln9e;->i(I)I

    move-result p1

    iput p1, p0, Ln9e;->f:I

    const/4 p1, 0x3

    .line 9
    invoke-virtual {v0, p1}, Lp3h;->d(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ln9e;->g:I

    const/4 p1, 0x5

    .line 10
    invoke-virtual {v0, p1}, Lp3h;->d(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ln9e;->h:I

    invoke-static {p1}, Ln9e;->h(I)I

    move-result p1

    iput p1, p0, Ln9e;->i:I

    const/16 p1, 0x24

    .line 11
    invoke-virtual {v0, p1}, Lp3h;->e(I)J

    move-result-wide p1

    iput-wide p1, p0, Ln9e;->j:J

    const/4 p1, 0x0

    iput-object p1, p0, Ln9e;->k:Lm9e;

    iput-object p1, p0, Ln9e;->l:Lhre;

    return-void
.end method

.method public static h(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_5

    const/16 v0, 0xc

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x14

    if-eq p0, v0, :cond_2

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static i(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-wide v0, p0, Ln9e;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget p0, p0, Ln9e;->e:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final b(J)J
    .locals 4

    sget v0, Lkfh;->a:I

    iget v0, p0, Ln9e;->e:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    iget-wide v0, p0, Ln9e;->j:J

    const-wide/32 v2, 0xf4240

    div-long/2addr p1, v2

    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final c([BLhre;)Lerj;
    .locals 2

    const/4 v0, 0x4

    const/16 v1, -0x80

    aput-byte v1, p1, v0

    invoke-virtual {p0, p2}, Ln9e;->d(Lhre;)Lhre;

    move-result-object p2

    new-instance v0, Lgpj;

    invoke-direct {v0}, Lgpj;-><init>()V

    const-string v1, "audio/flac"

    invoke-virtual {v0, v1}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    iget v1, p0, Ln9e;->d:I

    if-gtz v1, :cond_0

    const/4 v1, -0x1

    :cond_0
    invoke-virtual {v0, v1}, Lgpj;->t(I)Lgpj;

    iget v1, p0, Ln9e;->g:I

    invoke-virtual {v0, v1}, Lgpj;->b(I)Lgpj;

    iget v1, p0, Ln9e;->e:I

    invoke-virtual {v0, v1}, Lgpj;->F(I)Lgpj;

    iget p0, p0, Ln9e;->h:I

    invoke-static {p0}, Lkfh;->I(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lgpj;->x(I)Lgpj;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {v0, p2}, Lgpj;->w(Lhre;)Lgpj;

    invoke-virtual {v0}, Lgpj;->K()Lerj;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lhre;)Lhre;
    .locals 0

    iget-object p0, p0, Ln9e;->l:Lhre;

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lhre;->d(Lhre;)Lhre;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/util/List;)Ln9e;
    .locals 13

    new-instance v0, Lhre;

    invoke-direct {v0, p1}, Lhre;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Ln9e;->d(Lhre;)Lhre;

    move-result-object v12

    new-instance p1, Ln9e;

    iget v2, p0, Ln9e;->a:I

    iget v3, p0, Ln9e;->b:I

    iget v4, p0, Ln9e;->c:I

    iget v5, p0, Ln9e;->d:I

    iget v6, p0, Ln9e;->e:I

    iget v7, p0, Ln9e;->g:I

    iget v8, p0, Ln9e;->h:I

    iget-wide v9, p0, Ln9e;->j:J

    iget-object v11, p0, Ln9e;->k:Lm9e;

    move-object v1, p1

    invoke-direct/range {v1 .. v12}, Ln9e;-><init>(IIIIIIIJLm9e;Lhre;)V

    return-object p1
.end method

.method public final f(Lm9e;)Ln9e;
    .locals 13

    iget-object v11, p0, Ln9e;->l:Lhre;

    new-instance v12, Ln9e;

    iget v1, p0, Ln9e;->a:I

    iget v2, p0, Ln9e;->b:I

    iget v3, p0, Ln9e;->c:I

    iget v4, p0, Ln9e;->d:I

    iget v5, p0, Ln9e;->e:I

    iget v6, p0, Ln9e;->g:I

    iget v7, p0, Ln9e;->h:I

    iget-wide v8, p0, Ln9e;->j:J

    move-object v0, v12

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Ln9e;-><init>(IIIIIIIJLm9e;Lhre;)V

    return-object v12
.end method

.method public final g(Ljava/util/List;)Ln9e;
    .locals 12

    invoke-static {p1}, Lxae;->b(Ljava/util/List;)Lhre;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln9e;->d(Lhre;)Lhre;

    move-result-object v11

    new-instance p1, Ln9e;

    iget v1, p0, Ln9e;->a:I

    iget v2, p0, Ln9e;->b:I

    iget v3, p0, Ln9e;->c:I

    iget v4, p0, Ln9e;->d:I

    iget v5, p0, Ln9e;->e:I

    iget v6, p0, Ln9e;->g:I

    iget v7, p0, Ln9e;->h:I

    iget-wide v8, p0, Ln9e;->j:J

    iget-object v10, p0, Ln9e;->k:Lm9e;

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Ln9e;-><init>(IIIIIIIJLm9e;Lhre;)V

    return-object p1
.end method
