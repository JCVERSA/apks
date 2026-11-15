.class public final Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;
.super Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/fragment/TransferReceivedListFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J)\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0016J\u000f\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;",
        "Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;",
        "<init>",
        "()V",
        "Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;",
        "entity",
        "",
        "y1",
        "(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;)V",
        "",
        "position",
        "s1",
        "(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;I)V",
        "z1",
        "initViewData",
        "tabIndex",
        "Y0",
        "(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;II)V",
        "initViewModel",
        "D0",
        "",
        "getEmptyDescText",
        "()Ljava/lang/String;",
        "",
        "T0",
        "()Z",
        "getPageName",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "k",
        "a",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final k:Lcom/transsnet/downloader/fragment/TransferReceivedListFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;->k:Lcom/transsnet/downloader/fragment/TransferReceivedListFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;->u1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;ILcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;->w1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;ILcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;->v1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;->t1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;IZ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;->x1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;IZ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final s1(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;I)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment$deleteItem$1;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-direct {v3, p1, p0, p2}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment$deleteItem$1;-><init>(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static final t1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

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
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    instance-of p2, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    check-cast p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;->y1(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private static final u1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

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
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    instance-of p2, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    check-cast p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    const/4 p2, 0x2

    .line 28
    invoke-virtual {p0, p1, p3, p2}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;->Y0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;II)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static final v1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lbx/s;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lbx/s;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, v0, Lbx/s;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showContentView()V

    .line 37
    .line 38
    .line 39
    check-cast p1, Ljava/util/Collection;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->F0()Lcom/transsnet/downloader/adapter/a;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_5

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->F0()Lcom/transsnet/downloader/adapter/a;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->F0()Lcom/transsnet/downloader/adapter/a;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;->z1()V

    .line 85
    .line 86
    .line 87
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    return-object p0
.end method

.method private static final w1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;ILcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "<unused var>"

    .line 3
    .line 4
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p4, "transfer_file_2_mb"

    .line 8
    .line 9
    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->E0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->J()Landroidx/lifecycle/b0;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {p2, p3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->E0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->j0()Landroidx/lifecycle/b0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-string p1, "delete"

    .line 47
    .line 48
    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    sget-object p1, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->i:Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;

    .line 55
    .line 56
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    sget p5, Lcom/transsnet/downloader/R$string;->cancel:I

    .line 61
    .line 62
    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 67
    .line 68
    .line 69
    move-result-object p5

    .line 70
    sget v1, Lcom/transsnet/downloader/R$string;->delete:I

    .line 71
    .line 72
    invoke-virtual {p5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p5

    .line 76
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    sget v2, Lcom/transsnet/downloader/R$string;->download_delete_tips:I

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    if-eqz p2, :cond_1

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-eqz v4, :cond_1

    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_1

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getFileName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    move-object v4, v3

    .line 103
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    aput-object v4, v0, v5

    .line 107
    .line 108
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, p4, p5, v0, v3}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance p4, Lcom/transsnet/downloader/fragment/r7;

    .line 117
    .line 118
    invoke-direct {p4, p0, p2, p3}, Lcom/transsnet/downloader/fragment/r7;-><init>(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p4}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->s0(Lkotlin/jvm/functions/Function1;)V

    .line 122
    .line 123
    .line 124
    const-string p2, "confirm_Dialog"

    .line 125
    .line 126
    invoke-virtual {p1, p0, p2}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    return-object p0
.end method

.method private static final x1(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;IZ)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;->s1(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;I)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final y1(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;)V
    .locals 5

    .line 1
    const-string v0, "/video/detail"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v2, v1

    .line 28
    :goto_0
    const-string v3, "extra_local_path"

    .line 29
    .line 30
    invoke-virtual {v0, v3, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object v2, v1

    .line 54
    :goto_1
    const-string v3, "extra_url"

    .line 55
    .line 56
    invoke-virtual {v0, v3, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move-object v2, v1

    .line 80
    :goto_2
    const-string v3, "extra_resource_id"

    .line 81
    .line 82
    invoke-virtual {v0, v3, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    goto :goto_3

    .line 105
    :cond_3
    move-object v2, v1

    .line 106
    :goto_3
    const-string v3, "extra_subject_id"

    .line 107
    .line 108
    invoke-virtual {v0, v3, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    goto :goto_4

    .line 131
    :cond_4
    move-object v2, v1

    .line 132
    :goto_4
    const-string v3, "extra_name"

    .line 133
    .line 134
    invoke-virtual {v0, v3, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz p1, :cond_5

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    if-eqz v2, :cond_5

    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    if-eqz v2, :cond_5

    .line 151
    .line 152
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    goto :goto_5

    .line 157
    :cond_5
    move-object v2, v1

    .line 158
    :goto_5
    const-string v3, "extra_post_id"

    .line 159
    .line 160
    invoke-virtual {v0, v3, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v2, "extra_page_from"

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;->getPageName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v0, v2, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    const/4 v2, 0x0

    .line 175
    if-eqz p1, :cond_6

    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    if-eqz v3, :cond_6

    .line 182
    .line 183
    invoke-virtual {v3}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    if-eqz v3, :cond_6

    .line 188
    .line 189
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoHeight()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    goto :goto_6

    .line 194
    :cond_6
    move v3, v2

    .line 195
    :goto_6
    const-string v4, "extra_height"

    .line 196
    .line 197
    invoke-virtual {v0, v4, v3}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-eqz p1, :cond_7

    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    if-eqz p1, :cond_7

    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    if-eqz p1, :cond_7

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoWidth()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    :cond_7
    const-string p1, "extra_width"

    .line 220
    .line 221
    invoke-virtual {v0, p1, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    const/4 v2, 0x2

    .line 230
    invoke-static {p1, v0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    return-void
.end method

.method private final z1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->F0()Lcom/transsnet/downloader/adapter/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getEmptyView(Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public D0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->G0()Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->S()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public T0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public Y0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;II)V
    .locals 4

    .line 1
    sget-object p2, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->h:Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;

    .line 2
    .line 3
    new-instance v0, Lkotlin/Pair;

    .line 4
    .line 5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget v2, Lcom/transsnet/downloader/R$string;->download_transfer_tips:I

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "transfer_file_2_mb"

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lkotlin/Pair;

    .line 21
    .line 22
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget v3, Lcom/transsnet/downloader/R$string;->delete:I

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "delete"

    .line 33
    .line 34
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    new-array v2, v2, [Lkotlin/Pair;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    aput-object v0, v2, v3

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    aput-object v1, v2, v0

    .line 45
    .line 46
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p2, v0}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;->a(Ljava/util/List;)Lcom/transsnet/downloader/dialog/DownloadMoreDialog;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    new-instance v0, Lcom/transsnet/downloader/fragment/q7;

    .line 55
    .line 56
    invoke-direct {v0, p0, p3, p1}, Lcom/transsnet/downloader/fragment/q7;-><init>(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;ILcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->s0(Lkotlin/jvm/functions/Function3;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "DownloadMoreDialog"

    .line 63
    .line 64
    invoke-virtual {p2, p0, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public getEmptyDescText()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/transsnet/downloader/R$string;->download_transfer_received_empty_tips:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getString(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "file_manager_tab_received"

    .line 2
    .line 3
    return-object v0
.end method

.method public initViewData()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/s;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lbx/s;->d:Lcom/tn/lib/view/TitleLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->F0()Lcom/transsnet/downloader/adapter/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lt6/f;->z(Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lbx/s;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, v0, Lbx/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {v1, v2}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/transsnet/downloader/adapter/a;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;->T0()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-direct {v1, v2}, Lcom/transsnet/downloader/adapter/a;-><init>(Z)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lcom/transsnet/downloader/fragment/n7;

    .line 68
    .line 69
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/n7;-><init>(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 73
    .line 74
    .line 75
    sget v2, Lcom/transsnet/downloader/R$id;->ivTopRightCornerPoint:I

    .line 76
    .line 77
    filled-new-array {v2}, [I

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Lcom/transsnet/downloader/fragment/o7;

    .line 85
    .line 86
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/o7;-><init>(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lr6/b;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->b1(Lcom/transsnet/downloader/adapter/a;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->F0()Lcom/transsnet/downloader/adapter/a;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 100
    .line 101
    .line 102
    new-instance v1, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment$b;

    .line 103
    .line 104
    invoke-direct {v1}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment$b;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    return-void
.end method

.method public initViewModel()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->G0()Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->T()Landroidx/lifecycle/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/transsnet/downloader/fragment/p7;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/p7;-><init>(Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment$c;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;->getPageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v4, v2, v3}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
