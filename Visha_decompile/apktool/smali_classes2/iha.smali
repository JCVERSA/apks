.class public Liha;
.super Leg5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Leg5;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ldg5;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Liha;->q(Ldg5;F)Lcom/airbnb/lottie/model/DocumentData;

    move-result-object p0

    return-object p0
.end method

.method public q(Ldg5;F)Lcom/airbnb/lottie/model/DocumentData;
    .locals 8

    iget-object v0, p0, Lab0;->e:Liu5;

    if-eqz v0, :cond_2

    iget v1, p1, Ldg5;->g:F

    iget-object v2, p1, Ldg5;->h:Ljava/lang/Float;

    if-nez v2, :cond_0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_0
    iget-object v3, p1, Ldg5;->b:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/airbnb/lottie/model/DocumentData;

    iget-object p1, p1, Ldg5;->c:Ljava/lang/Object;

    if-nez p1, :cond_1

    check-cast v3, Lcom/airbnb/lottie/model/DocumentData;

    move-object p1, v3

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/airbnb/lottie/model/DocumentData;

    :goto_1
    invoke-virtual {p0}, Lab0;->d()F

    move-result v6

    invoke-virtual {p0}, Lab0;->f()F

    move-result v7

    move-object v3, v4

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Liu5;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/DocumentData;

    return-object p0

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_4

    iget-object p0, p1, Ldg5;->c:Ljava/lang/Object;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    check-cast p0, Lcom/airbnb/lottie/model/DocumentData;

    return-object p0

    :cond_4
    :goto_2
    iget-object p0, p1, Ldg5;->b:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/model/DocumentData;

    return-object p0
.end method

.method public r(Liu5;)V
    .locals 3

    new-instance v0, Lbt5;

    invoke-direct {v0}, Lbt5;-><init>()V

    new-instance v1, Lcom/airbnb/lottie/model/DocumentData;

    invoke-direct {v1}, Lcom/airbnb/lottie/model/DocumentData;-><init>()V

    new-instance v2, Liha$a;

    invoke-direct {v2, p0, v0, p1, v1}, Liha$a;-><init>(Liha;Lbt5;Liu5;Lcom/airbnb/lottie/model/DocumentData;)V

    invoke-super {p0, v2}, Lab0;->o(Liu5;)V

    return-void
.end method
