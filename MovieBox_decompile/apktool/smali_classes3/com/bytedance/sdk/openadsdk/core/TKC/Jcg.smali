.class public Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;
.super Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;
.source "source.java"

# interfaces
.implements Lw5/b$a;
.implements Lw5/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;
    }
.end annotation


# instance fields
.field private Fmk:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

.field private RiZ:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

.field public Sj:Z

.field private TzV:J

.field private Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

.field private dNu:Ljava/lang/String;

.field private sef:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

.field private uvD:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Sj:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->vS:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    return-object p0
.end method

.method private HiB()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Fmk:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getExpectExpressWidth()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Fmk:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 3
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getExpectExpressHeight()I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->Sj(II)Lcom/bytedance/sdk/openadsdk/core/Dq/dNu;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Fmk:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getExpectExpressWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Fmk:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getExpectExpressHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Fmk:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getExpectExpressWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Jcg:I

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Fmk:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getExpectExpressHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Dq:I

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Jcg:I

    int-to-float v1, v1

    .line 10
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/dNu;->sP:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Dq:I

    .line 11
    :goto_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Jcg:I

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Jcg:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 13
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Jcg:I

    .line 14
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Dq:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Dq:I

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_2

    .line 16
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Jcg:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Dq:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 17
    :cond_2
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Jcg:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Dq:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 19
    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_3

    .line 20
    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 21
    :cond_3
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/dNu;)V

    return-void
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->RiZ:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    return-object p0
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/dNu;)V
    .locals 9

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_c

    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v0

    .line 15
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/core/Dq/dNu;)Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 16
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->Sj:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 17
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 19
    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->HiB:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 20
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 21
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aa()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    .line 22
    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41300000    # 11.0f

    invoke-static {v6, v7, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/content/Context;FZ)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5, v6, v3, v7}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(ILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 24
    :cond_1
    iget-object v5, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    iput-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->uvD:Landroid/widget/ImageView;

    .line 25
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->getVideoView()Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    move-result-object v5

    .line 26
    instance-of v6, v5, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    if-eqz v6, :cond_2

    .line 27
    iput-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    .line 28
    invoke-virtual {v5, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setVideoAdLoadListener(Lw5/b$a;)V

    .line 29
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    invoke-virtual {v6, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setVideoAdInteractionListener(Lw5/b$c;)V

    .line 30
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v7, Landroid/util/Pair;

    sget-object v8, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-direct {v7, v1, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v7, Landroid/util/Pair;

    sget-object v8, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-direct {v7, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v3, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v3, Landroid/util/Pair;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->uvD:Landroid/widget/ImageView;

    sget-object v8, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->VIDEO_CONTROLS:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-direct {v3, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 36
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$1;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)V

    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->setAdCreativeClickListener(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 37
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$2;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v1, :cond_5

    .line 38
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Fmk:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v2, :cond_5

    .line 40
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getClickListener()Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 41
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Fmk:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getClickListener()Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sP(Landroid/view/View;)V

    .line 42
    :cond_4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Fmk:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getClickCreativeListener()Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 43
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Fmk:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getClickCreativeListener()Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sP(Landroid/view/View;)V

    .line 44
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->uvD:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 45
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    :cond_6
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/widget/Ym;

    .line 47
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v1

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->aa()I

    move-result v1

    .line 49
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Fmk()I

    move-result v2

    int-to-float v2, v2

    if-lez v1, :cond_7

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_7

    int-to-float v0, v1

    div-float/2addr v0, v2

    .line 50
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Ym;->setRatio(F)V

    goto :goto_0

    :cond_7
    const/16 v1, 0xf

    if-ne v0, v1, :cond_8

    const/high16 v0, 0x3f100000    # 0.5625f

    .line 51
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Ym;->setRatio(F)V

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const v0, 0x3fe38e39

    .line 52
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Ym;->setRatio(F)V

    goto :goto_0

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Ym;->setRatio(F)V

    .line 54
    :cond_a
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz v5, :cond_b

    if-eqz p1, :cond_b

    .line 55
    invoke-virtual {p1, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v1, 0x1f000042

    invoke-virtual {v5, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 57
    :cond_b
    invoke-virtual {p0, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Sj(Landroid/view/View;Z)V

    .line 58
    invoke-virtual {p0, p0, v4}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Sj(Landroid/view/View;Z)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->Sj(Landroid/view/View;)V

    :cond_c
    :goto_1
    return-void
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->TzV:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic aa(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    return-object p0
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/core/Dq/dNu;)Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;
    .locals 9

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$1;)V

    .line 3
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->Sj:Landroid/widget/FrameLayout;

    .line 4
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v3, -0x1

    .line 5
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->Sj:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/Ym;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/Ym;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/widget/Ym;

    .line 9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 10
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/widget/Ym;

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->Sj:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/widget/Ym;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v1

    .line 14
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    .line 15
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    const/high16 v5, 0x40100000    # 2.25f

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    .line 16
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    .line 17
    iget v7, p1, Lcom/bytedance/sdk/openadsdk/core/Dq/dNu;->Sj:I

    if-ne v7, v6, :cond_0

    move v1, v3

    :cond_0
    if-eqz p1, :cond_1

    .line 18
    iget v3, p1, Lcom/bytedance/sdk/openadsdk/core/Dq/dNu;->Sj:I

    if-ne v3, v6, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    .line 19
    :goto_0
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 20
    invoke-virtual {v3, v4, v4, v4, v4}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setPadding(IIII)V

    .line 21
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/EjP;->Sj()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 23
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 24
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 25
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "tt_reward_full_mute"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->Sj:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_2

    .line 28
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/Dq/dNu;->Sj:I

    if-ne p1, v6, :cond_2

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->sP(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 31
    :goto_1
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    const v1, 0x1f000001

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 32
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800005

    .line 33
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 34
    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 35
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->Sj:Landroid/widget/FrameLayout;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->createPAGLogoViewByMaterial(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->HiB:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 38
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800053

    .line 39
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 40
    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 41
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->HiB:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->Sj:Landroid/widget/FrameLayout;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->HiB:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->sP:Landroid/content/Context;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result p1

    .line 45
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const p1, 0x800055

    .line 46
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 47
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 48
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 49
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->Sj:Landroid/widget/FrameLayout;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->uvD:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj()V

    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->dNu:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    return-void
.end method

.method public Sj(II)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->uvD:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    .line 66
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public Sj(JJ)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->TzV:J

    return-void
.end method

.method protected Sj(Landroid/view/View;ILcom/bytedance/sdk/openadsdk/core/model/sef;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Fmk:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lw5/b;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lw5/b;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->WMZ()V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V
    .locals 1

    const/high16 v0, -0x1000000

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Fmk:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 9
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->sef:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    .line 10
    const-string p1, "banner_ad"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->vS:Ljava/lang/String;

    .line 11
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->HiB()V

    return-void
.end method

.method public d_()V
    .locals 0

    .line 1
    return-void
.end method

.method public g_()V
    .locals 0

    .line 1
    return-void
.end method

.method public getVideoProgress()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->TzV:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public h_()V
    .locals 0

    .line 1
    return-void
.end method

.method public i_()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->uvD:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->RiZ:Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 2
    .line 3
    return-void
.end method

.method public setClosedListenerKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->dNu:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
