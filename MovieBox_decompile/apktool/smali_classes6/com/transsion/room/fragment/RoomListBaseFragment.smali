.class public abstract Lcom/transsion/room/fragment/RoomListBaseFragment;
.super Lcom/transsion/baseui/fragment/LazyFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/LazyFragment<",
        "Lfp/r;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\r\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00020\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008 \u0010\u0013J\u000f\u0010!\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0013J\u000f\u0010\"\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\"\u0010\u001fJ\u000f\u0010#\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0004J\u0019\u0010)\u001a\u00020\u00052\u0008\u0010(\u001a\u0004\u0018\u00010\'H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008+\u0010\u0004J\u0011\u0010-\u001a\u0004\u0018\u00010,H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u00100\u001a\u00020/H&\u00a2\u0006\u0004\u00080\u00101J\u0019\u00103\u001a\u00020\u00052\u0008\u0008\u0002\u00102\u001a\u00020\u0011H&\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020\u001dH&\u00a2\u0006\u0004\u00085\u0010\u001fR$\u0010=\u001a\u0004\u0018\u0001068\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R$\u0010I\u001a\u0004\u0018\u00010B8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR\u0018\u0010M\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u0016\u0010P\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0018\u0010S\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR$\u0010X\u001a\u0004\u0018\u00010\u001d8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010R\u001a\u0004\u0008U\u0010\u001f\"\u0004\u0008V\u0010WR\"\u0010_\u001a\u00020\t8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R\u0018\u0010b\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010aR\u0018\u0010f\u001a\u0004\u0018\u00010c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0018\u0010i\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010hR\u001d\u0010o\u001a\u0004\u0018\u00010j8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008k\u0010l\u001a\u0004\u0008m\u0010nR\"\u0010u\u001a\u0010\u0012\u000c\u0012\n r*\u0004\u0018\u00010q0q0p8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008s\u0010t\u00a8\u0006v"
    }
    d2 = {
        "Lcom/transsion/room/fragment/RoomListBaseFragment;",
        "Lcom/transsion/baseui/fragment/LazyFragment;",
        "Lfp/r;",
        "<init>",
        "()V",
        "",
        "initExposureHelper",
        "Lcom/transsion/moviedetailapi/bean/RoomItem;",
        "item",
        "",
        "position",
        "I0",
        "(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V",
        "s0",
        "D0",
        "H0",
        "(Lcom/transsion/moviedetailapi/bean/RoomItem;)V",
        "",
        "checkLogin",
        "()Z",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "x0",
        "(Landroid/view/LayoutInflater;)Lfp/r;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "lazyLoadData",
        "",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "isShowPageStateLayoutTitle",
        "isAudioShowNoNetworkLayout",
        "getEmptyDescText",
        "initViewData",
        "initViewModel",
        "retryLoadData",
        "t0",
        "Lcom/transsion/moviedetailapi/bean/RoomBean;",
        "bean",
        "J0",
        "(Lcom/transsion/moviedetailapi/bean/RoomBean;)V",
        "checkToShowEmptyView",
        "Landroid/view/View;",
        "getLoadingView",
        "()Landroid/view/View;",
        "Lcom/transsion/room/adapter/RoomListFrom;",
        "w0",
        "()Lcom/transsion/room/adapter/RoomListFrom;",
        "isRefresh",
        "E0",
        "(Z)V",
        "pageName",
        "Lcom/transsion/room/adapter/RoomListAdapter;",
        "a",
        "Lcom/transsion/room/adapter/RoomListAdapter;",
        "u0",
        "()Lcom/transsion/room/adapter/RoomListAdapter;",
        "setMAdapter",
        "(Lcom/transsion/room/adapter/RoomListAdapter;)V",
        "mAdapter",
        "Lbj/b;",
        "b",
        "Lbj/b;",
        "mExposureHelper",
        "Lcom/transsion/room/viewmodel/RoomViewModel;",
        "c",
        "Lcom/transsion/room/viewmodel/RoomViewModel;",
        "v0",
        "()Lcom/transsion/room/viewmodel/RoomViewModel;",
        "setMViewModel",
        "(Lcom/transsion/room/viewmodel/RoomViewModel;)V",
        "mViewModel",
        "Lcom/transsion/room/viewmodel/RoomDetailViewModel;",
        "d",
        "Lcom/transsion/room/viewmodel/RoomDetailViewModel;",
        "mDetailViewModel",
        "e",
        "Z",
        "isSelectRoom",
        "f",
        "Ljava/lang/String;",
        "mPageFrom",
        "g",
        "getMPage",
        "setMPage",
        "(Ljava/lang/String;)V",
        "mPage",
        "h",
        "I",
        "getMPerPage",
        "()I",
        "setMPerPage",
        "(I)V",
        "mPerPage",
        "i",
        "Ljava/lang/Integer;",
        "mCurJoinPosition",
        "Lcom/tn/lib/view/RoomJoinAnimationView;",
        "j",
        "Lcom/tn/lib/view/RoomJoinAnimationView;",
        "mCurJoinView",
        "k",
        "Landroid/view/View;",
        "mLoadingView",
        "Lqx/a;",
        "l",
        "Lkotlin/Lazy;",
        "getMLoginApi",
        "()Lqx/a;",
        "mLoginApi",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "m",
        "Landroidx/activity/result/b;",
        "mLoginLaunch",
        "Room_psRelease"
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
.field private a:Lcom/transsion/room/adapter/RoomListAdapter;

.field private b:Lbj/b;

.field private c:Lcom/transsion/room/viewmodel/RoomViewModel;

.field private d:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/Integer;

.field private j:Lcom/tn/lib/view/RoomJoinAnimationView;

.field private k:Landroid/view/View;

.field private final l:Lkotlin/Lazy;

.field private final m:Landroidx/activity/result/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/LazyFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc

    .line 5
    .line 6
    iput v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->h:I

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/room/fragment/h1;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/room/fragment/h1;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->l:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v0, Lf/j;

    .line 20
    .line 21
    invoke-direct {v0}, Lf/j;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/transsion/room/fragment/i1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/transsion/room/fragment/i1;-><init>(Lcom/transsion/room/fragment/RoomListBaseFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "registerForActivityResult(...)"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->m:Landroidx/activity/result/b;

    .line 39
    .line 40
    return-void
.end method

.method private static final A0(Lcom/transsion/room/fragment/RoomListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

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
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-wide/16 v2, 0x1f4

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of v0, p1, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    if-nez p1, :cond_2

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getHasJoin()Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-direct {p0, p1, p3}, Lcom/transsion/room/fragment/RoomListBaseFragment;->I0(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->i:Ljava/lang/Integer;

    .line 62
    .line 63
    check-cast p2, Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->j:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->D0()V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method

.method private static final B0(Lcom/transsion/room/fragment/RoomListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

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
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const-wide/16 v1, 0x7d0

    .line 18
    .line 19
    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of p2, p1, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    if-nez p1, :cond_2

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-boolean p2, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->e:Z

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/room/fragment/RoomListBaseFragment;->H0(Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/transsion/room/fragment/RoomListBaseFragment;->I0(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void
.end method

.method private static final C0(Lcom/transsion/room/fragment/RoomListBaseFragment;Lcom/transsion/moviedetailapi/bean/RoomNet;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->j:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/tn/lib/view/RoomJoinStatus;->JOIN:Lcom/tn/lib/view/RoomJoinStatus;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/RoomJoinAnimationView;->setStatus(Lcom/tn/lib/view/RoomJoinStatus;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->j:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/tn/lib/view/RoomJoinStatus;->JOINED:Lcom/tn/lib/view/RoomJoinStatus;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/RoomJoinAnimationView;->setStatus(Lcom/tn/lib/view/RoomJoinStatus;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->j:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->i:Ljava/lang/Integer;

    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method private final D0()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->j:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tn/lib/view/RoomJoinAnimationView;->isLoading()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->checkLogin()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->i:Ljava/lang/Integer;

    .line 21
    .line 22
    if-eqz v0, :cond_8

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-gez v0, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->i:Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v0, 0x0

    .line 55
    :goto_0
    sget-object v1, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 56
    .line 57
    const/16 v2, 0x3e9

    .line 58
    .line 59
    const-wide/16 v3, 0x7d0

    .line 60
    .line 61
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    return-void

    .line 68
    :cond_4
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 69
    .line 70
    invoke-virtual {v1}, Lyg/l;->e()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_5

    .line 75
    .line 76
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 77
    .line 78
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_5
    if-eqz v0, :cond_8

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    if-eqz v5, :cond_8

    .line 91
    .line 92
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->j:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 93
    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    sget-object v1, Lcom/tn/lib/view/RoomJoinStatus;->LOADING:Lcom/tn/lib/view/RoomJoinStatus;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/RoomJoinAnimationView;->setStatus(Lcom/tn/lib/view/RoomJoinStatus;)V

    .line 99
    .line 100
    .line 101
    :cond_6
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->d:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 102
    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-virtual {v0, v5}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->w(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    sget-object v2, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->pageName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const/16 v9, 0x38

    .line 115
    .line 116
    const/4 v10, 0x0

    .line 117
    const-string v4, "join"

    .line 118
    .line 119
    const/4 v6, 0x0

    .line 120
    const/4 v7, 0x0

    .line 121
    const/4 v8, 0x0

    .line 122
    invoke-static/range {v2 .. v10}, Lcom/transsion/baselib/helper/a;->j(Lcom/transsion/baselib/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_8
    :goto_1
    return-void
.end method

.method public static synthetic F0(Lcom/transsion/room/fragment/RoomListBaseFragment;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    and-int/2addr p2, p3

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    move p1, p3

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/room/fragment/RoomListBaseFragment;->E0(Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: loadData"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private static final G0(Lcom/transsion/room/fragment/RoomListBaseFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, -0x1

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->D0()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->j:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/tn/lib/view/RoomJoinStatus;->JOIN:Lcom/tn/lib/view/RoomJoinStatus;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/RoomJoinAnimationView;->setStatus(Lcom/tn/lib/view/RoomJoinStatus;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->j:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->i:Ljava/lang/Integer;

    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method private final H0(Lcom/transsion/moviedetailapi/bean/RoomItem;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "onSelectRoom, name:"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ",id:"

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v4, 0x4

    .line 37
    const/4 v5, 0x0

    .line 38
    const-string v1, "RoomList"

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/transsion/publish/api/GroupBean;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/transsion/publish/api/GroupBean;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/transsion/publish/api/GroupBean;->setGroupId(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/transsion/publish/api/GroupBean;->setName(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getDescription()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/transsion/publish/api/GroupBean;->setDes(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getDescription()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/transsion/publish/api/GroupBean;->setDescription(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getPostCount()Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/transsion/publish/api/GroupBean;->setPostCount(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getAvatar()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/transsion/publish/api/GroupBean;->setAvatar(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getNewPostCount()Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/transsion/publish/api/GroupBean;->setNewPostCount(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getOps()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v0, p1}, Lcom/transsion/publish/api/GroupBean;->setOps(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance p1, Ljo/b;

    .line 114
    .line 115
    invoke-direct {p1}, Ljo/b;-><init>()V

    .line 116
    .line 117
    .line 118
    const/4 v1, 0x6

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p1, v1}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 124
    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p1, v1}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljo/b;->m(Lcom/transsion/publish/api/GroupBean;)V

    .line 135
    .line 136
    .line 137
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 138
    .line 139
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 146
    .line 147
    const-class v1, Ljo/b;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const-string v2, "getName(...)"

    .line 154
    .line 155
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-wide/16 v2, 0x0

    .line 159
    .line 160
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_0

    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 170
    .line 171
    .line 172
    :cond_0
    return-void
.end method

.method private final I0(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/room/helper/l;->a:Lcom/transsion/room/helper/l;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->f:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->pageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2, p2, p1}, Lcom/transsion/room/helper/l;->j(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/moviedetailapi/bean/RoomItem;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const-string v0, "/room/detail"

    .line 15
    .line 16
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "item"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->I(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/therouter/router/Navigator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v2, v1

    .line 35
    :goto_0
    const-string v3, "id"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x2

    .line 46
    invoke-static {v0, v2, v1, v3, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/transsion/room/fragment/RoomListBaseFragment;->s0(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private final checkLogin()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->getMLoginApi()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lqx/a;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->m:Landroidx/activity/result/b;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->getMLoginApi()Lqx/a;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-interface {v3, v1}, Lqx/a;->p(Landroid/content/Context;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method private final getMLoginApi()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->l:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final initExposureHelper()V
    .locals 7

    .line 1
    new-instance v6, Lbj/b;

    .line 2
    .line 3
    new-instance v2, Lcom/transsion/room/fragment/RoomListBaseFragment$a;

    .line 4
    .line 5
    invoke-direct {v2, p0}, Lcom/transsion/room/fragment/RoomListBaseFragment$a;-><init>(Lcom/transsion/room/fragment/RoomListBaseFragment;)V

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x0

    .line 10
    const v1, 0x3f19999a    # 0.6f

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    move-object v0, v6

    .line 15
    invoke-direct/range {v0 .. v5}, Lbj/b;-><init>(FLbj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-virtual {v6, v0}, Lbj/b;->n(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lfp/r;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, v0, Lfp/r;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iput-object v6, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->b:Lbj/b;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic k0(Lcom/transsion/room/fragment/RoomListBaseFragment;Lcom/transsion/moviedetailapi/bean/RoomNet;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/fragment/RoomListBaseFragment;->C0(Lcom/transsion/room/fragment/RoomListBaseFragment;Lcom/transsion/moviedetailapi/bean/RoomNet;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l0(Lcom/transsion/room/fragment/RoomListBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->z0(Lcom/transsion/room/fragment/RoomListBaseFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(Lcom/transsion/room/fragment/RoomListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/fragment/RoomListBaseFragment;->A0(Lcom/transsion/room/fragment/RoomListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final mLoginApi_delegate$lambda$0()Lqx/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lqx/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqx/a;

    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic n0()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/room/fragment/RoomListBaseFragment;->mLoginApi_delegate$lambda$0()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic o0(Lcom/transsion/room/fragment/RoomListBaseFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->y0(Lcom/transsion/room/fragment/RoomListBaseFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/room/fragment/RoomListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/fragment/RoomListBaseFragment;->B0(Lcom/transsion/room/fragment/RoomListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q0(Lcom/transsion/room/fragment/RoomListBaseFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/fragment/RoomListBaseFragment;->G0(Lcom/transsion/room/fragment/RoomListBaseFragment;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r0(Lcom/transsion/room/fragment/RoomListBaseFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final s0(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/transsion/moviedetailapi/bean/RoomItem;->setNewPostCount(Ljava/lang/Long;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method private static final y0(Lcom/transsion/room/fragment/RoomListBaseFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->t0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final z0(Lcom/transsion/room/fragment/RoomListBaseFragment;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->E0(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract E0(Z)V
.end method

.method public J0(Lcom/transsion/moviedetailapi/bean/RoomBean;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lfp/r;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lfp/r;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lfp/r;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, v0, Lfp/r;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
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
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    :cond_2
    const/4 v3, 0x0

    .line 55
    if-eqz p1, :cond_10

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomBean;->getItems()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/util/Collection;

    .line 62
    .line 63
    if-eqz v4, :cond_10

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    if-eqz v4, :cond_4

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    move-object v4, v3

    .line 85
    :goto_0
    iput-object v4, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->g:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomBean;->isRefresh()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Lqi/b;->k(Z)V

    .line 100
    .line 101
    .line 102
    :cond_5
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 103
    .line 104
    if-eqz v0, :cond_c

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomBean;->getItems()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Ljava/util/Collection;

    .line 111
    .line 112
    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomBean;->getItems()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    if-eqz v4, :cond_c

    .line 121
    .line 122
    new-instance v5, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    move-object v6, v0

    .line 128
    check-cast v6, Ljava/util/Collection;

    .line 129
    .line 130
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-nez v6, :cond_8

    .line 135
    .line 136
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_9

    .line 145
    .line 146
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 151
    .line 152
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_7

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_7
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_8
    check-cast v4, Ljava/util/Collection;

    .line 164
    .line 165
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    .line 167
    .line 168
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_b

    .line 173
    .line 174
    iget-object v4, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 175
    .line 176
    if-eqz v4, :cond_a

    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    if-eqz v4, :cond_a

    .line 183
    .line 184
    invoke-static {v4, v1, v2, v3}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_c

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->checkToShowEmptyView()V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_b
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 198
    .line 199
    if-eqz v0, :cond_c

    .line 200
    .line 201
    invoke-virtual {v0, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 202
    .line 203
    .line 204
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 205
    .line 206
    if-eqz v0, :cond_d

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    if-eqz v0, :cond_d

    .line 213
    .line 214
    invoke-virtual {v0}, Lt6/f;->r()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-ne v0, v2, :cond_d

    .line 219
    .line 220
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 221
    .line 222
    if-eqz v0, :cond_d

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-eqz v0, :cond_d

    .line 229
    .line 230
    invoke-virtual {v0}, Lt6/f;->s()V

    .line 231
    .line 232
    .line 233
    :cond_d
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    if-eqz p1, :cond_e

    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 244
    .line 245
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    goto :goto_3

    .line 250
    :cond_e
    move p1, v1

    .line 251
    :goto_3
    if-nez p1, :cond_f

    .line 252
    .line 253
    iget-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 254
    .line 255
    if-eqz p1, :cond_f

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    if-eqz p1, :cond_f

    .line 262
    .line 263
    invoke-static {p1, v1, v2, v3}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_f
    return-void

    .line 267
    :cond_10
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_11

    .line 272
    .line 273
    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->checkToShowEmptyView()V

    .line 274
    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_11
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 278
    .line 279
    if-eqz v0, :cond_12

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    if-eqz v0, :cond_12

    .line 286
    .line 287
    invoke-virtual {v0}, Lt6/f;->r()Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-ne v0, v2, :cond_12

    .line 292
    .line 293
    move v0, v2

    .line 294
    goto :goto_5

    .line 295
    :cond_12
    move v0, v1

    .line 296
    :goto_5
    if-eqz v0, :cond_15

    .line 297
    .line 298
    if-eqz p1, :cond_13

    .line 299
    .line 300
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    if-eqz p1, :cond_13

    .line 305
    .line 306
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 311
    .line 312
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    goto :goto_6

    .line 317
    :cond_13
    move p1, v1

    .line 318
    :goto_6
    if-nez p1, :cond_14

    .line 319
    .line 320
    iget-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 321
    .line 322
    if-eqz p1, :cond_15

    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    if-eqz p1, :cond_15

    .line 329
    .line 330
    invoke-static {p1, v1, v2, v3}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    goto :goto_7

    .line 334
    :cond_14
    iget-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 335
    .line 336
    if-eqz p1, :cond_15

    .line 337
    .line 338
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    if-eqz p1, :cond_15

    .line 343
    .line 344
    invoke-virtual {p1}, Lt6/f;->v()V

    .line 345
    .line 346
    .line 347
    :cond_15
    :goto_7
    return-void
.end method

.method public checkToShowEmptyView()V
    .locals 2

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLocalNoNetworkView(Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getEmptyView(Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public getEmptyDescText()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/usercenter/R$string;->profile_not_content:I

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

.method public getLoadingView()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->k:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget v1, Lcom/transsion/room/R$layout;->layout_room_list_loading:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getFlStateView()Landroid/widget/FrameLayout;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->k:Landroid/view/View;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->k:Landroid/view/View;

    .line 27
    .line 28
    return-object v0
.end method

.method protected final getMPage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMPerPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->h:I

    .line 2
    .line 3
    return v0
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
    invoke-virtual {p0, p1}, Lcom/transsion/room/fragment/RoomListBaseFragment;->x0(Landroid/view/LayoutInflater;)Lfp/r;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initViewData()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->initExposureHelper()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lfp/r;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lfp/r;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget v2, Lcom/tn/lib/widget/R$color;->bg_01:I

    .line 21
    .line 22
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget v2, Lcom/tn/lib/widget/R$color;->main_gradient_center:I

    .line 34
    .line 35
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    sget v3, Lcom/tn/lib/widget/R$color;->main_gradient_start:I

    .line 44
    .line 45
    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    filled-new-array {v1, v2}, [I

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/transsion/room/fragment/j1;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/transsion/room/fragment/j1;-><init>(Lcom/transsion/room/fragment/RoomListBaseFragment;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    new-instance v0, Lcom/transsion/room/adapter/RoomListAdapter;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->w0()Lcom/transsion/room/adapter/RoomListFrom;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-boolean v2, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->e:Z

    .line 71
    .line 72
    invoke-direct {v0, v1, v2}, Lcom/transsion/room/adapter/RoomListAdapter;-><init>(Lcom/transsion/room/adapter/RoomListFrom;Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const/4 v2, 0x1

    .line 80
    invoke-virtual {v1, v2}, Lt6/f;->z(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1, v2}, Lt6/f;->y(Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const/4 v2, 0x3

    .line 95
    invoke-virtual {v1, v2}, Lt6/f;->E(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    new-instance v2, Lcom/transsion/room/fragment/k1;

    .line 103
    .line 104
    invoke-direct {v2, p0}, Lcom/transsion/room/fragment/k1;-><init>(Lcom/transsion/room/fragment/RoomListBaseFragment;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Lt6/f;->D(Lr6/f;)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lcom/transsion/room/fragment/RoomListBaseFragment$b;

    .line 111
    .line 112
    invoke-direct {v1}, Lcom/transsion/room/fragment/RoomListBaseFragment$b;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    .line 116
    .line 117
    .line 118
    sget v1, Lcom/transsion/room/R$id;->v_join:I

    .line 119
    .line 120
    filled-new-array {v1}, [I

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 125
    .line 126
    .line 127
    new-instance v1, Lcom/transsion/room/fragment/l1;

    .line 128
    .line 129
    invoke-direct {v1, p0}, Lcom/transsion/room/fragment/l1;-><init>(Lcom/transsion/room/fragment/RoomListBaseFragment;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lr6/b;)V

    .line 133
    .line 134
    .line 135
    new-instance v1, Lcom/transsion/room/fragment/m1;

    .line 136
    .line 137
    invoke-direct {v1, p0}, Lcom/transsion/room/fragment/m1;-><init>(Lcom/transsion/room/fragment/RoomListBaseFragment;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 141
    .line 142
    .line 143
    iput-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lfp/r;

    .line 150
    .line 151
    if-eqz v0, :cond_1

    .line 152
    .line 153
    iget-object v0, v0, Lfp/r;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    .line 155
    if-eqz v0, :cond_1

    .line 156
    .line 157
    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-direct {v1, v2}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 172
    .line 173
    .line 174
    :cond_1
    return-void
.end method

.method public initViewModel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->d:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->s()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/transsion/room/fragment/g1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/transsion/room/fragment/g1;-><init>(Lcom/transsion/room/fragment/RoomListBaseFragment;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/transsion/room/fragment/RoomListBaseFragment$c;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/transsion/room/fragment/RoomListBaseFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 25
    .line 26
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLocalNoNetworkView(Z)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isShowPageStateLayoutTitle()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public lazyLoadData()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showLoadingView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p0, v2, v0, v1}, Lcom/transsion/room/fragment/RoomListBaseFragment;->F0(Lcom/transsion/room/fragment/RoomListBaseFragment;ZILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "is_select_room"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    iput-boolean p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->e:Z

    .line 19
    .line 20
    new-instance p1, Landroidx/lifecycle/v0;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 23
    .line 24
    .line 25
    const-class v0, Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->c:Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 34
    .line 35
    new-instance p1, Landroidx/lifecycle/v0;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 38
    .line 39
    .line 40
    const-class v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->d:Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 49
    .line 50
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 51
    .line 52
    invoke-virtual {p1}, Lqi/h;->h()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->f:Ljava/lang/String;

    .line 57
    .line 58
    return-void
.end method

.method public abstract pageName()Ljava/lang/String;
.end method

.method public retryLoadData()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showLoadingView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p0, v2, v0, v1}, Lcom/transsion/room/fragment/RoomListBaseFragment;->F0(Lcom/transsion/room/fragment/RoomListBaseFragment;ZILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public t0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->g:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {p0, v1, v2, v0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->F0(Lcom/transsion/room/fragment/RoomListBaseFragment;ZILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected final u0()Lcom/transsion/room/adapter/RoomListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->a:Lcom/transsion/room/adapter/RoomListAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final v0()Lcom/transsion/room/viewmodel/RoomViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListBaseFragment;->c:Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract w0()Lcom/transsion/room/adapter/RoomListFrom;
.end method

.method public x0(Landroid/view/LayoutInflater;)Lfp/r;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lfp/r;->c(Landroid/view/LayoutInflater;)Lfp/r;

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
