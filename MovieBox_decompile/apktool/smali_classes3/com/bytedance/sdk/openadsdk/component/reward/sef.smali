.class Lcom/bytedance/sdk/openadsdk/component/reward/sef;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTClientBidding;


# instance fields
.field private final Sj:Lcom/bytedance/sdk/openadsdk/component/reward/vS;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/vS;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sef;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/vS;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/openadsdk/component/reward/vS;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sef;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/vS;

    return-object v0
.end method

.method public Sj(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sef;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/vS;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Sj(Z)V

    return-void
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sef;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/vS;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sP()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sef;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/vS;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->Sj()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sef;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/vS;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/vS;->win(Ljava/lang/Double;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
