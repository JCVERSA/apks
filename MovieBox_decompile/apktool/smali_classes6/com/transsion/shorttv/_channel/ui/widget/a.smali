.class public final Lcom/transsion/shorttv/_channel/ui/widget/a;
.super Landroid/app/Dialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/_channel/ui/widget/a$a;,
        Lcom/transsion/shorttv/_channel/ui/widget/a$b;,
        Lcom/transsion/shorttv/_channel/ui/widget/a$c;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

.field private f:Ljava/util/List;

.field private g:Ljava/util/Map;

.field private h:Lkotlin/jvm/functions/Function1;

.field private final i:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x103000a

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->f:Ljava/util/List;

    .line 17
    .line 18
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    .line 24
    .line 25
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->i:Ljava/util/Map;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/_channel/ui/widget/a;->g(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/_channel/ui/widget/a;->j(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/_channel/ui/widget/a;->h(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/_channel/ui/widget/a;->i(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e()Landroid/view/View;
    .locals 4

    .line 1
    new-instance v0, Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget v2, Lcom/transsion/shorttv/R$color;->short_tv_white_10:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    .line 29
    const/high16 v2, 0x3f800000    # 1.0f

    .line 30
    .line 31
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, -0x1

    .line 36
    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method private final f()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->i:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->i:Ljava/util/Map;

    .line 52
    .line 53
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    return v2

    .line 64
    :cond_2
    const/4 v0, 0x0

    .line 65
    return v0
.end method

.method private static final g(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "insets"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "getInsets(...)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget p1, p1, Lz0/c;->d:I

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    .line 42
    .line 43
    return-object p0
.end method

.method private static final h(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/_channel/ui/widget/a;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final i(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/_channel/ui/widget/a;->f()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->h:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final j(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->h:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final k()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->f:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getRangeVals()Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterType()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    sget-object v4, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;->Companion:Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView$a;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getRangeVals()Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;->getMinVal()F

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getRangeVals()Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;->getMaxVal()F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v4, v5, v1}, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView$a;->a(FF)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterValsV2()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/util/Collection;

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_0

    .line 70
    .line 71
    iget-object v2, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterType()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterValsV2()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v4, 0x0

    .line 82
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;->getId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->e:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method


# virtual methods
.method public final l(Ljava/util/List;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "items"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "selectItems"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->f:Ljava/util/List;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->i:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->i:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    iput-object p3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->h:Lkotlin/jvm/functions/Function1;

    .line 39
    .line 40
    new-instance p1, Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->f:Ljava/util/List;

    .line 43
    .line 44
    iget-object p3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    .line 45
    .line 46
    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/shorttv/_channel/ui/widget/a$b;-><init>(Lcom/transsion/shorttv/_channel/ui/widget/a;Ljava/util/List;Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->e:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    .line 50
    .line 51
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    if-nez p1, :cond_0

    .line 56
    .line 57
    const-string p1, "mRecyclerView"

    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    :cond_0
    iget-object p2, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->e:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x23

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {v1, v3}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v2, 0x1020002

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lwq/b;

    .line 37
    .line 38
    invoke-direct {v2}, Lwq/b;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 51
    .line 52
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, -0x1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    const/high16 v4, -0x80000000

    .line 75
    .line 76
    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    sget v5, Lcom/transsion/shorttv/R$color;->short_tv_black_90:I

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {v1, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 100
    .line 101
    .line 102
    :cond_4
    new-instance v1, Landroid/widget/LinearLayout;

    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    const/4 v4, 0x1

    .line 112
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    sget v6, Lcom/transsion/shorttv/R$color;->short_tv_black_90:I

    .line 124
    .line 125
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 130
    .line 131
    .line 132
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .line 133
    .line 134
    invoke-direct {v5, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    new-instance v5, Landroid/widget/LinearLayout;

    .line 141
    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 150
    .line 151
    .line 152
    const/16 v6, 0x10

    .line 153
    .line 154
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 155
    .line 156
    .line 157
    const/high16 v6, 0x41800000    # 16.0f

    .line 158
    .line 159
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    const/high16 v8, 0x41400000    # 12.0f

    .line 164
    .line 165
    invoke-static {v8}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    invoke-static {v8}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    invoke-virtual {v5, v7, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 178
    .line 179
    .line 180
    new-instance v7, Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    sget v10, Lcom/transsion/shorttv/R$string;->short_tv_filter_more_title:I

    .line 194
    .line 195
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    const/high16 v9, 0x41900000    # 18.0f

    .line 203
    .line 204
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    .line 209
    .line 210
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 211
    .line 212
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 213
    .line 214
    .line 215
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 216
    .line 217
    const/4 v12, -0x2

    .line 218
    const/high16 v13, 0x3f800000    # 1.0f

    .line 219
    .line 220
    invoke-direct {v11, v3, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    .line 225
    .line 226
    new-instance v11, Landroid/widget/ImageView;

    .line 227
    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    invoke-direct {v11, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 233
    .line 234
    .line 235
    sget v14, Lcom/transsion/shorttv/R$drawable;->short_tv_music_iv_close:I

    .line 236
    .line 237
    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 241
    .line 242
    .line 243
    move-result-object v14

    .line 244
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 245
    .line 246
    .line 247
    move-result-object v14

    .line 248
    sget v15, Lcom/transsion/shorttv/R$color;->short_tv_white:I

    .line 249
    .line 250
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    .line 251
    .line 252
    .line 253
    move-result v14

    .line 254
    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 255
    .line 256
    .line 257
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 258
    .line 259
    const/high16 v15, 0x41a80000    # 21.0f

    .line 260
    .line 261
    invoke-static {v15}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    invoke-static {v15}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 266
    .line 267
    .line 268
    move-result v15

    .line 269
    invoke-direct {v14, v9, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v11, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    .line 274
    .line 275
    new-instance v9, Lwq/c;

    .line 276
    .line 277
    invoke-direct {v9, v0}, Lwq/c;-><init>(Lcom/transsion/shorttv/_channel/ui/widget/a;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v11, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    .line 282
    .line 283
    iput-object v11, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->d:Landroid/widget/ImageView;

    .line 284
    .line 285
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 286
    .line 287
    .line 288
    iget-object v7, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->d:Landroid/widget/ImageView;

    .line 289
    .line 290
    if-nez v7, :cond_5

    .line 291
    .line 292
    const-string v7, "mCloseBtn"

    .line 293
    .line 294
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const/4 v7, 0x0

    .line 298
    :cond_5
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 302
    .line 303
    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/_channel/ui/widget/a;->e()Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 309
    .line 310
    .line 311
    new-instance v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 312
    .line 313
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    invoke-direct {v5, v7}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 318
    .line 319
    .line 320
    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 321
    .line 322
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    invoke-direct {v7, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 330
    .line 331
    .line 332
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 333
    .line 334
    invoke-direct {v7, v2, v3, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    .line 339
    .line 340
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    invoke-static {v8}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 345
    .line 346
    .line 347
    move-result v11

    .line 348
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 349
    .line 350
    .line 351
    move-result v14

    .line 352
    invoke-static {v8}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 353
    .line 354
    .line 355
    move-result v15

    .line 356
    invoke-virtual {v5, v7, v11, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 360
    .line 361
    .line 362
    iput-object v5, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 363
    .line 364
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 365
    .line 366
    .line 367
    new-instance v5, Landroid/widget/LinearLayout;

    .line 368
    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    sget v7, Lcom/transsion/shorttv/R$color;->short_tv_black_90:I

    .line 388
    .line 389
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 394
    .line 395
    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/_channel/ui/widget/a;->e()Landroid/view/View;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 401
    .line 402
    .line 403
    new-instance v4, Landroid/widget/LinearLayout;

    .line 404
    .line 405
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    invoke-direct {v4, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 413
    .line 414
    .line 415
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 416
    .line 417
    .line 418
    move-result v7

    .line 419
    invoke-static {v8}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 420
    .line 421
    .line 422
    move-result v11

    .line 423
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 424
    .line 425
    .line 426
    move-result v14

    .line 427
    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 428
    .line 429
    .line 430
    move-result v6

    .line 431
    invoke-virtual {v4, v7, v11, v14, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 432
    .line 433
    .line 434
    new-instance v6, Landroid/widget/LinearLayout;

    .line 435
    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 437
    .line 438
    .line 439
    move-result-object v7

    .line 440
    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 441
    .line 442
    .line 443
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 444
    .line 445
    const/high16 v11, 0x42400000    # 48.0f

    .line 446
    .line 447
    invoke-static {v11}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 448
    .line 449
    .line 450
    move-result v14

    .line 451
    invoke-direct {v7, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    .line 456
    .line 457
    const/16 v7, 0x11

    .line 458
    .line 459
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 460
    .line 461
    .line 462
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    .line 463
    .line 464
    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v12, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 468
    .line 469
    .line 470
    const/high16 v14, 0x42c80000    # 100.0f

    .line 471
    .line 472
    invoke-static {v14}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 473
    .line 474
    .line 475
    move-result v15

    .line 476
    int-to-float v15, v15

    .line 477
    invoke-virtual {v12, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 478
    .line 479
    .line 480
    invoke-static {v13}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 481
    .line 482
    .line 483
    move-result v15

    .line 484
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 485
    .line 486
    .line 487
    move-result-object v16

    .line 488
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 489
    .line 490
    .line 491
    move-result-object v9

    .line 492
    sget v14, Lcom/transsion/shorttv/R$color;->short_tv_white:I

    .line 493
    .line 494
    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    .line 495
    .line 496
    .line 497
    move-result v9

    .line 498
    invoke-virtual {v12, v15, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v12, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v6, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 505
    .line 506
    .line 507
    new-instance v9, Lwq/d;

    .line 508
    .line 509
    invoke-direct {v9, v0}, Lwq/d;-><init>(Lcom/transsion/shorttv/_channel/ui/widget/a;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    .line 514
    .line 515
    new-instance v9, Landroid/widget/TextView;

    .line 516
    .line 517
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 518
    .line 519
    .line 520
    move-result-object v12

    .line 521
    invoke-direct {v9, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 525
    .line 526
    .line 527
    move-result-object v12

    .line 528
    sget v14, Lcom/transsion/shorttv/R$string;->short_tv_filter_reset:I

    .line 529
    .line 530
    invoke-virtual {v12, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v12

    .line 534
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    .line 536
    .line 537
    const/high16 v12, 0x41900000    # 18.0f

    .line 538
    .line 539
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 546
    .line 547
    .line 548
    const/high16 v2, 0x41c00000    # 24.0f

    .line 549
    .line 550
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 551
    .line 552
    .line 553
    move-result v12

    .line 554
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    invoke-virtual {v9, v12, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 562
    .line 563
    .line 564
    iput-object v6, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->b:Landroid/view/View;

    .line 565
    .line 566
    new-instance v2, Landroid/widget/LinearLayout;

    .line 567
    .line 568
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 569
    .line 570
    .line 571
    move-result-object v6

    .line 572
    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 573
    .line 574
    .line 575
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 576
    .line 577
    invoke-static {v11}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 578
    .line 579
    .line 580
    move-result v9

    .line 581
    invoke-direct {v6, v3, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 582
    .line 583
    .line 584
    invoke-static {v8}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 585
    .line 586
    .line 587
    move-result v8

    .line 588
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 595
    .line 596
    .line 597
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    .line 598
    .line 599
    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 603
    .line 604
    .line 605
    const/high16 v3, 0x42c80000    # 100.0f

    .line 606
    .line 607
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    int-to-float v3, v3

    .line 612
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    sget v7, Lcom/transsion/shorttv/R$color;->short_tv_white:I

    .line 624
    .line 625
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 626
    .line 627
    .line 628
    move-result v3

    .line 629
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 633
    .line 634
    .line 635
    new-instance v3, Lwq/e;

    .line 636
    .line 637
    invoke-direct {v3, v0}, Lwq/e;-><init>(Lcom/transsion/shorttv/_channel/ui/widget/a;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    .line 642
    .line 643
    new-instance v3, Landroid/widget/TextView;

    .line 644
    .line 645
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 646
    .line 647
    .line 648
    move-result-object v6

    .line 649
    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 653
    .line 654
    .line 655
    move-result-object v6

    .line 656
    sget v7, Lcom/transsion/shorttv/R$string;->short_tv_filter_confirm:I

    .line 657
    .line 658
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v6

    .line 662
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    .line 664
    .line 665
    const/high16 v6, 0x41900000    # 18.0f

    .line 666
    .line 667
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 671
    .line 672
    .line 673
    move-result-object v6

    .line 674
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 675
    .line 676
    .line 677
    move-result-object v6

    .line 678
    sget v7, Lcom/transsion/shorttv/R$color;->short_tv_black:I

    .line 679
    .line 680
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 681
    .line 682
    .line 683
    move-result v6

    .line 684
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 691
    .line 692
    .line 693
    iput-object v2, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->c:Landroid/view/View;

    .line 694
    .line 695
    iget-object v2, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->b:Landroid/view/View;

    .line 696
    .line 697
    if-nez v2, :cond_6

    .line 698
    .line 699
    const-string v2, "mResetBtn"

    .line 700
    .line 701
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    const/4 v2, 0x0

    .line 705
    :cond_6
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 706
    .line 707
    .line 708
    iget-object v2, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->c:Landroid/view/View;

    .line 709
    .line 710
    if-nez v2, :cond_7

    .line 711
    .line 712
    const-string v2, "mConfirmBtn"

    .line 713
    .line 714
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    const/4 v2, 0x0

    .line 718
    :cond_7
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 728
    .line 729
    .line 730
    iget-object v1, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->e:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    .line 731
    .line 732
    if-eqz v1, :cond_9

    .line 733
    .line 734
    iget-object v1, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 735
    .line 736
    if-nez v1, :cond_8

    .line 737
    .line 738
    const-string v1, "mRecyclerView"

    .line 739
    .line 740
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    const/4 v9, 0x0

    .line 744
    goto :goto_0

    .line 745
    :cond_8
    move-object v9, v1

    .line 746
    :goto_0
    iget-object v1, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->e:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    .line 747
    .line 748
    invoke-virtual {v9, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 749
    .line 750
    .line 751
    :cond_9
    return-void
.end method
