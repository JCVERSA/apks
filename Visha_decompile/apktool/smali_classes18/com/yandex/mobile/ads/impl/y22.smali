.class abstract Lcom/yandex/mobile/ads/impl/y22;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/y22$a;,
        Lcom/yandex/mobile/ads/impl/y22$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/be1;

.field private b:Lcom/yandex/mobile/ads/impl/a62;

.field private c:Lcom/yandex/mobile/ads/impl/b80;

.field private d:Lcom/yandex/mobile/ads/impl/de1;

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:Lcom/yandex/mobile/ads/impl/y22$a;

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/be1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/be1;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/y22;->a:Lcom/yandex/mobile/ads/impl/be1;

    new-instance v0, Lcom/yandex/mobile/ads/impl/y22$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/y22$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/y22;->j:Lcom/yandex/mobile/ads/impl/y22$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/wz;Lcom/yandex/mobile/ads/impl/pj1;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 5
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/y22;->b:Lcom/yandex/mobile/ads/impl/a62;

    if-eqz v1, :cond_11

    .line 6
    sget v1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 7
    iget v1, v11, Lcom/yandex/mobile/ads/impl/y22;->h:I

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_a

    if-eq v1, v6, :cond_9

    if-eq v1, v12, :cond_1

    if-ne v1, v5, :cond_0

    return v4

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 9
    :cond_1
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/y22;->d:Lcom/yandex/mobile/ads/impl/de1;

    .line 10
    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/impl/de1;->a(Lcom/yandex/mobile/ads/impl/wz;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-ltz v1, :cond_2

    move-object/from16 v1, p2

    .line 11
    iput-wide v7, v1, Lcom/yandex/mobile/ads/impl/pj1;->a:J

    move v4, v6

    goto/16 :goto_2

    :cond_2
    cmp-long v1, v7, v2

    if-gez v1, :cond_3

    const-wide/16 v14, 0x2

    add-long/2addr v7, v14

    neg-long v7, v7

    .line 12
    invoke-virtual {v11, v7, v8}, Lcom/yandex/mobile/ads/impl/y22;->c(J)V

    .line 13
    :cond_3
    iget-boolean v1, v11, Lcom/yandex/mobile/ads/impl/y22;->l:Z

    if-nez v1, :cond_5

    .line 14
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/y22;->d:Lcom/yandex/mobile/ads/impl/de1;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/de1;->a()Lcom/yandex/mobile/ads/impl/ex1;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v7, v11, Lcom/yandex/mobile/ads/impl/y22;->c:Lcom/yandex/mobile/ads/impl/b80;

    invoke-interface {v7, v1}, Lcom/yandex/mobile/ads/impl/b80;->a(Lcom/yandex/mobile/ads/impl/ex1;)V

    .line 16
    iput-boolean v6, v11, Lcom/yandex/mobile/ads/impl/y22;->l:Z

    goto :goto_0

    .line 17
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 18
    :cond_5
    :goto_0
    iget-wide v6, v11, Lcom/yandex/mobile/ads/impl/y22;->k:J

    cmp-long v1, v6, v9

    if-gtz v1, :cond_7

    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/y22;->a:Lcom/yandex/mobile/ads/impl/be1;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/be1;->a(Lcom/yandex/mobile/ads/impl/wz;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 19
    :cond_6
    iput v5, v11, Lcom/yandex/mobile/ads/impl/y22;->h:I

    goto :goto_2

    .line 20
    :cond_7
    :goto_1
    iput-wide v9, v11, Lcom/yandex/mobile/ads/impl/y22;->k:J

    .line 21
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/y22;->a:Lcom/yandex/mobile/ads/impl/be1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/be1;->b()Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v0

    .line 22
    invoke-virtual {v11, v0}, Lcom/yandex/mobile/ads/impl/y22;->a(Lcom/yandex/mobile/ads/impl/ag1;)J

    move-result-wide v4

    cmp-long v1, v4, v9

    if-ltz v1, :cond_8

    .line 23
    iget-wide v6, v11, Lcom/yandex/mobile/ads/impl/y22;->g:J

    add-long v8, v6, v4

    iget-wide v14, v11, Lcom/yandex/mobile/ads/impl/y22;->e:J

    cmp-long v1, v8, v14

    if-ltz v1, :cond_8

    .line 24
    invoke-virtual {v11, v6, v7}, Lcom/yandex/mobile/ads/impl/y22;->a(J)J

    move-result-wide v15

    .line 25
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/y22;->b:Lcom/yandex/mobile/ads/impl/a62;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->e()I

    move-result v6

    invoke-interface {v1, v6, v0}, Lcom/yandex/mobile/ads/impl/a62;->a(ILcom/yandex/mobile/ads/impl/ag1;)V

    .line 26
    iget-object v14, v11, Lcom/yandex/mobile/ads/impl/y22;->b:Lcom/yandex/mobile/ads/impl/a62;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->e()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x1

    invoke-interface/range {v14 .. v20}, Lcom/yandex/mobile/ads/impl/a62;->a(JIIILcom/yandex/mobile/ads/impl/a62$a;)V

    .line 27
    iput-wide v2, v11, Lcom/yandex/mobile/ads/impl/y22;->e:J

    .line 28
    :cond_8
    iget-wide v0, v11, Lcom/yandex/mobile/ads/impl/y22;->g:J

    add-long/2addr v0, v4

    iput-wide v0, v11, Lcom/yandex/mobile/ads/impl/y22;->g:J

    move v4, v13

    :goto_2
    return v4

    .line 29
    :cond_9
    iget-wide v1, v11, Lcom/yandex/mobile/ads/impl/y22;->f:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    .line 30
    iput v12, v11, Lcom/yandex/mobile/ads/impl/y22;->h:I

    return v13

    .line 31
    :cond_a
    :goto_3
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/y22;->a:Lcom/yandex/mobile/ads/impl/be1;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/be1;->a(Lcom/yandex/mobile/ads/impl/wz;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 32
    iput v5, v11, Lcom/yandex/mobile/ads/impl/y22;->h:I

    goto/16 :goto_6

    .line 33
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v7

    iget-wide v9, v11, Lcom/yandex/mobile/ads/impl/y22;->f:J

    sub-long/2addr v7, v9

    iput-wide v7, v11, Lcom/yandex/mobile/ads/impl/y22;->k:J

    .line 34
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/y22;->a:Lcom/yandex/mobile/ads/impl/be1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/be1;->b()Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v1

    iget-wide v7, v11, Lcom/yandex/mobile/ads/impl/y22;->f:J

    iget-object v9, v11, Lcom/yandex/mobile/ads/impl/y22;->j:Lcom/yandex/mobile/ads/impl/y22$a;

    invoke-virtual {v11, v1, v7, v8, v9}, Lcom/yandex/mobile/ads/impl/y22;->a(Lcom/yandex/mobile/ads/impl/ag1;JLcom/yandex/mobile/ads/impl/y22$a;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/wz;->a()J

    move-result-wide v7

    iput-wide v7, v11, Lcom/yandex/mobile/ads/impl/y22;->f:J

    goto :goto_3

    .line 36
    :cond_c
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/y22;->j:Lcom/yandex/mobile/ads/impl/y22$a;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/y22$a;->a:Lcom/yandex/mobile/ads/impl/jc0;

    iget v4, v1, Lcom/yandex/mobile/ads/impl/jc0;->A:I

    iput v4, v11, Lcom/yandex/mobile/ads/impl/y22;->i:I

    .line 37
    iget-boolean v4, v11, Lcom/yandex/mobile/ads/impl/y22;->m:Z

    if-nez v4, :cond_d

    .line 38
    iget-object v4, v11, Lcom/yandex/mobile/ads/impl/y22;->b:Lcom/yandex/mobile/ads/impl/a62;

    invoke-interface {v4, v1}, Lcom/yandex/mobile/ads/impl/a62;->a(Lcom/yandex/mobile/ads/impl/jc0;)V

    .line 39
    iput-boolean v6, v11, Lcom/yandex/mobile/ads/impl/y22;->m:Z

    .line 40
    :cond_d
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/y22;->j:Lcom/yandex/mobile/ads/impl/y22$a;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/y22$a;->b:Lcom/yandex/mobile/ads/impl/yb0$a;

    if-eqz v1, :cond_e

    .line 41
    iput-object v1, v11, Lcom/yandex/mobile/ads/impl/y22;->d:Lcom/yandex/mobile/ads/impl/de1;

    goto :goto_5

    .line 42
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/wz;->b()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_f

    .line 43
    new-instance v0, Lcom/yandex/mobile/ads/impl/y22$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/y22$b;-><init>(Lyxd;)V

    iput-object v0, v11, Lcom/yandex/mobile/ads/impl/y22;->d:Lcom/yandex/mobile/ads/impl/de1;

    goto :goto_5

    .line 44
    :cond_f
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/y22;->a:Lcom/yandex/mobile/ads/impl/be1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/be1;->a()Lcom/yandex/mobile/ads/impl/ce1;

    move-result-object v1

    .line 45
    iget v2, v1, Lcom/yandex/mobile/ads/impl/ce1;->a:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_10

    move v10, v6

    goto :goto_4

    :cond_10
    move v10, v13

    .line 46
    :goto_4
    new-instance v14, Lcom/yandex/mobile/ads/impl/j00;

    iget-wide v2, v11, Lcom/yandex/mobile/ads/impl/y22;->f:J

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/wz;->b()J

    move-result-wide v4

    iget v0, v1, Lcom/yandex/mobile/ads/impl/ce1;->d:I

    iget v6, v1, Lcom/yandex/mobile/ads/impl/ce1;->e:I

    add-int/2addr v0, v6

    int-to-long v6, v0

    iget-wide v8, v1, Lcom/yandex/mobile/ads/impl/ce1;->b:J

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/j00;-><init>(Lcom/yandex/mobile/ads/impl/y22;JJJJZ)V

    iput-object v14, v11, Lcom/yandex/mobile/ads/impl/y22;->d:Lcom/yandex/mobile/ads/impl/de1;

    .line 48
    :goto_5
    iput v12, v11, Lcom/yandex/mobile/ads/impl/y22;->h:I

    .line 49
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/y22;->a:Lcom/yandex/mobile/ads/impl/be1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/be1;->d()V

    move v4, v13

    :goto_6
    return v4

    .line 50
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 1
    iget p0, p0, Lcom/yandex/mobile/ads/impl/y22;->i:I

    int-to-long v0, p0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public abstract a(Lcom/yandex/mobile/ads/impl/ag1;)J
.end method

.method public final a(JJ)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/y22;->a:Lcom/yandex/mobile/ads/impl/be1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/be1;->c()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 58
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/y22;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/y22;->a(Z)V

    goto :goto_0

    .line 59
    :cond_0
    iget p1, p0, Lcom/yandex/mobile/ads/impl/y22;->h:I

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0, p3, p4}, Lcom/yandex/mobile/ads/impl/y22;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/y22;->e:J

    .line 61
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/y22;->d:Lcom/yandex/mobile/ads/impl/de1;

    sget p4, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 62
    invoke-interface {p3, p1, p2}, Lcom/yandex/mobile/ads/impl/de1;->a(J)V

    const/4 p1, 0x2

    .line 63
    iput p1, p0, Lcom/yandex/mobile/ads/impl/y22;->h:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/b80;Lcom/yandex/mobile/ads/impl/a62;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y22;->c:Lcom/yandex/mobile/ads/impl/b80;

    .line 3
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/y22;->b:Lcom/yandex/mobile/ads/impl/a62;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/y22;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 51
    new-instance p1, Lcom/yandex/mobile/ads/impl/y22$a;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/y22$a;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y22;->j:Lcom/yandex/mobile/ads/impl/y22$a;

    .line 52
    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/y22;->f:J

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/yandex/mobile/ads/impl/y22;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 54
    iput p1, p0, Lcom/yandex/mobile/ads/impl/y22;->h:I

    :goto_0
    const-wide/16 v2, -0x1

    .line 55
    iput-wide v2, p0, Lcom/yandex/mobile/ads/impl/y22;->e:J

    .line 56
    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/y22;->g:J

    return-void
.end method

.method public abstract a(Lcom/yandex/mobile/ads/impl/ag1;JLcom/yandex/mobile/ads/impl/y22$a;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b(J)J
    .locals 2

    iget p0, p0, Lcom/yandex/mobile/ads/impl/y22;->i:I

    int-to-long v0, p0

    mul-long/2addr v0, p1

    const-wide/32 p0, 0xf4240

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/y22;->g:J

    return-void
.end method
