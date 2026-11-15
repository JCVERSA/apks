.class public final Lcom/transsion/publish/adapter/v;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/adapter/v$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/publish/adapter/v$a;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/widget/FrameLayout$LayoutParams;

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/publish/adapter/v$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/publish/adapter/v$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/publish/adapter/v;->e:Lcom/transsion/publish/adapter/v$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {}, Lcom/blankj/utilcode/util/y;->b()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/high16 v1, 0x40400000    # 3.0f

    .line 16
    .line 17
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    mul-int/lit8 v1, v1, 0x5

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    div-int/lit8 v0, v0, 0x4

    .line 25
    .line 26
    iput v0, p0, Lcom/transsion/publish/adapter/v;->c:I

    .line 27
    .line 28
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    .line 30
    iget v1, p0, Lcom/transsion/publish/adapter/v;->c:I

    .line 31
    .line 32
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/transsion/publish/adapter/v;->b:Landroid/widget/FrameLayout$LayoutParams;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic g(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/v;->p(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/transsion/publish/adapter/v;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/v;->q(Lcom/transsion/publish/adapter/v;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/transsion/publish/adapter/l0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/v;->k(Lcom/transsion/publish/adapter/l0;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/l0;->i()Landroid/widget/TextView;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/l0;->f()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/transsion/publish/adapter/u;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/transsion/publish/adapter/u;-><init>(Lcom/transsion/publish/adapter/l0;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method private static final k(Lcom/transsion/publish/adapter/l0;Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lcom/transsion/publish/ui/SelectVideoActivity;

    .line 10
    .line 11
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    const/high16 v0, 0x10000000

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private final o(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;I)V
    .locals 3

    .line 1
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 2
    .line 3
    new-instance v0, Lcom/transsion/publish/adapter/s;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/transsion/publish/adapter/s;-><init>(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/l0;->g()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/transsion/publish/adapter/t;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/transsion/publish/adapter/t;-><init>(Lcom/transsion/publish/adapter/v;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/publish/api/VsMediaInfo;->getImagePath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    const/4 v0, 0x4

    .line 34
    const-string v1, "getContext(...)"

    .line 35
    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    new-instance p3, Ljava/io/File;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/l0;->h()Landroid/widget/ImageView;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 54
    .line 55
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-virtual {p1, p3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget p3, Lcom/transsion/publish/R$drawable;->upload_error_cover:I

    .line 81
    .line 82
    invoke-virtual {p1, p3}, Lni/f$b;->i(I)Lni/f$b;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v0}, Lni/f$b;->j(I)Lni/f$b;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, p2}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/l0;->h()Landroid/widget/ImageView;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    if-eqz p3, :cond_2

    .line 99
    .line 100
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 101
    .line 102
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p2}, Lcom/transsion/publish/api/VsMediaInfo;->getImagePath()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p1, p2}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    sget p2, Lcom/transsion/publish/R$drawable;->upload_error_cover:I

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Lni/f$b;->i(I)Lni/f$b;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1, v0}, Lni/f$b;->j(I)Lni/f$b;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1, p3}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 134
    .line 135
    .line 136
    :cond_2
    :goto_0
    return-void
.end method

.method private static final p(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p2, Lcom/transsion/publish/ui/VideoPreviewActivity;->f:Lcom/transsion/publish/ui/VideoPreviewActivity$a;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "getContext(...)"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p2, p0, p1, v0}, Lcom/transsion/publish/ui/VideoPreviewActivity$a;->a(Landroid/content/Context;Lcom/transsion/publish/api/VsMediaInfo;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final q(Lcom/transsion/publish/adapter/v;Landroid/view/View;)V
    .locals 5

    .line 1
    iget-boolean p1, p0, Lcom/transsion/publish/adapter/v;->d:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/transsion/publish/adapter/v;->d:Z

    .line 8
    .line 9
    new-instance v0, Ljo/b;

    .line 10
    .line 11
    invoke-direct {v0}, Ljo/b;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 31
    .line 32
    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 39
    .line 40
    const-class v2, Ljo/b;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "getName(...)"

    .line 47
    .line 48
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v3, 0x0

    .line 52
    .line 53
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 57
    .line 58
    .line 59
    iput-boolean p1, p0, Lcom/transsion/publish/adapter/v;->d:Z

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/transsion/publish/api/VsMediaInfo;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->isAdd()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method public final l()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast v1, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/transsion/publish/api/VsMediaInfo;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->isAdd()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast v0, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    :cond_0
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/publish/adapter/l0;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/v;->r(Lcom/transsion/publish/adapter/l0;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/v;->s(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/l0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public r(Lcom/transsion/publish/adapter/l0;I)V
    .locals 2

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/transsion/publish/api/VsMediaInfo;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/publish/api/VsMediaInfo;->isAdd()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, p1, v0}, Lcom/transsion/publish/adapter/v;->j(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/publish/adapter/v;->o(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/l0;
    .locals 2

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eq p2, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/transsion/publish/adapter/l0;

    .line 14
    .line 15
    invoke-direct {p1, v1}, Lcom/transsion/publish/adapter/l0;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget p2, Lcom/transsion/publish/R$layout;->item_publish_add_video:I

    .line 28
    .line 29
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance p2, Lcom/transsion/publish/adapter/l0;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/l0;-><init>(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    return-object p2

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget p2, Lcom/transsion/publish/R$layout;->item_publish_video:I

    .line 48
    .line 49
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance p2, Lcom/transsion/publish/adapter/l0;

    .line 54
    .line 55
    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/l0;-><init>(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    return-object p2
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    .line 12
    .line 13
    check-cast p1, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
