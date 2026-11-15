.class public Lcom/mgtv/ssp/play/PreviewEndScene;
.super Lcom/mgtv/ssp/play/BaseScene;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/play/PreviewEndScene$IapType;
    }
.end annotation


# static fields
.field private static final URL_VIP_CASHIER:Ljava/lang/String;


# instance fields
.field clicked:Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;

.field private mBgView:Landroid/widget/ImageView;

.field private mCenterLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/mgtv/ssp/authbase/AccountInfo;->defaultVipUrl:Ljava/lang/String;

    sput-object v0, Lcom/mgtv/ssp/play/PreviewEndScene;->URL_VIP_CASHIER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/ssp/play/BaseScene;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/mgtv/ssp/play/PreviewEndScene;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/mgtv/ssp/play/PreviewEndScene;Landroid/content/Context;F)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mgtv/ssp/play/PreviewEndScene;->dp2px(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/mgtv/ssp/play/PreviewEndScene;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/play/PreviewEndScene;->reportVipClick(Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)V

    return-void
.end method

.method private addMultipleView(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hunantv/imgo/net/entity/AuthInfo$Component;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;

    iget-object v1, v1, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->code:Ljava/lang/String;

    const-string v2, "button"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;

    iget-object v3, v3, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {p0, p1, v4}, Lcom/mgtv/ssp/play/PreviewEndScene;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    if-le v3, v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;

    invoke-direct {p0, p1, v2, v4}, Lcom/mgtv/ssp/play/PreviewEndScene;->createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_4

    if-lez v3, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-direct {p0, p1, v6}, Lcom/mgtv/ssp/play/PreviewEndScene;->dp2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v6, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_4
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/mgtv/ssp/play/PreviewEndScene$2;

    invoke-direct {v0, p0, v2, p1}, Lcom/mgtv/ssp/play/PreviewEndScene$2;-><init>(Lcom/mgtv/ssp/play/PreviewEndScene;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private addSingleView(Landroid/content/Context;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0, p2}, Lcom/mgtv/ssp/play/PreviewEndScene;->createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v1, "button"

    iget-object p2, p2, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->code:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v1, Lcom/mgtv/ssp/play/PreviewEndScene$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/mgtv/ssp/play/PreviewEndScene$1;-><init>(Lcom/mgtv/ssp/play/PreviewEndScene;Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void
.end method

.method private createButtonView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)Landroid/view/View;
    .locals 6

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mgtv/ssp/R$layout;->vg_button_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/mgtv/ssp/R$id;->tv_btn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/mgtv/ssp/R$id;->tv_bubble:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v3, Lcom/mgtv/ssp/R$id;->tv_tips:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->text:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->selected:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/high16 v4, -0x1000000

    goto :goto_0

    :cond_0
    const-string v4, "#DBB361"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget v4, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->selected:I

    if-ne v4, v5, :cond_1

    sget v4, Lcom/mgtv/ssp/R$drawable;->vg_selected_btn_bg:I

    goto :goto_1

    :cond_1
    sget v4, Lcom/mgtv/ssp/R$drawable;->vg_unselected_btn_bg:I

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v4, Lcom/mgtv/ssp/play/PreviewEndScene$3;

    invoke-direct {v4, p0, p3, p1}, Lcom/mgtv/ssp/play/PreviewEndScene$3;-><init>(Lcom/mgtv/ssp/play/PreviewEndScene;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->superscript:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/16 p1, 0x8

    if-eqz p0, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->superscript:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p0, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->tips:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->tips:Ljava/lang/String;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-object p2
.end method

.method private createLinkView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)Landroid/view/View;
    .locals 3

    iget-object v0, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->action:Lcom/hunantv/imgo/net/entity/AuthInfo$Action;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/hunantv/imgo/net/entity/AuthInfo$Action;->tag:I

    const/16 v1, 0x271a

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mgtv/ssp/R$layout;->vg_link_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/mgtv/ssp/R$id;->tv_link:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/mgtv/ssp/play/PreviewEndScene$4;

    invoke-direct {v0, p0, p3, p1}, Lcom/mgtv/ssp/play/PreviewEndScene$4;-><init>(Lcom/mgtv/ssp/play/PreviewEndScene;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method private createSubTitleTextView(Landroid/content/Context;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, p1, v2}, Lcom/mgtv/ssp/play/PreviewEndScene;->dp2px(Landroid/content/Context;F)I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    const-string p0, "#CCFFFFFF"

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x41400000    # 12.0f

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p0, p2, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->text:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private createTitleTextView(Landroid/content/Context;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, p1, v2}, Lcom/mgtv/ssp/play/PreviewEndScene;->dp2px(Landroid/content/Context;F)I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p0, 0x11

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x41800000    # 16.0f

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p0, p2, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->text:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "title"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "link"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "button"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "subtitle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/mgtv/ssp/play/PreviewEndScene;->createTitleTextView(Landroid/content/Context;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/ssp/play/PreviewEndScene;->createLinkView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/ssp/play/PreviewEndScene;->createButtonView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-direct {p0, p1, p3}, Lcom/mgtv/ssp/play/PreviewEndScene;->createSubTitleTextView(Landroid/content/Context;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)Landroid/view/View;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_3
        -0x521dd8ce -> :sswitch_2
        0x32affa -> :sswitch_1
        0x6942258 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dp2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private fillCenterLayout(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/mgtv/ssp/play/BaseScene;->mSceneData:Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;->components:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/mgtv/ssp/play/BaseScene;->mSceneData:Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;

    iget-object v3, v3, Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;->bg:Lcom/hunantv/imgo/net/entity/AuthInfo$Bg;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    const-string v3, "#BF000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p0, Lcom/mgtv/ssp/play/BaseScene;->mSceneData:Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;

    iget-object v1, v1, Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;->components:Ljava/util/List;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget v5, v4, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->line_num:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v6, v4, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->line_num:I

    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->show:Ljava/util/List;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v4, v4, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->show:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    move v4, v1

    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v2, :cond_6

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;

    invoke-direct {p0, p1, v5}, Lcom/mgtv/ssp/play/PreviewEndScene;->addSingleView(Landroid/content/Context;Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)V

    goto :goto_3

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_7

    invoke-direct {p0, p1, v5}, Lcom/mgtv/ssp/play/PreviewEndScene;->addMultipleView(Landroid/content/Context;Ljava/util/List;)V

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    invoke-direct {p0, v0}, Lcom/mgtv/ssp/play/PreviewEndScene;->reportVip(Ljava/util/List;)V

    goto :goto_5

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgtv/ssp/R$layout;->vg_preview_end_view_default:I

    iget-object p0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_5
    return-void
.end method

.method private isPortrait(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private launchPay(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/AuthInfo$Action;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mgtv/ssp/play/PreviewEndScene;->URL_VIP_CASHIER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/ssp/play/BaseScene;->playData:Lcom/mgtv/ssp/a/a;

    if-eqz v1, :cond_0

    const-string v1, "&plid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/ssp/play/BaseScene;->playData:Lcom/mgtv/ssp/a/a;

    iget-object v1, v1, Lcom/mgtv/ssp/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&clipid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/ssp/play/BaseScene;->playData:Lcom/mgtv/ssp/a/a;

    iget-object v1, v1, Lcom/mgtv/ssp/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/ssp/play/BaseScene;->playData:Lcom/mgtv/ssp/a/a;

    iget-object v1, v1, Lcom/mgtv/ssp/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/ssp/play/BaseScene;->playData:Lcom/mgtv/ssp/a/a;

    iget-object v1, v1, Lcom/mgtv/ssp/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&iapType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&lcid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Action;->tag_ext:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Action;->tag_ext:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "&bid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&ftype="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "3"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&clocation="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->clicked:Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;->toVip(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private loadBg(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/play/PreviewEndScene;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v1, Lcom/mgtv/ssp/R$drawable;->vg_portrait_bg:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/mgtv/ssp/R$drawable;->vg_landspace_bg:I

    :goto_0
    iget-object v2, p0, Lcom/mgtv/ssp/play/BaseScene;->mSceneData:Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;->bg:Lcom/hunantv/imgo/net/entity/AuthInfo$Bg;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/hunantv/imgo/net/entity/AuthInfo$Bg;->vertical_mode_bg:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, v2, Lcom/hunantv/imgo/net/entity/AuthInfo$Bg;->wide_mode_bg:Ljava/lang/String;

    :goto_1
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object p0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mBgView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mBgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    return-void
.end method

.method private reportVip(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hunantv/imgo/report/d;->a()Lcom/hunantv/imgo/report/d;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reportVipClick(Lcom/hunantv/imgo/net/entity/AuthInfo$Component;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/AuthInfo$Component;->click:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/play/PreviewEndScene;->reportVip(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mBgView:Landroid/widget/ImageView;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mBgView:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mBgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/mgtv/ssp/play/BaseScene;->addToViewGroup(Landroid/view/View;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_2
    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Lcom/mgtv/ssp/play/BaseScene;->addToViewGroup(Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mgtv/ssp/play/PreviewEndScene;->loadBg(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/play/PreviewEndScene;->fillCenterLayout(Landroid/content/Context;)V

    return-void
.end method

.method public detach(Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mBgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->mCenterLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onComponentAction(Landroid/content/Context;Lcom/mgtv/ssp/play/IScene;Lcom/hunantv/imgo/net/entity/AuthInfo$Action;)V
    .locals 2

    const-string v0, "20302"

    const-string v1, "VIPFirst"

    if-nez p3, :cond_1

    instance-of p1, p2, Lcom/mgtv/ssp/play/PreviewEndScene;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "20301"

    :goto_0
    const/4 p1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/mgtv/ssp/play/PreviewEndScene;->launchPay(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/AuthInfo$Action;)V

    return-void

    :cond_1
    iget-object p2, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Action;->url:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p1, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Action;->tag:I

    const/16 p2, 0x271a

    if-eq p1, p2, :cond_2

    const-string p2, "1"

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, v1, p2, p3}, Lcom/mgtv/ssp/play/PreviewEndScene;->launchPay(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/AuthInfo$Action;)V

    goto :goto_1

    :pswitch_0
    const-string p1, "VIPOnly"

    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/ssp/play/PreviewEndScene;->launchPay(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/AuthInfo$Action;)V

    goto :goto_1

    :pswitch_1
    const-string p1, "20303"

    const-string p2, "SingleFirst"

    invoke-direct {p0, p2, p1, p3}, Lcom/mgtv/ssp/play/PreviewEndScene;->launchPay(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/AuthInfo$Action;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v1, v0, p3}, Lcom/mgtv/ssp/play/PreviewEndScene;->launchPay(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/AuthInfo$Action;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->clicked:Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;->toLogin()V

    goto :goto_1

    :cond_3
    iget-object p2, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Action;->url:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/hunantv/imgo/util/k;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->clicked:Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;

    iget-object p1, p3, Lcom/hunantv/imgo/net/entity/AuthInfo$Action;->url:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;->toVip(Ljava/lang/String;)V

    :cond_4
    :goto_1
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setOnViewClick(Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PreviewEndScene;->clicked:Lcom/mgtv/ssp/play/PlayErrorView$OnErrorViewCallback;

    return-void
.end method
