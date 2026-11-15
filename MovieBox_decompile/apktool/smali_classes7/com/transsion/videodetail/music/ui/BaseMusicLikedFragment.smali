.class public abstract Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;
.super Lcom/transsion/baseui/fragment/LazyFragment;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/orplayer/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/LazyFragment<",
        "Lxv/e;",
        ">;",
        "Lcom/transsion/player/orplayer/e;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u000f\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0005J\u0019\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u0019\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008 \u0010\u0005J\u000f\u0010!\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0005J\u000f\u0010\"\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0005J\u0011\u0010%\u001a\u0004\u0018\u00010$H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0005J\u001f\u0010,\u001a\u00020\u00062\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0019\u0010.\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008.\u0010\rJ\u0019\u0010/\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008/\u0010\rJ\u0019\u00100\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u00080\u0010\rJ!\u00103\u001a\u00020\u00062\u0006\u00102\u001a\u0002012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020\u001bH&\u00a2\u0006\u0004\u00085\u0010\u001dJ-\u00109\u001a\u00020\u00062\u0008\u00106\u001a\u0004\u0018\u00010\u001b2\u0008\u00107\u001a\u0004\u0018\u00010\u001b2\u0008\u0008\u0002\u00108\u001a\u00020\u0014H&\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010<\u001a\u00020;H&\u00a2\u0006\u0004\u0008<\u0010=J/\u0010D\u001a\u00020\u00062\u000e\u0010?\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030>2\u0006\u0010A\u001a\u00020@2\u0006\u0010C\u001a\u00020BH&\u00a2\u0006\u0004\u0008D\u0010EJ\u0019\u0010F\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH&\u00a2\u0006\u0004\u0008F\u0010\rJ\u000f\u0010G\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008G\u0010\u0005J\u000f\u0010I\u001a\u0004\u0018\u00010H\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010K\u001a\u0004\u0018\u00010H\u00a2\u0006\u0004\u0008K\u0010JJ\r\u0010L\u001a\u00020B\u00a2\u0006\u0004\u0008L\u0010MJ\u000f\u0010N\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u0008N\u0010\u001dJ\u0019\u0010O\u001a\u0004\u0018\u00010\u001b2\u0008\u00106\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u0008O\u0010PJ\u0017\u0010Q\u001a\u00020B2\u0008\u00106\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u0008Q\u0010RJ\u000f\u0010S\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008S\u0010\u0005J\u001d\u0010V\u001a\u00020\u00062\u0006\u0010T\u001a\u00020\u001b2\u0006\u0010U\u001a\u00020\u0014\u00a2\u0006\u0004\u0008V\u0010WR$\u0010_\u001a\u0004\u0018\u00010X8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R\u001b\u0010e\u001a\u00020`8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008a\u0010b\u001a\u0004\u0008c\u0010dR$\u0010k\u001a\u0004\u0018\u00010\n8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008f\u0010g\u001a\u0004\u0008h\u0010i\"\u0004\u0008j\u0010\r\u00a8\u0006l"
    }
    d2 = {
        "Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;",
        "Lcom/transsion/baseui/fragment/LazyFragment;",
        "Lxv/e;",
        "Lcom/transsion/player/orplayer/e;",
        "<init>",
        "()V",
        "",
        "showLoading",
        "L0",
        "A0",
        "Lgn/e;",
        "mediaSource",
        "J0",
        "(Lgn/e;)V",
        "I0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "",
        "isAudioShowNoNetworkLayout",
        "()Z",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "y0",
        "(Landroid/view/LayoutInflater;)Lxv/e;",
        "",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "retryLoadData",
        "lazyLoadData",
        "initListener",
        "initViewModel",
        "initViewData",
        "loadDefaultData",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "onDisconnected",
        "Landroid/net/Network;",
        "network",
        "Landroid/net/NetworkCapabilities;",
        "networkCapabilities",
        "onConnected",
        "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V",
        "onVideoPause",
        "onVideoStart",
        "onPlayerRelease",
        "",
        "progress",
        "onProgress",
        "(JLgn/e;)V",
        "getPageName",
        "subjectId",
        "path",
        "fromItemClick",
        "G0",
        "(Ljava/lang/String;Ljava/lang/String;Z)V",
        "Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;",
        "x0",
        "()Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "adapter",
        "Landroid/view/View;",
        "view",
        "",
        "position",
        "F0",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V",
        "H0",
        "E0",
        "Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;",
        "r0",
        "()Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;",
        "o0",
        "p0",
        "()I",
        "v0",
        "w0",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "q0",
        "(Ljava/lang/String;)I",
        "showEmpty",
        "pageName",
        "fromItemCLick",
        "K0",
        "(Ljava/lang/String;Z)V",
        "Lcom/transsion/videodetail/music/adapter/a;",
        "a",
        "Lcom/transsion/videodetail/music/adapter/a;",
        "t0",
        "()Lcom/transsion/videodetail/music/adapter/a;",
        "setMMusicAdapter",
        "(Lcom/transsion/videodetail/music/adapter/a;)V",
        "mMusicAdapter",
        "Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;",
        "b",
        "Lkotlin/Lazy;",
        "u0",
        "()Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;",
        "mViewModel",
        "c",
        "Lgn/e;",
        "s0",
        "()Lgn/e;",
        "setMCurrentMediaSource",
        "mCurrentMediaSource",
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
.field private a:Lcom/transsion/videodetail/music/adapter/a;

.field private final b:Lkotlin/Lazy;

.field private c:Lgn/e;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/LazyFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->b:Lkotlin/Lazy;

    .line 25
    .line 26
    return-void
.end method

.method private final A0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxv/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lxv/e;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment$b;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment$b;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/transsion/videodetail/music/adapter/a;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->x0()Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v1, v2}, Lcom/transsion/videodetail/music/adapter/a;-><init>(Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 43
    .line 44
    new-instance v2, Lcom/transsion/videodetail/music/ui/a;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Lcom/transsion/videodetail/music/ui/a;-><init>(Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 50
    .line 51
    .line 52
    sget v2, Lcom/transsion/videodetail/R$id;->ivNextPlay:I

    .line 53
    .line 54
    filled-new-array {v2}, [I

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Lcom/transsion/videodetail/music/ui/b;

    .line 62
    .line 63
    invoke-direct {v2, p0}, Lcom/transsion/videodetail/music/ui/b;-><init>(Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lr6/b;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method

.method private static final B0(Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "<unused var>"

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
    instance-of p2, p1, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    check-cast p1, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, p3

    .line 24
    :goto_0
    if-eqz p1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->getMusicLikedDbBean()Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object p2, p3

    .line 38
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->getMusicLikedDbBean()Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getPath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    :cond_2
    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p2, p3, p1}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->G0(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method private static final C0(Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->F0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final D0(Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->L0()V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lyv/a;->a:Lyv/a;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getClassTag()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, " --> initViewModel() --> \u589e\u91cf\u66f4\u65b0\u6536\u85cf\u5217\u8868"

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lyv/a;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    new-instance v2, Lcom/transsion/videodetail/music/adapter/b;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-direct {v2, v3, p1}, Lcom/transsion/videodetail/music/adapter/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Landroidx/recyclerview/widget/DiffUtil;->b(Landroidx/recyclerview/widget/DiffUtil$a;)Landroidx/recyclerview/widget/DiffUtil$d;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "calculateDiff(...)"

    .line 61
    .line 62
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/DiffUtil$d;->c(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v1, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 72
    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget v1, Lcom/transsion/videodetail/R$string;->music_videos:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, " "

    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lxv/e;

    .line 117
    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    iget-object v0, v0, Lxv/e;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->E0()V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->c:Lgn/e;

    .line 131
    .line 132
    invoke-direct {p0, p1}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->I0(Lgn/e;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->showEmpty()V

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 140
    .line 141
    if-eqz p0, :cond_5

    .line 142
    .line 143
    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 148
    .line 149
    return-object p0
.end method

.method private final I0(Lgn/e;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_3

    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Iterable;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    add-int/lit8 v2, v0, 0x1

    .line 31
    .line 32
    if-gez v0, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 35
    .line 36
    .line 37
    :cond_0
    check-cast v1, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->getState()Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    sget-object v4, Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;->PLAYING:Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;

    .line 44
    .line 45
    if-ne v3, v4, :cond_1

    .line 46
    .line 47
    sget-object v3, Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;->NONE:Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->setState(Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    invoke-virtual {v3, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    move v0, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-void

    .line 62
    :cond_3
    iget-object v1, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 63
    .line 64
    if-eqz v1, :cond_a

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_a

    .line 71
    .line 72
    check-cast v1, Ljava/lang/Iterable;

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_a

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    add-int/lit8 v3, v0, 0x1

    .line 89
    .line 90
    if-gez v0, :cond_4

    .line 91
    .line 92
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 93
    .line 94
    .line 95
    :cond_4
    check-cast v2, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->getState()Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    sget-object v5, Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;->PLAYING:Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;

    .line 102
    .line 103
    if-ne v4, v5, :cond_5

    .line 104
    .line 105
    sget-object v4, Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;->NONE:Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;

    .line 106
    .line 107
    invoke-virtual {v2, v4}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->setState(Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;)V

    .line 108
    .line 109
    .line 110
    iget-object v4, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 111
    .line 112
    if-eqz v4, :cond_5

    .line 113
    .line 114
    invoke-virtual {v4, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    invoke-virtual {v2}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->getMusicLikedDbBean()Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    const/4 v6, 0x0

    .line 122
    if-eqz v4, :cond_6

    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    goto :goto_2

    .line 129
    :cond_6
    move-object v4, v6

    .line 130
    :goto_2
    invoke-virtual {p1}, Lgn/e;->h()Lcom/transsion/player/mediasession/MediaItem;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    if-eqz v7, :cond_7

    .line 135
    .line 136
    invoke-virtual {v7}, Lcom/transsion/player/mediasession/MediaItem;->getSubjectId()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    :cond_7
    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_9

    .line 145
    .line 146
    invoke-virtual {v2, v5}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->setState(Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;)V

    .line 147
    .line 148
    .line 149
    iget-object v4, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 150
    .line 151
    if-eqz v4, :cond_8

    .line 152
    .line 153
    invoke-virtual {v4, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Lxv/e;

    .line 161
    .line 162
    if-eqz v2, :cond_9

    .line 163
    .line 164
    iget-object v2, v2, Lxv/e;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    .line 166
    if-eqz v2, :cond_9

    .line 167
    .line 168
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    if-eqz v2, :cond_9

    .line 173
    .line 174
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$m;->scrollToPosition(I)V

    .line 175
    .line 176
    .line 177
    :cond_9
    move v0, v3

    .line 178
    goto :goto_1

    .line 179
    :cond_a
    return-void
.end method

.method private final J0(Lgn/e;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lgn/e;->h()Lcom/transsion/player/mediasession/MediaItem;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/transsion/player/mediasession/MediaItem;->getSubjectId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->c:Lgn/e;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2}, Lgn/e;->h()Lcom/transsion/player/mediasession/MediaItem;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/transsion/player/mediasession/MediaItem;->getSubjectId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->c:Lgn/e;

    .line 38
    .line 39
    sget-object v0, Lyv/a;->a:Lyv/a;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getClassTag()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " --> refreshStateView() --> \u97f3\u4e50\u5207\u6362\u4e86"

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lyv/a;->a(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->H0(Lgn/e;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->I0(Lgn/e;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private final L0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxv/e;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lxv/e;->e:Lcom/transsion/videodetail/music/widget/MusicLikedListLoadingView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lxv/e;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, v0, Lxv/e;->b:Lcom/transsion/videodetail/music/widget/MusicLikedListEmptyView;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lxv/e;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, v0, Lxv/e;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->x0()Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v3, Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;->MUSIC_DETAIL:Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;

    .line 54
    .line 55
    if-ne v0, v3, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lxv/e;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-object v0, v0, Lxv/e;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lxv/e;

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    iget-object v0, v0, Lxv/e;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lxv/e;

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    iget-object v0, v0, Lxv/e;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lxv/e;

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    iget-object v0, v0, Lxv/e;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    :cond_6
    :goto_0
    return-void
.end method

.method public static synthetic k0(Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->C0(Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->B0(Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->z0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->D0(Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final showLoading()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxv/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lxv/e;->e:Lcom/transsion/videodetail/music/widget/MusicLikedListLoadingView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lxv/e;

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, v0, Lxv/e;->b:Lcom/transsion/videodetail/music/widget/MusicLikedListEmptyView;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

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
    check-cast v0, Lxv/e;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, v0, Lxv/e;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lxv/e;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v0, v0, Lxv/e;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lxv/e;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget-object v0, v0, Lxv/e;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void
.end method

.method private static final z0(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public abstract E0()V
.end method

.method public abstract F0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
.end method

.method public abstract G0(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract H0(Lgn/e;)V
.end method

.method public final K0(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const-string p2, "item"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p2, "play_all"

    .line 17
    .line 18
    :goto_0
    const-string v1, "action"

    .line 19
    .line 20
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    sget-object p2, Lqi/h;->a:Lqi/h;

    .line 24
    .line 25
    invoke-virtual {p2, p1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public canNonSubscriberPlay(ZIILqn/d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/e$a;->a(Lcom/transsion/player/orplayer/e;ZIILqn/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract getPageName()Ljava/lang/String;
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
    invoke-virtual {p0, p1}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->y0(Landroid/view/LayoutInflater;)Lxv/e;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment$a;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment$a;-><init>(Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lxv/e;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, v0, Lxv/e;->b:Lcom/transsion/videodetail/music/widget/MusicLikedListEmptyView;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    new-instance v1, Lcom/transsion/videodetail/music/ui/d;

    .line 40
    .line 41
    invoke-direct {v1}, Lcom/transsion/videodetail/music/ui/d;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public initPlayer()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->b(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public initViewData()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->A0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public initViewModel()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->u0()Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->C()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/transsion/videodetail/music/ui/c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/videodetail/music/ui/c;-><init>(Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment$c;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public loadDefaultData()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->loadDefaultData()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->showLoading()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->getPageName()Ljava/lang/String;

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

.method public final o0()Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    add-int/lit8 v4, v2, 0x1

    .line 30
    .line 31
    if-gez v2, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 34
    .line 35
    .line 36
    :cond_0
    check-cast v3, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->c:Lgn/e;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2}, Lgn/e;->h()Lcom/transsion/player/mediasession/MediaItem;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/transsion/player/mediasession/MediaItem;->getSubjectId()Ljava/lang/String;

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
    invoke-virtual {v3}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->getMusicLikedDbBean()Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    invoke-virtual {v5}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move-object v5, v1

    .line 66
    :goto_2
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    return-object v3

    .line 73
    :cond_3
    move v2, v4

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    return-object v1
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->c(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onBufferedPosition(JLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->d(Lcom/transsion/player/orplayer/e;JLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCompletion(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->e(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "networkCapabilities"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->u0()Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "onConnected()"

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->y(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lyv/a;->a:Lyv/a;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getClassTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " --> onCreate() --> \u97f3\u4e50\u6536\u85cf\u5217\u8868"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Lyv/a;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, p0}, Lcom/transsion/baseui/music/MusicFloatManager;->k(Lcom/transsion/player/orplayer/e;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/baseui/music/MusicFloatManager;->h:Lcom/transsion/baseui/music/MusicFloatManager$a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/baseui/music/MusicFloatManager$a;->b()Lcom/transsion/baseui/music/MusicFloatManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Lcom/transsion/baseui/music/MusicFloatManager;->z(Lcom/transsion/player/orplayer/e;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDisconnected()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->u0()Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "onDisconnected()"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->y(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->g(Lcom/transsion/player/orplayer/e;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->h(Lcom/transsion/player/orplayer/e;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoadingBegin(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->i(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoadingEnd(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->k(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoadingProgress(IFLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->m(Lcom/transsion/player/orplayer/e;IFLgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLoopingStart()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->o(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->p(Lcom/transsion/player/orplayer/e;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/e$a;->q(Lcom/transsion/player/orplayer/e;Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayerRelease(Lgn/e;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->t(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lyv/a;->a:Lyv/a;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getClassTag()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " --> onPlayerRelease()"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Lyv/a;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->J0(Lgn/e;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onPlayerReset()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->v(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPrepare(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->w(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onProgress(JLgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e$a;->y(Lcom/transsion/player/orplayer/e;JLgn/e;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p3}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->J0(Lgn/e;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->A(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->B(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->C(Lcom/transsion/player/orplayer/e;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksChange(Lqn/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->D(Lcom/transsion/player/orplayer/e;Lqn/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->E(Lcom/transsion/player/orplayer/e;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onVideoPause(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->F(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->J0(Lgn/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/e$a;->H(Lcom/transsion/player/orplayer/e;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onVideoStart(Lgn/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/e$a;->I(Lcom/transsion/player/orplayer/e;Lgn/e;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->J0(Lgn/e;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final p0()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    add-int/lit8 v3, v1, 0x1

    .line 29
    .line 30
    if-gez v1, :cond_0

    .line 31
    .line 32
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 33
    .line 34
    .line 35
    :cond_0
    check-cast v2, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->c:Lgn/e;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4}, Lgn/e;->h()Lcom/transsion/player/mediasession/MediaItem;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/transsion/player/mediasession/MediaItem;->getSubjectId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object v4, v5

    .line 54
    :goto_1
    invoke-virtual {v2}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->getMusicLikedDbBean()Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    :cond_2
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    return v1

    .line 71
    :cond_3
    move v1, v3

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    const/4 v0, -0x1

    .line 74
    return v0
.end method

.method public final q0(Ljava/lang/String;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    add-int/lit8 v4, v2, 0x1

    .line 30
    .line 31
    if-gez v2, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 34
    .line 35
    .line 36
    :cond_0
    check-cast v3, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->getMusicLikedDbBean()Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v3, 0x0

    .line 50
    :goto_1
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    move v1, v2

    .line 57
    :cond_2
    move v2, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return v1
.end method

.method public final r0()Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

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
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v1, v0

    .line 36
    check-cast v1, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    .line 37
    .line 38
    :cond_1
    return-object v1
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method protected final s0()Lgn/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->c:Lgn/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/orplayer/e$a;->K(Lcom/transsion/player/orplayer/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showEmpty()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxv/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lxv/e;->b:Lcom/transsion/videodetail/music/widget/MusicLikedListEmptyView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lxv/e;

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, v0, Lxv/e;->e:Lcom/transsion/videodetail/music/widget/MusicLikedListLoadingView;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

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
    check-cast v0, Lxv/e;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, v0, Lxv/e;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lxv/e;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v0, v0, Lxv/e;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lxv/e;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget-object v0, v0, Lxv/e;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void
.end method

.method protected final t0()Lcom/transsion/videodetail/music/adapter/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final u0()Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final v0()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->p0()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v2, v3

    .line 49
    :goto_0
    if-lt v0, v2, :cond_4

    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->getMusicLikedDbBean()Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_3
    return-object v1

    .line 80
    :cond_4
    iget-object v2, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    .line 95
    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->getMusicLikedDbBean()Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    goto :goto_1

    .line 109
    :cond_5
    move-object v0, v1

    .line 110
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    goto :goto_3

    .line 115
    :goto_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 116
    .line 117
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-nez v2, :cond_6

    .line 130
    .line 131
    move-object v1, v0

    .line 132
    goto :goto_4

    .line 133
    :cond_6
    sget-object v0, Lyv/a;->a:Lyv/a;

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getClassTag()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v3, " --> getNext() --> it = "

    .line 148
    .line 149
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v0, v2}, Lyv/a;->b(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_4
    check-cast v1, Ljava/lang/String;

    .line 163
    .line 164
    return-object v1
.end method

.method public final w0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->q0(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-gez p1, :cond_1

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v0, v2

    .line 49
    :goto_0
    if-lt p1, v0, :cond_4

    .line 50
    .line 51
    iget-object p1, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->getMusicLikedDbBean()Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_3
    return-object v1

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;->a:Lcom/transsion/videodetail/music/adapter/a;

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    .line 95
    .line 96
    if-eqz p1, :cond_5

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;->getMusicLikedDbBean()Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    goto :goto_1

    .line 109
    :cond_5
    move-object p1, v1

    .line 110
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    goto :goto_3

    .line 115
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 116
    .line 117
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-nez v0, :cond_6

    .line 130
    .line 131
    move-object v1, p1

    .line 132
    goto :goto_4

    .line 133
    :cond_6
    sget-object p1, Lyv/a;->a:Lyv/a;

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getClassTag()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v2, " --> getNext() --> it = "

    .line 148
    .line 149
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Lyv/a;->b(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_4
    check-cast v1, Ljava/lang/String;

    .line 163
    .line 164
    return-object v1
.end method

.method public abstract x0()Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;
.end method

.method public y0(Landroid/view/LayoutInflater;)Lxv/e;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lxv/e;->c(Landroid/view/LayoutInflater;)Lxv/e;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "inflate(...)"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method
