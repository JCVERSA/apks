.class public final Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;
.super Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase;
.source "source.java"


# instance fields
.field public volatile q:Lx6/y;

.field public volatile r:Lx6/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;Lz3/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/RoomDatabase;->a:Lz3/d;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic k0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;Lz3/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->Q(Lz3/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final C()Ljava/util/Set;
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

.method public final F()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lx6/s;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-class v1, Lx6/m;

    .line 16
    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final g0()Lx6/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->r:Lx6/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->r:Lx6/q;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->r:Lx6/q;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lx6/q;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lx6/q;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->r:Lx6/q;

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
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->r:Lx6/q;

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

.method public final h0()Lx6/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->q:Lx6/y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->q:Lx6/y;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->q:Lx6/y;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lx6/y;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lx6/y;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->q:Lx6/y;

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
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;->q:Lx6/y;

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

.method public final q()Landroidx/room/InvalidationTracker;
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
    const-string v3, "hisavana_ab_room"

    .line 15
    .line 16
    const-string v4, "hisavana_local_ab_room"

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

.method public final s(Landroidx/room/c;)Lz3/e;
    .locals 4

    .line 1
    new-instance v0, Landroidx/room/h0;

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl$a;-><init>(Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "c3731bb55f7c1b83c5a17ab41e6dc2b1"

    .line 9
    .line 10
    const-string v3, "59a3f677eceb796bf1de1bde197864ae"

    .line 11
    .line 12
    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/h0;-><init>(Landroidx/room/c;Landroidx/room/h0$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p1, Landroidx/room/c;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1}, Lz3/e$b;->a(Landroid/content/Context;)Lz3/e$b$a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p1, Landroidx/room/c;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lz3/e$b$a;->d(Ljava/lang/String;)Lz3/e$b$a;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lz3/e$b$a;->c(Lz3/e$a;)Lz3/e$b$a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lz3/e$b$a;->b()Lz3/e$b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object p1, p1, Landroidx/room/c;->c:Lz3/e$c;

    .line 36
    .line 37
    invoke-interface {p1, v0}, Lz3/e$c;->a(Lz3/e$b;)Lz3/e;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method public final v(Ljava/util/Map;)Ljava/util/List;
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
