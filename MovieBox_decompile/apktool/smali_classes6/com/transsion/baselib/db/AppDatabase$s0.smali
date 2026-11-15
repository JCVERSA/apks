.class public final Lcom/transsion/baselib/db/AppDatabase$s0;
.super Lx3/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    const/16 v1, 0x33

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lx3/b;-><init>(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Lz3/d;)V
    .locals 1

    .line 1
    const-string v0, "database"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoCollectionId TEXT"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoId TEXT"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoPosition INTEGER"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoType TEXT"

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoName TEXT"

    .line 27
    .line 28
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "ALTER TABLE DOWNLOAD_TABLE ADD COLUMN ugcVideoCollectionName TEXT"

    .line 32
    .line 33
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "ALTER TABLE DOWNLOAD_TABLE ADD COLUMN subtitleIdType TEXT"

    .line 37
    .line 38
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "CREATE TABLE IF NOT EXISTS `ugc_collection_video_group` (`collectionId` TEXT NOT NULL, `ugcVideoIds` TEXT NOT NULL, PRIMARY KEY(`collectionId`))"

    .line 42
    .line 43
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "CREATE TABLE IF NOT EXISTS `ugc_video_detail_play` (`collectionId` TEXT NOT NULL, `ugcVideoId` TEXT NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `position` INTEGER NOT NULL, `type` TEXT, `timeStamp` INTEGER NOT NULL, `subtitleSelectId` TEXT, `totalDuration` INTEGER, `subjectDurationSeconds` INTEGER, `averageHueLight` TEXT, `subjectType` INTEGER, `hasDelete` INTEGER NOT NULL, `playMode` TEXT NOT NULL, `downloadUrl` TEXT, `downloadResid` TEXT, `downloadFilePath` TEXT, `downloadSize` INTEGER NOT NULL, `lastAdStartTimeStamp` INTEGER, `lastAdEndTimeStamp` INTEGER, `rewardPlayed` INTEGER NOT NULL, `rewardUnlock` INTEGER NOT NULL, `rewardFree` INTEGER NOT NULL,`ops` TEXT,  PRIMARY KEY(`collectionId`))"

    .line 47
    .line 48
    invoke-interface {p1, v0}, Lz3/d;->E(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
