.class public Lcom/bytedance/sdk/openadsdk/core/widget/TKC;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
.source "source.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TKC;->Sj()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private Sj()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Ss:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    return-void
.end method


# virtual methods
.method public Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 3

    .line 3
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float p1, p1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/content/Context;FZ)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(ILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_1
    return-void
.end method
