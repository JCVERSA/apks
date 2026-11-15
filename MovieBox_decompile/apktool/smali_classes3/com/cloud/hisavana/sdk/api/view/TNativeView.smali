.class public Lcom/cloud/hisavana/sdk/api/view/TNativeView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

.field private d:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

.field private e:Landroid/widget/ImageView$ScaleType;

.field private f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

.field private g:Z

.field private h:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

.field private i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

.field private j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private k:Lh7/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->e:Landroid/widget/ImageView$ScaleType;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->g:Z

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/MediaView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 2
    .line 3
    return-object p0
.end method

.method private d(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->h:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/util/e0;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v0, v1, p1}, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lh7/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lh7/d;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lh7/d;->j(Ljava/lang/String;)Lh7/d;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lh7/d;->h(Ljava/lang/String;)Lh7/d;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p3, p2}, Lh7/d;->i(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lh7/d;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->k:Lh7/d;

    .line 20
    .line 21
    invoke-virtual {p1}, Lh7/d;->k()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 2
    .line 3
    return-object p0
.end method

.method private g(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/J0;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x4

    .line 24
    const/4 v3, 0x0

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 28
    .line 29
    invoke-static {v0, p1, v3, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 33
    .line 34
    new-instance v1, Lcom/cloud/hisavana/sdk/api/view/TNativeView$c;

    .line 35
    .line 36
    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView$c;-><init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getACReady()Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getACReady()Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 60
    .line 61
    const/4 v2, 0x3

    .line 62
    invoke-static {v0, p1, v2, v3, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 66
    .line 67
    new-instance v1, Lcom/cloud/hisavana/sdk/api/view/TNativeView$d;

    .line 68
    .line 69
    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView$d;-><init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    return-void
.end method

.method private h(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/J0;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->d:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    return-void

    .line 16
    :cond_2
    sget-object v1, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->CLOSE:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getTemplateEnum()Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->getCloseImageType()Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->d:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->d:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private i(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 27
    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    instance-of p1, p1, Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/view/ViewGroup;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/e0;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 76
    .line 77
    new-instance v1, Le7/d;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Le7/d;-><init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setListener(Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView$b;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 98
    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 102
    .line 103
    :cond_3
    new-instance v0, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;

    .line 104
    .line 105
    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView$e;-><init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 109
    .line 110
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_0
    return-void
.end method

.method private j(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x4

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setDefaultLogo(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isAdImageRecycled()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x1

    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Ln7/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    instance-of v1, v0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->findStrategyByCode(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->scaleWidthOrTextSize(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    check-cast v0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 79
    .line 80
    invoke-virtual {v0, v3}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setCircle(Z)V

    .line 81
    .line 82
    .line 83
    const/high16 p1, 0x40800000    # 4.0f

    .line 84
    .line 85
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    int-to-float p1, p1

    .line 90
    invoke-virtual {v0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setRadius(F)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_4

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v4, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;

    .line 113
    .line 114
    invoke-direct {v4, p0, p1, v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView$b;-><init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Landroid/widget/ImageView;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v1, v2, v3, v4, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_0
    return-void
.end method

.method private k(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setInteractiveMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/b;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, -0x1

    .line 36
    if-ne v0, v1, :cond_3

    .line 37
    .line 38
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v0, "TNativeView"

    .line 43
    .line 44
    const-string v1, "setMediaView\uff08\uff09----> adType = -1"

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    const/4 v1, 0x1

    .line 51
    if-ne v0, v1, :cond_4

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setVideoMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v2, 0x4

    .line 72
    if-ne v0, v2, :cond_6

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-ne v0, v1, :cond_5

    .line 83
    .line 84
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setDefaultImgMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setVideoMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_6
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setImgMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 93
    .line 94
    .line 95
    :cond_7
    :goto_0
    return-void
.end method

.method private l(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/util/h0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 v0, 0x8

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "L91601"

    .line 34
    .line 35
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    const/4 v1, -0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const v1, -0x878788

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 50
    .line 51
    const/high16 v1, 0x40c00000    # 6.0f

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->attachInfo(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_2
    return-void
.end method

.method private setDefaultImgMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getMime()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->init(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->e:Landroid/widget/ImageView$ScaleType;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 22
    .line 23
    :cond_1
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 24
    .line 25
    sget v3, Lcom/cloud/sdk/commonutil/R$id;->native_mediaview_iv_id:I

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/ImageView;

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x1

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lk7/c;->k()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lk7/c;->j()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    new-instance v3, Lcom/cloud/hisavana/sdk/api/view/TNativeView$a;

    .line 76
    .line 77
    invoke-direct {v3, p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView$a;-><init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1, v3, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method private setDefaultLogo(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    .line 15
    .line 16
    instance-of v1, v1, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->findStrategyByCode(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->scaleWidthOrTextSize(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    .line 36
    .line 37
    check-cast v1, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setCircle(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    .line 44
    .line 45
    check-cast v1, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "L91601"

    .line 52
    .line 53
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    const/high16 v2, 0x41800000    # 16.0f

    .line 60
    .line 61
    :goto_0
    invoke-static {v2}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    int-to-float v2, v2

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/high16 v2, 0x40800000    # 4.0f

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :goto_1
    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setRadius(F)V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-static {v0, p1, v2, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private setImgMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TNativeView"

    .line 6
    .line 7
    const-string v2, "start to set img media"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->e:Landroid/widget/ImageView$ScaleType;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 24
    .line 25
    :cond_1
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 26
    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setNeedBlurBackground(Z)V

    .line 31
    .line 32
    .line 33
    :cond_2
    if-eqz v0, :cond_5

    .line 34
    .line 35
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getMime()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->init(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->isAdImageRecycled()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_4

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->findStrategyByCode(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/ad/template/TemplateRenderEnum;->renderRadius(Lcom/cloud/hisavana/sdk/api/view/MediaView;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-virtual {v2, v0, v1, p1}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->setMediaView(Lcom/cloud/hisavana/sdk/common/bean/AdImage;Landroid/widget/ImageView$ScaleType;Z)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_5

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-instance v3, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;

    .line 100
    .line 101
    invoke-direct {v3, p0, p1, v1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView$f;-><init>(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Landroid/widget/ImageView$ScaleType;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 105
    .line 106
    sget v1, Lcom/cloud/sdk/commonutil/R$id;->native_mediaview_iv_id:I

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/widget/ImageView;

    .line 113
    .line 114
    const/4 v1, 0x2

    .line 115
    invoke-static {v0, v2, v1, v3, p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    :goto_0
    return-void
.end method

.method private setInteractiveMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TNativeView"

    .line 6
    .line 7
    const-string v2, "setVideoMedia() ----> start to set interactive media"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    move-object v2, v0

    .line 69
    check-cast v2, Ljava/lang/String;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const-string v2, ""

    .line 73
    .line 74
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 75
    .line 76
    invoke-virtual {v0, p1, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->setInteractiveView(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private setVideoMedia(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "setVideoMedia() ----> start to set video media"

    .line 6
    .line 7
    const-string v2, "TNativeView"

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/w2;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "setVideoMedia() ----> mainUrl = "

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 54
    .line 55
    const/4 v1, 0x3

    .line 56
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->init(I)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMaterialStyleValid()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getMaterialStyle()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    iget-boolean v8, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->g:Z

    .line 74
    .line 75
    invoke-virtual/range {v3 .. v8}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->setVideoView(Ljava/lang/String;ZLjava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->destroy()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->k:Lh7/d;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lh7/d;->f()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->k:Lh7/d;

    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMarkViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->d:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->h:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public getMediaView()Lcom/cloud/hisavana/sdk/api/view/MediaView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTemplateStyle()Lcom/cloud/hisavana/sdk/ad/template/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public inflateAdChoiceView(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->g(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public inflateIconView(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public inflateMediaView(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->k(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setAdBagdeView(Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->h:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    .line 2
    .line 3
    return-void
.end method

.method public setAdChoiceView(Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->c:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 5
    .line 6
    return-void
.end method

.method public setAdCloseView(Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->d:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 5
    .line 6
    return-void
.end method

.method public setAdDisclaimerView(Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 2
    .line 3
    return-void
.end method

.method public final setIconView(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-void
.end method

.method public setMediaView(Lcom/cloud/hisavana/sdk/api/view/MediaView;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setMediaView(Lcom/cloud/hisavana/sdk/api/view/MediaView;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setMediaView(Lcom/cloud/hisavana/sdk/api/view/MediaView;Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->e:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public setPsMarkView(Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->f:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 5
    .line 6
    return-void
.end method

.method public setTemplateStyle(Lcom/cloud/hisavana/sdk/ad/template/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setUseListMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setupViews(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->k(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->j(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->g(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->h(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->l(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->d(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->i(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
