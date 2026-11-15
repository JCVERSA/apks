.class Lcom/bytedance/sdk/openadsdk/HiB/Sj$3$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/HiB/Sj$3;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeRequest;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/HiB;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/HiB/Sj$3;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/HiB/Sj$3;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Sj/sP/HiB;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$3$1;->TKC:Lcom/bytedance/sdk/openadsdk/HiB/Sj$3;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/HiB;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$3$1;->sP:Lcom/bytedance/sdk/openadsdk/AdSlot;

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
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x3

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Zq()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->zR()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/HiB;

    .line 22
    .line 23
    const/16 v1, -0x12

    .line 24
    .line 25
    const-string v2, "Blind mode does not allow requesting ads"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/HiB;->onError(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/HiB;

    .line 32
    .line 33
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$3$1;->sP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 41
    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/HiB;

    .line 45
    .line 46
    const/4 v1, -0x4

    .line 47
    const-string v2, "adslot is null"

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/HiB;->onError(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    :try_start_0
    const-string v4, "com.bytedance.sdk.openadsdk.TTC5Proxy"

    .line 54
    .line 55
    const-string v5, "loadFeed"

    .line 56
    .line 57
    new-array v6, v3, [Ljava/lang/Class;

    .line 58
    .line 59
    const-class v7, Landroid/content/Context;

    .line 60
    .line 61
    aput-object v7, v6, v2

    .line 62
    .line 63
    const-class v7, Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 64
    .line 65
    aput-object v7, v6, v1

    .line 66
    .line 67
    const-class v7, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdLoadListener;

    .line 68
    .line 69
    aput-object v7, v6, v0

    .line 70
    .line 71
    invoke-static {v4, v5, v6}, Lcom/bytedance/sdk/component/utils/ley;->Sj(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$3$1;->sP:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 82
    .line 83
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/HiB/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/HiB;

    .line 84
    .line 85
    new-array v3, v3, [Ljava/lang/Object;

    .line 86
    .line 87
    aput-object v5, v3, v2

    .line 88
    .line 89
    aput-object v6, v3, v1

    .line 90
    .line 91
    aput-object v7, v3, v0

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    :catchall_0
    :cond_3
    return-void
.end method
