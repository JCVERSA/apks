.class Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;
.super Lx5/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/Zq;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

.field final synthetic Jcg:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Zq;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic sP:Z

.field final synthetic vS:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;Lcom/bytedance/sdk/openadsdk/component/reward/Zq;ZLcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->Jcg:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Zq;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->sP:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->vS:Z

    .line 14
    .line 15
    invoke-direct {p0}, Lx5/b;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Zq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->sP()V

    .line 2
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->sP:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->Jcg:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/aa;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/aa;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->vS:Z

    if-nez p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TzV()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Zq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->Sj()Lcom/bytedance/sdk/openadsdk/component/reward/Dq;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;->Sj(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;)V

    :cond_2
    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V
    .locals 1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->vS:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TzV()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$5;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;->onError(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
