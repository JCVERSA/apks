.class public final Lcom/transsion/audio/widgets/BottomAudioBar;
.super Lcom/transsion/playercommon/widgets/BaseBottomBar;
.source "SourceFile"

# interfaces
.implements Lh27$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/widgets/BottomAudioBar$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/playercommon/widgets/BaseBottomBar<",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        ">;",
        "Lh27$b;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0087\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0005*\u0001d\u0018\u0000 g2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001gB\'\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014H\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0012J\u000f\u0010\u0019\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0012J\u000f\u0010\u001a\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0012J\u0017\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u000fJ\u000f\u0010\u001d\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0012J\u0019\u0010\u001e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0017J\u000f\u0010\u001f\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0012J\u000f\u0010 \u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008 \u0010\u0012J\u0019\u0010#\u001a\u00020\r2\u0008\u0008\u0002\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008%\u0010\u0012J\u000f\u0010&\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008&\u0010\u0012J\r\u0010\'\u001a\u00020\r\u00a2\u0006\u0004\u0008\'\u0010\u0012J\u000f\u0010(\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008(\u0010\u0012J\u000f\u0010)\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008)\u0010\u0012J\u000f\u0010*\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008*\u0010\u0012J\u0017\u0010,\u001a\u00020\r2\u0006\u0010+\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008,\u0010\u000fJ\u0019\u0010.\u001a\u00020\r2\u0008\u0010-\u001a\u0004\u0018\u00010\u0002H\u0017\u00a2\u0006\u0004\u0008.\u0010/J\u0015\u00101\u001a\u00020\r2\u0006\u00100\u001a\u00020!\u00a2\u0006\u0004\u00081\u0010$J\u0017\u00103\u001a\u00020\r2\u0006\u00102\u001a\u00020!H\u0016\u00a2\u0006\u0004\u00083\u0010$J+\u00108\u001a\u00020\r2\u0006\u00104\u001a\u00020\u00082\u0012\u00107\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020605\"\u000206H\u0016\u00a2\u0006\u0004\u00088\u00109J\u001f\u0010=\u001a\u00020\r2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010?\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008?\u0010\u0012J\r\u0010A\u001a\u00020@\u00a2\u0006\u0004\u0008A\u0010BR\u0014\u0010D\u001a\u00020C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u001e\u0010H\u001a\n G*\u0004\u0018\u00010F0F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0014\u0010J\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0014\u0010L\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008L\u0010KR\u0014\u0010M\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010KR\u0018\u0010O\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0016\u0010Q\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\"\u0010S\u001a\u00020!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010$R\u0016\u0010X\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010TR \u0010Z\u001a\u0008\u0012\u0004\u0012\u00020\u00080Y8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008Z\u0010[\u001a\u0004\u0008\\\u0010]R\"\u0010^\u001a\u00020!8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u0010T\u001a\u0004\u0008_\u0010V\"\u0004\u0008`\u0010$R\u0014\u0010b\u001a\u00020a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u0014\u0010e\u001a\u00020d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008e\u0010f\u00a8\u0006h"
    }
    d2 = {
        "Lcom/transsion/audio/widgets/BottomAudioBar;",
        "Lcom/transsion/playercommon/widgets/BaseBottomBar;",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "Lh27$b;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "o",
        "Lzfb;",
        "setGestureUpClick",
        "(I)V",
        "setGestureHor",
        "startPlay",
        "()V",
        "play",
        "",
        "delay",
        "updateDisplay",
        "(J)V",
        "onStart",
        "hideCover",
        "showListDialogFragment",
        "state",
        "updatePlayPauseButton",
        "setEmpty",
        "initBanner",
        "refreshCurrentVisiblePage",
        "updateCurrentItemInfo",
        "",
        "needRestPosition",
        "synCurrent",
        "(Z)V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "updateState",
        "initClick",
        "triggerFavoriteButton",
        "updateFavoriteIcon",
        "visibility",
        "setVisibility",
        "audioItem",
        "loadCover",
        "(Lcom/transsion/dbdata/beans/media/AudioItem;)V",
        "start",
        "startOrStopMusicProgress",
        "forceUpdate",
        "runMusicProgressUpdate",
        "eventId",
        "",
        "",
        "args",
        "didReceivedNotification",
        "(I[Ljava/lang/Object;)V",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "mediaItem",
        "position",
        "updateItemInfo",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;I)V",
        "changeViewpager",
        "Landroid/widget/ImageView;",
        "getCoverView",
        "()Landroid/widget/ImageView;",
        "Lcom/transsion/audio/player/MusicPlayManager;",
        "mPlayManager",
        "Lcom/transsion/audio/player/MusicPlayManager;",
        "Lcom/transsion/dbdata/beans/media/PlayAudioListData;",
        "kotlin.jvm.PlatformType",
        "mPlayListData",
        "Lcom/transsion/dbdata/beans/media/PlayAudioListData;",
        "mCover",
        "Landroid/widget/ImageView;",
        "mCoverBg",
        "mBgIv",
        "",
        "mTitle",
        "Ljava/lang/String;",
        "mPlayerState",
        "I",
        "needShow",
        "Z",
        "getNeedShow",
        "()Z",
        "setNeedShow",
        "mIsStart",
        "",
        "notificationList",
        "Ljava/util/List;",
        "getNotificationList",
        "()Ljava/util/List;",
        "mRestore",
        "getMRestore",
        "setMRestore",
        "Lcom/transsion/audio/player/MusicPlayManager$d;",
        "mPlayerListener",
        "Lcom/transsion/audio/player/MusicPlayManager$d;",
        "com/transsion/audio/widgets/BottomAudioBar$pageChangeCallback$1",
        "pageChangeCallback",
        "Lcom/transsion/audio/widgets/BottomAudioBar$pageChangeCallback$1;",
        "Companion",
        "audio_release"
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
.field public static final Companion:Lcom/transsion/audio/widgets/BottomAudioBar$Companion;

.field private static final MAX_UPDATE_INTERVAL_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "BottomAudioBar"


# instance fields
.field private final mBgIv:Landroid/widget/ImageView;

.field private final mCover:Landroid/widget/ImageView;

.field private final mCoverBg:Landroid/widget/ImageView;

.field private mIsStart:Z

.field private mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

.field private final mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

.field private final mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

.field private mPlayerState:I

.field private volatile mRestore:Z

.field private mTitle:Ljava/lang/String;

.field private needShow:Z

.field private final notificationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final pageChangeCallback:Lcom/transsion/audio/widgets/BottomAudioBar$pageChangeCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/audio/widgets/BottomAudioBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/audio/widgets/BottomAudioBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/audio/widgets/BottomAudioBar;->Companion:Lcom/transsion/audio/widgets/BottomAudioBar$Companion;

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audio/widgets/BottomAudioBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/audio/widgets/BottomAudioBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/BaseBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p2

    const-string p3, "getInstance(...)"

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    .line 6
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    const/16 p2, 0x42d

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x42e

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 v0, 0x43b

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x421

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x441

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, p3, v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object p2

    .line 9
    invoke-static {p2}, Ly71;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->notificationList:Ljava/util/List;

    .line 10
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMSquareCover()Landroid/widget/ImageView;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getContainer()Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/transsion/audio/R$id;->iv_cover:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mCover:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getContainer()Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/transsion/audio/R$id;->iv_cover_bg:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mCoverBg:Landroid/widget/ImageView;

    .line 13
    sget p3, Lcom/transsion/audio/R$drawable;->icon_default_audio_background_bottom:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getContainer()Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/transsion/audio/R$id;->iv_cover_spot:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mBgIv:Landroid/widget/ImageView;

    .line 15
    iget p2, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayerState:I

    invoke-direct {p0, p2}, Lcom/transsion/audio/widgets/BottomAudioBar;->updatePlayPauseButton(I)V

    .line 16
    new-instance p2, Lcom/transsion/audio/widgets/BottomAudioBar$1;

    invoke-direct {p2, p1}, Lcom/transsion/audio/widgets/BottomAudioBar$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 17
    new-instance p1, Lki0;

    invoke-direct {p1}, Lki0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->updateFavoriteList(Lc74;)V

    .line 18
    new-instance p1, Lcom/transsion/audio/widgets/BottomAudioBar$mPlayerListener$1;

    invoke-direct {p1, p0}, Lcom/transsion/audio/widgets/BottomAudioBar$mPlayerListener$1;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    .line 19
    new-instance p1, Lcom/transsion/audio/widgets/BottomAudioBar$pageChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/transsion/audio/widgets/BottomAudioBar$pageChangeCallback$1;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->pageChangeCallback:Lcom/transsion/audio/widgets/BottomAudioBar$pageChangeCallback$1;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/BottomAudioBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic A(Ljava/lang/Throwable;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateDisplay$lambda$27(Ljava/lang/Throwable;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->initClick$lambda$6(Lcom/transsion/audio/widgets/BottomAudioBar;I)V

    return-void
.end method

.method public static synthetic C(Lcom/transsion/audio/widgets/BottomAudioBar;ILjava/lang/Throwable;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/widgets/BottomAudioBar;->loadCover$lambda$35$lambda$33(Lcom/transsion/audio/widgets/BottomAudioBar;ILjava/lang/Throwable;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->initClick$lambda$10(Lcom/transsion/audio/widgets/BottomAudioBar;I)V

    return-void
.end method

.method public static synthetic E(Lcom/transsion/audio/widgets/BottomAudioBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->didReceivedNotification$lambda$42(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    return-void
.end method

.method public static synthetic F(Lcom/transsion/audio/widgets/BottomAudioBar;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->onAttachedToWindow$lambda$4(Lcom/transsion/audio/widgets/BottomAudioBar;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateDisplay$lambda$26(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic H(Lcom/transsion/audio/widgets/BottomAudioBar;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->changeViewpager$lambda$44$lambda$43(Lcom/transsion/audio/widgets/BottomAudioBar;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/transsion/audio/widgets/BottomAudioBar;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->onAttachedToWindow$lambda$2(Lcom/transsion/audio/widgets/BottomAudioBar;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic J(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateDisplay$lambda$28(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic K(Lc74;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->runMusicProgressUpdate$lambda$41(Lc74;)V

    return-void
.end method

.method public static synthetic L(Lcom/transsion/audio/widgets/BottomAudioBar;ILandroid/graphics/Bitmap;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/widgets/BottomAudioBar;->loadCover$lambda$35$lambda$31(Lcom/transsion/audio/widgets/BottomAudioBar;ILandroid/graphics/Bitmap;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lcom/transsion/audio/widgets/BottomAudioBar;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->onAttachedToWindow$lambda$1(Lcom/transsion/audio/widgets/BottomAudioBar;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic N(Lcom/transsion/audio/widgets/BottomAudioBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->changeViewpager$lambda$45(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    return-void
.end method

.method public static synthetic O(Lcom/transsion/audio/widgets/BottomAudioBar;JLcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateDisplay$lambda$25(Lcom/transsion/audio/widgets/BottomAudioBar;JLcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/transsion/audio/widgets/BottomAudioBar;Lrc7;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateDisplay$lambda$24(Lcom/transsion/audio/widgets/BottomAudioBar;Lrc7;)V

    return-void
.end method

.method public static synthetic Q()Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/widgets/BottomAudioBar;->_init_$lambda$0()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic R(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->play$lambda$21(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/transsion/audio/widgets/BottomAudioBar;Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/widgets/BottomAudioBar;->loadCover$lambda$35$lambda$29(Lcom/transsion/audio/widgets/BottomAudioBar;Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->initClick$lambda$8(Lcom/transsion/audio/widgets/BottomAudioBar;I)V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->initClick$lambda$12(Lcom/transsion/audio/widgets/BottomAudioBar;I)V

    return-void
.end method

.method public static synthetic V(Le74;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->loadCover$lambda$35$lambda$30(Le74;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->loadCover$lambda$35$lambda$32(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic X(Lc74;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->startOrStopMusicProgress$lambda$39(Lc74;)V

    return-void
.end method

.method private static final _init_$lambda$0()Ljava/util/ArrayList;
    .locals 2

    sget-object v0, Lao;->d:Lao$a;

    invoke-virtual {v0}, Lao$a;->a()Lao;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lao;->y(Z)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static final synthetic access$getMIsStart$p(Lcom/transsion/audio/widgets/BottomAudioBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mIsStart:Z

    return p0
.end method

.method public static final synthetic access$getMPlayManager$p(Lcom/transsion/audio/widgets/BottomAudioBar;)Lcom/transsion/audio/player/MusicPlayManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    return-object p0
.end method

.method public static final synthetic access$getMPlayerState$p(Lcom/transsion/audio/widgets/BottomAudioBar;)I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayerState:I

    return p0
.end method

.method public static final synthetic access$setMPlayerState$p(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayerState:I

    return-void
.end method

.method public static final synthetic access$showListDialogFragment(Lcom/transsion/audio/widgets/BottomAudioBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->showListDialogFragment()V

    return-void
.end method

.method public static final synthetic access$startPlay(Lcom/transsion/audio/widgets/BottomAudioBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->startPlay()V

    return-void
.end method

.method public static final synthetic access$updatePlayPauseButton(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->updatePlayPauseButton(I)V

    return-void
.end method

.method private static final changeViewpager$lambda$44$lambda$43(Lcom/transsion/audio/widgets/BottomAudioBar;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;
    .locals 1

    const-string v0, "audioItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    const-string p1, "audioplaypage"

    invoke-static {p1}, Lry5;->g(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->play()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final changeViewpager$lambda$45(Lcom/transsion/audio/widgets/BottomAudioBar;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/BottomAudioBar;->synCurrent(Z)V

    return-void
.end method

.method private static final didReceivedNotification$lambda$42(Lcom/transsion/audio/widgets/BottomAudioBar;)V
    .locals 2

    const-string v0, "BottomAudioBar"

    const-string v1, "EVENT_MUSIC_NONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->setEmpty()V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->i1(Z)V

    return-void
.end method

.method private final hideCover()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mCover:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mBgIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mCoverBg:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private final initBanner(J)V
    .locals 2

    invoke-static {p0}, Lccc;->a(Landroid/view/View;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMEmptyContainer()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMEmptyContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setViewPagerAdapter(J)V

    :goto_0
    return-void
.end method

.method public static synthetic initBanner$default(Lcom/transsion/audio/widgets/BottomAudioBar;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x64

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/BottomAudioBar;->initBanner(J)V

    return-void
.end method

.method private static final initClick$lambda$10(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 3

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "status"

    const-string v0, "1"

    const-string v1, "vd_miniplayer_slip_up"

    invoke-static {v1, p1, v0}, Lp06;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->play()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayStatusStart()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayStatusPause()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result p1

    const-wide/16 v0, 0x64

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayStatusStart()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayStatusPause()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayButton()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    :cond_5
    :goto_0
    return-void
.end method

.method private static final initClick$lambda$12(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMFavoritesIv()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMFavoritesIv()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMFavoritesIv()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->play()V

    :cond_4
    :goto_0
    return-void
.end method

.method private static final initClick$lambda$14(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMAudioPlayPreviousIv()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMAudioPlayPreviousIv()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMAudioPlayPreviousIv()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->play()V

    :cond_4
    :goto_0
    return-void
.end method

.method private static final initClick$lambda$16(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMAudioPlayNextIv()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMAudioPlayNextIv()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMAudioPlayNextIv()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->play()V

    :cond_4
    :goto_0
    return-void
.end method

.method private static final initClick$lambda$6(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->setGestureUpClick(I)V

    invoke-static {p0}, Lccc;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->setGestureHor(I)V

    :cond_0
    return-void
.end method

.method private static final initClick$lambda$8(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->setGestureUpClick(I)V

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->setGestureHor(I)V

    :cond_0
    return-void
.end method

.method private static final initClick$lambda$9(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "status"

    const-string v0, "1"

    const-string v1, "vd_miniplayer_slip_up"

    invoke-static {v1, p1, v0}, Lp06;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->play()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayListButton()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayListButton()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onPressAnimation(Landroid/view/View;ZJ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayListButton()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    :cond_3
    :goto_0
    return-void
.end method

.method private static final loadCover$lambda$35$lambda$29(Lcom/transsion/audio/widgets/BottomAudioBar;Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "audioItem1"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/media/AudioItem;->getCustomCoverPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getContext(...)"

    const/high16 v2, 0x42700000    # 60.0f

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0, v2, v2}, Laf0;->a(Landroid/content/Context;Ljava/lang/String;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v3, p2, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p2, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    invoke-static {v0, v3, v2, v2}, Laf0;->a(Landroid/content/Context;Ljava/lang/String;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object v0, Lao;->d:Lao$a;

    invoke-virtual {v0}, Lao$a;->a()Lao;

    move-result-object v0

    iget v3, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, v3}, Lao;->D(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-static {v3, v0, v2, v2}, Laf0;->a(Landroid/content/Context;Ljava/lang/String;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lvk1;->i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lvk1;->i(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_6
    :goto_3
    if-nez v0, :cond_7

    invoke-static {p2}, Ltn;->j(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p0

    invoke-virtual {p1}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "getResources(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method private static final loadCover$lambda$35$lambda$30(Le74;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static final loadCover$lambda$35$lambda$31(Lcom/transsion/audio/widgets/BottomAudioBar;ILandroid/graphics/Bitmap;)Lzfb;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    :goto_0
    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadCover drop stale bitmap: requested="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " current="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BottomAudioBar"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mBgIv:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mCoverBg:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mCover:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mCoverBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final loadCover$lambda$35$lambda$32(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadCover$lambda$35$lambda$33(Lcom/transsion/audio/widgets/BottomAudioBar;ILjava/lang/Throwable;)Lzfb;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz p2, :cond_0

    :goto_0
    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p2}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_2

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_2
    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->hideCover()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final loadCover$lambda$35$lambda$34(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onAttachedToWindow$lambda$1(Lcom/transsion/audio/widgets/BottomAudioBar;Ljava/lang/Integer;)V
    .locals 2

    const-string p1, "BottomAudioBar"

    const-string v0, "EVENT_KEY_AUDIO_PLAYLIST_CHANGE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setViewPagerAdapter(J)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method private static final onAttachedToWindow$lambda$2(Lcom/transsion/audio/widgets/BottomAudioBar;Ljava/lang/Integer;)V
    .locals 3

    const-string p1, "BottomAudioBar"

    const-string v0, "EVENT_KEY_AUDIO_SWITCH_REPEAT_MODE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setViewPagerAdapter$default(Lcom/transsion/playercommon/widgets/BaseBottomBar;JILjava/lang/Object;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method private static final onAttachedToWindow$lambda$4(Lcom/transsion/audio/widgets/BottomAudioBar;Ljava/util/List;)Lzfb;
    .locals 0

    new-instance p1, Lji0;

    invoke-direct {p1}, Lji0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->updateFavoriteList(Lc74;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final onAttachedToWindow$lambda$4$lambda$3()Ljava/util/ArrayList;
    .locals 2

    sget-object v0, Lao;->d:Lao$a;

    invoke-virtual {v0}, Lao$a;->a()Lao;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lao;->y(Z)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private final onStart()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object v1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->f1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    const-string v0, "BottomAudioBar"

    const-string v1, "[AudioMiniBar]onStart updateDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, v0}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateDisplay$default(Lcom/transsion/audio/widgets/BottomAudioBar;JILjava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/transsion/audio/widgets/BottomAudioBar;->runMusicProgressUpdate(Z)V

    return-void
.end method

.method private final play()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    new-instance v1, Lii0;

    invoke-direct {v1, p0}, Lii0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    new-instance p0, Lti0;

    invoke-direct {p0}, Lti0;-><init>()V

    invoke-static {v0, v1, p0}, Lbr;->e(Lcom/transsion/dbdata/beans/media/AudioItem;Le74;Le74;)V

    return-void
.end method

.method private static final play$lambda$20(Lcom/transsion/audio/widgets/BottomAudioBar;Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lzfb;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->T()I

    move-result v0

    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->Z()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playListId:J

    const/4 p0, 0x3

    iput p0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->from:I

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final play$lambda$21(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lzfb;
    .locals 3

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "vd_click_to_enter_the_playback_page"

    const-wide v0, 0xd91af27355L

    const/4 v2, 0x0

    invoke-static {v2, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private final refreshCurrentVisiblePage()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->refreshCurrentItem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshCurrentVisiblePage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BottomAudioBar"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static final runMusicProgressUpdate$lambda$40(Lc74;)V
    .locals 0

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final runMusicProgressUpdate$lambda$41(Lc74;)V
    .locals 0

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static synthetic s(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->initClick$lambda$9(Lcom/transsion/audio/widgets/BottomAudioBar;I)V

    return-void
.end method

.method private final setEmpty()V
    .locals 2

    const-string v0, "BottomAudioBar"

    const-string v1, "setEmpty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setEmpty(Z)V

    return-void
.end method

.method private final setGestureHor(I)V
    .locals 0

    const/4 p0, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "vd_miniplayer_slip_left"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->U0()V

    const-string p0, "audio_play_next"

    invoke-static {p0}, Lp06;->h0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p0, p1, :cond_1

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->Y0()V

    const-string p0, "vd_miniplayer_slip_right"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final setGestureUpClick(I)V
    .locals 2

    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    :cond_0
    if-ne v0, p1, :cond_1

    const-string p1, "status"

    const-string v0, "1"

    const-string v1, "vd_miniplayer_slip_up"

    invoke-static {v1, p1, v0}, Lp06;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->play()V

    :cond_2
    return-void
.end method

.method private final showListDialogFragment()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->c0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "num"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    iget-object v4, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v4}, Lcom/transsion/audio/player/MusicPlayManager;->c0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    iget-object v2, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v2, "vd_audio_playlist_show"

    const-wide/16 v3, 0x246c

    invoke-static {v1, v0, v2, v3, v4}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/transsion/audio/activities/AudioPlayListSheetDialogActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final startOrStopMusicProgress$lambda$39(Lc74;)V
    .locals 0

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final startPlay()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.visha.music.firstclick"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private final declared-synchronized synCurrent(Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->setEmpty()V

    const-string p1, "BottomAudioBar"

    const-string v0, "synCurrent, playList is empty"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->setVisibility(I)V
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

    iget-boolean v1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->needShow:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/BottomAudioBar;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isShouldUpdate()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "BottomAudioBar"

    const-string v0, "bottom operate bar not update"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v6, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-static {v4, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v3, v5

    :goto_2
    if-eq v3, v5, :cond_8

    invoke-static {p0}, Lccc;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateCurrentItemInfo()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->getCurrentItem()I

    move-result v1

    if-ne v3, v1, :cond_7

    if-eqz p1, :cond_8

    :cond_7
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMManualChange(Z)V

    const-string p1, "BottomAudioBar"

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMManualChange()Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "targetIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  currentItem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mManualChange = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->setCurrentItem(IZ)V

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateFavoriteIcon()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    :try_start_3
    const-string v0, "BottomAudioBar"

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

.method public static synthetic synCurrent$default(Lcom/transsion/audio/widgets/BottomAudioBar;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->synCurrent(Z)V

    return-void
.end method

.method public static synthetic t(Lcom/transsion/audio/widgets/BottomAudioBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->triggerFavoriteButton$lambda$18(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    return-void
.end method

.method private static final triggerFavoriteButton$lambda$18(Lcom/transsion/audio/widgets/BottomAudioBar;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    sget-object v1, Lao;->d:Lao$a;

    invoke-virtual {v1}, Lao$a;->a()Lao;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMIsInFavorites()Z

    move-result p0

    invoke-virtual {v1, p0, v0}, Lao;->l0(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_0
    return-void
.end method

.method public static synthetic u(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->initClick$lambda$16(Lcom/transsion/audio/widgets/BottomAudioBar;I)V

    return-void
.end method

.method private final updateCurrentItemInfo()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMEmptyContainer()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayingItemTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayingItemTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayingItemArtist()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final updateDisplay(J)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lli0;

    invoke-direct {v1, p0}, Lli0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-static {v1}, Lmc7;->h(Led7;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lmi0;

    invoke-direct {v1, p0, p1, p2}, Lmi0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;J)V

    new-instance p0, Lni0;

    invoke-direct {p0, v1}, Lni0;-><init>(Le74;)V

    new-instance p1, Loi0;

    invoke-direct {p1}, Loi0;-><init>()V

    new-instance p2, Lpi0;

    invoke-direct {p2, p1}, Lpi0;-><init>(Le74;)V

    invoke-virtual {v0, p0, p2}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public static synthetic updateDisplay$default(Lcom/transsion/audio/widgets/BottomAudioBar;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x64

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateDisplay(J)V

    return-void
.end method

.method private static final updateDisplay$lambda$24(Lcom/transsion/audio/widgets/BottomAudioBar;Lrc7;)V
    .locals 8

    const-string v0, "emitter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "music_playing"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-class v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, v1}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "v_current_playing_audio_uri"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->setUri(Landroid/net/Uri;)V

    :cond_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "music_playlist"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    new-instance v1, Lcom/transsion/audio/widgets/BottomAudioBar$updateDisplay$1$list$1;

    invoke-direct {v1}, Lcom/transsion/audio/widgets/BottomAudioBar$updateDisplay$1$list$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_5

    new-array v0, v3, [Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v4

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    aput-object v4, v0, v1

    invoke-static {v0}, Ly71;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_3

    :cond_6
    sget-object v4, Lao;->d:Lao$a;

    invoke-virtual {v4}, Lao$a;->a()Lao;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lao;->L(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    check-cast v4, Ljava/lang/Iterable;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Lky5;->g(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lwn8;->d(II)I

    move-result v5

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v7, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v5, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-static {v7, v5}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-string v5, "iterator(...)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v7, "next(...)"

    invoke-static {v5, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v7, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    if-eqz v7, :cond_8

    invoke-virtual {v5, v7}, Lcom/transsion/dbdata/beans/media/MediaItem;->setUri(Landroid/net/Uri;)V

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v4, v5}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayMediaItem(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setPlayList(Ljava/util/List;Liz;)Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v2, 0x42d

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_a
    :goto_3
    iput-boolean v3, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mRestore:Z

    :cond_b
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lk93;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lk93;->onComplete()V

    return-void
.end method

.method private static final updateDisplay$lambda$25(Lcom/transsion/audio/widgets/BottomAudioBar;JLcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p3

    const-string v0, "BottomAudioBar"

    if-nez p3, :cond_0

    const-string p1, "updateDisplay,mediaItem null"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->setEmpty()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setPlayListImage()V

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setEmpty(Z)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mTitle:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDisplay,title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/BottomAudioBar;->initBanner(J)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMEmptyContainer()Landroid/view/View;

    move-result-object p1

    invoke-static {p0}, Lccc;->a(Landroid/view/View;)Z

    move-result p2

    const/16 v0, 0x8

    if-eqz p2, :cond_3

    move p2, p3

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object p1

    invoke-static {p0}, Lccc;->a(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p3, v0

    :cond_4
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->loadPlayBackground(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result p1

    iput p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayerState:I

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->updatePlayPauseButton(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->Y()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayListData:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateFavoriteIcon()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final updateDisplay$lambda$26(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final updateDisplay$lambda$27(Ljava/lang/Throwable;)Lzfb;
    .locals 0

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private static final updateDisplay$lambda$28(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final updatePlayPauseButton(I)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePlayPauseButton, state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isPlaying: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BottomAudioBar"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayStatusStart()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setVisibilityIfNeeded(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayStatusPause()Landroid/widget/ImageView;

    move-result-object p1

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setVisibilityIfNeeded(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic v()Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/widgets/BottomAudioBar;->onAttachedToWindow$lambda$4$lambda$3()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic w(Lc74;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->runMusicProgressUpdate$lambda$40(Lc74;)V

    return-void
.end method

.method public static synthetic x(Lcom/transsion/audio/widgets/BottomAudioBar;Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->play$lambda$20(Lcom/transsion/audio/widgets/BottomAudioBar;Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->loadCover$lambda$35$lambda$34(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->initClick$lambda$14(Lcom/transsion/audio/widgets/BottomAudioBar;I)V

    return-void
.end method


# virtual methods
.method public changeViewpager()V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMBottomViewAdapter()Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "BottomAudioBar"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const-string v0, "mBottomViewAdapter = null , setup AudioSlideAdapter "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;

    invoke-direct {v0}, Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;-><init>()V

    invoke-super {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isForceLight()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;->y(Z)V

    new-instance v3, Lbj0;

    invoke-direct {v3, p0}, Lbj0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;->D(Le74;)V

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMBottomViewAdapter(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->pageChangeCallback:Lcom/transsion/audio/widgets/BottomAudioBar$pageChangeCallback$1;

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMBottomViewAdapter()Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->setAdapter(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->create(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0, v4, v2, v1}, Lcom/transsion/audio/widgets/BottomAudioBar;->synCurrent$default(Lcom/transsion/audio/widgets/BottomAudioBar;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "getPlayList(...)"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lbr;->d(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playList changed, new size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object v0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcj0;

    invoke-direct {v2, p0}, Lcj0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;->refreshData(Ljava/util/List;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v4, v2, v1}, Lcom/transsion/audio/widgets/BottomAudioBar;->synCurrent$default(Lcom/transsion/audio/widgets/BottomAudioBar;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->refreshCurrentVisiblePage()V

    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x421

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-string v4, "BottomAudioBar"

    if-eq p1, p2, :cond_3

    const/16 p2, 0x43b

    if-eq p1, p2, :cond_2

    const/16 p2, 0x441

    if-eq p1, p2, :cond_3

    const/16 p2, 0x42d

    if-eq p1, p2, :cond_1

    const/16 p2, 0x42e

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ldj0;

    invoke-direct {p1, p0}, Ldj0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->u1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    goto :goto_0

    :cond_2
    const-string p1, "didReceivedNotification: EVENT_AUDIO_NEW_START"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2, v3, v1, v0}, Lcom/transsion/audio/widgets/BottomAudioBar;->initBanner$default(Lcom/transsion/audio/widgets/BottomAudioBar;JILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "didReceivedNotification updateDisplay event: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2, v3, v1, v0}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateDisplay$default(Lcom/transsion/audio/widgets/BottomAudioBar;JILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final getCoverView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mCover:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMRestore()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mRestore:Z

    return p0
.end method

.method public final getNeedShow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->needShow:Z

    return p0
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

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->notificationList:Ljava/util/List;

    return-object p0
.end method

.method public initClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMFlPlay()Landroid/widget/FrameLayout;

    move-result-object v0

    iget v1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayerState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$string;->talkback_pause:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$string;->talkback_play:I

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMFlPlay()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lhj0;

    invoke-direct {v0, p0}, Lhj0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-static {p0, v0}, Lcom/transsion/widgets/GestureUtil;->scrollGestureExactly(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMEmptyContainer()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lij0;

    invoke-direct {v1, p0}, Lij0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-static {v0, v1}, Lcom/transsion/widgets/GestureUtil;->scrollGestureExactly(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayListButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Ljj0;

    invoke-direct {v1, p0}, Ljj0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-static {v0, v1}, Lcom/transsion/widgets/GestureUtil;->scrollGestureExactly(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayListButton()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$5;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$5;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lkj0;

    invoke-direct {v1, p0}, Lkj0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-static {v0, v1}, Lcom/transsion/widgets/GestureUtil;->scrollGestureExactly(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMPlayButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMFavoritesIv()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Llj0;

    invoke-direct {v1, p0}, Llj0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-static {v0, v1}, Lcom/transsion/widgets/GestureUtil;->scrollGestureExactly(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMFavoritesIv()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$9;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$9;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMAudioPlayPreviousIv()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lmj0;

    invoke-direct {v1, p0}, Lmj0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-static {v0, v1}, Lcom/transsion/widgets/GestureUtil;->scrollGestureExactly(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMAudioPlayPreviousIv()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$11;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$11;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMAudioPlayNextIv()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lnj0;

    invoke-direct {v1, p0}, Lnj0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-static {v0, v1}, Lcom/transsion/widgets/GestureUtil;->scrollGestureExactly(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMAudioPlayNextIv()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$13;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$13;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public loadCover(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 3
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :goto_0
    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 5
    const-string p0, "BottomAudioBar"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadCover skip mismatched item: requested="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " current="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_3
    const-string v1, "BottomAudioBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCover: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-boolean v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$drawable;->main_fragment_placeholder:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/transsion/dbdata/beans/ext/MediaExtKt;->toLocalMediaLoadInfo(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mCover:Landroid/widget/ImageView;

    invoke-static {v1, p1, v0, p0}, Lz7c;->c(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    return-void

    .line 10
    :cond_4
    monitor-enter p0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v3, v1, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v3, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/transsion/playercommon/activities/BaseActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    :goto_2
    if-nez v2, :cond_6

    monitor-exit p0

    return-void

    .line 12
    :cond_6
    :try_start_1
    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    invoke-virtual {v2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    .line 13
    new-instance v1, Lvi0;

    invoke-direct {v1, p0, v2}, Lvi0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;Lcom/transsion/playercommon/activities/BaseActivity;)V

    new-instance v2, Lwi0;

    invoke-direct {v2, v1}, Lwi0;-><init>(Le74;)V

    invoke-virtual {p1, v2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    .line 14
    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    .line 15
    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    .line 16
    new-instance v1, Lxi0;

    invoke-direct {v1, p0, v0}, Lxi0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;I)V

    new-instance v2, Lyi0;

    invoke-direct {v2, v1}, Lyi0;-><init>(Le74;)V

    new-instance v1, Lzi0;

    invoke-direct {v1, p0, v0}, Lzi0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;I)V

    .line 17
    new-instance v0, Laj0;

    invoke-direct {v0, v1}, Laj0;-><init>(Le74;)V

    .line 18
    invoke-virtual {p1, v2, v0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic loadCover(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->loadCover(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->onStart()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "audio_play_list_change"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lqi0;

    invoke-direct {v3, p0}, Lqi0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-virtual {v0, v1, v3}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "audio_switch_repeat_mode"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v3, Lri0;

    invoke-direct {v3, p0}, Lri0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-virtual {v0, v1, v3}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/playercommon/activities/BaseActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-class v1, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/PlayListModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->l()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lsi0;

    invoke-direct {v2, p0}, Lsi0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    new-instance p0, Lcom/transsion/audio/widgets/BottomAudioBar$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v2}, Lcom/transsion/audio/widgets/BottomAudioBar$sam$androidx_lifecycle_Observer$0;-><init>(Le74;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayerListener:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->F1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    const-string v0, "audio_play_list_change"

    invoke-virtual {p0, v0}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    const-string v0, "audio_switch_repeat_mode"

    invoke-virtual {p0, v0}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    return-void
.end method

.method public runMusicProgressUpdate(Z)V
    .locals 14

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v8}, Lcom/transsion/audio/player/MusicPlayManager;->R()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    int-to-long v8, v8

    :try_start_1
    iget-object v10, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mPlayManager:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v10}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v10, v10

    if-eqz p1, :cond_1

    invoke-static {p0}, Lccc;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateCurrentItemInfo()V

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMProgressUpdateRunnable()Lc74;

    move-result-object v12

    new-instance v13, Lfj0;

    invoke-direct {v13, v12}, Lfj0;-><init>(Lc74;)V

    invoke-virtual {p1, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMProgressUpdateRunnable()Lc74;

    move-result-object v12

    new-instance v13, Lgj0;

    invoke-direct {v13, v12}, Lgj0;-><init>(Lc74;)V

    invoke-virtual {p1, v13, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmp-long p1, v8, v6

    if-gtz p1, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMSeekbar()Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, v2, v5}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    return-void

    :cond_2
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lccc;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMEmptyContainer()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0, v6, v7, v5, v0}, Lcom/transsion/audio/widgets/BottomAudioBar;->initBanner$default(Lcom/transsion/audio/widgets/BottomAudioBar;JILjava/lang/Object;)V

    :cond_3
    const/16 p1, 0x64

    int-to-long v0, p1

    mul-long/2addr v10, v0

    div-long/2addr v10, v8

    long-to-float p1, v10

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMSeekbar()Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, p1, v5}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    return-void

    :catchall_0
    move-exception v10

    goto :goto_1

    :catchall_1
    move-exception v10

    move-wide v8, v6

    :goto_1
    if-eqz p1, :cond_4

    invoke-static {p0}, Lccc;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateCurrentItemInfo()V

    :cond_4
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMProgressUpdateRunnable()Lc74;

    move-result-object v11

    new-instance v12, Lfj0;

    invoke-direct {v12, v11}, Lfj0;-><init>(Lc74;)V

    invoke-virtual {p1, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMProgressUpdateRunnable()Lc74;

    move-result-object v11

    new-instance v12, Lgj0;

    invoke-direct {v12, v11}, Lgj0;-><init>(Lc74;)V

    invoke-virtual {p1, v12, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmp-long p1, v8, v6

    if-gtz p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0}, Lccc;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMEmptyContainer()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0, v6, v7, v5, v0}, Lcom/transsion/audio/widgets/BottomAudioBar;->initBanner$default(Lcom/transsion/audio/widgets/BottomAudioBar;JILjava/lang/Object;)V

    :cond_6
    div-long/2addr v6, v8

    long-to-float p1, v6

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMSeekbar()Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, p1, v5}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    throw v10
.end method

.method public final setMRestore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mRestore:Z

    return-void
.end method

.method public final setNeedShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->needShow:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final startOrStopMusicProgress(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mIsStart:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->runMusicProgressUpdate(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMProgressUpdateRunnable()Lc74;

    move-result-object p0

    new-instance v0, Lui0;

    invoke-direct {v0, p0}, Lui0;-><init>(Lc74;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public triggerFavoriteButton()V
    .locals 5

    invoke-super {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->triggerFavoriteButton()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMIsInFavorites()Z

    move-result v2

    const-string v3, "audio_favorite"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMIsInFavorites()Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string v2, "vd_audio_play"

    const-wide/16 v3, 0x246c

    invoke-static {v1, v0, v2, v3, v4}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lej0;

    invoke-direct {v0, p0}, Lej0;-><init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateFavoriteIcon()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->updateFavoriteIcon()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMFavoritesIv()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMIsInFavorites()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/audio/R$drawable;->ic_farvorited_on_audio:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/audio/R$drawable;->ic_farvorite_gray:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMFavoritesIv()Landroid/widget/ImageView;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMFavoritesIv()Landroid/widget/ImageView;

    move-result-object p0

    sget v0, Lcom/transsion/audio/R$drawable;->ic_farvorite_gray_disable:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method public updateItemInfo(Lcom/transsion/dbdata/beans/media/MediaItem;I)V
    .locals 0

    const-string p0, "mediaItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager;->P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    return-void
.end method

.method public final updateState()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    sput-object v0, Lcom/transsion/playercommon/adapter/SearchResultAdapter;->t:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    invoke-static {p0, v2, v3, v0, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setViewPagerAdapter$default(Lcom/transsion/playercommon/widgets/BaseBottomBar;JILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->loadPlayBackground(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateFavoriteIcon()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setEmpty(Z)V

    goto :goto_2

    :cond_2
    const-string v0, "BottomAudioBar"

    const-string v1, "updateState mCurrentMediaItem is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->setEmpty()V

    :goto_2
    return-void
.end method
