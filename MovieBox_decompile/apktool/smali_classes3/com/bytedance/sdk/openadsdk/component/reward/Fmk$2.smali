.class Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$2;
.super Lx5/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;Lcom/bytedance/sdk/openadsdk/component/reward/Zq;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Zq;

.field final synthetic sP:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;ZLcom/bytedance/sdk/openadsdk/component/reward/Zq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$2;->EjP:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$2;->sP:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Zq;

    .line 8
    .line 9
    invoke-direct {p0}, Lx5/b;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$2;->sP:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TzV()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Zq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->Sj()Lcom/bytedance/sdk/openadsdk/component/reward/Dq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;->Sj(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$2;->sP:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TzV()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;->onError(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
