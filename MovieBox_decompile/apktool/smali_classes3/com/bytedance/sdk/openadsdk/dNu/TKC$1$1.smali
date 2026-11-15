.class Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dNu/TKC$1;->onMonitorUpload(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/dNu/TKC$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dNu/TKC$1;Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->sP:Lcom/bytedance/sdk/openadsdk/dNu/TKC$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Zq/Sj/TKC;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
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
    :try_start_0
    const-string v1, "sdk_version"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "scene"

    .line 18
    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const-string v1, "start_count"

    .line 29
    .line 30
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->EjP()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v1, "success_count"

    .line 40
    .line 41
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->HiB()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string v1, "fail_count"

    .line 51
    .line 52
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->vS()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    const-string v1, "rit"

    .line 62
    .line 63
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Jcg()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    const-string v1, "tag"

    .line 73
    .line 74
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Dq()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    const-string v1, "label"

    .line 84
    .line 85
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->uA()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string v1, "mediation"

    .line 95
    .line 96
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Ym()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    const-string v1, "is_init"

    .line 106
    .line 107
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->aa()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    const-string v1, "extra"

    .line 117
    .line 118
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/dNu/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Fmk()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP()Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const-string v2, "bus_monitor"

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    .line 142
    .line 143
    .line 144
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v1, "BusMonitorUtils"

    .line 148
    .line 149
    const-string v2, "onMonitorUpload: "

    .line 150
    .line 151
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    const/4 v0, 0x0

    .line 155
    return-object v0
.end method
