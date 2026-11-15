.class public Lcom/mgmi/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/mgmi/a/a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/mgmi/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/a/b;->b:I

    iput-object p1, p0, Lcom/mgmi/a/b;->a:Lcom/mgmi/a/a;

    return-void
.end method

.method public static a(Lcom/mgmi/model/VASTAd;Lcom/mgmi/platform/view/a;J)I
    .locals 0

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getDaoTime()I

    move-result p0

    .line 7
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->t()F

    move-result p1

    long-to-float p2, p2

    sub-float/2addr p1, p2

    if-lez p0, :cond_0

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    int-to-float p2, p0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    float-to-int p0, p1

    :cond_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private a(I)Z
    .locals 2

    .line 10
    iget-object p0, p0, Lcom/mgmi/a/b;->a:Lcom/mgmi/a/a;

    instance-of v0, p0, Lcom/mgmi/ads/api/e/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {p0}, Lcom/mgmi/a/a;->b()Lcom/mgmi/ads/api/e/b;

    move-result-object p0

    check-cast p0, Lcom/mgmi/ads/api/e/a/a;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/e/a/a;->w()I

    move-result p0

    mul-int/lit8 p0, p0, 0x64

    div-int/lit16 p0, p0, 0x3e8

    if-ge p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private a(JLcom/mgmi/platform/view/a;)Z
    .locals 1

    const/16 v0, 0xf

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mgmi/a/b;->a(JLcom/mgmi/platform/view/a;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1388

    invoke-virtual {p3, p0}, Lcom/mgmi/platform/view/a;->h(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(JLcom/mgmi/platform/view/a;I)Z
    .locals 1

    .line 9
    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->x()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mgmi/a/b;->a(I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->q()Z

    move-result p0

    if-nez p0, :cond_0

    long-to-float p0, p1

    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->t()F

    move-result p1

    int-to-float p2, p4

    sub-float/2addr p1, p2

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    invoke-virtual {p3}, Lcom/mgmi/platform/view/a;->t()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(Lcom/mgmi/platform/view/a;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->y()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->t()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->y()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private b()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/mgmi/a/b;->b:I

    if-nez v0, :cond_0

    const/16 v0, 0x16

    .line 46
    iput v0, p0, Lcom/mgmi/a/b;->b:I

    .line 47
    :cond_0
    iget p0, p0, Lcom/mgmi/a/b;->b:I

    return p0
.end method

.method private b(JLcom/mgmi/model/r;)Lcom/mgmi/platform/view/a;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mgmi/a/b;->a:Lcom/mgmi/a/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/mgmi/a/a;->b()Lcom/mgmi/ads/api/e/b;

    move-result-object v0

    check-cast v0, Lcom/mgmi/ads/api/e/a/a;

    .line 3
    invoke-virtual {p3}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p3

    const-wide/16 v2, 0x3e8

    .line 4
    :try_start_0
    div-long/2addr p1, v2

    const/4 v2, 0x0

    move v3, v2

    .line 5
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 6
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->s()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->s()I

    move-result v4

    const/16 v6, 0xd

    if-ne v4, v6, :cond_2

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v0, p1, p2, v4}, Lcom/mgmi/ads/api/e/a/a;->a(JLcom/mgmi/platform/view/a;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->f()V

    .line 8
    iget-object v4, p0, Lcom/mgmi/a/b;->a:Lcom/mgmi/a/a;

    if-eqz v4, :cond_f

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 9
    iget-object v4, p0, Lcom/mgmi/a/b;->a:Lcom/mgmi/a/a;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/mgmi/a/a;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 10
    :cond_2
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->s()I

    move-result v4

    const/16 v6, 0x64

    if-ne v4, v6, :cond_7

    .line 11
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-direct {p0, p1, p2, v4}, Lcom/mgmi/a/b;->a(JLcom/mgmi/platform/view/a;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/platform/view/a;

    invoke-virtual {p0}, Lcom/mgmi/platform/view/a;->f()V

    .line 13
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/platform/view/a;

    return-object p0

    .line 14
    :cond_3
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-direct {p0, v4}, Lcom/mgmi/a/b;->b(Lcom/mgmi/platform/view/a;)Z

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_4

    long-to-float v4, p1

    .line 15
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mgmi/platform/view/a;

    invoke-virtual {v7}, Lcom/mgmi/platform/view/a;->t()F

    move-result v7

    const/high16 v8, 0x41600000    # 14.0f

    sub-float/2addr v7, v8

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_4

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mgmi/platform/view/a;

    invoke-virtual {v7}, Lcom/mgmi/platform/view/a;->t()F

    move-result v7

    sub-float/2addr v7, v6

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->l()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->k()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->h()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    const-string v4, "zhengfeng"

    const-string v7, "mid load AD_HEAD_FOCUS0002"

    invoke-static {v4, v7}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4, v5}, Lcom/mgmi/platform/view/a;->a(Z)V

    .line 18
    iget-object v4, p0, Lcom/mgmi/a/b;->a:Lcom/mgmi/a/a;

    if-eqz v4, :cond_4

    .line 19
    new-array v7, v2, [Ljava/lang/Object;

    const/4 v8, 0x2

    invoke-interface {v4, v8, v7}, Lcom/mgmi/a/a;->a(I[Ljava/lang/Object;)V

    .line 20
    :cond_4
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-direct {p0, v4}, Lcom/mgmi/a/b;->a(Lcom/mgmi/platform/view/a;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->x()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/mgmi/a/b;->a(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->q()Z

    move-result v4

    if-eqz v4, :cond_5

    long-to-float v4, p1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mgmi/platform/view/a;

    invoke-virtual {v7}, Lcom/mgmi/platform/view/a;->t()F

    move-result v7

    const/high16 v8, 0x40400000    # 3.0f

    sub-float/2addr v7, v8

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_5

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mgmi/platform/view/a;

    invoke-virtual {v7}, Lcom/mgmi/platform/view/a;->t()F

    move-result v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_5

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->r()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    const/16 v7, 0x1388

    invoke-virtual {v4, v7}, Lcom/mgmi/platform/view/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mgmi/platform/view/a;

    invoke-virtual {v7}, Lcom/mgmi/platform/view/a;->t()F

    move-result v7

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    float-to-long v7, v7

    invoke-virtual {p0, v4, v7, v8}, Lcom/mgmi/a/b;->a(Lcom/mgmi/platform/view/a;J)V

    :cond_5
    long-to-float v4, p1

    .line 22
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mgmi/platform/view/a;

    invoke-virtual {v7}, Lcom/mgmi/platform/view/a;->t()F

    move-result v7

    add-float/2addr v7, v6

    cmpl-float v4, v4, v7

    if-lez v4, :cond_6

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->z()I

    move-result v4

    if-le v4, v5, :cond_6

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->q()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 23
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->d()V

    .line 24
    :cond_6
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->y()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mgmi/ads/api/e/a/a;->a(I)Lcom/mgmi/model/VASTAd;

    move-result-object v4

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/platform/view/a;

    invoke-direct {p0, v4, v5, p1, p2}, Lcom/mgmi/a/b;->b(Lcom/mgmi/model/VASTAd;Lcom/mgmi/platform/view/a;J)Z

    goto/16 :goto_3

    .line 25
    :cond_7
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->s()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->q()Z

    move-result v4

    if-nez v4, :cond_8

    .line 26
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/platform/view/a;

    invoke-virtual {p0}, Lcom/mgmi/platform/view/a;->f()V

    .line 27
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/platform/view/a;

    return-object p0

    .line 28
    :cond_8
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->s()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_d

    .line 29
    invoke-virtual {v0}, Lcom/mgmi/ads/api/e/a/a;->v()Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_3

    :cond_9
    long-to-float v4, p1

    .line 30
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/platform/view/a;

    invoke-virtual {v5}, Lcom/mgmi/platform/view/a;->t()F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    sub-float/2addr v5, v6

    cmpl-float v5, v4, v5

    if-lez v5, :cond_a

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/platform/view/a;

    invoke-virtual {v5}, Lcom/mgmi/platform/view/a;->t()F

    move-result v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_a

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/platform/view/a;

    invoke-virtual {v5}, Lcom/mgmi/platform/view/a;->q()Z

    move-result v5

    if-nez v5, :cond_a

    .line 31
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/platform/view/a;

    invoke-virtual {p0}, Lcom/mgmi/platform/view/a;->f()V

    .line 32
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/platform/view/a;

    return-object p0

    .line 33
    :cond_a
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/platform/view/a;

    invoke-virtual {v5}, Lcom/mgmi/platform/view/a;->t()F

    move-result v5

    float-to-long v5, v5

    cmp-long v5, v5, p1

    if-eqz v5, :cond_c

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/platform/view/a;

    invoke-virtual {v5}, Lcom/mgmi/platform/view/a;->t()F

    move-result v5

    float-to-long v5, v5

    const-wide/16 v7, 0x1

    sub-long v9, p1, v7

    cmp-long v5, v5, v9

    if-eqz v5, :cond_c

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/platform/view/a;

    invoke-virtual {v5}, Lcom/mgmi/platform/view/a;->t()F

    move-result v5

    float-to-long v5, v5

    add-long/2addr v7, p1

    cmp-long v5, v5, v7

    if-nez v5, :cond_b

    goto :goto_2

    .line 34
    :cond_b
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/platform/view/a;

    invoke-virtual {v5}, Lcom/mgmi/platform/view/a;->t()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    .line 35
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->d()V

    goto/16 :goto_3

    .line 36
    :cond_c
    :goto_2
    iget-object v4, p0, Lcom/mgmi/a/b;->a:Lcom/mgmi/a/a;

    if-eqz v4, :cond_f

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v4, v6, v5}, Lcom/mgmi/a/a;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 38
    :cond_d
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->s()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_f

    long-to-float v4, p1

    .line 39
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/platform/view/a;

    invoke-virtual {v5}, Lcom/mgmi/platform/view/a;->t()F

    move-result v5

    invoke-direct {p0}, Lcom/mgmi/a/b;->b()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v4, v5

    if-lez v5, :cond_e

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/platform/view/a;

    invoke-virtual {v5}, Lcom/mgmi/platform/view/a;->t()F

    move-result v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_e

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/platform/view/a;

    invoke-virtual {v5}, Lcom/mgmi/platform/view/a;->q()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/platform/view/a;

    invoke-virtual {v5}, Lcom/mgmi/platform/view/a;->n()Z

    move-result v5

    if-nez v5, :cond_e

    .line 40
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/platform/view/a;

    invoke-virtual {p0}, Lcom/mgmi/platform/view/a;->f()V

    .line 41
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/platform/view/a;

    return-object p0

    .line 42
    :cond_e
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/platform/view/a;

    invoke-virtual {v5}, Lcom/mgmi/platform/view/a;->t()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->n()Z

    move-result v4

    if-nez v4, :cond_f

    .line 43
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/platform/view/a;

    invoke-virtual {v4}, Lcom/mgmi/platform/view/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 44
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    return-object v1
.end method

.method private b(Lcom/mgmi/model/VASTAd;Lcom/mgmi/platform/view/a;J)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 48
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getDaoTime()I

    move-result v1

    .line 49
    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->t()F

    move-result v2

    float-to-long v2, v2

    sub-long v4, v2, p3

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    const/4 v7, 0x1

    if-ltz v6, :cond_8

    int-to-long v8, v1

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    if-ltz v6, :cond_1

    if-gez v8, :cond_1

    long-to-int v1, v4

    :cond_1
    const/4 v4, 0x2

    if-le v1, v4, :cond_2

    goto :goto_0

    :cond_2
    cmp-long v4, p3, v2

    if-ltz v4, :cond_9

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    cmp-long p3, p3, v2

    if-gez p3, :cond_9

    .line 50
    :goto_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getVastAid()I

    move-result p1

    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->v()I

    move-result p3

    if-eq p1, p3, :cond_3

    return v0

    .line 51
    :cond_3
    invoke-direct {p0, p2}, Lcom/mgmi/a/b;->b(Lcom/mgmi/platform/view/a;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/mgmi/platform/view/a;->a()Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    .line 52
    :cond_4
    iget-object p1, p0, Lcom/mgmi/a/b;->a:Lcom/mgmi/a/a;

    if-nez p1, :cond_5

    return v0

    .line 53
    :cond_5
    invoke-interface {p1}, Lcom/mgmi/a/a;->b()Lcom/mgmi/ads/api/e/b;

    move-result-object p1

    check-cast p1, Lcom/mgmi/ads/api/e/a/a;

    .line 54
    invoke-virtual {p1}, Lcom/mgmi/ads/api/e/a/a;->u()Z

    move-result p1

    if-nez p1, :cond_6

    return v0

    .line 55
    :cond_6
    iget-object p0, p0, Lcom/mgmi/a/b;->a:Lcom/mgmi/a/a;

    if-eqz p0, :cond_7

    if-lez v1, :cond_7

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p0, p2, p1}, Lcom/mgmi/a/a;->a(I[Ljava/lang/Object;)V

    :cond_7
    return v7

    :cond_8
    :goto_1
    if-gez v6, :cond_9

    const-wide/16 p0, -0x2

    cmp-long p0, v4, p0

    if-ltz p0, :cond_9

    return v7

    :cond_9
    return v0
.end method

.method private b(Lcom/mgmi/platform/view/a;)Z
    .locals 1

    .line 57
    invoke-static {}, Lcom/mgmi/platform/c;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->y()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->t()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/platform/view/a;->y()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/mgmi/a/b;->a:Lcom/mgmi/a/a;

    return-void
.end method

.method public a(JLcom/mgmi/model/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/mgmi/a/b;->b(JLcom/mgmi/model/r;)Lcom/mgmi/platform/view/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/mgmi/a/b;->a:Lcom/mgmi/a/a;

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    .line 3
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/mgmi/a/a;->a(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/model/r;J)V
    .locals 7

    .line 16
    invoke-virtual {p1}, Lcom/mgmi/model/r;->l()Ljava/util/List;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/platform/view/a;

    .line 19
    invoke-virtual {v2}, Lcom/mgmi/platform/view/a;->s()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 20
    invoke-virtual {v2}, Lcom/mgmi/platform/view/a;->t()F

    move-result v3

    float-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    cmp-long v3, v3, p2

    if-nez v3, :cond_0

    .line 21
    iget-object v3, p0, Lcom/mgmi/a/b;->a:Lcom/mgmi/a/a;

    if-eqz v3, :cond_0

    const/4 p0, 0x7

    .line 22
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lcom/mgmi/a/a;->a(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Lcom/mgmi/platform/view/a;J)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/mgmi/a/b;->a:Lcom/mgmi/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Lcom/mgmi/platform/view/a;->c(Z)V

    .line 14
    iget-object p0, p0, Lcom/mgmi/a/b;->a:Lcom/mgmi/a/a;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x6

    invoke-interface {p0, p2, p1}, Lcom/mgmi/a/a;->a(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
