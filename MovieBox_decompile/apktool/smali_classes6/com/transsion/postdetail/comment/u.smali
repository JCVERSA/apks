.class public final Lcom/transsion/postdetail/comment/u;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Llj/a;->b(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/transsion/postdetail/comment/u;->a:I

    .line 10
    .line 11
    const/16 v0, 0x34

    .line 12
    .line 13
    invoke-static {v0}, Llj/a;->b(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/transsion/postdetail/comment/u;->b:I

    .line 18
    .line 19
    return-void
.end method

.method private final d(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/u;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    .line 18
    .line 19
    sget v1, Lcom/tn/lib/widget/R$color;->line_01:I

    .line 20
    .line 21
    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/transsion/postdetail/comment/u;->c:Landroid/graphics/Paint;

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/comment/u;->c:Landroid/graphics/Paint;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method private final e(Lp6/a;Lp6/a;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Lp6/a;->getItemType()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-interface {p2}, Lp6/a;->getItemType()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/4 p2, 0x1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    if-eq p1, p2, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-eq p1, v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, p2

    .line 23
    :goto_0
    return v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 1

    .line 1
    const-string v0, "outRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "state"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const/4 p4, -0x1

    .line 26
    if-ne p2, p4, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    instance-of p4, p3, Lcom/transsion/postdetail/comment/n;

    .line 34
    .line 35
    if-eqz p4, :cond_1

    .line 36
    .line 37
    check-cast p3, Lcom/transsion/postdetail/comment/n;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p3, 0x0

    .line 41
    :goto_0
    if-nez p3, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    check-cast p4, Lp6/a;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    if-nez p4, :cond_3

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    invoke-interface {p4}, Lp6/a;->getItemType()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    return-void

    .line 60
    :cond_4
    if-lez p2, :cond_6

    .line 61
    .line 62
    add-int/lit8 p2, p2, -0x1

    .line 63
    .line 64
    :try_start_1
    invoke-virtual {p3, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lp6/a;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    if-nez p2, :cond_5

    .line 71
    .line 72
    return-void

    .line 73
    :cond_5
    invoke-direct {p0, p2, p4}, Lcom/transsion/postdetail/comment/u;->e(Lp6/a;Lp6/a;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_6

    .line 78
    .line 79
    iget p2, p0, Lcom/transsion/postdetail/comment/u;->a:I

    .line 80
    .line 81
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 82
    .line 83
    nop

    .line 84
    :catch_0
    :cond_6
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 11

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "state"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    instance-of v0, p3, Lcom/transsion/postdetail/comment/n;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    check-cast p3, Lcom/transsion/postdetail/comment/n;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p3, 0x0

    .line 28
    :goto_0
    if-nez p3, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_1
    if-ge v1, v0, :cond_6

    .line 37
    .line 38
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v4, -0x1

    .line 47
    if-eq v3, v4, :cond_5

    .line 48
    .line 49
    if-eqz v3, :cond_5

    .line 50
    .line 51
    :try_start_0
    invoke-virtual {p3, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lp6/a;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    if-nez v4, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-interface {v4}, Lp6/a;->getItemType()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 68
    .line 69
    :try_start_1
    invoke-virtual {p3, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lp6/a;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .line 75
    if-nez v3, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/transsion/postdetail/comment/u;->e(Lp6/a;Lp6/a;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_5

    .line 83
    .line 84
    iget v3, p0, Lcom/transsion/postdetail/comment/u;->b:I

    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    int-to-float v7, v2

    .line 95
    iget v2, p0, Lcom/transsion/postdetail/comment/u;->a:I

    .line 96
    .line 97
    int-to-float v2, v2

    .line 98
    add-float v9, v7, v2

    .line 99
    .line 100
    int-to-float v6, v3

    .line 101
    int-to-float v8, v4

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const-string v3, "getContext(...)"

    .line 107
    .line 108
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v2}, Lcom/transsion/postdetail/comment/u;->d(Landroid/content/Context;)Landroid/graphics/Paint;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    move-object v5, p1

    .line 116
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 117
    .line 118
    .line 119
    :catch_0
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    return-void
.end method
