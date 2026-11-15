.class public Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private Dq:D

.field private EjP:Ljava/lang/String;

.field private Fmk:Ljava/lang/String;

.field private HiB:Ljava/lang/String;

.field private Jcg:Ljava/lang/String;

.field Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

.field private TEQ:I

.field TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

.field private Ym:Ljava/lang/String;

.field private Zq:Ljava/lang/String;

.field private final aa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;",
            ">;"
        }
    .end annotation
.end field

.field sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

.field private sef:Z

.field private uA:I

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->aa:Ljava/util/Set;

    .line 17
    .line 18
    const-string v0, "VAST_ACTION_BUTTON"

    .line 19
    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Fmk:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sef:Z

    .line 24
    .line 25
    return-void
.end method

.method public static Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;-><init>()V

    .line 9
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    const-string v2, "videoTrackers"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(Lorg/json/JSONObject;)V

    .line 10
    const-string v1, "vastIcon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    .line 11
    const-string v1, "endCard"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->sP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    .line 12
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->EjP:Ljava/lang/String;

    .line 13
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->HiB:Ljava/lang/String;

    .line 14
    const-string v1, "clickThroughUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->vS:Ljava/lang/String;

    .line 15
    const-string v1, "videoUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg:Ljava/lang/String;

    .line 16
    const-string v1, "videDuration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Dq:D

    .line 17
    const-string v1, "tag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Ym:Ljava/lang/String;

    .line 18
    const-string v1, "videoWidth"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->uA:I

    .line 19
    const-string v1, "videoHeight"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->uA:I

    .line 20
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->aa:Ljava/util/Set;

    const-string v2, "viewabilityVendor"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;->Sj(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private uvD()Lorg/json/JSONArray;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->aa:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;->EjP()Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-object v0
.end method


# virtual methods
.method public Dq()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Dq:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public EjP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->EjP:Ljava/lang/String;

    return-object v0
.end method

.method public EjP(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg:Ljava/lang/String;

    return-void
.end method

.method public Fmk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TEQ:I

    .line 2
    .line 3
    return v0
.end method

.method public HiB()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->HiB:Ljava/lang/String;

    return-object v0
.end method

.method public HiB(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Fmk:Ljava/lang/String;

    return-void
.end method

.method public Jcg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg:Ljava/lang/String;

    return-object v0
.end method

.method public Jcg(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Zq:Ljava/lang/String;

    return-void
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    return-object v0
.end method

.method public Sj(D)V
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Dq:D

    return-void
.end method

.method public Sj(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->uA:I

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj(Ljava/lang/String;)V

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/sP;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj(Ljava/lang/String;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_1
    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->EjP:Ljava/lang/String;

    return-void
.end method

.method public Sj(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 27
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->aa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public TEQ()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj()Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "videoTrackers"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v2, "vastIcon"

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP;->Sj()Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const-string v2, "endCard"

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj()Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    :cond_1
    const-string v1, "title"

    .line 44
    .line 45
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->EjP:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string v1, "description"

    .line 51
    .line 52
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->HiB:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string v1, "clickThroughUrl"

    .line 58
    .line 59
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->vS:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    const-string v1, "videoUrl"

    .line 65
    .line 66
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    const-string v1, "videDuration"

    .line 72
    .line 73
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Dq:D

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    const-string v1, "tag"

    .line 79
    .line 80
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Ym:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    const-string v1, "videoWidth"

    .line 86
    .line 87
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->uA:I

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    const-string v1, "videoHeight"

    .line 93
    .line 94
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TEQ:I

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    const-string v1, "viewabilityVendor"

    .line 100
    .line 101
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->uvD()Lorg/json/JSONArray;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    return-object v0
.end method

.method public TKC()Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    return-object v0
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->vS:Ljava/lang/String;

    return-void
.end method

.method public Ym()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Ym:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Zq()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sef:Z

    .line 3
    .line 4
    return-void
.end method

.method public aa()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->uA:I

    .line 2
    .line 3
    return v0
.end method

.method public sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    return-object v0
.end method

.method public sP(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TEQ:I

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->HiB:Ljava/lang/String;

    return-void
.end method

.method public sef()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->aa:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public uA()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->vS:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Zq:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Zq:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Zq:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Fmk:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    const-string v2, "VAST_ICON"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    const-string v2, "VAST_END_CARD"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Dq:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Dq:Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Dq:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Dq:Ljava/lang/String;

    .line 71
    .line 72
    :cond_3
    :goto_0
    const-string v1, "VAST_ACTION_BUTTON"

    .line 73
    .line 74
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Fmk:Ljava/lang/String;

    .line 75
    .line 76
    return-object v0
.end method

.method public vS()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->vS:Ljava/lang/String;

    return-object v0
.end method

.method public vS(Ljava/lang/String;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Ym:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(Ljava/lang/String;)V

    return-void
.end method
