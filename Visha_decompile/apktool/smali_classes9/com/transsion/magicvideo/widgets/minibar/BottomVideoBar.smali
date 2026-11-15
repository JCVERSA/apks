.class public Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;
.super Lcom/transsion/playercommon/widgets/BaseBottomBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$a;,
        Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/playercommon/widgets/BaseBottomBar<",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a7\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0007*\u0001y\u0008\u0016\u0018\u0000 }2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001~B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001d\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0011J\u000f\u0010\u0016\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0011J\u000f\u0010\u0017\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0011J\u000f\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0011J\u0019\u0010\u001d\u001a\u00020\r2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0002H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0019\u0010 \u001a\u00020\r2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0011J\u0017\u0010$\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008&\u0010\u001aJ\u000f\u0010\'\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0011J\u000f\u0010(\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008(\u0010\u0011J\u0017\u0010+\u001a\u00020\r2\u0006\u0010*\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010.\u001a\u00020\r2\u0006\u0010-\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008.\u0010!J\u000f\u0010/\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008/\u0010\u0011J\u000f\u00100\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u00080\u0010\u0011J\u000f\u00101\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00081\u0010\u0011J\u0017\u00103\u001a\u00020\r2\u0006\u00102\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00083\u0010\u0014J\u000f\u00104\u001a\u00020\rH\u0004\u00a2\u0006\u0004\u00084\u0010\u0011J\u0015\u00106\u001a\u00020\r2\u0006\u00105\u001a\u00020\u0018\u00a2\u0006\u0004\u00086\u0010!J\u0017\u00108\u001a\u00020\r2\u0006\u00107\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u00088\u0010!J\u000f\u00109\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00089\u0010\u0011J\u001f\u0010;\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u00022\u0006\u0010:\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u0019\u0010>\u001a\u00020\r2\u0008\u0010=\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008>\u0010\u001eJ\u001f\u0010C\u001a\u00020\r2\u0006\u0010@\u001a\u00020?2\u0006\u0010B\u001a\u00020AH\u0016\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010E\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008E\u0010\u001aJ+\u0010J\u001a\u00020\r2\u0006\u0010F\u001a\u00020\u00072\u0012\u0010I\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020H0G\"\u00020HH\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\u0017\u0010N\u001a\u00020\r2\u0006\u0010M\u001a\u00020LH\u0016\u00a2\u0006\u0004\u0008N\u0010OR\u0014\u0010S\u001a\u00020P8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u0016\u0010V\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0018\u0010Z\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0016\u0010]\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R \u0010c\u001a\u0008\u0012\u0004\u0012\u00020\u00070^8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008_\u0010`\u001a\u0004\u0008a\u0010bR\u0016\u0010e\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010\\R\u0018\u0010i\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010hR\u0016\u0010l\u001a\u00020j8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010(R\u001c\u0010p\u001a\u0008\u0012\u0004\u0012\u00020)0m8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010oR\u0016\u0010t\u001a\u00020q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u0014\u0010x\u001a\u00020u8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008v\u0010wR\u0014\u0010|\u001a\u00020y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008z\u0010{\u00a8\u0006\u007f"
    }
    d2 = {
        "Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;",
        "Lcom/transsion/playercommon/widgets/BaseBottomBar;",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "newPlayList",
        "Lzfb;",
        "d0",
        "(Ljava/util/List;)V",
        "R",
        "()V",
        "o",
        "setGestureHor",
        "(I)V",
        "X",
        "T",
        "K",
        "",
        "O",
        "()Z",
        "a0",
        "mediaItem",
        "c0",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;)V",
        "needRestPosition",
        "synCurrent",
        "(Z)V",
        "updateCurrentItemInfo",
        "target",
        "P",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;)Z",
        "U",
        "startPlay",
        "J",
        "Lwoc;",
        "windowOptions",
        "S",
        "(Lwoc;)V",
        "isVisible",
        "G",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "initClick",
        "visibility",
        "setVisibility",
        "b0",
        "start",
        "startOrStopMusicProgress",
        "forceUpdate",
        "runMusicProgressUpdate",
        "changeViewpager",
        "position",
        "updateItemInfo",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;I)V",
        "item",
        "loadCover",
        "Landroidx/lifecycle/LifecycleOwner;",
        "source",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "event",
        "onStateChanged",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V",
        "isPipExist",
        "eventId",
        "",
        "",
        "args",
        "didReceivedNotification",
        "(I[Ljava/lang/Object;)V",
        "Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;",
        "screenType",
        "setPlayControlContainerState",
        "(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V",
        "Lcom/transsion/magicvideo/player/VideoPlayManager;",
        "b",
        "Lcom/transsion/magicvideo/player/VideoPlayManager;",
        "mPlayManager",
        "c",
        "I",
        "mPlayerState",
        "",
        "d",
        "Ljava/lang/String;",
        "mTitle",
        "e",
        "Z",
        "mIsStart",
        "",
        "f",
        "Ljava/util/List;",
        "getNotificationList",
        "()Ljava/util/List;",
        "notificationList",
        "g",
        "isDestroy",
        "Lcom/transsion/WindowInfoViewModel;",
        "h",
        "Lcom/transsion/WindowInfoViewModel;",
        "windowInfoViewModel",
        "",
        "i",
        "remainingTime",
        "Landroidx/lifecycle/Observer;",
        "j",
        "Landroidx/lifecycle/Observer;",
        "windowOptionsObserver",
        "Landroid/os/Handler;",
        "k",
        "Landroid/os/Handler;",
        "timerHandler",
        "Lcom/transsion/magicvideo/player/VideoPlayManager$d;",
        "l",
        "Lcom/transsion/magicvideo/player/VideoPlayManager$d;",
        "mPlayerListener",
        "com/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1",
        "m",
        "Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;",
        "pageChangeCallback",
        "Companion",
        "a",
        "video_release"
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
.field public static final Companion:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$a;


# instance fields
.field public final b:Lcom/transsion/magicvideo/player/VideoPlayManager;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z

.field public final f:Ljava/util/List;

.field public g:Z

.field public h:Lcom/transsion/WindowInfoViewModel;

.field public i:J

.field public j:Landroidx/lifecycle/Observer;

.field public k:Landroid/os/Handler;

.field public final l:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

.field public final m:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->Companion:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/BaseBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p2

    const-string p3, "getInstance(...)"

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/16 p3, 0x402

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 p3, 0x404

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 p3, 0x455

    .line 8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 p3, 0x456

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 p3, 0x47b

    .line 10
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 p3, 0x49a

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Integer;

    move-result-object p3

    .line 12
    invoke-static {p3}, Ly71;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->f:Ljava/util/List;

    .line 13
    new-instance p3, Lzj0;

    invoke-direct {p3, p0}, Lzj0;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->j:Landroidx/lifecycle/Observer;

    .line 14
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayButton()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/transsion/magicvideo/R$string;->talkback_play:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 15
    :cond_0
    sget p2, Lcom/transsion/magicvideo/R$string;->talkback_pause:I

    goto :goto_0

    .line 16
    :goto_1
    invoke-virtual {p3, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayListButton()Landroid/widget/ImageView;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMFavoritesIv()Landroid/widget/ImageView;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMMusicCircleImageView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayClose()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->a0()V

    .line 22
    invoke-static {}, Lcom/transsion/magicvideo/model/PlayListDataNew;->getInstance()Lcom/transsion/magicvideo/model/PlayListDataNew;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/magicvideo/model/PlayListDataNew;->getPlayList()Landroidx/lifecycle/LiveData;

    move-result-object p2

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    new-instance p3, Lak0;

    invoke-direct {p3, p0}, Lak0;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    invoke-virtual {p2, p1, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 23
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->k:Landroid/os/Handler;

    .line 24
    new-instance p1, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$i;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$i;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->l:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    .line 25
    new-instance p1, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->m:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic A(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->setupTimer$lambda$7(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    return-void
.end method

.method public static synthetic B(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->N(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic C(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Lcom/transsion/dbdata/beans/media/MediaItem;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->H(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Lcom/transsion/dbdata/beans/media/MediaItem;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lc74;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->Y(Lc74;)V

    return-void
.end method

.method public static synthetic E(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->M(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;I)V

    return-void
.end method

.method public static final F(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Ljava/util/List;)V
    .locals 0

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->d0(Ljava/util/List;)V

    return-void
.end method

.method public static final H(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Lcom/transsion/dbdata/beans/media/MediaItem;)Lzfb;
    .locals 1

    const-string v0, "media"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->K()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final I(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->synCurrent(Z)V

    return-void
.end method

.method private final J()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->setVisibility(I)V

    const/4 v0, 0x0

    sput v0, Laf9;->a:I

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W1(Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x406

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->i1(Z)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y1()V

    return-void
.end method

.method public static final L(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result p1

    const-wide/16 v0, 0x64

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayStatusStart()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayStatusPause()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayStatusStart()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayStatusPause()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    :goto_0
    return p2
.end method

.method public static final M(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->K()V

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->setGestureHor(I)V

    :goto_1
    return-void
.end method

.method public static final N(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayListButton()Landroid/widget/ImageView;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayListButton()Landroid/widget/ImageView;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    :goto_0
    return p2
.end method

.method public static final Q(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Ljava/lang/Integer;)V
    .locals 2

    const-string p1, "BottomVideoBar"

    const-string v0, "video play list changed ,so update ui"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setViewPagerAdapter(J)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method private final S(Lwoc;)V
    .locals 5

    iget v0, p1, Lwoc;->a:I

    iget-boolean v1, p1, Lwoc;->f:Z

    iget-boolean p1, p1, Lwoc;->c:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    if-nez p1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->G(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->G(Z)V

    :goto_0
    return-void
.end method

.method public static final V(Lc74;)V
    .locals 0

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final W(Lc74;)V
    .locals 0

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final Y(Lc74;)V
    .locals 0

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->synCurrent(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: synCurrent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$getMIsStart$p(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->e:Z

    return p0
.end method

.method public static final synthetic access$getMPlayManager$p(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)Lcom/transsion/magicvideo/player/VideoPlayManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    return-object p0
.end method

.method public static final synthetic access$goVideoDetail(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->K()V

    return-void
.end method

.method public static final synthetic access$isSameMediaItem(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->P(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onPlayListClick(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->R()V

    return-void
.end method

.method public static final synthetic access$setMPlayerState$p(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->c:I

    return-void
.end method

.method public static final synthetic access$startPlay(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->startPlay()V

    return-void
.end method

.method public static final synthetic access$updateTitleInfo(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->c0(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public static final e0(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->synCurrent(Z)V

    return-void
.end method

.method public static final f0(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Lwoc;)V
    .locals 1

    const-string v0, "windowOptions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->S(Lwoc;)V

    return-void
.end method

.method public static synthetic s(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->e0(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    return-void
.end method

.method private final setGestureHor(I)V
    .locals 0

    const/4 p0, 0x1

    if-ne p0, p1, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o1()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p0, p1, :cond_1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->r1()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final setupTimer$lambda$7(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->T()V

    return-void
.end method

.method private final startPlay()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayButton()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v0, :cond_0

    sget v4, Lcom/transsion/magicvideo/R$string;->talkback_play:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    sget v4, Lcom/transsion/magicvideo/R$string;->talkback_pause:I

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->Z1(Z)V

    :cond_1
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v3

    iput v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    :cond_2
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->U()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-static {p0, v1}, Lk38;->m(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->p2(ZZ)V

    :cond_4
    :goto_2
    const-string p0, "minibar"

    invoke-static {p0}, Lry5;->g(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    const-string p0, "vd_page_miniplayer_pause"

    goto :goto_3

    :cond_5
    const-string p0, "vd_page_miniplayer_play"

    :goto_3
    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Lwoc;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->f0(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Lwoc;)V

    return-void
.end method

.method public static synthetic u(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->L(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v(Lc74;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->V(Lc74;)V

    return-void
.end method

.method public static synthetic w(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->F(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic x(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->Q(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->I(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    return-void
.end method

.method public static synthetic z(Lc74;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->W(Lc74;)V

    return-void
.end method


# virtual methods
.method public final G(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Loc2;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayControlContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$drawable;->divider_w_space_28:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayControlContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final K()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W1(Z)V

    :cond_0
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->T()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    iput-boolean v3, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->fromBackgroundPlay:Z

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/magicvideo/player/VideoPlayManager;->O:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isPipMute:Z

    :cond_1
    invoke-static {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivityInner;->G2(Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->G1()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x479

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    xor-int/2addr v0, v3

    invoke-virtual {v4, p0, v0, v1, v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->m0(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "launch_intent_video_player_activity"

    invoke-virtual {v2, v0, p0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string p0, "vd_page_miniplayer_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public final O()Z
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setEmpty(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final P(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final R()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "minibar"

    invoke-static {p0, v0, v1}, Lk38;->o(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method public final T()V
    .locals 2

    const-string v0, "pauseByTimer"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "BottomVideoBar"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lw6c;->G(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lw6c;->F(Landroid/content/Context;J)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->i1(Z)V

    return-void
.end method

.method public final U()Z
    .locals 3

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->e0()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_6

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->g0()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->p2(ZZ)V

    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public final X()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw6c;->l(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->i:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupTimer: remainingTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "BottomVideoBar"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->k:Landroid/os/Handler;

    new-instance v1, Lvj0;

    invoke-direct {v1, p0}, Lvj0;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    iget-wide v2, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final a0()V
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->loadPlayBackground(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->g0()I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->c:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b0()V

    return-void
.end method

.method public final b0()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlayPauseButton isPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BottomVideoBar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayStatusStart()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {p0, v1, v4}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setVisibilityIfNeeded(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayStatusPause()Landroid/widget/ImageView;

    move-result-object v1

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setVisibilityIfNeeded(Landroid/view/View;I)V

    return-void
.end method

.method public final c0(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayingItemTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayingItemArtist()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayingItemArtist()Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public changeViewpager()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMBottomViewAdapter()Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    move-result-object v0

    const-string v1, "BottomVideoBar"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "getPlayList(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mBottomViewAdapter = null , setup AudioSlideAdapter "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/playercommon/widgets/banner/VideoSlideAdapter;

    invoke-direct {v0}, Lcom/transsion/playercommon/widgets/banner/VideoSlideAdapter;-><init>()V

    invoke-super {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isForceLight()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->y(Z)V

    new-instance v1, Lfk0;

    invoke-direct {v1, p0}, Lfk0;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/banner/VideoSlideAdapter;->D(Le74;)V

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMBottomViewAdapter(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->m:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMBottomViewAdapter()Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->setAdapter(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->create(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->Z(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "mBottomViewAdapter != null , update AudioSlideAdapter "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Luj0;

    invoke-direct {v2, p0}, Luj0;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->refreshData(Ljava/util/List;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final d0(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BottomVideoBar"

    const-string p1, "PlayList is empty or null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    new-instance v1, Lwj0;

    invoke-direct {v1, p0}, Lwj0;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->refreshData(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 7

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x404

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x47b

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x49a

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x455

    const/4 v2, 0x0

    if-eq p1, v0, :cond_17

    const/16 v0, 0x456

    if-eq p1, v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 p1, 0x0

    invoke-static {p2, p1}, Lhi;->f0([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {p2, v1}, Lhi;->f0([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p2, v2

    :goto_1
    if-nez p2, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez v4, :cond_8

    :cond_5
    if-eqz v1, :cond_6

    iget-object v4, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v4, v2

    :goto_2
    if-nez v4, :cond_8

    if-eqz v3, :cond_7

    iget-object v4, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v4, v2

    :cond_8
    :goto_3
    invoke-static {v4, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return-void

    :cond_9
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v4, "separator"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-static {p2, v3, p1, v4, v2}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move-object v3, p2

    goto :goto_4

    :cond_a
    move-object v3, v0

    :goto_4
    if-eqz p1, :cond_b

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_b
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "getPlayList(...)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v6, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v6, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    move-object v2, v5

    :cond_d
    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v2, :cond_f

    if-eqz p1, :cond_e

    iput-object v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :cond_e
    iput-object p2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iput-object p2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :cond_f
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_10

    iput-object v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :cond_10
    if-eqz v1, :cond_11

    iput-object v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :cond_11
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_12

    iput-object p2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_13

    iput-object p2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :cond_13
    if-eqz v1, :cond_14

    iput-object p2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    :cond_14
    if-eqz v1, :cond_15

    iput-object p2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :cond_15
    if-nez v1, :cond_16

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    :cond_16
    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->c0(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_7

    :cond_17
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y0()Z

    move-result p2

    if-eqz p2, :cond_20

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->e0()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p2

    if-eqz p2, :cond_18

    iget-boolean p2, p2, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    if-ne p2, v1, :cond_18

    return-void

    :cond_18
    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p2

    if-eqz p2, :cond_19

    iget-object v2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :cond_19
    if-eqz v2, :cond_1c

    invoke-static {v2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1a

    goto :goto_6

    :cond_1a
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_20

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->b0()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v1, :cond_1b

    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->J()V

    goto :goto_5

    :cond_1b
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->o1()V

    :goto_5
    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->b0()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playIndex()I

    move-result p0

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->b0()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_1c
    :goto_6
    return-void

    :cond_1d
    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->runMusicProgressUpdate(Z)V

    goto :goto_7

    :cond_1e
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->X()V

    goto :goto_7

    :cond_1f
    invoke-direct {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->J()V

    :cond_20
    :goto_7
    return-void
.end method

.method public getNotificationList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->f:Ljava/util/List;

    return-object p0
.end method

.method public initClick()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lbk0;

    invoke-direct {v1, p0}, Lbk0;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$c;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$c;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayClose()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$d;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$d;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$e;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$e;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMAudioPlayPreviousIv()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$f;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$f;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMAudioPlayNextIv()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$g;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$g;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lck0;

    invoke-direct {v0, p0}, Lck0;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    invoke-static {p0, v0}, Lcom/transsion/widgets/GestureUtil;->scrollGestureExactly(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayListButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Ldk0;

    invoke-direct {v1, p0}, Ldk0;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayListButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$h;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$h;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isPipExist()Z
    .locals 2

    sget-object p0, Lo18;->g:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/transsion/magicvideo/services/VideosService;

    if-eqz p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lo18;->f:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    return v1
.end method

.method public loadCover(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->g:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$drawable;->main_fragment_placeholder:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getCoverUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getMiMediaInfo()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getCoverUri()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    move-object v4, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMSquareCover()Landroid/widget/ImageView;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lz7c;->a(Landroid/content/Context;Landroid/net/Uri;JLandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMSquareCover()Landroid/widget/ImageView;

    move-result-object p0

    invoke-static {v0, p1, v7, p0}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    :goto_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->l:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->D1(Lcom/transsion/magicvideo/player/VideoPlayManager$d;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.transsion.playercommon.activities.BaseActivity"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    const-class v2, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/WindowInfoViewModel;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->h:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->j:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "video_play_list_change"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lek0;

    invoke-direct {v2, p0}, Lek0;-><init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->a0()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->changeViewpager()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->l:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v2(Lcom/transsion/magicvideo/player/VideoPlayManager$d;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->h:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->j:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->k:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    const-string v0, "video_play_list_change"

    invoke-virtual {p0, v0}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->g:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->getNotificationList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p0}, Lj27;->b(Ljava/util/List;Lh27$b;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y0()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lk38;->a:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "onStateChanged"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "BottomVideoBar"

    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->l2()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->a0()V

    :cond_3
    :goto_0
    return-void
.end method

.method public runMusicProgressUpdate(Z)V
    .locals 14

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x64

    const/4 v0, 0x0

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v6}, Lcom/transsion/magicvideo/player/VideoPlayManager;->V()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    int-to-long v6, v6

    :try_start_1
    iget-object v8, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v8}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long v8, v8

    cmp-long v10, v6, v4

    if-gtz v10, :cond_3

    :try_start_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-wide v10, v10, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    goto :goto_0

    :catchall_0
    move-exception v10

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-wide v10, v10, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    move-wide v10, v4

    :goto_0
    cmp-long v12, v10, v4

    if-lez v12, :cond_3

    move-wide v6, v10

    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMProgressUpdateRunnable()Lc74;

    move-result-object v11

    new-instance v12, Ltj0;

    invoke-direct {v12, v11}, Ltj0;-><init>(Lc74;)V

    invoke-virtual {v10, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMProgressUpdateRunnable()Lc74;

    move-result-object v11

    new-instance v12, Lxj0;

    invoke-direct {v12, v11}, Lxj0;-><init>(Lc74;)V

    invoke-virtual {v10, v12, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    cmp-long v1, v6, v4

    if-gtz v1, :cond_4

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMSeekbar()Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    return-void

    :cond_4
    int-to-long v0, p1

    mul-long/2addr v8, v0

    div-long/2addr v8, v6

    long-to-float p1, v8

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMSeekbar()Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    return-void

    :catchall_1
    move-exception v10

    move-wide v8, v4

    goto :goto_2

    :catchall_2
    move-exception v10

    move-wide v6, v4

    move-wide v8, v6

    :goto_2
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMProgressUpdateRunnable()Lc74;

    move-result-object v12

    new-instance v13, Ltj0;

    invoke-direct {v13, v12}, Ltj0;-><init>(Lc74;)V

    invoke-virtual {v11, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMProgressUpdateRunnable()Lc74;

    move-result-object v12

    new-instance v13, Lxj0;

    invoke-direct {v13, v12}, Lxj0;-><init>(Lc74;)V

    invoke-virtual {v11, v13, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    cmp-long v1, v6, v4

    if-gtz v1, :cond_5

    goto :goto_1

    :cond_5
    int-to-long v0, p1

    mul-long/2addr v8, v0

    div-long/2addr v8, v6

    long-to-float p1, v8

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMSeekbar()Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    throw v10
.end method

.method public setPlayControlContainerState(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    const-string p0, "screenType"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->O()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "vd_page_miniplayer_show"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b0()V

    return-void

    :cond_0
    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final startOrStopMusicProgress(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->runMusicProgressUpdate(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMProgressUpdateRunnable()Lc74;

    move-result-object p0

    new-instance v0, Lyj0;

    invoke-direct {v0, p0}, Lyj0;-><init>(Lc74;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final declared-synchronized synCurrent(Z)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "BottomVideoBar"

    const-string v0, "synCurrent, playList is empty"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setEmpty(Z)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setEmpty(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isShouldUpdate()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "BottomVideoBar"

    const-string v0, "bottom operate bar not update"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v3

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v5, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v7, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-static {v5, v7}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v4, v6

    :goto_2
    if-eq v4, v6, :cond_7

    invoke-static {p0}, Lccc;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->updateCurrentItemInfo()V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->getCurrentItem()I

    move-result v2

    if-ne v4, v2, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMManualChange(Z)V

    const-string p1, "BottomVideoBar"

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMManualChange()Z

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "targetIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  currentItem = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mManualChange = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object p1

    invoke-virtual {p1, v4, v0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->setCurrentItem(IZ)V

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->updateFavoriteIcon()V

    invoke-virtual {p0, v3}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->loadPlayBackground(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    :try_start_3
    const-string v0, "BottomVideoBar"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    monitor-exit p0

    return-void

    :goto_6
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final updateCurrentItemInfo()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMEmptyContainer()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayingItemTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayingItemTitle()Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayingItemArtist()Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayingItemArtist()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateItemInfo(Lcom/transsion/dbdata/beans/media/MediaItem;I)V
    .locals 1

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v1(IZZ)V

    return-void
.end method
