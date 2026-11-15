.class public final Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;
.super Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment<",
        "Lbx/g0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000  2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0004J\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;",
        "Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;",
        "Lbx/g0;",
        "<init>",
        "()V",
        "",
        "Z0",
        "h1",
        "initViewData",
        "onResume",
        "v0",
        "x0",
        "w0",
        "y0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "a1",
        "(Landroid/view/LayoutInflater;)Lbx/g0;",
        "",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "",
        "isAudioShowNoNetworkLayout",
        "()Z",
        "isMonitorNetworkState",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "item",
        "Q0",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "p",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final p:Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;->p:Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic T0(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;->b1(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic U0(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;->e1(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic V0(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;->d1(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W0(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;->g1(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic X0(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Lyw/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;->f1(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Lyw/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y0(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;->c1(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final Z0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->G0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lbx/g0;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, v0, Lbx/g0;->i:Lcom/transsnet/downloader/widget/DownloadPathEntranceView;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsnet/downloader/widget/DownloadPathEntranceView;->onPermissionDenied()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lbx/g0;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, v0, Lbx/g0;->i:Lcom/transsnet/downloader/widget/DownloadPathEntranceView;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsnet/downloader/widget/DownloadPathEntranceView;->onPermissionRefresh()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private static final b1(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->m0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c1(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Landroid/view/View;)V
    .locals 8

    .line 1
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object p1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;->K0()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v1, v2

    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;->K0()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x0

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->isMultiresolution()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v5, 0x1

    .line 48
    if-ne v3, v5, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v5, v4

    .line 52
    :goto_1
    invoke-virtual {v0, v2, v1, v4, v5}, Lcom/transsnet/downloader/DownloadManagerApi;->w0(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;->K0()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/16 v6, 0x8

    .line 82
    .line 83
    const/4 v7, 0x0

    .line 84
    const-string v4, "Download_Dialog"

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    invoke-static/range {v1 .. v7}, Lcom/transsnet/downloader/DownloadManagerApi;->z0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void

    .line 91
    :cond_4
    const-class p1, Lwj/f;

    .line 92
    .line 93
    new-array v0, v4, [Ljava/lang/Object;

    .line 94
    .line 95
    invoke-static {p1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lwj/f;

    .line 100
    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;->K0()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    move-object v0, v2

    .line 119
    :goto_2
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;->K0()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getGenre()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :cond_6
    new-instance v1, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$b;

    .line 130
    .line 131
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$b;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;)V

    .line 132
    .line 133
    .line 134
    sget-object p0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_HDDL:Lcom/transsion/memberapi/MemberSceneType;

    .line 135
    .line 136
    invoke-interface {p1, v0, v2, v1, p0}, Lwj/f;->e(Ljava/lang/Integer;Ljava/lang/String;Lwj/g;Lcom/transsion/memberapi/MemberSceneType;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    return-void
.end method

.method private static final d1(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->p()Landroidx/lifecycle/b0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x4

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final e1(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Landroid/view/View;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsnet/downloader/util/DownloadUtil;->D()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->G0()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->F0()V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->t0()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->C0(Z)V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "download_root_path_permission_first"

    .line 43
    .line 44
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->r0()Landroidx/activity/result/b;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p1}, Lcom/transsnet/downloader/util/DownloadUtil;->v()[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_2
    invoke-virtual {p1, p0}, Lcom/transsnet/downloader/util/DownloadUtil;->F(Landroidx/fragment/app/Fragment;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->D0(Z)V

    .line 69
    .line 70
    .line 71
    sget-object p0, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/a0;->x()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->r0()Landroidx/activity/result/b;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p1}, Lcom/transsnet/downloader/util/DownloadUtil;->v()[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p0
.end method

.method private static final f1(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Lyw/b;)Lkotlin/Unit;
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->B0(Lyw/b;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "<get-TAG>(...)"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lyw/b;->d()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "path select path = "

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " "

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v4, 0x4

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Lbx/g0;

    .line 57
    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    iget-object p0, p0, Lbx/g0;->i:Lcom/transsnet/downloader/widget/DownloadPathEntranceView;

    .line 61
    .line 62
    if-eqz p0, :cond_1

    .line 63
    .line 64
    invoke-virtual {p1}, Lyw/b;->d()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lyw/b;->a()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    invoke-virtual {p0, v0, v1, v2}, Lcom/transsnet/downloader/widget/DownloadPathEntranceView;->updatePathName(Ljava/lang/String;J)V

    .line 73
    .line 74
    .line 75
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p0
.end method

.method private static final g1(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lyw/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Lyw/b;->f()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->B0(Lyw/b;)V

    .line 24
    .line 25
    .line 26
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string p1, "<get-TAG>(...)"

    .line 33
    .line 34
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lyw/b;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v4, "cur download path = "

    .line 47
    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, " "

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const/4 v6, 0x4

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "download_root_path"

    .line 76
    .line 77
    invoke-virtual {v0}, Lyw/b;->b()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "download_root_path_name"

    .line 89
    .line 90
    invoke-virtual {v0}, Lyw/b;->d()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string v1, "download_root_path_type"

    .line 102
    .line 103
    invoke-virtual {v0}, Lyw/b;->e()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-virtual {p1, v1, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Lbx/g0;

    .line 115
    .line 116
    if-eqz p0, :cond_1

    .line 117
    .line 118
    iget-object p0, p0, Lbx/g0;->i:Lcom/transsnet/downloader/widget/DownloadPathEntranceView;

    .line 119
    .line 120
    if-eqz p0, :cond_1

    .line 121
    .line 122
    invoke-virtual {v0}, Lyw/b;->d()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v0}, Lyw/b;->a()J

    .line 127
    .line 128
    .line 129
    move-result-wide v0

    .line 130
    invoke-virtual {p0, p1, v0, v1}, Lcom/transsnet/downloader/widget/DownloadPathEntranceView;->updatePathName(Ljava/lang/String;J)V

    .line 131
    .line 132
    .line 133
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    return-object p0
.end method

.method private final h1()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/g0;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Lbx/g0;->f:Lcom/transsnet/downloader/widget/DownloadView;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;->K0()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    move-object v3, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    .line 29
    const/16 v7, 0x18

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-static/range {v1 .. v8}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method


# virtual methods
.method public Q0(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 6

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_c

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_c

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lbx/g0;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, v0, Lbx/g0;->b:Lbx/s0;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Lbx/s0;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lbx/g0;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v0, v0, Lbx/g0;->b:Lbx/s0;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, v0, Lbx/s0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSizeFormat()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const/4 v1, 0x1

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    invoke-static {v2, v3, v1}, Lzg/b;->a(JI)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    const/4 v0, 0x0

    .line 95
    goto :goto_0

    .line 96
    :cond_4
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSizeFormat()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    goto :goto_1

    .line 111
    :cond_5
    const-wide/16 v2, 0x0

    .line 112
    .line 113
    :goto_1
    const/16 v4, 0x3e8

    .line 114
    .line 115
    int-to-long v4, v4

    .line 116
    mul-long/2addr v2, v4

    .line 117
    invoke-static {v2, v3}, Lcom/transsion/baseui/util/TimeUtilKt;->o(J)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v0, " \u00b7 "

    .line 130
    .line 131
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Lbx/g0;

    .line 146
    .line 147
    if-eqz v2, :cond_6

    .line 148
    .line 149
    iget-object v2, v2, Lbx/g0;->b:Lbx/s0;

    .line 150
    .line 151
    if-eqz v2, :cond_6

    .line 152
    .line 153
    iget-object v2, v2, Lbx/s0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 154
    .line 155
    if-eqz v2, :cond_6

    .line 156
    .line 157
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Lbx/g0;

    .line 165
    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    iget-object v0, v0, Lbx/g0;->b:Lbx/s0;

    .line 169
    .line 170
    if-eqz v0, :cond_7

    .line 171
    .line 172
    iget-object v0, v0, Lbx/s0;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 173
    .line 174
    if-eqz v0, :cond_7

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 177
    .line 178
    .line 179
    :cond_7
    const-class v0, Lim/b;

    .line 180
    .line 181
    const/4 v2, 0x0

    .line 182
    new-array v3, v2, [Ljava/lang/Object;

    .line 183
    .line 184
    invoke-static {v0, v3}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Lim/b;

    .line 189
    .line 190
    if-eqz v0, :cond_8

    .line 191
    .line 192
    invoke-interface {v0}, Lim/b;->z()Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    :cond_8
    if-eqz v2, :cond_a

    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getRequireMemberType()Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    if-nez p1, :cond_9

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-ne p1, v1, :cond_a

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Lbx/g0;

    .line 216
    .line 217
    if-eqz p1, :cond_b

    .line 218
    .line 219
    iget-object p1, p1, Lbx/g0;->b:Lbx/s0;

    .line 220
    .line 221
    if-eqz p1, :cond_b

    .line 222
    .line 223
    iget-object p1, p1, Lbx/s0;->c:Lcom/transsnet/downloader/widget/DownloadPremiumView;

    .line 224
    .line 225
    if-eqz p1, :cond_b

    .line 226
    .line 227
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Lbx/g0;

    .line 236
    .line 237
    if-eqz p1, :cond_b

    .line 238
    .line 239
    iget-object p1, p1, Lbx/g0;->b:Lbx/s0;

    .line 240
    .line 241
    if-eqz p1, :cond_b

    .line 242
    .line 243
    iget-object p1, p1, Lbx/s0;->c:Lcom/transsnet/downloader/widget/DownloadPremiumView;

    .line 244
    .line 245
    if-eqz p1, :cond_b

    .line 246
    .line 247
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 248
    .line 249
    .line 250
    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;->h1()V

    .line 251
    .line 252
    .line 253
    :cond_c
    :goto_4
    return-void
.end method

.method public a1(Landroid/view/LayoutInflater;)Lbx/g0;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lbx/g0;->c(Landroid/view/LayoutInflater;)Lbx/g0;

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

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;->a1(Landroid/view/LayoutInflater;)Lbx/g0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initListener()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lbx/g0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lbx/g0;->c:Landroid/widget/ImageView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/transsnet/downloader/fragment/s4;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/s4;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lbx/g0;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Lbx/g0;->f:Lcom/transsnet/downloader/widget/DownloadView;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v1, Lcom/transsnet/downloader/fragment/t4;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/t4;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public initViewData()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "extra_module_name"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;->P0(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;->O0(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const-string v1, "type"

    .line 37
    .line 38
    const-string v2, "1"

    .line 39
    .line 40
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lbx/g0;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object v0, v0, Lbx/g0;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->q0()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 66
    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lbx/g0;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iget-object v0, v0, Lbx/g0;->i:Lcom/transsnet/downloader/widget/DownloadPathEntranceView;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    new-instance v1, Lcom/transsnet/downloader/fragment/u4;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/u4;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/DownloadPathEntranceView;->setChangeClickCallback(Lkotlin/jvm/functions/Function1;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lcom/transsnet/downloader/fragment/v4;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/v4;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/DownloadPathEntranceView;->setPermissionClickCallback(Lkotlin/jvm/functions/Function1;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;->Z0()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public initViewModel()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;->initViewModel()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "<get-TAG>(...)"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x0

    .line 17
    const-string v2, "single\uff0c initViewModel  "

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->B()Landroidx/lifecycle/b0;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    new-instance v2, Lcom/transsnet/downloader/fragment/q4;

    .line 42
    .line 43
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/q4;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$c;

    .line 47
    .line 48
    invoke-direct {v3, v2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->r()Landroidx/lifecycle/b0;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    new-instance v2, Lcom/transsnet/downloader/fragment/r4;

    .line 67
    .line 68
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/r4;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;)V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$c;

    .line 72
    .line 73
    invoke-direct {v3, v2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->v()V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isMonitorNetworkState()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResFragment;->Z0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public v0()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->v0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lbx/g0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lbx/g0;->i:Lcom/transsnet/downloader/widget/DownloadPathEntranceView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsnet/downloader/widget/DownloadPathEntranceView;->onPermissionGranted()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public w0()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->w0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lbx/g0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lbx/g0;->i:Lcom/transsnet/downloader/widget/DownloadPathEntranceView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsnet/downloader/widget/DownloadPathEntranceView;->onPermissionDenied()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public x0()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->x0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->G0()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->F0()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lbx/g0;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Lbx/g0;->i:Lcom/transsnet/downloader/widget/DownloadPathEntranceView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsnet/downloader/widget/DownloadPathEntranceView;->onPermissionGranted()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public y0()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->y0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lbx/g0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lbx/g0;->i:Lcom/transsnet/downloader/widget/DownloadPathEntranceView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsnet/downloader/widget/DownloadPathEntranceView;->onPermissionRefresh()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
