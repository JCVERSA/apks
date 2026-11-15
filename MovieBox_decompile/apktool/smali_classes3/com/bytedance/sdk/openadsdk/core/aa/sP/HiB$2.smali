.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;
.super Lcom/bytedance/sdk/openadsdk/core/sP/Sj;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->aa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public TKC()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TEQ:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->aa:Landroid/view/View;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sef:Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    :cond_3
    const/4 v0, 0x1

    .line 50
    return v0

    .line 51
    :cond_4
    const/4 v0, 0x0

    .line 52
    return v0
.end method

.method public sP()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/TzV;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TzV;->Sj()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->HiB:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    return v1

    .line 35
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 36
    return v0
.end method
