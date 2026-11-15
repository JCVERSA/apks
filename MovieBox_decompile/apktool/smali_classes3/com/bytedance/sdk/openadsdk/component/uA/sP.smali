.class public Lcom/bytedance/sdk/openadsdk/component/uA/sP;
.super Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
.source "source.java"


# instance fields
.field private final EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

.field private HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

.field private Jcg:Landroid/widget/FrameLayout;

.field private LD:Lw5/b$b;

.field Sj:Z

.field private final TKC:Lcom/bytedance/sdk/openadsdk/component/vS/sP;

.field private final sP:Lcom/bytedance/sdk/openadsdk/component/Sj;

.field private vS:Lcom/bytedance/sdk/openadsdk/component/vS/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/Sj;Lcom/bytedance/sdk/openadsdk/component/vS/sP;Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v5, 0x1

    .line 2
    const/4 v6, 0x1

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;ZZ)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Sj:Z

    .line 13
    .line 14
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->sP:Lcom/bytedance/sdk/openadsdk/component/Sj;

    .line 15
    .line 16
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS/sP;

    .line 17
    .line 18
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    .line 19
    .line 20
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/uA/sP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->TKC(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void
.end method

.method private TKC(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x11

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Sj:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj;->vS:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Jcg:Landroid/widget/FrameLayout;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Sj:Z

    :cond_1
    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->vS()D

    move-result-wide v2

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Jcg()D

    move-result-wide v4

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Dq()D

    move-result-wide v6

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->uA()D

    move-result-wide v8

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v2, v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    .line 13
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v3, v4

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    .line 14
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v4, v6

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    .line 15
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v5, v8

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    const-wide/16 v10, 0x0

    cmpl-double v5, v8, v10

    const/16 v8, 0xa

    const/4 v9, 0x7

    if-eqz v5, :cond_3

    cmpl-double v5, v6, v10

    if-nez v5, :cond_4

    .line 16
    :cond_3
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    invoke-interface {v5}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v5

    if-eq v5, v9, :cond_4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    invoke-interface {v5}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v5

    if-eq v5, v8, :cond_4

    return-void

    .line 17
    :cond_4
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    invoke-interface {v5}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v5

    if-eq v5, v9, :cond_5

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    invoke-interface {v5}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v5

    if-ne v5, v8, :cond_7

    :cond_5
    instance-of v5, p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    if-eqz v5, :cond_7

    .line 18
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;->uvD()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 19
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 20
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Jcg:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Jcg:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p1, :cond_8

    .line 23
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 24
    :cond_8
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 25
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 26
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 27
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 29
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Jcg:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public EjP()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->vS()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->HiB()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    return v0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->sP()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    const/4 v0, 0x4

    .line 48
    return v0

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->TKC()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    const/4 v0, 0x5

    .line 60
    return v0

    .line 61
    :cond_4
    return v1
.end method

.method public HiB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->vS:Lcom/bytedance/sdk/openadsdk/component/vS/Sj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/vS/Sj;->sP(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public Sj()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->vS:Lcom/bytedance/sdk/openadsdk/component/vS/Sj;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/vS/Sj;->Sj(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public Sj(I)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->uA()V

    :goto_0
    return-void

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Dq()V

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->TKC()V

    return-void

    .line 15
    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Jcg()V

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->EjP()V

    return-void

    .line 17
    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->HiB()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->sP:Lcom/bytedance/sdk/openadsdk/component/Sj;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB()V

    return-void

    .line 20
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/adexpress/sP/EjP<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/component/adexpress/sP/sef;",
            ")V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    .line 4
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->TKC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->sP(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    .line 8
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void
.end method

.method protected Sj(Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    return-void
.end method

.method protected Sj(Lorg/json/JSONObject;)V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fF()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 24
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v1

    :goto_1
    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->Sj(Lorg/json/JSONObject;IZ)V

    return-void
.end method

.method public TKC()J
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;->sP()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDynamicShowType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getDynamicShowType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method protected getRenderTimeout()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Jcg(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0
.end method

.method public getVideoFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Jcg:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP()V

    return-void
.end method

.method public sP(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/uA/sP$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/uA/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/uA/sP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setExpressVideoListenerProxy(Lw5/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->LD:Lw5/b$b;

    .line 2
    .line 3
    return-void
.end method

.method public setTopListener(Lcom/bytedance/sdk/openadsdk/component/vS/Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->vS:Lcom/bytedance/sdk/openadsdk/component/vS/Sj;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoManager(Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    .line 2
    .line 3
    return-void
.end method

.method protected vS()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sef:Z

    .line 3
    .line 4
    new-instance v0, Landroid/widget/FrameLayout;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Jcg:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/sP;->Jcg:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    const/4 v2, -0x1

    .line 34
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS()V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/uA/sP$1;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/uA/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/uA/sP;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setVideoFrameChangeListener(Lcom/bytedance/sdk/openadsdk/aa/Jcg;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
