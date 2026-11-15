.class public Lcom/bytedance/adsdk/ugeno/EjP/EjP/HiB;
.super Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;
.source "source.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public varargs Sj([Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    if-gtz v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    aget-object p1, p1, v0

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->HiB:Ljava/util/Map;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->HiB:Ljava/util/Map;

    .line 30
    .line 31
    const-string v2, "type"

    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-ne p1, v1, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP/Ym;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->vS:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/EjP/vS;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/EjP/vS;->sP()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-interface {p1, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/EjP/Ym;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP/Ym;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->vS:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/EjP/vS;

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/EjP/vS;->sP()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {p1, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/EjP/Ym;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_1
    return v0
.end method
