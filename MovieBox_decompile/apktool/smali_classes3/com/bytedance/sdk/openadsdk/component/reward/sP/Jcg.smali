.class public Lcom/bytedance/sdk/openadsdk/component/reward/sP/Jcg;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/dx;->Qne()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TEQ;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TEQ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Dq;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Dq;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TEQ;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TEQ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/EjP;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TKC;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/TKC;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 97
    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/HiB;

    .line 101
    .line 102
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 103
    .line 104
    .line 105
    return-object v0
.end method
