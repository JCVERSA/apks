.class public final Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Liu/h;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R0\u0010+\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u0005\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R*\u00103\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102\u00a8\u00064"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Liu/h;",
        "<init>",
        "()V",
        "",
        "d0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "c0",
        "(Landroid/view/LayoutInflater;)Liu/h;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initData",
        "initListener",
        "lazyLoadData",
        "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
        "a",
        "Lkotlin/Lazy;",
        "getViewModel",
        "()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
        "viewModel",
        "Lcom/transsion/ugcvideodetail/hepler/subtitle/a;",
        "b",
        "b0",
        "()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;",
        "subtitleViewModel",
        "Lcom/transsion/ugcvideodetail/adapter/e;",
        "c",
        "Lcom/transsion/ugcvideodetail/adapter/e;",
        "subtitleAdapter",
        "Lkotlin/Function1;",
        "Lht/a;",
        "d",
        "Lkotlin/jvm/functions/Function1;",
        "getOnSubtitleSelected",
        "()Lkotlin/jvm/functions/Function1;",
        "g0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onSubtitleSelected",
        "Lkotlin/Function0;",
        "e",
        "Lkotlin/jvm/functions/Function0;",
        "getOnBackClick",
        "()Lkotlin/jvm/functions/Function0;",
        "f0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onBackClick",
        "UGCVideoDetail_psRelease"
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
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private c:Lcom/transsion/ugcvideodetail/adapter/e;

.field private d:Lkotlin/jvm/functions/Function1;

.field private e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->a:Lkotlin/Lazy;

    .line 25
    .line 26
    const-class v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$3;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$4;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->b:Lkotlin/Lazy;

    .line 47
    .line 48
    return-void
.end method

.method public static synthetic a0(Ljava/util/List;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->e0(Ljava/util/List;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b0()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final d0()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->b0()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->d()Landroidx/lifecycle/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/List;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Liu/h;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, v1, Liu/h;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x1

    .line 38
    invoke-direct {v3, v4, v5, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->b0()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->c()Landroidx/lifecycle/b0;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lht/a;

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lht/a;

    .line 73
    .line 74
    invoke-virtual {v4}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    invoke-virtual {v1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    if-eqz v5, :cond_2

    .line 89
    .line 90
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    const/4 v5, 0x0

    .line 96
    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_3

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    const/4 v2, -0x1

    .line 107
    :goto_2
    new-instance v1, Lcom/transsion/ugcvideodetail/adapter/e;

    .line 108
    .line 109
    invoke-direct {v1, v0}, Lcom/transsion/ugcvideodetail/adapter/e;-><init>(Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    if-ltz v2, :cond_5

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lcom/transsion/ugcvideodetail/adapter/e;->D1(I)V

    .line 115
    .line 116
    .line 117
    :cond_5
    new-instance v2, Lcom/transsion/ugcvideodetail/fragment/e0;

    .line 118
    .line 119
    invoke-direct {v2, v0, p0}, Lcom/transsion/ugcvideodetail/fragment/e0;-><init>(Ljava/util/List;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->c:Lcom/transsion/ugcvideodetail/adapter/e;

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Liu/h;

    .line 132
    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    iget-object v0, v0, Liu/h;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 136
    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->c:Lcom/transsion/ugcvideodetail/adapter/e;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 142
    .line 143
    .line 144
    :cond_6
    return-void
.end method

.method private static final e0(Ljava/util/List;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of p3, p2, Lcom/transsion/ugcvideodetail/adapter/e;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    check-cast p2, Lcom/transsion/ugcvideodetail/adapter/e;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x0

    .line 19
    :goto_0
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2, p4}, Lcom/transsion/ugcvideodetail/adapter/e;->D1(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lht/a;

    .line 29
    .line 30
    sget-object p2, Lqi/h;->a:Lqi/h;

    .line 31
    .line 32
    const-string p3, "dialog_name"

    .line 33
    .line 34
    const-string p4, "half_screen"

    .line 35
    .line 36
    invoke-static {p3, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    const-string p4, "module_name"

    .line 41
    .line 42
    const-string v0, "subtitle"

    .line 43
    .line 44
    invoke-static {p4, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    invoke-virtual {p0}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "type"

    .line 57
    .line 58
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v1, 0x3

    .line 63
    new-array v1, v1, [Lkotlin/Pair;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    aput-object p3, v1, v2

    .line 67
    .line 68
    const/4 p3, 0x1

    .line 69
    aput-object p4, v1, p3

    .line 70
    .line 71
    const/4 p3, 0x2

    .line 72
    aput-object v0, v1, p3

    .line 73
    .line 74
    invoke-static {v1}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    const-string p4, "/ugc_video/immersive_detail"

    .line 79
    .line 80
    invoke-virtual {p2, p4, p3}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p1, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->d:Lkotlin/jvm/functions/Function1;

    .line 84
    .line 85
    if-eqz p2, :cond_2

    .line 86
    .line 87
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object p0, p1, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->e:Lkotlin/jvm/functions/Function0;

    .line 91
    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_3
    return-void
.end method


# virtual methods
.method public c0(Landroid/view/LayoutInflater;)Liu/h;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Liu/h;->c(Landroid/view/LayoutInflater;)Liu/h;

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

.method public final f0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final g0(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->d:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->c0(Landroid/view/LayoutInflater;)Liu/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initData(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public initListener()V
    .locals 0

    .line 1
    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->d0()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method
