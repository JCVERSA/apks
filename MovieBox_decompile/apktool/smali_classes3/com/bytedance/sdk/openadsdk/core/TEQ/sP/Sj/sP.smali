.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/sP;
.super Lcom/bytedance/adsdk/sP/vS;
.source "source.java"


# instance fields
.field private Sj:Lcom/bytedance/adsdk/ugeno/EjP;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/vS;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/adsdk/ugeno/EjP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/sP;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    .line 2
    .line 3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/sP/vS;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/sP;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/EjP;->Jcg()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/sP/vS;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/sP;->Sj:Lcom/bytedance/adsdk/ugeno/EjP;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/EjP;->Dq()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
