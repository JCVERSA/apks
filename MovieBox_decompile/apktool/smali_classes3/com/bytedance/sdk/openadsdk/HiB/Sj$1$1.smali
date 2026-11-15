.class Lcom/bytedance/sdk/openadsdk/HiB/Sj$1$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/HiB/Sj$1;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/HiB/Sj$1;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/HiB/Sj$1;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$1$1;->TKC:Lcom/bytedance/sdk/openadsdk/HiB/Sj$1;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$1$1;->sP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x4

    .line 6
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Zq()Z

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->zR()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;

    .line 23
    .line 24
    const-string v1, "Blind mode does not allow requesting ads"

    .line 25
    .line 26
    const/16 v2, -0x12

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;->onError(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;

    .line 35
    .line 36
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$1$1;->sP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 44
    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;

    .line 48
    .line 49
    const-string v1, "adslot is null"

    .line 50
    .line 51
    const/4 v2, -0x4

    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;->onError(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    const-string v5, "com.bytedance.sdk.openadsdk.TTC2Proxy"

    .line 57
    .line 58
    const-string v6, "load"

    .line 59
    .line 60
    new-array v7, v4, [Ljava/lang/Class;

    .line 61
    .line 62
    const-class v8, Landroid/content/Context;

    .line 63
    .line 64
    aput-object v8, v7, v3

    .line 65
    .line 66
    const-class v8, Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 67
    .line 68
    aput-object v8, v7, v2

    .line 69
    .line 70
    const-class v8, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;

    .line 71
    .line 72
    aput-object v8, v7, v1

    .line 73
    .line 74
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 75
    .line 76
    aput-object v8, v7, v0

    .line 77
    .line 78
    invoke-static {v5, v6, v7}, Lcom/bytedance/sdk/component/utils/ley;->Sj(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    if-eqz v5, :cond_3

    .line 83
    .line 84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$1$1;->sP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 89
    .line 90
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/EjP/Sj;

    .line 91
    .line 92
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$1$1;->TKC:Lcom/bytedance/sdk/openadsdk/HiB/Sj$1;

    .line 93
    .line 94
    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/HiB/Sj$1;->Sj(Lcom/bytedance/sdk/openadsdk/HiB/Sj$1;)I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    new-array v4, v4, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object v6, v4, v3

    .line 105
    .line 106
    aput-object v7, v4, v2

    .line 107
    .line 108
    aput-object v8, v4, v1

    .line 109
    .line 110
    aput-object v9, v4, v0

    .line 111
    .line 112
    const/4 v0, 0x0

    .line 113
    invoke-virtual {v5, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    :cond_3
    return-void

    .line 117
    :goto_0
    const-string v1, "ADNFactory"

    .line 118
    .line 119
    const-string v2, "open component maybe not exist, please check"

    .line 120
    .line 121
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
