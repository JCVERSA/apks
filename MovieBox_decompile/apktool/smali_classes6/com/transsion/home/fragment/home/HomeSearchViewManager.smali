.class public final Lcom/transsion/home/fragment/home/HomeSearchViewManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;
    }
.end annotation


# instance fields
.field private final a:Lqk/p;

.field private final b:Lcom/transsion/home/fragment/home/HomeFragment;

.field private c:Lcom/transsion/home/fragment/home/t;

.field private d:Landroid/content/Context;

.field private final e:Ljava/util/ArrayList;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

.field private i:Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;

.field private j:Z

.field private k:Landroidx/constraintlayout/widget/ConstraintLayout$b;

.field private l:Lkotlinx/coroutines/n0;

.field private final m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lqk/p;Lcom/transsion/home/fragment/home/HomeFragment;)V
    .locals 1

    .line 1
    const-string v0, "mViewBinding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mFragment"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->l:Lkotlinx/coroutines/n0;

    .line 34
    .line 35
    new-instance p1, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    new-instance v0, Lcom/transsion/home/fragment/home/w;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/transsion/home/fragment/home/w;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->m:Landroid/os/Handler;

    .line 50
    .line 51
    return-void
.end method

.method private final A(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 2
    .line 3
    iget-object v0, v0, Lqk/p;->p:Lcom/tn/lib/widget/TnTextView;

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/TnTextView;->setTextWithString(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/transsion/home/bean/HotSearchKeyWord;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsion/home/bean/HotSearchKeyWord;->getTitle()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    move-object v0, v1

    .line 42
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 47
    .line 48
    iget-object p1, p1, Lqk/p;->m:Landroid/widget/TextSwitcher;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    new-instance v0, Lcom/transsion/home/fragment/home/d0;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lcom/transsion/home/fragment/home/d0;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    .line 65
    .line 66
    if-ltz v0, :cond_3

    .line 67
    .line 68
    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-ge v0, v1, :cond_3

    .line 75
    .line 76
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    .line 77
    .line 78
    iget v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/String;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->g:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-direct {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->q()Landroid/view/animation/AnimationSet;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->J()Landroid/view/animation/AnimationSet;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x1

    .line 106
    const/4 v0, 0x0

    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-static {p0, v1, p1, v0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->N(Lcom/transsion/home/fragment/home/HomeSearchViewManager;ZILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private static final B(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget v0, Lcom/transsion/home/R$layout;->view_text:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private final E(Z)V
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/home/view/g;->a:Lcom/transsion/home/view/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/transsion/home/view/g;->b(Z)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lgj/a;->a:Lgj/a$a;

    .line 8
    .line 9
    const-class v1, Lgj/b;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lgj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lgj/b;

    .line 16
    .line 17
    const-string v1, "requireContext(...)"

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    iget-object v3, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->g:Ljava/lang/String;

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    move-object v4, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v4, v3

    .line 32
    :goto_0
    if-nez v3, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object v2, v3

    .line 36
    :goto_1
    iget-object v3, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 39
    .line 40
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v4, v2, v3, v5}, Lgj/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_2
    if-eqz v0, :cond_4

    .line 52
    .line 53
    iget-object v3, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->g:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move-object v2, v3

    .line 59
    :goto_2
    iget-object v3, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object v4, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v2, v3, v4}, Lgj/b;->b(Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_3
    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->K(Z)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method static synthetic F(Lcom/transsion/home/fragment/home/HomeSearchViewManager;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->E(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final H(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/os/Message;)Z
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/16 v0, 0x64

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iget p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    .line 14
    .line 15
    add-int/2addr p1, v1

    .line 16
    iput p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    rem-int/2addr v0, v2

    .line 35
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p1, ""

    .line 43
    .line 44
    :goto_0
    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->g:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 47
    .line 48
    iget-object v0, v0, Lqk/p;->m:Landroid/widget/TextSwitcher;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-static {p0, p1, v1, v0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->N(Lcom/transsion/home/fragment/home/HomeSearchViewManager;ZILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return v1
.end method

.method private final J()Landroid/view/animation/AnimationSet;
    .locals 10

    .line 1
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    .line 2
    .line 3
    const/4 v7, 0x1

    .line 4
    const/high16 v8, -0x40800000    # -1.0f

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v0, v9

    .line 13
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v0, 0x3e8

    .line 17
    .line 18
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .line 22
    .line 23
    const/high16 v3, 0x3f800000    # 1.0f

    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method private final K(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string p1, "search_button"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "search"

    .line 12
    .line 13
    :goto_0
    const-string v1, "module_name"

    .line 14
    .line 15
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->g:Ljava/lang/String;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    :cond_1
    const-string v1, "hot_search_word"

    .line 25
    .line 26
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 30
    .line 31
    sget-object v1, Lcom/transsion/home/fragment/tab/SubTabFragment;->t:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    .line 32
    .line 33
    sget-object v2, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/transsion/home/enum/HomeTabId$a;->g()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1, v1, v0}, Lcom/transsion/baselib/helper/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static synthetic N(Lcom/transsion/home/fragment/home/HomeSearchViewManager;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->M(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->w(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->s()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->u(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->B(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/usercenterapi/UpdateResultEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->y(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/usercenterapi/UpdateResultEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->p(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->H(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/os/Message;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic h(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->v(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/home/bean/HotSubjectEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->x(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/home/bean/HotSubjectEntity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->d:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Lqk/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 2
    .line 3
    return-object p0
.end method

.method private final m(Z)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->h:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    .line 2
    .line 3
    if-eqz p1, :cond_6

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/tn/lib/widget/R$color;->common_white:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget v2, Lcom/tn/lib/widget/R$color;->transparent:I

    .line 20
    .line 21
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sget v2, Lnet/lucode/hackware/magicindicator/R$id;->title_container:I

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/widget/LinearLayout;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    move v4, v3

    .line 39
    :goto_0
    if-ge v4, v2, :cond_4

    .line 40
    .line 41
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    instance-of v6, v5, Lcom/transsion/baseui/widget/CustomPagerTitleView;

    .line 46
    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    check-cast v5, Lcom/transsion/baseui/widget/CustomPagerTitleView;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    sget v7, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 56
    .line 57
    invoke-static {v6, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {v5, v6}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setNormalColor(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setSelectedColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v6, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 68
    .line 69
    invoke-virtual {v6}, Lcom/transsion/home/fragment/home/HomeFragment;->I0()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-ne v4, v6, :cond_0

    .line 74
    .line 75
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    sget v7, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 84
    .line 85
    invoke-static {v6, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    const-string v7, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    .line 97
    .line 98
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    .line 103
    const/4 v7, -0x2

    .line 104
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 105
    .line 106
    const/4 v7, -0x1

    .line 107
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 108
    .line 109
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_1
    instance-of v6, v5, Lcom/transsion/home/view/CustomTabAdView;

    .line 114
    .line 115
    if-eqz v6, :cond_3

    .line 116
    .line 117
    check-cast v5, Lcom/transsion/home/view/CustomTabAdView;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    sget v7, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 124
    .line 125
    invoke-static {v6, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    sget v8, Lcom/tn/lib/widget/R$color;->common_white:I

    .line 134
    .line 135
    invoke-static {v7, v8}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    invoke-virtual {v5, v6, v7}, Lcom/transsion/home/view/CustomTabAdView;->changeTextColor(II)V

    .line 140
    .line 141
    .line 142
    iget-object v6, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 143
    .line 144
    invoke-virtual {v6}, Lcom/transsion/home/fragment/home/HomeFragment;->I0()I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    if-ne v4, v6, :cond_2

    .line 149
    .line 150
    invoke-virtual {v5, v0}, Lcom/transsion/home/view/CustomTabAdView;->setTextColor(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    sget v7, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 159
    .line 160
    invoke-static {v6, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-virtual {v5, v6}, Lcom/transsion/home/view/CustomTabAdView;->setTextColor(I)V

    .line 165
    .line 166
    .line 167
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_4
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->h:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    .line 172
    .line 173
    if-eqz p1, :cond_6

    .line 174
    .line 175
    sget v0, Lnet/lucode/hackware/magicindicator/R$id;->indicator_container:I

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Landroid/widget/LinearLayout;

    .line 182
    .line 183
    if-eqz p1, :cond_6

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    :goto_3
    if-ge v3, v0, :cond_6

    .line 190
    .line 191
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    instance-of v4, v2, Lcom/tn/lib/view/GradientLinePagerIndicator;

    .line 196
    .line 197
    if-eqz v4, :cond_5

    .line 198
    .line 199
    check-cast v2, Lcom/tn/lib/view/GradientLinePagerIndicator;

    .line 200
    .line 201
    invoke-virtual {v2, v1, v1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setColors(III)V

    .line 202
    .line 203
    .line 204
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_6
    return-void
.end method

.method private final o()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/version/update/UpdateManager;->g()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 14
    .line 15
    iget-object v0, v0, Lqk/p;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 22
    .line 23
    iget-object v0, v0, Lqk/p;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 24
    .line 25
    new-instance v1, Lcom/transsion/home/fragment/home/c0;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/transsion/home/fragment/home/c0;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 35
    .line 36
    iget-object v0, v0, Lqk/p;->i:Landroidx/appcompat/widget/AppCompatImageView;

    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method private static final p(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->l:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    new-instance v3, Lcom/transsion/home/fragment/home/HomeSearchViewManager$handleUpdateIcon$1$1;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {v3, p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager$handleUpdateIcon$1$1;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final q()Landroid/view/animation/AnimationSet;
    .locals 10

    .line 1
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    .line 2
    .line 3
    const/4 v7, 0x1

    .line 4
    const/4 v8, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    const/high16 v6, 0x3f800000    # 1.0f

    .line 11
    .line 12
    move-object v0, v9

    .line 13
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v0, 0x3e8

    .line 17
    .line 18
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/high16 v4, 0x3f800000    # 1.0f

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 42
    .line 43
    .line 44
    return-object v0
.end method

.method private final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 2
    .line 3
    iget-object v0, v0, Lqk/p;->p:Lcom/tn/lib/widget/TnTextView;

    .line 4
    .line 5
    new-instance v1, Lcom/transsion/home/fragment/home/e0;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/transsion/home/fragment/home/e0;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/TnTextView;->setLocalChangeListener(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string v2, "extra_language_activity_restart"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :cond_0
    if-eqz v1, :cond_1

    .line 35
    .line 36
    sget-object v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->n:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;->a()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->z()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method private static final s()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->n:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;->a()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->z()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object v0
.end method

.method private final t()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 2
    .line 3
    iget-object v0, v0, Lqk/p;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    new-instance v1, Lcom/transsion/home/fragment/home/x;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/transsion/home/fragment/home/x;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 14
    .line 15
    iget-object v0, v0, Lqk/p;->q:Lcom/tn/lib/widget/TnTextView;

    .line 16
    .line 17
    new-instance v1, Lcom/transsion/home/fragment/home/y;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/transsion/home/fragment/home/y;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 26
    .line 27
    iget-object v0, v0, Lqk/p;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 28
    .line 29
    new-instance v1, Lcom/transsion/home/fragment/home/z;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/transsion/home/fragment/home/z;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->r()V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->n:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;->a()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->H()Landroidx/lifecycle/b0;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 51
    .line 52
    new-instance v2, Lcom/transsion/home/fragment/home/a0;

    .line 53
    .line 54
    invoke-direct {v2, p0}, Lcom/transsion/home/fragment/home/a0;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V

    .line 55
    .line 56
    .line 57
    new-instance v3, Lcom/transsion/home/fragment/home/HomeSearchViewManager$b;

    .line 58
    .line 59
    invoke-direct {v3, v2}, Lcom/transsion/home/fragment/home/HomeSearchViewManager$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 63
    .line 64
    .line 65
    iget-object v5, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 66
    .line 67
    new-instance v10, Lcom/transsion/home/fragment/home/b0;

    .line 68
    .line 69
    invoke-direct {v10, p0}, Lcom/transsion/home/fragment/home/b0;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 73
    .line 74
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    move-object v4, v0

    .line 81
    check-cast v4, Lcom/transsnet/flow/event/FlowEventBus;

    .line 82
    .line 83
    const-class v0, Lcom/transsion/usercenterapi/UpdateResultEvent;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    const-string v0, "getName(...)"

    .line 90
    .line 91
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 95
    .line 96
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    const/4 v9, 0x0

    .line 105
    invoke-virtual/range {v4 .. v10}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method private static final u(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, p1, v0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->F(Lcom/transsion/home/fragment/home/HomeSearchViewManager;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static final v(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->E(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final w(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static final x(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/home/bean/HotSubjectEntity;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/home/bean/HotSubjectEntity;->getEveryoneSearch()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->A(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final y(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/usercenterapi/UpdateResultEvent;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->o()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final z(Lcom/transsion/home/bean/AppTab;)V
    .locals 2

    .line 1
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->d:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, "context"

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_0
    invoke-direct {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->h:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/home/bean/AppTab;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->i:Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->h:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdapter(Lxy/a;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 33
    .line 34
    iget-object p1, p1, Lqk/p;->k:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->h:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lvy/a;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final C(Lcom/transsion/home/bean/AppTab;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->d:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 10
    .line 11
    iget-object v0, v0, Lqk/p;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 23
    .line 24
    const/high16 v1, 0x40800000    # 4.0f

    .line 25
    .line 26
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/2addr v1, v2

    .line 35
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 38
    .line 39
    iget-object v1, v1, Lqk/p;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->k:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->o()V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->z(Lcom/transsion/home/bean/AppTab;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->t()V

    .line 53
    .line 54
    .line 55
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 56
    .line 57
    new-instance p1, Lcom/transsion/home/fragment/home/t;

    .line 58
    .line 59
    invoke-direct {p1}, Lcom/transsion/home/fragment/home/t;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->c:Lcom/transsion/home/fragment/home/t;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 65
    .line 66
    iget-object v0, v0, Lqk/p;->c:Landroid/widget/FrameLayout;

    .line 67
    .line 68
    const-string v1, "flGameCenter"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 74
    .line 75
    iget-object v1, v1, Lqk/p;->d:Landroid/widget/FrameLayout;

    .line 76
    .line 77
    const-string v2, "flPhoneCenter"

    .line 78
    .line 79
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 83
    .line 84
    iget-object v2, v2, Lqk/p;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 85
    .line 86
    const-string v3, "ivMbLogo"

    .line 87
    .line 88
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    .line 92
    .line 93
    invoke-static {v3}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/transsion/home/fragment/home/t;->b(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/View;Lkotlinx/coroutines/n0;)V

    .line 98
    .line 99
    .line 100
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 101
    .line 102
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 109
    .line 110
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-nez p1, :cond_0

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v2, "HomeSearchViewManager --> initGameCenter() --> it --> "

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const/4 v4, 0x4

    .line 145
    const/4 v5, 0x0

    .line 146
    const-string v1, "zxb_icon"

    .line 147
    .line 148
    const/4 v3, 0x0

    .line 149
    invoke-static/range {v0 .. v5}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :goto_1
    new-instance p1, Lcom/transsion/home/fragment/home/v;

    .line 153
    .line 154
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lqk/p;

    .line 155
    .line 156
    iget-object v0, v0, Lqk/p;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 157
    .line 158
    const-string v1, "ivNovelEnter"

    .line 159
    .line 160
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-direct {p1, v0}, Lcom/transsion/home/fragment/home/v;-><init>(Landroid/widget/ImageView;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public final D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public final G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->c:Lcom/transsion/home/fragment/home/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/home/fragment/home/t;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final I(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "networkCapabilities"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    sget-object p1, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->n:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;->a()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->G()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final L()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->m:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final M(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lt v0, v1, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    .line 21
    .line 22
    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    rem-int/2addr v0, v1

    .line 29
    iput v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    .line 30
    .line 31
    :cond_1
    const/16 v0, 0x64

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->L()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->m:Landroid/os/Handler;

    .line 39
    .line 40
    const-wide/16 v1, 0x1f4

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->L()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->m:Landroid/os/Handler;

    .line 50
    .line 51
    const-wide/16 v1, 0x1388

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public final O(Lcom/transsion/home/bean/AppTab;)V
    .locals 1

    .line 1
    const-string v0, "appTab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->i:Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->h(Lcom/transsion/home/bean/AppTab;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->j:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->m(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->j:Z

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->m(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->c:Lcom/transsion/home/fragment/home/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/home/fragment/home/t;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
