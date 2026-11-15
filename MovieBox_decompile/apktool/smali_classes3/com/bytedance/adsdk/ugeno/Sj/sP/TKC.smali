.class public Lcom/bytedance/adsdk/ugeno/Sj/sP/TKC;
.super Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;
.source "source.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/TreeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC;",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Sj(FLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Ym:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-static {p1, p2}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-static {p2, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-static {p1, p2}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->HiB:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public sP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Ym:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->Jcg:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->xD()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->HiB:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public vS()Landroid/animation/TypeEvaluator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Ym:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Landroid/animation/IntEvaluator;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
