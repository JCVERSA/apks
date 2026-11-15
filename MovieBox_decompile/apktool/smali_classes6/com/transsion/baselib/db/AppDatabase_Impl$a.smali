.class Lcom/transsion/baselib/db/AppDatabase_Impl$a;
.super Landroidx/room/f0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/db/AppDatabase_Impl;->F1()Landroidx/room/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/baselib/db/AppDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/AppDatabase_Impl;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/AppDatabase_Impl$a;->d:Lcom/transsion/baselib/db/AppDatabase_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Landroidx/room/f0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ly3/b;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS `audio` (`audioId` TEXT NOT NULL, `cover` TEXT, `duration` INTEGER, `size` INTEGER, `url` TEXT, `title` TEXT, `desc` TEXT, `bitrate` INTEGER, `updateTimeStamp` INTEGER, `readProcess` INTEGER, `localPath` TEXT, `ops` TEXT, `resourceId` TEXT, `postId` TEXT, `subjectId` TEXT, `groupId` TEXT, `status` INTEGER NOT NULL, `subjectTitle` TEXT, `se` INTEGER NOT NULL, `ep` INTEGER NOT NULL, PRIMARY KEY(`audioId`))"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE IF NOT EXISTS `download_table` (`url` TEXT NOT NULL, `resourceId` TEXT, `name` TEXT, `cover` TEXT, `size` INTEGER, `postId` TEXT, `sizeFormat` TEXT, `path` TEXT, `duration` INTEGER, `updateTimeStamp` INTEGER, `progress` INTEGER NOT NULL, `supportRanges` INTEGER NOT NULL, `status` INTEGER NOT NULL, `type` INTEGER NOT NULL, `readProgress` INTEGER NOT NULL, `createAt` INTEGER NOT NULL, `isRead` INTEGER NOT NULL, `episode` INTEGER NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `resolution` INTEGER NOT NULL, `resourcePosition` INTEGER NOT NULL, `multiresolution` INTEGER NOT NULL, `videoWidth` INTEGER NOT NULL, `videoHeight` INTEGER NOT NULL, `downloadErrorCount` INTEGER NOT NULL, `subtitleStarted` INTEGER NOT NULL, `subjectId` TEXT, `pageFrom` TEXT, `lastPageFrom` TEXT, `subjectName` TEXT, `lastPlayTimeStamp` INTEGER NOT NULL, `fileType` INTEGER NOT NULL, `totalEpisode` INTEGER NOT NULL, `uploadBy` TEXT, `sourceUrl` TEXT, `urlCreateAt` INTEGER NOT NULL, `subtitleSelectId` TEXT, `taskId` TEXT, `sessionTime` INTEGER NOT NULL, `reportStatus` INTEGER NOT NULL, `downloadHeaderSize` INTEGER NOT NULL, `rootPath` TEXT, `rootPathType` INTEGER NOT NULL, `thumbnail` TEXT, `averageHueLight` TEXT, `isTransferFailed` INTEGER NOT NULL, `isClosedTransferFailed` INTEGER NOT NULL, `subjectType` INTEGER NOT NULL, `genre` TEXT, `subjectDurationSeconds` INTEGER, `currentDubLanName` TEXT, `currentDubLanCode` TEXT, `ops` TEXT, `restrictLevel` TEXT, `releaseDate` TEXT, `countryName` TEXT, `seNum` INTEGER, `subtitles` TEXT, `imdbRate` TEXT, `lastAdStartTimeStamp` INTEGER, `lastAdEndTimeStamp` INTEGER, `subtitleIdType` TEXT, `ugcVideoCollectionId` TEXT, `ugcVideoId` TEXT, `ugcVideoName` TEXT, `ugcVideoCollectionName` TEXT, `ugcVideoPosition` INTEGER, `ugcVideoType` TEXT, `ugcCateLev1Id` INTEGER, `ugcCateLev2Id` INTEGER, `ugcCateLev3Id` INTEGER, `ugcCateLev4Id` INTEGER, `ugcVideoTrackId` TEXT, `ugcVideoParentVideoId` TEXT, `ugcVideoParentTrackId` TEXT, `ugcVideoEpTitle` TEXT, `ugcVideoIsVertical` INTEGER NOT NULL, `originData` TEXT, `kidId` TEXT, PRIMARY KEY(`url`))"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE TABLE IF NOT EXISTS `video` (`postId` TEXT NOT NULL, `playProgress` INTEGER, `url` TEXT, PRIMARY KEY(`postId`))"

    .line 12
    .line 13
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "CREATE TABLE IF NOT EXISTS `download_thread_info` (`id` INTEGER NOT NULL, `threadId` INTEGER NOT NULL, `downloadInfoId` TEXT, `uri` TEXT, `start` INTEGER NOT NULL, `end` INTEGER NOT NULL, `progress` INTEGER NOT NULL, PRIMARY KEY(`id`))"

    .line 17
    .line 18
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "CREATE TABLE IF NOT EXISTS `room_table` (`groupId` TEXT NOT NULL, `name` TEXT, `avatar` TEXT, `hasJoin` INTEGER, `newPostCount` INTEGER, `description` TEXT, `postCount` INTEGER, `userCount` INTEGER, `level` TEXT, `updateTimeStamp` INTEGER NOT NULL, PRIMARY KEY(`groupId`))"

    .line 22
    .line 23
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "CREATE TABLE IF NOT EXISTS `permanent_msg` (`id` INTEGER NOT NULL, `deep_link_list` TEXT, `desc` TEXT, `image_list` TEXT, `message_id` TEXT, `style` TEXT, `title` TEXT, PRIMARY KEY(`id`))"

    .line 27
    .line 28
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS `download_subtitle_table` (`resourceId` TEXT NOT NULL, `postId` TEXT, `url` TEXT, `path` TEXT, `lan` TEXT, `lanName` TEXT NOT NULL, `subtitleName` TEXT, `size` INTEGER, `delayDuration` INTEGER, `status` INTEGER NOT NULL, `type` INTEGER NOT NULL, `fileCharsetName` TEXT, `subjectId` TEXT, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `resolution` INTEGER NOT NULL, PRIMARY KEY(`resourceId`))"

    .line 32
    .line 33
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "CREATE TABLE IF NOT EXISTS `msg` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `deep_link` TEXT, `desc` TEXT, `image_list` TEXT, `message_id` TEXT, `source` TEXT, `style` TEXT, `title` TEXT, `type` TEXT, `receive_time` INTEGER, `msg_status` INTEGER NOT NULL, `show_time` INTEGER, `force_show` INTEGER NOT NULL, `has_screen_on` INTEGER NOT NULL, `built_in` INTEGER NOT NULL, `permanent_msg_status` INTEGER NOT NULL)"

    .line 37
    .line 38
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "CREATE TABLE IF NOT EXISTS `consume_bean` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `updateTimeStamp` INTEGER NOT NULL, `dataType` INTEGER NOT NULL, `appVersion` INTEGER NOT NULL, `consumeJson` TEXT)"

    .line 42
    .line 43
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "CREATE TABLE IF NOT EXISTS `download_thread_range` (`threadId` INTEGER NOT NULL, `rangeId` INTEGER NOT NULL, `resourceId` TEXT, `start` INTEGER NOT NULL, `end` INTEGER NOT NULL, `progress` INTEGER NOT NULL, PRIMARY KEY(`threadId`, `rangeId`))"

    .line 47
    .line 48
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "CREATE TABLE IF NOT EXISTS `video_land_ad` (`resourceId` TEXT NOT NULL, `startAdDayKey` INTEGER NOT NULL, `endAdDayKey` INTEGER NOT NULL, PRIMARY KEY(`resourceId`))"

    .line 52
    .line 53
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "CREATE TABLE IF NOT EXISTS `subtitle_language_map_table` (`lan` TEXT NOT NULL, `lanIOS3` TEXT, `lanName` TEXT NOT NULL, `inSearch` INTEGER NOT NULL, PRIMARY KEY(`lan`))"

    .line 57
    .line 58
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "CREATE TABLE IF NOT EXISTS `non_ad_plans` (`id` TEXT NOT NULL, `version` TEXT, `name` TEXT, `startTime` TEXT, `endTime` TEXT, `extraConfig` TEXT, `displayTimes` INTEGER, `showedTimes` INTEGER, `showDate` TEXT, `advertiserName` TEXT, `advertiserAvatar` TEXT, `advertiserAvatarPath` TEXT, `brand` TEXT, `denyBrand` TEXT, `model` TEXT, `denyModel` TEXT, `country` TEXT, `scenes` TEXT, `adMaterialList` TEXT, `adPlanUpdateTime` TEXT, `sort` INTEGER, `adShowLevel` TEXT, `filterClientVersion` TEXT, `adPlanCreateTime` TEXT, `appStarDesc` TEXT, `appSizeDesc` TEXT, PRIMARY KEY(`id`))"

    .line 62
    .line 63
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "CREATE TABLE IF NOT EXISTS `local_mcc` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `Country` TEXT NOT NULL, `Mcc` TEXT NOT NULL, `Iso` TEXT NOT NULL, `CountryCode` TEXT NOT NULL)"

    .line 67
    .line 68
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "CREATE TABLE IF NOT EXISTS `short_tv_play` (`subjectId` TEXT NOT NULL, `id` TEXT NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `totalEp` INTEGER NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `description` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `videoId` TEXT, `videoUrl` TEXT, `timeStamp` INTEGER NOT NULL, `subtitleSelectId` TEXT, PRIMARY KEY(`subjectId`))"

    .line 72
    .line 73
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v0, "CREATE TABLE IF NOT EXISTS `ShortTvFavoriteState` (`subjectId` TEXT NOT NULL, `favoriteNum` TEXT, `hasFavorite` INTEGER NOT NULL, `favoriteTime` TEXT, PRIMARY KEY(`subjectId`))"

    .line 77
    .line 78
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "CREATE TABLE IF NOT EXISTS `video_detail_play` (`subjectId` TEXT NOT NULL, `id` TEXT NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `videoUrl` TEXT, `timeStamp` INTEGER NOT NULL, `subtitleSelectId` TEXT, `totalDuration` INTEGER, `subjectDurationSeconds` INTEGER, `averageHueLight` TEXT, `subjectType` INTEGER, `hasDelete` INTEGER NOT NULL, `playMode` TEXT NOT NULL, `downloadUrl` TEXT, `downloadFilePath` TEXT, `downloadSize` INTEGER NOT NULL, `dubs` TEXT, `lastAdStartTimeStamp` INTEGER, `lastAdEndTimeStamp` INTEGER, `rewardPlayed` INTEGER NOT NULL, `rewardUnlock` INTEGER NOT NULL, `rewardFree` INTEGER NOT NULL, `ops` TEXT, PRIMARY KEY(`subjectId`, `ep`, `se`))"

    .line 82
    .line 83
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v0, "CREATE TABLE IF NOT EXISTS `music_liked` (`subjectId` TEXT NOT NULL, `title` TEXT, `coverUrl` TEXT, `countryName` TEXT, `genre` TEXT, `releaseDate` TEXT, `durationSeconds` INTEGER NOT NULL, `singerName` TEXT, `singerAvatar` TEXT, `path` TEXT, `timeStamp` INTEGER NOT NULL, PRIMARY KEY(`subjectId`))"

    .line 87
    .line 88
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "CREATE TABLE IF NOT EXISTS `place_list` (`latitude` REAL NOT NULL, `longitude` REAL NOT NULL, `name` TEXT, `address` TEXT, `distance` TEXT, PRIMARY KEY(`latitude`, `longitude`))"

    .line 92
    .line 93
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "CREATE TABLE IF NOT EXISTS `ugc_video_detail_play` (`collectionId` TEXT NOT NULL, `ugcVideoId` TEXT NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `position` INTEGER NOT NULL, `type` TEXT, `cateLev1Id` INTEGER, `cateLev2Id` INTEGER, `cateLev3Id` INTEGER, `cateLev4Id` INTEGER, `timeStamp` INTEGER NOT NULL, `subtitleSelectId` TEXT, `totalDuration` INTEGER, `subjectDurationSeconds` INTEGER, `averageHueLight` TEXT, `subjectType` INTEGER, `hasDelete` INTEGER NOT NULL, `playMode` TEXT NOT NULL, `downloadUrl` TEXT, `downloadResid` TEXT, `downloadFilePath` TEXT, `downloadSize` INTEGER NOT NULL, `lastAdStartTimeStamp` INTEGER, `lastAdEndTimeStamp` INTEGER, `rewardPlayed` INTEGER NOT NULL, `rewardUnlock` INTEGER NOT NULL, `rewardFree` INTEGER NOT NULL, `ops` TEXT, `uid` TEXT, `userName` TEXT, `userAvatar` TEXT, `description` TEXT, `videoStyle` TEXT, `kidId` TEXT, PRIMARY KEY(`collectionId`))"

    .line 97
    .line 98
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v0, "CREATE TABLE IF NOT EXISTS `ugc_collection_video_group` (`collectionId` TEXT NOT NULL, `ugcVideoIds` TEXT NOT NULL, PRIMARY KEY(`collectionId`))"

    .line 102
    .line 103
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v0, "CREATE TABLE IF NOT EXISTS `member_resolution` (`subjectId` TEXT NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `vipResolutionTip` INTEGER, `isUnlock` INTEGER, PRIMARY KEY(`subjectId`, `ep`, `se`))"

    .line 107
    .line 108
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "CREATE TABLE IF NOT EXISTS `home_preferences_interval_time` (`id` TEXT NOT NULL, `showTime` INTEGER NOT NULL, `closeTime` INTEGER NOT NULL, `chooseTime` INTEGER NOT NULL, `showIntervalSeconds` INTEGER NOT NULL, `closeIntervalSeconds` INTEGER NOT NULL, `chooseIntervalSeconds` INTEGER NOT NULL, PRIMARY KEY(`id`))"

    .line 112
    .line 113
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 117
    .line 118
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'b0c54b19a40cfcf785b1ce6277c3b3a2\')"

    .line 122
    .line 123
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public b(Ly3/b;)V
    .locals 1

    .line 1
    const-string v0, "DROP TABLE IF EXISTS `audio`"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DROP TABLE IF EXISTS `download_table`"

    .line 7
    .line 8
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "DROP TABLE IF EXISTS `video`"

    .line 12
    .line 13
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "DROP TABLE IF EXISTS `download_thread_info`"

    .line 17
    .line 18
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "DROP TABLE IF EXISTS `room_table`"

    .line 22
    .line 23
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "DROP TABLE IF EXISTS `permanent_msg`"

    .line 27
    .line 28
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "DROP TABLE IF EXISTS `download_subtitle_table`"

    .line 32
    .line 33
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "DROP TABLE IF EXISTS `msg`"

    .line 37
    .line 38
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "DROP TABLE IF EXISTS `consume_bean`"

    .line 42
    .line 43
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "DROP TABLE IF EXISTS `download_thread_range`"

    .line 47
    .line 48
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "DROP TABLE IF EXISTS `video_land_ad`"

    .line 52
    .line 53
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "DROP TABLE IF EXISTS `subtitle_language_map_table`"

    .line 57
    .line 58
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "DROP TABLE IF EXISTS `non_ad_plans`"

    .line 62
    .line 63
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "DROP TABLE IF EXISTS `local_mcc`"

    .line 67
    .line 68
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "DROP TABLE IF EXISTS `short_tv_play`"

    .line 72
    .line 73
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v0, "DROP TABLE IF EXISTS `ShortTvFavoriteState`"

    .line 77
    .line 78
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "DROP TABLE IF EXISTS `video_detail_play`"

    .line 82
    .line 83
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v0, "DROP TABLE IF EXISTS `music_liked`"

    .line 87
    .line 88
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "DROP TABLE IF EXISTS `place_list`"

    .line 92
    .line 93
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "DROP TABLE IF EXISTS `ugc_video_detail_play`"

    .line 97
    .line 98
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v0, "DROP TABLE IF EXISTS `ugc_collection_video_group`"

    .line 102
    .line 103
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v0, "DROP TABLE IF EXISTS `member_resolution`"

    .line 107
    .line 108
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "DROP TABLE IF EXISTS `home_preferences_interval_time`"

    .line 112
    .line 113
    invoke-static {p1, v0}, Ly3/a;->a(Ly3/b;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public f(Ly3/b;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Ly3/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/AppDatabase_Impl$a;->d:Lcom/transsion/baselib/db/AppDatabase_Impl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/baselib/db/AppDatabase_Impl;->E1(Lcom/transsion/baselib/db/AppDatabase_Impl;Ly3/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(Ly3/b;)V
    .locals 0

    .line 1
    return-void
.end method

.method public i(Ly3/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/room/util/b;->a(Ly3/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public j(Ly3/b;)Landroidx/room/f0$a;
    .locals 39

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Landroidx/room/util/m$a;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v4, "audioId"

    const-string v5, "TEXT"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "audioId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Landroidx/room/util/m$a;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v5, "cover"

    const-string v6, "TEXT"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "cover"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Landroidx/room/util/m$a;

    const-string v5, "duration"

    const-string v6, "INTEGER"

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "duration"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Landroidx/room/util/m$a;

    const-string v5, "size"

    const-string v6, "INTEGER"

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "size"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Landroidx/room/util/m$a;

    const-string v5, "url"

    const-string v6, "TEXT"

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "url"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v2, Landroidx/room/util/m$a;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v6, "title"

    const-string v7, "TEXT"

    const/4 v9, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "title"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v2, Landroidx/room/util/m$a;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v7, "desc"

    const-string v8, "TEXT"

    const/4 v10, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "desc"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v2, Landroidx/room/util/m$a;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v8, "bitrate"

    const-string v9, "INTEGER"

    const/4 v11, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "bitrate"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Landroidx/room/util/m$a;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v9, "updateTimeStamp"

    const-string v10, "INTEGER"

    const/4 v12, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "updateTimeStamp"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v2, Landroidx/room/util/m$a;

    const-string v9, "readProcess"

    const-string v10, "INTEGER"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "readProcess"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Landroidx/room/util/m$a;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v10, "localPath"

    const-string v11, "TEXT"

    const/4 v13, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "localPath"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v2, Landroidx/room/util/m$a;

    const-string v10, "ops"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "ops"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v2, Landroidx/room/util/m$a;

    const-string v10, "resourceId"

    const-string v11, "TEXT"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "resourceId"

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v2, Landroidx/room/util/m$a;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v11, "postId"

    const-string v12, "TEXT"

    const/4 v14, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "postId"

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v12, "subjectId"

    const-string v13, "TEXT"

    const/4 v15, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v11, "subjectId"

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v13, "groupId"

    const-string v14, "TEXT"

    const/16 v16, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "groupId"

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v14, "status"

    const-string v15, "INTEGER"

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "status"

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v2, Landroidx/room/util/m$a;

    const-string v14, "subjectTitle"

    const-string v15, "TEXT"

    const/16 v16, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "subjectTitle"

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v2, Landroidx/room/util/m$a;

    const-string v14, "se"

    const-string v15, "INTEGER"

    const/16 v16, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "se"

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v2, Landroidx/room/util/m$a;

    const-string v14, "ep"

    const-string v15, "INTEGER"

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v13, "ep"

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v2, Ljava/util/HashSet;

    const/4 v14, 0x0

    invoke-direct {v2, v14}, Ljava/util/HashSet;-><init>(I)V

    .line 23
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15, v14}, Ljava/util/HashSet;-><init>(I)V

    .line 24
    new-instance v14, Landroidx/room/util/m;

    move-object/from16 v17, v5

    const-string v5, "audio"

    invoke-direct {v14, v5, v1, v2, v15}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 25
    const-string v1, "audio"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 26
    invoke-virtual {v14, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "\n Found:\n"

    if-nez v2, :cond_0

    .line 27
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio(com.transsion.baselib.db.audio.AudioBean).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 28
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 29
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    const-string v19, "url"

    const-string v20, "TEXT"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v26, "resourceId"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v19, "name"

    const-string v20, "TEXT"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v14, "name"

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v2, Landroidx/room/util/m$a;

    const-string v19, "cover"

    const-string v20, "TEXT"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "cover"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v2, Landroidx/room/util/m$a;

    const-string v19, "size"

    const-string v20, "INTEGER"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "postId"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v2, Landroidx/room/util/m$a;

    const-string v19, "sizeFormat"

    const-string v20, "TEXT"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "sizeFormat"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v2, Landroidx/room/util/m$a;

    const-string v19, "path"

    const-string v20, "TEXT"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "path"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v2, Landroidx/room/util/m$a;

    const-string v19, "duration"

    const-string v20, "INTEGER"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "duration"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v2, Landroidx/room/util/m$a;

    const-string v19, "updateTimeStamp"

    const-string v20, "INTEGER"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v28, 0x1

    const-string v26, "progress"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "progress"

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v21, 0x1

    const-string v19, "supportRanges"

    const-string v20, "INTEGER"

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v24}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v18, v3

    const-string v3, "supportRanges"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    const-string v20, "status"

    const-string v21, "INTEGER"

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "status"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v2, Landroidx/room/util/m$a;

    const-string v20, "type"

    const-string v21, "INTEGER"

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v2, Landroidx/room/util/m$a;

    const-string v20, "readProgress"

    const-string v21, "INTEGER"

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v25}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v19, v3

    const-string v3, "readProgress"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    const-string v21, "createAt"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "createAt"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "isRead"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "isRead"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "episode"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "episode"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "ep"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x0

    const-string v28, "se"

    const-string v29, "INTEGER"

    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v33}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "resolution"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "resolution"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "resourcePosition"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "resourcePosition"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "multiresolution"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "multiresolution"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "videoWidth"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "videoWidth"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "videoHeight"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "videoHeight"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "downloadErrorCount"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "downloadErrorCount"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "subtitleStarted"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subtitleStarted"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v23, 0x0

    const-string v21, "subjectId"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v30, 0x0

    const-string v28, "pageFrom"

    const-string v29, "TEXT"

    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v33}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "pageFrom"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "lastPageFrom"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "lastPageFrom"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "subjectName"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subjectName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v23, 0x1

    const-string v21, "lastPlayTimeStamp"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "lastPlayTimeStamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "fileType"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "fileType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "totalEpisode"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "totalEpisode"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v23, 0x0

    const-string v21, "uploadBy"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "uploadBy"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "sourceUrl"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "sourceUrl"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v23, 0x1

    const-string v21, "urlCreateAt"

    const-string v22, "INTEGER"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "urlCreateAt"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v23, 0x0

    const-string v21, "subtitleSelectId"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subtitleSelectId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v2, Landroidx/room/util/m$a;

    const-string v21, "taskId"

    const-string v22, "TEXT"

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v26}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v20, v3

    const-string v3, "taskId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    const-string v22, "sessionTime"

    const-string v23, "INTEGER"

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "sessionTime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v2, Landroidx/room/util/m$a;

    const-string v22, "reportStatus"

    const-string v23, "INTEGER"

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "reportStatus"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v2, Landroidx/room/util/m$a;

    const-string v22, "downloadHeaderSize"

    const-string v23, "INTEGER"

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "downloadHeaderSize"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v24, 0x0

    const-string v22, "rootPath"

    const-string v23, "TEXT"

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "rootPath"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v24, 0x1

    const-string v22, "rootPathType"

    const-string v23, "INTEGER"

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "rootPathType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v24, 0x0

    const-string v22, "thumbnail"

    const-string v23, "TEXT"

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "thumbnail"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v2, Landroidx/room/util/m$a;

    const-string v22, "averageHueLight"

    const-string v23, "TEXT"

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v27}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v21, v3

    const-string v3, "averageHueLight"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x0

    const/16 v28, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    const-string v23, "isTransferFailed"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "isTransferFailed"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "isClosedTransferFailed"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "isClosedTransferFailed"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "subjectType"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subjectType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v25, 0x0

    const-string v23, "genre"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "genre"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "subjectDurationSeconds"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subjectDurationSeconds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "currentDubLanName"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "currentDubLanName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "currentDubLanCode"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "currentDubLanCode"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ops"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v30, "restrictLevel"

    const-string v31, "TEXT"

    move-object/from16 v29, v2

    invoke-direct/range {v29 .. v35}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "restrictLevel"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "releaseDate"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "releaseDate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "countryName"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "countryName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "seNum"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "seNum"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "subtitles"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subtitles"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "imdbRate"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "imdbRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "lastAdStartTimeStamp"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "lastAdStartTimeStamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "lastAdEndTimeStamp"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "lastAdEndTimeStamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "subtitleIdType"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subtitleIdType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ugcVideoCollectionId"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcVideoCollectionId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ugcVideoId"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcVideoId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ugcVideoName"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcVideoName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ugcVideoCollectionName"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcVideoCollectionName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ugcVideoPosition"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcVideoPosition"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ugcVideoType"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcVideoType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ugcCateLev1Id"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcCateLev1Id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ugcCateLev2Id"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcCateLev2Id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ugcCateLev3Id"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcCateLev3Id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ugcCateLev4Id"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcCateLev4Id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ugcVideoTrackId"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcVideoTrackId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ugcVideoParentVideoId"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcVideoParentVideoId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ugcVideoParentTrackId"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcVideoParentTrackId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "ugcVideoEpTitle"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcVideoEpTitle"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v25, 0x1

    const-string v23, "ugcVideoIsVertical"

    const-string v24, "INTEGER"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcVideoIsVertical"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v25, 0x0

    const-string v23, "originData"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "originData"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v2, Landroidx/room/util/m$a;

    const-string v23, "kidId"

    const-string v24, "TEXT"

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v28}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "kidId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v22, v8

    .line 110
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 111
    new-instance v3, Landroidx/room/util/m;

    move-object/from16 v23, v12

    const-string v12, "download_table"

    invoke-direct {v3, v12, v1, v2, v8}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 112
    const-string v1, "download_table"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 113
    invoke-virtual {v3, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download_table(com.transsion.baselib.db.download.DownloadBean).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 115
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 116
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v29, 0x0

    const/16 v30, 0x1

    const-string v25, "postId"

    const-string v26, "TEXT"

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v36, 0x0

    const/16 v37, 0x1

    const-string v32, "playProgress"

    const-string v33, "INTEGER"

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "playProgress"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "url"

    const-string v26, "TEXT"

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 120
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 121
    new-instance v3, Landroidx/room/util/m;

    const-string v12, "video"

    invoke-direct {v3, v12, v1, v2, v8}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 122
    const-string v1, "video"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 123
    invoke-virtual {v3, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 124
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video(com.transsion.baselib.db.video.VideoBean).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 125
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 126
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v29, 0x0

    const/16 v30, 0x1

    const-string v25, "id"

    const-string v26, "INTEGER"

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "threadId"

    const-string v26, "INTEGER"

    const/16 v28, 0x0

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "threadId"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "downloadInfoId"

    const-string v26, "TEXT"

    const/16 v27, 0x0

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "downloadInfoId"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "uri"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "uri"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "start"

    const-string v26, "INTEGER"

    const/16 v27, 0x1

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "start"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "end"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "end"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "progress"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v2, Ljava/util/HashSet;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 134
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 135
    new-instance v8, Landroidx/room/util/m;

    move-object/from16 v24, v15

    const-string v15, "download_thread_info"

    invoke-direct {v8, v15, v1, v2, v12}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 136
    const-string v1, "download_thread_info"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 137
    invoke-virtual {v8, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 138
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_thread_info(com.transsion.baselib.db.download.DownloadTaskInfo).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 139
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 140
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v30, 0x0

    const/16 v31, 0x1

    const-string v26, "groupId"

    const-string v27, "TEXT"

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "groupId"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "name"

    const-string v27, "TEXT"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v37, 0x0

    const/16 v38, 0x1

    const-string v33, "avatar"

    const-string v34, "TEXT"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "avatar"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "hasJoin"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "hasJoin"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "newPostCount"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "newPostCount"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "description"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "description"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "postCount"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "postCount"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "userCount"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "userCount"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "level"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "level"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "updateTimeStamp"

    const-string v27, "INTEGER"

    const/16 v28, 0x1

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v2, Ljava/util/HashSet;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 151
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 152
    new-instance v8, Landroidx/room/util/m;

    const-string v15, "room_table"

    invoke-direct {v8, v15, v1, v2, v12}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 153
    const-string v1, "room_table"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 154
    invoke-virtual {v8, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 155
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "room_table(com.transsion.baselib.db.room.RoomItemBean).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 156
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 157
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v30, 0x0

    const/16 v31, 0x1

    const-string v26, "id"

    const-string v27, "INTEGER"

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v37, 0x0

    const/16 v38, 0x1

    const-string v33, "deep_link_list"

    const-string v34, "TEXT"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "deep_link_list"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "desc"

    const-string v27, "TEXT"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v2, Landroidx/room/util/m$a;

    const-string v33, "image_list"

    const-string v34, "TEXT"

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "image_list"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "message_id"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "message_id"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "style"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "style"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "title"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v8, v17

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v2, Ljava/util/HashSet;

    const/4 v12, 0x0

    invoke-direct {v2, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 165
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 166
    new-instance v12, Landroidx/room/util/m;

    move-object/from16 v17, v14

    const-string v14, "permanent_msg"

    invoke-direct {v12, v14, v1, v2, v15}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 167
    const-string v1, "permanent_msg"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 168
    invoke-virtual {v12, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 169
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permanent_msg(com.transsion.baselib.db.notification.PermanentMsgBean).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 170
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 171
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const-string v26, "resourceId"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v37, 0x0

    const/16 v38, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-string v33, "postId"

    const-string v34, "TEXT"

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v26, "url"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v2, Landroidx/room/util/m$a;

    const-string v33, "path"

    const-string v34, "TEXT"

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "path"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "lan"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "lan"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v28, 0x1

    const-string v26, "lanName"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "lanName"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v28, 0x0

    const-string v26, "subtitleName"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "subtitleName"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "size"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v4, v18

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "delayDuration"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "delayDuration"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v28, 0x1

    const-string v26, "status"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "status"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "type"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v4, v19

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v28, 0x0

    const-string v26, "fileCharsetName"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "fileCharsetName"

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "subjectId"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v35, 0x1

    const-string v33, "ep"

    const-string v34, "INTEGER"

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v28, 0x1

    const-string v26, "se"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v10, v23

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "resolution"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "resolution"

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v2, Ljava/util/HashSet;

    const/4 v12, 0x0

    invoke-direct {v2, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 188
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 189
    new-instance v12, Landroidx/room/util/m;

    const-string v15, "download_subtitle_table"

    invoke-direct {v12, v15, v1, v2, v14}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 190
    const-string v1, "download_subtitle_table"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 191
    invoke-virtual {v12, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 192
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_subtitle_table(com.transsion.baselib.db.download.SubtitleBean).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 193
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 194
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const-string v26, "id"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v37, 0x0

    const/16 v38, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-string v33, "deep_link"

    const-string v34, "TEXT"

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "deep_link"

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v26, "desc"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v2, Landroidx/room/util/m$a;

    const-string v33, "image_list"

    const-string v34, "TEXT"

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "image_list"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "message_id"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "message_id"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "source"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "source"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "style"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "style"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "title"

    const-string v27, "TEXT"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v2, Landroidx/room/util/m$a;

    const-string v33, "type"

    const-string v34, "TEXT"

    move-object/from16 v32, v2

    invoke-direct/range {v32 .. v38}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "receive_time"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "receive_time"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v28, 0x1

    const-string v26, "msg_status"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "msg_status"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v28, 0x0

    const-string v26, "show_time"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "show_time"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v28, 0x1

    const-string v26, "force_show"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "force_show"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "has_screen_on"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "has_screen_on"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "built_in"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "built_in"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v2, Landroidx/room/util/m$a;

    const-string v26, "permanent_msg_status"

    const-string v27, "INTEGER"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "permanent_msg_status"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v2, Ljava/util/HashSet;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 211
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 212
    new-instance v6, Landroidx/room/util/m;

    const-string v14, "msg"

    invoke-direct {v6, v14, v1, v2, v12}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 213
    const-string v1, "msg"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 214
    invoke-virtual {v6, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 215
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg(com.transsion.baselib.db.notification.MsgBean).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 216
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 217
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v30, 0x0

    const/16 v31, 0x1

    const-string v26, "id"

    const-string v27, "INTEGER"

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v25, v6

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v37, 0x0

    const/16 v38, 0x1

    const-string v33, "updateTimeStamp"

    const-string v34, "INTEGER"

    const/16 v35, 0x1

    const/16 v36, 0x0

    move-object/from16 v32, v6

    invoke-direct/range {v32 .. v38}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v6, Landroidx/room/util/m$a;

    const-string v26, "dataType"

    const-string v27, "INTEGER"

    const/16 v29, 0x0

    move-object/from16 v25, v6

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "dataType"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v6, Landroidx/room/util/m$a;

    const-string v26, "appVersion"

    const-string v27, "INTEGER"

    move-object/from16 v25, v6

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "appVersion"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v6, Landroidx/room/util/m$a;

    const-string v26, "consumeJson"

    const-string v27, "TEXT"

    const/16 v28, 0x0

    move-object/from16 v25, v6

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "consumeJson"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v6, Ljava/util/HashSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 223
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 224
    new-instance v7, Landroidx/room/util/m;

    const-string v14, "consume_bean"

    invoke-direct {v7, v14, v1, v6, v12}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 225
    const-string v1, "consume_bean"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 226
    invoke-virtual {v7, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 227
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consume_bean(com.transsion.baselib.db.consume.ConsumeBean).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 228
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    const/4 v6, 0x6

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 229
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v30, 0x0

    const/16 v31, 0x1

    const-string v26, "threadId"

    const-string v27, "INTEGER"

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v25, v6

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "threadId"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v6, Landroidx/room/util/m$a;

    const-string v26, "rangeId"

    const-string v27, "INTEGER"

    const/16 v29, 0x2

    move-object/from16 v25, v6

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "rangeId"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v6, Landroidx/room/util/m$a;

    const-string v26, "resourceId"

    const-string v27, "TEXT"

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v6

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v37, 0x0

    const/16 v38, 0x1

    const-string v33, "start"

    const-string v34, "INTEGER"

    const/16 v35, 0x1

    const/16 v36, 0x0

    move-object/from16 v32, v6

    invoke-direct/range {v32 .. v38}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "start"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v6, Landroidx/room/util/m$a;

    const-string v26, "end"

    const-string v27, "INTEGER"

    const/16 v28, 0x1

    move-object/from16 v25, v6

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "end"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v6, Landroidx/room/util/m$a;

    const-string v26, "progress"

    const-string v27, "INTEGER"

    move-object/from16 v25, v6

    invoke-direct/range {v25 .. v31}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v7, v24

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v6, Ljava/util/HashSet;

    const/4 v12, 0x0

    invoke-direct {v6, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 236
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 237
    new-instance v12, Landroidx/room/util/m;

    const-string v15, "download_thread_range"

    invoke-direct {v12, v15, v1, v6, v14}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 238
    const-string v1, "download_thread_range"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 239
    invoke-virtual {v12, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 240
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_thread_range(com.transsion.baselib.db.download.DownloadRange).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 241
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    const/4 v6, 0x3

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 242
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v28, 0x0

    const/16 v29, 0x1

    const-string v24, "resourceId"

    const-string v25, "TEXT"

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v35, 0x0

    const/16 v36, 0x1

    const-string v31, "startAdDayKey"

    const-string v32, "INTEGER"

    const/16 v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v30, v6

    invoke-direct/range {v30 .. v36}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "startAdDayKey"

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "endAdDayKey"

    const-string v25, "INTEGER"

    const/16 v27, 0x0

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "endAdDayKey"

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v6, Ljava/util/HashSet;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 246
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 247
    new-instance v9, Landroidx/room/util/m;

    const-string v14, "video_land_ad"

    invoke-direct {v9, v14, v1, v6, v12}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 248
    const-string v1, "video_land_ad"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 249
    invoke-virtual {v9, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 250
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video_land_ad(com.transsion.baselib.db.video.VideoLandAdBean).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 251
    :cond_a
    new-instance v1, Ljava/util/HashMap;

    const/4 v6, 0x4

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 252
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v28, 0x0

    const/16 v29, 0x1

    const-string v24, "lan"

    const-string v25, "TEXT"

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "lan"

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "lanIOS3"

    const-string v25, "TEXT"

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "lanIOS3"

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "lanName"

    const-string v25, "TEXT"

    const/16 v26, 0x1

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "lanName"

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "inSearch"

    const-string v25, "INTEGER"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "inSearch"

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v6, Ljava/util/HashSet;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 257
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 258
    new-instance v9, Landroidx/room/util/m;

    const-string v14, "subtitle_language_map_table"

    invoke-direct {v9, v14, v1, v6, v12}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 259
    const-string v1, "subtitle_language_map_table"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 260
    invoke-virtual {v9, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 261
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subtitle_language_map_table(com.transsion.baselib.db.download.SubtitleLanguageMapBean).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 262
    :cond_b
    new-instance v1, Ljava/util/HashMap;

    const/16 v6, 0x1a

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 263
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    const-string v24, "id"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-string v31, "version"

    const-string v32, "TEXT"

    move-object/from16 v30, v6

    invoke-direct/range {v30 .. v36}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v9, "version"

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string v24, "name"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v9, v17

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "startTime"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "startTime"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "endTime"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "endTime"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "extraConfig"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "extraConfig"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "displayTimes"

    const-string v25, "INTEGER"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "displayTimes"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "showedTimes"

    const-string v25, "INTEGER"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "showedTimes"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "showDate"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "showDate"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "advertiserName"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "advertiserName"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "advertiserAvatar"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "advertiserAvatar"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "advertiserAvatarPath"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "advertiserAvatarPath"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "brand"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "brand"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "denyBrand"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "denyBrand"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "model"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "model"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "denyModel"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "denyModel"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "country"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "country"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "scenes"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "scenes"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "adMaterialList"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "adMaterialList"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "adPlanUpdateTime"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "adPlanUpdateTime"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "sort"

    const-string v25, "INTEGER"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "sort"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "adShowLevel"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "adShowLevel"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "filterClientVersion"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "filterClientVersion"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "adPlanCreateTime"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "adPlanCreateTime"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "appStarDesc"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "appStarDesc"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "appSizeDesc"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "appSizeDesc"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v6, Ljava/util/HashSet;

    const/4 v12, 0x0

    invoke-direct {v6, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 290
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 291
    new-instance v12, Landroidx/room/util/m;

    const-string v15, "non_ad_plans"

    invoke-direct {v12, v15, v1, v6, v14}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 292
    const-string v1, "non_ad_plans"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 293
    invoke-virtual {v12, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 294
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non_ad_plans(com.transsion.baselib.db.non.NonAdPlans).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 295
    :cond_c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 296
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v28, 0x0

    const/16 v29, 0x1

    const-string v24, "id"

    const-string v25, "INTEGER"

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v35, 0x0

    const/16 v36, 0x1

    const-string v31, "Country"

    const-string v32, "TEXT"

    const/16 v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v30, v6

    invoke-direct/range {v30 .. v36}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "Country"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "Mcc"

    const-string v25, "TEXT"

    const/16 v27, 0x0

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "Mcc"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "Iso"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "Iso"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "CountryCode"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "CountryCode"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v6, Ljava/util/HashSet;

    const/4 v12, 0x0

    invoke-direct {v6, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 302
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 303
    new-instance v12, Landroidx/room/util/m;

    const-string v15, "local_mcc"

    invoke-direct {v12, v15, v1, v6, v14}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 304
    const-string v1, "local_mcc"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 305
    invoke-virtual {v12, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 306
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local_mcc(com.transsion.baselib.db.mcc.LocalMcc).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 307
    :cond_d
    new-instance v1, Ljava/util/HashMap;

    const/16 v6, 0xe

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 308
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    const-string v24, "subjectId"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v33, 0x1

    const/16 v34, 0x0

    const-string v31, "id"

    const-string v32, "TEXT"

    move-object/from16 v30, v6

    invoke-direct/range {v30 .. v36}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v27, 0x0

    const-string v24, "ep"

    const-string v25, "INTEGER"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v6, Landroidx/room/util/m$a;

    const-string v31, "se"

    const-string v32, "INTEGER"

    move-object/from16 v30, v6

    invoke-direct/range {v30 .. v36}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "totalEp"

    const-string v25, "INTEGER"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "totalEp"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "progress"

    const-string v25, "INTEGER"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v33, 0x0

    const-string v31, "title"

    const-string v32, "TEXT"

    move-object/from16 v30, v6

    invoke-direct/range {v30 .. v36}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v26, 0x0

    const-string v24, "description"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "description"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "coverUrl"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v12, "coverUrl"

    invoke-interface {v1, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "thumbnail"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v14, v21

    invoke-interface {v1, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "videoId"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "videoId"

    invoke-interface {v1, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v6, Landroidx/room/util/m$a;

    const-string v24, "videoUrl"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "videoUrl"

    invoke-interface {v1, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v26, 0x1

    const-string v24, "timeStamp"

    const-string v25, "INTEGER"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v15, "timeStamp"

    invoke-interface {v1, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v6, Landroidx/room/util/m$a;

    const/16 v26, 0x0

    const-string v24, "subtitleSelectId"

    const-string v25, "TEXT"

    move-object/from16 v23, v6

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v2, v20

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v6, Ljava/util/HashSet;

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v18, v9

    .line 323
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 324
    new-instance v4, Landroidx/room/util/m;

    const-string v2, "short_tv_play"

    invoke-direct {v4, v2, v1, v6, v9}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 325
    const-string v1, "short_tv_play"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 326
    invoke-virtual {v4, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 327
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "short_tv_play(com.transsion.baselib.db.video.ShortTVPlayBean).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 328
    :cond_e
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 329
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v28, 0x0

    const/16 v29, 0x1

    const-string v24, "subjectId"

    const-string v25, "TEXT"

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v35, 0x0

    const/16 v36, 0x1

    const-string v31, "favoriteNum"

    const-string v32, "TEXT"

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "favoriteNum"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v2, Landroidx/room/util/m$a;

    const-string v24, "hasFavorite"

    const-string v25, "INTEGER"

    const/16 v27, 0x0

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "hasFavorite"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance v2, Landroidx/room/util/m$a;

    const-string v24, "favoriteTime"

    const-string v25, "TEXT"

    const/16 v26, 0x0

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "favoriteTime"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    new-instance v2, Ljava/util/HashSet;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 334
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 335
    new-instance v4, Landroidx/room/util/m;

    const-string v9, "ShortTvFavoriteState"

    invoke-direct {v4, v9, v1, v2, v6}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 336
    const-string v1, "ShortTvFavoriteState"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 337
    invoke-virtual {v4, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 338
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShortTvFavoriteState(com.transsion.baselib.db.video.ShortTvFavoriteState).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 339
    :cond_f
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 340
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    const-string v24, "subjectId"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v35, 0x0

    const/16 v36, 0x1

    const/16 v33, 0x1

    const/16 v34, 0x0

    const-string v31, "id"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x2

    const-string v24, "ep"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v34, 0x3

    const-string v31, "se"

    const-string v32, "INTEGER"

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x0

    const-string v24, "progress"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-string v31, "title"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v26, 0x0

    const-string v24, "coverUrl"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v2, Landroidx/room/util/m$a;

    const-string v31, "thumbnail"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v2, Landroidx/room/util/m$a;

    const-string v24, "videoUrl"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "videoUrl"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v26, 0x1

    const-string v24, "timeStamp"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v2, Landroidx/room/util/m$a;

    const-string v31, "subtitleSelectId"

    const-string v32, "TEXT"

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v36}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v4, v20

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v26, 0x0

    const-string v24, "totalDuration"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "totalDuration"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance v2, Landroidx/room/util/m$a;

    const-string v24, "subjectDurationSeconds"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "subjectDurationSeconds"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    new-instance v2, Landroidx/room/util/m$a;

    const-string v24, "averageHueLight"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "averageHueLight"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v2, Landroidx/room/util/m$a;

    const-string v24, "subjectType"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "subjectType"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v26, 0x1

    const-string v24, "hasDelete"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "hasDelete"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v2, Landroidx/room/util/m$a;

    const-string v24, "playMode"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "playMode"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v26, 0x0

    const-string v24, "downloadUrl"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "downloadUrl"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    new-instance v2, Landroidx/room/util/m$a;

    const-string v24, "downloadFilePath"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "downloadFilePath"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v26, 0x1

    const-string v24, "downloadSize"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "downloadSize"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v26, 0x0

    const-string v24, "dubs"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "dubs"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v2, Landroidx/room/util/m$a;

    const-string v24, "lastAdStartTimeStamp"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "lastAdStartTimeStamp"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v2, Landroidx/room/util/m$a;

    const-string v24, "lastAdEndTimeStamp"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "lastAdEndTimeStamp"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v26, 0x1

    const-string v24, "rewardPlayed"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "rewardPlayed"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v2, Landroidx/room/util/m$a;

    const-string v24, "rewardUnlock"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "rewardUnlock"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    new-instance v2, Landroidx/room/util/m$a;

    const-string v24, "rewardFree"

    const-string v25, "INTEGER"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "rewardFree"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v26, 0x0

    const-string v24, "ops"

    const-string v25, "TEXT"

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v6, v22

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    new-instance v2, Ljava/util/HashSet;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v20, v3

    .line 368
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 369
    new-instance v9, Landroidx/room/util/m;

    move-object/from16 v23, v10

    const-string v10, "video_detail_play"

    invoke-direct {v9, v10, v1, v2, v3}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 370
    const-string v1, "video_detail_play"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 371
    invoke-virtual {v9, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 372
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video_detail_play(com.transsion.baselib.db.video.VideoDetailPlayBean).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 373
    :cond_10
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 374
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    const-string v25, "subjectId"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-string v32, "title"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v25, "coverUrl"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v2, Landroidx/room/util/m$a;

    const-string v32, "countryName"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "countryName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "genre"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "genre"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "releaseDate"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "releaseDate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x1

    const-string v25, "durationSeconds"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "durationSeconds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x0

    const-string v25, "singerName"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "singerName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "singerAvatar"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "singerAvatar"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "path"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "path"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x1

    const-string v25, "timeStamp"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 386
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 387
    new-instance v3, Landroidx/room/util/m;

    const-string v10, "music_liked"

    invoke-direct {v3, v10, v1, v2, v9}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 388
    const-string v1, "music_liked"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 389
    invoke-virtual {v3, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 390
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "music_liked(com.transsion.baselib.db.music.MusicLikedDbBean).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 391
    :cond_11
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 392
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v29, 0x0

    const/16 v30, 0x1

    const-string v25, "latitude"

    const-string v26, "REAL"

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "latitude"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "longitude"

    const-string v26, "REAL"

    const/16 v28, 0x2

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "longitude"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "name"

    const-string v26, "TEXT"

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v18

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "address"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "address"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "distance"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "distance"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 398
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 399
    new-instance v3, Landroidx/room/util/m;

    const-string v10, "place_list"

    invoke-direct {v3, v10, v1, v2, v9}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 400
    const-string v1, "place_list"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 401
    invoke-virtual {v3, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 402
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "place_list(com.transsion.baselib.db.place.PlaceDBBean).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 403
    :cond_12
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 404
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    const-string v25, "collectionId"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "collectionId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v28, 0x0

    const-string v25, "ugcVideoId"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcVideoId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "progress"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-string v32, "title"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x0

    const-string v25, "coverUrl"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance v2, Landroidx/room/util/m$a;

    const-string v32, "thumbnail"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x1

    const-string v25, "position"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "position"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x0

    const-string v25, "type"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v19

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "cateLev1Id"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "cateLev1Id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "cateLev2Id"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "cateLev2Id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "cateLev3Id"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "cateLev3Id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "cateLev4Id"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "cateLev4Id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x1

    const-string v25, "timeStamp"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v2, Landroidx/room/util/m$a;

    const-string v32, "subtitleSelectId"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x0

    const-string v25, "totalDuration"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "totalDuration"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "subjectDurationSeconds"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subjectDurationSeconds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "averageHueLight"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "averageHueLight"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "subjectType"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "subjectType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x1

    const-string v25, "hasDelete"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "hasDelete"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "playMode"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "playMode"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x0

    const-string v25, "downloadUrl"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "downloadUrl"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "downloadResid"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "downloadResid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "downloadFilePath"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "downloadFilePath"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x1

    const-string v25, "downloadSize"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "downloadSize"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x0

    const-string v25, "lastAdStartTimeStamp"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "lastAdStartTimeStamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "lastAdEndTimeStamp"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "lastAdEndTimeStamp"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x1

    const-string v25, "rewardPlayed"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "rewardPlayed"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "rewardUnlock"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "rewardUnlock"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "rewardFree"

    const-string v26, "INTEGER"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "rewardFree"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v27, 0x0

    const-string v25, "ops"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v2, Landroidx/room/util/m$a;

    const-string v32, "uid"

    const-string v33, "TEXT"

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "uid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "userName"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "userName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "userAvatar"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "userAvatar"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "description"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "description"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "videoStyle"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "videoStyle"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "kidId"

    const-string v26, "TEXT"

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "kidId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 441
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 442
    new-instance v3, Landroidx/room/util/m;

    const-string v6, "ugc_video_detail_play"

    invoke-direct {v3, v6, v1, v2, v4}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 443
    const-string v1, "ugc_video_detail_play"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 444
    invoke-virtual {v3, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 445
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ugc_video_detail_play(com.transsion.baselib.db.video.UGCVideoDetailPlayBean).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 446
    :cond_13
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 447
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v29, 0x0

    const/16 v30, 0x1

    const-string v25, "collectionId"

    const-string v26, "TEXT"

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "collectionId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    new-instance v2, Landroidx/room/util/m$a;

    const-string v25, "ugcVideoIds"

    const-string v26, "TEXT"

    const/16 v28, 0x0

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "ugcVideoIds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 450
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 451
    new-instance v3, Landroidx/room/util/m;

    const-string v6, "ugc_collection_video_group"

    invoke-direct {v3, v6, v1, v2, v4}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 452
    const-string v1, "ugc_collection_video_group"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 453
    invoke-virtual {v3, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 454
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ugc_collection_video_group(com.transsion.baselib.db.video.UGCCollectionVideoGroup).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 455
    :cond_14
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 456
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v29, 0x0

    const/16 v30, 0x1

    const-string v25, "subjectId"

    const-string v26, "TEXT"

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    new-instance v2, Landroidx/room/util/m$a;

    const/16 v36, 0x0

    const/16 v37, 0x1

    const-string v32, "ep"

    const-string v33, "INTEGER"

    const/16 v34, 0x1

    const/16 v35, 0x2

    move-object/from16 v31, v2

    invoke-direct/range {v31 .. v37}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v2, Landroidx/room/util/m$a;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v7, "se"

    const-string v8, "INTEGER"

    const/4 v9, 0x1

    const/4 v10, 0x3

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v23

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    new-instance v2, Landroidx/room/util/m$a;

    const-string v7, "vipResolutionTip"

    const-string v8, "INTEGER"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "vipResolutionTip"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    new-instance v2, Landroidx/room/util/m$a;

    const-string v7, "isUnlock"

    const-string v8, "INTEGER"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "isUnlock"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 462
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 463
    new-instance v3, Landroidx/room/util/m;

    const-string v6, "member_resolution"

    invoke-direct {v3, v6, v1, v2, v4}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 464
    const-string v1, "member_resolution"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v1

    .line 465
    invoke-virtual {v3, v1}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 466
    new-instance v0, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "member_resolution(com.transsion.baselib.db.member.MemberResolutionBean).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 467
    :cond_15
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 468
    new-instance v2, Landroidx/room/util/m$a;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v7, "id"

    const-string v8, "TEXT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    move-object/from16 v3, v20

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    new-instance v2, Landroidx/room/util/m$a;

    const-string v7, "showTime"

    const-string v8, "INTEGER"

    const/4 v10, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "showTime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance v2, Landroidx/room/util/m$a;

    const-string v7, "closeTime"

    const-string v8, "INTEGER"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "closeTime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    new-instance v2, Landroidx/room/util/m$a;

    const-string v7, "chooseTime"

    const-string v8, "INTEGER"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "chooseTime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    new-instance v2, Landroidx/room/util/m$a;

    const-string v7, "showIntervalSeconds"

    const-string v8, "INTEGER"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "showIntervalSeconds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    new-instance v2, Landroidx/room/util/m$a;

    const-string v7, "closeIntervalSeconds"

    const-string v8, "INTEGER"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "closeIntervalSeconds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    new-instance v2, Landroidx/room/util/m$a;

    const-string v7, "chooseIntervalSeconds"

    const-string v8, "INTEGER"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/m$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "chooseIntervalSeconds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 476
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 477
    new-instance v3, Landroidx/room/util/m;

    const-string v6, "home_preferences_interval_time"

    invoke-direct {v3, v6, v1, v2, v4}, Landroidx/room/util/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 478
    const-string v1, "home_preferences_interval_time"

    invoke-static {v0, v1}, Landroidx/room/util/m;->a(Ly3/b;Ljava/lang/String;)Landroidx/room/util/m;

    move-result-object v0

    .line 479
    invoke-virtual {v3, v0}, Landroidx/room/util/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 480
    new-instance v1, Landroidx/room/f0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "home_preferences_interval_time(com.transsion.baselib.db.home.HomePreferencesIntervalTimeDbBean).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v1

    .line 481
    :cond_16
    new-instance v0, Landroidx/room/f0$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/f0$a;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
