.class Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/JcM$3;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/utils/JcM$3;

.field final synthetic sP:Lcom/bytedance/sdk/component/Dq/TKC/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/JcM$3;Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;Lcom/bytedance/sdk/component/Dq/TKC/vS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->TKC:Lcom/bytedance/sdk/openadsdk/utils/JcM$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->sP:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Zq/Sj/TKC;
    .locals 7
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
    const-string v1, "name"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->Sj()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string v1, "times"

    .line 18
    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->sP()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const-string v1, "runMaxTime"

    .line 29
    .line 30
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->vS()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v1, "waitMaxTime"

    .line 40
    .line 41
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->HiB()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->sP()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->sP()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    :goto_0
    const-string v2, "avgRunTime"

    .line 67
    .line 68
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->EjP()J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    int-to-long v5, v1

    .line 75
    div-long/2addr v3, v5

    .line 76
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    const-string v1, "avgWaitTime"

    .line 80
    .line 81
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->Sj:Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Dq/TKC/Sj/Sj;->TKC()J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    div-long/2addr v2, v5

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    const-string v1, "poolType"

    .line 92
    .line 93
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3$1;->sP:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS;->sP()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catch_0
    move-exception v1

    .line 104
    const-string v2, "ThreadUtils"

    .line 105
    .line 106
    const-string v3, "run: "

    .line 107
    .line 108
    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP()Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v2, "pag_thread_pool_state"

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    return-object v0
.end method
