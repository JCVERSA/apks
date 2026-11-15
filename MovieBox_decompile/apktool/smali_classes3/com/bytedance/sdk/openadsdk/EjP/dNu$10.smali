.class Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/dNu;->aa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "webview_time_track"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->HiB(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->TKC(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONArray;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->TKC(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONArray;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->sP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "native_switchBackgroundAndForeground"

    .line 39
    .line 40
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 41
    .line 42
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->TKC(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONArray;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->EjP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONArray;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->EjP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONArray;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->sP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "intercept_source"

    .line 76
    .line 77
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 78
    .line 79
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->EjP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONArray;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .line 85
    .line 86
    :catch_1
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    .line 87
    .line 88
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .line 90
    .line 91
    :try_start_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->sP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_2
    move-exception v2

    .line 102
    const-string v3, "WebviewTimeTrack"

    .line 103
    .line 104
    const-string v4, "trySendTrackInfo json error"

    .line 105
    .line 106
    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->RiZ()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_3

    .line 118
    .line 119
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 120
    .line 121
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->sP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONObject;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    if-eqz v2, :cond_3

    .line 126
    .line 127
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 128
    .line 129
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->sP(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 133
    .line 134
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/dNu$10;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 139
    .line 140
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;->vS(Lcom/bytedance/sdk/openadsdk/EjP/dNu;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-static {v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
