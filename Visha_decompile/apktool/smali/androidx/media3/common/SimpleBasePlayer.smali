.class public abstract Landroidx/media3/common/SimpleBasePlayer;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/SimpleBasePlayer$State;,
        Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;,
        Landroidx/media3/common/SimpleBasePlayer$MediaItemData;,
        Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;,
        Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;,
        Landroidx/media3/common/SimpleBasePlayer$LivePositionSupplier;,
        Landroidx/media3/common/SimpleBasePlayer$PeriodData;
    }
.end annotation


# static fields
.field private static final POSITION_DISCONTINUITY_THRESHOLD_MS:J = 0x3e8L


# instance fields
.field private final applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final applicationLooper:Landroid/os/Looper;

.field private final listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/common/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingOperations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lim5;",
            ">;"
        }
    .end annotation
.end field

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private released:Z

.field private state:Landroidx/media3/common/SimpleBasePlayer$State;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-direct {p0, p1, v0}, Landroidx/media3/common/SimpleBasePlayer;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroidx/media3/common/BasePlayer;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, p1, v0}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    .line 6
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    .line 7
    new-instance v0, Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Lrk9;

    invoke-direct {v1, p0}, Lrk9;-><init>(Landroidx/media3/common/SimpleBasePlayer;)V

    invoke-direct {v0, p1, p2, v1}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    .line 8
    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    return-void
.end method

.method public static synthetic A(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$34(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic B(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$40(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic C(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$37(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic D(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/common/SimpleBasePlayer;->lambda$addMediaItems$3(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;I)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$49(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic F(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$33(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic G(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->lambda$clearVideoOutput$21(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->lambda$decreaseDeviceVolume$26(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;III)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->lambda$moveMediaItems$4(Landroidx/media3/common/SimpleBasePlayer$State;III)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$48(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic K(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setTrackSelectionParameters$14(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setVideoSurface$17(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setDeviceVolume$23(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$47(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic O(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$54(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic P(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$43(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic Q(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$stop$12(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$59(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic S(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->lambda$increaseDeviceVolume$25(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$39(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic U(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$52(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic V(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$32(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic W(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$56(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic X(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$58(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic Y(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceView;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setVideoSurfaceView$19(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceView;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setVideoSurfaceHolder$18(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Landroidx/media3/common/SimpleBasePlayer;Ljava/util/List;Landroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setMediaItemsInternal$2(Ljava/util/List;Landroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Landroidx/media3/common/SimpleBasePlayer$State;F)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setVolume$16(Landroidx/media3/common/SimpleBasePlayer$State;F)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1200(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/media3/common/SimpleBasePlayer;->getPeriodIndexFromWindowPosition(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1400(Landroidx/media3/common/MediaItem;Landroidx/media3/common/Tracks;)Landroidx/media3/common/MediaMetadata;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->getCombinedMediaMetadata(Landroidx/media3/common/MediaItem;Landroidx/media3/common/Tracks;)Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$7000(Landroidx/media3/common/SimpleBasePlayer$State;)I
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$51(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic b0(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setShuffleModeEnabled$9(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static buildMutablePlaylistFromState(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/SimpleBasePlayer$State;",
            "Landroidx/media3/common/Timeline$Period;",
            "Landroidx/media3/common/Timeline$Window;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    instance-of v0, v0, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;->access$000(Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {p0, v1, p1, p2}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->access$4800(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static buildStateForNewPosition(Landroidx/media3/common/SimpleBasePlayer$State$Builder;Landroidx/media3/common/SimpleBasePlayer$State;JLandroidx/media3/common/Timeline;IJZLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-wide/from16 v4, p2

    move-object/from16 v6, p9

    invoke-static {v4, v5, v1, v6}, Landroidx/media3/common/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLandroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v4

    invoke-virtual/range {p4 .. p4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v7

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-nez v7, :cond_1

    if-eq v3, v11, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v7

    if-lt v3, v7, :cond_1

    :cond_0
    move-wide v12, v8

    move v3, v10

    goto :goto_0

    :cond_1
    move-wide/from16 v12, p6

    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    cmp-long v7, v12, v8

    if-nez v7, :cond_2

    invoke-virtual {v2, v3, v6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v12

    :cond_2
    iget-object v7, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_4

    invoke-virtual/range {p4 .. p4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v10

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v8

    :goto_2
    if-nez v7, :cond_5

    iget-object v9, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v14

    invoke-virtual {v9, v14, v6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v9

    iget-object v9, v9, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v2, v3, v6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v14

    iget-object v14, v14, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v9, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    move v9, v8

    goto :goto_3

    :cond_5
    move v9, v10

    :goto_3
    invoke-virtual/range {p4 .. p4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_6

    sget-object v8, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    invoke-virtual {v0, v2, v8, v15}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaylist(Landroidx/media3/common/Timeline;Landroidx/media3/common/Tracks;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    goto :goto_5

    :cond_6
    instance-of v14, v2, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    if-eqz v14, :cond_7

    move-object v8, v2

    check-cast v8, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    invoke-static {v8}, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;->access$000(Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    iget-object v10, v8, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->tracks:Landroidx/media3/common/Tracks;

    iget-object v8, v8, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v0, v2, v10, v8}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaylist(Landroidx/media3/common/Timeline;Landroidx/media3/common/Tracks;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    goto :goto_5

    :cond_7
    if-nez v7, :cond_8

    if-nez v9, :cond_8

    move v10, v8

    :cond_8
    if-eqz v10, :cond_9

    iget-object v8, v1, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    goto :goto_4

    :cond_9
    sget-object v8, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    :goto_4
    if-eqz v10, :cond_a

    iget-object v15, v1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    :cond_a
    invoke-virtual {v0, v2, v8, v15}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaylist(Landroidx/media3/common/Timeline;Landroidx/media3/common/Tracks;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    :goto_5
    if-nez v7, :cond_e

    if-nez v9, :cond_e

    cmp-long v2, v12, v4

    if-gez v2, :cond_b

    goto :goto_6

    :cond_b
    if-nez v2, :cond_d

    invoke-virtual {v0, v3}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    iget v2, v1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-eq v2, v11, :cond_c

    if-eqz p8, :cond_c

    iget-object v2, v1, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    iget-object v1, v1, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    goto :goto_7

    :cond_c
    invoke-virtual {v0, v11, v11}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v2

    invoke-static {v1, v6}, Landroidx/media3/common/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    goto :goto_7

    :cond_d
    invoke-static {v1, v6}, Landroidx/media3/common/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v6

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-object v1, v1, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v1

    sub-long v4, v12, v4

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v3}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v3

    invoke-virtual {v3, v11, v11}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentPositionMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v3

    invoke-static {v6, v7}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v3

    invoke-static {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    goto :goto_7

    :cond_e
    :goto_6
    invoke-virtual {v0, v3}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    invoke-virtual {v1, v11, v11}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentPositionMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    invoke-static {v12, v13}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;II)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/common/SimpleBasePlayer;->lambda$removeMediaItems$6(Landroidx/media3/common/SimpleBasePlayer$State;II)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setPlayWhenReady$1(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private clearVideoOutput(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleClearVideoOutput(Ljava/lang/Object;)Lim5;

    move-result-object p1

    new-instance v1, Lal9;

    invoke-direct {v1, v0}, Lal9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    invoke-direct {p0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$61(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic d0(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$41(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/common/SimpleBasePlayer;ZLandroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/media3/common/SimpleBasePlayer;->lambda$seekTo$10(ZLandroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$53(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic f(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->lambda$increaseDeviceVolume$24(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$60(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic g(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->lambda$decreaseDeviceVolume$27(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$38(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private static getCombinedMediaMetadata(Landroidx/media3/common/MediaItem;Landroidx/media3/common/Tracks;)Landroidx/media3/common/MediaMetadata;
    .locals 9

    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Tracks$Group;

    move v5, v2

    :goto_1
    iget v6, v4, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v5, v6, :cond_1

    invoke-virtual {v4, v5}, Landroidx/media3/common/Tracks$Group;->isTrackSelected(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v6

    iget-object v7, v6, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-eqz v7, :cond_0

    move v7, v2

    :goto_2
    iget-object v8, v6, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v8}, Landroidx/media3/common/Metadata;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    iget-object v8, v6, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v8, v7}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v8

    invoke-interface {v8, v0}, Landroidx/media3/common/Metadata$Entry;->populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaMetadata$Builder;->populate(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method private static getContentBufferedPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLandroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLandroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I
    .locals 1

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I
    .locals 6

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v1

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/SimpleBasePlayer;->getPeriodIndexFromWindowPosition(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result p0

    return p0
.end method

.method private static getCurrentPeriodOrAdPositionMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)J
    .locals 2

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p3}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide p0

    sub-long p0, v0, p0

    :goto_0
    return-wide p0
.end method

.method private static getMediaItemIndexInNewPlaylist(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)I
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result p0

    if-ge p2, p0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    return p2

    :cond_1
    invoke-virtual {p0, p2, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    const/4 p4, 0x1

    invoke-virtual {p0, p2, p3, p4}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    if-ne p2, v1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1, p0, p3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    iget p0, p0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    return p0
.end method

.method private static getMediaItemTransitionReason(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$State;IZLandroidx/media3/common/Timeline$Window;)I
    .locals 7

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const/4 v2, 0x3

    if-eq v1, v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v1

    invoke-virtual {v0, v1, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v4

    invoke-virtual {v1, v4, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    instance-of v4, v0, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-eqz v4, :cond_2

    instance-of v4, v1, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-nez v4, :cond_2

    return v3

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_5

    if-nez p2, :cond_3

    return v4

    :cond_3
    if-ne p2, v4, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    if-nez p2, :cond_6

    invoke-static {p0, p4}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v5

    invoke-static {p1, p4}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide p0

    cmp-long p0, v5, p0

    if-lez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    if-ne p2, v4, :cond_7

    if-eqz p3, :cond_7

    return v1

    :cond_7
    return v3
.end method

.method private static getPeriodIndexFromWindowPosition(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I
    .locals 6

    invoke-static {p2, p3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static getPeriodOrAdDurationMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)J
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget p1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-wide p0, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    invoke-virtual {p2, p1, p0}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide p0

    :goto_0
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getPositionDiscontinuityReason(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I
    .locals 11

    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    if-eqz v0, :cond_0

    iget p0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_2

    return v0

    :cond_2
    iget-object p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p2

    const/4 v1, 0x4

    if-eqz p2, :cond_3

    return v1

    :cond_3
    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-static {p0, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-static {p1, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, p2, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-eqz v3, :cond_4

    instance-of v3, v2, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-nez v3, :cond_4

    return v0

    :cond_4
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_8

    iget v3, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v7, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-ne v3, v7, :cond_8

    iget v3, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    iget v7, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    if-eq v3, v7, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p0, p2, p4, p3}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v7

    invoke-static {p1, v2, p4, p3}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v1

    sub-long v1, v7, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v9, 0x3e8

    cmp-long p1, v1, v9

    if-gez p1, :cond_6

    return v0

    :cond_6
    invoke-static {p0, p2, p4}, Landroidx/media3/common/SimpleBasePlayer;->getPeriodOrAdDurationMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide p0

    cmp-long p2, p0, v5

    if-eqz p2, :cond_7

    cmp-long p0, v7, p0

    if-ltz p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x5

    :goto_0
    return v4

    :cond_8
    :goto_1
    iget-object p1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v0, :cond_9

    return v1

    :cond_9
    invoke-static {p0, p2, p4, p3}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v0

    invoke-static {p0, p2, p4}, Landroidx/media3/common/SimpleBasePlayer;->getPeriodOrAdDurationMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide p0

    cmp-long p2, p0, v5

    if-eqz p2, :cond_a

    cmp-long p0, v0, p0

    if-ltz p0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v4, 0x3

    :goto_2
    return v4
.end method

.method private static getPositionInfo(Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Player$PositionInfo;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static/range {p0 .. p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v3

    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_0

    invoke-static {v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v4

    iget-object v6, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v2, v7}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget-object v6, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v6, v3, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v6

    iget-object v6, v6, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v7, v1, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    move v15, v4

    move-object v4, v2

    move-object v2, v6

    move v6, v15

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object v4, v2

    move-object v7, v4

    move v6, v5

    :goto_0
    if-eqz p1, :cond_2

    iget-wide v8, v0, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    iget v10, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-ne v10, v5, :cond_1

    move-wide v10, v8

    goto :goto_2

    :cond_1
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v10

    goto :goto_2

    :cond_2
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v8

    iget v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-eq v1, v5, :cond_3

    iget-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v10

    goto :goto_1

    :cond_3
    move-wide v10, v8

    :goto_1
    move-wide v15, v8

    move-wide v8, v10

    move-wide v10, v15

    :goto_2
    new-instance v12, Landroidx/media3/common/Player$PositionInfo;

    iget v13, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v14, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    move-object v0, v12

    move-object v1, v2

    move v2, v3

    move-object v3, v7

    move v5, v6

    move-wide v6, v8

    move-wide v8, v10

    move v10, v13

    move v11, v14

    invoke-direct/range {v0 .. v11}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v12
.end method

.method private static getPositionOrDefaultInMediaItem(JLandroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    iget-object p0, p2, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    iget-object p0, p2, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-static {p2}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide p0

    return-wide p0
.end method

.method private static getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/SimpleBasePlayer$State;",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;",
            "Landroidx/media3/common/Timeline$Period;",
            "Landroidx/media3/common/Timeline$Window;",
            ")",
            "Landroidx/media3/common/SimpleBasePlayer$State;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    invoke-direct {v4, p1}, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v1

    invoke-static {p1, v4, v1, p2, p3}, Landroidx/media3/common/SimpleBasePlayer;->getMediaItemIndexInNewPlaylist(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    move-wide v7, v2

    :goto_0
    const/4 v9, 0x1

    add-int/2addr v1, v9

    :goto_1
    if-ne v5, v6, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v10

    if-ge v1, v10, :cond_1

    invoke-static {p1, v4, v1, p2, p3}, Landroidx/media3/common/SimpleBasePlayer;->getMediaItemIndexInNewPlaylist(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)I

    move-result v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    if-eq p1, v9, :cond_2

    if-ne v5, v6, :cond_2

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    :cond_2
    const/4 p1, 0x1

    move-object v1, p0

    move-wide v6, v7

    move v8, p1

    move-object v9, p3

    invoke-static/range {v0 .. v9}, Landroidx/media3/common/SimpleBasePlayer;->buildStateForNewPosition(Landroidx/media3/common/SimpleBasePlayer$State$Builder;Landroidx/media3/common/SimpleBasePlayer$State;JLandroidx/media3/common/Timeline;IJZLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/SimpleBasePlayer$State;",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;IJ",
            "Landroidx/media3/common/Timeline$Window;",
            ")",
            "Landroidx/media3/common/SimpleBasePlayer$State;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    move-object v4, p1

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    invoke-direct {v1, p1}, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;-><init>(Ljava/util/List;)V

    move-object v4, v1

    :goto_0
    iget p1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result p1

    if-lt p2, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    :cond_3
    :goto_2
    iget-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    const/4 v8, 0x0

    move-object v1, p0

    move v5, p2

    move-wide v6, p3

    move-object v9, p5

    invoke-static/range {v0 .. v9}, Landroidx/media3/common/SimpleBasePlayer;->buildStateForNewPosition(Landroidx/media3/common/SimpleBasePlayer$State$Builder;Landroidx/media3/common/SimpleBasePlayer$State;JLandroidx/media3/common/Timeline;IJZLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Landroidx/media3/common/util/Size;
    .locals 2

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/media3/common/util/Size;->ZERO:Landroidx/media3/common/util/Size;

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/media3/common/util/Size;-><init>(II)V

    return-object v0
.end method

.method private static getTimelineChangeReason(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Window;)I
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    instance-of v5, v1, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-eqz v5, :cond_1

    instance-of v5, v4, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static synthetic h(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$44(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic h0(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$42(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic i(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$57(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic i0(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setVideoTextureView$20(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static isPlaying(Landroidx/media3/common/SimpleBasePlayer$State;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$50(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic j0(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setDeviceMuted$28(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$45(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic k0(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$36(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic l(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setPlaylistMetadata$15(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->lambda$release$13(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$addMediaItems$3(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 8

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {p1, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->buildMutablePlaylistFromState(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, v0, p3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/MediaItem;

    invoke-virtual {p0, v2}, Landroidx/media3/common/SimpleBasePlayer;->getPlaceholderMediaItemData(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {p1, v3, p2, p0}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0

    :cond_1
    iget v4, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iget-object p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$clearVideoOutput$21(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    sget-object v0, Landroidx/media3/common/util/Size;->ZERO:Landroidx/media3/common/util/Size;

    invoke-virtual {p0, v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$decreaseDeviceVolume$26(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$decreaseDeviceVolume$27(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$handleReplaceMediaItems$31(Lim5;Ljava/lang/Object;)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p0
.end method

.method private static synthetic lambda$increaseDeviceVolume$24(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$increaseDeviceVolume$25(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$moveMediaItems$4(Landroidx/media3/common/SimpleBasePlayer$State;III)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {p1, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->buildMutablePlaylistFromState(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Landroidx/media3/common/util/Util;->moveItems(Ljava/util/List;III)V

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {p1, v0, p2, p0}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V
    .locals 1

    new-instance v0, Landroidx/media3/common/Player$Events;

    invoke-direct {v0, p2}, Landroidx/media3/common/Player$Events;-><init>(Landroidx/media3/common/FlagSet;)V

    invoke-interface {p1, p0, v0}, Landroidx/media3/common/Player$Listener;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method private static synthetic lambda$prepare$7(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlayerError(Landroidx/media3/common/PlaybackException;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$release$13(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$removeMediaItems$6(Landroidx/media3/common/SimpleBasePlayer$State;II)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {p1, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->buildMutablePlaylistFromState(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroidx/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {p1, v0, p2, p0}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$replaceMediaItems$5(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;II)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 8

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {p1, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->buildMutablePlaylistFromState(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int v2, v1, p3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/MediaItem;

    invoke-virtual {p0, v3}, Landroidx/media3/common/SimpleBasePlayer;->getPlaceholderMediaItemData(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {p1, v0, p2, v1}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget v4, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iget-object p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    move-object v2, p1

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p1

    :goto_1
    if-ge p4, p3, :cond_2

    invoke-static {v0, p4, p3}, Landroidx/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {p1, v0, p2, p0}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method private synthetic lambda$seekTo$10(ZLandroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 6

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iget-object v5, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    move-object v0, p2

    move v2, p3

    move-wide v3, p4

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method private static synthetic lambda$setAudioAttributes$30(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/AudioAttributes;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setDeviceMuted$28(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsDeviceMuted(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setDeviceMuted$29(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsDeviceMuted(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setDeviceVolume$22(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setDeviceVolume$23(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setMediaItemsInternal$2(Ljava/util/List;Landroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/MediaItem;

    invoke-virtual {p0, v2}, Landroidx/media3/common/SimpleBasePlayer;->getPlaceholderMediaItemData(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    move-object v0, p2

    move v2, p3

    move-wide v3, p4

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJLandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setPlayWhenReady$1(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlayWhenReady(ZI)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setPlaybackParameters$11(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setPlaylistMetadata$15(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setRepeatMode$8(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setRepeatMode(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setShuffleModeEnabled$9(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setShuffleModeEnabled(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setTrackSelectionParameters$14(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setVideoSurface$17(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    invoke-virtual {p0, v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setVideoSurfaceHolder$18(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer;->getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Landroidx/media3/common/util/Size;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setVideoSurfaceView$19(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceView;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer;->getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Landroidx/media3/common/util/Size;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setVideoTextureView$20(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setVolume$16(Landroidx/media3/common/SimpleBasePlayer$State;F)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setVolume(F)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$stop$12(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 3

    invoke-virtual {p1}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {p1, p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    iget-object p1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setAdBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateStateAndInformListeners$32(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$33(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p3, p0}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(I)V

    invoke-interface {p3, p1, p2, p0}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$34(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$35(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$36(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/PlaybackException;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$37(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$38(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTracksChanged(Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$39(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$40(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onLoadingChanged(Z)V

    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onIsLoadingChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$41(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$42(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$43(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$44(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$45(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlaying(Landroidx/media3/common/SimpleBasePlayer$State;)Z

    move-result p0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$46(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$47(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$48(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$49(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onSeekBackIncrementChanged(J)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$50(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onSeekForwardIncrementChanged(J)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$51(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onMaxSeekToPreviousPositionChanged(J)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$52(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$53(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$54(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$55(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$56(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {p0}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result p0

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$57(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$58(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$59(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    iget-object v0, v0, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onCues(Ljava/util/List;)V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onCues(Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$60(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onMetadata(Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method private static synthetic lambda$updateStateAndInformListeners$61(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method private synthetic lambda$updateStateForPendingOperation$62(Lim5;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer;->released:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getState()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/media3/common/SimpleBasePlayer;->updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V

    :cond_0
    return-void
.end method

.method public static synthetic m(Landroidx/media3/common/SimpleBasePlayer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->postOrRunOnApplicationHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic n(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->lambda$prepare$7(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;II)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->lambda$replaceMediaItems$5(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;II)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Landroidx/media3/common/SimpleBasePlayer;Lim5;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateForPendingOperation$62(Lim5;)V

    return-void
.end method

.method private postOrRunOnApplicationHandler(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {p0, p1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static synthetic q(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$46(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic r(Lim5;Ljava/lang/Object;)Lim5;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$handleReplaceMediaItems$31(Lim5;Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->lambda$new$0(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V

    return-void
.end method

.method private setMediaItemsInternal(Ljava/util/List;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v5, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->handleSetMediaItems(Ljava/util/List;IJ)Lim5;

    move-result-object v0

    new-instance v1, Lhk9;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lhk9;-><init>(Landroidx/media3/common/SimpleBasePlayer;Ljava/util/List;Landroidx/media3/common/SimpleBasePlayer$State;IJ)V

    invoke-direct {p0, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method private shouldHandleCommand(I)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer;->released:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {p0, p1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic t(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setPlaybackParameters$11(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setRepeatMode$8(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-boolean v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->clearPositionDiscontinuity()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setNewlyRenderedFirstFrame(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    :cond_1
    iget-boolean v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget v3, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    iget v5, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    if-eq v3, v5, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    iget-object v5, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v6, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {v0, p1, p2, v5, v6}, Landroidx/media3/common/SimpleBasePlayer;->getPositionDiscontinuityReason(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result p2

    iget-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v0, p1, p2, p3, v6}, Landroidx/media3/common/SimpleBasePlayer;->getMediaItemTransitionReason(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$State;IZLandroidx/media3/common/Timeline$Window;)I

    move-result p3

    if-nez v5, :cond_4

    iget-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    iget-object v7, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v5, v6, v7}, Landroidx/media3/common/SimpleBasePlayer;->getTimelineChangeReason(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Window;)I

    move-result v5

    iget-object v6, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v7, Lmk9;

    invoke-direct {v7, p1, v5}, Lmk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;I)V

    invoke-virtual {v6, v2, v7}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_4
    const/4 v5, -0x1

    if-eq p2, v5, :cond_5

    iget-object v6, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v7, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {v0, v2, v6, v7}, Landroidx/media3/common/SimpleBasePlayer;->getPositionInfo(Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v2

    iget-boolean v6, p1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    iget-object v7, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v8, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {p1, v6, v7, v8}, Landroidx/media3/common/SimpleBasePlayer;->getPositionInfo(Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v6

    iget-object v7, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v8, Lkj9;

    invoke-direct {v8, p2, v2, v6}, Lkj9;-><init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    const/16 p2, 0xb

    invoke-virtual {v7, p2, v8}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_5
    if-eq p3, v5, :cond_7

    iget-object p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    goto :goto_2

    :cond_6
    iget-object p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v2

    iget-object v6, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p2, v2, v6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p2

    iget-object p2, p2, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    :goto_2
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Lwj9;

    invoke-direct {v6, p2, p3}, Lwj9;-><init>(Landroidx/media3/common/MediaItem;I)V

    invoke-virtual {v2, v4, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_7
    iget-object p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    iget-object p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lyj9;

    invoke-direct {p3, p1}, Lyj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v2, 0xa

    invoke-virtual {p2, v2, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    if-eqz p2, :cond_8

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lzj9;

    invoke-direct {p3, p1}, Lzj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    invoke-virtual {p2, v2, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_8
    iget-object p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iget-object p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    invoke-virtual {p2, p3}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lak9;

    invoke-direct {p3, p1}, Lak9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v2, 0x13

    invoke-virtual {p2, v2, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_9
    iget-object p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    iget-object p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-virtual {p2, p3}, Landroidx/media3/common/Tracks;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lck9;

    invoke-direct {p3, p1}, Lck9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v2, 0x2

    invoke-virtual {p2, v2, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_a
    iget-object p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p2, p3}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Ldk9;

    invoke-direct {p3, p1}, Ldk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v2, 0xe

    invoke-virtual {p2, v2, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_b
    iget-boolean p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    iget-boolean p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    if-eq p2, p3, :cond_c

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lek9;

    invoke-direct {p3, p1}, Lek9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v2, 0x3

    invoke-virtual {p2, v2, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_c
    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lfk9;

    invoke-direct {p3, p1}, Lfk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    invoke-virtual {p2, v5, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_e
    if-eqz v3, :cond_f

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lxk9;

    invoke-direct {p3, p1}, Lxk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v2, 0x4

    invoke-virtual {p2, v2, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_f
    if-nez v1, :cond_10

    iget p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    iget p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    if-eq p2, p3, :cond_11

    :cond_10
    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lil9;

    invoke-direct {p3, p1}, Lil9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v1, 0x5

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_11
    iget p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    iget p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    if-eq p2, p3, :cond_12

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lol9;

    invoke-direct {p3, p1}, Lol9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v1, 0x6

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_12
    invoke-static {v0}, Landroidx/media3/common/SimpleBasePlayer;->isPlaying(Landroidx/media3/common/SimpleBasePlayer$State;)Z

    move-result p2

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer;->isPlaying(Landroidx/media3/common/SimpleBasePlayer$State;)Z

    move-result p3

    if-eq p2, p3, :cond_13

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lpl9;

    invoke-direct {p3, p1}, Lpl9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v1, 0x7

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_13
    iget-object p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {p2, p3}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lql9;

    invoke-direct {p3, p1}, Lql9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0xc

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_14
    iget p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    iget p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    if-eq p2, p3, :cond_15

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lrl9;

    invoke-direct {p3, p1}, Lrl9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0x8

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_15
    iget-boolean p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    iget-boolean p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    if-eq p2, p3, :cond_16

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lgj9;

    invoke-direct {p3, p1}, Lgj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0x9

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_16
    iget-wide p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    iget-wide v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    cmp-long p2, p2, v1

    if-eqz p2, :cond_17

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lhj9;

    invoke-direct {p3, p1}, Lhj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0x10

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_17
    iget-wide p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    iget-wide v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    cmp-long p2, p2, v1

    if-eqz p2, :cond_18

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lij9;

    invoke-direct {p3, p1}, Lij9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0x11

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_18
    iget-wide p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    iget-wide v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    cmp-long p2, p2, v1

    if-eqz p2, :cond_19

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Ljj9;

    invoke-direct {p3, p1}, Ljj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0x12

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_19
    iget-object p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {p2, p3}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Llj9;

    invoke-direct {p3, p1}, Llj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0x14

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1a
    iget-object p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    iget-object p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {p2, p3}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1b

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lmj9;

    invoke-direct {p3, p1}, Lmj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0x19

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1b
    iget-object p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iget-object p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-virtual {p2, p3}, Landroidx/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lnj9;

    invoke-direct {p3, p1}, Lnj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0x1d

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1c
    iget-object p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p2, p3}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Loj9;

    invoke-direct {p3, p1}, Loj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0xf

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1d
    iget-boolean p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    if-eqz p2, :cond_1e

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lpj9;

    invoke-direct {p3}, Lpj9;-><init>()V

    const/16 v1, 0x1a

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1e
    iget-object p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    iget-object p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {p2, p3}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1f

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lrj9;

    invoke-direct {p3, p1}, Lrj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0x18

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1f
    iget p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    iget p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_20

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lsj9;

    invoke-direct {p3, p1}, Lsj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0x16

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_20
    iget p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    iget p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    if-ne p2, p3, :cond_21

    iget-boolean p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    iget-boolean p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    if-eq p2, p3, :cond_22

    :cond_21
    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Ltj9;

    invoke-direct {p3, p1}, Ltj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0x1e

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_22
    iget-object p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    iget-object p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Luj9;

    invoke-direct {p3, p1}, Luj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0x1b

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_23
    iget-object p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    iget-object p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    invoke-virtual {p2, p3}, Landroidx/media3/common/Metadata;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    iget-object p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    iget-wide p2, p2, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p2, v1

    if-eqz p2, :cond_24

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lvj9;

    invoke-direct {p3, p1}, Lvj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0x1c

    invoke-virtual {p2, v1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_24
    iget-object p2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    iget-object p3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {p2, p3}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_25

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance p3, Lxj9;

    invoke-direct {p3, p1}, Lxj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 p1, 0xd

    invoke-virtual {p2, p1, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_25
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method private updateStateForPendingOperation(Lim5;Lw6a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim5;",
            "Lw6a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;ZZ)V

    return-void
.end method

.method private updateStateForPendingOperation(Lim5;Lw6a;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim5;",
            "Lw6a;",
            "ZZ)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getState()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {p2}, Lw6a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/SimpleBasePlayer$State;

    .line 6
    invoke-virtual {p0, p2}, Landroidx/media3/common/SimpleBasePlayer;->getPlaceholderState(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p2

    .line 7
    invoke-direct {p0, p2, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V

    .line 8
    new-instance p2, Ljk9;

    invoke-direct {p2, p0, p1}, Ljk9;-><init>(Landroidx/media3/common/SimpleBasePlayer;Lim5;)V

    new-instance p3, Lkk9;

    invoke-direct {p3, p0}, Lkk9;-><init>(Landroidx/media3/common/SimpleBasePlayer;)V

    invoke-interface {p1, p2, p3}, Lim5;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_0
    return-void
.end method

.method public static synthetic v(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$55(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private verifyApplicationThreadAndInitState()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getState()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    :cond_0
    return-void
.end method

.method public static synthetic w(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setDeviceVolume$22(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$updateStateAndInformListeners$35(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic y(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setDeviceMuted$29(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/AudioAttributes;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->lambda$setAudioAttributes$30(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/AudioAttributes;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final addMediaItems(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    const/16 v2, 0x14

    invoke-direct {p0, v2}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleAddMediaItems(ILjava/util/List;)Lim5;

    move-result-object v1

    new-instance v2, Lnk9;

    invoke-direct {v2, p0, v0, p2, p1}, Lnk9;-><init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;I)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final clearVideoSurface()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearVideoSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 0
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final decreaseDeviceVolume()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1a

    .line 3
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->handleDecreaseDeviceVolume(I)Lim5;

    move-result-object v1

    new-instance v2, Lqk9;

    invoke-direct {v2, v0}, Lqk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 5
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final decreaseDeviceVolume(I)V
    .locals 2

    .line 6
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 7
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x22

    .line 8
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleDecreaseDeviceVolume(I)Lim5;

    move-result-object p1

    new-instance v1, Lkl9;

    invoke-direct {v1, v0}, Lkl9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 10
    invoke-direct {p0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final getApplicationLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public final getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object p0
.end method

.method public final getAvailableCommands()Landroidx/media3/common/Player$Commands;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    return-object p0
.end method

.method public final getBufferedPosition()J
    .locals 4

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentBufferedPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getContentBufferedPosition()J
    .locals 4

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v2, p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentPosition()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v0, p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentAdGroupIndex()I
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    return p0
.end method

.method public final getCurrentAdIndexInAdGroup()I
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    return p0
.end method

.method public final getCurrentCues()Landroidx/media3/common/text/CueGroup;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    return-object p0
.end method

.method public final getCurrentMediaItemIndex()I
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result p0

    return p0
.end method

.method public final getCurrentPeriodIndex()I
    .locals 2

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {v0, v1, p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result p0

    return p0
.end method

.method public final getCurrentPosition()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public final getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    return-object p0
.end method

.method public final getDeviceInfo()Landroidx/media3/common/DeviceInfo;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object p0
.end method

.method public final getDeviceVolume()I
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    return p0
.end method

.method public final getDuration()J
    .locals 3

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    invoke-virtual {v0, v1, p0}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxSeekToPreviousPosition()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    return-wide v0
.end method

.method public final getMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public getPlaceholderMediaItemData(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    .locals 2

    new-instance p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;-><init>(Landroidx/media3/common/SimpleBasePlayer$1;)V

    invoke-direct {p0, v0}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setMediaItem(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setIsDynamic(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setIsPlaceholder(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object p0

    return-object p0
.end method

.method public getPlaceholderState(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    return-object p1
.end method

.method public final getPlayWhenReady()Z
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    return p0
.end method

.method public final getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public final getPlaybackState()I
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    return p0
.end method

.method public final getPlaybackSuppressionReason()I
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    return p0
.end method

.method public final getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    return-object p0
.end method

.method public final getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public final getRepeatMode()I
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    return p0
.end method

.method public final getSeekBackIncrement()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public final getSeekForwardIncrement()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public final getShuffleModeEnabled()Z
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    return p0
.end method

.method public abstract getState()Landroidx/media3/common/SimpleBasePlayer$State;
.end method

.method public final getSurfaceSize()Landroidx/media3/common/util/Size;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    return-object p0
.end method

.method public final getTotalBufferedDuration()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    return-object p0
.end method

.method public final getVideoSize()Landroidx/media3/common/VideoSize;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    return-object p0
.end method

.method public final getVolume()F
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    return p0
.end method

.method public handleAddMediaItems(ILjava/util/List;)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleClearVideoOutput(Ljava/lang/Object;)Lim5;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_VIDEO_SURFACE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleDecreaseDeviceVolume(I)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleIncreaseDeviceVolume(I)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleMoveMediaItems(III)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handlePrepare()Lim5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing implementation to handle COMMAND_PREPARE"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleRelease()Lim5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing implementation to handle COMMAND_RELEASE"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleRemoveMediaItems(II)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleReplaceMediaItems(IILjava/util/List;)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)",
            "Lim5;"
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Landroidx/media3/common/SimpleBasePlayer;->handleAddMediaItems(ILjava/util/List;)Lim5;

    move-result-object p3

    if-ne p1, p2, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleRemoveMediaItems(II)Lim5;

    move-result-object p0

    new-instance p1, Lgl9;

    invoke-direct {p1, p0}, Lgl9;-><init>(Lim5;)V

    invoke-static {p3, p1}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lim5;Lgj;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public handleSeek(IJI)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI)",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle one of the COMMAND_SEEK_*"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleSetAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/AudioAttributes;",
            "Z)",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_AUDIO_ATTRIBUTES"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleSetDeviceMuted(ZI)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleSetDeviceVolume(II)Lim5;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_DEVICE_VOLUME or COMMAND_SET_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleSetMediaItems(Ljava/util/List;IJ)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_MEDIA_ITEM(S)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleSetPlayWhenReady(Z)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_PLAY_PAUSE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleSetPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/PlaybackParameters;",
            ")",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_SPEED_AND_PITCH"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleSetPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaMetadata;",
            ")",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_PLAYLIST_METADATA"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleSetRepeatMode(I)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_REPEAT_MODE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleSetShuffleModeEnabled(Z)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_SHUFFLE_MODE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleSetTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/TrackSelectionParameters;",
            ")",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_TRACK_SELECTION_PARAMETERS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleSetVideoOutput(Ljava/lang/Object;)Lim5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_VIDEO_SURFACE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleSetVolume(F)Lim5;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_VOLUME"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleStop()Lim5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lim5;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing implementation to handle COMMAND_STOP"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final increaseDeviceVolume()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1a

    .line 3
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->handleIncreaseDeviceVolume(I)Lim5;

    move-result-object v1

    new-instance v2, Lcl9;

    invoke-direct {v2, v0}, Lcl9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 5
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final increaseDeviceVolume(I)V
    .locals 2

    .line 6
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 7
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x22

    .line 8
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleIncreaseDeviceVolume(I)Lim5;

    move-result-object p1

    new-instance v1, Llk9;

    invoke-direct {v1, v0}, Llk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 10
    invoke-direct {p0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final invalidateState()V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer;->released:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getState()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isDeviceMuted()Z
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    return p0
.end method

.method public final isLoading()Z
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    return p0
.end method

.method public final isPlayingAd()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final moveMediaItems(III)V
    .locals 7

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    if-ltz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v3, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int p2, v5, p1

    sub-int/2addr v0, p2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eq p1, v5, :cond_3

    if-ne v6, p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v5, v6}, Landroidx/media3/common/SimpleBasePlayer;->handleMoveMediaItems(III)Lim5;

    move-result-object p2

    new-instance p3, Lbl9;

    move-object v1, p3

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lbl9;-><init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;III)V

    invoke-direct {p0, p2, p3}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final prepare()V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->handlePrepare()Lim5;

    move-result-object v1

    new-instance v2, Ljl9;

    invoke-direct {v2, v0}, Ljl9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final release()V
    .locals 4

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x20

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->handleRelease()Lim5;

    move-result-object v1

    new-instance v2, Lwk9;

    invoke-direct {v2, v0}, Lwk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer;->released:Z

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v2}, Landroidx/media3/common/util/ListenerSet;->release()V

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    invoke-virtual {v2}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-static {v0, v2}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v1, v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setAdBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    return-void
.end method

.method public final removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMediaItems(II)V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    const/16 v2, 0x14

    invoke-direct {p0, v2}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    if-lt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleRemoveMediaItems(II)Lim5;

    move-result-object v1

    new-instance v2, Lfl9;

    invoke-direct {v2, p0, v0, p1, p2}, Lfl9;-><init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;II)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final replaceMediaItems(IILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object v0, v3, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-le p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, p1, v5, p3}, Landroidx/media3/common/SimpleBasePlayer;->handleReplaceMediaItems(IILjava/util/List;)Lim5;

    move-result-object p2

    new-instance v0, Lgk9;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lgk9;-><init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;II)V

    invoke-direct {p0, p2, v0}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final seekTo(IJIZ)V
    .locals 12

    move-object v7, p0

    move v4, p1

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    const/4 v0, 0x0

    const/4 v8, 0x1

    const/4 v1, -0x1

    if-eq v4, v1, :cond_1

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v8

    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v3, v7, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    move/from16 v2, p4

    invoke-direct {p0, v2}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    if-eq v4, v1, :cond_4

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlayingAd()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v3, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v3, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    if-lt v4, v1, :cond_3

    goto :goto_2

    :cond_3
    move v9, v0

    goto :goto_3

    :cond_4
    :goto_2
    move v9, v8

    :goto_3
    invoke-virtual/range {p0 .. p4}, Landroidx/media3/common/SimpleBasePlayer;->handleSeek(IJI)Lim5;

    move-result-object v10

    new-instance v11, Lel9;

    move-object v0, v11

    move-object v1, p0

    move v2, v9

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lel9;-><init>(Landroidx/media3/common/SimpleBasePlayer;ZLandroidx/media3/common/SimpleBasePlayer$State;IJ)V

    xor-int/lit8 v0, v9, 0x1

    move/from16 v1, p5

    invoke-direct {p0, v10, v11, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;ZZ)V

    return-void
.end method

.method public final setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x23

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleSetAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)Lim5;

    move-result-object p2

    new-instance v1, Ldl9;

    invoke-direct {v1, v0, p1}, Ldl9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/AudioAttributes;)V

    invoke-direct {p0, p2, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setDeviceMuted(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1a

    .line 3
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetDeviceMuted(ZI)Lim5;

    move-result-object v1

    new-instance v2, Lzk9;

    invoke-direct {v2, v0, p1}, Lzk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Z)V

    .line 5
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setDeviceMuted(ZI)V
    .locals 2

    .line 6
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 7
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x22

    .line 8
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleSetDeviceMuted(ZI)Lim5;

    move-result-object p2

    new-instance v1, Lml9;

    invoke-direct {v1, v0, p1}, Lml9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Z)V

    .line 10
    invoke-direct {p0, p2, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setDeviceVolume(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x19

    .line 3
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetDeviceVolume(II)Lim5;

    move-result-object v1

    new-instance v2, Lqj9;

    invoke-direct {v2, v0, p1}, Lqj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;I)V

    .line 5
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setDeviceVolume(II)V
    .locals 2

    .line 6
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 7
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x21

    .line 8
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleSetDeviceVolume(II)Lim5;

    move-result-object p2

    new-instance v1, Lpk9;

    invoke-direct {v1, v0, p1}, Lpk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;I)V

    .line 10
    invoke-direct {p0, p2, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setMediaItems(Ljava/util/List;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 6
    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget p3, p2, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    .line 7
    iget-object p2, p2, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    move p2, p3

    move-wide p3, v0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->setMediaItemsInternal(Ljava/util/List;IJ)V

    return-void
.end method

.method public final setMediaItems(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    :goto_0
    if-eqz p2, :cond_1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    .line 3
    :cond_1
    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p2, p2, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v1

    .line 4
    :goto_1
    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->setMediaItemsInternal(Ljava/util/List;IJ)V

    return-void
.end method

.method public final setPlayWhenReady(Z)V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetPlayWhenReady(Z)Lim5;

    move-result-object v1

    new-instance v2, Lfj9;

    invoke-direct {v2, v0, p1}, Lfj9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Z)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Lim5;

    move-result-object v1

    new-instance v2, Lll9;

    invoke-direct {v2, v0, p1}, Lll9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/PlaybackParameters;)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x13

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Lim5;

    move-result-object v1

    new-instance v2, Lsk9;

    invoke-direct {v2, v0, p1}, Lsk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/MediaMetadata;)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setRepeatMode(I)V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0xf

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetRepeatMode(I)Lim5;

    move-result-object v1

    new-instance v2, Ltk9;

    invoke-direct {v2, v0, p1}, Ltk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;I)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setShuffleModeEnabled(Z)V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetShuffleModeEnabled(Z)Lim5;

    move-result-object v1

    new-instance v2, Lok9;

    invoke-direct {v2, v0, p1}, Lok9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Z)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Lim5;

    move-result-object v1

    new-instance v2, Lnl9;

    invoke-direct {v2, v0, p1}, Lnl9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/TrackSelectionParameters;)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setVideoSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoSurface()V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lim5;

    move-result-object p1

    new-instance v1, Lik9;

    invoke-direct {v1, v0}, Lik9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    invoke-direct {p0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoSurface()V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lim5;

    move-result-object v1

    new-instance v2, Lvk9;

    invoke-direct {v2, v0, p1}, Lvk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 3
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoSurface()V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lim5;

    move-result-object v1

    new-instance v2, Lyk9;

    invoke-direct {v2, v0, p1}, Lyk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceView;)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setVideoTextureView(Landroid/view/TextureView;)V
    .locals 4
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoSurface()V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/media3/common/util/Size;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroidx/media3/common/util/Size;-><init>(II)V

    goto :goto_0

    :cond_2
    sget-object v1, Landroidx/media3/common/util/Size;->ZERO:Landroidx/media3/common/util/Size;

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lim5;

    move-result-object p1

    new-instance v2, Lbk9;

    invoke-direct {v2, v0, v1}, Lbk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/util/Size;)V

    invoke-direct {p0, p1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final setVolume(F)V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x18

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVolume(F)Lim5;

    move-result-object v1

    new-instance v2, Luk9;

    invoke-direct {v2, v0, p1}, Luk9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;F)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final stop()V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->handleStop()Lim5;

    move-result-object v1

    new-instance v2, Lhl9;

    invoke-direct {v2, p0, v0}, Lhl9;-><init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;)V

    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lim5;Lw6a;)V

    return-void
.end method

.method public final verifyApplicationThread()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\n"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
