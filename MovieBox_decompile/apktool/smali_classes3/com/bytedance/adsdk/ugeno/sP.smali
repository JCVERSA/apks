.class public Lcom/bytedance/adsdk/ugeno/sP;
.super Lcom/bytedance/adsdk/ugeno/sP/Sj;
.source "source.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/vS/TKC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ugeno/sP/Sj<",
        "Lcom/bytedance/adsdk/ugeno/vS/sP;",
        ">;",
        "Lcom/bytedance/adsdk/ugeno/vS/TKC;"
    }
.end annotation


# instance fields
.field private AVc:I

.field private Aw:Z

.field private GMp:F

.field private Grp:I

.field private Ov:I

.field private Ph:Lorg/json/JSONArray;

.field private RrR:Z

.field private SP:Z

.field private TX:F

.field private Xqg:Z

.field private dLt:F

.field private gq:F

.field private hzV:F

.field private mj:I

.field private oWa:I

.field private tX:Z

.field private vb:I

.field private zwV:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/sP/Sj;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->AVc:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP;->RrR:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP;->SP:Z

    .line 11
    .line 12
    const/high16 v1, 0x44fa0000    # 2000.0f

    .line 13
    .line 14
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->dLt:F

    .line 15
    .line 16
    const-string v1, "normal"

    .line 17
    .line 18
    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->zwV:Ljava/lang/String;

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->Xqg:Z

    .line 21
    .line 22
    const-string v1, "#666666"

    .line 23
    .line 24
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->oWa:I

    .line 29
    .line 30
    const-string v1, "#ffffff"

    .line 31
    .line 32
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->mj:I

    .line 37
    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    .line 40
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->gq:F

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->GMp:F

    .line 44
    .line 45
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->hzV:F

    .line 46
    .line 47
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->TX:F

    .line 48
    .line 49
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->vb:I

    .line 50
    .line 51
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->Grp:I

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP;->tX:Z

    .line 54
    .line 55
    return-void
.end method

.method private Dq(I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->tY:Lcom/bytedance/adsdk/ugeno/EjP/uA;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/sP;->Aw:Z

    .line 8
    .line 9
    xor-int/2addr v2, v0

    .line 10
    iget v3, p0, Lcom/bytedance/adsdk/ugeno/sP;->Ov:I

    .line 11
    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v4, 0x3

    .line 25
    new-array v4, v4, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    aput-object v3, v4, v5

    .line 29
    .line 30
    aput-object p1, v4, v0

    .line 31
    .line 32
    const/4 p1, 0x2

    .line 33
    aput-object v2, v4, p1

    .line 34
    .line 35
    const-string p1, "SwiperView://slide"

    .line 36
    .line 37
    invoke-virtual {v1, p1, v4}, Lcom/bytedance/adsdk/ugeno/EjP/uA;->Sj(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private Jcg(I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->tY:Lcom/bytedance/adsdk/ugeno/EjP/uA;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/sP;->Ov:I

    .line 9
    .line 10
    const-string v3, "SwiperView://reloop"

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/sP;->MuB()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-int/2addr v2, v1

    .line 19
    if-ne p1, v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->tY:Lcom/bytedance/adsdk/ugeno/EjP/uA;

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    new-array v5, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    aput-object v4, v5, v0

    .line 30
    .line 31
    invoke-virtual {v2, v3, v5}, Lcom/bytedance/adsdk/ugeno/EjP/uA;->Sj(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/sP;->Ov:I

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/sP;->MuB()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    sub-int/2addr v4, v1

    .line 41
    if-ne v2, v4, :cond_2

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->tY:Lcom/bytedance/adsdk/ugeno/EjP/uA;

    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object v2, v1, v0

    .line 54
    .line 55
    invoke-virtual {p1, v3, v1}, Lcom/bytedance/adsdk/ugeno/EjP/uA;->Sj(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method private MuB()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/sP;->vb:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj;->Sj:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    return v2

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP;->Ph:Lorg/json/JSONArray;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_2
    return v2
.end method

.method private Sj(ZIF)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->tY:Lcom/bytedance/adsdk/ugeno/EjP/uA;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 40
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/sP;->MuB()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->tX:Z

    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->tY:Lcom/bytedance/adsdk/ugeno/EjP/uA;

    const-string p2, "SwiperView://finish"

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/adsdk/ugeno/EjP/uA;->Sj(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iput-boolean p3, p0, Lcom/bytedance/adsdk/ugeno/sP;->tX:Z

    :cond_1
    return-void
.end method

.method private dwU()V
    .locals 7

    .line 1
    const-string v0, "$chunk"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj;->Sj:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj;->Sj:Ljava/util/List;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/sP;->Ph:Lorg/json/JSONArray;

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/sP;->Ph:Lorg/json/JSONArray;

    .line 28
    .line 29
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ge v2, v3, :cond_3

    .line 34
    .line 35
    new-instance v3, Lcom/bytedance/adsdk/ugeno/core/uA;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    .line 38
    .line 39
    invoke-direct {v3, v4}, Lcom/bytedance/adsdk/ugeno/core/uA;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TO:Lcom/bytedance/adsdk/ugeno/core/aa;

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/aa;)V

    .line 45
    .line 46
    .line 47
    :try_start_0
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/sP;->Ph:Lorg/json/JSONArray;

    .line 48
    .line 49
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const-string v6, "$item"

    .line 61
    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    :try_start_1
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP:Lorg/json/JSONObject;

    .line 65
    .line 66
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP:Lorg/json/JSONObject;

    .line 75
    .line 76
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Yf()Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP:Lorg/json/JSONObject;

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-virtual {v3, v4, v5, v6}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 91
    .line 92
    check-cast v4, Lcom/bytedance/adsdk/ugeno/vS/sP;

    .line 93
    .line 94
    invoke-virtual {v4, v3}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/Object;)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    .line 97
    :catchall_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    return-void
.end method

.method private sdp()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj;->Sj:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj;->Sj:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v2, Lcom/bytedance/adsdk/ugeno/core/uA;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/bytedance/adsdk/ugeno/core/uA;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TO:Lcom/bytedance/adsdk/ugeno/core/aa;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/aa;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Yf()Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP:Lorg/json/JSONObject;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-virtual {v2, v1, v3, v4}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 44
    .line 45
    check-cast v2, Lcom/bytedance/adsdk/ugeno/vS/sP;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/Object;)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method


# virtual methods
.method public EjP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/bytedance/adsdk/ugeno/vS/sP;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->getCurrentItem()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 10
    .line 11
    check-cast v1, Lcom/bytedance/adsdk/ugeno/vS/sP;

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public Sj()Landroid/view/View;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/vS/sP;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/sP;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 2
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/vS/sP;->Sj(Lcom/bytedance/adsdk/ugeno/EjP;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    return-object v0
.end method

.method public Sj(I)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/vS/sP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/vS/sP;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa(I)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj;->Sj:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6
    invoke-super {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "dataList"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "autoplay"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "indicatorSelectedColor"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "pageMargin"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "pageCount"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "speed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "loop"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "previousMargin"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_8
    const-string v4, "indicator"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_9
    const-string v4, "direction"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_a
    const-string v4, "effect"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_b
    const-string v4, "driveMode"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_c
    const-string v4, "nextMargin"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_d
    const-string v4, "indicatorColor"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    move v3, v1

    goto :goto_0

    :sswitch_e
    const-string v4, "startIndex"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    move v3, v0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 p1, 0x0

    .line 9
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/sP;->Sj(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->Ph:Lorg/json/JSONArray;

    return-void

    .line 10
    :pswitch_1
    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->SP:Z

    return-void

    .line 11
    :pswitch_2
    iget p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->mj:I

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->mj:I

    return-void

    .line 12
    :pswitch_3
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-static {p2, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->GMp:F

    return-void

    :pswitch_4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->gq:F

    return-void

    :pswitch_5
    const/high16 p1, 0x44fa0000    # 2000.0f

    .line 14
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->dLt:F

    return-void

    .line 15
    :pswitch_6
    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->RrR:Z

    return-void

    .line 16
    :pswitch_7
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-static {p2, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->hzV:F

    return-void

    .line 17
    :pswitch_8
    invoke-static {p2, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->Xqg:Z

    return-void

    .line 18
    :pswitch_9
    const-string p1, "vertical"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 19
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->AVc:I

    return-void

    .line 20
    :cond_10
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/sP;->AVc:I

    return-void

    .line 21
    :pswitch_a
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/sP;->zwV:Ljava/lang/String;

    return-void

    .line 22
    :pswitch_b
    invoke-static {p2, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->vb:I

    return-void

    .line 23
    :pswitch_c
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-static {p2, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->TX:F

    return-void

    .line 24
    :pswitch_d
    iget p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->oWa:I

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->oWa:I

    return-void

    .line 25
    :pswitch_e
    invoke-static {p2, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP;->Grp:I

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5efd1e70 -> :sswitch_e
        -0x5dec0d6c -> :sswitch_d
        -0x56a0457f -> :sswitch_c
        -0x51808db3 -> :sswitch_b
        -0x4dd9466f -> :sswitch_a
        -0x395ff881 -> :sswitch_9
        -0x2a7041f1 -> :sswitch_8
        -0xc0b287b -> :sswitch_7
        0x32c6a4 -> :sswitch_6
        0x6890047 -> :sswitch_5
        0x33223fc0 -> :sswitch_4
        0x416f6d1d -> :sswitch_3
        0x4757b7b9 -> :sswitch_2
        0x55cdf963 -> :sswitch_1
        0x6a9f2f68 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Sj(ZI)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP;->Aw:Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 36
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP;->tX:Z

    :cond_2
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP;->Aw:Z

    .line 38
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageScrollStateChanged: loop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; state="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public Sj(ZIFI)V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageScrolled: loop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; positionOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; positionOffsetPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/sP;->Sj(ZIF)V

    return-void
.end method

.method public Sj(ZIIZZ)V
    .locals 2

    .line 30
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/sP;->Ov:I

    if-eq v0, p2, :cond_0

    .line 31
    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ugeno/sP;->Jcg(I)V

    .line 32
    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ugeno/sP;->Dq(I)V

    .line 33
    iput p2, p0, Lcom/bytedance/adsdk/ugeno/sP;->Ov:I

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageSelected: loop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; position="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; loopPosition="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; isFirst="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; isLast="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method public TKC()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/bytedance/adsdk/ugeno/vS/sP;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->getCurrentItem()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 10
    .line 11
    check-cast v1, Lcom/bytedance/adsdk/ugeno/vS/sP;

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public sP()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->sP()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 5
    .line 6
    check-cast v0, Lcom/bytedance/adsdk/ugeno/vS/sP;

    .line 7
    .line 8
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->AVc:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->RrR:Z

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC(Z)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->SP:Z

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Z)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->dLt:F

    .line 27
    .line 28
    float-to-int v1, v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->Xqg:Z

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP(Z)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->oWa:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->mj:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->EjP(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->hzV:F

    .line 52
    .line 53
    float-to-int v1, v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->TX:F

    .line 59
    .line 60
    float-to-int v1, v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->GMp:F

    .line 66
    .line 67
    float-to-int v1, v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->gq:F

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(F)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->zwV:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP;->Grp:I

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa(I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 90
    .line 91
    check-cast v0, Lcom/bytedance/adsdk/ugeno/vS/sP;

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->setOnPageChangeListener(Lcom/bytedance/adsdk/ugeno/vS/TKC;)V

    .line 94
    .line 95
    .line 96
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/sP;->vb:I

    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    if-ne v0, v1, :cond_0

    .line 100
    .line 101
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/sP;->sdp()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/sP;->dwU()V

    .line 106
    .line 107
    .line 108
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    .line 109
    .line 110
    check-cast v0, Lcom/bytedance/adsdk/ugeno/vS/sP;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP()V

    .line 113
    .line 114
    .line 115
    return-void
.end method
