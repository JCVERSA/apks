.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;
.super Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
.source "source.java"


# static fields
.field public static Sj:F = 100.0f


# instance fields
.field public EjP:I

.field private final HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/uvD;

.field sP:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

.field private vS:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 2
    .line 3
    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    iget-boolean v5, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 6
    .line 7
    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    .line 8
    .line 9
    const/4 v7, 0x1

    .line 10
    xor-int/lit8 v6, v0, 0x1

    .line 11
    .line 12
    move-object v0, p0

    .line 13
    move-object v3, p2

    .line 14
    move-object v4, p3

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;ZZ)V

    .line 16
    .line 17
    .line 18
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->EjP:I

    .line 19
    .line 20
    const/high16 p2, -0x40800000    # -1.0f

    .line 21
    .line 22
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->vS:F

    .line 23
    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 25
    .line 26
    return-void
.end method

.method private Jcg()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setBackupListener(Lcom/bytedance/sdk/component/adexpress/sP/TKC;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->TKC(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void
.end method

.method private TKC(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->vS()D

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Jcg()D

    move-result-wide v2

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Dq()D

    move-result-wide v4

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->uA()D

    move-result-wide v6

    .line 5
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v0, v0

    invoke-static {v8, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v3, v4

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    .line 8
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    double-to-float v8, v6

    invoke-static {v3, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    const/16 v7, 0xa

    const/4 v10, 0x7

    if-eqz v6, :cond_1

    cmpl-double v4, v4, v8

    if-nez v4, :cond_2

    .line 9
    :cond_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    invoke-interface {v4}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v4

    if-eq v4, v10, :cond_2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    invoke-interface {v4}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v4

    if-eq v4, v7, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    invoke-interface {v4}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v4

    if-eq v4, v10, :cond_3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    invoke-interface {v4}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v4

    if-ne v4, v7, :cond_5

    :cond_3
    instance-of v4, p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    if-eqz v4, :cond_5

    .line 11
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;->uvD()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 13
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p1, :cond_6

    .line 16
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 17
    :cond_6
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 18
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 19
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 20
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 22
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    return-object p0
.end method


# virtual methods
.method public EjP()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->EjP()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public HiB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->HiB()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public Sj()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->Sj()V

    :cond_0
    return-void
.end method

.method public Sj(I)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->Sj(I)V

    :cond_0
    return-void
.end method

.method public Sj(ILcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->Sj(ILcom/bytedance/sdk/component/adexpress/sP/sef;)V

    :cond_0
    return-void
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->Sj(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->HiB()V

    return-void

    .line 27
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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->TKC()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    .line 10
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->EjP:I

    .line 11
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 14
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public Sj(ZLjava/lang/String;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->Sj(ZLjava/lang/String;)V

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setSoundMute(Z)V

    return-void
.end method

.method protected Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)Z
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/dx;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dx;->Qne()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->TKC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sP()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)Z

    move-result p1

    return p1
.end method

.method public TKC()J
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->TKC()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected TKC(I)Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;
    .locals 2

    .line 26
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TKC(I)Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gR:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz v1, :cond_1

    .line 28
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ir:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;)I

    move-result v0

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;->sP:I

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/vS;->uA:I

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;->sP:I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->HiB:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Zq:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->vS:F

    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->vS:F

    .line 38
    .line 39
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(FFLandroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x5

    .line 48
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj(I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    return p1
.end method

.method public getBackupContainerBackgroundView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fmk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/uvD;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/uvD;->getBackupContainerBackgroundView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getVideoFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fmk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/Dq/uvD;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/uvD;->getVideoContainer()Landroid/widget/FrameLayout;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    return-object v0
.end method

.method public sP()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->sP()V

    :cond_0
    return-void
.end method

.method public sP(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/sef;->sP(I)V

    :cond_0
    return-void
.end method

.method public sP(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setExpressVideoListenerProxy(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

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
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

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
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getWebView()Lcom/bytedance/sdk/component/uA/vS;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setBackgroundColor(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;->Jcg()V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$1;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/sP;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setVideoFrameChangeListener(Lcom/bytedance/sdk/openadsdk/aa/Jcg;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
