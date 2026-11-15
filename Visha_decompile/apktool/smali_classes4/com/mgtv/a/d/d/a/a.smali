.class public Lcom/mgtv/a/d/d/a/a;
.super Lcom/mgtv/a/d/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/a/d/b/a<",
        "Lcom/mgmi/model/VASTFloatAd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field protected b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mgtv/a/d/b/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgtv/a/d/d/a/a;->a:I

    return-void
.end method

.method private a(Lcom/mgmi/model/VASTFloatAd;Landroid/view/LayoutInflater;)Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;
    .locals 3

    .line 68
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getECommerce()Le9d;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getECommerce()Le9d;

    move-result-object v0

    invoke-virtual {v0}, Le9d;->a()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->i()Z

    move-result p0

    const/4 v2, 0x2

    if-eqz p0, :cond_4

    if-ne v0, v2, :cond_2

    .line 71
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getECommerce()Le9d;

    move-result-object p0

    invoke-virtual {p0}, Le9d;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 72
    sget p0, Lcom/mgmi/R$layout;->mgmi_connerview_layout_electronic_si:I

    invoke-virtual {p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;

    return-object p0

    .line 73
    :cond_1
    sget p0, Lcom/mgmi/R$layout;->mgmi_connerview_layout_electronic:I

    invoke-virtual {p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;

    return-object p0

    .line 74
    :cond_2
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getECommerce()Le9d;

    move-result-object p0

    invoke-virtual {p0}, Le9d;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 75
    sget p0, Lcom/mgmi/R$layout;->mgmi_connerview_layout_horizotal_electronic_si:I

    invoke-virtual {p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;

    return-object p0

    .line 76
    :cond_3
    sget p0, Lcom/mgmi/R$layout;->mgmi_connerview_layout_horizotal_electronic:I

    invoke-virtual {p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;

    return-object p0

    :cond_4
    if-ne v0, v2, :cond_6

    .line 77
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getECommerce()Le9d;

    move-result-object p0

    invoke-virtual {p0}, Le9d;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 78
    sget p0, Lcom/mgmi/R$layout;->mgmi_connerview_layout_electronic_harlfscreen_si:I

    invoke-virtual {p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;

    return-object p0

    .line 79
    :cond_5
    sget p0, Lcom/mgmi/R$layout;->mgmi_connerview_layout_electronic_harlfscreen:I

    invoke-virtual {p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;

    return-object p0

    .line 80
    :cond_6
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getECommerce()Le9d;

    move-result-object p0

    invoke-virtual {p0}, Le9d;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 81
    sget p0, Lcom/mgmi/R$layout;->mgmi_connerview_layout_horizotal_electronic_harlfscreen_si:I

    invoke-virtual {p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;

    return-object p0

    .line 82
    :cond_7
    sget p0, Lcom/mgmi/R$layout;->mgmi_connerview_layout_horizotal_electronic_harlfscreen:I

    invoke-virtual {p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method private b(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 3
    sget p1, Lcom/mgmi/R$layout;->mgmi_marquee_corner_layout:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;

    .line 4
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lcom/mgadplus/viewgroup/dynamicview/MarqueeCornerView;->prepareContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup$MarginLayoutParams;)Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;

    return-object p0
.end method

.method private b(Lcom/mgmi/model/VASTFloatAd;Landroid/view/LayoutInflater;)Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;
    .locals 1

    .line 7
    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getVoteMessage()Lcom/mgmi/model/t;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->i()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9
    sget p0, Lcom/mgmi/R$layout;->vote_float_fullscreen:I

    invoke-virtual {p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->setFullSreen(Z)V

    return-object p0

    .line 11
    :cond_1
    sget p0, Lcom/mgmi/R$layout;->vote_float_harfscreen:I

    invoke-virtual {p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->setFullSreen(Z)V

    return-object p0
.end method

.method public static synthetic b(Lcom/mgtv/a/d/d/a/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    return-object p0
.end method

.method private c(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1

    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 12
    sget p1, Lcom/mgmi/R$layout;->mgmi_bubble_layout:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic c(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method private c(Lcom/mgmi/model/VASTFloatAd;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isShowAdLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdOrigin()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/mgtv/a/d/d/a/a;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 7
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/mgtv/a/d/d/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/mgmi/R$string;->mgmi_template_ad:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/d/d/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mgmi/R$string;->mgmi_adform_dsc:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_1
    iget-object p0, p0, Lcom/mgtv/a/d/d/a/a;->b:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Ll4d;->f(Landroid/view/View;I)Z

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic e(Lcom/mgtv/a/d/d/a/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic f(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic g(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic h(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic i(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic j(Lcom/mgtv/a/d/d/a/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 62
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    instance-of v0, p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;

    if-eqz v0, :cond_0

    .line 63
    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->c()V

    goto :goto_0

    .line 64
    :cond_0
    instance-of v0, p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;

    if-eqz v0, :cond_1

    .line 65
    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/AutoplayerLayout;->appear(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcom/mgtv/a/d/d/a/a;->c(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    goto/16 :goto_3

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgmi/R$layout;->mgmi_connerview_layout_large_icon:I

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;

    .line 9
    invoke-virtual {v4, v1}, Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;->a(I)Lcom/mgadplus/viewgroup/dynamicview/LargeIconCornerView;

    .line 10
    sget p1, Lcom/mgmi/R$id;->image_container:I

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 11
    sget p1, Lcom/mgmi/R$id;->closeAdIcon:I

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    .line 12
    iput-object v4, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    goto/16 :goto_3

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 14
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgmi/R$layout;->mgmi_connerview_layout_fling:I

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/mgadplus/viewgroup/dynamicview/FlingCornerView;

    .line 15
    invoke-virtual {v4, v3}, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;->setCloseAnimation(Z)V

    .line 16
    sget p1, Lcom/mgmi/R$id;->image_container:I

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 17
    sget p1, Lcom/mgmi/R$id;->closeAdIcon:I

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    .line 18
    iput-object v4, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    goto/16 :goto_3

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 20
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgmi/R$layout;->mgmi_connerview_layout:I

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;

    :goto_0
    move-object v4, p1

    goto :goto_1

    .line 22
    :cond_6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgmi/R$layout;->mgmi_connerview_layout_harfscreen:I

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/FlipRelative;

    goto :goto_0

    .line 23
    :goto_1
    sget p1, Lcom/mgmi/R$id;->image_container:I

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 24
    sget p1, Lcom/mgmi/R$id;->closeAdIcon:I

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    .line 25
    iput-object v4, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    goto/16 :goto_3

    .line 26
    :cond_7
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 27
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/mgtv/a/d/d/a/a;->a(Lcom/mgmi/model/VASTFloatAd;Landroid/view/LayoutInflater;)Lcom/mgadplus/viewgroup/dynamicview/Electroniclayout;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 28
    sget v0, Lcom/mgmi/R$id;->image_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 29
    sget v0, Lcom/mgmi/R$id;->closeAdIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    .line 30
    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    goto/16 :goto_3

    .line 31
    :cond_8
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    .line 32
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/mgtv/a/d/d/a/a;->b(Lcom/mgmi/model/VASTFloatAd;Landroid/view/LayoutInflater;)Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 33
    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 34
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mgadplus/viewgroup/dynamicview/VoteFloatView;->setFullSreen(Z)V

    .line 35
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v1, Lcom/mgmi/R$id;->mainBg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 36
    sget v0, Lcom/mgmi/R$id;->closeAdIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    move-object v4, p1

    goto :goto_3

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_a

    .line 38
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->i()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 39
    invoke-direct {p0, p1}, Lcom/mgtv/a/d/d/a/a;->b(Landroid/content/Context;)Landroid/view/ViewGroup;

    goto :goto_3

    .line 40
    :cond_a
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getAdStyle()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    .line 41
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgmi/R$layout;->mgmi_corner_web_layout:I

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    .line 42
    sget v0, Lcom/mgmi/R$id;->web_corner_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 43
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->web_corner_close_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 44
    :cond_b
    :goto_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgmi/R$layout;->mgmi_connerview_layout_prepic:I

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;

    .line 45
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->i()Z

    move-result p1

    invoke-virtual {v4, p1}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->setFullScreen(Z)V

    .line 46
    sget p1, Lcom/mgmi/R$id;->image_container:I

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    .line 47
    sget p1, Lcom/mgmi/R$id;->closeAdIcon:I

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    .line 48
    iput-object v4, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    :catchall_0
    :cond_c
    :goto_3
    if-eqz v4, :cond_d

    .line 49
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    invoke-interface {v4, p1}, Lcom/mgadplus/viewgroup/dynamicview/a;->bindData(Ljava/lang/Object;)V

    :cond_d
    const/4 p1, 0x0

    if-eqz v4, :cond_e

    .line 50
    invoke-virtual {v4}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->a()V

    .line 51
    new-instance v0, Lcom/mgtv/a/d/d/a/a$1;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/d/a/a$1;-><init>(Lcom/mgtv/a/d/d/a/a;)V

    invoke-virtual {v4, p1, v0}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->setOnFlipTouchEvent(ZLly3;)V

    .line 52
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    if-eqz v0, :cond_e

    .line 53
    invoke-interface {v0}, Lcom/mgtv/a/d/b/d;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->setScropContainerWidth(I)V

    .line 54
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->v:Lcom/mgtv/a/d/b/d;

    invoke-interface {v0}, Lcom/mgtv/a/d/b/d;->a()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/mgadplus/viewgroup/dynamicview/FlipFramelayout;->setScropContainerHeight(I)V

    .line 55
    :cond_e
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    if-eqz v0, :cond_10

    .line 56
    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getClose()I

    move-result v0

    if-ne v0, v3, :cond_f

    .line 57
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    invoke-static {v0, p1}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_4

    .line 58
    :cond_f
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    invoke-static {p1, v2}, Ll4d;->f(Landroid/view/View;I)Z

    .line 59
    :cond_10
    :goto_4
    iget-object p1, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-direct {p0, p1}, Lcom/mgtv/a/d/d/a/a;->c(Lcom/mgmi/model/VASTFloatAd;)V

    return-void
.end method

.method public a(Lcom/mgmi/model/VASTFloatAd;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/d/a/a;->b(Lcom/mgmi/model/VASTFloatAd;)V

    .line 61
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/mgtv/a/d/b/d;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/a;->a(Lcom/mgtv/a/d/b/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/mgmi/model/VASTFloatAd;)V
    .locals 1

    .line 5
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    instance-of v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;

    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;

    invoke-interface {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/a;->bindData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/d/a/a;->a(Lcom/mgmi/model/VASTFloatAd;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/mgtv/a/d/b/a;->f()V

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->n:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTFloatAd;->getClose()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    new-instance v1, Lcom/mgtv/a/d/d/a/a$2;

    invoke-direct {v1, p0}, Lcom/mgtv/a/d/d/a/a$2;-><init>(Lcom/mgtv/a/d/d/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    instance-of v1, v0, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;

    new-instance v1, Lcom/mgtv/a/d/d/a/a$3;

    invoke-direct {v1, p0}, Lcom/mgtv/a/d/d/a/a$3;-><init>(Lcom/mgtv/a/d/d/a/a;)V

    invoke-interface {v0, v1}, Lcom/mgadplus/viewgroup/dynamicview/a;->setEventListener(Lcom/mgadplus/viewgroup/dynamicview/a$a;)V

    :cond_2
    return-void
.end method

.method public h()Landroid/view/View;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->o:Landroid/view/View;

    return-object p0
.end method

.method public j()Landroid/view/ViewGroup;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->t:Landroid/view/ViewGroup;

    return-object p0
.end method
