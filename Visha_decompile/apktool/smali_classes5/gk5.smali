.class public final Lgk5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldx4;


# static fields
.field public static final a:Lgk5;

.field public static final b:Lyi5;

.field public static final c:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgk5;

    invoke-direct {v0}, Lgk5;-><init>()V

    sput-object v0, Lgk5;->a:Lgk5;

    new-instance v0, Lck5;

    invoke-direct {v0}, Lck5;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lgk5;->b:Lyi5;

    new-instance v0, Ldk5;

    invoke-direct {v0}, Ldk5;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lgk5;->c:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic g0(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lgk5;->l0(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h0()Landroid/app/Application;
    .locals 1

    invoke-static {}, Lgk5;->o0()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i0()Lqj1;
    .locals 1

    invoke-static {}, Lgk5;->p0()Lqj1;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j0(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lgk5;->k0(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static final k0(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final l0(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final o0()Landroid/app/Application;
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static final p0()Lqj1;
    .locals 1

    sget-object v0, Lgk5;->a:Lgk5;

    invoke-virtual {v0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->a()Lqj1;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(IILcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 11

    const-string p0, "mediaItem"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p4

    invoke-static {p4}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object p4

    iget v0, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {p4, p1, v0}, Livb;->getPlayListMediaByIds(II)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/transsion/dbdata/database/PlayListMediaItem;

    int-to-long v3, p1

    iget-object v8, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string p3, "data"

    invoke-static {v8, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x9

    const/4 v10, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p4

    move v5, p2

    invoke-direct/range {v0 .. v10}, Lcom/transsion/dbdata/database/PlayListMediaItem;-><init>(JJIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p4

    goto :goto_0

    :catch_0
    move-exception p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPlayMediaByPlayListId error: playListId="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mediaId="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LegacyVideoDataManager"

    invoke-static {p2, p1, p3}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public B(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)Z
    .locals 1

    const-string v0, "videoData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaItem"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playStates"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lt6c;->r(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)V

    const/4 p0, 0x1

    return p0
.end method

.method public C(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    const-string p0, "mediaItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public D(Ljava/util/List;)V
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->j(Ljava/util/List;Z)V

    return-void
.end method

.method public E(J)Ljava/util/List;
    .locals 0

    long-to-int p0, p1

    invoke-static {p0}, Lt6c;->j(I)Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "queryAllMediaItemByPlayListId(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public F(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)V
    .locals 0

    const-string p0, "item"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "delete"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public G(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string p0, "item"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->e(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p0

    return p0
.end method

.method public H()Lcom/transsion/dbdata/beans/media/VideoTotalTrack;
    .locals 7

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lqpb;->d(Landroid/content/Context;Z)Lcom/transsion/dbdata/beans/media/TotalVideosBean;

    move-result-object p0

    new-instance v6, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalCountStr:Ljava/lang/String;

    const-string v0, "totalCountStr"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalSizeStr:Ljava/lang/String;

    const-string v0, "totalSizeStr"

    invoke-static {v2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalCount:I

    iget-wide v4, p0, Lcom/transsion/dbdata/beans/media/TotalVideosBean;->totalSize:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v6
.end method

.method public I(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string v0, "fileName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lqpb;->c0(Landroid/content/ContentResolver;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public J(II)I
    .locals 1

    invoke-virtual {p0}, Lgk5;->n0()Lqj1;

    move-result-object v0

    invoke-interface {v0, p1}, Lqj1;->getConvertingVideoByMediaId(I)Lcom/transsion/dbdata/database/ConvertingVideo;

    move-result-object p1

    if-eqz p1, :cond_0

    iput p2, p1, Lcom/transsion/dbdata/database/ConvertingVideo;->converted_status:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lgk5;->n0()Lqj1;

    move-result-object p0

    invoke-interface {p0, p1}, Lqj1;->updateConvertingVideo(Lcom/transsion/dbdata/database/ConvertingVideo;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public K(ILcom/transsion/dbdata/beans/media/MediaItem;Z)I
    .locals 1

    const-string v0, "mediaItem"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object p0

    if-eqz p3, :cond_0

    iget-object p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {p0, p1}, Livb;->deleteFavoriteListMedia(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {p0, p1, p2}, Livb;->deletePlayListMedia(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lqpb;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "countAllVideosFormat(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public M(II)Ljava/util/List;
    .locals 0

    invoke-static {p1, p2}, Lq5a;->j(II)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public N(ILjava/util/List;Z)Ljava/util/List;
    .locals 2

    const-string p0, "mediaItems"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Collection;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, p0}, Lt6c;->t(ILjava/util/ArrayList;)[J

    move-result-object p0

    const-string p1, "removeFromPlaylist(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    array-length p2, p0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-wide v0, p0, p3

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public O(ZIZ)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lt6c;->l(Landroid/content/Context;IZ)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lye6;->b(Ljava/util/List;)V

    if-eqz p1, :cond_0

    invoke-static {p0}, Lqpb;->k0(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "sortAllVideoByDate(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public P(Ljava/util/List;Le74;)V
    .locals 0

    const-string p0, "items"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "delete"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public Q(Ljava/lang/String;JLcom/transsion/dbdata/beans/media/MediaItem;Z)I
    .locals 7

    const-string v0, "playListName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaItem"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eqz p5, :cond_1

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p0

    iget-object p1, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ldp3;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {p4}, Lt6c;->c(Lcom/transsion/dbdata/beans/media/MediaItem;)J

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p4}, Ldp3;->b(ZLcom/transsion/dbdata/beans/media/MediaItem;)V

    return p1

    :cond_1
    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object p0

    long-to-int v1, p2

    iget p2, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {p0, v1, p2}, Livb;->getPlayListMediaByIds(II)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    return v0

    :cond_2
    iget-object v3, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget v4, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lrv8;->e(ILjava/lang/String;Ljava/lang/String;IJ)Lcom/transsion/dbdata/database/VideoPlayListMedia;

    move-result-object p1

    invoke-interface {p0, p1}, Livb;->insertPlayListMedia(Lcom/transsion/dbdata/database/VideoPlayListMedia;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public R()Z
    .locals 0

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f()Lg5c;

    move-result-object p0

    invoke-interface {p0}, Lg5c;->deleteAllVideoRecord()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public S()Ljava/util/List;
    .locals 1

    const/4 p0, 0x2

    invoke-static {p0}, Lt6c;->i(I)Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "queryAllMediaItemByPlayListFlag(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public T(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p0

    invoke-virtual {p0, p1}, Ldp3;->h(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public U(I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {}, Lns9;->o()Z

    move-result v0

    invoke-static {p0, v0, p1}, Lqpb;->V(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public V(Ljava/lang/String;JLjava/util/ArrayList;Z)Ljava/util/List;
    .locals 0

    const-string p0, "playListName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mediaItems"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, "iterator(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "next(...)"

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p2}, Lt6c;->c(Lcom/transsion/dbdata/beans/media/MediaItem;)J

    move-result-wide p2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    long-to-int p0, p2

    invoke-static {p0, p1, p4}, Lt6c;->d(ILjava/lang/String;Ljava/util/ArrayList;)[J

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    array-length p2, p0

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_1

    aget-wide p4, p0, p3

    long-to-int p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    move-object p0, p1

    goto :goto_2

    :cond_2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_3
    :goto_2
    return-object p0
.end method

.method public W()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lqpb;->Z(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "queryRecentlyAdd(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public X(ILjava/lang/String;)Z
    .locals 1

    const-string p0, "filePath"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    iput p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput-object p2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0, v0}, Lt6c;->f(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    const/4 p0, 0x1

    return p0
.end method

.method public Y(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string p0, "item"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->a()Lcom/transsion/dbdata/datamanager/RecentAddDataManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/dbdata/datamanager/RecentAddDataManager;->h(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p0

    return p0
.end method

.method public Z(ZLe74;)Ljava/util/List;
    .locals 10

    const-string v0, "LegacyVideoDataManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lgk5;->n0()Lqj1;

    move-result-object v2

    invoke-static {}, Loa1;->e()I

    move-result v3

    invoke-interface {v2, v3}, Lqj1;->getAllConvertingVideo(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Lgk5;->n0()Lqj1;

    move-result-object v4

    invoke-static {}, Loa1;->e()I

    move-result v5

    invoke-interface {v4, v5}, Lqj1;->getConvertMediaIdsOrderTime(I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lqpb;->X(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryAllConvertingVideos count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/database/ConvertingVideo;

    iget-object v5, v4, Lcom/transsion/dbdata/database/ConvertingVideo;->data:Ljava/lang/String;

    iget-object v6, v4, Lcom/transsion/dbdata/database/ConvertingVideo;->mediaId:Ljava/lang/Integer;

    iget v7, v4, Lcom/transsion/dbdata/database/ConvertingVideo;->converted_status:I

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lek5;

    invoke-direct {v9, v5}, Lek5;-><init>(Ljava/lang/String;)V

    new-instance v5, Lfk5;

    invoke-direct {v5, v9}, Lfk5;-><init>(Le74;)V

    invoke-interface {v8, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/MediaItem;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5, v7}, Lcom/transsion/dbdata/beans/media/MediaItem;->setConvertedFailed(I)V

    iget-wide v6, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iput-wide v6, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    iget-wide v6, v4, Lcom/transsion/dbdata/database/ConvertingVideo;->add_time:J

    const/16 v4, 0x3e8

    int-to-long v8, v4

    div-long/2addr v6, v8

    iput-wide v6, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lgk5;->n0()Lqj1;

    move-result-object v4

    invoke-static {v6}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Lqj1;->deleteVideoByMediaId(I)I

    if-eqz p2, :cond_0

    invoke-interface {p2, v6}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lye6;->b(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_2
    const-string p1, "getMediaItemsFromConvertingVideos: "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-object v1
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "mediaIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lqpb;->X(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "queryMediaItemByByMediaIds(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public a0(Lcom/transsion/dbdata/database/VideoPlayList;)I
    .locals 1

    const-string v0, "playList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->d()Ljub;

    move-result-object p0

    invoke-interface {p0, p1}, Ljub;->updatePlayList(Lcom/transsion/dbdata/database/VideoPlayList;)I

    move-result p0

    return p0
.end method

.method public b(I)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 11

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object p0

    invoke-interface {p0, p1}, Livb;->getPlayListMediaByIds(I)Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    new-instance p1, Lcom/transsion/dbdata/database/PlayListMediaItem;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/VideoPlayListMedia;

    iget v1, v1, Lcom/transsion/dbdata/database/VideoPlayListMedia;->playlist_id:I

    int-to-long v3, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/VideoPlayListMedia;

    iget v5, v1, Lcom/transsion/dbdata/database/VideoPlayListMedia;->media_id:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/VideoPlayListMedia;

    iget-object v8, p0, Lcom/transsion/dbdata/database/VideoPlayListMedia;->_data:Ljava/lang/String;

    const-string p0, "_data"

    invoke-static {v8, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x9

    const/4 v10, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/transsion/dbdata/database/PlayListMediaItem;-><init>(JJIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public b0(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/List;
    .locals 2

    const-string p0, "videoData"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    long-to-int p0, v0

    invoke-static {p0, p1}, Lt6c;->p(ILcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "queryOnlineMediaItemByPlayListId(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public c()Lcom/transsion/dbdata/beans/SubtitleSettingData;
    .locals 1

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->c()Lh6a;

    move-result-object p0

    invoke-interface {p0}, Lh6a;->queryNewestSubtitleSetting()Lcom/transsion/dbdata/beans/SubtitleSettingData;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/beans/SubtitleSettingData;-><init>(I)V

    :cond_0
    return-object p0
.end method

.method public c0(Lcom/transsion/dbdata/beans/media/MediaItem;)I
    .locals 4

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/database/ConvertingVideo;

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/transsion/dbdata/database/ConvertingVideo;-><init>(ILjava/lang/String;J)V

    invoke-virtual {p0}, Lgk5;->n0()Lqj1;

    move-result-object p0

    invoke-interface {p0, v0}, Lqj1;->insert(Lcom/transsion/dbdata/database/ConvertingVideo;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->f()Lg5c;

    move-result-object p0

    invoke-interface {p0, p1}, Lg5c;->getTheVideoRecordMediaCountByData(Ljava/lang/String;)Lcom/transsion/dbdata/database/VideoRecord;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/transsion/dbdata/database/VideoRecord;->data:Ljava/lang/String;

    iget v2, p1, Lcom/transsion/dbdata/database/VideoRecord;->_id:I

    iget v3, p1, Lcom/transsion/dbdata/database/VideoRecord;->position:I

    iget v4, p1, Lcom/transsion/dbdata/database/VideoRecord;->isPlayCompleted:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v1}, Lruc;->a(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_1

    iput-boolean v5, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->isPlayComplete:Z

    invoke-virtual {v4, v3}, Lcom/transsion/dbdata/beans/media/MediaItem;->setPlayPosition(I)V

    iget-wide v1, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iput-wide v1, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->dateToken:J

    iget-wide p0, p1, Lcom/transsion/dbdata/database/VideoRecord;->record_date_modified:J

    const/16 v1, 0x3e8

    int-to-long v1, v1

    div-long/2addr p0, v1

    iput-wide p0, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p0, v1, v2}, Lg5c;->deleteVideoRecordByMediaIdAndData(Ljava/lang/String;I)I

    :cond_2
    :goto_1
    return-object v0
.end method

.method public d0()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lqpb;->U(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "queryAllVideoMediaBucket(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Lcom/transsion/dbdata/beans/SubtitleHistory;)I
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->i()Lw4a;

    move-result-object p0

    invoke-interface {p0, p1}, Lw4a;->deleteSubtitleHistory(Lcom/transsion/dbdata/beans/SubtitleHistory;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public e0(I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lqpb;->T(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "queryAllShortVideos(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public f(Ljava/lang/String;)J
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/VideoPlayList;-><init>()V

    iput-object p1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->setup_time:J

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->d()Ljub;

    move-result-object p0

    invoke-interface {p0, v0}, Ljub;->insertPlayList(Lcom/transsion/dbdata/database/VideoPlayList;)J

    move-result-wide p0

    return-wide p0
.end method

.method public f0(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "parentPath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lqpb;->W(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "queryDownloadedVideos(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public g(J)I
    .locals 1

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->e()Livb;

    move-result-object v0

    long-to-int p1, p1

    invoke-interface {v0, p1}, Livb;->deletePlayListMediaByPlayListId(I)V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->d()Ljub;

    move-result-object p0

    invoke-interface {p0, p1}, Ljub;->deletePlayListById(I)I

    move-result p0

    return p0
.end method

.method public getAudioTrack(I)Lcom/transsion/dbdata/database/AudioTrack;
    .locals 0

    invoke-static {p1}, Lt6c;->o(I)Lcom/transsion/dbdata/database/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method public h(I)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Lqpb;->a0(Landroid/content/ContentResolver;I)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public i(Lcom/transsion/dbdata/beans/media/MediaBucket;)Ljava/util/List;
    .locals 1

    const-string v0, "mediaBucket"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Lqpb;->e0(Landroid/content/ContentResolver;Lcom/transsion/dbdata/beans/media/MediaBucket;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public insertSubtitleSetting(Lcom/transsion/dbdata/beans/SubtitleSettingData;)I
    .locals 1

    const-string v0, "subtitleSetting"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->c()Lh6a;

    move-result-object p0

    invoke-interface {p0, p1}, Lh6a;->insertSubtitleSetting(Lcom/transsion/dbdata/beans/SubtitleSettingData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public j(ZLcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 3

    const-string p0, "item"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ldp3;->b(ZLcom/transsion/dbdata/beans/media/MediaItem;)V

    const/4 p0, 0x0

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lt6c;->c(Lcom/transsion/dbdata/beans/media/MediaItem;)J

    move-result-wide p1

    cmp-long p1, p1, v1

    if-lez p1, :cond_1

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lt6c;->s(Lcom/transsion/dbdata/beans/media/MediaItem;)J

    move-result-wide p1

    cmp-long p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method

.method public k(IILjava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->g()Lq10;

    move-result-object p0

    new-instance v0, Lcom/transsion/dbdata/database/AudioTrack;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/AudioTrack;-><init>()V

    iput p1, v0, Lcom/transsion/dbdata/database/AudioTrack;->id:I

    iput p2, v0, Lcom/transsion/dbdata/database/AudioTrack;->audioId:I

    iput-object p3, v0, Lcom/transsion/dbdata/database/AudioTrack;->name:Ljava/lang/String;

    invoke-interface {p0, v0}, Lq10;->insertAudioTrack(Lcom/transsion/dbdata/database/AudioTrack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public l(Ljava/util/List;)Ljava/util/List;
    .locals 6

    const-string v0, "mediaItems"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v2, Lcom/transsion/dbdata/database/ConvertingVideo;

    iget v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/transsion/dbdata/database/ConvertingVideo;-><init>(ILjava/lang/String;J)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lgk5;->n0()Lqj1;

    move-result-object p0

    invoke-interface {p0, v0}, Lqj1;->insertVideos(Ljava/util/List;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "LegacyVideoDataManager"

    const-string v2, "insertVideoConvertingAudio error"

    invoke-static {v0, v2, p0}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v1, p1, :cond_1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lqpb;->d0(Landroid/content/ContentResolver;Ljava/lang/String;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public final m0()Landroid/app/Application;
    .locals 0

    sget-object p0, Lgk5;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    return-object p0
.end method

.method public n(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Lqpb;->Y(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public final n0()Lqj1;
    .locals 0

    sget-object p0, Lgk5;->c:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqj1;

    return-object p0
.end method

.method public o(I)I
    .locals 0

    invoke-virtual {p0}, Lgk5;->n0()Lqj1;

    move-result-object p0

    invoke-interface {p0, p1}, Lqj1;->deleteVideoByMediaId(I)I

    move-result p0

    return p0
.end method

.method public p(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "mediaItems"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lqpb;->S(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "queryAllMediaItem(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public q(Ljava/lang/String;)I
    .locals 1

    const-string v0, "subtitlePath"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->b()Lm5a;

    move-result-object p0

    invoke-interface {p0, p1}, Lm5a;->deleteSubtitleRecordByPath(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public r(I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lqpb;->R(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "queryAllLongVideos(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public s()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lq5a;->k(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public t(ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I
    .locals 1

    const-string v0, "subtitle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lq5a;->e(Landroid/content/Context;ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public u(Z)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p1

    invoke-virtual {p1}, Ldp3;->m()V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, v1}, Lqpb;->Z(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v2, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-direct {v2}, Lcom/transsion/dbdata/database/VideoPlayList;-><init>()V

    const-string v3, "\u6700\u8fd1\u6dfb\u52a0"

    iput-object v3, v2, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    const/16 v3, 0xd

    iput v3, v2, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput v3, v2, Lcom/transsion/dbdata/database/VideoPlayList;->count:I

    if-eqz p1, :cond_1

    invoke-static {p1}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, v2, Lcom/transsion/dbdata/database/VideoPlayList;->uri:Landroid/net/Uri;

    const/4 p1, -0x1

    iput p1, v2, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    iget p1, v2, Lcom/transsion/dbdata/database/VideoPlayList;->count:I

    if-lez p1, :cond_2

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v3, "redshots_recently_added"

    invoke-virtual {p1, v3}, Lcom/tencent/mmkv/MMKV;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v3, 0x447

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p1

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {p1, v2}, Ldp3;->d(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoPlayList;

    move-result-object p1

    const-string v2, "\u6536\u85cf"

    iput-object v2, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    iput v1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->h(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoRoomDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/VideoRoomDatabase;->d()Ljub;

    move-result-object p0

    invoke-static {}, Loa1;->e()I

    move-result p1

    invoke-interface {p0, p1}, Ljub;->getPlayList(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lt6c;->k(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_2
    return-object v0
.end method

.method public v(Lcom/transsion/dbdata/beans/SubtitleHistory;)I
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, p1}, Lq5a;->f(Landroid/content/Context;Lcom/transsion/dbdata/beans/SubtitleHistory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public w(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0, p1}, Lqpb;->h0(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "searchVideo(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public x()V
    .locals 0

    invoke-static {}, Lqpb;->F()V

    return-void
.end method

.method public y(Ljava/util/List;)Ljava/util/List;
    .locals 3

    const-string v0, "paths"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lgk5;->m0()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lqpb;->N(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, p1}, Lqpb;->N(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;ZI)V

    return-object v0
.end method

.method public z(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lruc;->a(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
