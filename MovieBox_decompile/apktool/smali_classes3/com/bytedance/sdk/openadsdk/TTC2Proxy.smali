.class public Lcom/bytedance/sdk/openadsdk/TTC2Proxy;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->Sj(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static load(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setDurationSlotType(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/common/vS;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
