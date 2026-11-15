.class public Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/HiB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TKC"
.end annotation


# instance fields
.field protected Sj:I

.field private sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->Sj:I

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    .line 12
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->Sj:I

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->EjP()V

    .line 14
    :cond_0
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->Sj:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    return-void
.end method

.method public Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/webkit/WebView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->Sj:I

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Landroid/webkit/WebView;)V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->sP()V

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->Sj:I

    :cond_2
    return-void
.end method

.method public Sj(Z)V
    .locals 2

    .line 7
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->Sj:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->TKC()V

    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->Sj:I

    :cond_0
    return-void
.end method

.method public sP()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/HiB$TKC;->Sj()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
