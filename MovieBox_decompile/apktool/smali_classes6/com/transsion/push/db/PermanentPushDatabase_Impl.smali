.class public final Lcom/transsion/push/db/PermanentPushDatabase_Impl;
.super Lcom/transsion/push/db/PermanentPushDatabase;
.source "source.java"


# instance fields
.field private volatile r:Lcom/transsion/push/db/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/db/PermanentPushDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j0(Lcom/transsion/push/db/PermanentPushDatabase_Impl;Ly3/b;)V
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
    const-class v1, Lcom/transsion/push/db/a;

    .line 7
    .line 8
    invoke-static {}, Lcom/transsion/push/db/f;->i()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public i0()Lcom/transsion/push/db/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/db/PermanentPushDatabase_Impl;->r:Lcom/transsion/push/db/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/push/db/PermanentPushDatabase_Impl;->r:Lcom/transsion/push/db/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/push/db/PermanentPushDatabase_Impl;->r:Lcom/transsion/push/db/a;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/push/db/f;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/transsion/push/db/f;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/push/db/PermanentPushDatabase_Impl;->r:Lcom/transsion/push/db/a;

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
    iget-object v0, p0, Lcom/transsion/push/db/PermanentPushDatabase_Impl;->r:Lcom/transsion/push/db/a;

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

.method protected k0()Landroidx/room/f0;
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/push/db/PermanentPushDatabase_Impl$a;

    .line 2
    .line 3
    const-string v1, "1fffbd46e501ef2aa1bccfc7df8cf2d6"

    .line 4
    .line 5
    const-string v2, "ea621e991f9e4353c74e708cec62b4ff"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/transsion/push/db/PermanentPushDatabase_Impl$a;-><init>(Lcom/transsion/push/db/PermanentPushDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method protected q()Landroidx/room/InvalidationTracker;
    .locals 4

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
    const-string v3, "permanent_item"

    .line 15
    .line 16
    filled-new-array {v3}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method

.method protected bridge synthetic r()Landroidx/room/g0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/push/db/PermanentPushDatabase_Impl;->k0()Landroidx/room/f0;

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
