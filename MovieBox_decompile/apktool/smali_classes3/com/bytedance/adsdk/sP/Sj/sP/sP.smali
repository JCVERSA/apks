.class public Lcom/bytedance/adsdk/sP/Sj/sP/sP;
.super Lcom/bytedance/adsdk/sP/Sj/sP/Jcg;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/sP/Sj/sP/Jcg<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Jcg;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method synthetic Sj(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/sP/Sj/sP/sP;->sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public TKC(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Sj:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->sP:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->TKC:Lcom/bytedance/adsdk/sP/Jcg/sP;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-static {p2, v0, v1}, Lcom/bytedance/adsdk/sP/vS/HiB;->sP(FFF)F

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iget-object v0, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Sj:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object p1, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->sP:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {p2, v0, p1}, Lcom/bytedance/adsdk/sP/vS/sP;->Sj(FII)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_0
    iget-object p1, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Jcg:Ljava/lang/Float;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->EjP()F

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Dq()F

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    throw p1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p2, "Missing values for keyframe."

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Ljava/lang/Integer;",
            ">;F)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/sP/Sj/sP/sP;->TKC(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public uA()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->TKC()Lcom/bytedance/adsdk/sP/Jcg/Sj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->HiB()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/adsdk/sP/Sj/sP/sP;->TKC(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
