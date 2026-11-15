.class public abstract Lcom/transsion/playercommon/widgets/BaseBottomBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;
.implements Lh27$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/BaseBottomBar$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "Lh27$b;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000 \u00b5\u0001*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0002\u00b6\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0004\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0010J\u001f\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0010J\u000f\u0010\u001b\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0010J\u0017\u0010\u001e\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0019\u0010!\u001a\u00020\u000e2\u0008\u0010 \u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\'\u0010%\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008%\u0010&J\r\u0010\'\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\'\u0010\u0010J\u000f\u0010(\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008(\u0010\u0010J1\u0010-\u001a\u00020\u000e2 \u0010,\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0006\u0012\u0004\u0018\u00018\u00000*j\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`+0)H\u0007\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u00101\u001a\u00020\u000e2\u0006\u00100\u001a\u00020/H\u0016\u00a2\u0006\u0004\u00081\u00102J\u0017\u00105\u001a\u00020\u000e2\u0006\u00104\u001a\u000203H\u0014\u00a2\u0006\u0004\u00085\u00106J\u0017\u00109\u001a\u00020\u000e2\u0006\u00108\u001a\u000207H&\u00a2\u0006\u0004\u00089\u0010:J\u0019\u0010;\u001a\u00020\u000e2\u0008\u0010 \u001a\u0004\u0018\u00018\u0000H&\u00a2\u0006\u0004\u0008;\u0010\"J\u000f\u0010<\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008<\u0010\u0010J\u001f\u0010=\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\nH&\u00a2\u0006\u0004\u0008=\u0010>J%\u0010C\u001a\u00020\u000e2\u0006\u0010@\u001a\u00020?2\u0006\u0010A\u001a\u0002072\u0006\u0010B\u001a\u00020\u001c\u00a2\u0006\u0004\u0008C\u0010DJ\u001f\u0010F\u001a\u00020\u000e2\u0008\u0010@\u001a\u0004\u0018\u00010?2\u0006\u0010E\u001a\u00020\n\u00a2\u0006\u0004\u0008F\u0010GR$\u0010H\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010\"R\u0017\u0010M\u001a\u00020?8\u0006\u00a2\u0006\u000c\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010PR\"\u0010Q\u001a\u0002078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Q\u0010R\u001a\u0004\u0008Q\u0010S\"\u0004\u0008T\u0010:R\u0017\u0010V\u001a\u00020U8\u0006\u00a2\u0006\u000c\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010YR\u0017\u0010Z\u001a\u00020U8\u0006\u00a2\u0006\u000c\n\u0004\u0008Z\u0010W\u001a\u0004\u0008[\u0010YR\u0017\u0010\\\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\\\u0010]\u001a\u0004\u0008^\u0010_R\u0017\u0010`\u001a\u00020?8\u0006\u00a2\u0006\u000c\n\u0004\u0008`\u0010N\u001a\u0004\u0008a\u0010PR\u0017\u0010c\u001a\u00020b8\u0006\u00a2\u0006\u000c\n\u0004\u0008c\u0010d\u001a\u0004\u0008e\u0010fR\u0017\u0010g\u001a\u00020?8\u0006\u00a2\u0006\u000c\n\u0004\u0008g\u0010N\u001a\u0004\u0008h\u0010PR\u0017\u0010i\u001a\u00020?8\u0006\u00a2\u0006\u000c\n\u0004\u0008i\u0010N\u001a\u0004\u0008j\u0010PR\u0017\u0010l\u001a\u00020k8\u0006\u00a2\u0006\u000c\n\u0004\u0008l\u0010m\u001a\u0004\u0008n\u0010oR\u0017\u0010p\u001a\u00020k8\u0006\u00a2\u0006\u000c\n\u0004\u0008p\u0010m\u001a\u0004\u0008q\u0010oR\u0017\u0010r\u001a\u00020U8\u0006\u00a2\u0006\u000c\n\u0004\u0008r\u0010W\u001a\u0004\u0008s\u0010YR\u0017\u0010t\u001a\u00020U8\u0006\u00a2\u0006\u000c\n\u0004\u0008t\u0010W\u001a\u0004\u0008u\u0010YR\"\u0010v\u001a\u00020U8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008v\u0010W\u001a\u0004\u0008w\u0010Y\"\u0004\u0008x\u0010yR\u0017\u0010z\u001a\u00020U8\u0006\u00a2\u0006\u000c\n\u0004\u0008z\u0010W\u001a\u0004\u0008{\u0010YR\u0017\u0010|\u001a\u00020U8\u0006\u00a2\u0006\u000c\n\u0004\u0008|\u0010W\u001a\u0004\u0008}\u0010YR\u001a\u0010\u007f\u001a\u00020~8\u0006\u00a2\u0006\u000f\n\u0005\u0008\u007f\u0010\u0080\u0001\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u001a\u0010\u0083\u0001\u001a\u00020\u00038\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0083\u0001\u0010]\u001a\u0005\u0008\u0084\u0001\u0010_R\u001a\u0010\u0085\u0001\u001a\u00020U8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0085\u0001\u0010W\u001a\u0005\u0008\u0086\u0001\u0010YR\u001a\u0010\u0087\u0001\u001a\u00020U8\u0006\u00a2\u0006\u000e\n\u0005\u0008\u0087\u0001\u0010W\u001a\u0005\u0008\u0088\u0001\u0010YR#\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0089\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u008a\u0001\u0010\u008b\u0001\u001a\u0006\u0008\u008c\u0001\u0010\u008d\u0001R2\u0010\u008f\u0001\u001a\u000b\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u008e\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001\u001a\u0006\u0008\u0091\u0001\u0010\u0092\u0001\"\u0006\u0008\u0093\u0001\u0010\u0094\u0001R%\u0010\u0096\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0095\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001\u001a\u0006\u0008\u0098\u0001\u0010\u0099\u0001R&\u0010\u009a\u0001\u001a\u0002078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u009a\u0001\u0010R\u001a\u0005\u0008\u009b\u0001\u0010S\"\u0005\u0008\u009c\u0001\u0010:R\"\u0010\u009d\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u000e0)8\u0006\u00a2\u0006\u0010\n\u0006\u0008\u009d\u0001\u0010\u009e\u0001\u001a\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R&\u0010\u00a1\u0001\u001a\u0002078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a1\u0001\u0010R\u001a\u0005\u0008\u00a2\u0001\u0010S\"\u0005\u0008\u00a3\u0001\u0010:R&\u0010\u00a4\u0001\u001a\u0002078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a4\u0001\u0010R\u001a\u0005\u0008\u00a5\u0001\u0010S\"\u0005\u0008\u00a6\u0001\u0010:R&\u0010\u00a7\u0001\u001a\u0002078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a7\u0001\u0010R\u001a\u0005\u0008\u00a7\u0001\u0010S\"\u0005\u0008\u00a8\u0001\u0010:R&\u0010\u00a9\u0001\u001a\u0002078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a9\u0001\u0010R\u001a\u0005\u0008\u00a9\u0001\u0010S\"\u0005\u0008\u00aa\u0001\u0010:R\u0019\u0010\u00ab\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R\u0016\u0010\u00ad\u0001\u001a\u0002078\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00ad\u0001\u0010RR\u001d\u0010\u00af\u0001\u001a\u00030\u00ae\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\u001a\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R\u001e\u0010\u00b4\u0001\u001a\t\u0012\u0004\u0012\u00020\n0\u0095\u00018&X\u00a6\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00b3\u0001\u0010\u0099\u0001\u00a8\u0006\u00b7\u0001"
    }
    d2 = {
        "Lcom/transsion/playercommon/widgets/BaseBottomBar;",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "T",
        "Landroid/widget/FrameLayout;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "Lh27$b;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lzfb;",
        "k",
        "()V",
        "setPlayListImage",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "Landroidx/lifecycle/LifecycleOwner;",
        "source",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "event",
        "onStateChanged",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V",
        "initClick",
        "updateFavoriteIcon",
        "",
        "delay",
        "setViewPagerAdapter",
        "(J)V",
        "item",
        "loadPlayBackground",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;)V",
        "mediaItem",
        "position",
        "playItem",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;IJ)V",
        "cancelPendingPlayItem",
        "triggerFavoriteButton",
        "Lkotlin/Function0;",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "runnable",
        "updateFavoriteList",
        "(Lc74;)V",
        "Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;",
        "screenType",
        "setPlayControlContainerState",
        "(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "",
        "forceUpdate",
        "runMusicProgressUpdate",
        "(Z)V",
        "loadCover",
        "changeViewpager",
        "updateItemInfo",
        "(Lcom/transsion/dbdata/beans/media/MediaItem;I)V",
        "Landroid/view/View;",
        "view",
        "isDown",
        "animationTime",
        "onPressAnimation",
        "(Landroid/view/View;ZJ)V",
        "visibility",
        "setVisibilityIfNeeded",
        "(Landroid/view/View;I)V",
        "mCurrentMediaItem",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "getMCurrentMediaItem",
        "()Lcom/transsion/dbdata/beans/media/MediaItem;",
        "setMCurrentMediaItem",
        "container",
        "Landroid/view/View;",
        "getContainer",
        "()Landroid/view/View;",
        "isForceLight",
        "Z",
        "()Z",
        "setForceLight",
        "Landroid/widget/ImageView;",
        "mPlayListButton",
        "Landroid/widget/ImageView;",
        "getMPlayListButton",
        "()Landroid/widget/ImageView;",
        "mPlayClose",
        "getMPlayClose",
        "mFlPlay",
        "Landroid/widget/FrameLayout;",
        "getMFlPlay",
        "()Landroid/widget/FrameLayout;",
        "mPlayButton",
        "getMPlayButton",
        "Landroid/widget/SeekBar;",
        "mSeekbar",
        "Landroid/widget/SeekBar;",
        "getMSeekbar",
        "()Landroid/widget/SeekBar;",
        "mEmptyContainer",
        "getMEmptyContainer",
        "mVpContainer",
        "getMVpContainer",
        "Landroid/widget/TextView;",
        "mPlayingItemTitle",
        "Landroid/widget/TextView;",
        "getMPlayingItemTitle",
        "()Landroid/widget/TextView;",
        "mPlayingItemArtist",
        "getMPlayingItemArtist",
        "mPlayStatusPause",
        "getMPlayStatusPause",
        "mPlayStatusStart",
        "getMPlayStatusStart",
        "mFavoritesIv",
        "getMFavoritesIv",
        "setMFavoritesIv",
        "(Landroid/widget/ImageView;)V",
        "mAudioPlayPreviousIv",
        "getMAudioPlayPreviousIv",
        "mAudioPlayNextIv",
        "getMAudioPlayNextIv",
        "Landroid/widget/LinearLayout;",
        "mPlayControlContainer",
        "Landroid/widget/LinearLayout;",
        "getMPlayControlContainer",
        "()Landroid/widget/LinearLayout;",
        "mCircleGroup",
        "getMCircleGroup",
        "mSquareCover",
        "getMSquareCover",
        "mMusicCircleImageView",
        "getMMusicCircleImageView",
        "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;",
        "mViewPager",
        "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;",
        "getMViewPager",
        "()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;",
        "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;",
        "mBottomViewAdapter",
        "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;",
        "getMBottomViewAdapter",
        "()Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;",
        "setMBottomViewAdapter",
        "(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)V",
        "",
        "mFavoriteList",
        "Ljava/util/List;",
        "getMFavoriteList",
        "()Ljava/util/List;",
        "mIsInFavorites",
        "getMIsInFavorites",
        "setMIsInFavorites",
        "mProgressUpdateRunnable",
        "Lc74;",
        "getMProgressUpdateRunnable",
        "()Lc74;",
        "mManualChange",
        "getMManualChange",
        "setMManualChange",
        "mUserGestureScroll",
        "getMUserGestureScroll",
        "setMUserGestureScroll",
        "isShouldUpdate",
        "setShouldUpdate",
        "isEmpty",
        "setEmpty",
        "mLastOrientation",
        "I",
        "mIsTabletDevice",
        "Landroid/os/Handler;",
        "mHandler",
        "Landroid/os/Handler;",
        "getMHandler",
        "()Landroid/os/Handler;",
        "getNotificationList",
        "notificationList",
        "Companion",
        "b",
        "playercommon_release"
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
.field public static final Companion:Lcom/transsion/playercommon/widgets/BaseBottomBar$b;

.field private static final MSG_UPDATE_BANNER:I = 0x1

.field private static final MSG_UPDATE_COVER:I = 0x2

.field private static final MSG_UPDATE_ITEM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BaseBottomBar"


# instance fields
.field private final container:Landroid/view/View;

.field private isEmpty:Z

.field private isForceLight:Z

.field private isShouldUpdate:Z

.field private final mAudioPlayNextIv:Landroid/widget/ImageView;

.field private final mAudioPlayPreviousIv:Landroid/widget/ImageView;

.field private mBottomViewAdapter:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mCircleGroup:Landroid/widget/FrameLayout;

.field private mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mEmptyContainer:Landroid/view/View;

.field private final mFavoriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mFavoritesIv:Landroid/widget/ImageView;

.field private final mFlPlay:Landroid/widget/FrameLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mIsInFavorites:Z

.field private final mIsTabletDevice:Z

.field private mLastOrientation:I

.field private volatile mManualChange:Z

.field private final mMusicCircleImageView:Landroid/widget/ImageView;

.field private final mPlayButton:Landroid/view/View;

.field private final mPlayClose:Landroid/widget/ImageView;

.field private final mPlayControlContainer:Landroid/widget/LinearLayout;

.field private final mPlayListButton:Landroid/widget/ImageView;

.field private final mPlayStatusPause:Landroid/widget/ImageView;

.field private final mPlayStatusStart:Landroid/widget/ImageView;

.field private final mPlayingItemArtist:Landroid/widget/TextView;

.field private final mPlayingItemTitle:Landroid/widget/TextView;

.field private final mProgressUpdateRunnable:Lc74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc74;"
        }
    .end annotation
.end field

.field private final mSeekbar:Landroid/widget/SeekBar;

.field private final mSquareCover:Landroid/widget/ImageView;

.field private volatile mUserGestureScroll:Z

.field private final mViewPager:Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mVpContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/widgets/BaseBottomBar$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->Companion:Lcom/transsion/playercommon/widgets/BaseBottomBar$b;

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/playercommon/widgets/BaseBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/transsion/playercommon/widgets/BaseBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoriteList:Ljava/util/List;

    .line 6
    new-instance p2, Lk90;

    invoke-direct {p2, p0}, Lk90;-><init>(Lcom/transsion/playercommon/widgets/BaseBottomBar;)V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mProgressUpdateRunnable:Lc74;

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isShouldUpdate:Z

    const/4 p3, -0x1

    .line 8
    iput p3, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mLastOrientation:I

    .line 9
    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mIsTabletDevice:Z

    .line 10
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Ll90;

    invoke-direct {v1, p0}, Ll90;-><init>(Lcom/transsion/playercommon/widgets/BaseBottomBar;)V

    invoke-direct {p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mHandler:Landroid/os/Handler;

    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/transsion/playercommon/R$layout;->bottom_operate_bar:I

    invoke-virtual {p3, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->container:Landroid/view/View;

    .line 12
    sget v0, Lcom/transsion/playercommon/R$id;->viewPager:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mViewPager:Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    .line 13
    sget v0, Lcom/transsion/playercommon/R$id;->tv_item_info:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mEmptyContainer:Landroid/view/View;

    .line 14
    sget v0, Lcom/transsion/playercommon/R$id;->ll_player:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mVpContainer:Landroid/view/View;

    .line 15
    sget v0, Lcom/transsion/playercommon/R$id;->fl_cover:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mCircleGroup:Landroid/widget/FrameLayout;

    .line 16
    sget v0, Lcom/transsion/playercommon/R$id;->iv_cover:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mMusicCircleImageView:Landroid/widget/ImageView;

    .line 17
    sget v0, Lcom/transsion/playercommon/R$id;->video_cover:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mSquareCover:Landroid/widget/ImageView;

    .line 18
    sget v0, Lcom/transsion/playercommon/R$id;->playing_music_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayingItemTitle:Landroid/widget/TextView;

    .line 19
    sget v0, Lcom/transsion/playercommon/R$id;->playing_music_artist:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayingItemArtist:Landroid/widget/TextView;

    .line 20
    sget v0, Lcom/transsion/playercommon/R$id;->fl_play:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFlPlay:Landroid/widget/FrameLayout;

    .line 21
    sget v0, Lcom/transsion/playercommon/R$id;->play_button:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayButton:Landroid/view/View;

    .line 22
    sget v0, Lcom/transsion/playercommon/R$id;->seekbar_play:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 24
    sget v0, Lcom/transsion/playercommon/R$id;->play_status_playing:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayStatusStart:Landroid/widget/ImageView;

    .line 25
    sget v0, Lcom/transsion/playercommon/R$id;->play_status_pause:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayStatusPause:Landroid/widget/ImageView;

    .line 26
    sget v0, Lcom/transsion/playercommon/R$id;->play_list:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayListButton:Landroid/widget/ImageView;

    .line 27
    sget v0, Lcom/transsion/playercommon/R$id;->play_close:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayClose:Landroid/widget/ImageView;

    .line 28
    sget p3, Lcom/transsion/playercommon/R$id;->iv_favorites:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoritesIv:Landroid/widget/ImageView;

    .line 29
    sget p3, Lcom/transsion/playercommon/R$id;->ll_play_control:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayControlContainer:Landroid/widget/LinearLayout;

    .line 30
    sget p3, Lcom/transsion/playercommon/R$id;->iv_audio_play_previous:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mAudioPlayPreviousIv:Landroid/widget/ImageView;

    .line 31
    sget p3, Lcom/transsion/playercommon/R$id;->iv_audio_play_next:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mAudioPlayNextIv:Landroid/widget/ImageView;

    .line 32
    invoke-static {p1}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object p3

    const-string v0, "getScreeType(...)"

    invoke-static {p3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setPlayControlContainerState(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    .line 33
    move-object p3, p1

    check-cast p3, Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v0, Lm90;

    invoke-direct {v0, p0}, Lm90;-><init>(Lcom/transsion/playercommon/widgets/BaseBottomBar;)V

    const-string v1, "BaseBottomBar"

    invoke-virtual {p3, v1, v0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->addOnScreenTypeListener(Ljava/lang/Object;La39;)V

    .line 34
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->initClick()V

    .line 35
    new-instance p3, Lcom/transsion/playercommon/widgets/BaseBottomBar$a;

    invoke-direct {p3, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 36
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 37
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 38
    invoke-virtual {p0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 39
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->k()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/BaseBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Le74;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->o(Le74;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/playercommon/widgets/BaseBottomBar;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setPlayControlContainerState$lambda$13(Lcom/transsion/playercommon/widgets/BaseBottomBar;)V

    return-void
.end method

.method public static synthetic c(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->q(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/playercommon/widgets/BaseBottomBar;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->l(Lcom/transsion/playercommon/widgets/BaseBottomBar;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lc74;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->n(Lc74;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/playercommon/widgets/BaseBottomBar;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->j(Lcom/transsion/playercommon/widgets/BaseBottomBar;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/playercommon/widgets/BaseBottomBar;Ljava/util/ArrayList;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->p(Lcom/transsion/playercommon/widgets/BaseBottomBar;Ljava/util/ArrayList;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/playercommon/widgets/BaseBottomBar;)Lzfb;
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->m(Lcom/transsion/playercommon/widgets/BaseBottomBar;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lc74;Lcom/transsion/playercommon/widgets/BaseBottomBar;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->r(Lc74;Lcom/transsion/playercommon/widgets/BaseBottomBar;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lcom/transsion/playercommon/widgets/BaseBottomBar;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 0

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setPlayControlContainerState(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    invoke-static {}, Lpp3;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mManualChange:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mUserGestureScroll:Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->cancelPendingPlayItem()V

    :cond_0
    return-void
.end method

.method public static final l(Lcom/transsion/playercommon/widgets/BaseBottomBar;Landroid/os/Message;)Z
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem"

    invoke-static {v0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->updateItemInfo(Lcom/transsion/dbdata/beans/media/MediaItem;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->loadCover(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->changeViewpager()V

    :goto_0
    return v1
.end method

.method public static final m(Lcom/transsion/playercommon/widgets/BaseBottomBar;)Lzfb;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->runMusicProgressUpdate(Z)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final n(Lc74;)V
    .locals 0

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final o(Le74;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final p(Lcom/transsion/playercommon/widgets/BaseBottomBar;Ljava/util/ArrayList;)Lzfb;
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoriteList:Ljava/util/List;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->updateFavoriteIcon()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final q(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final r(Lc74;Lcom/transsion/playercommon/widgets/BaseBottomBar;)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method private static final setPlayControlContainerState$lambda$13(Lcom/transsion/playercommon/widgets/BaseBottomBar;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mIsTabletDevice:Z

    const-string v2, "BaseBottomBar"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v1, "setPlayControlContainerState is tablet "

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoritesIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mAudioPlayPreviousIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mAudioPlayNextIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lb39;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "setPlayControlContainerState is fold "

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoritesIv:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mAudioPlayPreviousIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mAudioPlayNextIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v1, v4}, Loc2;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Loc2;->a(Landroid/content/Context;F)I

    move-result v4

    const-string v5, "setPlayControlContainerState is flat "

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoritesIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mAudioPlayPreviousIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mAudioPlayNextIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayControlContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayControlContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/transsion/playercommon/R$drawable;->divider_w_space_28:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method public static synthetic setViewPagerAdapter$default(Lcom/transsion/playercommon/widgets/BaseBottomBar;JILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setViewPagerAdapter(J)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setViewPagerAdapter"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final cancelPendingPlayItem()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public abstract changeViewpager()V
.end method

.method public varargs abstract synthetic didReceivedNotification(I[Ljava/lang/Object;)V
.end method

.method public final getContainer()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->container:Landroid/view/View;

    return-object p0
.end method

.method public final getMAudioPlayNextIv()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mAudioPlayNextIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMAudioPlayPreviousIv()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mAudioPlayPreviousIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMBottomViewAdapter()Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mBottomViewAdapter:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    return-object p0
.end method

.method public final getMCircleGroup()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mCircleGroup:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public final getMEmptyContainer()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mEmptyContainer:Landroid/view/View;

    return-object p0
.end method

.method public final getMFavoriteList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoriteList:Ljava/util/List;

    return-object p0
.end method

.method public final getMFavoritesIv()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoritesIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMFlPlay()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFlPlay:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final getMHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getMIsInFavorites()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mIsInFavorites:Z

    return p0
.end method

.method public final getMManualChange()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mManualChange:Z

    return p0
.end method

.method public final getMMusicCircleImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mMusicCircleImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMPlayButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayButton:Landroid/view/View;

    return-object p0
.end method

.method public final getMPlayClose()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayClose:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMPlayControlContainer()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayControlContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final getMPlayListButton()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayListButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMPlayStatusPause()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayStatusPause:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMPlayStatusStart()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayStatusStart:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMPlayingItemArtist()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayingItemArtist:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getMPlayingItemTitle()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayingItemTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getMProgressUpdateRunnable()Lc74;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc74;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mProgressUpdateRunnable:Lc74;

    return-object p0
.end method

.method public final getMSeekbar()Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mSeekbar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public final getMSquareCover()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mSquareCover:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMUserGestureScroll()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mUserGestureScroll:Z

    return p0
.end method

.method public final getMViewPager()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mViewPager:Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;

    return-object p0
.end method

.method public final getMVpContainer()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mVpContainer:Landroid/view/View;

    return-object p0
.end method

.method public abstract getNotificationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public initClick()V
    .locals 0

    return-void
.end method

.method public final isEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isEmpty:Z

    return p0
.end method

.method public final isForceLight()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isForceLight:Z

    return p0
.end method

.method public final isShouldUpdate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isShouldUpdate:Z

    return p0
.end method

.method public final k()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvha;->c(Landroid/content/Context;)Lcom/transsion/dbdata/beans/ThemeData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->container:Landroid/view/View;

    sget v2, Lcom/transsion/playercommon/R$id;->audio_blur_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    sget v2, Lcom/transsion/playercommon/R$drawable;->bg_music_mini_shade:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {v0}, Lvha;->t(Lcom/transsion/dbdata/beans/ThemeData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isForceLight:Z

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->container:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->v_top_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$drawable;->bottom_bar_top_line_light:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayClose:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_min_bar_close_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$drawable;->minibar_seekbar_progress_drawable_light:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "BaseBottomBar"

    const-string v1, "initBarColor: force light"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayStatusStart:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_public_pause_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayStatusPause:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_public_play_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setPlayListImage()V

    :cond_0
    return-void
.end method

.method public abstract loadCover(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public declared-synchronized loadPlayBackground(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "BaseBottomBar"

    const-string v1, "loadPlayBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const-string v0, "BaseBottomBar"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getNotificationList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lj27;->a(Ljava/util/List;Lh27$b;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mLastOrientation:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mLastOrientation:I

    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mIsTabletDevice:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object p1

    const-string v0, "getScreeType(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setPlayControlContainerState(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const-string v0, "onDetachedFromWindow"

    const-string v1, "BaseBottomBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getNotificationList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lj27;->b(Ljava/util/List;Lh27$b;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mProgressUpdateRunnable:Lc74;

    new-instance v3, Lo90;

    invoke-direct {v3, v2}, Lo90;-><init>(Lc74;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.transsion.playercommon.activities.BaseActivity"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->removeScreenTypeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPressAnimation(Landroid/view/View;ZJ)V
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    const-string p0, "source"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "event"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onStateChanged event = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseBottomBar"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public playItem(Lcom/transsion/dbdata/beans/media/MediaItem;IJ)V
    .locals 2

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public abstract runMusicProgressUpdate(Z)V
.end method

.method public final setEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isEmpty:Z

    return-void
.end method

.method public final setForceLight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isForceLight:Z

    return-void
.end method

.method public final setMBottomViewAdapter(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mBottomViewAdapter:Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;

    return-void
.end method

.method public final setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method

.method public final setMFavoritesIv(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoritesIv:Landroid/widget/ImageView;

    return-void
.end method

.method public final setMIsInFavorites(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mIsInFavorites:Z

    return-void
.end method

.method public final setMManualChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mManualChange:Z

    return-void
.end method

.method public final setMUserGestureScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mUserGestureScroll:Z

    return-void
.end method

.method public setPlayControlContainerState(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    const-string v0, "screenType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayControlContainer:Landroid/widget/LinearLayout;

    new-instance v0, Ln90;

    invoke-direct {v0, p0}, Ln90;-><init>(Lcom/transsion/playercommon/widgets/BaseBottomBar;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setPlayListImage()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mPlayListButton:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isForceLight:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/playercommon/R$drawable;->play_list_operate_bar_light:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/playercommon/R$drawable;->play_list_operate_bar:I

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final setShouldUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->isShouldUpdate:Z

    return-void
.end method

.method public final declared-synchronized setViewPagerAdapter(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BaseBottomBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewPagerAdapter delay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setVisibilityIfNeeded(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eq p0, p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public triggerFavoriteButton()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mIsInFavorites:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoriteList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoriteList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->updateFavoriteIcon()V

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mIsInFavorites:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoritesIv:Landroid/widget/ImageView;

    invoke-static {v0, p0}, Lcd;->g(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoritesIv:Landroid/widget/ImageView;

    invoke-static {p0}, Lcd;->i(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public updateFavoriteIcon()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mCurrentMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mFavoriteList:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v3, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/BaseBottomBar;->mIsInFavorites:Z

    return-void
.end method

.method public final updateFavoriteList(Lc74;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc74;",
            ")V"
        }
    .end annotation

    const-string v0, "runnable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.transsion.playercommon.activities.BaseActivity"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lg90;

    invoke-direct {v1, p1}, Lg90;-><init>(Lc74;)V

    new-instance p1, Lh90;

    invoke-direct {p1, v1}, Lh90;-><init>(Le74;)V

    invoke-virtual {v0, p1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Li90;

    invoke-direct {v0, p0}, Li90;-><init>(Lcom/transsion/playercommon/widgets/BaseBottomBar;)V

    new-instance p0, Lj90;

    invoke-direct {p0, v0}, Lj90;-><init>(Le74;)V

    invoke-virtual {p1, p0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public abstract updateItemInfo(Lcom/transsion/dbdata/beans/media/MediaItem;I)V
.end method
