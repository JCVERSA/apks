.class public Lcom/to/aboomy/pager2banner/Banner;
.super Landroid/widget/RelativeLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/to/aboomy/pager2banner/Banner$e;,
        Lcom/to/aboomy/pager2banner/Banner$c;,
        Lcom/to/aboomy/pager2banner/Banner$d;
    }
.end annotation


# instance fields
.field private a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private b:Landroidx/viewpager2/widget/CompositePageTransformer;

.field private c:Lcom/to/aboomy/pager2banner/Banner$c;

.field private d:Landroidx/viewpager2/widget/ViewPager2;

.field private e:Lcom/to/aboomy/pager2banner/a;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:J

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private final r:I

.field private final s:Ljava/lang/Runnable;

.field private final t:Landroidx/recyclerview/widget/RecyclerView$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/to/aboomy/pager2banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/to/aboomy/pager2banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/to/aboomy/pager2banner/Banner;->f:Z

    .line 5
    iput-boolean p2, p0, Lcom/to/aboomy/pager2banner/Banner;->g:Z

    const-wide/16 v0, 0x9c4

    .line 6
    iput-wide v0, p0, Lcom/to/aboomy/pager2banner/Banner;->i:J

    const-wide/16 v0, 0x320

    .line 7
    iput-wide v0, p0, Lcom/to/aboomy/pager2banner/Banner;->j:J

    const/4 p3, 0x2

    .line 8
    iput p3, p0, Lcom/to/aboomy/pager2banner/Banner;->k:I

    .line 9
    div-int/2addr p3, p3

    iput p3, p0, Lcom/to/aboomy/pager2banner/Banner;->l:I

    .line 10
    new-instance p3, Lcom/to/aboomy/pager2banner/Banner$1;

    invoke-direct {p3, p0}, Lcom/to/aboomy/pager2banner/Banner$1;-><init>(Lcom/to/aboomy/pager2banner/Banner;)V

    iput-object p3, p0, Lcom/to/aboomy/pager2banner/Banner;->s:Ljava/lang/Runnable;

    .line 11
    new-instance p3, Lcom/to/aboomy/pager2banner/Banner$a;

    invoke-direct {p3, p0}, Lcom/to/aboomy/pager2banner/Banner$a;-><init>(Lcom/to/aboomy/pager2banner/Banner;)V

    iput-object p3, p0, Lcom/to/aboomy/pager2banner/Banner;->t:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 12
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    shr-int/lit8 p2, p3, 0x1

    iput p2, p0, Lcom/to/aboomy/pager2banner/Banner;->r:I

    .line 13
    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/Banner;->s(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/to/aboomy/pager2banner/Banner;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/to/aboomy/pager2banner/Banner;)Lcom/to/aboomy/pager2banner/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/to/aboomy/pager2banner/Banner;->e:Lcom/to/aboomy/pager2banner/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/to/aboomy/pager2banner/Banner;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/to/aboomy/pager2banner/Banner;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/recyclerview/widget/RecyclerView$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/to/aboomy/pager2banner/Banner;->t:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/to/aboomy/pager2banner/Banner;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/Banner;->t(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Lcom/to/aboomy/pager2banner/Banner;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/to/aboomy/pager2banner/Banner;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic g(Lcom/to/aboomy/pager2banner/Banner;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/to/aboomy/pager2banner/Banner;->m:I

    .line 2
    .line 3
    return p0
.end method

.method private getRealCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->c:Lcom/to/aboomy/pager2banner/Banner$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/to/aboomy/pager2banner/Banner$c;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method static synthetic h(Lcom/to/aboomy/pager2banner/Banner;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/to/aboomy/pager2banner/Banner;->m:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lcom/to/aboomy/pager2banner/Banner;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->m:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/to/aboomy/pager2banner/Banner;->m:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic j(Lcom/to/aboomy/pager2banner/Banner;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->getRealCount()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic k(Lcom/to/aboomy/pager2banner/Banner;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/to/aboomy/pager2banner/Banner;->l:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/to/aboomy/pager2banner/Banner;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/to/aboomy/pager2banner/Banner;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m(Lcom/to/aboomy/pager2banner/Banner;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/to/aboomy/pager2banner/Banner;->g:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic n(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/to/aboomy/pager2banner/Banner;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/to/aboomy/pager2banner/Banner;->s:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Lcom/to/aboomy/pager2banner/Banner;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/to/aboomy/pager2banner/Banner;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic q(Lcom/to/aboomy/pager2banner/Banner;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/Banner;->u(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private r()V
    .locals 7

    .line 1
    const-string v0, "mLayoutManager"

    .line 2
    .line 3
    const-class v1, Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-virtual {v2, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 23
    .line 24
    new-instance v4, Lcom/to/aboomy/pager2banner/Banner$e;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-direct {v4, p0, v5, v3}, Lcom/to/aboomy/pager2banner/Banner$e;-><init>(Lcom/to/aboomy/pager2banner/Banner;Landroid/content/Context;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 34
    .line 35
    .line 36
    const-class v5, Landroidx/recyclerview/widget/RecyclerView$m;

    .line 37
    .line 38
    const-string v6, "mRecyclerView"

    .line 39
    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const/4 v6, 0x1

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 59
    .line 60
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "mPageTransformerAdapter"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    goto :goto_1

    .line 97
    :catch_1
    move-exception v0

    .line 98
    goto :goto_2

    .line 99
    :cond_0
    :goto_0
    const-string v2, "mScrollEventAdapter"

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_1

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    :cond_1
    :goto_3
    return-void
.end method

.method private s(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 18
    .line 19
    new-instance v0, Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 20
    .line 21
    invoke-direct {v0}, Landroidx/viewpager2/widget/CompositePageTransformer;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->b:Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 30
    .line 31
    new-instance v0, Lcom/to/aboomy/pager2banner/Banner$d;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, p0, v1}, Lcom/to/aboomy/pager2banner/Banner$d;-><init>(Lcom/to/aboomy/pager2banner/Banner;Lcom/to/aboomy/pager2banner/Banner$1;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 41
    .line 42
    new-instance v0, Lcom/to/aboomy/pager2banner/Banner$c;

    .line 43
    .line 44
    invoke-direct {v0, p0, v1}, Lcom/to/aboomy/pager2banner/Banner$c;-><init>(Lcom/to/aboomy/pager2banner/Banner;Lcom/to/aboomy/pager2banner/Banner$1;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->c:Lcom/to/aboomy/pager2banner/Banner$c;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/to/aboomy/pager2banner/Banner;->setOffscreenPageLimit(I)Lcom/to/aboomy/pager2banner/Banner;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->r()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private t(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->l:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner;->c:Lcom/to/aboomy/pager2banner/Banner$c;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->c:Lcom/to/aboomy/pager2banner/Banner$c;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/to/aboomy/pager2banner/Banner;->setCurrentItem(IZ)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/to/aboomy/pager2banner/Banner;->e:Lcom/to/aboomy/pager2banner/a;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->getRealCount()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->getCurrentPager()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-interface {p1, v0, v1}, Lcom/to/aboomy/pager2banner/a;->initIndicatorCount(II)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->isAutoPlay()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->startTurning()V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method private u(I)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->getRealCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->l:I

    .line 9
    .line 10
    sub-int/2addr p1, v0

    .line 11
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->getRealCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    rem-int/2addr p1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    if-gez p1, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->getRealCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr p1, v0

    .line 25
    :cond_1
    return p1
.end method


# virtual methods
.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    return-object p0
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;I)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;I)V

    return-object p0
.end method

.method public addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->b:Landroidx/viewpager2/widget/CompositePageTransformer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->isAutoPlay()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->stopTurning()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->startTurning()V

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->c:Lcom/to/aboomy/pager2banner/Banner$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner$c;->g(Lcom/to/aboomy/pager2banner/Banner$c;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCurrentPager()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->m:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/to/aboomy/pager2banner/Banner;->u(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getViewPager2()Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAutoPlay()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/to/aboomy/pager2banner/Banner;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->getRealCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->isAutoPlay()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->startTurning()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->isAutoPlay()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->stopTurning()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/to/aboomy/pager2banner/Banner;->p:F

    .line 12
    .line 13
    iput v0, p0, Lcom/to/aboomy/pager2banner/Banner;->n:F

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/to/aboomy/pager2banner/Banner;->q:F

    .line 20
    .line 21
    iput v0, p0, Lcom/to/aboomy/pager2banner/Banner;->o:F

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    const/4 v1, 0x2

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    if-ne v0, v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/to/aboomy/pager2banner/Banner;->p:F

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/to/aboomy/pager2banner/Banner;->q:F

    .line 40
    .line 41
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->p:F

    .line 50
    .line 51
    iget v1, p0, Lcom/to/aboomy/pager2banner/Banner;->n:F

    .line 52
    .line 53
    sub-float/2addr v0, v1

    .line 54
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget v1, p0, Lcom/to/aboomy/pager2banner/Banner;->q:F

    .line 59
    .line 60
    iget v4, p0, Lcom/to/aboomy/pager2banner/Banner;->o:F

    .line 61
    .line 62
    sub-float/2addr v1, v4

    .line 63
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget-object v4, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 68
    .line 69
    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    iget v4, p0, Lcom/to/aboomy/pager2banner/Banner;->r:I

    .line 76
    .line 77
    int-to-float v4, v4

    .line 78
    cmpl-float v4, v0, v4

    .line 79
    .line 80
    if-lez v4, :cond_2

    .line 81
    .line 82
    cmpl-float v0, v0, v1

    .line 83
    .line 84
    if-lez v0, :cond_2

    .line 85
    .line 86
    :goto_0
    move v2, v3

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    iget v4, p0, Lcom/to/aboomy/pager2banner/Banner;->r:I

    .line 89
    .line 90
    int-to-float v4, v4

    .line 91
    cmpl-float v4, v1, v4

    .line 92
    .line 93
    if-lez v4, :cond_2

    .line 94
    .line 95
    cmpl-float v0, v1, v0

    .line 96
    .line 97
    if-lez v0, :cond_2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    const/4 v1, 0x3

    .line 109
    if-eq v0, v1, :cond_5

    .line 110
    .line 111
    if-ne v0, v3, :cond_4

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    return p1

    .line 119
    :cond_5
    :goto_3
    iget p1, p0, Lcom/to/aboomy/pager2banner/Banner;->p:F

    .line 120
    .line 121
    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->n:F

    .line 122
    .line 123
    sub-float/2addr p1, v0

    .line 124
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->r:I

    .line 129
    .line 130
    int-to-float v0, v0

    .line 131
    cmpl-float p1, p1, v0

    .line 132
    .line 133
    if-gtz p1, :cond_6

    .line 134
    .line 135
    iget p1, p0, Lcom/to/aboomy/pager2banner/Banner;->q:F

    .line 136
    .line 137
    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->o:F

    .line 138
    .line 139
    sub-float/2addr p1, v0

    .line 140
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->r:I

    .line 145
    .line 146
    int-to-float v0, v0

    .line 147
    cmpl-float p1, p1, v0

    .line 148
    .line 149
    if-lez p1, :cond_7

    .line 150
    .line 151
    :cond_6
    move v2, v3

    .line 152
    :cond_7
    return v2
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/to/aboomy/pager2banner/Banner;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->c:Lcom/to/aboomy/pager2banner/Banner$c;

    invoke-virtual {v0, p1}, Lcom/to/aboomy/pager2banner/Banner$c;->i(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    invoke-direct {p0, p2}, Lcom/to/aboomy/pager2banner/Banner;->t(I)V

    return-void
.end method

.method public setAutoPlay(Z)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/to/aboomy/pager2banner/Banner;->f:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->getRealCount()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-le p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->startTurning()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object p0
.end method

.method public setAutoTurningTime(J)Lcom/to/aboomy/pager2banner/Banner;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/to/aboomy/pager2banner/Banner;->i:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/to/aboomy/pager2banner/Banner;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->l:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/to/aboomy/pager2banner/Banner;->m:I

    .line 3
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public setIndicator(Lcom/to/aboomy/pager2banner/a;)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/to/aboomy/pager2banner/Banner;->setIndicator(Lcom/to/aboomy/pager2banner/a;Z)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object p1

    return-object p1
.end method

.method public setIndicator(Lcom/to/aboomy/pager2banner/a;Z)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->e:Lcom/to/aboomy/pager2banner/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/to/aboomy/pager2banner/a;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner;->e:Lcom/to/aboomy/pager2banner/a;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/to/aboomy/pager2banner/a;->getView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/to/aboomy/pager2banner/Banner;->e:Lcom/to/aboomy/pager2banner/a;

    invoke-interface {p2}, Lcom/to/aboomy/pager2banner/a;->getParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object p0
.end method

.method public setOffscreenPageLimit(I)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setOrientation(I)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setOuterPageChangeListener(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/to/aboomy/pager2banner/Banner;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPageMargin(II)Lcom/to/aboomy/pager2banner/Banner;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1, p2}, Lcom/to/aboomy/pager2banner/Banner;->setPageMargin(III)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object p1

    return-object p1
.end method

.method public setPageMargin(III)Lcom/to/aboomy/pager2banner/Banner;
    .locals 4

    const/4 v0, 0x0

    if-gez p3, :cond_0

    move p3, v0

    .line 2
    :cond_0
    new-instance v1, Landroidx/viewpager2/widget/MarginPageTransformer;

    invoke-direct {v1, p3}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/to/aboomy/pager2banner/Banner;->addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/to/aboomy/pager2banner/Banner;

    .line 3
    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 5
    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr p1, v3

    iget-object v3, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p2, p3

    iget-object p3, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    :goto_0
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 p1, 0x4

    .line 8
    iput p1, p0, Lcom/to/aboomy/pager2banner/Banner;->k:I

    const/4 p1, 0x2

    .line 9
    iput p1, p0, Lcom/to/aboomy/pager2banner/Banner;->l:I

    return-object p0
.end method

.method public setPagerScrollDuration(J)Lcom/to/aboomy/pager2banner/Banner;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/to/aboomy/pager2banner/Banner;->j:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setRoundCorners(F)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1

    .line 1
    new-instance v0, Lcom/to/aboomy/pager2banner/Banner$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/to/aboomy/pager2banner/Banner$b;-><init>(Lcom/to/aboomy/pager2banner/Banner;F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public startTurning()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->stopTurning()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->s:Ljava/lang/Runnable;

    .line 5
    .line 6
    iget-wide v1, p0, Lcom/to/aboomy/pager2banner/Banner;->i:J

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/to/aboomy/pager2banner/Banner;->h:Z

    .line 13
    .line 14
    return-void
.end method

.method public stopTurning()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/to/aboomy/pager2banner/Banner;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->s:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/to/aboomy/pager2banner/Banner;->h:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method
