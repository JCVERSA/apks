.class public final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$a;


# instance fields
.field private final a:Landroidx/lifecycle/LifecycleCoroutineScope;

.field private b:Ljava/lang/Runnable;

.field private c:Landroid/animation/ObjectAnimator;

.field private d:Landroid/animation/ValueAnimator;

.field private e:Landroid/animation/ValueAnimator;

.field private f:Landroid/animation/ValueAnimator;

.field private g:Landroid/animation/AnimatorSet;

.field private h:Ljava/lang/Runnable;

.field private i:Z

.field private j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

.field private k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Map;

.field private final n:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->o:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$a;

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
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->i:Z

    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->l:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->m:Ljava/util/Map;

    .line 24
    .line 25
    new-instance p1, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$c;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$c;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->n:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$c;

    .line 31
    .line 32
    return-void
.end method

.method private final A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 27
    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 34
    .line 35
    .line 36
    :cond_4
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    if-eqz v1, :cond_5

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 44
    .line 45
    .line 46
    :cond_5
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    if-eqz v1, :cond_6

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 53
    .line 54
    .line 55
    :cond_6
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    .line 58
    .line 59
    if-eqz v1, :cond_7

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 62
    .line 63
    .line 64
    :cond_7
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    .line 65
    .line 66
    return-void
.end method

.method private final B()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->z()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 9
    .line 10
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v4, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v4, p0, v0, v3}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$loadBiddingAd$1$1;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private final D(Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/f;->e()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->i:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->i:Z

    .line 31
    .line 32
    new-instance v0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$prepareSwipeGuide$1;

    .line 33
    .line 34
    invoke-direct {v0, p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$prepareSwipeGuide$1;-><init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->h:Ljava/lang/Runnable;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->h:Ljava/lang/Runnable;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->I(Lcom/transsion/wrapperad/view/cardpage/f;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method

.method private final E(Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/f;->d()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_action:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget v1, Lcom/transsion/ad/R$color;->ad_white_80:I

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget v2, Lcom/transsion/wrapperad/R$drawable;->ad_shape_tag:I

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v1, v2, v3}, Ly0/h;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method private final H(Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/f;->d()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "adVolumeImage"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/ImageView;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 25
    .line 26
    const v0, 0x800053

    .line 27
    .line 28
    .line 29
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 30
    .line 31
    const/high16 v0, 0x41000000    # 8.0f

    .line 32
    .line 33
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 38
    .line 39
    .line 40
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 41
    .line 42
    const/high16 v0, 0x41d00000    # 26.0f

    .line 43
    .line 44
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 49
    .line 50
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method private final I(Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    instance-of v3, v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v0, v1

    .line 30
    :goto_1
    if-eqz v0, :cond_9

    .line 31
    .line 32
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->getViewPager()Landroidx/viewpager2/widget/ViewPager2;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    goto :goto_2

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_2
    move v3, v2

    .line 53
    :goto_2
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    instance-of v3, v0, Lcom/transsion/wrapperad/view/cardpage/e$a;

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    check-cast v0, Lcom/transsion/wrapperad/view/cardpage/e$a;

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    move-object v0, v1

    .line 65
    :goto_3
    if-eqz v0, :cond_8

    .line 66
    .line 67
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 68
    .line 69
    sget v3, Lcom/transsion/wrapperad/R$id;->ad_cover:I

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/widget/FrameLayout;

    .line 76
    .line 77
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 78
    .line 79
    sget v3, Lcom/transsion/wrapperad/R$id;->swipe_guide:I

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 86
    .line 87
    if-eqz v1, :cond_7

    .line 88
    .line 89
    if-eqz v0, :cond_7

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Lcom/transsion/wrapperad/view/cardpage/f;->h(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 99
    .line 100
    .line 101
    const/4 p1, 0x2

    .line 102
    new-array p1, p1, [F

    .line 103
    .line 104
    fill-array-data p1, :array_0

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    .line 112
    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    const-wide/16 v2, 0x1f4

    .line 116
    .line 117
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    .line 121
    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    new-instance v2, Lcom/transsion/wrapperad/view/cardpage/a;

    .line 125
    .line 126
    invoke-direct {v2, v1}, Lcom/transsion/wrapperad/view/cardpage/a;-><init>(Landroid/widget/FrameLayout;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    const/high16 p1, 0x42c80000    # 100.0f

    .line 133
    .line 134
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    int-to-float p1, p1

    .line 139
    iget-object v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    .line 140
    .line 141
    if-eqz v2, :cond_6

    .line 142
    .line 143
    new-instance v3, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;

    .line 144
    .line 145
    invoke-direct {v3, v0, p1, p0, v1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$d;-><init>(Landroidx/appcompat/widget/AppCompatImageView;FLcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Landroid/widget/FrameLayout;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    .line 152
    .line 153
    if-eqz p1, :cond_7

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 156
    .line 157
    .line 158
    :cond_7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 159
    .line 160
    :cond_8
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    goto :goto_5

    .line 165
    :goto_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 166
    .line 167
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 176
    .line 177
    .line 178
    :cond_9
    return-void

    .line 179
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final J(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const-string v0, "valueAnimator"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final K(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/FrameLayout;F)V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->A()V

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-static {v4, p3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const v6, 0x3ecccccd    # 0.4f

    .line 16
    .line 17
    .line 18
    invoke-static {v6, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const v7, 0x3f19999a    # 0.6f

    .line 23
    .line 24
    .line 25
    invoke-static {v7, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/high16 v7, 0x3f800000    # 1.0f

    .line 30
    .line 31
    invoke-static {v7, p3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const-string v8, "translationX"

    .line 36
    .line 37
    const/4 v9, 0x4

    .line 38
    new-array v9, v9, [Landroid/animation/Keyframe;

    .line 39
    .line 40
    aput-object v5, v9, v2

    .line 41
    .line 42
    aput-object v6, v9, v3

    .line 43
    .line 44
    aput-object v4, v9, v1

    .line 45
    .line 46
    aput-object v7, v9, v0

    .line 47
    .line 48
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    new-array v5, v3, [Landroid/animation/PropertyValuesHolder;

    .line 53
    .line 54
    aput-object v4, v5, v2

    .line 55
    .line 56
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iput-object v4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    const-wide/16 v5, 0x5dc

    .line 63
    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    .line 73
    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    new-instance v7, Lcom/transsion/wrapperad/view/cardpage/c;

    .line 84
    .line 85
    invoke-direct {v7, p1}, Lcom/transsion/wrapperad/view/cardpage/c;-><init>(Landroidx/appcompat/widget/AppCompatImageView;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    new-array v0, v0, [F

    .line 92
    .line 93
    fill-array-data v0, :array_0

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    .line 108
    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 112
    .line 113
    .line 114
    :cond_4
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    .line 115
    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    new-instance v4, Lcom/transsion/wrapperad/view/cardpage/d;

    .line 119
    .line 120
    invoke-direct {v4, p1}, Lcom/transsion/wrapperad/view/cardpage/d;-><init>(Landroidx/appcompat/widget/AppCompatImageView;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 127
    .line 128
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 129
    .line 130
    .line 131
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    .line 132
    .line 133
    iget-object v4, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    .line 134
    .line 135
    iget-object v7, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    .line 136
    .line 137
    new-array v1, v1, [Landroid/animation/Animator;

    .line 138
    .line 139
    aput-object v4, v1, v2

    .line 140
    .line 141
    aput-object v7, v1, v3

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    .line 147
    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 151
    .line 152
    .line 153
    :cond_6
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    .line 154
    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    new-instance v1, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;

    .line 158
    .line 159
    invoke-direct {v1, p1, p3, p2, p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$e;-><init>(Landroidx/appcompat/widget/AppCompatImageView;FLandroid/widget/FrameLayout;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    .line 166
    .line 167
    if-eqz p1, :cond_8

    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 170
    .line 171
    .line 172
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_8
    const/4 p1, 0x0

    .line 176
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 181
    .line 182
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    :goto_3
    return-void

    .line 190
    nop

    .line 191
    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private static final L(Landroidx/appcompat/widget/AppCompatImageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static final M(Landroidx/appcompat/widget/AppCompatImageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/widget/AppCompatImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->L(Landroidx/appcompat/widget/AppCompatImageView;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/widget/AppCompatImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->M(Landroidx/appcompat/widget/AppCompatImageView;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->t(Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->J(Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->d:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->f:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->g:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->m:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->n:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->e:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->D(Lcom/transsion/wrapperad/view/cardpage/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic q(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->I(Lcom/transsion/wrapperad/view/cardpage/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/FrameLayout;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->K(Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/FrameLayout;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final t(Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsion/ad/R$color;->ad_white_80:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget v2, Lcom/transsion/ad/R$color;->gray_dark_00:I

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v2, "textColor"

    .line 22
    .line 23
    filled-new-array {v0, v1}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-wide/16 v1, 0x12c

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "setDuration(...)"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget v2, Lcom/transsion/wrapperad/R$drawable;->ad_shape_tag:I

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v1, v2, v3}, Ly0/h;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    sget v3, Lcom/transsion/wrapperad/R$drawable;->bg_gradient_brand_4:I

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v2, v3, v4}, Ly0/h;->e(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    .line 87
    .line 88
    const/4 v4, 0x2

    .line 89
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 90
    .line 91
    const/4 v5, 0x0

    .line 92
    aput-object v1, v4, v5

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    aput-object v2, v4, v1

    .line 96
    .line 97
    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    .line 102
    .line 103
    const/16 p0, 0x12c

    .line 104
    .line 105
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 106
    .line 107
    .line 108
    new-instance p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$b;

    .line 109
    .line 110
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper$b;-><init>(Landroid/animation/ObjectAnimator;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method private final y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->c:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->c:Landroid/animation/ObjectAnimator;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->c:Landroid/animation/ObjectAnimator;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->b:Ljava/lang/Runnable;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    :cond_2
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->b:Ljava/lang/Runnable;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->h:Ljava/lang/Runnable;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    iget-object v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    :cond_3
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->h:Ljava/lang/Runnable;

    .line 43
    .line 44
    return-void
.end method

.method private final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->U()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->pauseAutoScroll()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final F(Ljava/util/Map;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;
    .locals 1

    .line 1
    const-string v0, "ctxMap"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->m:Ljava/util/Map;

    .line 7
    .line 8
    return-object p0
.end method

.method public final G(Ljava/lang/String;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;
    .locals 1

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->l:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final s(Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 4

    .line 1
    const-string v0, "pageData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/f;->d()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget v1, Lcom/transsion/wrapperad/R$id;->native_ad_action:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->y()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/transsion/wrapperad/view/cardpage/b;

    .line 26
    .line 27
    invoke-direct {v1, v0, p0, p1}, Lcom/transsion/wrapperad/view/cardpage/b;-><init>(Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;Lcom/transsion/wrapperad/view/cardpage/f;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->b:Ljava/lang/Runnable;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const-wide/16 v2, 0xbb8

    .line 37
    .line 38
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    goto :goto_2

    .line 55
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 56
    .line 57
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public final u(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 1

    .line 1
    const-string v0, "pageView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->B()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final v(Ljava/util/List;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Iterable;

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v2, 0xa

    .line 12
    .line 13
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v5, v2

    .line 35
    check-cast v5, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 36
    .line 37
    new-instance v2, Lcom/transsion/wrapperad/view/cardpage/f;

    .line 38
    .line 39
    new-instance v4, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v6, "getContext(...)"

    .line 46
    .line 47
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v6, 0x2

    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-direct {v4, v3, v7, v6, v7}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    .line 54
    .line 55
    const/16 v9, 0x10

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v8, 0x0

    .line 60
    move-object v3, v2

    .line 61
    move-object v6, p0

    .line 62
    invoke-direct/range {v3 .. v10}, Lcom/transsion/wrapperad/view/cardpage/f;-><init>(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :cond_1
    move-object p1, v1

    .line 74
    check-cast p1, Ljava/util/Collection;

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_3

    .line 81
    .line 82
    iget-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 83
    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    sget-object v2, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    .line 87
    .line 88
    iget-object v3, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->l:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Lcom/transsion/ad/scene/a;->m(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    int-to-long v2, v2

    .line 95
    const-wide/16 v4, 0x3e8

    .line 96
    .line 97
    mul-long/2addr v2, v4

    .line 98
    invoke-virtual {p1, v2, v3}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->setScrollInterval(J)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->setPageData(Ljava/util/List;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    return-void
.end method

.method public final w(Lcom/transsion/wrapperad/view/cardpage/f;)V
    .locals 6

    .line 1
    const-string v0, "pageData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/f;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, v1}, Lcom/transsion/wrapperad/view/cardpage/f;->f(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/f;->d()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->k:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    .line 26
    .line 27
    new-instance v3, Low/o;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v5, "getContext(...)"

    .line 34
    .line 35
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v4}, Low/o;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Low/p;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v4, v0}, Low/p;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/cardpage/f;->a()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindSspNativeView(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->H(Lcom/transsion/wrapperad/view/cardpage/f;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->E(Lcom/transsion/wrapperad/view/cardpage/f;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->destroy()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object v0, v1

    .line 22
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Landroid/view/ViewGroup;

    .line 28
    .line 29
    :cond_2
    if-eqz v1, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->j:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :cond_4
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->y()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->A()V

    .line 47
    .line 48
    .line 49
    return-void
.end method
