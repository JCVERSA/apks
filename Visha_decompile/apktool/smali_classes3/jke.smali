.class public final Ljke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh8e;


# instance fields
.field public final a:Lfch;

.field public final b:Lu4h;


# direct methods
.method public synthetic constructor <init>(Lfch;Lkke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljke;->a:Lfch;

    new-instance p1, Lu4h;

    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Ljke;->b:Lu4h;

    return-void
.end method


# virtual methods
.method public final a(Ld9e;J)Lg8e;
    .locals 16

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v1

    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x4e20

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, v0, Ljke;->b:Lu4h;

    invoke-virtual {v4, v3}, Lu4h;->i(I)V

    invoke-virtual {v4}, Lu4h;->n()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-interface {v7, v5, v6, v3}, Ld9e;->i([BII)V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    move v7, v3

    move-wide v8, v5

    :goto_0
    invoke-virtual {v4}, Lu4h;->u()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_c

    invoke-virtual {v4}, Lu4h;->n()[B

    move-result-object v10

    invoke-virtual {v4}, Lu4h;->w()I

    move-result v12

    invoke-static {v10, v12}, Llke;->h([BI)I

    move-result v10

    const/4 v12, 0x1

    const/16 v13, 0x1ba

    if-eq v10, v13, :cond_0

    invoke-virtual {v4, v12}, Lu4h;->m(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v11}, Lu4h;->m(I)V

    invoke-static {v4}, Lmke;->c(Lu4h;)J

    move-result-wide v14

    cmp-long v3, v14, v5

    if-eqz v3, :cond_4

    iget-object v3, v0, Ljke;->a:Lfch;

    invoke-virtual {v3, v14, v15}, Lfch;->b(J)J

    move-result-wide v14

    cmp-long v3, v14, p2

    if-lez v3, :cond_2

    cmp-long v0, v8, v5

    if-nez v0, :cond_1

    invoke-static {v14, v15, v1, v2}, Lg8e;->d(JJ)Lg8e;

    move-result-object v0

    goto/16 :goto_4

    :cond_1
    int-to-long v3, v7

    :goto_1
    add-long/2addr v1, v3

    invoke-static {v1, v2}, Lg8e;->e(J)Lg8e;

    move-result-object v0

    goto/16 :goto_4

    :cond_2
    const-wide/32 v7, 0x186a0

    add-long/2addr v7, v14

    cmp-long v3, v7, p2

    if-lez v3, :cond_3

    invoke-virtual {v4}, Lu4h;->w()I

    move-result v0

    int-to-long v3, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lu4h;->w()I

    move-result v3

    move v7, v3

    move-wide v8, v14

    :cond_4
    invoke-virtual {v4}, Lu4h;->x()I

    move-result v3

    invoke-virtual {v4}, Lu4h;->u()I

    move-result v10

    const/16 v14, 0xa

    if-ge v10, v14, :cond_5

    invoke-virtual {v4, v3}, Lu4h;->l(I)V

    goto/16 :goto_3

    :cond_5
    const/16 v10, 0x9

    invoke-virtual {v4, v10}, Lu4h;->m(I)V

    invoke-virtual {v4}, Lu4h;->G()I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    invoke-virtual {v4}, Lu4h;->u()I

    move-result v14

    if-ge v14, v10, :cond_6

    invoke-virtual {v4, v3}, Lu4h;->l(I)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v4, v10}, Lu4h;->m(I)V

    invoke-virtual {v4}, Lu4h;->u()I

    move-result v10

    if-ge v10, v11, :cond_7

    invoke-virtual {v4, v3}, Lu4h;->l(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Lu4h;->n()[B

    move-result-object v10

    invoke-virtual {v4}, Lu4h;->w()I

    move-result v14

    invoke-static {v10, v14}, Llke;->h([BI)I

    move-result v10

    const/16 v14, 0x1bb

    if-eq v10, v14, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v4, v11}, Lu4h;->m(I)V

    invoke-virtual {v4}, Lu4h;->K()I

    move-result v10

    invoke-virtual {v4}, Lu4h;->u()I

    move-result v14

    if-ge v14, v10, :cond_9

    invoke-virtual {v4, v3}, Lu4h;->l(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {v4, v10}, Lu4h;->m(I)V

    :goto_2
    invoke-virtual {v4}, Lu4h;->u()I

    move-result v10

    if-lt v10, v11, :cond_b

    invoke-virtual {v4}, Lu4h;->n()[B

    move-result-object v10

    invoke-virtual {v4}, Lu4h;->w()I

    move-result v14

    invoke-static {v10, v14}, Llke;->h([BI)I

    move-result v10

    if-eq v10, v13, :cond_b

    const/16 v14, 0x1b9

    if-eq v10, v14, :cond_b

    ushr-int/lit8 v10, v10, 0x8

    if-ne v10, v12, :cond_b

    invoke-virtual {v4, v11}, Lu4h;->m(I)V

    invoke-virtual {v4}, Lu4h;->u()I

    move-result v10

    const/4 v14, 0x2

    if-ge v10, v14, :cond_a

    invoke-virtual {v4, v3}, Lu4h;->l(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {v4}, Lu4h;->K()I

    move-result v10

    invoke-virtual {v4}, Lu4h;->x()I

    move-result v14

    invoke-virtual {v4}, Lu4h;->w()I

    move-result v15

    add-int/2addr v15, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v4, v10}, Lu4h;->l(I)V

    goto :goto_2

    :cond_b
    :goto_3
    invoke-virtual {v4}, Lu4h;->w()I

    move-result v3

    goto/16 :goto_0

    :cond_c
    cmp-long v0, v8, v5

    if-eqz v0, :cond_d

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {v8, v9, v1, v2}, Lg8e;->f(JJ)Lg8e;

    move-result-object v0

    goto :goto_4

    :cond_d
    sget-object v0, Lg8e;->d:Lg8e;

    :goto_4
    return-object v0
.end method

.method public final zzb()V
    .locals 2

    sget-object v0, Lkfh;->c:[B

    array-length v1, v0

    iget-object p0, p0, Ljke;->b:Lu4h;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lu4h;->j([BI)V

    return-void
.end method
