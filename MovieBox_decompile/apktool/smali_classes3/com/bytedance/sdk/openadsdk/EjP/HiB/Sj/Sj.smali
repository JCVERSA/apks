.class public Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final Sj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lb6/a;",
            "Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method private static EjP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static EjP(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V
    .locals 9

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj()J

    move-result-wide v2

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    move-result-wide v4

    .line 6
    new-instance v6, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sP;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sP;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sP;->Sj(J)V

    .line 8
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sP;->sP(J)V

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->EjP()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sP;->Sj(I)V

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->HiB()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sP;->sP(I)V

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v4

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p0

    .line 13
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v4, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v4, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    .line 16
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18
    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    const-string p1, "endcard_skip"

    invoke-static {v4, p1, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 20
    const-string p1, "TTAD.VideoEventManager"

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static HiB(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V
    .locals 7

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->uA()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gtz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    .line 20
    .line 21
    if-nez p0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    new-instance v4, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Fmk;

    .line 42
    .line 43
    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Fmk;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP()J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Fmk;->Sj(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Fmk;->sP(J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->uA()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Fmk;->Sj(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v1, p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iget v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    .line 76
    .line 77
    if-lez v0, :cond_4

    .line 78
    .line 79
    :try_start_0
    const-string v2, "play_time"

    .line 80
    .line 81
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v2, "TTAD.VideoEventManager"

    .line 87
    .line 88
    const-string v3, ""

    .line 89
    .line 90
    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v2, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    .line 98
    .line 99
    invoke-direct {v2, v1, v0, p0, v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    .line 107
    .line 108
    .line 109
    const-string p0, "play_buffer"

    .line 110
    .line 111
    invoke-static {v2, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->TKC(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;
    .locals 3

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    const-string v1, "session_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    .line 5
    const-string p1, "play_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    const-string p2, "video_resolution"

    invoke-virtual {p1}, La6/b;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string p2, "video_size"

    invoke-virtual {p1}, La6/b;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string p2, "video_url"

    invoke-virtual {p1}, La6/b;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string p1, "player_type"

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Zq()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    const-string p1, "video_encode_type"

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    :cond_2
    const-string p1, "dp_creative_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->AE()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 13
    :goto_1
    const-string p1, "TTAD.VideoEventManager"

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static Sj(Landroid/content/Context;Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 6

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 28
    :cond_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez p0, :cond_1

    return-void

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object p1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    if-eqz p1, :cond_5

    if-nez v0, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result v1

    if-nez v1, :cond_3

    .line 32
    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    .line 33
    :cond_3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Dq;-><init>()V

    .line 34
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Ym()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Dq;->Sj(I)V

    .line 35
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lz5/b;

    move-result-object v2

    invoke-interface {v2, p1}, Lz5/b;->sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Dq;->sP(J)V

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->Sj()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Dq;->Sj(J)V

    .line 37
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v2

    .line 38
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p0

    .line 39
    iget p1, p1, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    if-lez p1, :cond_4

    .line 40
    :try_start_0
    const-string v2, "play_time"

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    const-string v2, "TTAD.VideoEventManager"

    const-string v3, ""

    invoke-static {v2, v3, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object p1

    .line 43
    new-instance v2, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v2, v0, p1, p0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    .line 44
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    .line 45
    const-string p0, "feed_play"

    invoke-static {v2, p0, p3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static Sj(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V
    .locals 9

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 46
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez p0, :cond_1

    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj()J

    move-result-wide v2

    .line 50
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3

    goto :goto_1

    .line 51
    :cond_3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Jcg;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Jcg;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Jcg;->Sj(J)V

    .line 53
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Jcg;->sP(J)V

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v4

    .line 55
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p0

    .line 56
    iget v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    const-string v4, ""

    const-string v5, "TTAD.VideoEventManager"

    if-lez v0, :cond_4

    .line 57
    :try_start_0
    const-string v7, "play_time"

    invoke-virtual {p0, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v7, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v7, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    .line 62
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 64
    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string p1, "feed_pause"

    invoke-static {v7, p1, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 66
    invoke-static {v5, v4, p0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static Sj(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 9

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 67
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez p0, :cond_1

    return-void

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj()J

    move-result-wide v2

    .line 71
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    move-result-wide v4

    .line 72
    new-instance v6, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/EjP;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/EjP;-><init>()V

    .line 73
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/EjP;->sP(J)V

    .line 74
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/EjP;->Sj(J)V

    .line 75
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Jcg()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/EjP;->Sj(I)V

    .line 76
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Dq()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/EjP;->sP(I)V

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v4

    .line 78
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p0

    .line 79
    iget v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    const-string v4, ""

    const-string v5, "TTAD.VideoEventManager"

    if-lez v0, :cond_3

    .line 80
    :try_start_0
    const-string v7, "play_time"

    invoke-virtual {p0, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v7, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v7, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    .line 84
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    .line 85
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 87
    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string p1, "feed_break"

    invoke-static {v7, p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 89
    invoke-static {v5, v4, p0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static Sj(Lb6/a;ZLjava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez p0, :cond_1

    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_3

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result p0

    invoke-static {v1, v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p0

    .line 94
    :try_start_0
    iget v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    if-lez v0, :cond_3

    .line 95
    const-string v2, "play_time"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 96
    :cond_3
    :goto_0
    const-string v0, "is_mute"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 98
    const-string v0, "from"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string p2, "pag_json_data"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 100
    :goto_1
    const-string p2, "TTAD.VideoEventManager"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :goto_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object p1

    .line 102
    new-instance p2, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    const/4 v0, 0x0

    invoke-direct {p2, v1, p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    .line 103
    const-string p0, "mute_state_change"

    invoke-static {p2, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj<",
            "Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TEQ;",
            ">;)V"
        }
    .end annotation

    .line 14
    const-string v0, "load_video_error"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;)V

    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-static {p0, p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-static {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 107
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->HiB()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "embeded_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 110
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "customer_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    move-object v4, p1

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;

    invoke-direct {v5, p0, v4, p3, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;Lorg/json/JSONObject;)V

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lb6/a;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 11

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 15
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ib;->Sj()Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lz5/b;

    move-result-object v0

    invoke-interface {v0, p2}, Lz5/b;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    move v9, v0

    .line 17
    :goto_0
    new-instance v10, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object v0, v10

    move-object v3, v7

    move v4, v9

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;-><init>(JLjava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 18
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p0, v7, v9, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p1

    .line 20
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 21
    :try_start_0
    iget v2, p2, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    if-lez v2, :cond_2

    .line 22
    const-string v3, "play_time"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    .line 23
    :cond_2
    :goto_1
    const-string v2, "is_mute"

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Dq()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 24
    :goto_2
    const-string v3, "TTAD.VideoEventManager"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :goto_3
    new-instance v2, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    .line 26
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Zq()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    goto :goto_4

    :cond_3
    move v8, v1

    :goto_4
    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    .line 27
    const-string p0, "play_start"

    invoke-static {v2, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;)V

    :cond_4
    :goto_5
    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V
    .locals 1

    .line 112
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj$2;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    const-string p0, "pangle_video_play_state"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method

.method private static TKC(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Ym()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->dx()La6/b;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sU()La6/b;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 24
    invoke-virtual {p0}, La6/b;->K()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    :cond_2
    return-wide v0
.end method

.method public static TKC(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V
    .locals 10

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj()J

    move-result-wide v3

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    move-result-wide v5

    .line 6
    new-instance v7, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->aa()La6/a;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;-><init>(La6/a;)V

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;->Sj(J)V

    .line 8
    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/sef;->sP(J)V

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v5

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object v0

    .line 11
    iget v1, v1, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    const-string v5, ""

    const-string v6, "TTAD.VideoEventManager"

    if-lez v1, :cond_3

    .line 12
    :try_start_0
    const-string v8, "play_time"

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    invoke-static {v6, v5, v1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :cond_3
    :goto_0
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v1

    .line 15
    new-instance v8, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v8, v2, v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    .line 16
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    .line 17
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    const-string v1, "duration"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    const-string v1, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    const-string p1, "play_error"

    invoke-static {v8, p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 21
    invoke-static {v6, v5, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :goto_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->EjP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sP(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V
    .locals 9

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez p0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj()J

    move-result-wide v2

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/HiB;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/HiB;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/HiB;->Sj(J)V

    .line 10
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/HiB;->sP(J)V

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v4

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object p0

    .line 13
    iget v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    const-string v4, ""

    const-string v5, "TTAD.VideoEventManager"

    if-lez v0, :cond_4

    .line 14
    :try_start_0
    const-string v7, "play_time"

    invoke-virtual {p0, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v7, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v7, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    .line 18
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    .line 19
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 20
    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 21
    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    const-string p1, "feed_continue"

    invoke-static {v7, p1, p0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 23
    invoke-static {v5, v4, p0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static sP(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 10

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 24
    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->HiB(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    .line 25
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;

    if-nez v0, :cond_1

    return-void

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->EjP()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->HiB()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj()J

    move-result-wide v3

    .line 29
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC()J

    move-result-wide v5

    .line 30
    new-instance v7, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/vS;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/vS;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/vS;->sP(J)V

    .line 32
    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/vS;->Sj(J)V

    .line 33
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Dq()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/vS;->Sj(I)V

    .line 34
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->TKC()I

    move-result v5

    .line 35
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Lorg/json/JSONObject;

    move-result-object v0

    .line 36
    iget v1, v1, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP:I

    const-string v5, ""

    const-string v6, "TTAD.VideoEventManager"

    if-lez v1, :cond_3

    .line 37
    :try_start_0
    const-string v8, "play_time"

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 38
    invoke-static {v6, v5, v1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_3
    :goto_0
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v1

    .line 40
    new-instance v8, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;

    invoke-direct {v8, v2, v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V

    .line 41
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TEQ()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj(Z)V

    .line 42
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    const-string v1, "duration"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 44
    const-string v1, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->vS()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string p1, "feed_over"

    invoke-static {v8, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 46
    invoke-static {v6, v5, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    :goto_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj<",
            "Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/uA;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "load_video_cancel"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;)V

    return-void
.end method
