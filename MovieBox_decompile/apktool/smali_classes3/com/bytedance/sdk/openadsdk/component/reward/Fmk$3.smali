.class Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/RiZ$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:J

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

.field final synthetic Sj:Z

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;ZLcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->Sj:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->sP:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->EjP:J

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->Sj:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->sP:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V
    .locals 10

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p2, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->Sj:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->Sj()Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    :goto_0
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->EjP:J

    sub-long/2addr v3, v5

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;J)V

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Jcg()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->sP:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TzV()I

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->sP:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Zq;->Sj()Lcom/bytedance/sdk/openadsdk/component/reward/Dq;

    move-result-object v7

    const/4 v8, 0x0

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;Z)V

    .line 13
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/Fmk/Sj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/Fmk/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 14
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;

    new-instance v9, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$Sj;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->sP:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Z)V

    invoke-direct {v0, v9, p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;-><init>(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$1;)V

    move v9, v1

    .line 15
    :goto_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_3

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->Sj:Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Jcg()Z

    move-result v8

    move-object v2, p1

    move-object v4, p2

    move-object v7, v0

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Fmk;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/Zq;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/component/reward/Fmk$TKC;Z)V

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->aa()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 18
    :cond_4
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->Sj:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Fmk$3;->sP:Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdLoadListener;

    if-eqz p1, :cond_5

    const/4 v0, -0x3

    .line 19
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/PAGLoadListener;->onError(ILjava/lang/String;)V

    .line 20
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(I)V

    .line 21
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TKC;)V

    :cond_5
    return-void
.end method
