.class public final Lij/e;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView;

.field private final b:F

.field private final c:Lkotlin/jvm/functions/Function1;

.field private final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;FLkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string v0, "onExposure"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lij/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    iput p3, p0, Lij/e;->b:F

    .line 12
    .line 13
    iput-object p4, p0, Lij/e;->c:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lij/e;->d:Ljava/util/Set;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance p2, Lij/e$a;

    .line 25
    .line 26
    invoke-direct {p2, p0}, Lij/e$a;-><init>(Lij/e;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {p0}, Lij/e;->d()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static final synthetic a(Lij/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lij/e;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c(Landroid/view/View;I)Z
    .locals 4

    .line 1
    new-instance p2, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lij/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 31
    .line 32
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 33
    .line 34
    sub-int/2addr p2, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move p2, v1

    .line 37
    :goto_0
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    move p1, v1

    .line 45
    :goto_1
    iget v0, p0, Lij/e;->b:F

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    cmpg-float v2, v0, v2

    .line 49
    .line 50
    if-gez v2, :cond_4

    .line 51
    .line 52
    const v0, 0x3dcccccd    # 0.1f

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 57
    .line 58
    cmpl-float v3, v0, v2

    .line 59
    .line 60
    if-lez v3, :cond_5

    .line 61
    .line 62
    move v0, v2

    .line 63
    :cond_5
    :goto_2
    int-to-float p2, p2

    .line 64
    int-to-float p1, p1

    .line 65
    mul-float/2addr p1, v0

    .line 66
    cmpl-float p1, p2, p1

    .line 67
    .line 68
    if-ltz p1, :cond_6

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    :cond_6
    return v1
.end method

.method private final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lij/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lij/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    iget-object v2, p0, Lij/e;->c:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    invoke-direct {p0, v1, v0, v2}, Lij/e;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$m;Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lij/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    iget-object v2, p0, Lij/e;->c:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    invoke-direct {p0, v1, v0, v2}, Lij/e;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$m;Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_1
    return-void
.end method

.method private final f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$m;Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lij/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p1, p2

    .line 12
    :goto_0
    if-ge p2, p1, :cond_4

    .line 13
    .line 14
    iget-object v0, p0, Lij/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_1
    iget-object v1, p0, Lij/e;->d:Ljava/util/Set;

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    invoke-direct {p0, v0, p2}, Lij/e;->c(Landroid/view/View;I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iget-object v1, p0, Lij/e;->d:Ljava/util/Set;

    .line 43
    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Lij/e;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/4 v0, -0x1

    .line 63
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lij/e;->d:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lij/e;->b()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lij/e;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
