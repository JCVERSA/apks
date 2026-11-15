.class public Lp4/o;
.super Lp4/g;
.source "source.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lp4/g;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method bridge synthetic i(Ly4/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lp4/o;->q(Ly4/a;F)Lcom/airbnb/lottie/model/DocumentData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method q(Ly4/a;F)Lcom/airbnb/lottie/model/DocumentData;
    .locals 8

    .line 1
    iget-object v0, p0, Lp4/a;->e:Ly4/c;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v1, p1, Ly4/a;->g:F

    .line 6
    .line 7
    iget-object v2, p1, Ly4/a;->h:Ljava/lang/Float;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    :goto_0
    iget-object v3, p1, Ly4/a;->b:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v4, v3

    .line 22
    check-cast v4, Lcom/airbnb/lottie/model/DocumentData;

    .line 23
    .line 24
    iget-object p1, p1, Ly4/a;->c:Ljava/lang/Object;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    check-cast v3, Lcom/airbnb/lottie/model/DocumentData;

    .line 29
    .line 30
    move-object p1, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    check-cast p1, Lcom/airbnb/lottie/model/DocumentData;

    .line 33
    .line 34
    :goto_1
    invoke-virtual {p0}, Lp4/a;->d()F

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    invoke-virtual {p0}, Lp4/a;->f()F

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    move-object v3, v4

    .line 43
    move-object v4, p1

    .line 44
    move v5, p2

    .line 45
    invoke-virtual/range {v0 .. v7}, Ly4/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/airbnb/lottie/model/DocumentData;

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    .line 54
    cmpl-float p2, p2, v0

    .line 55
    .line 56
    if-nez p2, :cond_4

    .line 57
    .line 58
    iget-object p2, p1, Ly4/a;->c:Ljava/lang/Object;

    .line 59
    .line 60
    if-nez p2, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    check-cast p2, Lcom/airbnb/lottie/model/DocumentData;

    .line 64
    .line 65
    return-object p2

    .line 66
    :cond_4
    :goto_2
    iget-object p1, p1, Ly4/a;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lcom/airbnb/lottie/model/DocumentData;

    .line 69
    .line 70
    return-object p1
.end method

.method public r(Ly4/c;)V
    .locals 3

    .line 1
    new-instance v0, Ly4/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ly4/b;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/airbnb/lottie/model/DocumentData;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/airbnb/lottie/model/DocumentData;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lp4/o$a;

    .line 12
    .line 13
    invoke-direct {v2, p0, v0, p1, v1}, Lp4/o$a;-><init>(Lp4/o;Ly4/b;Ly4/c;Lcom/airbnb/lottie/model/DocumentData;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, v2}, Lp4/a;->o(Ly4/c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
