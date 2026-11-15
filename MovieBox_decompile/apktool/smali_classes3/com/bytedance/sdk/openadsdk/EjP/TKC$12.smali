.class final Lcom/bytedance/sdk/openadsdk/EjP/TKC$12;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$12;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$12;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 13
    .line 14
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 15
    .line 16
    .line 17
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    const-string v4, "render_type"

    .line 19
    .line 20
    const-string v5, "url"

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    :try_start_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$12;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cF()Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$12;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cF()Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->TKC()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    const-string v3, "id"

    .line 46
    .line 47
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$12;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 48
    .line 49
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cF()Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->Sj()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    const-string v3, "md5"

    .line 61
    .line 62
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$12;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 63
    .line 64
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cF()Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->sP()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v2

    .line 77
    goto :goto_2

    .line 78
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$12;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    const/4 v3, 0x7

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$12;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, La6/b;->z()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    const-string v3, "style_id"

    .line 109
    .line 110
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$12;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 111
    .line 112
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->XgY()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$12;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    if-eqz v3, :cond_2

    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_1
    const-string v3, "ad_extra_data"

    .line 135
    .line 136
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    new-array v1, v1, [Ljava/lang/Object;

    .line 149
    .line 150
    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :goto_3
    return-object v0
.end method
