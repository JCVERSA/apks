.class public Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$Sj;
    }
.end annotation


# instance fields
.field private Dq:Ljava/lang/String;

.field private EjP:Ljava/lang/String;

.field private HiB:Ljava/lang/String;

.field Sj:Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$Sj;

.field private TEQ:Lcom/bytedance/sdk/openadsdk/common/EjP;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/Yf;

.field private Ym:Lcom/bytedance/sdk/component/uA/vS;

.field private sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private uA:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

.field private vS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method private Sj()V
    .locals 2

    .line 43
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Yf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->TKC:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 44
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Ym:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->EjP:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->HiB:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 47
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->vS:I

    .line 48
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(I)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 49
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HpB()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(I)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 50
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Lip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Ym:Lcom/bytedance/sdk/component/uA/vS;

    .line 51
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    const-string v1, "landingpage_split_ceiling"

    .line 52
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-void
.end method

.method private Sj(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/uA/vS;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Ym:Lcom/bytedance/sdk/component/uA/vS;

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Ym:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/vS;->sP(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800035

    .line 7
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x41900000    # 18.0f

    .line 8
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 9
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sef()Lcom/bytedance/sdk/openadsdk/core/model/dNu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Jcg()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 12
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {p1, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p1, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v5, 0x800033

    .line 14
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 15
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 16
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/high16 v2, 0x40a00000    # 5.0f

    .line 17
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    .line 18
    invoke-virtual {v3, v2, v2, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setPadding(IIII)V

    .line 19
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/EjP;->Sj()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    const-string v2, "tt_white_lefterbackicon_titlebar"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    invoke-virtual {p2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 23
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Ym:Lcom/bytedance/sdk/component/uA/vS;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Dq:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Ym:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    .line 25
    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    new-instance p2, Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v2, 0x1

    invoke-direct {p2, v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/webkit/WebView;Z)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->uA:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 27
    const-string v0, "landingpage_split_ceiling"

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->uA:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

    if-eqz v3, :cond_1

    .line 29
    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$2;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;ILandroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Ym:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {p2, v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/uA/vS;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/EjP;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->TEQ:Lcom/bytedance/sdk/openadsdk/common/EjP;

    if-eqz p2, :cond_2

    .line 31
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->TEQ:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj()V

    .line 33
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Ym:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {p2, v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/uA/vS;Z)V

    .line 34
    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$3;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$Sj;

    .line 35
    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$4;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->TKC:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->EjP:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->TEQ:Lcom/bytedance/sdk/openadsdk/common/EjP;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->uA:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$Sj;

    const/4 v7, 0x1

    move-object v0, p2

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/EjP;Lcom/bytedance/sdk/openadsdk/EjP/Ym;ZZLcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$Sj;)V

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 37
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$5;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->TKC:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->uA:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->TEQ:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lcom/bytedance/sdk/openadsdk/common/EjP;)V

    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Ym:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v1, :cond_3

    .line 39
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 40
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Ym:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 41
    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$6;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$7;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity$7;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_4
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;)Lcom/bytedance/sdk/openadsdk/EjP/Ym;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->uA:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->HiB()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "second_url"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Dq:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "source"

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->vS:I

    .line 34
    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj()Lcom/bytedance/sdk/openadsdk/core/kF;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/kF;->sP()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 44
    .line 45
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj()Lcom/bytedance/sdk/openadsdk/core/kF;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/kF;->vS()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseActivity;->finish()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->EjP:Ljava/lang/String;

    .line 65
    .line 66
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->HiB:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    const/4 v0, 0x7

    .line 85
    if-ne p1, v0, :cond_2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const/4 v0, 0x5

    .line 89
    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->vS:I

    .line 90
    .line 91
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    .line 92
    .line 93
    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Sj(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->Sj()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTCeilingLandingPageActivity;->uA:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Dq()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
