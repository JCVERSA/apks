.class public final Lcom/transsion/member/adapter/h$a;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/adapter/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x41c00000    # 24.0f

    .line 5
    .line 6
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/transsion/member/adapter/h$a;->a:I

    .line 11
    .line 12
    const/high16 v0, 0x41000000    # 8.0f

    .line 13
    .line 14
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/transsion/member/adapter/h$a;->b:I

    .line 19
    .line 20
    const/high16 v0, 0x41400000    # 12.0f

    .line 21
    .line 22
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/transsion/member/adapter/h$a;->c:I

    .line 27
    .line 28
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
    const-string v1, "null cannot be cast to non-null type com.transsion.member.adapter.TaskAdapter"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast v0, Lcom/transsion/member/adapter/h;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/transsion/memberapi/MemberTaskItem;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v2, Lcom/transsion/member/constants/TaskType;->TITLE:Lcom/transsion/member/constants/TaskType;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/transsion/member/constants/TaskType;->getValue()I

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
    iget p3, p0, Lcom/transsion/member/adapter/h$a;->a:I

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
    check-cast p3, Lcom/transsion/member/adapter/h;

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
    check-cast p3, Lcom/transsion/memberapi/MemberTaskItem;

    .line 84
    .line 85
    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-virtual {v2}, Lcom/transsion/member/constants/TaskType;->getValue()I

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
    iget p3, p0, Lcom/transsion/member/adapter/h$a;->b:I

    .line 103
    .line 104
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    :goto_1
    iget p3, p0, Lcom/transsion/member/adapter/h$a;->c:I

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
    const/high16 p2, 0x41a00000    # 20.0f

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
