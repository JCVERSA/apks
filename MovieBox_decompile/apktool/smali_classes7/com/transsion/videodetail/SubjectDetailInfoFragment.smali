.class public final Lcom/transsion/videodetail/SubjectDetailInfoFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lxv/g;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J!\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001bR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010+\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010(\u00a8\u0006,"
    }
    d2 = {
        "Lcom/transsion/videodetail/SubjectDetailInfoFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lxv/g;",
        "<init>",
        "()V",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "movieDetailBean",
        "",
        "k0",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "",
        "seconds",
        "",
        "d0",
        "(I)Ljava/lang/String;",
        "subtitles",
        "i0",
        "(Ljava/lang/String;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "f0",
        "(Landroid/view/LayoutInflater;)Lxv/g;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "initData",
        "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;",
        "a",
        "Lkotlin/Lazy;",
        "e0",
        "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;",
        "movieDetailViewModel",
        "b",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "mMovieDetailBean",
        "c",
        "Ljava/lang/String;",
        "ops",
        "d",
        "mSubjectId",
        "VideoDetail_psRelease"
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

.field private b:Lcom/transsion/moviedetailapi/bean/Subject;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsion/videodetail/SubjectDetailInfoFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/transsion/videodetail/SubjectDetailInfoFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/transsion/videodetail/SubjectDetailInfoFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/transsion/videodetail/SubjectDetailInfoFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->a:Lkotlin/Lazy;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->j0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->g0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Lkotlin/Pair;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->h0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d0(I)Ljava/lang/String;
    .locals 4

    .line 1
    div-int/lit16 v0, p1, 0xe10

    .line 2
    .line 3
    rem-int/lit16 p1, p1, 0xe10

    .line 4
    .line 5
    div-int/lit8 p1, p1, 0x3c

    .line 6
    .line 7
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v2, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v0, v2, v3

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    aput-object p1, v2, v0

    .line 25
    .line 26
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "%02dh%02dm"

    .line 31
    .line 32
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "format(...)"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object p1
.end method

.method private final e0()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final g0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 6
    .line 7
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "get movie detail data=="

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v2, "videoDetail"

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v1, v2, p1, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-direct {p0, v0}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->k0(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1, v3}, Lqi/b;->k(Z)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    const-string v1, ""

    .line 65
    .line 66
    :cond_1
    const-string v2, "subject_id"

    .line 67
    .line 68
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lqi/b;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-eqz p0, :cond_3

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string v0, "has_resource"

    .line 92
    .line 93
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p0
.end method

.method private static final h0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Landroid/view/View;)V
    .locals 13

    .line 1
    new-instance p1, Ljm/j;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljm/j;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 9
    .line 10
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 17
    .line 18
    const-class v1, Ljm/j;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "getName(...)"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 32
    .line 33
    .line 34
    sget-object v4, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 35
    .line 36
    iget-object v8, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->d:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v10, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->c:Ljava/lang/String;

    .line 39
    .line 40
    const/16 v11, 0x10

    .line 41
    .line 42
    const/4 v12, 0x0

    .line 43
    const-string v5, "subjectdetail"

    .line 44
    .line 45
    const-string v6, "movie_poster"

    .line 46
    .line 47
    const-string v7, ""

    .line 48
    .line 49
    const/4 v9, 0x0

    .line 50
    invoke-static/range {v4 .. v12}, Lcom/transsion/baselib/helper/a;->j(Lcom/transsion/baselib/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/content/Intent;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-class v1, Lcom/transsion/moviedetail/activity/MoviePosterActivity;

    .line 60
    .line 61
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private final i0(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->e0()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->v(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_7

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lxv/g;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p1, Lxv/g;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lxv/g;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-object p1, p1, Lxv/g;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lxv/g;

    .line 54
    .line 55
    if-eqz p1, :cond_6

    .line 56
    .line 57
    iget-object p1, p1, Lxv/g;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-string p1, "getPaint(...)"

    .line 69
    .line 70
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/transsion/core/utils/e;->f()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    const/high16 v0, 0x43020000    # 130.0f

    .line 78
    .line 79
    invoke-static {v0}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    sub-int v4, p1, v0

    .line 84
    .line 85
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .line 87
    const/16 v0, 0x17

    .line 88
    .line 89
    if-le p1, v0, :cond_3

    .line 90
    .line 91
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-static {v2, v0, p1, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    new-instance p1, Landroid/text/StaticLayout;

    .line 106
    .line 107
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    const/4 v8, 0x1

    .line 111
    const/high16 v6, 0x3f800000    # 1.0f

    .line 112
    .line 113
    move-object v1, p1

    .line 114
    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    const/4 v0, 0x1

    .line 125
    if-le p1, v0, :cond_5

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Lxv/g;

    .line 132
    .line 133
    if-eqz p1, :cond_4

    .line 134
    .line 135
    iget-object p1, p1, Lxv/g;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 136
    .line 137
    if-eqz p1, :cond_4

    .line 138
    .line 139
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Lxv/g;

    .line 147
    .line 148
    if-eqz p1, :cond_6

    .line 149
    .line 150
    iget-object p1, p1, Lxv/g;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    if-eqz p1, :cond_6

    .line 153
    .line 154
    new-instance v0, Lcom/transsion/videodetail/k0;

    .line 155
    .line 156
    invoke-direct {v0, p0}, Lcom/transsion/videodetail/k0;-><init>(Lcom/transsion/videodetail/SubjectDetailInfoFragment;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lxv/g;

    .line 168
    .line 169
    if-eqz p1, :cond_6

    .line 170
    .line 171
    iget-object p1, p1, Lxv/g;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 172
    .line 173
    if-eqz p1, :cond_6

    .line 174
    .line 175
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    :goto_1
    return-void

    .line 179
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Lxv/g;

    .line 184
    .line 185
    if-eqz p1, :cond_8

    .line 186
    .line 187
    iget-object p1, p1, Lxv/g;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 188
    .line 189
    if-eqz p1, :cond_8

    .line 190
    .line 191
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 192
    .line 193
    .line 194
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Lxv/g;

    .line 199
    .line 200
    if-eqz p1, :cond_9

    .line 201
    .line 202
    iget-object p1, p1, Lxv/g;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 203
    .line 204
    if-eqz p1, :cond_9

    .line 205
    .line 206
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Lxv/g;

    .line 214
    .line 215
    if-eqz p1, :cond_a

    .line 216
    .line 217
    iget-object p1, p1, Lxv/g;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 218
    .line 219
    if-eqz p1, :cond_a

    .line 220
    .line 221
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 222
    .line 223
    .line 224
    :cond_a
    return-void
.end method

.method private static final j0(Lcom/transsion/videodetail/SubjectDetailInfoFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lxv/g;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lxv/g;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lxv/g;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lxv/g;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x5

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method private final k0(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_0
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/bean/Subject;->setOps(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lxv/g;

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    iget-object v2, v2, Lxv/g;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 46
    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lxv/g;

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    iget-object v1, v1, Lxv/g;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    iget-object v1, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 72
    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubtitles()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :cond_5
    invoke-direct {p0, v0}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->i0(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->isMusicType()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x2

    .line 87
    const/4 v2, 0x0

    .line 88
    const-string v3, " / "

    .line 89
    .line 90
    if-eqz v0, :cond_14

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lxv/g;

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    iget-object v0, v0, Lxv/g;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lxv/g;

    .line 112
    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    iget-object v0, v0, Lxv/g;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lxv/g;

    .line 127
    .line 128
    if-eqz v0, :cond_8

    .line 129
    .line 130
    iget-object v0, v0, Lxv/g;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    if-eqz v0, :cond_8

    .line 133
    .line 134
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Lxv/g;

    .line 142
    .line 143
    if-eqz v0, :cond_9

    .line 144
    .line 145
    iget-object v0, v0, Lxv/g;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 146
    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Lxv/g;

    .line 157
    .line 158
    if-eqz v0, :cond_a

    .line 159
    .line 160
    iget-object v0, v0, Lxv/g;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 161
    .line 162
    if-eqz v0, :cond_a

    .line 163
    .line 164
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    :cond_a
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 168
    .line 169
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-nez v4, :cond_b

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_b
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getLanguage()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 195
    .line 196
    .line 197
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-nez v4, :cond_d

    .line 206
    .line 207
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-le v4, v1, :cond_c

    .line 212
    .line 213
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 214
    .line 215
    .line 216
    :cond_c
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 221
    .line 222
    .line 223
    :cond_d
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    if-eqz v1, :cond_e

    .line 228
    .line 229
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-lez v4, :cond_e

    .line 234
    .line 235
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 239
    .line 240
    .line 241
    :cond_e
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDuration()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-eqz v1, :cond_13

    .line 246
    .line 247
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-lez v4, :cond_10

    .line 252
    .line 253
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-lez p1, :cond_f

    .line 258
    .line 259
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 260
    .line 261
    .line 262
    :cond_f
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_10
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    if-eqz v1, :cond_11

    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    goto :goto_2

    .line 277
    :cond_11
    move v1, v2

    .line 278
    :goto_2
    if-lez v1, :cond_13

    .line 279
    .line 280
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    if-eqz p1, :cond_12

    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    :cond_12
    invoke-direct {p0, v2}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->d0(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 298
    .line 299
    .line 300
    :cond_13
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    check-cast p1, Lxv/g;

    .line 305
    .line 306
    if-eqz p1, :cond_2a

    .line 307
    .line 308
    iget-object p1, p1, Lxv/g;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 309
    .line 310
    if-eqz p1, :cond_2a

    .line 311
    .line 312
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_a

    .line 316
    .line 317
    :cond_14
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    check-cast v0, Lxv/g;

    .line 322
    .line 323
    if-eqz v0, :cond_19

    .line 324
    .line 325
    iget-object v0, v0, Lxv/g;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 326
    .line 327
    if-eqz v0, :cond_19

    .line 328
    .line 329
    sget-object v4, Lni/f;->a:Lni/f$a;

    .line 330
    .line 331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    const-string v6, "requireContext(...)"

    .line 336
    .line 337
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    const-string v6, ""

    .line 349
    .line 350
    if-eqz v5, :cond_15

    .line 351
    .line 352
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    if-nez v5, :cond_16

    .line 357
    .line 358
    :cond_15
    move-object v5, v6

    .line 359
    :cond_16
    invoke-virtual {v4, v5}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    if-eqz v5, :cond_18

    .line 368
    .line 369
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    if-nez v5, :cond_17

    .line 374
    .line 375
    goto :goto_4

    .line 376
    :cond_17
    move-object v6, v5

    .line 377
    :cond_18
    :goto_4
    invoke-virtual {v4, v6}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    invoke-virtual {v4, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 382
    .line 383
    .line 384
    :cond_19
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 385
    .line 386
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getRestrictLevel()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    const/4 v5, 0x1

    .line 394
    if-eqz v4, :cond_1b

    .line 395
    .line 396
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 397
    .line 398
    .line 399
    move-result v6

    .line 400
    if-lez v6, :cond_1a

    .line 401
    .line 402
    move v6, v5

    .line 403
    goto :goto_5

    .line 404
    :cond_1a
    move v6, v2

    .line 405
    :goto_5
    if-eqz v6, :cond_1b

    .line 406
    .line 407
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 411
    .line 412
    .line 413
    :cond_1b
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    if-eqz v4, :cond_1d

    .line 418
    .line 419
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 420
    .line 421
    .line 422
    move-result v6

    .line 423
    if-lez v6, :cond_1c

    .line 424
    .line 425
    move v6, v5

    .line 426
    goto :goto_6

    .line 427
    :cond_1c
    move v6, v2

    .line 428
    :goto_6
    if-eqz v6, :cond_1d

    .line 429
    .line 430
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 434
    .line 435
    .line 436
    :cond_1d
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDuration()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    if-eqz v4, :cond_24

    .line 441
    .line 442
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 443
    .line 444
    .line 445
    move-result v6

    .line 446
    if-lez v6, :cond_1e

    .line 447
    .line 448
    move v6, v5

    .line 449
    goto :goto_7

    .line 450
    :cond_1e
    move v6, v2

    .line 451
    :goto_7
    if-eqz v6, :cond_21

    .line 452
    .line 453
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 454
    .line 455
    .line 456
    move-result v6

    .line 457
    if-lez v6, :cond_1f

    .line 458
    .line 459
    move v2, v5

    .line 460
    :cond_1f
    if-eqz v2, :cond_20

    .line 461
    .line 462
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 463
    .line 464
    .line 465
    :cond_20
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 466
    .line 467
    .line 468
    goto :goto_9

    .line 469
    :cond_21
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    if-eqz v4, :cond_22

    .line 474
    .line 475
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    goto :goto_8

    .line 480
    :cond_22
    move v4, v2

    .line 481
    :goto_8
    if-lez v4, :cond_24

    .line 482
    .line 483
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    if-eqz v4, :cond_23

    .line 491
    .line 492
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    :cond_23
    invoke-direct {p0, v2}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->d0(I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 501
    .line 502
    .line 503
    :cond_24
    :goto_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    check-cast v2, Lxv/g;

    .line 508
    .line 509
    if-eqz v2, :cond_25

    .line 510
    .line 511
    iget-object v2, v2, Lxv/g;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 512
    .line 513
    if-eqz v2, :cond_25

    .line 514
    .line 515
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    .line 517
    .line 518
    :cond_25
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 519
    .line 520
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 521
    .line 522
    .line 523
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    if-nez v2, :cond_26

    .line 532
    .line 533
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 538
    .line 539
    .line 540
    :cond_26
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 545
    .line 546
    .line 547
    move-result v2

    .line 548
    if-nez v2, :cond_28

    .line 549
    .line 550
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    if-le v2, v1, :cond_27

    .line 555
    .line 556
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 557
    .line 558
    .line 559
    :cond_27
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 564
    .line 565
    .line 566
    :cond_28
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    check-cast v1, Lxv/g;

    .line 571
    .line 572
    if-eqz v1, :cond_29

    .line 573
    .line 574
    iget-object v1, v1, Lxv/g;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 575
    .line 576
    if-eqz v1, :cond_29

    .line 577
    .line 578
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    .line 580
    .line 581
    :cond_29
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    check-cast v0, Lxv/g;

    .line 586
    .line 587
    if-eqz v0, :cond_2a

    .line 588
    .line 589
    iget-object v0, v0, Lxv/g;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 590
    .line 591
    if-eqz v0, :cond_2a

    .line 592
    .line 593
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    .line 599
    .line 600
    :cond_2a
    :goto_a
    return-void
.end method


# virtual methods
.method public f0(Landroid/view/LayoutInflater;)Lxv/g;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lxv/g;->c(Landroid/view/LayoutInflater;)Lxv/g;

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
    invoke-virtual {p0, p1}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->f0(Landroid/view/LayoutInflater;)Lxv/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initData(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/transsion/baseui/fragment/BaseFragment;->initData(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string v0, "ops"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, p2

    .line 24
    :goto_0
    iput-object p1, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const-string p2, "id"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    :cond_1
    iput-object p2, p0, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/transsion/videodetail/SubjectDetailInfoFragment;->e0()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->F()Landroidx/lifecycle/LiveData;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance p2, Lcom/transsion/videodetail/j0;

    .line 49
    .line 50
    invoke-direct {p2, p0}, Lcom/transsion/videodetail/j0;-><init>(Lcom/transsion/videodetail/SubjectDetailInfoFragment;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/transsion/videodetail/SubjectDetailInfoFragment$a;

    .line 54
    .line 55
    invoke-direct {v0, p2}, Lcom/transsion/videodetail/SubjectDetailInfoFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 59
    .line 60
    .line 61
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
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lxv/g;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lxv/g;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance p2, Lcom/transsion/videodetail/i0;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/transsion/videodetail/i0;-><init>(Lcom/transsion/videodetail/SubjectDetailInfoFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method
