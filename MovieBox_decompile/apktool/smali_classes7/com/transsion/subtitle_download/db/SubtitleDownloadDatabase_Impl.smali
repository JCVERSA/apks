.class public final Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;
.super Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;
.source "source.java"


# instance fields
.field private volatile u:Lqt/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m0(Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;Ly3/b;)V
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
    const-class v1, Lqt/a;

    .line 7
    .line 8
    invoke-static {}, Lqt/i;->o()Ljava/util/List;

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

.method public l0()Lqt/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;->u:Lqt/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;->u:Lqt/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;->u:Lqt/a;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lqt/i;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lqt/i;-><init>(Landroidx/room/RoomDatabase;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;->u:Lqt/a;

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
    iget-object v0, p0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;->u:Lqt/a;

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

.method protected n0()Landroidx/room/f0;
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl$a;

    .line 2
    .line 3
    const-string v1, "b69203d51150b93b225b86bfd78bf875"

    .line 4
    .line 5
    const-string v2, "a207c71dcb7f4328cd120ce375a1f942"

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl$a;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V

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
    const-string v3, "st_download_table"

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
    invoke-virtual {p0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase_Impl;->n0()Landroidx/room/f0;

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
