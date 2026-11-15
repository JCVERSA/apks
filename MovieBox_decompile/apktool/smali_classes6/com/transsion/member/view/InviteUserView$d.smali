.class final Lcom/transsion/member/view/InviteUserView$d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/view/InviteUserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcom/transsion/member/view/InviteUserView;


# direct methods
.method public constructor <init>(Lcom/transsion/member/view/InviteUserView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/member/view/InviteUserView$d;->a:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic g(Lcom/transsion/member/view/InviteUserView;ILcom/transsion/member/view/InviteUserView$e;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/member/view/InviteUserView$d;->j(Lcom/transsion/member/view/InviteUserView;ILcom/transsion/member/view/InviteUserView$e;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/member/view/InviteUserView;->access$getLoadMoreEnable$p(Lcom/transsion/member/view/InviteUserView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/transsion/member/view/InviteUserView;->access$getLoadMoreItemLayoutId$p(Lcom/transsion/member/view/InviteUserView;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance p1, Landroid/widget/ProgressBar;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const/4 v0, 0x0

    .line 30
    const v2, 0x1010077

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, p2, v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 39
    .line 40
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v1, 0x1d

    .line 44
    .line 45
    if-lt v0, v1, :cond_4

    .line 46
    .line 47
    const/high16 v0, 0x42480000    # 50.0f

    .line 48
    .line 49
    invoke-static {p2, v0}, Lcom/transsion/member/view/InviteUserView;->access$dpToPx(Lcom/transsion/member/view/InviteUserView;F)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {p1, v1}, Lcom/transsion/member/view/d;->a(Landroid/widget/ProgressBar;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {p2, v0}, Lcom/transsion/member/view/InviteUserView;->access$dpToPx(Lcom/transsion/member/view/InviteUserView;F)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-static {p1, p2}, Lcom/transsion/member/view/e;->a(Landroid/widget/ProgressBar;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eq p1, v1, :cond_3

    .line 75
    .line 76
    const/4 v1, 0x2

    .line 77
    if-eq p1, v1, :cond_2

    .line 78
    .line 79
    const/4 v1, 0x3

    .line 80
    if-eq p1, v1, :cond_1

    .line 81
    .line 82
    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/transsion/member/view/InviteUserView;->access$getLoadMoreItemLayoutId$p(Lcom/transsion/member/view/InviteUserView;)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/transsion/member/view/InviteUserView;->access$getUnActiveItemLayoutId$p(Lcom/transsion/member/view/InviteUserView;)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/transsion/member/view/InviteUserView;->access$getActiveItemLayoutId$p(Lcom/transsion/member/view/InviteUserView;)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/transsion/member/view/InviteUserView;->access$getDoneItemLayoutId$p(Lcom/transsion/member/view/InviteUserView;)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    :goto_0
    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_1
    return-object p1
.end method

.method private static final j(Lcom/transsion/member/view/InviteUserView;ILcom/transsion/member/view/InviteUserView$e;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/member/view/InviteUserView;->access$getClickListener$p(Lcom/transsion/member/view/InviteUserView;)Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2}, Lcom/transsion/member/view/InviteUserView$e;->f()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/member/view/InviteUserView;->access$getList$p(Lcom/transsion/member/view/InviteUserView;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/transsion/member/view/InviteUserView;->access$getLoadMoreEnable$p(Lcom/transsion/member/view/InviteUserView;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/member/view/InviteUserView;->access$getList$p(Lcom/transsion/member/view/InviteUserView;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/transsion/member/view/InviteUserView;->access$getViewBinder$p(Lcom/transsion/member/view/InviteUserView;)Lcom/transsion/member/view/InviteUserView$c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/transsion/member/view/InviteUserView;->access$getList$p(Lcom/transsion/member/view/InviteUserView;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, p1, v1}, Lcom/transsion/member/view/InviteUserView$c;->b(ILjava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x1

    .line 39
    :goto_0
    return p1
.end method

.method public i(Lcom/transsion/member/view/InviteUserView$e;I)V
    .locals 3

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget v2, p0, Lcom/transsion/member/view/InviteUserView$d;->a:I

    .line 13
    .line 14
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/member/view/InviteUserView$e;->f()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x4

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/transsion/member/view/InviteUserView;->access$getViewBinder$p(Lcom/transsion/member/view/InviteUserView;)Lcom/transsion/member/view/InviteUserView$c;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/transsion/member/view/InviteUserView;->access$getList$p(Lcom/transsion/member/view/InviteUserView;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/member/view/InviteUserView$c;->c(Lcom/transsion/member/view/InviteUserView$e;ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 50
    .line 51
    new-instance v2, Lcom/transsion/member/view/f;

    .line 52
    .line 53
    invoke-direct {v2, v1, p2, p1}, Lcom/transsion/member/view/f;-><init>(Lcom/transsion/member/view/InviteUserView;ILcom/transsion/member/view/InviteUserView$e;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object p2, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 61
    .line 62
    invoke-static {p2}, Lcom/transsion/member/view/InviteUserView;->access$isLoadMoreLoading$p(Lcom/transsion/member/view/InviteUserView;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    const-string v0, "itemView"

    .line 67
    .line 68
    if-eqz p2, :cond_2

    .line 69
    .line 70
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 71
    .line 72
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p2}, Luf/c;->k(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 79
    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 83
    .line 84
    .line 85
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 97
    .line 98
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p2}, Luf/c;->k(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 105
    .line 106
    invoke-static {p2}, Lcom/transsion/member/view/InviteUserView;->access$getNeedShowLoadMoreDismissAnimation$p(Lcom/transsion/member/view/InviteUserView;)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_3

    .line 111
    .line 112
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    const v0, 0x3dcccccd    # 0.1f

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    const-wide/16 v0, 0xc8

    .line 135
    .line 136
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    new-instance v0, Lcom/transsion/member/view/InviteUserView$d$a;

    .line 141
    .line 142
    iget-object v1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 143
    .line 144
    invoke-direct {v0, p1, v1}, Lcom/transsion/member/view/InviteUserView$d$a;-><init>(Lcom/transsion/member/view/InviteUserView$e;Lcom/transsion/member/view/InviteUserView;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 152
    .line 153
    .line 154
    :cond_3
    :goto_0
    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/transsion/member/view/InviteUserView$e;
    .locals 2

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/member/view/InviteUserView$e;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    .line 9
    .line 10
    invoke-direct {p0, p2, p1}, Lcom/transsion/member/view/InviteUserView$d;->h(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, v1, p1, p2}, Lcom/transsion/member/view/InviteUserView$e;-><init>(Lcom/transsion/member/view/InviteUserView;Landroid/view/View;I)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/member/view/InviteUserView$e;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/view/InviteUserView$d;->i(Lcom/transsion/member/view/InviteUserView$e;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/view/InviteUserView$d;->k(Landroid/view/ViewGroup;I)Lcom/transsion/member/view/InviteUserView$e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
