.class public final Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;
.super Lcom/transsion/shorttv/db/ShortTvDatabase;
.source "source.java"


# instance fields
.field private volatile s:Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

.field private volatile t:Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/db/ShortTvDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l0(Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;Ly3/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->P(Ly3/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public C()Ljava/util/Set;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected F()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    .line 7
    .line 8
    invoke-static {}, Lcom/transsion/shorttv/db/i;->h()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-class v1, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 16
    .line 17
    invoke-static {}, Lcom/transsion/shorttv/db/d;->h()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public j0()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->t:Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->t:Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->t:Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/shorttv/db/d;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/db/d;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->t:Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->t:Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method public k0()Lcom/transsion/shorttv/db/ShortTvFavoriteDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->s:Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->s:Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->s:Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/shorttv/db/i;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/db/i;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->s:Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->s:Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method

.method protected m0()Landroidx/room/f0;
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl$a;

    .line 2
    .line 3
    const-string v1, "7d0cc9a2b371c1f7329d0d00d8bd31c1"

    .line 4
    .line 5
    const-string v2, "8d7f57b404f63d2b99b6f547f57644e9"

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl$a;-><init>(Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method protected q()Landroidx/room/InvalidationTracker;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroidx/room/InvalidationTracker;

    .line 13
    .line 14
    const-string v3, "short_tv_favorite_state"

    .line 15
    .line 16
    const-string v4, "short_tv_ad_unlock_state"

    .line 17
    .line 18
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v1
.end method

.method protected bridge synthetic r()Landroidx/room/g0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/db/ShortTvDatabase_Impl;->m0()Landroidx/room/f0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public v(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
