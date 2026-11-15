.class public final Lcom/transsion/search_pugc/ad/SearchHotAdHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/ad/SearchHotAdHelper$a;
    }
.end annotation


# static fields
.field public static final n:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$a;


# instance fields
.field private final a:Landroidx/lifecycle/LifecycleCoroutineScope;

.field private b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field private g:Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;

.field private h:Lkotlin/jvm/functions/Function1;

.field private i:Z

.field private j:Landroid/animation/ObjectAnimator;

.field private k:Ljava/lang/Runnable;

.field private final l:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$c;

.field private final m:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->n:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleCoroutineScope;)V
    .locals 1

    .line 1
    const-string v0, "lifecycleScope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 10
    .line 11
    new-instance p1, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$c;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$c;-><init>(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->l:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$c;

    .line 17
    .line 18
    new-instance p1, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$b;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$b;-><init>(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->m:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$b;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic a(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->l(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->o(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)Lcom/transsion/search_pugc/ad/SearchHotAdHelper$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->m:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)Lcom/transsion/search_pugc/ad/SearchHotAdHelper$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->l:Lcom/transsion/search_pugc/ad/SearchHotAdHelper$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 2
    .line 3
    return-void
.end method

.method private final k()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/search_pugc/ad/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/transsion/search_pugc/ad/a;-><init>(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->k:Ljava/lang/Runnable;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-wide/16 v2, 0xbb8

    .line 13
    .line 14
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private static final l(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_action:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    if-eqz p0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget v1, Lcom/transsion/ad/R$color;->gray_dark_00:I

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    filled-new-array {v1, v0}, [I

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "textColor"

    .line 36
    .line 37
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-wide/16 v1, 0x12c

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "setDuration(...)"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const v3, 0x106000d

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v3, v2}, Ly0/h;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    sget v3, Lcom/transsion/wrapperad/R$drawable;->bg_gradient_brand_4:I

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v2, v3, v4}, Ly0/h;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    .line 104
    .line 105
    const/4 v4, 0x2

    .line 106
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    aput-object v1, v4, v5

    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    aput-object v2, v4, v1

    .line 113
    .line 114
    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    .line 119
    .line 120
    const/16 p0, 0x12c

    .line 121
    .line 122
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 126
    .line 127
    .line 128
    :cond_2
    return-void
.end method

.method private final n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->g:Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;->getNativeWrapperAdView()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 12
    .line 13
    sget-object v1, Low/b;->a:Low/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "getContext(...)"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v3, "SearchHotNativeScene"

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Low/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1, p1}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->x()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->v()V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method private final o(Ljava/util/List;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->g:Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;->getHiNativeAdViews()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->c:Ljava/util/List;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->d:Ljava/util/List;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    :goto_0
    move-object v2, v1

    .line 19
    check-cast v2, Ljava/util/Collection;

    .line 20
    .line 21
    if-eqz v2, :cond_6

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move-object v2, p1

    .line 31
    check-cast v2, Ljava/util/Collection;

    .line 32
    .line 33
    if-eqz v2, :cond_6

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    iget-object v2, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 43
    .line 44
    if-nez v2, :cond_4

    .line 45
    .line 46
    return-void

    .line 47
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    const/4 v3, 0x0

    .line 60
    move v11, v3

    .line 61
    :goto_1
    if-ge v11, v10, :cond_5

    .line 62
    .line 63
    new-instance v6, Low/s;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v4, "getContext(...)"

    .line 70
    .line 71
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v6, v3}, Low/s;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 82
    .line 83
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    move-object v7, v4

    .line 88
    check-cast v7, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 89
    .line 90
    const/4 v8, 0x2

    .line 91
    const/4 v9, 0x0

    .line 92
    const/4 v5, 0x0

    .line 93
    move-object v4, v2

    .line 94
    invoke-static/range {v3 .. v9}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindSspNativeView$default(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 v11, v11, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->x()V

    .line 101
    .line 102
    .line 103
    :cond_6
    :goto_2
    return-void
.end method

.method private final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->j:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->j:Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->k:Ljava/lang/Runnable;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_1
    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->k:Ljava/lang/Runnable;

    .line 23
    .line 24
    return-void
.end method

.method private final r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->U()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->q()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->c:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->c:Ljava/util/List;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->U()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 38
    .line 39
    return-void
.end method

.method private final t()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v3, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadBiddingAd$1;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v3, p0, v2}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadBiddingAd$1;-><init>(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final u()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->s()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v3, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v3, p0, v2}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper$loadHiAd$1;-><init>(Lcom/transsion/search_pugc/ad/SearchHotAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final v()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->w()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->k()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "adVolumeImage"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    .line 28
    const v1, 0x800053

    .line 29
    .line 30
    .line 31
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 32
    .line 33
    const/high16 v1, 0x41000000    # 8.0f

    .line 34
    .line 35
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 40
    .line 41
    .line 42
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 43
    .line 44
    const/high16 v1, 0x41d00000    # 26.0f

    .line 45
    .line 46
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 51
    .line 52
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method private final x()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->i:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->h:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public final m(Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->g:Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->u()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->s()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->r()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->h:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->g:Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;->destroy()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v0, p0, Lcom/transsion/search_pugc/ad/SearchHotAdHelper;->g:Lcom/transsion/search_pugc/ad/SearchHotAdContainerView;

    .line 18
    .line 19
    return-void
.end method
