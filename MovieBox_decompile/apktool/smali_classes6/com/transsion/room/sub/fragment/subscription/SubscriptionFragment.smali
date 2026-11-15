.class public final Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;
.source "source.java"

# interfaces
.implements Lcom/transsion/room/sub/adapter/subscription/a;
.implements Lqx/b;
.implements Lcom/transsion/baselib/report/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$a;,
        Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "Lfp/t;",
        ">;",
        "Lcom/transsion/room/sub/adapter/subscription/a;",
        "Lqx/b;",
        "Lcom/transsion/baselib/report/g;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ca\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 \u009d\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0003=\u009e\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0007J\u000f\u0010\r\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0007J\u000f\u0010\u000e\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0007J\u000f\u0010\u000f\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0007J\u000f\u0010\u0010\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0007J\u000f\u0010\u0011\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0007J\u001d\u0010\u0015\u001a\u00020\u000b2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\u000b2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0016J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008 \u0010\u0007J\u0019\u0010#\u001a\u00020\u000b2\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J!\u0010(\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010\u00182\u0006\u0010\'\u001a\u00020&H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008*\u0010\u0007J\u000f\u0010+\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008+\u0010\u0007J\u0017\u0010.\u001a\u00020\u00022\u0006\u0010-\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020!H\u0016\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00082\u0010\u0007J\u000f\u00103\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00083\u0010\u0007J\u000f\u00104\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00084\u0010\u0007J\u000f\u00105\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00085\u0010\u0007J\u000f\u00106\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00086\u0010\u0007J\u001f\u00109\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\u00082\u0006\u00108\u001a\u00020!H\u0016\u00a2\u0006\u0004\u00089\u0010:J\u0019\u0010;\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u0017\u0010=\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008=\u0010<J#\u0010?\u001a\u00020\u000b2\u0008\u00108\u001a\u0004\u0018\u00010!2\u0008\u0010>\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008?\u0010@J\u0019\u0010A\u001a\u00020\u000b2\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008A\u0010$J\u0019\u0010B\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008B\u0010<J\u0017\u0010E\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020CH\u0016\u00a2\u0006\u0004\u0008E\u0010FJ\u000f\u0010G\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008G\u0010\u0007J\u0017\u0010H\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020CH\u0016\u00a2\u0006\u0004\u0008H\u0010FJ\u000f\u0010I\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008I\u0010\u0007J\u0017\u0010K\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\u000f\u0010M\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008M\u0010\u0007J\u000f\u0010N\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008N\u0010\u0007J\u000f\u0010P\u001a\u00020OH\u0016\u00a2\u0006\u0004\u0008P\u0010QJ\u000f\u0010R\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008R\u0010\u0007J\u000f\u0010S\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008S\u0010\u0007R\u0018\u0010U\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010TR\u0018\u0010V\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010TR\u0018\u0010Y\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0018\u0010[\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010XR\u0018\u0010]\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010XR\u0016\u0010a\u001a\u00020^8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010`R\u0016\u0010d\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0016\u0010f\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010cR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0018\u0010l\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010iR\u0018\u0010o\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010nR\u0018\u0010r\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0016\u0010t\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010cR\u0016\u0010v\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010cR\u0016\u0010z\u001a\u00020w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0018\u0010~\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u001c\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u001c\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u001b\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008;\u0010\u008c\u0001R\u001c\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001R#\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0092\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0093\u0001\u0010\u0094\u0001\u001a\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u0017\u0010\u0098\u0001\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010cR\u0018\u0010\u009a\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0099\u0001\u0010TR\u0018\u0010\u009c\u0001\u001a\u00020^8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009b\u0001\u0010`\u00a8\u0006\u009f\u0001"
    }
    d2 = {
        "Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "Lfp/t;",
        "Lcom/transsion/room/sub/adapter/subscription/a;",
        "Lqx/b;",
        "Lcom/transsion/baselib/report/g;",
        "<init>",
        "()V",
        "",
        "S0",
        "()Z",
        "",
        "K0",
        "E0",
        "Q0",
        "V0",
        "L0",
        "T0",
        "",
        "Lcom/transsion/room/sub/bean/subscription/ItemTrending;",
        "feedItems",
        "a1",
        "(Ljava/util/List;)V",
        "",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "Z0",
        "Lcom/transsion/room/sub/adapter/subscription/k;",
        "N0",
        "()Lcom/transsion/room/sub/adapter/subscription/k;",
        "Lcom/transsion/room/sub/adapter/subscription/c;",
        "F0",
        "()Lcom/transsion/room/sub/adapter/subscription/c;",
        "I0",
        "",
        "userId",
        "z0",
        "(Ljava/lang/String;)V",
        "item",
        "",
        "bottomFragmentIndex",
        "C0",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V",
        "Y0",
        "y0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "B0",
        "(Landroid/view/LayoutInflater;)Lfp/t;",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "loadDefaultData",
        "initViewData",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "isLike",
        "ugcVideoId",
        "w",
        "(ZLjava/lang/String;)V",
        "t",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V",
        "a",
        "title",
        "I",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "b",
        "E",
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "user",
        "onLogin",
        "(Lcom/transsnet/loginapi/bean/UserInfo;)V",
        "onLogout",
        "onUpdateUserInfo",
        "onPause",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "onResume",
        "onDestroy",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "logResume",
        "logPause",
        "Ljava/lang/String;",
        "cursorFeed",
        "pageNext",
        "c",
        "Ljava/lang/Boolean;",
        "isFirstFeedDataRequest",
        "d",
        "hasMoreFeedData",
        "e",
        "hasMoreUgcHomeData",
        "",
        "f",
        "J",
        "firstLoadStartTimeMillis",
        "g",
        "Z",
        "hasFollowings",
        "h",
        "isLoginRefresh",
        "Lbj/b;",
        "i",
        "Lbj/b;",
        "mExposureHelper",
        "j",
        "mExposureRecommendHelper",
        "k",
        "Lcom/transsion/room/sub/adapter/subscription/c;",
        "sFeedAdapter",
        "l",
        "Lcom/transsion/room/sub/adapter/subscription/k;",
        "sFeedTrendingAdapter",
        "m",
        "isLoading",
        "n",
        "isUgcTrendingHomeLoading",
        "Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;",
        "o",
        "Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;",
        "mCurrentTab",
        "Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;",
        "p",
        "Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;",
        "viewModel",
        "Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;",
        "q",
        "Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;",
        "feedListViewModel",
        "Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;",
        "r",
        "Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;",
        "ugcLikesViewModel",
        "Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;",
        "s",
        "Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;",
        "ugcHomeViewModel",
        "Lcom/transsion/room/sub/viewmodel/subscription/a;",
        "Lcom/transsion/room/sub/viewmodel/subscription/a;",
        "subUnsubViewModel",
        "Lcom/transsion/share/share/ShareDialogFragment;",
        "u",
        "Lcom/transsion/share/share/ShareDialogFragment;",
        "shareDialog",
        "Lqx/a;",
        "v",
        "Lkotlin/Lazy;",
        "getLoginApi",
        "()Lqx/a;",
        "loginApi",
        "isSelf",
        "x",
        "pageFrom",
        "y",
        "resumeTimeStamp",
        "z",
        "TabType",
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


# static fields
.field public static final z:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Lbj/b;

.field private j:Lbj/b;

.field private k:Lcom/transsion/room/sub/adapter/subscription/c;

.field private l:Lcom/transsion/room/sub/adapter/subscription/k;

.field private m:Z

.field private n:Z

.field private o:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;

.field private p:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;

.field private q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

.field private r:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

.field private s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

.field private t:Lcom/transsion/room/sub/viewmodel/subscription/a;

.field private u:Lcom/transsion/share/share/ShareDialogFragment;

.field private final v:Lkotlin/Lazy;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->z:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->c:Ljava/lang/Boolean;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->d:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->e:Ljava/lang/Boolean;

    .line 11
    .line 12
    sget-object v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;->HOTTEST:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->o:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;

    .line 15
    .line 16
    new-instance v0, Lmp/a;

    .line 17
    .line 18
    invoke-direct {v0}, Lmp/a;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->v:Lkotlin/Lazy;

    .line 26
    .line 27
    const-string v0, ""

    .line 28
    .line 29
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->x:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method private static final A0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 5
    .line 6
    invoke-virtual {v1}, Lyg/l;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showNoNetworkView(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->getFollowingCount()Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_0
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "followingCount \uff1a"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v5, 0x4

    .line 43
    const/4 v6, 0x0

    .line 44
    const-string v2, "SubscriptionFragment"

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    move-object v1, v7

    .line 48
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    if-eqz p1, :cond_7

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-lez p1, :cond_3

    .line 58
    .line 59
    const/4 v5, 0x4

    .line 60
    const/4 v6, 0x0

    .line 61
    const-string v2, "SubscriptionFragment"

    .line 62
    .line 63
    const-string v3, "\u6709\u8ba2\u9605\uff0c\u8d70\u8ba2\u9605\u63a5\u53e3"

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    move-object v1, v7

    .line 67
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->g:Z

    .line 72
    .line 73
    iget-boolean p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->h:Z

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    .line 78
    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;->i()V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    .line 87
    iput-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->c:Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->T0()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lfp/t;

    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    iget-object p1, p1, Lfp/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    .line 102
    if-eqz p1, :cond_6

    .line 103
    .line 104
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    const/4 v5, 0x4

    .line 111
    const/4 v6, 0x0

    .line 112
    const-string v2, "SubscriptionFragment"

    .line 113
    .line 114
    const-string v3, "\u65e0\u8ba2\u9605\uff0c\u8d70\u63a8\u8350\u63a5\u53e3"

    .line 115
    .line 116
    const/4 v4, 0x0

    .line 117
    move-object v1, v7

    .line 118
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iput-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->g:Z

    .line 122
    .line 123
    iget-boolean p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->h:Z

    .line 124
    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    .line 128
    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;->i()V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->V0()V

    .line 136
    .line 137
    .line 138
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Lfp/t;

    .line 143
    .line 144
    if-eqz p1, :cond_6

    .line 145
    .line 146
    iget-object p1, p1, Lfp/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 147
    .line 148
    if-eqz p1, :cond_6

    .line 149
    .line 150
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 151
    .line 152
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 153
    .line 154
    .line 155
    :cond_6
    :goto_2
    iput-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->h:Z

    .line 156
    .line 157
    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 158
    .line 159
    return-object p0
.end method

.method private final C0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lmp/j;

    .line 4
    .line 5
    invoke-direct {v0, p2}, Lmp/j;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lhu/b;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static final D0(ILcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    const-string v0, "navigator"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ugc_bottom_fragment_selected"

    .line 7
    .line 8
    invoke-virtual {p1, v0, p0}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private final E0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->i:Lbj/b;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lbj/b;

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$b;

    .line 8
    .line 9
    invoke-direct {v3, p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$b;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x0

    .line 14
    const v2, 0x3f19999a    # 0.6f

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v1, v0

    .line 19
    invoke-direct/range {v1 .. v6}, Lbj/b;-><init>(FLbj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lfp/t;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, v1, Lfp/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->i:Lbj/b;

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method private final F0()Lcom/transsion/room/sub/adapter/subscription/c;
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "SubscriptionFragment"

    .line 6
    .line 7
    const-string v2, "initFeedAdapter"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/transsion/room/sub/adapter/subscription/c;

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->i:Lbj/b;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/room/sub/adapter/subscription/c;-><init>(Ljava/util/List;Lbj/b;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v1, v2}, Lt6/f;->z(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v2}, Lt6/f;->y(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x2

    .line 45
    invoke-virtual {v1, v2}, Lt6/f;->E(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Lcom/transsion/room/sub/view/SubscriptionLoadMoreView;

    .line 53
    .line 54
    invoke-direct {v2}, Lcom/transsion/room/sub/view/SubscriptionLoadMoreView;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lt6/f;->C(Ls6/a;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-instance v2, Lmp/i;

    .line 65
    .line 66
    invoke-direct {v2, p0}, Lmp/i;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lt6/f;->D(Lr6/f;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Lcom/transsion/room/sub/adapter/subscription/c;->Q1(Lcom/transsion/room/sub/adapter/subscription/a;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 78
    .line 79
    return-object v0
.end method

.method private static final G0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 7

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "SubscriptionFragment"

    .line 6
    .line 7
    const-string v2, "initSubscriptionListAdapter: trigger"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, v6

    .line 11
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 15
    .line 16
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v1, "SubscriptionFragment"

    .line 25
    .line 26
    const-string v2, "initSubscriptionListAdapter: trigger load more"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    move-object v0, v6

    .line 30
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->a:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "sub observe cursorFeed : "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;->h(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v4, 0x4

    .line 59
    const/4 v5, 0x0

    .line 60
    const-string v1, "SubscriptionFragment"

    .line 61
    .line 62
    const-string v2, "initSubscriptionListAdapter: no network, load more failed"

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    move-object v0, v6

    .line 66
    invoke-static/range {v0 .. v5}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lfp/t;

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    iget-object v0, v0, Lfp/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    new-instance v1, Lmp/b;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lmp/b;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 84
    .line 85
    .line 86
    const-wide/16 v2, 0x12c

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    .line 90
    .line 91
    :cond_1
    :goto_0
    return-void
.end method

.method private static final H0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lt6/f;->v()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private final I0()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "Subscription"

    .line 6
    .line 7
    const-string v2, "initFeedListRecyclerView"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lfp/t;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, Lfp/t;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lmp/e;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Lmp/e;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->E0()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->K0()V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->i:Lbj/b;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1}, Lbj/b;->f()V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->j:Lbj/b;

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1}, Lbj/b;->f()V

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lfp/t;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    iget-object v1, v1, Lfp/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->F0()Lcom/transsion/room/sub/adapter/subscription/c;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 93
    .line 94
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->N0()Lcom/transsion/room/sub/adapter/subscription/k;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 99
    .line 100
    return-void
.end method

.method private static final J0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 7

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "SubscriptionFragment"

    .line 6
    .line 7
    const-string v2, "initRecyclerView: user pull to refresh"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, v6

    .line 11
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->g:Z

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    const/4 v4, 0x4

    .line 20
    const/4 v5, 0x0

    .line 21
    const-string v1, "SubscriptionFragment"

    .line 22
    .line 23
    const-string v2, "initRecyclerView: user pull to refresh \u5173\u6ce8"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    move-object v0, v6

    .line 27
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;->i()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v4, 0x4

    .line 39
    const/4 v5, 0x0

    .line 40
    const-string v1, "SubscriptionFragment"

    .line 41
    .line 42
    const-string v2, "initRecyclerView: user pull to refresh \u6ca1\u6709\u5173\u6ce8"

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    move-object v0, v6

    .line 46
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->Y0()V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method private final K0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->j:Lbj/b;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lbj/b;

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$c;

    .line 8
    .line 9
    invoke-direct {v3, p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$c;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    const/4 v6, 0x0

    .line 14
    const v2, 0x3f19999a    # 0.6f

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v1, v0

    .line 19
    invoke-direct/range {v1 .. v6}, Lbj/b;-><init>(FLbj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lfp/t;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, v1, Lfp/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->j:Lbj/b;

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method private final L0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;->e()Landroidx/lifecycle/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lmp/f;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lmp/f;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$e;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private static final M0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;)Lkotlin/Unit;
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->y0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showContentView()V

    .line 5
    .line 6
    .line 7
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "SubscriptionFragment"

    .line 12
    .line 13
    const-string v2, "sub observe start"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v0, v6

    .line 17
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getHasMore()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v0, v7

    .line 33
    :goto_0
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->d:Ljava/lang/Boolean;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getNextCursor()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object v0, v7

    .line 43
    :goto_1
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->a:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;->g()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    move-object v8, v0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move-object v8, v7

    .line 60
    :goto_2
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->d:Ljava/lang/Boolean;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v9, "hasMoreFeedData "

    .line 68
    .line 69
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const/4 v4, 0x4

    .line 80
    const/4 v5, 0x0

    .line 81
    const-string v1, "SubscriptionFragment"

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    move-object v0, v6

    .line 85
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 89
    .line 90
    const/4 v10, 0x1

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {v0}, Lt6/f;->r()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-ne v0, v10, :cond_3

    .line 104
    .line 105
    const/4 v4, 0x4

    .line 106
    const/4 v5, 0x0

    .line 107
    const-string v1, "SubscriptionFragment"

    .line 108
    .line 109
    const-string v2, "sub observe loadMoreComplete"

    .line 110
    .line 111
    const/4 v3, 0x0

    .line 112
    move-object v0, v6

    .line 113
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 117
    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    invoke-virtual {v0}, Lt6/f;->s()V

    .line 127
    .line 128
    .line 129
    :cond_3
    if-eqz p1, :cond_4

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getFeedItems()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    move-object v0, v7

    .line 137
    :goto_3
    const/4 v11, 0x0

    .line 138
    if-eqz v0, :cond_b

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getFeedItems()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    move-object v12, v0

    .line 155
    goto :goto_4

    .line 156
    :cond_5
    move-object v12, v7

    .line 157
    :goto_4
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 158
    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_6

    .line 166
    .line 167
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    goto :goto_5

    .line 176
    :cond_6
    move-object v0, v7

    .line 177
    :goto_5
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getHasMore()Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v3, "subscriptionFeedBean: received "

    .line 187
    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v3, " items, currentListSize="

    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v0, ", hasMore="

    .line 203
    .line 204
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    const/4 v4, 0x4

    .line 215
    const/4 v5, 0x0

    .line 216
    const-string v1, "SubscriptionFragment"

    .line 217
    .line 218
    const/4 v3, 0x0

    .line 219
    move-object v0, v6

    .line 220
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 224
    .line 225
    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_7

    .line 230
    .line 231
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->d:Ljava/lang/Boolean;

    .line 232
    .line 233
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_7

    .line 238
    .line 239
    const/4 v4, 0x4

    .line 240
    const/4 v5, 0x0

    .line 241
    const-string v1, "SubscriptionFragment"

    .line 242
    .line 243
    const-string v2, "subscriptionFeedBean: no more data, load more end"

    .line 244
    .line 245
    const/4 v3, 0x0

    .line 246
    move-object v0, v6

    .line 247
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    const-string v1, "SubscriptionFragment"

    .line 251
    .line 252
    const-string v2, "sub observe loadMoreEnd"

    .line 253
    .line 254
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 258
    .line 259
    if-eqz v0, :cond_7

    .line 260
    .line 261
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    if-eqz v0, :cond_7

    .line 266
    .line 267
    invoke-static {v0, v11, v10, v7}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    :cond_7
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 271
    .line 272
    if-eqz v0, :cond_9

    .line 273
    .line 274
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    if-eqz v0, :cond_9

    .line 279
    .line 280
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-ne v0, v10, :cond_9

    .line 285
    .line 286
    if-nez v12, :cond_8

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_8
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-nez v0, :cond_9

    .line 294
    .line 295
    const/4 v4, 0x4

    .line 296
    const/4 v5, 0x0

    .line 297
    const-string v1, "SubscriptionFragment"

    .line 298
    .line 299
    const-string v2, "subscriptionFeedBean: empty data"

    .line 300
    .line 301
    const/4 v3, 0x0

    .line 302
    move-object v0, v6

    .line 303
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_9
    :goto_6
    if-eqz v12, :cond_b

    .line 308
    .line 309
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-lez v0, :cond_b

    .line 314
    .line 315
    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_a

    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Lfp/t;

    .line 326
    .line 327
    if-eqz v0, :cond_a

    .line 328
    .line 329
    iget-object v0, v0, Lfp/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 330
    .line 331
    if-eqz v0, :cond_a

    .line 332
    .line 333
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 334
    .line 335
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 336
    .line 337
    .line 338
    :cond_a
    const/4 v4, 0x4

    .line 339
    const/4 v5, 0x0

    .line 340
    const-string v1, "SubscriptionFragment"

    .line 341
    .line 342
    const-string v2, "sub observe updateData"

    .line 343
    .line 344
    const/4 v3, 0x0

    .line 345
    move-object v0, v6

    .line 346
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getFeedItems()Ljava/util/List;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-direct {p0, v0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->Z0(Ljava/util/List;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    if-eqz v0, :cond_b

    .line 361
    .line 362
    invoke-virtual {v0, v10}, Lqi/b;->k(Z)V

    .line 363
    .line 364
    .line 365
    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 366
    .line 367
    if-eqz v0, :cond_c

    .line 368
    .line 369
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    if-eqz v0, :cond_c

    .line 374
    .line 375
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-nez v0, :cond_c

    .line 380
    .line 381
    goto :goto_8

    .line 382
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 383
    .line 384
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-eqz v0, :cond_12

    .line 389
    .line 390
    :goto_8
    if-eqz p1, :cond_d

    .line 391
    .line 392
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getFeedItems()Ljava/util/List;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    :cond_d
    if-eqz v7, :cond_e

    .line 397
    .line 398
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getFeedItems()Ljava/util/List;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    if-eqz p1, :cond_11

    .line 403
    .line 404
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    if-nez p1, :cond_11

    .line 409
    .line 410
    :cond_e
    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->d:Ljava/lang/Boolean;

    .line 411
    .line 412
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 413
    .line 414
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result p1

    .line 418
    if-eqz p1, :cond_11

    .line 419
    .line 420
    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->c:Ljava/lang/Boolean;

    .line 421
    .line 422
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 423
    .line 424
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    if-eqz p1, :cond_f

    .line 429
    .line 430
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result p1

    .line 434
    if-nez p1, :cond_f

    .line 435
    .line 436
    const/4 v4, 0x4

    .line 437
    const/4 v5, 0x0

    .line 438
    const-string v1, "SubscriptionFragment"

    .line 439
    .line 440
    const-string v2, "sub observe loadUgcTrendingHomeData"

    .line 441
    .line 442
    const/4 v3, 0x0

    .line 443
    move-object v0, v6

    .line 444
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    const-string v1, "SubscriptionFragment"

    .line 448
    .line 449
    const-string v2, "\u53d1\u9001\u63a8\u8350\u63a5\u53e3\u7684\u8bf7\u6c42"

    .line 450
    .line 451
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    iput-boolean v11, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->g:Z

    .line 455
    .line 456
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->V0()V

    .line 457
    .line 458
    .line 459
    iput-object v7, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->c:Ljava/lang/Boolean;

    .line 460
    .line 461
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    check-cast p1, Lfp/t;

    .line 466
    .line 467
    if-eqz p1, :cond_15

    .line 468
    .line 469
    iget-object p1, p1, Lfp/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 470
    .line 471
    if-eqz p1, :cond_15

    .line 472
    .line 473
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 474
    .line 475
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_a

    .line 479
    .line 480
    :cond_f
    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->c:Ljava/lang/Boolean;

    .line 481
    .line 482
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result p1

    .line 486
    if-eqz p1, :cond_15

    .line 487
    .line 488
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result p1

    .line 492
    if-eqz p1, :cond_15

    .line 493
    .line 494
    const/4 v4, 0x4

    .line 495
    const/4 v5, 0x0

    .line 496
    const-string v1, "SubscriptionFragment"

    .line 497
    .line 498
    const-string v2, "sub observe UgcTrending refresh"

    .line 499
    .line 500
    const/4 v3, 0x0

    .line 501
    move-object v0, v6

    .line 502
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    iput-boolean v11, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->g:Z

    .line 506
    .line 507
    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    .line 508
    .line 509
    if-eqz p1, :cond_10

    .line 510
    .line 511
    invoke-virtual {p1}, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;->i()V

    .line 512
    .line 513
    .line 514
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    check-cast p1, Lfp/t;

    .line 519
    .line 520
    if-eqz p1, :cond_15

    .line 521
    .line 522
    iget-object p1, p1, Lfp/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 523
    .line 524
    if-eqz p1, :cond_15

    .line 525
    .line 526
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 527
    .line 528
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 529
    .line 530
    .line 531
    goto :goto_a

    .line 532
    :cond_11
    const/4 v4, 0x4

    .line 533
    const/4 v5, 0x0

    .line 534
    const-string v1, "SubscriptionFragment"

    .line 535
    .line 536
    const-string v2, "\u8ba2\u9605\u8bf7\u6c42\u6709\u6570\u636e\uff0c\u4e0d\u53d1\u9001\u63a8\u8350\u63a5\u53e3\u7684\u8bf7\u6c42"

    .line 537
    .line 538
    const/4 v3, 0x0

    .line 539
    move-object v0, v6

    .line 540
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 541
    .line 542
    .line 543
    goto :goto_a

    .line 544
    :cond_12
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->d:Ljava/lang/Boolean;

    .line 545
    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    const/4 v4, 0x4

    .line 562
    const/4 v5, 0x0

    .line 563
    const-string v1, "loadMoreModule"

    .line 564
    .line 565
    const/4 v3, 0x0

    .line 566
    move-object v0, v6

    .line 567
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    if-eqz p1, :cond_13

    .line 571
    .line 572
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getFeedItems()Ljava/util/List;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    goto :goto_9

    .line 577
    :cond_13
    move-object v0, v7

    .line 578
    :goto_9
    if-eqz v0, :cond_15

    .line 579
    .line 580
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;->getFeedItems()Ljava/util/List;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    if-eqz p1, :cond_14

    .line 585
    .line 586
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 587
    .line 588
    .line 589
    move-result p1

    .line 590
    if-nez p1, :cond_14

    .line 591
    .line 592
    goto :goto_a

    .line 593
    :cond_14
    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->d:Ljava/lang/Boolean;

    .line 594
    .line 595
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 596
    .line 597
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result p1

    .line 601
    if-eqz p1, :cond_15

    .line 602
    .line 603
    const/4 v4, 0x4

    .line 604
    const/4 v5, 0x0

    .line 605
    const-string v1, "loadMoreModule"

    .line 606
    .line 607
    const-string v2, "subscriptionFeedBean: no more data, load more end"

    .line 608
    .line 609
    const/4 v3, 0x0

    .line 610
    move-object v0, v6

    .line 611
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 615
    .line 616
    if-eqz p1, :cond_15

    .line 617
    .line 618
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    if-eqz p1, :cond_15

    .line 623
    .line 624
    invoke-static {p1, v11, v10, v7}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 625
    .line 626
    .line 627
    :cond_15
    :goto_a
    iput-boolean v11, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->m:Z

    .line 628
    .line 629
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 630
    .line 631
    .line 632
    move-result-object p0

    .line 633
    check-cast p0, Lfp/t;

    .line 634
    .line 635
    if-eqz p0, :cond_16

    .line 636
    .line 637
    iget-object p0, p0, Lfp/t;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 638
    .line 639
    if-eqz p0, :cond_16

    .line 640
    .line 641
    invoke-virtual {p0, v11}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 642
    .line 643
    .line 644
    :cond_16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 645
    .line 646
    return-object p0
.end method

.method private final N0()Lcom/transsion/room/sub/adapter/subscription/k;
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/room/sub/adapter/subscription/k;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->j:Lbj/b;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/room/sub/adapter/subscription/k;-><init>(Ljava/util/List;Lbj/b;Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v2}, Lt6/f;->z(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v2}, Lt6/f;->y(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-virtual {v1, v2}, Lt6/f;->E(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lcom/transsion/room/sub/view/SubscriptionLoadMoreView;

    .line 42
    .line 43
    invoke-direct {v2}, Lcom/transsion/room/sub/view/SubscriptionLoadMoreView;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lt6/f;->C(Ls6/a;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Lmp/h;

    .line 54
    .line 55
    invoke-direct {v2, p0}, Lmp/h;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lt6/f;->D(Lr6/f;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Lcom/transsion/room/sub/adapter/subscription/k;->Q1(Lcom/transsion/room/sub/adapter/subscription/a;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 67
    .line 68
    return-object v0
.end method

.method private static final O0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 7

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "SubscriptionFragment"

    .line 6
    .line 7
    const-string v2, "initSubscriptionListAdapter: trigger "

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v0, v6

    .line 11
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 15
    .line 16
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v4, 0x4

    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v1, "SubscriptionFragment"

    .line 25
    .line 26
    const-string v2, "initSubscriptionListAdapter: trigger load more"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    move-object v0, v6

    .line 30
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->b:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    .line 48
    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;->h(Ljava/lang/Integer;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v4, 0x4

    .line 56
    const/4 v5, 0x0

    .line 57
    const-string v1, "SubscriptionFragment"

    .line 58
    .line 59
    const-string v2, "initSubscriptionListAdapter: no network, load more failed"

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    move-object v0, v6

    .line 63
    invoke-static/range {v0 .. v5}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lfp/t;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v0, v0, Lfp/t;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    new-instance v1, Lmp/c;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lmp/c;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 81
    .line 82
    .line 83
    const-wide/16 v2, 0x12c

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_1
    return-void
.end method

.method private static final P0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lt6/f;->v()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private final Q0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;->f()Landroidx/lifecycle/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lmp/g;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lmp/g;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$e;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private static final R0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;)Lkotlin/Unit;
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->y0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;->g()Z

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showContentView()V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 15
    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x0

    .line 18
    const-string v2, "SubscriptionFragment"

    .line 19
    .line 20
    const-string v3, "recommend observe loadUgcTrendingHomeData"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    move-object v1, v0

    .line 24
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->getPager()Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/transsion/room/sub/bean/subscription/PagerTrending;->getHasMore()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object v1, v7

    .line 46
    :goto_0
    iput-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->e:Ljava/lang/Boolean;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->getPager()Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/transsion/room/sub/bean/subscription/PagerTrending;->getNextPage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-object v1, v7

    .line 62
    :goto_1
    iput-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->b:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->getItems()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->b:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v3, "pageNext : "

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const/4 v5, 0x4

    .line 95
    const/4 v6, 0x0

    .line 96
    const-string v2, "SubscriptionFragment"

    .line 97
    .line 98
    const/4 v4, 0x0

    .line 99
    move-object v1, v0

    .line 100
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->e:Ljava/lang/Boolean;

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v3, "hasMoreUgcHomeData "

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    const-string v2, "SubscriptionFragment"

    .line 123
    .line 124
    move-object v1, v0

    .line 125
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 129
    .line 130
    const/4 v8, 0x1

    .line 131
    if-eqz v1, :cond_5

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    invoke-virtual {v1}, Lt6/f;->r()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-ne v1, v8, :cond_5

    .line 144
    .line 145
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 146
    .line 147
    if-eqz v1, :cond_4

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-eqz v1, :cond_4

    .line 154
    .line 155
    invoke-virtual {v1}, Lt6/f;->s()V

    .line 156
    .line 157
    .line 158
    :cond_4
    const/4 v5, 0x4

    .line 159
    const/4 v6, 0x0

    .line 160
    const-string v2, "SubscriptionFragment"

    .line 161
    .line 162
    const-string v3, "recommend observe loadMoreComplete"

    .line 163
    .line 164
    const/4 v4, 0x0

    .line 165
    move-object v1, v0

    .line 166
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_5
    if-eqz p1, :cond_6

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->getItems()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    goto :goto_2

    .line 176
    :cond_6
    move-object v1, v7

    .line 177
    :goto_2
    if-eqz v1, :cond_f

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->getItems()Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    if-eqz v1, :cond_7

    .line 184
    .line 185
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    move-object v9, v1

    .line 194
    goto :goto_3

    .line 195
    :cond_7
    move-object v9, v7

    .line 196
    :goto_3
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 197
    .line 198
    if-eqz v1, :cond_8

    .line 199
    .line 200
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    if-eqz v1, :cond_8

    .line 205
    .line 206
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    goto :goto_4

    .line 215
    :cond_8
    move-object v1, v7

    .line 216
    :goto_4
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->getPager()Lcom/transsion/room/sub/bean/subscription/PagerTrending;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/PagerTrending;->getHasMore()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v4, "ugcTrendingHomeData: received "

    .line 230
    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v4, " items, currentListSize="

    .line 238
    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v1, ", hasMore="

    .line 246
    .line 247
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    const/4 v5, 0x4

    .line 258
    const/4 v6, 0x0

    .line 259
    const-string v2, "SubscriptionFragment"

    .line 260
    .line 261
    const/4 v4, 0x0

    .line 262
    move-object v1, v0

    .line 263
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->e:Ljava/lang/Boolean;

    .line 267
    .line 268
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 269
    .line 270
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    const/4 v10, 0x0

    .line 275
    if-nez v1, :cond_a

    .line 276
    .line 277
    const/4 v5, 0x4

    .line 278
    const/4 v6, 0x0

    .line 279
    const-string v2, "SubscriptionFragment"

    .line 280
    .line 281
    const-string v3, "ugcTrendingHomeData: no more data, load more end"

    .line 282
    .line 283
    const/4 v4, 0x0

    .line 284
    move-object v1, v0

    .line 285
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 289
    .line 290
    if-eqz v1, :cond_9

    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    if-eqz v1, :cond_9

    .line 297
    .line 298
    invoke-static {v1, v10, v8, v7}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    :cond_9
    const/4 v5, 0x4

    .line 302
    const/4 v6, 0x0

    .line 303
    const-string v2, "SubscriptionFragment"

    .line 304
    .line 305
    const-string v3, "recommend observe loadMoreEnd"

    .line 306
    .line 307
    const/4 v4, 0x0

    .line 308
    move-object v1, v0

    .line 309
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    :cond_a
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 313
    .line 314
    if-eqz v1, :cond_c

    .line 315
    .line 316
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    if-eqz v1, :cond_c

    .line 321
    .line 322
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-ne v1, v8, :cond_c

    .line 327
    .line 328
    if-nez v9, :cond_b

    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_b
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    if-nez v1, :cond_c

    .line 336
    .line 337
    const/4 v5, 0x4

    .line 338
    const/4 v6, 0x0

    .line 339
    const-string v2, "SubscriptionFragment"

    .line 340
    .line 341
    const-string v3, "subscriptionFeedBean: empty data"

    .line 342
    .line 343
    const/4 v4, 0x0

    .line 344
    move-object v1, v0

    .line 345
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    const-string v2, "SubscriptionFragment"

    .line 349
    .line 350
    const-string v3, "recommend observe setEmptyView"

    .line 351
    .line 352
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    iget-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 356
    .line 357
    if-eqz p1, :cond_e

    .line 358
    .line 359
    invoke-virtual {p0, v10}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getEmptyView(Z)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 364
    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_c
    :goto_5
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 368
    .line 369
    if-eqz v1, :cond_d

    .line 370
    .line 371
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    if-eqz v1, :cond_d

    .line 376
    .line 377
    invoke-virtual {v1}, Lt6/f;->s()V

    .line 378
    .line 379
    .line 380
    :cond_d
    const/4 v5, 0x4

    .line 381
    const/4 v6, 0x0

    .line 382
    const-string v2, "SubscriptionFragment"

    .line 383
    .line 384
    const-string v3, "recommend observe loadMoreComplete"

    .line 385
    .line 386
    const/4 v4, 0x0

    .line 387
    move-object v1, v0

    .line 388
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;->getItems()Ljava/util/List;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    invoke-direct {p0, p1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->a1(Ljava/util/List;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    if-eqz p1, :cond_e

    .line 406
    .line 407
    invoke-virtual {p1, v8}, Lqi/b;->k(Z)V

    .line 408
    .line 409
    .line 410
    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 411
    .line 412
    .line 413
    move-result-object p0

    .line 414
    check-cast p0, Lfp/t;

    .line 415
    .line 416
    if-eqz p0, :cond_f

    .line 417
    .line 418
    iget-object p0, p0, Lfp/t;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 419
    .line 420
    if-eqz p0, :cond_f

    .line 421
    .line 422
    invoke-virtual {p0, v10}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 423
    .line 424
    .line 425
    :cond_f
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 426
    .line 427
    return-object p0
.end method

.method private final S0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method private final T0()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "Subscription"

    .line 6
    .line 7
    const-string v2, "loadFeedData"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->m:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->m:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const-string v1, ""

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;->f(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lfp/t;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Lfp/t;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    new-instance v1, Lmp/l;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lmp/l;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v2, 0x7d0

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method private static final U0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lfp/t;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lfp/t;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private final V0()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "SubscriptionFragment"

    .line 6
    .line 7
    const-string v2, "loadUgcTrendingHomeData"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->n:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->n:Z

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->o:Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$TabType;->getApiValue()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v0, v2}, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;->e(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lfp/t;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lfp/t;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    new-instance v1, Lmp/k;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lmp/k;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 55
    .line 56
    .line 57
    const-wide/16 v2, 0x7d0

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method private static final W0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lfp/t;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lfp/t;->d:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private static final X0()Lqx/a;
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

.method private final Y0()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->h:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lqx/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->p:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;->e(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method private final Z0(Ljava/util/List;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

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
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    iget-object v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;->g()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object v2, v3

    .line 33
    :goto_1
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-string v4, " -> "

    .line 40
    .line 41
    if-nez v2, :cond_6

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iget-object v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    move-object v5, p1

    .line 54
    check-cast v5, Ljava/util/Collection;

    .line 55
    .line 56
    invoke-virtual {v2, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    :cond_4
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 74
    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, "updateData: load more, add "

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, " items, list size: "

    .line 99
    .line 100
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    const/4 v9, 0x4

    .line 117
    const/4 v10, 0x0

    .line 118
    const-string v6, "SubscriptionFragment"

    .line 119
    .line 120
    const/4 v8, 0x0

    .line 121
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 126
    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    move-object v2, p1

    .line 130
    check-cast v2, Ljava/util/Collection;

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 133
    .line 134
    .line 135
    :cond_7
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 136
    .line 137
    if-eqz p1, :cond_8

    .line 138
    .line 139
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v1, "updateData: refresh or first load, replace data. size: "

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    const/4 v9, 0x4

    .line 171
    const/4 v10, 0x0

    .line 172
    const-string v6, "SubscriptionFragment"

    .line 173
    .line 174
    const/4 v8, 0x0

    .line 175
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :goto_3
    return-void
.end method

.method private final a1(Ljava/util/List;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    iget-object v3, v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;->g()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v3, v4

    .line 35
    :goto_1
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const-string v5, " -> "

    .line 42
    .line 43
    if-nez v3, :cond_5

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget-object v3, v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    move-object/from16 v4, p1

    .line 53
    .line 54
    check-cast v4, Ljava/util/Collection;

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object v3, v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    :cond_4
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 74
    .line 75
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v7, "updateData: load more, add "

    .line 85
    .line 86
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v3, " items, list size: "

    .line 93
    .line 94
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    const/4 v10, 0x4

    .line 111
    const/4 v11, 0x0

    .line 112
    const-string v7, "SubscriptionFragment"

    .line 113
    .line 114
    const/4 v9, 0x0

    .line 115
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 120
    .line 121
    if-nez v2, :cond_6

    .line 122
    .line 123
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 124
    .line 125
    const/4 v10, 0x4

    .line 126
    const/4 v11, 0x0

    .line 127
    const-string v7, "SubscriptionFragment"

    .line 128
    .line 129
    const-string v8, "FeedTrendingAdapter ==null"

    .line 130
    .line 131
    const/4 v9, 0x0

    .line 132
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    sget-object v12, Lwf/a;->a:Lwf/a$a;

    .line 137
    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v6, "FeedTrendingAdapter =="

    .line 144
    .line 145
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    const/16 v16, 0x4

    .line 156
    .line 157
    const/16 v17, 0x0

    .line 158
    .line 159
    const-string v13, "SubscriptionFragment"

    .line 160
    .line 161
    const/4 v15, 0x0

    .line 162
    invoke-static/range {v12 .. v17}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :goto_3
    iget-object v2, v0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 166
    .line 167
    if-eqz v2, :cond_7

    .line 168
    .line 169
    move-object/from16 v3, p1

    .line 170
    .line 171
    check-cast v3, Ljava/util/Collection;

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 174
    .line 175
    .line 176
    :cond_7
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 177
    .line 178
    if-eqz p1, :cond_8

    .line 179
    .line 180
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v3, "updateData: refresh or first load, replace data. size: "

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    const/4 v10, 0x4

    .line 212
    const/4 v11, 0x0

    .line 213
    const-string v7, "SubscriptionFragment"

    .line 214
    .line 215
    const/4 v9, 0x0

    .line 216
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :goto_4
    return-void
.end method

.method private final getLoginApi()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->v:Lkotlin/Lazy;

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

.method public static synthetic j0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->A0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->X0()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic l0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->P0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->H0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(ILcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->D0(ILcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->O0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->J0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->W0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->R0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/UgcTrendingHomeBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->G0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->U0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->M0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;Lcom/transsion/room/sub/bean/subscription/SubscriptionFeedBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic v0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic w0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)Lcom/transsion/room/sub/adapter/subscription/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->k:Lcom/transsion/room/sub/adapter/subscription/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x0(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)Lcom/transsion/room/sub/adapter/subscription/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->l:Lcom/transsion/room/sub/adapter/subscription/k;

    .line 2
    .line 3
    return-object p0
.end method

.method private final y0()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->f:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->f:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lqi/b;->g()Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const-string v3, "load_duration"

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/String;

    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method private final z0(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showLoadingView()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x0

    .line 8
    const-string v1, "SubscriptionFragment"

    .line 9
    .line 10
    const-string v2, "checkHasFollowings\u9636\u6bb5"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->p:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;->d()Landroidx/lifecycle/b0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance v1, Lmp/d;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lmp/d;-><init>(Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$e;

    .line 32
    .line 33
    invoke-direct {v2, v1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->p:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;->e(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public B0(Landroid/view/LayoutInflater;)Lfp/t;
    .locals 2

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/lifecycle/v0;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 15
    .line 16
    .line 17
    const-class v1, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->p:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionViewModel;

    .line 26
    .line 27
    new-instance v0, Landroidx/lifecycle/v0;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 30
    .line 31
    .line 32
    const-class v1, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->q:Lcom/transsion/room/sub/viewmodel/subscription/SubscriptionFeedListViewModel;

    .line 41
    .line 42
    new-instance v0, Landroidx/lifecycle/v0;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 45
    .line 46
    .line 47
    const-class v1, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->r:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    .line 56
    .line 57
    new-instance v0, Landroidx/lifecycle/v0;

    .line 58
    .line 59
    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 60
    .line 61
    .line 62
    const-class v1, Lcom/transsion/room/sub/viewmodel/subscription/a;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/transsion/room/sub/viewmodel/subscription/a;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->t:Lcom/transsion/room/sub/viewmodel/subscription/a;

    .line 71
    .line 72
    new-instance v0, Landroidx/lifecycle/v0;

    .line 73
    .line 74
    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 75
    .line 76
    .line 77
    const-class p1, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->s:Lcom/transsion/room/sub/viewmodel/subscription/UgcTrendingHomeViewModel;

    .line 86
    .line 87
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lfp/t;->c(Landroid/view/LayoutInflater;)Lfp/t;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v0, "inflate(...)"

    .line 96
    .line 97
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object p1
.end method

.method public E(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "SubscriptionFragment"

    .line 6
    .line 7
    const-string v2, "onClickVideoTrendingDetailItem"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {p1, v1, v0, v1}, Lhu/b;->b(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public I(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "share"

    .line 4
    .line 5
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 6
    .line 7
    const/4 v6, 0x4

    .line 8
    const/4 v7, 0x0

    .line 9
    const-string v3, "SubscriptionFragment"

    .line 10
    .line 11
    const-string v4, "onClickShareItem"

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v1, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->u:Lcom/transsion/share/share/ShareDialogFragment;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v2, :cond_5

    .line 21
    .line 22
    invoke-direct/range {p0 .. p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lqx/a;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-interface {v2}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v2, v3

    .line 34
    :goto_0
    sget-object v4, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    .line 35
    .line 36
    sget-object v5, Lcom/transsion/share/bean/PostType;->UGC_VIDEO:Lcom/transsion/share/bean/PostType;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    move-object v7, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v7, v3

    .line 47
    :goto_1
    sget-object v2, Lcom/transsion/usercenterapi/ReportType;->UFC_VIDEO:Lcom/transsion/usercenterapi/ReportType;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    const/16 v17, 0x800

    .line 54
    .line 55
    const/16 v18, 0x0

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    const/4 v11, 0x0

    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v13, 0x0

    .line 61
    const-string v14, "UGCVideoDetail"

    .line 62
    .line 63
    const/16 v16, 0x0

    .line 64
    .line 65
    move-object/from16 v6, p1

    .line 66
    .line 67
    move-object/from16 v9, p2

    .line 68
    .line 69
    move-object/from16 v15, p2

    .line 70
    .line 71
    invoke-static/range {v4 .. v18}, Lcom/transsion/share/share/ShareDialogFragment$a;->b(Lcom/transsion/share/share/ShareDialogFragment$a;Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/share/share/ShareDialogFragment;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, v1, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->u:Lcom/transsion/share/share/ShareDialogFragment;

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    new-instance v4, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$d;

    .line 80
    .line 81
    invoke-direct {v4}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment$d;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v4}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const/4 v4, 0x1

    .line 98
    if-ne v2, v4, :cond_5

    .line 99
    .line 100
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->g0()Z

    .line 113
    .line 114
    .line 115
    iget-object v5, v1, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->u:Lcom/transsion/share/share/ShareDialogFragment;

    .line 116
    .line 117
    if-eqz v5, :cond_3

    .line 118
    .line 119
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-ne v5, v4, :cond_3

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-eqz v4, :cond_4

    .line 133
    .line 134
    :goto_2
    return-void

    .line 135
    :cond_4
    iget-object v4, v1, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->u:Lcom/transsion/share/share/ShareDialogFragment;

    .line 136
    .line 137
    if-eqz v4, :cond_5

    .line 138
    .line 139
    invoke-virtual {v4, v2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_4
    iput-object v3, v1, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->u:Lcom/transsion/share/share/ShareDialogFragment;

    .line 147
    .line 148
    return-void
.end method

.method public a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p1, v0, v1, v0}, Lhu/b;->b(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "userId111 \uff1a"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "SubscriptionFragment"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "/profile/user_profile"

    .line 29
    .line 30
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "userId"

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    const/4 v2, 0x2

    .line 46
    invoke-static {p1, v0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
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
    invoke-virtual {p0, p1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->B0(Landroid/view/LayoutInflater;)Lfp/t;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initListener()V
    .locals 0

    .line 1
    return-void
.end method

.method public initViewData()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->f:J

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lqx/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v2, v1

    .line 28
    :goto_1
    if-eqz v2, :cond_6

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_2
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    move-object v0, v1

    .line 45
    :goto_2
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lqx/a;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    invoke-interface {v2}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_5
    const/4 v0, 0x0

    .line 69
    goto :goto_4

    .line 70
    :cond_6
    :goto_3
    const/4 v0, 0x1

    .line 71
    :goto_4
    iput-boolean v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->w:Z

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->S0()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 80
    .line 81
    const/4 v5, 0x4

    .line 82
    const/4 v6, 0x0

    .line 83
    const-string v2, "SubscriptionFragment"

    .line 84
    .line 85
    const-string v3, "isSelf : true"

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lqx/a;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_8

    .line 96
    .line 97
    invoke-interface {v0, p0}, Lqx/a;->e(Lqx/b;)V

    .line 98
    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_7
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 102
    .line 103
    const/4 v5, 0x4

    .line 104
    const/4 v6, 0x0

    .line 105
    const-string v2, "SubscriptionFragment"

    .line 106
    .line 107
    const-string v3, "isSelf : false"

    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_8
    :goto_5
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->I0()V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->x:Ljava/lang/String;

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_9

    .line 123
    .line 124
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 125
    .line 126
    invoke-virtual {v0}, Lqi/h;->h()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->x:Ljava/lang/String;

    .line 131
    .line 132
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lqi/b;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_a

    .line 137
    .line 138
    invoke-virtual {v0}, Lqi/b;->g()Ljava/util/HashMap;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_a

    .line 143
    .line 144
    const-string v1, "page_from"

    .line 145
    .line 146
    iget-object v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->x:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Ljava/lang/String;

    .line 153
    .line 154
    :cond_a
    return-void
.end method

.method public initViewModel()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->L0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->Q0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public loadDefaultData()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "SubscriptionFragment"

    .line 6
    .line 7
    const-string v2, "loadDefaultData\u9636\u6bb5"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lqx/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v1

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->z0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public logPause()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logPause()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->y:J

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->y:J

    .line 17
    .line 18
    sub-long/2addr v0, v2

    .line 19
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "Subscription fb log duration:"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    filled-new-array {v3}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v6, 0x4

    .line 43
    const/4 v7, 0x0

    .line 44
    const-string v3, "Report"

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static/range {v2 .. v7}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object v2, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    .line 51
    .line 52
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v3, "Subscription"

    .line 61
    .line 62
    invoke-virtual {v2, v3, v0, v1}, Lcom/transsion/baselib/report/e;->n(Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public logResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->y:J

    .line 9
    .line 10
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
    const-string v3, "/subscription/subscription"

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

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lqx/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqx/a;->j(Lqx/b;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->logPause()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->logResume()V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method public onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 7

    .line 1
    const-string v0, "user"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lqx/b$a;->a(Lqx/b;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const-string v2, "SubscriptionFragment"

    .line 14
    .line 15
    const-string v3, "onLogin\u9636\u6bb5"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->Y0()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onLogout()V
    .locals 6

    .line 1
    invoke-static {p0}, Lqx/b$a;->b(Lqx/b;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x0

    .line 8
    const-string v1, "SubscriptionFragment"

    .line 9
    .line 10
    const-string v2, "onLogout\u9636\u6bb5"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->Y0()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 7

    .line 1
    const-string v0, "user"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, "SubscriptionFragment"

    .line 11
    .line 12
    const-string v3, "onUpdateUserInfo\u9636\u6bb5"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public retryLoadData()V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "SubscriptionFragment"

    .line 6
    .line 7
    const-string v2, "retryLoadData\u9636\u6bb5"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->getLoginApi()Lqx/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v1

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->z0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public t(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "SubscriptionFragment"

    .line 6
    .line 7
    const-string v2, "onClickCommentReply"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->C0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public w(ZLjava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "ugcVideoId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, "SubscriptionFragment"

    .line 11
    .line 12
    const-string v3, "onClickCommentLike"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/room/sub/fragment/subscription/SubscriptionFragment;->r:Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, p2, p1}, Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;->j(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
