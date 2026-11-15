.class public Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;
.super Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
.source "source.java"

# interfaces
.implements Lw5/b$a;
.implements Lw5/b$c;


# instance fields
.field EjP:I

.field HiB:Z

.field private JcM:J

.field Jcg:I

.field private LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

.field private Mts:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

.field Sj:I

.field TKC:Z

.field private WMZ:J

.field private fF:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

.field sP:Z

.field vS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v5, 0x0

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
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP:Z

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->HiB:Z

    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->vS:Z

    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Jcg:I

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Jcg()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;)Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->fF:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;Z)Z
    .locals 11

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->vS()D

    move-result-wide v0

    .line 14
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Jcg()D

    move-result-wide v2

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Dq()D

    move-result-wide v4

    .line 16
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->uA()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v4, v8

    if-eqz v10, :cond_0

    cmpl-double v8, v6, v8

    if-nez v8, :cond_1

    .line 17
    :cond_0
    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Jcg:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_1

    const/16 v9, 0xa

    if-eq v8, v9, :cond_1

    const/16 v9, 0x9

    if-eq v8, v9, :cond_1

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_1
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v0, v0

    invoke-static {v8, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v1

    .line 20
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v3, v4

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    .line 21
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v4, v6

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    .line 22
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->aa()F

    move-result v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    .line 23
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Fmk()F

    move-result v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    .line 24
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sef()F

    move-result v7

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    .line 25
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Zq()F

    move-result p1

    invoke-static {v7, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 27
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v4, :cond_2

    .line 28
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29
    :cond_2
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 30
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 31
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 32
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 33
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 34
    iget v0, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/view/View;F)V

    .line 37
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 38
    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->Sj(II)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;Lcom/bytedance/sdk/component/adexpress/sP/sef;Z)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;Z)Z

    move-result p0

    return p0
.end method

.method private TKC(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 6
    .param p1    # Lcom/bytedance/sdk/component/adexpress/sP/sef;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-eqz v1, :cond_6

    .line 4
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Jcg:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    :cond_1
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    if-eqz v1, :cond_2

    .line 5
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;->uvD()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->vS:Z

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj;->vS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->vS:Z

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(JZZ)Z

    .line 16
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->EjP:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->EjP(I)V

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TzV;->EjP(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->HiB:Z

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->HiB()V

    .line 19
    :cond_5
    const-string p1, "embeded_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 20
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->setShowAdInteractionView(Z)V

    :cond_6
    return-void
.end method

.method private dNu()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->fF:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    .line 7
    .line 8
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->wE:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->setShouldCheckNetChange(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 28
    .line 29
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$2;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setVideoAdLoadListener(Lw5/b$a;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setVideoAdInteractionListener(Lw5/b$c;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "embeded_ad"

    .line 48
    .line 49
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v1, 0x1

    .line 56
    const-string v2, "open_ad"

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 61
    .line 62
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP:Z

    .line 63
    .line 64
    if-eqz v3, :cond_0

    .line 65
    .line 66
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isAutoPlay()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    .line 74
    .line 75
    :goto_0
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setIsAutoPlay(Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setIsAutoPlay(Z)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 94
    .line 95
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setIsAutoPlay(Z)V

    .line 98
    .line 99
    .line 100
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    const-string v2, "initVideo"

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 111
    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZLjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->EjP:I

    .line 121
    .line 122
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TKC(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    .line 131
    .line 132
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 133
    .line 134
    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZLjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->EjP()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :catch_0
    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 145
    .line 146
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;)Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    return-object p0
.end method

.method private sP(JJ)V
    .locals 5

    .line 4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    if-ltz v1, :cond_2

    const/16 v2, 0x1f4

    if-gt v0, v2, :cond_2

    int-to-long v3, v1

    cmp-long p3, v3, p3

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    if-ge v0, v2, :cond_2

    .line 6
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sU:Ljava/util/HashSet;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->RiZ:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 7
    iget p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    int-to-long p3, p3

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    .line 8
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;)V

    int-to-long p2, v0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->setCanInterruptVideoPlay(Z)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 11
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->RiZ:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP(ILjava/lang/String;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sU:Ljava/util/HashSet;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->RiZ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private sP(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setShowAdInteractionView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->setShowAdInteractionView(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public EjP()I
    .locals 2

    .line 16
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->EjP()V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lw5/b;

    move-result-object v0

    invoke-interface {v0}, Lw5/b;->uvD()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 20
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    return v0
.end method

.method EjP(I)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP:Z

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v2, p1, :cond_1

    .line 4
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP:Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    move-result v2

    if-ne v3, p1, :cond_2

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP:Z

    .line 7
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v4, p1, :cond_4

    .line 8
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->HiB(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    :cond_3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP:Z

    .line 10
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    if-ne v4, p1, :cond_6

    .line 11
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    :cond_5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP:Z

    .line 13
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    .line 14
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->TKC:Z

    if-nez p1, :cond_7

    .line 15
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    :cond_7
    return-void
.end method

.method public HiB()V
    .locals 0

    .line 1
    return-void
.end method

.method protected Jcg()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->EjP:I

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->EjP(I)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->dNu()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    const/4 v3, -0x1

    .line 34
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getWebView()Lcom/bytedance/sdk/component/uA/vS;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getWebView()Lcom/bytedance/sdk/component/uA/vS;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setBackgroundColor(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setVideoFrameChangeListener(Lcom/bytedance/sdk/openadsdk/aa/Jcg;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public Sj()V
    .locals 0

    .line 1
    return-void
.end method

.method public Sj(I)V
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_3

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2

    const/4 v5, 0x5

    if-eq p1, v5, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(JZZ)Z

    :goto_0
    return-void

    .line 44
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lw5/b;

    move-result-object p1

    invoke-interface {p1}, Lw5/b;->EjP()V

    return-void

    .line 45
    :cond_3
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->setCanInterruptVideoPlay(Z)V

    .line 46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void

    .line 47
    :cond_4
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(JZZ)Z

    return-void
.end method

.method public Sj(II)V
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->WMZ:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->JcM:J

    const/4 v0, 0x4

    .line 65
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Mts:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->Sj(II)V

    :cond_0
    return-void
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    .line 69
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->RiZ:Ljava/lang/String;

    return-void
.end method

.method public Sj(JJ)V
    .locals 3

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->HiB:Z

    .line 55
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->JcM:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    .line 56
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    .line 57
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->JcM:J

    .line 58
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->WMZ:J

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    move-result-object v0

    sub-long v1, p3, p1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;->setTimeUpdate(I)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    if-eqz v1, :cond_2

    .line 62
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    sub-long v1, p3, p1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->setTimeUpdate(I)V

    .line 63
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP(JJ)V

    return-void
.end method

.method public Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ne p2, v0, :cond_2

    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 49
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;->setCanInterruptVideoPlay(Z)V

    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 51
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fmk:Z

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    sget p2, Lcom/bytedance/sdk/openadsdk/utils/Zq;->vb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void

    .line 53
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V

    :cond_3
    :goto_0
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

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    .line 6
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Jcg:I

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    :cond_0
    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->TKC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->sP(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    .line 12
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void
.end method

.method public Sj(ZLjava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZLjava/lang/String;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setSoundMute(Z)V

    :cond_0
    return-void
.end method

.method public TKC()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->JcM:J

    return-wide v0
.end method

.method public d_()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->HiB:Z

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Mts:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public g_()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->HiB:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fmk:Z

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Mts:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected getExpressVideoView()Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoAdListener()Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Mts:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoController()Lw5/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->LD:Lcom/bytedance/sdk/openadsdk/core/Dq/Zq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lw5/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->fF:Lcom/bytedance/sdk/openadsdk/multipro/sP/Sj;

    .line 2
    .line 3
    return-object v0
.end method

.method public h_()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->HiB:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fmk:Z

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    .line 8
    .line 9
    return-void
.end method

.method public i_()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->HiB:Z

    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;->onvideoComplate()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Mts:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    .line 35
    .line 36
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->onvideoComplate()V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public sP()V
    .locals 0

    .line 1
    return-void
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Mts:Lcom/bytedance/sdk/openadsdk/Sj/sP/TKC;

    .line 2
    .line 3
    return-void
.end method
