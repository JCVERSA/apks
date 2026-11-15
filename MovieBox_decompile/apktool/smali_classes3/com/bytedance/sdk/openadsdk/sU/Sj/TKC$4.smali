.class Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$4;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;->sP(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$4;->sP:Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$4;->Sj:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const-string v0, "model"

    .line 2
    .line 3
    const-string v1, "pag_plb_config"

    .line 4
    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Jcg/Sj;->TKC()Lcom/bytedance/sdk/component/Jcg/sP/sP;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$4;->Sj:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/Dq/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Jcg/sP/sP;->Sj()Lcom/bytedance/sdk/component/Jcg/sP;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Jcg/sP;->EjP()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/sU/sP/Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/sP/Sj;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "last_update_time"

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    const-string v4, ""

    .line 62
    .line 63
    invoke-static {v1, v0, v4}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->sP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/sU/sP/Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/sU/sP/Sj;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-eqz v4, :cond_0

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/sU/sP/Sj;->Sj()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/sU/sP/Sj;->Sj()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-nez v5, :cond_1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    :goto_0
    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC$4;->sP:Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    invoke-static {v0, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;Lcom/bytedance/sdk/openadsdk/sU/sP/Sj;Lcom/bytedance/sdk/openadsdk/sU/sP/Sj;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void

    .line 100
    :goto_1
    const-string v1, "PlayableResManager"

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
