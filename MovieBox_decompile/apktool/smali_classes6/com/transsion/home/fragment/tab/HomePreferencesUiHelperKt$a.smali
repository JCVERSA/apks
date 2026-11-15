.class public final Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->h(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$m;Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView$m;

.field final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

.field final synthetic e:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

.field final synthetic f:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/recyclerview/widget/RecyclerView$m;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->b:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->e:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->f:Lkotlin/jvm/internal/Ref$IntRef;

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic d(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->g(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->f(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final f(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "selected"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->B(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p3}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->L(Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lzk/c;->a:Lzk/c;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->e0()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p2}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->d0()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    const-string p2, ""

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0, v0, p2, p1, p3}, Lzk/c;->k(ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method private static final g(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->C(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lzk/c;->a:Lzk/c;

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->e0()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p2}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->d0()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    const-string p2, ""

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, v0, p2, p1}, Lzk/c;->j(ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 1
    const-string v0, "rv"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 10
    .line 11
    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 12
    .line 13
    if-nez p1, :cond_7

    .line 14
    .line 15
    if-gtz p3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->b:Landroidx/recyclerview/widget/RecyclerView$m;

    .line 20
    .line 21
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D([I)[I

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "findFirstVisibleItemPositions(...)"

    .line 44
    .line 45
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->R([I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    :goto_0
    iget-object p2, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 57
    .line 58
    if-nez p2, :cond_4

    .line 59
    .line 60
    iget-object p2, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->d0()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    if-nez p2, :cond_3

    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    iget-object p3, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->e:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    .line 70
    .line 71
    invoke-virtual {p3, p2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->J(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    iget-object p2, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 75
    .line 76
    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p2, Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 79
    .line 80
    if-nez p2, :cond_5

    .line 81
    .line 82
    return-void

    .line 83
    :cond_5
    iget-object p3, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->f:Lkotlin/jvm/internal/Ref$IntRef;

    .line 84
    .line 85
    iget p3, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 86
    .line 87
    if-le p1, p3, :cond_7

    .line 88
    .line 89
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 90
    .line 91
    const/4 p3, 0x1

    .line 92
    iput-boolean p3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 93
    .line 94
    sget-object p1, Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;->p:Lcom/transsion/home/fragment/dialog/HomePreferencesDialog$a;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/transsion/home/fragment/dialog/HomePreferencesDialog$a;->a()Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1, p2}, Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;->z0(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    .line 101
    .line 102
    .line 103
    sget-object p3, Lzk/c;->a:Lzk/c;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->e0()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iget-object v1, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->d0()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-nez v1, :cond_6

    .line 118
    .line 119
    const-string v1, ""

    .line 120
    .line 121
    :cond_6
    invoke-virtual {p3, v0, v1, p2}, Lzk/c;->l(ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)V

    .line 122
    .line 123
    .line 124
    iget-object p3, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->e:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 127
    .line 128
    new-instance v1, Lcom/transsion/home/fragment/tab/g;

    .line 129
    .line 130
    invoke-direct {v1, p3, p2, v0}, Lcom/transsion/home/fragment/tab/g;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1}, Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;->B0(Lkotlin/jvm/functions/Function1;)V

    .line 134
    .line 135
    .line 136
    iget-object p3, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->e:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    .line 137
    .line 138
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 139
    .line 140
    new-instance v1, Lcom/transsion/home/fragment/tab/h;

    .line 141
    .line 142
    invoke-direct {v1, p3, p2, v0}, Lcom/transsion/home/fragment/tab/h;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v1}, Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;->A0(Lkotlin/jvm/functions/Function0;)V

    .line 146
    .line 147
    .line 148
    iget-object p3, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->e:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    .line 149
    .line 150
    invoke-virtual {p3, p2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->D(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    .line 151
    .line 152
    .line 153
    iget-object p2, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    .line 154
    .line 155
    const-string p3, "HomePreferencesDialog"

    .line 156
    .line 157
    invoke-virtual {p1, p2, p3}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_7
    :goto_1
    return-void
.end method
