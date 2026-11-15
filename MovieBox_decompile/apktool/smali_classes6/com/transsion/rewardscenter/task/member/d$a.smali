.class public final Lcom/transsion/rewardscenter/task/member/d$a;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/rewardscenter/task/member/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/graphics/Paint;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/rewardscenter/task/member/d$a;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    iput p1, p0, Lcom/transsion/rewardscenter/task/member/d$a;->a:I

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/member/d$a;->b:Landroid/graphics/Paint;

    const/high16 p1, 0x41c00000    # 24.0f

    .line 4
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/rewardscenter/task/member/d$a;->c:I

    const/high16 p1, 0x41000000    # 8.0f

    .line 5
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/rewardscenter/task/member/d$a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/rewardscenter/task/member/d$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 4

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
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "null cannot be cast to non-null type com.transsion.rewardscenter.task.member.MemberTaskAdapter"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast v0, Lcom/transsion/rewardscenter/task/member/d;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v2, Lcom/transsion/rewardscenterapi/TaskType;->TITLE:Lcom/transsion/rewardscenterapi/TaskType;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/transsion/rewardscenterapi/TaskType;->getValue()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-ne v0, v3, :cond_1

    .line 60
    .line 61
    iget p3, p0, Lcom/transsion/rewardscenter/task/member/d$a;->c:I

    .line 62
    .line 63
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :goto_0
    if-lez p2, :cond_4

    .line 67
    .line 68
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    check-cast p3, Lcom/transsion/rewardscenter/task/member/d;

    .line 76
    .line 77
    add-int/lit8 v0, p2, -0x1

    .line 78
    .line 79
    invoke-virtual {p3, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    check-cast p3, Lcom/transsion/rewardscenterapi/MemberTaskItem;

    .line 84
    .line 85
    invoke-virtual {p3}, Lcom/transsion/rewardscenterapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-virtual {v2}, Lcom/transsion/rewardscenterapi/TaskType;->getValue()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez p3, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    if-ne p3, v0, :cond_3

    .line 101
    .line 102
    iget p3, p0, Lcom/transsion/rewardscenter/task/member/d$a;->d:I

    .line 103
    .line 104
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    :goto_1
    iget p3, p0, Lcom/transsion/rewardscenter/task/member/d$a;->e:I

    .line 108
    .line 109
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 110
    .line 111
    :cond_4
    :goto_2
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    .line 112
    .line 113
    .line 114
    move-result p3

    .line 115
    add-int/lit8 p3, p3, -0x1

    .line 116
    .line 117
    if-ne p2, p3, :cond_5

    .line 118
    .line 119
    const/high16 p2, 0x41400000    # 12.0f

    .line 120
    .line 121
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 126
    .line 127
    :cond_5
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
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    sget v0, Lcom/transsion/rewardscenter/R$color;->prize_list_divider:I

    .line 21
    .line 22
    invoke-static {p3, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/member/d$a;->b:Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    add-int/lit8 p3, p3, -0x1

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_0
    if-ge v0, p3, :cond_0

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    .line 49
    .line 50
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    sub-int/2addr v4, v5

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 73
    .line 74
    add-int/2addr v1, v2

    .line 75
    iget v2, p0, Lcom/transsion/rewardscenter/task/member/d$a;->a:I

    .line 76
    .line 77
    add-int/2addr v2, v1

    .line 78
    int-to-float v6, v3

    .line 79
    int-to-float v7, v1

    .line 80
    int-to-float v8, v4

    .line 81
    int-to-float v9, v2

    .line 82
    iget-object v10, p0, Lcom/transsion/rewardscenter/task/member/d$a;->b:Landroid/graphics/Paint;

    .line 83
    .line 84
    move-object v5, p1

    .line 85
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method
