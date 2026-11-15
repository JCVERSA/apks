.class Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;Lorg/json/JSONObject;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:J

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

.field final synthetic Sj:Lorg/json/JSONObject;

.field final synthetic TKC:I

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lorg/json/JSONObject;Ljava/lang/String;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->Sj:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->sP:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->TKC:I

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->EjP:J

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->Sj:Lorg/json/JSONObject;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Ym;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->Sj:Lorg/json/JSONObject;

    .line 17
    .line 18
    const-string v3, "is_playable"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->Sj:Lorg/json/JSONObject;

    .line 26
    .line 27
    const-string v3, "usecache"

    .line 28
    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 34
    .line 35
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Ym;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const-string v0, "load_finish"

    .line 49
    .line 50
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->sP:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    const-string v0, "load_fail"

    .line 59
    .line 60
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->sP:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->Sj:Lorg/json/JSONObject;

    .line 69
    .line 70
    const-string v2, "playable_has_show"

    .line 71
    .line 72
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->TKC:I

    .line 73
    .line 74
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Ym;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    new-instance v0, Lorg/json/JSONObject;

    .line 90
    .line 91
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v2, "is_lp_pre_render"

    .line 95
    .line 96
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 97
    .line 98
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP(Lcom/bytedance/sdk/openadsdk/EjP/Ym;)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->Sj:Lorg/json/JSONObject;

    .line 106
    .line 107
    const-string v3, "pag_json_data"

    .line 108
    .line 109
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    :cond_2
    const-string v0, "stay_page"

    .line 117
    .line 118
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->sP:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->Sj:Lorg/json/JSONObject;

    .line 127
    .line 128
    const-string v2, "first_page"

    .line 129
    .line 130
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 131
    .line 132
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TKC(Lcom/bytedance/sdk/openadsdk/EjP/Ym;)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-le v3, v5, :cond_3

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    move v4, v5

    .line 140
    :goto_0
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    :catch_0
    :cond_4
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    .line 144
    .line 145
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 146
    .line 147
    .line 148
    :try_start_2
    const-string v1, "ad_extra_data"

    .line 149
    .line 150
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->Sj:Lorg/json/JSONObject;

    .line 151
    .line 152
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->EjP:J

    .line 160
    .line 161
    const-wide/16 v3, 0x0

    .line 162
    .line 163
    cmp-long v3, v1, v3

    .line 164
    .line 165
    if-lez v3, :cond_5

    .line 166
    .line 167
    const-string v3, "duration"

    .line 168
    .line 169
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 170
    .line 171
    .line 172
    :catch_1
    :cond_5
    move-object v1, v0

    .line 173
    :catch_2
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Ym$1;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 174
    .line 175
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EjP(Lcom/bytedance/sdk/openadsdk/EjP/Ym;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    return-object v1
.end method
