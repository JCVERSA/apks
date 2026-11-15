package com.transsion.baselib.db;

import aj.e;
import androidx.core.app.NotificationCompat;
import androidx.room.InvalidationTracker;
import androidx.room.f0;
import androidx.room.util.m;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.config.utils.CommonUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.baselib.db.member.MemberResolutionDao;
import com.transsion.baselib.db.member.g;
import com.transsion.baselib.db.place.PlaceDao;
import com.transsion.baselib.db.video.IShortTvFavoriteStateDao;
import com.transsion.baselib.db.video.ShortTVPlayDao;
import com.transsion.baselib.db.video.UGCCollectionVideoGroupDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.baselib.db.video.a1;
import com.transsion.baselib.db.video.b1;
import com.transsion.baselib.db.video.d;
import com.transsion.baselib.db.video.j0;
import com.transsion.baselib.db.video.k0;
import com.transsion.baselib.db.video.q;
import com.transsion.baselib.db.video.z0;
import com.transsion.ninegridview.preview.GifImagePreviewActivity;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import si.j;
import ui.c;
import ui.c1;
import ui.d1;
import ui.h1;
import ui.l0;
import ui.n0;
import ui.r0;
import ui.t0;
import ui.u0;
import ui.v0;
import y3.b;
import zi.h;
import zi.i;

public final class AppDatabase_Impl extends AppDatabase {
    private volatile zi.a A0;
    private volatile n0 B0;
    private volatile a1 C0;
    private volatile ShortTVPlayDao D0;
    private volatile d1 E0;
    private volatile IShortTvFavoriteStateDao F0;
    private volatile VideoDetailPlayDao G0;
    private volatile xi.a H0;
    private volatile PlaceDao I0;
    private volatile UGCVideoDetailPlayDao J0;
    private volatile UGCCollectionVideoGroupDao K0;
    private volatile MemberResolutionDao L0;
    private volatile vi.a M0;

    private volatile si.a f41931w0;

    private volatile c f41932x0;

    private volatile aj.a f41933y0;

    private volatile v0 f41934z0;

    class a extends f0 {
        a(int i10, String str, String str2) {
            super(i10, str, str2);
        }

        @Override
        public void a(b bVar) throws Exception {
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `audio` (`audioId` TEXT NOT NULL, `cover` TEXT, `duration` INTEGER, `size` INTEGER, `url` TEXT, `title` TEXT, `desc` TEXT, `bitrate` INTEGER, `updateTimeStamp` INTEGER, `readProcess` INTEGER, `localPath` TEXT, `ops` TEXT, `resourceId` TEXT, `postId` TEXT, `subjectId` TEXT, `groupId` TEXT, `status` INTEGER NOT NULL, `subjectTitle` TEXT, `se` INTEGER NOT NULL, `ep` INTEGER NOT NULL, PRIMARY KEY(`audioId`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `download_table` (`url` TEXT NOT NULL, `resourceId` TEXT, `name` TEXT, `cover` TEXT, `size` INTEGER, `postId` TEXT, `sizeFormat` TEXT, `path` TEXT, `duration` INTEGER, `updateTimeStamp` INTEGER, `progress` INTEGER NOT NULL, `supportRanges` INTEGER NOT NULL, `status` INTEGER NOT NULL, `type` INTEGER NOT NULL, `readProgress` INTEGER NOT NULL, `createAt` INTEGER NOT NULL, `isRead` INTEGER NOT NULL, `episode` INTEGER NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `resolution` INTEGER NOT NULL, `resourcePosition` INTEGER NOT NULL, `multiresolution` INTEGER NOT NULL, `videoWidth` INTEGER NOT NULL, `videoHeight` INTEGER NOT NULL, `downloadErrorCount` INTEGER NOT NULL, `subtitleStarted` INTEGER NOT NULL, `subjectId` TEXT, `pageFrom` TEXT, `lastPageFrom` TEXT, `subjectName` TEXT, `lastPlayTimeStamp` INTEGER NOT NULL, `fileType` INTEGER NOT NULL, `totalEpisode` INTEGER NOT NULL, `uploadBy` TEXT, `sourceUrl` TEXT, `urlCreateAt` INTEGER NOT NULL, `subtitleSelectId` TEXT, `taskId` TEXT, `sessionTime` INTEGER NOT NULL, `reportStatus` INTEGER NOT NULL, `downloadHeaderSize` INTEGER NOT NULL, `rootPath` TEXT, `rootPathType` INTEGER NOT NULL, `thumbnail` TEXT, `averageHueLight` TEXT, `isTransferFailed` INTEGER NOT NULL, `isClosedTransferFailed` INTEGER NOT NULL, `subjectType` INTEGER NOT NULL, `genre` TEXT, `subjectDurationSeconds` INTEGER, `currentDubLanName` TEXT, `currentDubLanCode` TEXT, `ops` TEXT, `restrictLevel` TEXT, `releaseDate` TEXT, `countryName` TEXT, `seNum` INTEGER, `subtitles` TEXT, `imdbRate` TEXT, `lastAdStartTimeStamp` INTEGER, `lastAdEndTimeStamp` INTEGER, `subtitleIdType` TEXT, `ugcVideoCollectionId` TEXT, `ugcVideoId` TEXT, `ugcVideoName` TEXT, `ugcVideoCollectionName` TEXT, `ugcVideoPosition` INTEGER, `ugcVideoType` TEXT, `ugcCateLev1Id` INTEGER, `ugcCateLev2Id` INTEGER, `ugcCateLev3Id` INTEGER, `ugcCateLev4Id` INTEGER, `ugcVideoTrackId` TEXT, `ugcVideoParentVideoId` TEXT, `ugcVideoParentTrackId` TEXT, `ugcVideoEpTitle` TEXT, `ugcVideoIsVertical` INTEGER NOT NULL, `originData` TEXT, `kidId` TEXT, PRIMARY KEY(`url`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `video` (`postId` TEXT NOT NULL, `playProgress` INTEGER, `url` TEXT, PRIMARY KEY(`postId`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `download_thread_info` (`id` INTEGER NOT NULL, `threadId` INTEGER NOT NULL, `downloadInfoId` TEXT, `uri` TEXT, `start` INTEGER NOT NULL, `end` INTEGER NOT NULL, `progress` INTEGER NOT NULL, PRIMARY KEY(`id`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `room_table` (`groupId` TEXT NOT NULL, `name` TEXT, `avatar` TEXT, `hasJoin` INTEGER, `newPostCount` INTEGER, `description` TEXT, `postCount` INTEGER, `userCount` INTEGER, `level` TEXT, `updateTimeStamp` INTEGER NOT NULL, PRIMARY KEY(`groupId`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `permanent_msg` (`id` INTEGER NOT NULL, `deep_link_list` TEXT, `desc` TEXT, `image_list` TEXT, `message_id` TEXT, `style` TEXT, `title` TEXT, PRIMARY KEY(`id`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `download_subtitle_table` (`resourceId` TEXT NOT NULL, `postId` TEXT, `url` TEXT, `path` TEXT, `lan` TEXT, `lanName` TEXT NOT NULL, `subtitleName` TEXT, `size` INTEGER, `delayDuration` INTEGER, `status` INTEGER NOT NULL, `type` INTEGER NOT NULL, `fileCharsetName` TEXT, `subjectId` TEXT, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `resolution` INTEGER NOT NULL, PRIMARY KEY(`resourceId`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `msg` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `deep_link` TEXT, `desc` TEXT, `image_list` TEXT, `message_id` TEXT, `source` TEXT, `style` TEXT, `title` TEXT, `type` TEXT, `receive_time` INTEGER, `msg_status` INTEGER NOT NULL, `show_time` INTEGER, `force_show` INTEGER NOT NULL, `has_screen_on` INTEGER NOT NULL, `built_in` INTEGER NOT NULL, `permanent_msg_status` INTEGER NOT NULL)");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `consume_bean` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `updateTimeStamp` INTEGER NOT NULL, `dataType` INTEGER NOT NULL, `appVersion` INTEGER NOT NULL, `consumeJson` TEXT)");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `download_thread_range` (`threadId` INTEGER NOT NULL, `rangeId` INTEGER NOT NULL, `resourceId` TEXT, `start` INTEGER NOT NULL, `end` INTEGER NOT NULL, `progress` INTEGER NOT NULL, PRIMARY KEY(`threadId`, `rangeId`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `video_land_ad` (`resourceId` TEXT NOT NULL, `startAdDayKey` INTEGER NOT NULL, `endAdDayKey` INTEGER NOT NULL, PRIMARY KEY(`resourceId`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `subtitle_language_map_table` (`lan` TEXT NOT NULL, `lanIOS3` TEXT, `lanName` TEXT NOT NULL, `inSearch` INTEGER NOT NULL, PRIMARY KEY(`lan`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `non_ad_plans` (`id` TEXT NOT NULL, `version` TEXT, `name` TEXT, `startTime` TEXT, `endTime` TEXT, `extraConfig` TEXT, `displayTimes` INTEGER, `showedTimes` INTEGER, `showDate` TEXT, `advertiserName` TEXT, `advertiserAvatar` TEXT, `advertiserAvatarPath` TEXT, `brand` TEXT, `denyBrand` TEXT, `model` TEXT, `denyModel` TEXT, `country` TEXT, `scenes` TEXT, `adMaterialList` TEXT, `adPlanUpdateTime` TEXT, `sort` INTEGER, `adShowLevel` TEXT, `filterClientVersion` TEXT, `adPlanCreateTime` TEXT, `appStarDesc` TEXT, `appSizeDesc` TEXT, PRIMARY KEY(`id`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `local_mcc` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `Country` TEXT NOT NULL, `Mcc` TEXT NOT NULL, `Iso` TEXT NOT NULL, `CountryCode` TEXT NOT NULL)");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `short_tv_play` (`subjectId` TEXT NOT NULL, `id` TEXT NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `totalEp` INTEGER NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `description` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `videoId` TEXT, `videoUrl` TEXT, `timeStamp` INTEGER NOT NULL, `subtitleSelectId` TEXT, PRIMARY KEY(`subjectId`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `ShortTvFavoriteState` (`subjectId` TEXT NOT NULL, `favoriteNum` TEXT, `hasFavorite` INTEGER NOT NULL, `favoriteTime` TEXT, PRIMARY KEY(`subjectId`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `video_detail_play` (`subjectId` TEXT NOT NULL, `id` TEXT NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `videoUrl` TEXT, `timeStamp` INTEGER NOT NULL, `subtitleSelectId` TEXT, `totalDuration` INTEGER, `subjectDurationSeconds` INTEGER, `averageHueLight` TEXT, `subjectType` INTEGER, `hasDelete` INTEGER NOT NULL, `playMode` TEXT NOT NULL, `downloadUrl` TEXT, `downloadFilePath` TEXT, `downloadSize` INTEGER NOT NULL, `dubs` TEXT, `lastAdStartTimeStamp` INTEGER, `lastAdEndTimeStamp` INTEGER, `rewardPlayed` INTEGER NOT NULL, `rewardUnlock` INTEGER NOT NULL, `rewardFree` INTEGER NOT NULL, `ops` TEXT, PRIMARY KEY(`subjectId`, `ep`, `se`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `music_liked` (`subjectId` TEXT NOT NULL, `title` TEXT, `coverUrl` TEXT, `countryName` TEXT, `genre` TEXT, `releaseDate` TEXT, `durationSeconds` INTEGER NOT NULL, `singerName` TEXT, `singerAvatar` TEXT, `path` TEXT, `timeStamp` INTEGER NOT NULL, PRIMARY KEY(`subjectId`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `place_list` (`latitude` REAL NOT NULL, `longitude` REAL NOT NULL, `name` TEXT, `address` TEXT, `distance` TEXT, PRIMARY KEY(`latitude`, `longitude`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `ugc_video_detail_play` (`collectionId` TEXT NOT NULL, `ugcVideoId` TEXT NOT NULL, `progress` INTEGER NOT NULL, `title` TEXT, `coverUrl` TEXT, `thumbnail` TEXT, `position` INTEGER NOT NULL, `type` TEXT, `cateLev1Id` INTEGER, `cateLev2Id` INTEGER, `cateLev3Id` INTEGER, `cateLev4Id` INTEGER, `timeStamp` INTEGER NOT NULL, `subtitleSelectId` TEXT, `totalDuration` INTEGER, `subjectDurationSeconds` INTEGER, `averageHueLight` TEXT, `subjectType` INTEGER, `hasDelete` INTEGER NOT NULL, `playMode` TEXT NOT NULL, `downloadUrl` TEXT, `downloadResid` TEXT, `downloadFilePath` TEXT, `downloadSize` INTEGER NOT NULL, `lastAdStartTimeStamp` INTEGER, `lastAdEndTimeStamp` INTEGER, `rewardPlayed` INTEGER NOT NULL, `rewardUnlock` INTEGER NOT NULL, `rewardFree` INTEGER NOT NULL, `ops` TEXT, `uid` TEXT, `userName` TEXT, `userAvatar` TEXT, `description` TEXT, `videoStyle` TEXT, `kidId` TEXT, PRIMARY KEY(`collectionId`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `ugc_collection_video_group` (`collectionId` TEXT NOT NULL, `ugcVideoIds` TEXT NOT NULL, PRIMARY KEY(`collectionId`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `member_resolution` (`subjectId` TEXT NOT NULL, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `vipResolutionTip` INTEGER, `isUnlock` INTEGER, PRIMARY KEY(`subjectId`, `ep`, `se`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `home_preferences_interval_time` (`id` TEXT NOT NULL, `showTime` INTEGER NOT NULL, `closeTime` INTEGER NOT NULL, `chooseTime` INTEGER NOT NULL, `showIntervalSeconds` INTEGER NOT NULL, `closeIntervalSeconds` INTEGER NOT NULL, `chooseIntervalSeconds` INTEGER NOT NULL, PRIMARY KEY(`id`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            y3.a.a(bVar, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'b0c54b19a40cfcf785b1ce6277c3b3a2')");
        }

        @Override
        public void b(b bVar) throws Exception {
            y3.a.a(bVar, "DROP TABLE IF EXISTS `audio`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `download_table`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `video`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `download_thread_info`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `room_table`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `permanent_msg`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `download_subtitle_table`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `msg`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `consume_bean`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `download_thread_range`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `video_land_ad`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `subtitle_language_map_table`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `non_ad_plans`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `local_mcc`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `short_tv_play`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `ShortTvFavoriteState`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `video_detail_play`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `music_liked`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `place_list`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `ugc_video_detail_play`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `ugc_collection_video_group`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `member_resolution`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `home_preferences_interval_time`");
        }

        @Override
        public void f(b bVar) {
        }

        @Override
        public void g(b bVar) {
            AppDatabase_Impl.this.P(bVar);
        }

        @Override
        public void h(b bVar) {
        }

        @Override
        public void i(b bVar) {
            androidx.room.util.b.a(bVar);
        }

        @Override
        public f0.a j(b bVar) {
            HashMap map = new HashMap(20);
            map.put("audioId", new m.a("audioId", "TEXT", true, 1, null, 1));
            map.put("cover", new m.a("cover", "TEXT", false, 0, null, 1));
            map.put("duration", new m.a("duration", "INTEGER", false, 0, null, 1));
            map.put("size", new m.a("size", "INTEGER", false, 0, null, 1));
            map.put("url", new m.a("url", "TEXT", false, 0, null, 1));
            map.put(CampaignEx.JSON_KEY_TITLE, new m.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            map.put(CampaignEx.JSON_KEY_DESC, new m.a(CampaignEx.JSON_KEY_DESC, "TEXT", false, 0, null, 1));
            map.put("bitrate", new m.a("bitrate", "INTEGER", false, 0, null, 1));
            map.put("updateTimeStamp", new m.a("updateTimeStamp", "INTEGER", false, 0, null, 1));
            map.put("readProcess", new m.a("readProcess", "INTEGER", false, 0, null, 1));
            map.put("localPath", new m.a("localPath", "TEXT", false, 0, null, 1));
            map.put("ops", new m.a("ops", "TEXT", false, 0, null, 1));
            map.put("resourceId", new m.a("resourceId", "TEXT", false, 0, null, 1));
            map.put("postId", new m.a("postId", "TEXT", false, 0, null, 1));
            map.put("subjectId", new m.a("subjectId", "TEXT", false, 0, null, 1));
            map.put("groupId", new m.a("groupId", "TEXT", false, 0, null, 1));
            map.put(NotificationCompat.CATEGORY_STATUS, new m.a(NotificationCompat.CATEGORY_STATUS, "INTEGER", true, 0, null, 1));
            map.put("subjectTitle", new m.a("subjectTitle", "TEXT", false, 0, null, 1));
            map.put("se", new m.a("se", "INTEGER", true, 0, null, 1));
            map.put("ep", new m.a("ep", "INTEGER", true, 0, null, 1));
            m mVar = new m(MimeTypes.BASE_TYPE_AUDIO, map, new HashSet(0), new HashSet(0));
            m mVarA = m.a(bVar, MimeTypes.BASE_TYPE_AUDIO);
            if (!mVar.equals(mVarA)) {
                return new f0.a(false, "audio(com.transsion.baselib.db.audio.AudioBean).\n Expected:\n" + mVar + "\n Found:\n" + mVarA);
            }
            HashMap map2 = new HashMap(80);
            map2.put("url", new m.a("url", "TEXT", true, 1, null, 1));
            map2.put("resourceId", new m.a("resourceId", "TEXT", false, 0, null, 1));
            map2.put("name", new m.a("name", "TEXT", false, 0, null, 1));
            map2.put("cover", new m.a("cover", "TEXT", false, 0, null, 1));
            map2.put("size", new m.a("size", "INTEGER", false, 0, null, 1));
            map2.put("postId", new m.a("postId", "TEXT", false, 0, null, 1));
            map2.put("sizeFormat", new m.a("sizeFormat", "TEXT", false, 0, null, 1));
            map2.put("path", new m.a("path", "TEXT", false, 0, null, 1));
            map2.put("duration", new m.a("duration", "INTEGER", false, 0, null, 1));
            map2.put("updateTimeStamp", new m.a("updateTimeStamp", "INTEGER", false, 0, null, 1));
            map2.put(NotificationCompat.CATEGORY_PROGRESS, new m.a(NotificationCompat.CATEGORY_PROGRESS, "INTEGER", true, 0, null, 1));
            map2.put("supportRanges", new m.a("supportRanges", "INTEGER", true, 0, null, 1));
            map2.put(NotificationCompat.CATEGORY_STATUS, new m.a(NotificationCompat.CATEGORY_STATUS, "INTEGER", true, 0, null, 1));
            map2.put(NativeComponentConstants.KEY_COMPONENT_TYPE, new m.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "INTEGER", true, 0, null, 1));
            map2.put("readProgress", new m.a("readProgress", "INTEGER", true, 0, null, 1));
            map2.put("createAt", new m.a("createAt", "INTEGER", true, 0, null, 1));
            map2.put("isRead", new m.a("isRead", "INTEGER", true, 0, null, 1));
            map2.put("episode", new m.a("episode", "INTEGER", true, 0, null, 1));
            map2.put("ep", new m.a("ep", "INTEGER", true, 0, null, 1));
            map2.put("se", new m.a("se", "INTEGER", true, 0, null, 1));
            map2.put("resolution", new m.a("resolution", "INTEGER", true, 0, null, 1));
            map2.put("resourcePosition", new m.a("resourcePosition", "INTEGER", true, 0, null, 1));
            map2.put("multiresolution", new m.a("multiresolution", "INTEGER", true, 0, null, 1));
            map2.put("videoWidth", new m.a("videoWidth", "INTEGER", true, 0, null, 1));
            map2.put("videoHeight", new m.a("videoHeight", "INTEGER", true, 0, null, 1));
            map2.put("downloadErrorCount", new m.a("downloadErrorCount", "INTEGER", true, 0, null, 1));
            map2.put("subtitleStarted", new m.a("subtitleStarted", "INTEGER", true, 0, null, 1));
            map2.put("subjectId", new m.a("subjectId", "TEXT", false, 0, null, 1));
            map2.put("pageFrom", new m.a("pageFrom", "TEXT", false, 0, null, 1));
            map2.put("lastPageFrom", new m.a("lastPageFrom", "TEXT", false, 0, null, 1));
            map2.put("subjectName", new m.a("subjectName", "TEXT", false, 0, null, 1));
            map2.put("lastPlayTimeStamp", new m.a("lastPlayTimeStamp", "INTEGER", true, 0, null, 1));
            map2.put("fileType", new m.a("fileType", "INTEGER", true, 0, null, 1));
            map2.put("totalEpisode", new m.a("totalEpisode", "INTEGER", true, 0, null, 1));
            map2.put("uploadBy", new m.a("uploadBy", "TEXT", false, 0, null, 1));
            map2.put("sourceUrl", new m.a("sourceUrl", "TEXT", false, 0, null, 1));
            map2.put("urlCreateAt", new m.a("urlCreateAt", "INTEGER", true, 0, null, 1));
            map2.put("subtitleSelectId", new m.a("subtitleSelectId", "TEXT", false, 0, null, 1));
            map2.put("taskId", new m.a("taskId", "TEXT", false, 0, null, 1));
            map2.put("sessionTime", new m.a("sessionTime", "INTEGER", true, 0, null, 1));
            map2.put("reportStatus", new m.a("reportStatus", "INTEGER", true, 0, null, 1));
            map2.put("downloadHeaderSize", new m.a("downloadHeaderSize", "INTEGER", true, 0, null, 1));
            map2.put("rootPath", new m.a("rootPath", "TEXT", false, 0, null, 1));
            map2.put("rootPathType", new m.a("rootPathType", "INTEGER", true, 0, null, 1));
            map2.put("thumbnail", new m.a("thumbnail", "TEXT", false, 0, null, 1));
            map2.put("averageHueLight", new m.a("averageHueLight", "TEXT", false, 0, null, 1));
            map2.put("isTransferFailed", new m.a("isTransferFailed", "INTEGER", true, 0, null, 1));
            map2.put("isClosedTransferFailed", new m.a("isClosedTransferFailed", "INTEGER", true, 0, null, 1));
            map2.put("subjectType", new m.a("subjectType", "INTEGER", true, 0, null, 1));
            map2.put("genre", new m.a("genre", "TEXT", false, 0, null, 1));
            map2.put("subjectDurationSeconds", new m.a("subjectDurationSeconds", "INTEGER", false, 0, null, 1));
            map2.put("currentDubLanName", new m.a("currentDubLanName", "TEXT", false, 0, null, 1));
            map2.put("currentDubLanCode", new m.a("currentDubLanCode", "TEXT", false, 0, null, 1));
            map2.put("ops", new m.a("ops", "TEXT", false, 0, null, 1));
            map2.put("restrictLevel", new m.a("restrictLevel", "TEXT", false, 0, null, 1));
            map2.put("releaseDate", new m.a("releaseDate", "TEXT", false, 0, null, 1));
            map2.put("countryName", new m.a("countryName", "TEXT", false, 0, null, 1));
            map2.put("seNum", new m.a("seNum", "INTEGER", false, 0, null, 1));
            map2.put("subtitles", new m.a("subtitles", "TEXT", false, 0, null, 1));
            map2.put("imdbRate", new m.a("imdbRate", "TEXT", false, 0, null, 1));
            map2.put("lastAdStartTimeStamp", new m.a("lastAdStartTimeStamp", "INTEGER", false, 0, null, 1));
            map2.put("lastAdEndTimeStamp", new m.a("lastAdEndTimeStamp", "INTEGER", false, 0, null, 1));
            map2.put("subtitleIdType", new m.a("subtitleIdType", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoCollectionId", new m.a("ugcVideoCollectionId", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoId", new m.a("ugcVideoId", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoName", new m.a("ugcVideoName", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoCollectionName", new m.a("ugcVideoCollectionName", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoPosition", new m.a("ugcVideoPosition", "INTEGER", false, 0, null, 1));
            map2.put("ugcVideoType", new m.a("ugcVideoType", "TEXT", false, 0, null, 1));
            map2.put("ugcCateLev1Id", new m.a("ugcCateLev1Id", "INTEGER", false, 0, null, 1));
            map2.put("ugcCateLev2Id", new m.a("ugcCateLev2Id", "INTEGER", false, 0, null, 1));
            map2.put("ugcCateLev3Id", new m.a("ugcCateLev3Id", "INTEGER", false, 0, null, 1));
            map2.put("ugcCateLev4Id", new m.a("ugcCateLev4Id", "INTEGER", false, 0, null, 1));
            map2.put("ugcVideoTrackId", new m.a("ugcVideoTrackId", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoParentVideoId", new m.a("ugcVideoParentVideoId", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoParentTrackId", new m.a("ugcVideoParentTrackId", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoEpTitle", new m.a("ugcVideoEpTitle", "TEXT", false, 0, null, 1));
            map2.put("ugcVideoIsVertical", new m.a("ugcVideoIsVertical", "INTEGER", true, 0, null, 1));
            map2.put("originData", new m.a("originData", "TEXT", false, 0, null, 1));
            map2.put("kidId", new m.a("kidId", "TEXT", false, 0, null, 1));
            m mVar2 = new m("download_table", map2, new HashSet(0), new HashSet(0));
            m mVarA2 = m.a(bVar, "download_table");
            if (!mVar2.equals(mVarA2)) {
                return new f0.a(false, "download_table(com.transsion.baselib.db.download.DownloadBean).\n Expected:\n" + mVar2 + "\n Found:\n" + mVarA2);
            }
            HashMap map3 = new HashMap(3);
            map3.put("postId", new m.a("postId", "TEXT", true, 1, null, 1));
            map3.put("playProgress", new m.a("playProgress", "INTEGER", false, 0, null, 1));
            map3.put("url", new m.a("url", "TEXT", false, 0, null, 1));
            m mVar3 = new m("video", map3, new HashSet(0), new HashSet(0));
            m mVarA3 = m.a(bVar, "video");
            if (!mVar3.equals(mVarA3)) {
                return new f0.a(false, "video(com.transsion.baselib.db.video.VideoBean).\n Expected:\n" + mVar3 + "\n Found:\n" + mVarA3);
            }
            HashMap map4 = new HashMap(7);
            map4.put("id", new m.a("id", "INTEGER", true, 1, null, 1));
            map4.put("threadId", new m.a("threadId", "INTEGER", true, 0, null, 1));
            map4.put("downloadInfoId", new m.a("downloadInfoId", "TEXT", false, 0, null, 1));
            map4.put("uri", new m.a("uri", "TEXT", false, 0, null, 1));
            map4.put("start", new m.a("start", "INTEGER", true, 0, null, 1));
            map4.put(TtmlNode.END, new m.a(TtmlNode.END, "INTEGER", true, 0, null, 1));
            map4.put(NotificationCompat.CATEGORY_PROGRESS, new m.a(NotificationCompat.CATEGORY_PROGRESS, "INTEGER", true, 0, null, 1));
            m mVar4 = new m("download_thread_info", map4, new HashSet(0), new HashSet(0));
            m mVarA4 = m.a(bVar, "download_thread_info");
            if (!mVar4.equals(mVarA4)) {
                return new f0.a(false, "download_thread_info(com.transsion.baselib.db.download.DownloadTaskInfo).\n Expected:\n" + mVar4 + "\n Found:\n" + mVarA4);
            }
            HashMap map5 = new HashMap(10);
            map5.put("groupId", new m.a("groupId", "TEXT", true, 1, null, 1));
            map5.put("name", new m.a("name", "TEXT", false, 0, null, 1));
            map5.put("avatar", new m.a("avatar", "TEXT", false, 0, null, 1));
            map5.put("hasJoin", new m.a("hasJoin", "INTEGER", false, 0, null, 1));
            map5.put("newPostCount", new m.a("newPostCount", "INTEGER", false, 0, null, 1));
            map5.put(TrackingKey.DESCRIPTION, new m.a(TrackingKey.DESCRIPTION, "TEXT", false, 0, null, 1));
            map5.put("postCount", new m.a("postCount", "INTEGER", false, 0, null, 1));
            map5.put("userCount", new m.a("userCount", "INTEGER", false, 0, null, 1));
            map5.put(PermissionConstant.level, new m.a(PermissionConstant.level, "TEXT", false, 0, null, 1));
            map5.put("updateTimeStamp", new m.a("updateTimeStamp", "INTEGER", true, 0, null, 1));
            m mVar5 = new m("room_table", map5, new HashSet(0), new HashSet(0));
            m mVarA5 = m.a(bVar, "room_table");
            if (!mVar5.equals(mVarA5)) {
                return new f0.a(false, "room_table(com.transsion.baselib.db.room.RoomItemBean).\n Expected:\n" + mVar5 + "\n Found:\n" + mVarA5);
            }
            HashMap map6 = new HashMap(7);
            map6.put("id", new m.a("id", "INTEGER", true, 1, null, 1));
            map6.put("deep_link_list", new m.a("deep_link_list", "TEXT", false, 0, null, 1));
            map6.put(CampaignEx.JSON_KEY_DESC, new m.a(CampaignEx.JSON_KEY_DESC, "TEXT", false, 0, null, 1));
            map6.put(GifImagePreviewActivity.IMAGE_LIST, new m.a(GifImagePreviewActivity.IMAGE_LIST, "TEXT", false, 0, null, 1));
            map6.put(PushConstants.EXTRA_PUSH_MESSAGE_ID, new m.a(PushConstants.EXTRA_PUSH_MESSAGE_ID, "TEXT", false, 0, null, 1));
            map6.put(TtmlNode.TAG_STYLE, new m.a(TtmlNode.TAG_STYLE, "TEXT", false, 0, null, 1));
            map6.put(CampaignEx.JSON_KEY_TITLE, new m.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            m mVar6 = new m("permanent_msg", map6, new HashSet(0), new HashSet(0));
            m mVarA6 = m.a(bVar, "permanent_msg");
            if (!mVar6.equals(mVarA6)) {
                return new f0.a(false, "permanent_msg(com.transsion.baselib.db.notification.PermanentMsgBean).\n Expected:\n" + mVar6 + "\n Found:\n" + mVarA6);
            }
            HashMap map7 = new HashMap(16);
            map7.put("resourceId", new m.a("resourceId", "TEXT", true, 1, null, 1));
            map7.put("postId", new m.a("postId", "TEXT", false, 0, null, 1));
            map7.put("url", new m.a("url", "TEXT", false, 0, null, 1));
            map7.put("path", new m.a("path", "TEXT", false, 0, null, 1));
            map7.put("lan", new m.a("lan", "TEXT", false, 0, null, 1));
            map7.put("lanName", new m.a("lanName", "TEXT", true, 0, null, 1));
            map7.put("subtitleName", new m.a("subtitleName", "TEXT", false, 0, null, 1));
            map7.put("size", new m.a("size", "INTEGER", false, 0, null, 1));
            map7.put("delayDuration", new m.a("delayDuration", "INTEGER", false, 0, null, 1));
            map7.put(NotificationCompat.CATEGORY_STATUS, new m.a(NotificationCompat.CATEGORY_STATUS, "INTEGER", true, 0, null, 1));
            map7.put(NativeComponentConstants.KEY_COMPONENT_TYPE, new m.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "INTEGER", true, 0, null, 1));
            map7.put("fileCharsetName", new m.a("fileCharsetName", "TEXT", false, 0, null, 1));
            map7.put("subjectId", new m.a("subjectId", "TEXT", false, 0, null, 1));
            map7.put("ep", new m.a("ep", "INTEGER", true, 0, null, 1));
            map7.put("se", new m.a("se", "INTEGER", true, 0, null, 1));
            map7.put("resolution", new m.a("resolution", "INTEGER", true, 0, null, 1));
            m mVar7 = new m("download_subtitle_table", map7, new HashSet(0), new HashSet(0));
            m mVarA7 = m.a(bVar, "download_subtitle_table");
            if (!mVar7.equals(mVarA7)) {
                return new f0.a(false, "download_subtitle_table(com.transsion.baselib.db.download.SubtitleBean).\n Expected:\n" + mVar7 + "\n Found:\n" + mVarA7);
            }
            HashMap map8 = new HashMap(16);
            map8.put("id", new m.a("id", "INTEGER", true, 1, null, 1));
            map8.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, new m.a(CampaignEx.JSON_KEY_DEEP_LINK_URL, "TEXT", false, 0, null, 1));
            map8.put(CampaignEx.JSON_KEY_DESC, new m.a(CampaignEx.JSON_KEY_DESC, "TEXT", false, 0, null, 1));
            map8.put(GifImagePreviewActivity.IMAGE_LIST, new m.a(GifImagePreviewActivity.IMAGE_LIST, "TEXT", false, 0, null, 1));
            map8.put(PushConstants.EXTRA_PUSH_MESSAGE_ID, new m.a(PushConstants.EXTRA_PUSH_MESSAGE_ID, "TEXT", false, 0, null, 1));
            map8.put(EventConstants.KEY_SOURCE, new m.a(EventConstants.KEY_SOURCE, "TEXT", false, 0, null, 1));
            map8.put(TtmlNode.TAG_STYLE, new m.a(TtmlNode.TAG_STYLE, "TEXT", false, 0, null, 1));
            map8.put(CampaignEx.JSON_KEY_TITLE, new m.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            map8.put(NativeComponentConstants.KEY_COMPONENT_TYPE, new m.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "TEXT", false, 0, null, 1));
            map8.put("receive_time", new m.a("receive_time", "INTEGER", false, 0, null, 1));
            map8.put("msg_status", new m.a("msg_status", "INTEGER", true, 0, null, 1));
            map8.put(TrackingKey.SHOW_TIME, new m.a(TrackingKey.SHOW_TIME, "INTEGER", false, 0, null, 1));
            map8.put("force_show", new m.a("force_show", "INTEGER", true, 0, null, 1));
            map8.put("has_screen_on", new m.a("has_screen_on", "INTEGER", true, 0, null, 1));
            map8.put("built_in", new m.a("built_in", "INTEGER", true, 0, null, 1));
            map8.put("permanent_msg_status", new m.a("permanent_msg_status", "INTEGER", true, 0, null, 1));
            m mVar8 = new m(NotificationCompat.CATEGORY_MESSAGE, map8, new HashSet(0), new HashSet(0));
            m mVarA8 = m.a(bVar, NotificationCompat.CATEGORY_MESSAGE);
            if (!mVar8.equals(mVarA8)) {
                return new f0.a(false, "msg(com.transsion.baselib.db.notification.MsgBean).\n Expected:\n" + mVar8 + "\n Found:\n" + mVarA8);
            }
            HashMap map9 = new HashMap(5);
            map9.put("id", new m.a("id", "INTEGER", true, 1, null, 1));
            map9.put("updateTimeStamp", new m.a("updateTimeStamp", "INTEGER", true, 0, null, 1));
            map9.put("dataType", new m.a("dataType", "INTEGER", true, 0, null, 1));
            map9.put(TmcStartParams.KEY_APP_VERSION, new m.a(TmcStartParams.KEY_APP_VERSION, "INTEGER", true, 0, null, 1));
            map9.put("consumeJson", new m.a("consumeJson", "TEXT", false, 0, null, 1));
            m mVar9 = new m("consume_bean", map9, new HashSet(0), new HashSet(0));
            m mVarA9 = m.a(bVar, "consume_bean");
            if (!mVar9.equals(mVarA9)) {
                return new f0.a(false, "consume_bean(com.transsion.baselib.db.consume.ConsumeBean).\n Expected:\n" + mVar9 + "\n Found:\n" + mVarA9);
            }
            HashMap map10 = new HashMap(6);
            map10.put("threadId", new m.a("threadId", "INTEGER", true, 1, null, 1));
            map10.put("rangeId", new m.a("rangeId", "INTEGER", true, 2, null, 1));
            map10.put("resourceId", new m.a("resourceId", "TEXT", false, 0, null, 1));
            map10.put("start", new m.a("start", "INTEGER", true, 0, null, 1));
            map10.put(TtmlNode.END, new m.a(TtmlNode.END, "INTEGER", true, 0, null, 1));
            map10.put(NotificationCompat.CATEGORY_PROGRESS, new m.a(NotificationCompat.CATEGORY_PROGRESS, "INTEGER", true, 0, null, 1));
            m mVar10 = new m("download_thread_range", map10, new HashSet(0), new HashSet(0));
            m mVarA10 = m.a(bVar, "download_thread_range");
            if (!mVar10.equals(mVarA10)) {
                return new f0.a(false, "download_thread_range(com.transsion.baselib.db.download.DownloadRange).\n Expected:\n" + mVar10 + "\n Found:\n" + mVarA10);
            }
            HashMap map11 = new HashMap(3);
            map11.put("resourceId", new m.a("resourceId", "TEXT", true, 1, null, 1));
            map11.put("startAdDayKey", new m.a("startAdDayKey", "INTEGER", true, 0, null, 1));
            map11.put("endAdDayKey", new m.a("endAdDayKey", "INTEGER", true, 0, null, 1));
            m mVar11 = new m("video_land_ad", map11, new HashSet(0), new HashSet(0));
            m mVarA11 = m.a(bVar, "video_land_ad");
            if (!mVar11.equals(mVarA11)) {
                return new f0.a(false, "video_land_ad(com.transsion.baselib.db.video.VideoLandAdBean).\n Expected:\n" + mVar11 + "\n Found:\n" + mVarA11);
            }
            HashMap map12 = new HashMap(4);
            map12.put("lan", new m.a("lan", "TEXT", true, 1, null, 1));
            map12.put("lanIOS3", new m.a("lanIOS3", "TEXT", false, 0, null, 1));
            map12.put("lanName", new m.a("lanName", "TEXT", true, 0, null, 1));
            map12.put("inSearch", new m.a("inSearch", "INTEGER", true, 0, null, 1));
            m mVar12 = new m("subtitle_language_map_table", map12, new HashSet(0), new HashSet(0));
            m mVarA12 = m.a(bVar, "subtitle_language_map_table");
            if (!mVar12.equals(mVarA12)) {
                return new f0.a(false, "subtitle_language_map_table(com.transsion.baselib.db.download.SubtitleLanguageMapBean).\n Expected:\n" + mVar12 + "\n Found:\n" + mVarA12);
            }
            HashMap map13 = new HashMap(26);
            map13.put("id", new m.a("id", "TEXT", true, 1, null, 1));
            map13.put("version", new m.a("version", "TEXT", false, 0, null, 1));
            map13.put("name", new m.a("name", "TEXT", false, 0, null, 1));
            map13.put("startTime", new m.a("startTime", "TEXT", false, 0, null, 1));
            map13.put("endTime", new m.a("endTime", "TEXT", false, 0, null, 1));
            map13.put("extraConfig", new m.a("extraConfig", "TEXT", false, 0, null, 1));
            map13.put("displayTimes", new m.a("displayTimes", "INTEGER", false, 0, null, 1));
            map13.put("showedTimes", new m.a("showedTimes", "INTEGER", false, 0, null, 1));
            map13.put("showDate", new m.a("showDate", "TEXT", false, 0, null, 1));
            map13.put("advertiserName", new m.a("advertiserName", "TEXT", false, 0, null, 1));
            map13.put("advertiserAvatar", new m.a("advertiserAvatar", "TEXT", false, 0, null, 1));
            map13.put("advertiserAvatarPath", new m.a("advertiserAvatarPath", "TEXT", false, 0, null, 1));
            map13.put("brand", new m.a("brand", "TEXT", false, 0, null, 1));
            map13.put("denyBrand", new m.a("denyBrand", "TEXT", false, 0, null, 1));
            map13.put("model", new m.a("model", "TEXT", false, 0, null, 1));
            map13.put("denyModel", new m.a("denyModel", "TEXT", false, 0, null, 1));
            map13.put(PlaceTypes.COUNTRY, new m.a(PlaceTypes.COUNTRY, "TEXT", false, 0, null, 1));
            map13.put("scenes", new m.a("scenes", "TEXT", false, 0, null, 1));
            map13.put("adMaterialList", new m.a("adMaterialList", "TEXT", false, 0, null, 1));
            map13.put("adPlanUpdateTime", new m.a("adPlanUpdateTime", "TEXT", false, 0, null, 1));
            map13.put("sort", new m.a("sort", "INTEGER", false, 0, null, 1));
            map13.put("adShowLevel", new m.a("adShowLevel", "TEXT", false, 0, null, 1));
            map13.put("filterClientVersion", new m.a("filterClientVersion", "TEXT", false, 0, null, 1));
            map13.put("adPlanCreateTime", new m.a("adPlanCreateTime", "TEXT", false, 0, null, 1));
            map13.put("appStarDesc", new m.a("appStarDesc", "TEXT", false, 0, null, 1));
            map13.put("appSizeDesc", new m.a("appSizeDesc", "TEXT", false, 0, null, 1));
            m mVar13 = new m("non_ad_plans", map13, new HashSet(0), new HashSet(0));
            m mVarA13 = m.a(bVar, "non_ad_plans");
            if (!mVar13.equals(mVarA13)) {
                return new f0.a(false, "non_ad_plans(com.transsion.baselib.db.non.NonAdPlans).\n Expected:\n" + mVar13 + "\n Found:\n" + mVarA13);
            }
            HashMap map14 = new HashMap(5);
            map14.put("id", new m.a("id", "INTEGER", true, 1, null, 1));
            map14.put("Country", new m.a("Country", "TEXT", true, 0, null, 1));
            map14.put("Mcc", new m.a("Mcc", "TEXT", true, 0, null, 1));
            map14.put("Iso", new m.a("Iso", "TEXT", true, 0, null, 1));
            map14.put("CountryCode", new m.a("CountryCode", "TEXT", true, 0, null, 1));
            m mVar14 = new m("local_mcc", map14, new HashSet(0), new HashSet(0));
            m mVarA14 = m.a(bVar, "local_mcc");
            if (!mVar14.equals(mVarA14)) {
                return new f0.a(false, "local_mcc(com.transsion.baselib.db.mcc.LocalMcc).\n Expected:\n" + mVar14 + "\n Found:\n" + mVarA14);
            }
            HashMap map15 = new HashMap(14);
            map15.put("subjectId", new m.a("subjectId", "TEXT", true, 1, null, 1));
            map15.put("id", new m.a("id", "TEXT", true, 0, null, 1));
            map15.put("ep", new m.a("ep", "INTEGER", true, 0, null, 1));
            map15.put("se", new m.a("se", "INTEGER", true, 0, null, 1));
            map15.put("totalEp", new m.a("totalEp", "INTEGER", true, 0, null, 1));
            map15.put(NotificationCompat.CATEGORY_PROGRESS, new m.a(NotificationCompat.CATEGORY_PROGRESS, "INTEGER", true, 0, null, 1));
            map15.put(CampaignEx.JSON_KEY_TITLE, new m.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            map15.put(TrackingKey.DESCRIPTION, new m.a(TrackingKey.DESCRIPTION, "TEXT", false, 0, null, 1));
            map15.put("coverUrl", new m.a("coverUrl", "TEXT", false, 0, null, 1));
            map15.put("thumbnail", new m.a("thumbnail", "TEXT", false, 0, null, 1));
            map15.put("videoId", new m.a("videoId", "TEXT", false, 0, null, 1));
            map15.put("videoUrl", new m.a("videoUrl", "TEXT", false, 0, null, 1));
            map15.put("timeStamp", new m.a("timeStamp", "INTEGER", true, 0, null, 1));
            map15.put("subtitleSelectId", new m.a("subtitleSelectId", "TEXT", false, 0, null, 1));
            m mVar15 = new m("short_tv_play", map15, new HashSet(0), new HashSet(0));
            m mVarA15 = m.a(bVar, "short_tv_play");
            if (!mVar15.equals(mVarA15)) {
                return new f0.a(false, "short_tv_play(com.transsion.baselib.db.video.ShortTVPlayBean).\n Expected:\n" + mVar15 + "\n Found:\n" + mVarA15);
            }
            HashMap map16 = new HashMap(4);
            map16.put("subjectId", new m.a("subjectId", "TEXT", true, 1, null, 1));
            map16.put("favoriteNum", new m.a("favoriteNum", "TEXT", false, 0, null, 1));
            map16.put("hasFavorite", new m.a("hasFavorite", "INTEGER", true, 0, null, 1));
            map16.put("favoriteTime", new m.a("favoriteTime", "TEXT", false, 0, null, 1));
            m mVar16 = new m("ShortTvFavoriteState", map16, new HashSet(0), new HashSet(0));
            m mVarA16 = m.a(bVar, "ShortTvFavoriteState");
            if (!mVar16.equals(mVarA16)) {
                return new f0.a(false, "ShortTvFavoriteState(com.transsion.baselib.db.video.ShortTvFavoriteState).\n Expected:\n" + mVar16 + "\n Found:\n" + mVarA16);
            }
            HashMap map17 = new HashMap(27);
            map17.put("subjectId", new m.a("subjectId", "TEXT", true, 1, null, 1));
            map17.put("id", new m.a("id", "TEXT", true, 0, null, 1));
            map17.put("ep", new m.a("ep", "INTEGER", true, 2, null, 1));
            map17.put("se", new m.a("se", "INTEGER", true, 3, null, 1));
            map17.put(NotificationCompat.CATEGORY_PROGRESS, new m.a(NotificationCompat.CATEGORY_PROGRESS, "INTEGER", true, 0, null, 1));
            map17.put(CampaignEx.JSON_KEY_TITLE, new m.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            map17.put("coverUrl", new m.a("coverUrl", "TEXT", false, 0, null, 1));
            map17.put("thumbnail", new m.a("thumbnail", "TEXT", false, 0, null, 1));
            map17.put("videoUrl", new m.a("videoUrl", "TEXT", false, 0, null, 1));
            map17.put("timeStamp", new m.a("timeStamp", "INTEGER", true, 0, null, 1));
            map17.put("subtitleSelectId", new m.a("subtitleSelectId", "TEXT", false, 0, null, 1));
            map17.put("totalDuration", new m.a("totalDuration", "INTEGER", false, 0, null, 1));
            map17.put("subjectDurationSeconds", new m.a("subjectDurationSeconds", "INTEGER", false, 0, null, 1));
            map17.put("averageHueLight", new m.a("averageHueLight", "TEXT", false, 0, null, 1));
            map17.put("subjectType", new m.a("subjectType", "INTEGER", false, 0, null, 1));
            map17.put("hasDelete", new m.a("hasDelete", "INTEGER", true, 0, null, 1));
            map17.put("playMode", new m.a("playMode", "TEXT", true, 0, null, 1));
            map17.put("downloadUrl", new m.a("downloadUrl", "TEXT", false, 0, null, 1));
            map17.put("downloadFilePath", new m.a("downloadFilePath", "TEXT", false, 0, null, 1));
            map17.put("downloadSize", new m.a("downloadSize", "INTEGER", true, 0, null, 1));
            map17.put("dubs", new m.a("dubs", "TEXT", false, 0, null, 1));
            map17.put("lastAdStartTimeStamp", new m.a("lastAdStartTimeStamp", "INTEGER", false, 0, null, 1));
            map17.put("lastAdEndTimeStamp", new m.a("lastAdEndTimeStamp", "INTEGER", false, 0, null, 1));
            map17.put("rewardPlayed", new m.a("rewardPlayed", "INTEGER", true, 0, null, 1));
            map17.put("rewardUnlock", new m.a("rewardUnlock", "INTEGER", true, 0, null, 1));
            map17.put("rewardFree", new m.a("rewardFree", "INTEGER", true, 0, null, 1));
            map17.put("ops", new m.a("ops", "TEXT", false, 0, null, 1));
            m mVar17 = new m("video_detail_play", map17, new HashSet(0), new HashSet(0));
            m mVarA17 = m.a(bVar, "video_detail_play");
            if (!mVar17.equals(mVarA17)) {
                return new f0.a(false, "video_detail_play(com.transsion.baselib.db.video.VideoDetailPlayBean).\n Expected:\n" + mVar17 + "\n Found:\n" + mVarA17);
            }
            HashMap map18 = new HashMap(11);
            map18.put("subjectId", new m.a("subjectId", "TEXT", true, 1, null, 1));
            map18.put(CampaignEx.JSON_KEY_TITLE, new m.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            map18.put("coverUrl", new m.a("coverUrl", "TEXT", false, 0, null, 1));
            map18.put("countryName", new m.a("countryName", "TEXT", false, 0, null, 1));
            map18.put("genre", new m.a("genre", "TEXT", false, 0, null, 1));
            map18.put("releaseDate", new m.a("releaseDate", "TEXT", false, 0, null, 1));
            map18.put("durationSeconds", new m.a("durationSeconds", "INTEGER", true, 0, null, 1));
            map18.put("singerName", new m.a("singerName", "TEXT", false, 0, null, 1));
            map18.put("singerAvatar", new m.a("singerAvatar", "TEXT", false, 0, null, 1));
            map18.put("path", new m.a("path", "TEXT", false, 0, null, 1));
            map18.put("timeStamp", new m.a("timeStamp", "INTEGER", true, 0, null, 1));
            m mVar18 = new m("music_liked", map18, new HashSet(0), new HashSet(0));
            m mVarA18 = m.a(bVar, "music_liked");
            if (!mVar18.equals(mVarA18)) {
                return new f0.a(false, "music_liked(com.transsion.baselib.db.music.MusicLikedDbBean).\n Expected:\n" + mVar18 + "\n Found:\n" + mVarA18);
            }
            HashMap map19 = new HashMap(5);
            map19.put("latitude", new m.a("latitude", "REAL", true, 1, null, 1));
            map19.put("longitude", new m.a("longitude", "REAL", true, 2, null, 1));
            map19.put("name", new m.a("name", "TEXT", false, 0, null, 1));
            map19.put(PlaceTypes.ADDRESS, new m.a(PlaceTypes.ADDRESS, "TEXT", false, 0, null, 1));
            map19.put("distance", new m.a("distance", "TEXT", false, 0, null, 1));
            m mVar19 = new m("place_list", map19, new HashSet(0), new HashSet(0));
            m mVarA19 = m.a(bVar, "place_list");
            if (!mVar19.equals(mVarA19)) {
                return new f0.a(false, "place_list(com.transsion.baselib.db.place.PlaceDBBean).\n Expected:\n" + mVar19 + "\n Found:\n" + mVarA19);
            }
            HashMap map20 = new HashMap(36);
            map20.put("collectionId", new m.a("collectionId", "TEXT", true, 1, null, 1));
            map20.put("ugcVideoId", new m.a("ugcVideoId", "TEXT", true, 0, null, 1));
            map20.put(NotificationCompat.CATEGORY_PROGRESS, new m.a(NotificationCompat.CATEGORY_PROGRESS, "INTEGER", true, 0, null, 1));
            map20.put(CampaignEx.JSON_KEY_TITLE, new m.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            map20.put("coverUrl", new m.a("coverUrl", "TEXT", false, 0, null, 1));
            map20.put("thumbnail", new m.a("thumbnail", "TEXT", false, 0, null, 1));
            map20.put(RequestParameters.POSITION, new m.a(RequestParameters.POSITION, "INTEGER", true, 0, null, 1));
            map20.put(NativeComponentConstants.KEY_COMPONENT_TYPE, new m.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "TEXT", false, 0, null, 1));
            map20.put("cateLev1Id", new m.a("cateLev1Id", "INTEGER", false, 0, null, 1));
            map20.put("cateLev2Id", new m.a("cateLev2Id", "INTEGER", false, 0, null, 1));
            map20.put("cateLev3Id", new m.a("cateLev3Id", "INTEGER", false, 0, null, 1));
            map20.put("cateLev4Id", new m.a("cateLev4Id", "INTEGER", false, 0, null, 1));
            map20.put("timeStamp", new m.a("timeStamp", "INTEGER", true, 0, null, 1));
            map20.put("subtitleSelectId", new m.a("subtitleSelectId", "TEXT", false, 0, null, 1));
            map20.put("totalDuration", new m.a("totalDuration", "INTEGER", false, 0, null, 1));
            map20.put("subjectDurationSeconds", new m.a("subjectDurationSeconds", "INTEGER", false, 0, null, 1));
            map20.put("averageHueLight", new m.a("averageHueLight", "TEXT", false, 0, null, 1));
            map20.put("subjectType", new m.a("subjectType", "INTEGER", false, 0, null, 1));
            map20.put("hasDelete", new m.a("hasDelete", "INTEGER", true, 0, null, 1));
            map20.put("playMode", new m.a("playMode", "TEXT", true, 0, null, 1));
            map20.put("downloadUrl", new m.a("downloadUrl", "TEXT", false, 0, null, 1));
            map20.put("downloadResid", new m.a("downloadResid", "TEXT", false, 0, null, 1));
            map20.put("downloadFilePath", new m.a("downloadFilePath", "TEXT", false, 0, null, 1));
            map20.put("downloadSize", new m.a("downloadSize", "INTEGER", true, 0, null, 1));
            map20.put("lastAdStartTimeStamp", new m.a("lastAdStartTimeStamp", "INTEGER", false, 0, null, 1));
            map20.put("lastAdEndTimeStamp", new m.a("lastAdEndTimeStamp", "INTEGER", false, 0, null, 1));
            map20.put("rewardPlayed", new m.a("rewardPlayed", "INTEGER", true, 0, null, 1));
            map20.put("rewardUnlock", new m.a("rewardUnlock", "INTEGER", true, 0, null, 1));
            map20.put("rewardFree", new m.a("rewardFree", "INTEGER", true, 0, null, 1));
            map20.put("ops", new m.a("ops", "TEXT", false, 0, null, 1));
            map20.put(CommonUtils.PARAM_UID, new m.a(CommonUtils.PARAM_UID, "TEXT", false, 0, null, 1));
            map20.put("userName", new m.a("userName", "TEXT", false, 0, null, 1));
            map20.put("userAvatar", new m.a("userAvatar", "TEXT", false, 0, null, 1));
            map20.put(TrackingKey.DESCRIPTION, new m.a(TrackingKey.DESCRIPTION, "TEXT", false, 0, null, 1));
            map20.put("videoStyle", new m.a("videoStyle", "TEXT", false, 0, null, 1));
            map20.put("kidId", new m.a("kidId", "TEXT", false, 0, null, 1));
            m mVar20 = new m("ugc_video_detail_play", map20, new HashSet(0), new HashSet(0));
            m mVarA20 = m.a(bVar, "ugc_video_detail_play");
            if (!mVar20.equals(mVarA20)) {
                return new f0.a(false, "ugc_video_detail_play(com.transsion.baselib.db.video.UGCVideoDetailPlayBean).\n Expected:\n" + mVar20 + "\n Found:\n" + mVarA20);
            }
            HashMap map21 = new HashMap(2);
            map21.put("collectionId", new m.a("collectionId", "TEXT", true, 1, null, 1));
            map21.put("ugcVideoIds", new m.a("ugcVideoIds", "TEXT", true, 0, null, 1));
            m mVar21 = new m("ugc_collection_video_group", map21, new HashSet(0), new HashSet(0));
            m mVarA21 = m.a(bVar, "ugc_collection_video_group");
            if (!mVar21.equals(mVarA21)) {
                return new f0.a(false, "ugc_collection_video_group(com.transsion.baselib.db.video.UGCCollectionVideoGroup).\n Expected:\n" + mVar21 + "\n Found:\n" + mVarA21);
            }
            HashMap map22 = new HashMap(5);
            map22.put("subjectId", new m.a("subjectId", "TEXT", true, 1, null, 1));
            map22.put("ep", new m.a("ep", "INTEGER", true, 2, null, 1));
            map22.put("se", new m.a("se", "INTEGER", true, 3, null, 1));
            map22.put("vipResolutionTip", new m.a("vipResolutionTip", "INTEGER", false, 0, null, 1));
            map22.put("isUnlock", new m.a("isUnlock", "INTEGER", false, 0, null, 1));
            m mVar22 = new m("member_resolution", map22, new HashSet(0), new HashSet(0));
            m mVarA22 = m.a(bVar, "member_resolution");
            if (!mVar22.equals(mVarA22)) {
                return new f0.a(false, "member_resolution(com.transsion.baselib.db.member.MemberResolutionBean).\n Expected:\n" + mVar22 + "\n Found:\n" + mVarA22);
            }
            HashMap map23 = new HashMap(7);
            map23.put("id", new m.a("id", "TEXT", true, 1, null, 1));
            map23.put("showTime", new m.a("showTime", "INTEGER", true, 0, null, 1));
            map23.put("closeTime", new m.a("closeTime", "INTEGER", true, 0, null, 1));
            map23.put("chooseTime", new m.a("chooseTime", "INTEGER", true, 0, null, 1));
            map23.put("showIntervalSeconds", new m.a("showIntervalSeconds", "INTEGER", true, 0, null, 1));
            map23.put("closeIntervalSeconds", new m.a("closeIntervalSeconds", "INTEGER", true, 0, null, 1));
            map23.put("chooseIntervalSeconds", new m.a("chooseIntervalSeconds", "INTEGER", true, 0, null, 1));
            m mVar23 = new m("home_preferences_interval_time", map23, new HashSet(0), new HashSet(0));
            m mVarA23 = m.a(bVar, "home_preferences_interval_time");
            if (mVar23.equals(mVarA23)) {
                return new f0.a(true, null);
            }
            return new f0.a(false, "home_preferences_interval_time(com.transsion.baselib.db.home.HomePreferencesIntervalTimeDbBean).\n Expected:\n" + mVar23 + "\n Found:\n" + mVarA23);
        }
    }

    @Override
    public UGCCollectionVideoGroupDao A1() {
        UGCCollectionVideoGroupDao uGCCollectionVideoGroupDao;
        if (this.K0 != null) {
            return this.K0;
        }
        synchronized (this) {
            try {
                if (this.K0 == null) {
                    this.K0 = new q(this);
                }
                uGCCollectionVideoGroupDao = this.K0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return uGCCollectionVideoGroupDao;
    }

    @Override
    public UGCVideoDetailPlayDao B1() {
        UGCVideoDetailPlayDao uGCVideoDetailPlayDao;
        if (this.J0 != null) {
            return this.J0;
        }
        synchronized (this) {
            try {
                if (this.J0 == null) {
                    this.J0 = new j0(this);
                }
                uGCVideoDetailPlayDao = this.J0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return uGCVideoDetailPlayDao;
    }

    @Override
    public Set C() {
        return new HashSet();
    }

    @Override
    public VideoDetailPlayDao C1() {
        VideoDetailPlayDao videoDetailPlayDao;
        if (this.G0 != null) {
            return this.G0;
        }
        synchronized (this) {
            try {
                if (this.G0 == null) {
                    this.G0 = new z0(this);
                }
                videoDetailPlayDao = this.G0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return videoDetailPlayDao;
    }

    @Override
    public a1 D1() {
        a1 a1Var;
        if (this.C0 != null) {
            return this.C0;
        }
        synchronized (this) {
            try {
                if (this.C0 == null) {
                    this.C0 = new b1(this);
                }
                a1Var = this.C0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return a1Var;
    }

    @Override
    protected Map F() {
        HashMap map = new HashMap();
        map.put(si.a.class, j.q());
        map.put(c.class, l0.q0());
        map.put(k0.class, com.transsion.baselib.db.video.l0.a());
        map.put(t0.class, u0.a());
        map.put(aj.a.class, e.g());
        map.put(v0.class, c1.m());
        map.put(i.class, zi.j.a());
        map.put(zi.a.class, h.m());
        map.put(ti.a.class, ti.b.a());
        map.put(yi.a.class, yi.b.a());
        map.put(wi.a.class, wi.b.a());
        map.put(n0.class, r0.g());
        map.put(a1.class, b1.a());
        map.put(ShortTVPlayDao.class, com.transsion.baselib.db.video.m.r());
        map.put(d1.class, h1.g());
        map.put(IShortTvFavoriteStateDao.class, d.h());
        map.put(VideoDetailPlayDao.class, z0.E());
        map.put(xi.a.class, xi.h.m());
        map.put(PlaceDao.class, com.transsion.baselib.db.place.d.h());
        map.put(UGCVideoDetailPlayDao.class, j0.P());
        map.put(UGCCollectionVideoGroupDao.class, q.j());
        map.put(MemberResolutionDao.class, g.m());
        map.put(vi.a.class, vi.d.e());
        return map;
    }

    @Override
    public f0 r() {
        return new a(58, "b0c54b19a40cfcf785b1ce6277c3b3a2", "7ab4a93e3b6040b69ab078acec2bef77");
    }

    @Override
    public si.a n1() {
        si.a aVar;
        if (this.f41931w0 != null) {
            return this.f41931w0;
        }
        synchronized (this) {
            try {
                if (this.f41931w0 == null) {
                    this.f41931w0 = new j(this);
                }
                aVar = this.f41931w0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public c o1() {
        c cVar;
        if (this.f41932x0 != null) {
            return this.f41932x0;
        }
        synchronized (this) {
            try {
                if (this.f41932x0 == null) {
                    this.f41932x0 = new l0(this);
                }
                cVar = this.f41932x0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cVar;
    }

    @Override
    public n0 p1() {
        n0 n0Var;
        if (this.B0 != null) {
            return this.B0;
        }
        synchronized (this) {
            try {
                if (this.B0 == null) {
                    this.B0 = new r0(this);
                }
                n0Var = this.B0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return n0Var;
    }

    @Override
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), MimeTypes.BASE_TYPE_AUDIO, "download_table", "video", "download_thread_info", "room_table", "permanent_msg", "download_subtitle_table", NotificationCompat.CATEGORY_MESSAGE, "consume_bean", "download_thread_range", "video_land_ad", "subtitle_language_map_table", "non_ad_plans", "local_mcc", "short_tv_play", "ShortTvFavoriteState", "video_detail_play", "music_liked", "place_list", "ugc_video_detail_play", "ugc_collection_video_group", "member_resolution", "home_preferences_interval_time");
    }

    @Override
    public vi.a q1() {
        vi.a aVar;
        if (this.M0 != null) {
            return this.M0;
        }
        synchronized (this) {
            try {
                if (this.M0 == null) {
                    this.M0 = new vi.d(this);
                }
                aVar = this.M0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public MemberResolutionDao r1() {
        MemberResolutionDao memberResolutionDao;
        if (this.L0 != null) {
            return this.L0;
        }
        synchronized (this) {
            try {
                if (this.L0 == null) {
                    this.L0 = new g(this);
                }
                memberResolutionDao = this.L0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return memberResolutionDao;
    }

    @Override
    public zi.a s1() {
        zi.a aVar;
        if (this.A0 != null) {
            return this.A0;
        }
        synchronized (this) {
            try {
                if (this.A0 == null) {
                    this.A0 = new h(this);
                }
                aVar = this.A0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public xi.a t1() {
        xi.a aVar;
        if (this.H0 != null) {
            return this.H0;
        }
        synchronized (this) {
            try {
                if (this.H0 == null) {
                    this.H0 = new xi.h(this);
                }
                aVar = this.H0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public PlaceDao u1() {
        PlaceDao placeDao;
        if (this.I0 != null) {
            return this.I0;
        }
        synchronized (this) {
            try {
                if (this.I0 == null) {
                    this.I0 = new com.transsion.baselib.db.place.d(this);
                }
                placeDao = this.I0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return placeDao;
    }

    @Override
    public List v(Map map) {
        return new ArrayList();
    }

    @Override
    public aj.a v1() {
        aj.a aVar;
        if (this.f41933y0 != null) {
            return this.f41933y0;
        }
        synchronized (this) {
            try {
                if (this.f41933y0 == null) {
                    this.f41933y0 = new e(this);
                }
                aVar = this.f41933y0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public ShortTVPlayDao w1() {
        ShortTVPlayDao shortTVPlayDao;
        if (this.D0 != null) {
            return this.D0;
        }
        synchronized (this) {
            try {
                if (this.D0 == null) {
                    this.D0 = new com.transsion.baselib.db.video.m(this);
                }
                shortTVPlayDao = this.D0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return shortTVPlayDao;
    }

    @Override
    public IShortTvFavoriteStateDao x1() {
        IShortTvFavoriteStateDao iShortTvFavoriteStateDao;
        if (this.F0 != null) {
            return this.F0;
        }
        synchronized (this) {
            try {
                if (this.F0 == null) {
                    this.F0 = new d(this);
                }
                iShortTvFavoriteStateDao = this.F0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iShortTvFavoriteStateDao;
    }

    @Override
    public v0 y1() {
        v0 v0Var;
        if (this.f41934z0 != null) {
            return this.f41934z0;
        }
        synchronized (this) {
            try {
                if (this.f41934z0 == null) {
                    this.f41934z0 = new c1(this);
                }
                v0Var = this.f41934z0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return v0Var;
    }

    @Override
    public d1 z1() {
        d1 d1Var;
        if (this.E0 != null) {
            return this.E0;
        }
        synchronized (this) {
            try {
                if (this.E0 == null) {
                    this.E0 = new h1(this);
                }
                d1Var = this.E0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return d1Var;
    }
}
