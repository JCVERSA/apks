.class public Lcom/bytedance/sdk/openadsdk/kF/sP/TKC;
.super Lcom/bytedance/sdk/openadsdk/kF/sP/sP;
.source "source.java"


# instance fields
.field private EjP:I


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V
    .locals 6

    .line 1
    const/16 v4, 0x3e8

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;-><init>(Ljava/lang/Integer;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/TKC;->EjP:I

    .line 13
    .line 14
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/kF/sP/TKC;->sP(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private sP(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez v0, :cond_1

    if-lez p1, :cond_1

    mul-int/2addr v0, p1

    const p1, 0x3b344

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/TKC;->EjP:I

    :cond_1
    return-void
.end method


# virtual methods
.method protected EjP()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->EjP()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected TKC()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Sj:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->Sj:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/View;

    .line 19
    .line 20
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/TKC;->EjP:I

    .line 21
    .line 22
    const/4 v3, -0x1

    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/kF/sP/TKC;->sP(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/TKC;->EjP:I

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-ne v2, v3, :cond_1

    .line 32
    .line 33
    move v1, v3

    .line 34
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/kF/sP/vS;->Sj(Landroid/view/View;ZI)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0

    .line 45
    :cond_2
    return v1
.end method

.method protected sP(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public vS()I
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    return v0
.end method
