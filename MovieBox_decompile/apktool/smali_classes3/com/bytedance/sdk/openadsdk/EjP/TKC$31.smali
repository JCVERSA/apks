.class final Lcom/bytedance/sdk/openadsdk/EjP/TKC$31;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$31;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$31;->sP:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "arbi_current_url"

    .line 12
    .line 13
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$31;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->TKC()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v2, "current_url_index"

    .line 23
    .line 24
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$31;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->EjP()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v2, "arbi_start_x"

    .line 34
    .line 35
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$31;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->HiB()F

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    float-to-double v3, v3

    .line 42
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    const-string v2, "arbi_start_y"

    .line 46
    .line 47
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$31;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->vS()F

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    float-to-double v3, v3

    .line 54
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string v2, "click_duration"

    .line 58
    .line 59
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$31;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->Jcg()F

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    float-to-double v3, v3

    .line 66
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v2, "is_trigger_jump"

    .line 70
    .line 71
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$31;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->Dq()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    const-string v2, "click_type"

    .line 81
    .line 82
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$31;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->RiZ()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$31;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->Sj()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    const/4 v3, -0x1

    .line 102
    if-eq v2, v3, :cond_0

    .line 103
    .line 104
    new-instance v2, Lorg/json/JSONObject;

    .line 105
    .line 106
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v3, "hit_type"

    .line 110
    .line 111
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$31;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->Sj()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    const-string v3, "hit_extra"

    .line 121
    .line 122
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$31;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;

    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/Sj;->sP()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    const-string v3, "pag_json_data"

    .line 132
    .line 133
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :catchall_0
    move-exception v1

    .line 142
    goto :goto_1

    .line 143
    :cond_0
    :goto_0
    const-string v2, "ad_extra_data"

    .line 144
    .line 145
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const/4 v2, 0x2

    .line 158
    new-array v2, v2, [Ljava/lang/Object;

    .line 159
    .line 160
    const-string v3, "onWebBehaviorClick"

    .line 161
    .line 162
    const/4 v4, 0x0

    .line 163
    aput-object v3, v2, v4

    .line 164
    .line 165
    const/4 v3, 0x1

    .line 166
    aput-object v1, v2, v3

    .line 167
    .line 168
    const-string v1, "TTAD.AdEvent"

    .line 169
    .line 170
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :goto_2
    return-object v0
.end method
