.class public final Lcom/transsion/subroom/fragment/UserPreferFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Ldt/c;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0005J\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u000eJ\u000f\u0010\u001a\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\'0&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R3\u00102\u001a\u001f\u0012\u0013\u0012\u00110,\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0006\u0012\u0004\u0018\u00010\u00080+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0018\u00105\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0018\u00108\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u0010;\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0018\u0010I\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010>R\u0018\u0010K\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010B\u00a8\u0006L"
    }
    d2 = {
        "Lcom/transsion/subroom/fragment/UserPreferFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Ldt/c;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "()V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "f0",
        "(Landroid/view/ViewGroup;)V",
        "Landroid/view/View;",
        "view",
        "e0",
        "(Landroid/view/View;)V",
        "i0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "d0",
        "(Landroid/view/LayoutInflater;)Ldt/c;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "v",
        "onClick",
        "lazyLoadData",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "Lcom/transsion/subroom/adapter/a;",
        "b",
        "Lcom/transsion/subroom/adapter/a;",
        "mAdapter",
        "",
        "Lcom/transsion/mb/config/download/UserPreferOption;",
        "c",
        "Ljava/util/List;",
        "mCheckedList",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "removeFragment",
        "d",
        "Lkotlin/jvm/functions/Function1;",
        "mCallback",
        "e",
        "Landroid/view/ViewGroup;",
        "parentView",
        "f",
        "Landroid/view/View;",
        "rootView",
        "g",
        "Z",
        "viewCreated",
        "Landroid/widget/TextView;",
        "h",
        "Landroid/widget/TextView;",
        "tvSkip",
        "Landroid/widget/ProgressBar;",
        "i",
        "Landroid/widget/ProgressBar;",
        "pbSkip",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "j",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "k",
        "tvSubmit",
        "l",
        "loadView",
        "app_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/transsion/subroom/adapter/a;

.field private c:Ljava/util/List;

.field private d:Lkotlin/jvm/functions/Function1;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroidx/recyclerview/widget/RecyclerView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "UserPrefer-tag"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->c:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Let/a;

    .line 16
    .line 17
    invoke-direct {v0}, Let/a;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->d:Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/subroom/fragment/UserPreferFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/subroom/fragment/UserPreferFragment;->g0(Lcom/transsion/subroom/fragment/UserPreferFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/subroom/fragment/UserPreferFragment;->h0(Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/subroom/fragment/UserPreferFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subroom/fragment/UserPreferFragment;->j0(Lcom/transsion/subroom/fragment/UserPreferFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e0(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final f0(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    sget v1, Lcom/transsion/subroom/R$id;->tv_skip:I

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/widget/TextView;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    iput-object v1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->h:Landroid/widget/TextView;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    sget v1, Lcom/transsion/subroom/R$id;->pb_skip:I

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/widget/ProgressBar;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v1, v0

    .line 28
    :goto_1
    iput-object v1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->i:Landroid/widget/ProgressBar;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    sget v1, Lcom/transsion/subroom/R$id;->recycler_view:I

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object v1, v0

    .line 42
    :goto_2
    iput-object v1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    sget v1, Lcom/transsion/subroom/R$id;->tv_submit:I

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/widget/TextView;

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    move-object v1, v0

    .line 56
    :goto_3
    iput-object v1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->k:Landroid/widget/TextView;

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    sget v0, Lcom/transsion/subroom/R$id;->load_view:I

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/ProgressBar;

    .line 67
    .line 68
    :cond_4
    iput-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->l:Landroid/widget/ProgressBar;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->h:Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->k:Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    :cond_6
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->k:Landroid/widget/TextView;

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 90
    .line 91
    .line 92
    :cond_7
    new-instance v0, Lcom/transsion/subroom/adapter/a;

    .line 93
    .line 94
    new-instance v2, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v2}, Lcom/transsion/subroom/adapter/a;-><init>(Ljava/util/List;)V

    .line 100
    .line 101
    .line 102
    new-instance v2, Let/c;

    .line 103
    .line 104
    invoke-direct {v2, p0}, Let/c;-><init>(Lcom/transsion/subroom/fragment/UserPreferFragment;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 108
    .line 109
    .line 110
    new-instance v2, Lcom/transsion/subroom/fragment/UserPreferFragment$a;

    .line 111
    .line 112
    invoke-direct {v2}, Lcom/transsion/subroom/fragment/UserPreferFragment$a;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->b:Lcom/transsion/subroom/adapter/a;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .line 122
    if-eqz v0, :cond_8

    .line 123
    .line 124
    new-instance v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-direct {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    invoke-virtual {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 144
    .line 145
    .line 146
    new-instance v1, Lcom/google/android/flexbox/d;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-direct {v1, v2}, Lcom/google/android/flexbox/d;-><init>(Landroid/content/Context;)V

    .line 153
    .line 154
    .line 155
    const/4 v2, 0x3

    .line 156
    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/d;->l(I)V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    sget v3, Lcom/transsion/subroom/R$drawable;->space_user_perfer_decoration:I

    .line 164
    .line 165
    invoke-static {v2, v3}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/d;->i(Landroid/graphics/drawable/Drawable;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->b:Lcom/transsion/subroom/adapter/a;

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 178
    .line 179
    .line 180
    :cond_8
    invoke-direct {p0, p1}, Lcom/transsion/subroom/fragment/UserPreferFragment;->e0(Landroid/view/View;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method private static final g0(Lcom/transsion/subroom/fragment/UserPreferFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    const-string v0, "adapter"

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
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p3, "null cannot be cast to non-null type com.transsion.mb.config.download.UserPreferOption"

    .line 16
    .line 17
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Lcom/transsion/mb/config/download/UserPreferOption;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->c:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    xor-int/lit8 p1, p3, 0x1

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->c:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x5

    .line 46
    if-lt v0, v1, :cond_1

    .line 47
    .line 48
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 49
    .line 50
    sget p2, Lcom/transsion/subroom/R$string;->choose_up_to_5:I

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lfh/b$a;->d(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->c:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    xor-int/lit8 p1, p3, 0x1

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object p1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->k:Landroid/widget/TextView;

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget-object p0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->c:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method private static final h0(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private final i0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->k:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->l:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->c:Ljava/util/List;

    .line 31
    .line 32
    check-cast v1, Ljava/lang/Iterable;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/transsion/mb/config/download/UserPreferOption;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/transsion/mb/config/download/UserPreferOption;->getId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    sget-object v1, Lcom/transsion/startup/StartupManager;->g:Lcom/transsion/startup/StartupManager$a;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/transsion/startup/StartupManager$a;->a()Lcom/transsion/startup/StartupManager;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v2, Let/b;

    .line 67
    .line 68
    invoke-direct {v2, p0}, Let/b;-><init>(Lcom/transsion/subroom/fragment/UserPreferFragment;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Lcom/transsion/startup/StartupManager;->p0(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->d:Lkotlin/jvm/functions/Function1;

    .line 75
    .line 76
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private static final j0(Lcom/transsion/subroom/fragment/UserPreferFragment;Z)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->a:Ljava/lang/String;

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "submit success result = "

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method


# virtual methods
.method public d0(Landroid/view/LayoutInflater;)Ldt/c;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ldt/c;->c(Landroid/view/LayoutInflater;)Ldt/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/subroom/fragment/UserPreferFragment;->d0(Landroid/view/LayoutInflater;)Ldt/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object p2, p1

    .line 7
    check-cast p2, Landroid/view/ViewGroup;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->e:Landroid/view/ViewGroup;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->f:Landroid/view/View;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    const/4 v5, 0x0

    .line 19
    const-string v1, "userPrefer"

    .line 20
    .line 21
    const-string v2, "userprefer, xml inflate before viewCreated"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->e:Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->e:Landroid/view/ViewGroup;

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/subroom/fragment/UserPreferFragment;->f0(Landroid/view/ViewGroup;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->g:Z

    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "UserPrefer"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    sget v0, Lcom/transsion/subroom/R$id;->tv_skip:I

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne v1, v0, :cond_3

    .line 23
    .line 24
    iget-object p1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->d:Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->i:Landroid/widget/ProgressBar;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->h:Landroid/widget/TextView;

    .line 39
    .line 40
    if-eqz p1, :cond_7

    .line 41
    .line 42
    invoke-static {p1}, Luf/c;->h(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    :goto_1
    sget v0, Lcom/transsion/subroom/R$id;->tv_submit:I

    .line 47
    .line 48
    if-nez p1, :cond_4

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-ne p1, v0, :cond_7

    .line 56
    .line 57
    iget-object p1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->c:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 66
    .line 67
    sget v0, Lcom/transsion/subroom/R$string;->choose_at_least_one:I

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_5
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 74
    .line 75
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 82
    .line 83
    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_6
    invoke-direct {p0}, Lcom/transsion/subroom/fragment/UserPreferFragment;->i0()V

    .line 90
    .line 91
    .line 92
    :cond_7
    :goto_2
    return-void
.end method
