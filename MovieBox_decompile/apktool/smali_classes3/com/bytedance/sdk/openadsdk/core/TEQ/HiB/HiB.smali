.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;
.super Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;
.source "source.java"


# instance fields
.field private ley:Z

.field private uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private wE:Lcom/bytedance/adsdk/ugeno/sP/TKC;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->ley:Z

    .line 6
    .line 7
    return-void
.end method

.method private Sj(Ljava/lang/CharSequence;ZIZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v2, :cond_0

    return-void

    .line 29
    :cond_0
    instance-of v2, v2, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP;

    if-nez v2, :cond_1

    return-void

    .line 30
    :cond_1
    :try_start_0
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x2

    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "parse duration exception"

    aput-object v3, v2, v1

    aput-object p1, v2, v0

    const-string v3, "UGenRender"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-nez p4, :cond_5

    if-lez v2, :cond_5

    .line 32
    iget-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->ley:Z

    if-eqz p4, :cond_2

    goto :goto_1

    .line 33
    :cond_2
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {p4, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    if-nez p2, :cond_3

    .line 34
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->Sj()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->EjP()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/EjP/vS;->sP(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 35
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP;->Jcg(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->EjP()Ljava/lang/String;

    move-result-object p2

    const-string p3, "open_ad"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->Sj()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 37
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->ley:Z

    .line 38
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {p1, v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    return-void

    .line 39
    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP;->Jcg(Ljava/lang/String;)V

    return-void

    .line 40
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {p1, v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    return-void
.end method

.method private TEQ()V
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/Dq;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/core/Dq;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->Ym()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "image_info"

    .line 18
    .line 19
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->sef()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "cache_dir"

    .line 29
    .line 30
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/Dq;->Sj(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/Dq;->Sj(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->EjP:Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/Dq;->Sj(Lorg/json/JSONObject;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->kF:Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/Dq;->sP(Lorg/json/JSONObject;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    .line 52
    .line 53
    const-string v2, "ad"

    .line 54
    .line 55
    invoke-virtual {v1, v2, v0}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/core/Dq;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private sP(Ljava/lang/CharSequence;ZIZ)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->wE:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of p3, p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/vS;

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x0

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    const/16 p3, 0x8

    .line 4
    :goto_0
    invoke-virtual {p1, p3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    return-void
.end method

.method private uA()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->wE:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method


# virtual methods
.method protected Dq()Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method protected EjP()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->TEQ()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/aa;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/Fmk;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ndK()Lcom/bytedance/sdk/openadsdk/core/model/LqL;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/LqL;->HiB()Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->EjP:Lorg/json/JSONObject;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->kF:Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->EjP:Lorg/json/JSONObject;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->kF:Lorg/json/JSONObject;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 51
    .line 52
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->zR:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "rewarded_video"

    .line 59
    .line 60
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 67
    .line 68
    const-string v1, "RVCountdown"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 77
    .line 78
    const-string v1, "RVSkipView"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->wE:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 88
    .line 89
    const-string v1, "FVCountdown"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 98
    .line 99
    const-string v1, "FVSkipView"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->wE:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 106
    .line 107
    :goto_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->uA()V

    .line 108
    .line 109
    .line 110
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->fF()Lcom/bytedance/adsdk/ugeno/core/Zq;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Zq;->sP()V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->fF()Lcom/bytedance/adsdk/ugeno/core/Zq;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Zq;->TKC()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    .line 128
    const/4 v0, 0x0

    .line 129
    return v0

    .line 130
    :catchall_0
    const/16 v0, 0x8d

    .line 131
    .line 132
    return v0

    .line 133
    :catch_0
    const/16 v0, 0x8c

    .line 134
    .line 135
    return v0

    .line 136
    :catch_1
    const/16 v0, 0x8b

    .line 137
    .line 138
    return v0
.end method

.method protected Jcg()Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    const-string v1, "VideoV3"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method protected Sj()Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->TKC()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-string v1, "xTemplate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V
    .locals 9

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 3
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Dq:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    if-nez v7, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->sP()Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v8, "dislike"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    move v7, v0

    goto :goto_0

    :sswitch_1
    const-string v8, "muteVideo"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    move v7, v1

    goto :goto_0

    :sswitch_2
    const-string v8, "convert"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    move v7, v2

    goto :goto_0

    :sswitch_3
    const-string v8, "videoControl"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    move v7, v3

    goto :goto_0

    :sswitch_4
    const-string v8, "skip"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_0

    :cond_6
    move v7, v6

    goto :goto_0

    :sswitch_5
    const-string v8, "pauseVideo"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_0

    :cond_7
    move v7, v4

    goto :goto_0

    :sswitch_6
    const-string v8, "openPrivacy"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    goto :goto_0

    :cond_8
    move v7, v5

    :goto_0
    packed-switch v7, :pswitch_data_0

    move v0, v5

    goto :goto_1

    :pswitch_0
    move v0, v3

    goto :goto_1

    :pswitch_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    move v0, v6

    goto :goto_1

    :pswitch_3
    move v0, v2

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x7

    .line 6
    :goto_1
    :pswitch_5
    new-array p3, v6, [I

    .line 7
    new-array v1, v6, [I

    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dx:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_a

    .line 9
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;)[I

    move-result-object v2

    if-eqz v2, :cond_9

    move-object p3, v2

    .line 10
    :cond_9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/view/View;)[I

    move-result-object v2

    if-eqz v2, :cond_a

    move-object v1, v2

    .line 11
    :cond_a
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;-><init>()V

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Fmk:F

    .line 12
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sef:F

    .line 13
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Zq:F

    .line 14
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uvD:F

    .line 15
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dNu:J

    .line 16
    invoke-virtual {v2, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(J)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TzV:J

    .line 17
    invoke-virtual {v2, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(J)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    aget v3, p3, v5

    .line 18
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    aget p3, p3, v4

    .line 19
    invoke-virtual {v2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    aget v2, v1, v5

    .line 20
    invoke-virtual {p3, v2}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->HiB(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    aget v1, v1, v4

    .line 21
    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->vS(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->ib:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {p3, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    const-string v1, "tap"

    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->RiZ:Z

    if-eqz p2, :cond_b

    goto :goto_2

    :cond_b
    move v4, v5

    :cond_c
    :goto_2
    invoke-virtual {p3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p2

    .line 24
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->WMZ()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p2

    .line 25
    invoke-virtual {p2, v5}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p2

    .line 26
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/sef;

    move-result-object p2

    .line 27
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Dq:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object p1

    invoke-interface {p3, p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/sP/Dq;->Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1e7a3222 -> :sswitch_6
        -0x353b7db -> :sswitch_5
        0x35e57f -> :sswitch_4
        0x2ff1f862 -> :sswitch_3
        0x38b81db3 -> :sswitch_2
        0x44a639e2 -> :sswitch_1
        0x63a33d25 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected sP()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->TKC()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public setSoundMute(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setTime(Ljava/lang/CharSequence;IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->Sj(Ljava/lang/CharSequence;ZIZ)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;->sP(Ljava/lang/CharSequence;ZIZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
