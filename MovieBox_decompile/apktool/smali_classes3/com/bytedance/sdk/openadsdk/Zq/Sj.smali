.class public Lcom/bytedance/sdk/openadsdk/Zq/Sj;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static Sj()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->vS()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/Sj$1;

    .line 8
    .line 9
    const-string v1, "DailyTaskHelper"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj$1;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/Sj;->TKC()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static TKC()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->sP()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/vS;->Sj()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/zR;->Sj()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method static synthetic sP()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/Sj;->TKC()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
