package ui;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.baselib.db.download.DownloadBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class l0 implements ui.c {

    private final RoomDatabase f73125a;

    private final androidx.room.g f73126b = new a();

    private final androidx.room.e f73127c = new b();

    private final androidx.room.e f73128d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `download_table` (`url`,`resourceId`,`name`,`cover`,`size`,`postId`,`sizeFormat`,`path`,`duration`,`updateTimeStamp`,`progress`,`supportRanges`,`status`,`type`,`readProgress`,`createAt`,`isRead`,`episode`,`ep`,`se`,`resolution`,`resourcePosition`,`multiresolution`,`videoWidth`,`videoHeight`,`downloadErrorCount`,`subtitleStarted`,`subjectId`,`pageFrom`,`lastPageFrom`,`subjectName`,`lastPlayTimeStamp`,`fileType`,`totalEpisode`,`uploadBy`,`sourceUrl`,`urlCreateAt`,`subtitleSelectId`,`taskId`,`sessionTime`,`reportStatus`,`downloadHeaderSize`,`rootPath`,`rootPathType`,`thumbnail`,`averageHueLight`,`isTransferFailed`,`isClosedTransferFailed`,`subjectType`,`genre`,`subjectDurationSeconds`,`currentDubLanName`,`currentDubLanCode`,`ops`,`restrictLevel`,`releaseDate`,`countryName`,`seNum`,`subtitles`,`imdbRate`,`lastAdStartTimeStamp`,`lastAdEndTimeStamp`,`subtitleIdType`,`ugcVideoCollectionId`,`ugcVideoId`,`ugcVideoName`,`ugcVideoCollectionName`,`ugcVideoPosition`,`ugcVideoType`,`ugcCateLev1Id`,`ugcCateLev2Id`,`ugcCateLev3Id`,`ugcCateLev4Id`,`ugcVideoTrackId`,`ugcVideoParentVideoId`,`ugcVideoParentTrackId`,`ugcVideoEpTitle`,`ugcVideoIsVertical`,`originData`,`kidId`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, DownloadBean downloadBean) {
            if (downloadBean.getUrl() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, downloadBean.getUrl());
            }
            if (downloadBean.getResourceId() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, downloadBean.getResourceId());
            }
            if (downloadBean.getName() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, downloadBean.getName());
            }
            if (downloadBean.getCover() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, downloadBean.getCover());
            }
            if (downloadBean.getSize() == null) {
                eVar.g(5);
            } else {
                eVar.c(5, downloadBean.getSize().longValue());
            }
            if (downloadBean.getPostId() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, downloadBean.getPostId());
            }
            if (downloadBean.getSizeFormat() == null) {
                eVar.g(7);
            } else {
                eVar.i(7, downloadBean.getSizeFormat());
            }
            if (downloadBean.getPath() == null) {
                eVar.g(8);
            } else {
                eVar.i(8, downloadBean.getPath());
            }
            if (downloadBean.getDuration() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, downloadBean.getDuration().longValue());
            }
            if (downloadBean.getUpdateTimeStamp() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, downloadBean.getUpdateTimeStamp().longValue());
            }
            eVar.c(11, downloadBean.getProgress());
            eVar.c(12, downloadBean.getSupportRanges());
            eVar.c(13, downloadBean.getStatus());
            eVar.c(14, downloadBean.getType());
            eVar.c(15, downloadBean.getReadProgress());
            eVar.c(16, downloadBean.getCreateAt());
            eVar.c(17, downloadBean.getIsRead());
            eVar.c(18, downloadBean.getEpse());
            eVar.c(19, downloadBean.getEp());
            eVar.c(20, downloadBean.getSe());
            eVar.c(21, downloadBean.getResolution());
            eVar.c(22, downloadBean.getResourcePosition());
            eVar.c(23, downloadBean.getMultiresolution());
            eVar.c(24, downloadBean.getVideoWidth());
            eVar.c(25, downloadBean.getVideoHeight());
            eVar.c(26, downloadBean.getDownloadErrorCount());
            eVar.c(27, downloadBean.getSubtitleStarted());
            if (downloadBean.getSubjectId() == null) {
                eVar.g(28);
            } else {
                eVar.i(28, downloadBean.getSubjectId());
            }
            if (downloadBean.getPageFrom() == null) {
                eVar.g(29);
            } else {
                eVar.i(29, downloadBean.getPageFrom());
            }
            if (downloadBean.getLastPageFrom() == null) {
                eVar.g(30);
            } else {
                eVar.i(30, downloadBean.getLastPageFrom());
            }
            if (downloadBean.getSubjectName() == null) {
                eVar.g(31);
            } else {
                eVar.i(31, downloadBean.getSubjectName());
            }
            eVar.c(32, downloadBean.getLastPlayTimeStamp());
            eVar.c(33, downloadBean.getFileType());
            eVar.c(34, downloadBean.getTotalEpisode());
            if (downloadBean.getUploadBy() == null) {
                eVar.g(35);
            } else {
                eVar.i(35, downloadBean.getUploadBy());
            }
            if (downloadBean.getSourceUrl() == null) {
                eVar.g(36);
            } else {
                eVar.i(36, downloadBean.getSourceUrl());
            }
            eVar.c(37, downloadBean.getUrlCreateAt());
            if (downloadBean.getSubtitleSelectId() == null) {
                eVar.g(38);
            } else {
                eVar.i(38, downloadBean.getSubtitleSelectId());
            }
            if (downloadBean.getTaskId() == null) {
                eVar.g(39);
            } else {
                eVar.i(39, downloadBean.getTaskId());
            }
            eVar.c(40, downloadBean.getSessionTime());
            eVar.c(41, downloadBean.getReportStatus());
            eVar.c(42, downloadBean.getDownloadHeaderSize());
            if (downloadBean.getRootPath() == null) {
                eVar.g(43);
            } else {
                eVar.i(43, downloadBean.getRootPath());
            }
            eVar.c(44, downloadBean.getRootPathType());
            if (downloadBean.getThumbnail() == null) {
                eVar.g(45);
            } else {
                eVar.i(45, downloadBean.getThumbnail());
            }
            if (downloadBean.getAverageHueLight() == null) {
                eVar.g(46);
            } else {
                eVar.i(46, downloadBean.getAverageHueLight());
            }
            eVar.c(47, downloadBean.getIsTransferFailed() ? 1L : 0L);
            eVar.c(48, downloadBean.getIsClosedTransferFailed() ? 1L : 0L);
            eVar.c(49, downloadBean.getSubjectType());
            if (downloadBean.getGenre() == null) {
                eVar.g(50);
            } else {
                eVar.i(50, downloadBean.getGenre());
            }
            if (downloadBean.getSubjectDurationSeconds() == null) {
                eVar.g(51);
            } else {
                eVar.c(51, downloadBean.getSubjectDurationSeconds().intValue());
            }
            if (downloadBean.getCurrentDubLanName() == null) {
                eVar.g(52);
            } else {
                eVar.i(52, downloadBean.getCurrentDubLanName());
            }
            if (downloadBean.getCurrentDubLanCode() == null) {
                eVar.g(53);
            } else {
                eVar.i(53, downloadBean.getCurrentDubLanCode());
            }
            if (downloadBean.getOps() == null) {
                eVar.g(54);
            } else {
                eVar.i(54, downloadBean.getOps());
            }
            if (downloadBean.getRestrictLevel() == null) {
                eVar.g(55);
            } else {
                eVar.i(55, downloadBean.getRestrictLevel());
            }
            if (downloadBean.getReleaseDate() == null) {
                eVar.g(56);
            } else {
                eVar.i(56, downloadBean.getReleaseDate());
            }
            if (downloadBean.getCountryName() == null) {
                eVar.g(57);
            } else {
                eVar.i(57, downloadBean.getCountryName());
            }
            if (downloadBean.getSeNum() == null) {
                eVar.g(58);
            } else {
                eVar.c(58, downloadBean.getSeNum().intValue());
            }
            if (downloadBean.getSubtitles() == null) {
                eVar.g(59);
            } else {
                eVar.i(59, downloadBean.getSubtitles());
            }
            if (downloadBean.getImdbRate() == null) {
                eVar.g(60);
            } else {
                eVar.i(60, downloadBean.getImdbRate());
            }
            if (downloadBean.getLastAdStartTimeStamp() == null) {
                eVar.g(61);
            } else {
                eVar.c(61, downloadBean.getLastAdStartTimeStamp().longValue());
            }
            if (downloadBean.getLastAdEndTimeStamp() == null) {
                eVar.g(62);
            } else {
                eVar.c(62, downloadBean.getLastAdEndTimeStamp().longValue());
            }
            if (downloadBean.getSubtitleIdType() == null) {
                eVar.g(63);
            } else {
                eVar.i(63, downloadBean.getSubtitleIdType());
            }
            if (downloadBean.getUgcVideoCollectionId() == null) {
                eVar.g(64);
            } else {
                eVar.i(64, downloadBean.getUgcVideoCollectionId());
            }
            if (downloadBean.getUgcVideoId() == null) {
                eVar.g(65);
            } else {
                eVar.i(65, downloadBean.getUgcVideoId());
            }
            if (downloadBean.getUgcVideoName() == null) {
                eVar.g(66);
            } else {
                eVar.i(66, downloadBean.getUgcVideoName());
            }
            if (downloadBean.getUgcVideoCollectionName() == null) {
                eVar.g(67);
            } else {
                eVar.i(67, downloadBean.getUgcVideoCollectionName());
            }
            if (downloadBean.getUgcVideoPosition() == null) {
                eVar.g(68);
            } else {
                eVar.c(68, downloadBean.getUgcVideoPosition().intValue());
            }
            if (downloadBean.getUgcVideoType() == null) {
                eVar.g(69);
            } else {
                eVar.i(69, downloadBean.getUgcVideoType());
            }
            if (downloadBean.getUgcCateLev1Id() == null) {
                eVar.g(70);
            } else {
                eVar.c(70, downloadBean.getUgcCateLev1Id().intValue());
            }
            if (downloadBean.getUgcCateLev2Id() == null) {
                eVar.g(71);
            } else {
                eVar.c(71, downloadBean.getUgcCateLev2Id().intValue());
            }
            if (downloadBean.getUgcCateLev3Id() == null) {
                eVar.g(72);
            } else {
                eVar.c(72, downloadBean.getUgcCateLev3Id().intValue());
            }
            if (downloadBean.getUgcCateLev4Id() == null) {
                eVar.g(73);
            } else {
                eVar.c(73, downloadBean.getUgcCateLev4Id().intValue());
            }
            if (downloadBean.getUgcVideoTrackId() == null) {
                eVar.g(74);
            } else {
                eVar.i(74, downloadBean.getUgcVideoTrackId());
            }
            if (downloadBean.getUgcVideoParentVideoId() == null) {
                eVar.g(75);
            } else {
                eVar.i(75, downloadBean.getUgcVideoParentVideoId());
            }
            if (downloadBean.getUgcVideoParentTrackId() == null) {
                eVar.g(76);
            } else {
                eVar.i(76, downloadBean.getUgcVideoParentTrackId());
            }
            if (downloadBean.getUgcVideoEpTitle() == null) {
                eVar.g(77);
            } else {
                eVar.i(77, downloadBean.getUgcVideoEpTitle());
            }
            eVar.c(78, downloadBean.getUgcVideoIsVertical() ? 1L : 0L);
            if (downloadBean.getOriginData() == null) {
                eVar.g(79);
            } else {
                eVar.i(79, downloadBean.getOriginData());
            }
            if (downloadBean.getKidId() == null) {
                eVar.g(80);
            } else {
                eVar.i(80, downloadBean.getKidId());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "DELETE FROM `download_table` WHERE `url` = ?";
        }

        @Override
        public void a(y3.e eVar, DownloadBean downloadBean) {
            if (downloadBean.getUrl() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, downloadBean.getUrl());
            }
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `download_table` SET `url` = ?,`resourceId` = ?,`name` = ?,`cover` = ?,`size` = ?,`postId` = ?,`sizeFormat` = ?,`path` = ?,`duration` = ?,`updateTimeStamp` = ?,`progress` = ?,`supportRanges` = ?,`status` = ?,`type` = ?,`readProgress` = ?,`createAt` = ?,`isRead` = ?,`episode` = ?,`ep` = ?,`se` = ?,`resolution` = ?,`resourcePosition` = ?,`multiresolution` = ?,`videoWidth` = ?,`videoHeight` = ?,`downloadErrorCount` = ?,`subtitleStarted` = ?,`subjectId` = ?,`pageFrom` = ?,`lastPageFrom` = ?,`subjectName` = ?,`lastPlayTimeStamp` = ?,`fileType` = ?,`totalEpisode` = ?,`uploadBy` = ?,`sourceUrl` = ?,`urlCreateAt` = ?,`subtitleSelectId` = ?,`taskId` = ?,`sessionTime` = ?,`reportStatus` = ?,`downloadHeaderSize` = ?,`rootPath` = ?,`rootPathType` = ?,`thumbnail` = ?,`averageHueLight` = ?,`isTransferFailed` = ?,`isClosedTransferFailed` = ?,`subjectType` = ?,`genre` = ?,`subjectDurationSeconds` = ?,`currentDubLanName` = ?,`currentDubLanCode` = ?,`ops` = ?,`restrictLevel` = ?,`releaseDate` = ?,`countryName` = ?,`seNum` = ?,`subtitles` = ?,`imdbRate` = ?,`lastAdStartTimeStamp` = ?,`lastAdEndTimeStamp` = ?,`subtitleIdType` = ?,`ugcVideoCollectionId` = ?,`ugcVideoId` = ?,`ugcVideoName` = ?,`ugcVideoCollectionName` = ?,`ugcVideoPosition` = ?,`ugcVideoType` = ?,`ugcCateLev1Id` = ?,`ugcCateLev2Id` = ?,`ugcCateLev3Id` = ?,`ugcCateLev4Id` = ?,`ugcVideoTrackId` = ?,`ugcVideoParentVideoId` = ?,`ugcVideoParentTrackId` = ?,`ugcVideoEpTitle` = ?,`ugcVideoIsVertical` = ?,`originData` = ?,`kidId` = ? WHERE `url` = ?";
        }

        @Override
        public void a(y3.e eVar, DownloadBean downloadBean) {
            if (downloadBean.getUrl() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, downloadBean.getUrl());
            }
            if (downloadBean.getResourceId() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, downloadBean.getResourceId());
            }
            if (downloadBean.getName() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, downloadBean.getName());
            }
            if (downloadBean.getCover() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, downloadBean.getCover());
            }
            if (downloadBean.getSize() == null) {
                eVar.g(5);
            } else {
                eVar.c(5, downloadBean.getSize().longValue());
            }
            if (downloadBean.getPostId() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, downloadBean.getPostId());
            }
            if (downloadBean.getSizeFormat() == null) {
                eVar.g(7);
            } else {
                eVar.i(7, downloadBean.getSizeFormat());
            }
            if (downloadBean.getPath() == null) {
                eVar.g(8);
            } else {
                eVar.i(8, downloadBean.getPath());
            }
            if (downloadBean.getDuration() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, downloadBean.getDuration().longValue());
            }
            if (downloadBean.getUpdateTimeStamp() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, downloadBean.getUpdateTimeStamp().longValue());
            }
            eVar.c(11, downloadBean.getProgress());
            eVar.c(12, downloadBean.getSupportRanges());
            eVar.c(13, downloadBean.getStatus());
            eVar.c(14, downloadBean.getType());
            eVar.c(15, downloadBean.getReadProgress());
            eVar.c(16, downloadBean.getCreateAt());
            eVar.c(17, downloadBean.getIsRead());
            eVar.c(18, downloadBean.getEpse());
            eVar.c(19, downloadBean.getEp());
            eVar.c(20, downloadBean.getSe());
            eVar.c(21, downloadBean.getResolution());
            eVar.c(22, downloadBean.getResourcePosition());
            eVar.c(23, downloadBean.getMultiresolution());
            eVar.c(24, downloadBean.getVideoWidth());
            eVar.c(25, downloadBean.getVideoHeight());
            eVar.c(26, downloadBean.getDownloadErrorCount());
            eVar.c(27, downloadBean.getSubtitleStarted());
            if (downloadBean.getSubjectId() == null) {
                eVar.g(28);
            } else {
                eVar.i(28, downloadBean.getSubjectId());
            }
            if (downloadBean.getPageFrom() == null) {
                eVar.g(29);
            } else {
                eVar.i(29, downloadBean.getPageFrom());
            }
            if (downloadBean.getLastPageFrom() == null) {
                eVar.g(30);
            } else {
                eVar.i(30, downloadBean.getLastPageFrom());
            }
            if (downloadBean.getSubjectName() == null) {
                eVar.g(31);
            } else {
                eVar.i(31, downloadBean.getSubjectName());
            }
            eVar.c(32, downloadBean.getLastPlayTimeStamp());
            eVar.c(33, downloadBean.getFileType());
            eVar.c(34, downloadBean.getTotalEpisode());
            if (downloadBean.getUploadBy() == null) {
                eVar.g(35);
            } else {
                eVar.i(35, downloadBean.getUploadBy());
            }
            if (downloadBean.getSourceUrl() == null) {
                eVar.g(36);
            } else {
                eVar.i(36, downloadBean.getSourceUrl());
            }
            eVar.c(37, downloadBean.getUrlCreateAt());
            if (downloadBean.getSubtitleSelectId() == null) {
                eVar.g(38);
            } else {
                eVar.i(38, downloadBean.getSubtitleSelectId());
            }
            if (downloadBean.getTaskId() == null) {
                eVar.g(39);
            } else {
                eVar.i(39, downloadBean.getTaskId());
            }
            eVar.c(40, downloadBean.getSessionTime());
            eVar.c(41, downloadBean.getReportStatus());
            eVar.c(42, downloadBean.getDownloadHeaderSize());
            if (downloadBean.getRootPath() == null) {
                eVar.g(43);
            } else {
                eVar.i(43, downloadBean.getRootPath());
            }
            eVar.c(44, downloadBean.getRootPathType());
            if (downloadBean.getThumbnail() == null) {
                eVar.g(45);
            } else {
                eVar.i(45, downloadBean.getThumbnail());
            }
            if (downloadBean.getAverageHueLight() == null) {
                eVar.g(46);
            } else {
                eVar.i(46, downloadBean.getAverageHueLight());
            }
            eVar.c(47, downloadBean.getIsTransferFailed() ? 1L : 0L);
            eVar.c(48, downloadBean.getIsClosedTransferFailed() ? 1L : 0L);
            eVar.c(49, downloadBean.getSubjectType());
            if (downloadBean.getGenre() == null) {
                eVar.g(50);
            } else {
                eVar.i(50, downloadBean.getGenre());
            }
            if (downloadBean.getSubjectDurationSeconds() == null) {
                eVar.g(51);
            } else {
                eVar.c(51, downloadBean.getSubjectDurationSeconds().intValue());
            }
            if (downloadBean.getCurrentDubLanName() == null) {
                eVar.g(52);
            } else {
                eVar.i(52, downloadBean.getCurrentDubLanName());
            }
            if (downloadBean.getCurrentDubLanCode() == null) {
                eVar.g(53);
            } else {
                eVar.i(53, downloadBean.getCurrentDubLanCode());
            }
            if (downloadBean.getOps() == null) {
                eVar.g(54);
            } else {
                eVar.i(54, downloadBean.getOps());
            }
            if (downloadBean.getRestrictLevel() == null) {
                eVar.g(55);
            } else {
                eVar.i(55, downloadBean.getRestrictLevel());
            }
            if (downloadBean.getReleaseDate() == null) {
                eVar.g(56);
            } else {
                eVar.i(56, downloadBean.getReleaseDate());
            }
            if (downloadBean.getCountryName() == null) {
                eVar.g(57);
            } else {
                eVar.i(57, downloadBean.getCountryName());
            }
            if (downloadBean.getSeNum() == null) {
                eVar.g(58);
            } else {
                eVar.c(58, downloadBean.getSeNum().intValue());
            }
            if (downloadBean.getSubtitles() == null) {
                eVar.g(59);
            } else {
                eVar.i(59, downloadBean.getSubtitles());
            }
            if (downloadBean.getImdbRate() == null) {
                eVar.g(60);
            } else {
                eVar.i(60, downloadBean.getImdbRate());
            }
            if (downloadBean.getLastAdStartTimeStamp() == null) {
                eVar.g(61);
            } else {
                eVar.c(61, downloadBean.getLastAdStartTimeStamp().longValue());
            }
            if (downloadBean.getLastAdEndTimeStamp() == null) {
                eVar.g(62);
            } else {
                eVar.c(62, downloadBean.getLastAdEndTimeStamp().longValue());
            }
            if (downloadBean.getSubtitleIdType() == null) {
                eVar.g(63);
            } else {
                eVar.i(63, downloadBean.getSubtitleIdType());
            }
            if (downloadBean.getUgcVideoCollectionId() == null) {
                eVar.g(64);
            } else {
                eVar.i(64, downloadBean.getUgcVideoCollectionId());
            }
            if (downloadBean.getUgcVideoId() == null) {
                eVar.g(65);
            } else {
                eVar.i(65, downloadBean.getUgcVideoId());
            }
            if (downloadBean.getUgcVideoName() == null) {
                eVar.g(66);
            } else {
                eVar.i(66, downloadBean.getUgcVideoName());
            }
            if (downloadBean.getUgcVideoCollectionName() == null) {
                eVar.g(67);
            } else {
                eVar.i(67, downloadBean.getUgcVideoCollectionName());
            }
            if (downloadBean.getUgcVideoPosition() == null) {
                eVar.g(68);
            } else {
                eVar.c(68, downloadBean.getUgcVideoPosition().intValue());
            }
            if (downloadBean.getUgcVideoType() == null) {
                eVar.g(69);
            } else {
                eVar.i(69, downloadBean.getUgcVideoType());
            }
            if (downloadBean.getUgcCateLev1Id() == null) {
                eVar.g(70);
            } else {
                eVar.c(70, downloadBean.getUgcCateLev1Id().intValue());
            }
            if (downloadBean.getUgcCateLev2Id() == null) {
                eVar.g(71);
            } else {
                eVar.c(71, downloadBean.getUgcCateLev2Id().intValue());
            }
            if (downloadBean.getUgcCateLev3Id() == null) {
                eVar.g(72);
            } else {
                eVar.c(72, downloadBean.getUgcCateLev3Id().intValue());
            }
            if (downloadBean.getUgcCateLev4Id() == null) {
                eVar.g(73);
            } else {
                eVar.c(73, downloadBean.getUgcCateLev4Id().intValue());
            }
            if (downloadBean.getUgcVideoTrackId() == null) {
                eVar.g(74);
            } else {
                eVar.i(74, downloadBean.getUgcVideoTrackId());
            }
            if (downloadBean.getUgcVideoParentVideoId() == null) {
                eVar.g(75);
            } else {
                eVar.i(75, downloadBean.getUgcVideoParentVideoId());
            }
            if (downloadBean.getUgcVideoParentTrackId() == null) {
                eVar.g(76);
            } else {
                eVar.i(76, downloadBean.getUgcVideoParentTrackId());
            }
            if (downloadBean.getUgcVideoEpTitle() == null) {
                eVar.g(77);
            } else {
                eVar.i(77, downloadBean.getUgcVideoEpTitle());
            }
            eVar.c(78, downloadBean.getUgcVideoIsVertical() ? 1L : 0L);
            if (downloadBean.getOriginData() == null) {
                eVar.g(79);
            } else {
                eVar.i(79, downloadBean.getOriginData());
            }
            if (downloadBean.getKidId() == null) {
                eVar.g(80);
            } else {
                eVar.i(80, downloadBean.getKidId());
            }
            if (downloadBean.getUrl() == null) {
                eVar.g(81);
            } else {
                eVar.i(81, downloadBean.getUrl());
            }
        }
    }

    public l0(RoomDatabase roomDatabase) {
        this.f73125a = roomDatabase;
    }

    public static List A0(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE status = 6 OR status = 3 AND fileType == 1 ORDER BY updateTimeStamp DESC ");
        try {
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                Long lValueOf = eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5));
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ5 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ6 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Long lValueOf2 = eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9));
                Long lValueOf3 = eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10));
                long j10 = eVarF0.getLong(iC11);
                int i10 = iC2;
                int i11 = iC3;
                int i12 = (int) eVarF0.getLong(iC12);
                int i13 = iC4;
                int i14 = (int) eVarF0.getLong(iC13);
                int i15 = iC5;
                int i16 = (int) eVarF0.getLong(iC14);
                int i17 = iC15;
                long j11 = eVarF0.getLong(i17);
                int i18 = iC;
                int i19 = iC16;
                long j12 = eVarF0.getLong(i19);
                iC16 = i19;
                int i20 = iC17;
                int i21 = iC6;
                int i22 = (int) eVarF0.getLong(i20);
                int i23 = iC8;
                int i24 = iC18;
                int i25 = iC7;
                int i26 = (int) eVarF0.getLong(i24);
                int i27 = iC10;
                int i28 = iC19;
                int i29 = iC9;
                int i30 = (int) eVarF0.getLong(i28);
                int i31 = iC12;
                int i32 = iC20;
                int i33 = iC11;
                int i34 = (int) eVarF0.getLong(i32);
                int i35 = iC14;
                int i36 = iC21;
                int i37 = iC13;
                int i38 = (int) eVarF0.getLong(i36);
                int i39 = iC22;
                int i40 = (int) eVarF0.getLong(i39);
                int i41 = iC23;
                ArrayList arrayList2 = arrayList;
                int i42 = (int) eVarF0.getLong(i41);
                int i43 = iC24;
                int i44 = (int) eVarF0.getLong(i43);
                int i45 = iC25;
                int i46 = (int) eVarF0.getLong(i45);
                int i47 = iC26;
                int i48 = (int) eVarF0.getLong(i47);
                int i49 = iC27;
                int i50 = (int) eVarF0.getLong(i49);
                int i51 = iC28;
                String strQ7 = eVarF0.isNull(i51) ? null : eVarF0.q0(i51);
                String strQ8 = eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29);
                String strQ9 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ10 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                long j13 = eVarF0.getLong(iC32);
                iC32 = iC32;
                int i52 = iC33;
                int i53 = (int) eVarF0.getLong(i52);
                int i54 = iC34;
                int i55 = (int) eVarF0.getLong(i54);
                int i56 = iC35;
                String strQ11 = eVarF0.isNull(i56) ? null : eVarF0.q0(i56);
                String strQ12 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                long j14 = eVarF0.getLong(iC37);
                iC37 = iC37;
                iC38 = iC38;
                String strQ13 = eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38);
                String strQ14 = eVarF0.isNull(iC39) ? null : eVarF0.q0(iC39);
                long j15 = eVarF0.getLong(iC40);
                iC40 = iC40;
                int i57 = iC41;
                int i58 = (int) eVarF0.getLong(i57);
                int i59 = iC42;
                long j16 = eVarF0.getLong(i59);
                iC43 = iC43;
                int i60 = iC45;
                int i61 = iC48;
                int i62 = iC50;
                int i63 = iC73;
                int i64 = iC78;
                arrayList2.add(new DownloadBean(strQ0, strQ1, strQ2, strQ3, lValueOf, strQ4, strQ5, strQ6, lValueOf2, lValueOf3, j10, i12, i14, i16, j11, j12, i22, i26, i30, i34, i38, i40, i42, i44, i46, i48, i50, strQ7, strQ8, strQ9, strQ10, j13, i53, i55, strQ11, strQ12, j14, strQ13, strQ14, j15, i58, j16, eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43), (int) eVarF0.getLong(iC44), eVarF0.isNull(i60) ? null : eVarF0.q0(i60), eVarF0.isNull(iC46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(i62) ? null : eVarF0.q0(i62), eVarF0.isNull(iC51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(iC52) ? null : eVarF0.q0(iC52), eVarF0.isNull(iC53) ? null : eVarF0.q0(iC53), eVarF0.isNull(iC54) ? null : eVarF0.q0(iC54), eVarF0.isNull(iC55) ? null : eVarF0.q0(iC55), eVarF0.isNull(iC56) ? null : eVarF0.q0(iC56), eVarF0.isNull(iC57) ? null : eVarF0.q0(iC57), eVarF0.isNull(iC58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(iC59) ? null : eVarF0.q0(iC59), eVarF0.isNull(iC60) ? null : eVarF0.q0(iC60), eVarF0.isNull(iC61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(iC62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(iC63) ? null : eVarF0.q0(iC63), eVarF0.isNull(iC64) ? null : eVarF0.q0(iC64), eVarF0.isNull(iC65) ? null : eVarF0.q0(iC65), eVarF0.isNull(iC66) ? null : eVarF0.q0(iC66), eVarF0.isNull(iC67) ? null : eVarF0.q0(iC67), eVarF0.isNull(iC68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(iC69) ? null : eVarF0.q0(iC69), eVarF0.isNull(iC70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(iC71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(iC72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(iC73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(iC74) ? null : eVarF0.q0(iC74), eVarF0.isNull(iC75) ? null : eVarF0.q0(iC75), eVarF0.isNull(iC76) ? null : eVarF0.q0(iC76), eVarF0.isNull(iC77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(iC79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80)));
                iC = i18;
                iC79 = iC79;
                iC80 = iC80;
                iC7 = i25;
                iC9 = i29;
                iC11 = i33;
                iC13 = i37;
                iC21 = i36;
                iC23 = i41;
                iC24 = i43;
                iC26 = i47;
                iC27 = i49;
                iC33 = i52;
                iC34 = i54;
                iC41 = i57;
                iC44 = iC44;
                iC48 = i61;
                iC49 = iC49;
                iC47 = iC47;
                iC52 = iC52;
                iC53 = iC53;
                iC58 = iC58;
                iC59 = iC59;
                iC60 = iC60;
                iC51 = iC51;
                iC70 = iC70;
                iC71 = iC71;
                iC68 = iC68;
                iC72 = iC72;
                iC3 = i11;
                iC4 = i13;
                iC5 = i15;
                iC15 = i17;
                iC12 = i31;
                iC22 = i39;
                iC25 = i45;
                iC35 = i56;
                iC42 = i59;
                iC45 = i60;
                iC18 = i24;
                iC19 = i28;
                iC20 = i32;
                iC74 = iC74;
                iC75 = iC75;
                iC6 = i21;
                iC17 = i20;
                iC8 = i23;
                iC10 = i27;
                iC14 = i35;
                iC28 = i51;
                arrayList = arrayList2;
                iC2 = i10;
                iC78 = i64;
                iC50 = i62;
                iC69 = iC69;
                iC73 = i63;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static DownloadBean B0(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE status ==5 AND fileType == 1 AND type != 1 ORDER BY updateTimeStamp DESC LIMIT 1");
        try {
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarF0.C0()) {
                downloadBean = new DownloadBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5)), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), eVarF0.getLong(iC11), (int) eVarF0.getLong(iC12), (int) eVarF0.getLong(iC13), (int) eVarF0.getLong(iC14), eVarF0.getLong(iC15), eVarF0.getLong(iC16), (int) eVarF0.getLong(iC17), (int) eVarF0.getLong(iC18), (int) eVarF0.getLong(iC19), (int) eVarF0.getLong(iC20), (int) eVarF0.getLong(iC21), (int) eVarF0.getLong(iC22), (int) eVarF0.getLong(iC23), (int) eVarF0.getLong(iC24), (int) eVarF0.getLong(iC25), (int) eVarF0.getLong(iC26), (int) eVarF0.getLong(iC27), eVarF0.isNull(iC28) ? null : eVarF0.q0(iC28), eVarF0.isNull(r29) ? null : eVarF0.q0(iC29), eVarF0.isNull(r30) ? null : eVarF0.q0(iC30), eVarF0.isNull(r31) ? null : eVarF0.q0(iC31), eVarF0.getLong(iC32), (int) eVarF0.getLong(iC33), (int) eVarF0.getLong(iC34), eVarF0.isNull(iC35) ? null : eVarF0.q0(iC35), eVarF0.isNull(r36) ? null : eVarF0.q0(iC36), eVarF0.getLong(iC37), eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38), eVarF0.isNull(r39) ? null : eVarF0.q0(iC39), eVarF0.getLong(iC40), (int) eVarF0.getLong(iC41), eVarF0.getLong(iC42), eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43), (int) eVarF0.getLong(iC44), eVarF0.isNull(iC45) ? null : eVarF0.q0(iC45), eVarF0.isNull(r46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(iC50) ? null : eVarF0.q0(iC50), eVarF0.isNull(r51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(r52) ? null : eVarF0.q0(iC52), eVarF0.isNull(r53) ? null : eVarF0.q0(iC53), eVarF0.isNull(r54) ? null : eVarF0.q0(iC54), eVarF0.isNull(r55) ? null : eVarF0.q0(iC55), eVarF0.isNull(r56) ? null : eVarF0.q0(iC56), eVarF0.isNull(r57) ? null : eVarF0.q0(iC57), eVarF0.isNull(r58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(r59) ? null : eVarF0.q0(iC59), eVarF0.isNull(r60) ? null : eVarF0.q0(iC60), eVarF0.isNull(r61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(r62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(r63) ? null : eVarF0.q0(iC63), eVarF0.isNull(r64) ? null : eVarF0.q0(iC64), eVarF0.isNull(r65) ? null : eVarF0.q0(iC65), eVarF0.isNull(r66) ? null : eVarF0.q0(iC66), eVarF0.isNull(r67) ? null : eVarF0.q0(iC67), eVarF0.isNull(r68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(r69) ? null : eVarF0.q0(iC69), eVarF0.isNull(r70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(r71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(r72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(r73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(r74) ? null : eVarF0.q0(iC74), eVarF0.isNull(r75) ? null : eVarF0.q0(iC75), eVarF0.isNull(r76) ? null : eVarF0.q0(iC76), eVarF0.isNull(r77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(r79) ? null : eVarF0.q0(iC79), eVarF0.isNull(r170) ? null : eVarF0.q0(iC80));
            }
            return downloadBean;
        } finally {
            eVarF0.close();
        }
    }

    public static List C0(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE kidId = ? AND status = 5 AND fileType == 1 ORDER BY updateTimeStamp DESC");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                Long lValueOf = eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5));
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ5 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ6 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Long lValueOf2 = eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9));
                Long lValueOf3 = eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10));
                long j10 = eVarF0.getLong(iC11);
                int i10 = iC2;
                int i11 = iC3;
                int i12 = (int) eVarF0.getLong(iC12);
                int i13 = iC4;
                int i14 = (int) eVarF0.getLong(iC13);
                int i15 = iC5;
                int i16 = (int) eVarF0.getLong(iC14);
                int i17 = iC15;
                long j11 = eVarF0.getLong(i17);
                int i18 = iC;
                int i19 = iC16;
                long j12 = eVarF0.getLong(i19);
                iC16 = i19;
                int i20 = iC17;
                int i21 = iC6;
                int i22 = (int) eVarF0.getLong(i20);
                int i23 = iC8;
                int i24 = iC18;
                int i25 = iC7;
                int i26 = (int) eVarF0.getLong(i24);
                int i27 = iC10;
                int i28 = iC19;
                int i29 = iC9;
                int i30 = (int) eVarF0.getLong(i28);
                int i31 = iC12;
                int i32 = iC20;
                int i33 = iC11;
                int i34 = (int) eVarF0.getLong(i32);
                int i35 = iC14;
                int i36 = iC21;
                int i37 = iC13;
                int i38 = (int) eVarF0.getLong(i36);
                int i39 = iC22;
                int i40 = (int) eVarF0.getLong(i39);
                int i41 = iC23;
                int i42 = (int) eVarF0.getLong(i41);
                int i43 = iC24;
                int i44 = (int) eVarF0.getLong(i43);
                int i45 = iC25;
                int i46 = (int) eVarF0.getLong(i45);
                int i47 = iC26;
                int i48 = (int) eVarF0.getLong(i47);
                int i49 = iC27;
                int i50 = (int) eVarF0.getLong(i49);
                int i51 = iC28;
                String strQ7 = eVarF0.isNull(i51) ? null : eVarF0.q0(i51);
                String strQ8 = eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29);
                String strQ9 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ10 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                long j13 = eVarF0.getLong(iC32);
                iC32 = iC32;
                int i52 = iC33;
                int i53 = (int) eVarF0.getLong(i52);
                int i54 = iC34;
                int i55 = (int) eVarF0.getLong(i54);
                int i56 = iC35;
                String strQ11 = eVarF0.isNull(i56) ? null : eVarF0.q0(i56);
                String strQ12 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                long j14 = eVarF0.getLong(iC37);
                iC37 = iC37;
                iC38 = iC38;
                String strQ13 = eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38);
                String strQ14 = eVarF0.isNull(iC39) ? null : eVarF0.q0(iC39);
                long j15 = eVarF0.getLong(iC40);
                iC40 = iC40;
                int i57 = iC41;
                int i58 = (int) eVarF0.getLong(i57);
                int i59 = iC42;
                long j16 = eVarF0.getLong(i59);
                iC43 = iC43;
                String strQ15 = eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43);
                int i60 = (int) eVarF0.getLong(iC44);
                int i61 = iC45;
                String strQ16 = eVarF0.isNull(i61) ? null : eVarF0.q0(i61);
                int i62 = iC48;
                int i63 = iC50;
                int i64 = iC75;
                int i65 = iC78;
                arrayList.add(new DownloadBean(strQ0, strQ1, strQ2, strQ3, lValueOf, strQ4, strQ5, strQ6, lValueOf2, lValueOf3, j10, i12, i14, i16, j11, j12, i22, i26, i30, i34, i38, i40, i42, i44, i46, i48, i50, strQ7, strQ8, strQ9, strQ10, j13, i53, i55, strQ11, strQ12, j14, strQ13, strQ14, j15, i58, j16, strQ15, i60, strQ16, eVarF0.isNull(iC46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(i63) ? null : eVarF0.q0(i63), eVarF0.isNull(iC51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(iC52) ? null : eVarF0.q0(iC52), eVarF0.isNull(iC53) ? null : eVarF0.q0(iC53), eVarF0.isNull(iC54) ? null : eVarF0.q0(iC54), eVarF0.isNull(iC55) ? null : eVarF0.q0(iC55), eVarF0.isNull(iC56) ? null : eVarF0.q0(iC56), eVarF0.isNull(iC57) ? null : eVarF0.q0(iC57), eVarF0.isNull(iC58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(iC59) ? null : eVarF0.q0(iC59), eVarF0.isNull(iC60) ? null : eVarF0.q0(iC60), eVarF0.isNull(iC61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(iC62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(iC63) ? null : eVarF0.q0(iC63), eVarF0.isNull(iC64) ? null : eVarF0.q0(iC64), eVarF0.isNull(iC65) ? null : eVarF0.q0(iC65), eVarF0.isNull(iC66) ? null : eVarF0.q0(iC66), eVarF0.isNull(iC67) ? null : eVarF0.q0(iC67), eVarF0.isNull(iC68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(iC69) ? null : eVarF0.q0(iC69), eVarF0.isNull(iC70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(iC71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(iC72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(iC73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(iC74) ? null : eVarF0.q0(iC74), eVarF0.isNull(iC75) ? null : eVarF0.q0(iC75), eVarF0.isNull(iC76) ? null : eVarF0.q0(iC76), eVarF0.isNull(iC77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(iC79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80)));
                iC = i18;
                iC79 = iC79;
                iC80 = iC80;
                iC7 = i25;
                iC9 = i29;
                iC11 = i33;
                iC20 = i32;
                iC33 = i52;
                iC41 = i57;
                iC44 = iC44;
                iC48 = i62;
                iC47 = iC47;
                iC49 = iC49;
                iC51 = iC51;
                iC58 = iC58;
                iC59 = iC59;
                iC60 = iC60;
                iC52 = iC52;
                iC53 = iC53;
                iC70 = iC70;
                iC69 = iC69;
                iC71 = iC71;
                iC68 = iC68;
                iC74 = iC74;
                iC75 = i64;
                iC2 = i10;
                iC3 = i11;
                iC4 = i13;
                iC5 = i15;
                iC15 = i17;
                iC10 = i27;
                iC12 = i31;
                iC23 = i41;
                iC25 = i45;
                iC26 = i47;
                iC27 = i49;
                iC35 = i56;
                iC42 = i59;
                iC45 = i61;
                iC34 = i54;
                iC18 = i24;
                iC19 = i28;
                iC73 = iC73;
                iC72 = iC72;
                iC6 = i21;
                iC13 = i37;
                iC21 = i36;
                iC22 = i39;
                iC17 = i20;
                iC78 = i65;
                iC8 = i23;
                iC14 = i35;
                iC24 = i43;
                iC28 = i51;
                iC50 = i63;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List D0(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE (kidId IS NULL OR kidId = '') AND status = 5 AND fileType == 1 ORDER BY updateTimeStamp DESC");
        try {
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                Long lValueOf = eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5));
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ5 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ6 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Long lValueOf2 = eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9));
                Long lValueOf3 = eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10));
                long j10 = eVarF0.getLong(iC11);
                int i10 = iC2;
                int i11 = iC3;
                int i12 = (int) eVarF0.getLong(iC12);
                int i13 = iC4;
                int i14 = (int) eVarF0.getLong(iC13);
                int i15 = iC5;
                int i16 = (int) eVarF0.getLong(iC14);
                int i17 = iC15;
                long j11 = eVarF0.getLong(i17);
                int i18 = iC;
                int i19 = iC16;
                long j12 = eVarF0.getLong(i19);
                iC16 = i19;
                int i20 = iC17;
                int i21 = iC6;
                int i22 = (int) eVarF0.getLong(i20);
                int i23 = iC8;
                int i24 = iC18;
                int i25 = iC7;
                int i26 = (int) eVarF0.getLong(i24);
                int i27 = iC10;
                int i28 = iC19;
                int i29 = iC9;
                int i30 = (int) eVarF0.getLong(i28);
                int i31 = iC12;
                int i32 = iC20;
                int i33 = iC11;
                int i34 = (int) eVarF0.getLong(i32);
                int i35 = iC14;
                int i36 = iC21;
                int i37 = iC13;
                int i38 = (int) eVarF0.getLong(i36);
                int i39 = iC22;
                int i40 = (int) eVarF0.getLong(i39);
                int i41 = iC23;
                ArrayList arrayList2 = arrayList;
                int i42 = (int) eVarF0.getLong(i41);
                int i43 = iC24;
                int i44 = (int) eVarF0.getLong(i43);
                int i45 = iC25;
                int i46 = (int) eVarF0.getLong(i45);
                int i47 = iC26;
                int i48 = (int) eVarF0.getLong(i47);
                int i49 = iC27;
                int i50 = (int) eVarF0.getLong(i49);
                int i51 = iC28;
                String strQ7 = eVarF0.isNull(i51) ? null : eVarF0.q0(i51);
                String strQ8 = eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29);
                String strQ9 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ10 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                long j13 = eVarF0.getLong(iC32);
                iC32 = iC32;
                int i52 = iC33;
                int i53 = (int) eVarF0.getLong(i52);
                int i54 = iC34;
                int i55 = (int) eVarF0.getLong(i54);
                int i56 = iC35;
                String strQ11 = eVarF0.isNull(i56) ? null : eVarF0.q0(i56);
                String strQ12 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                long j14 = eVarF0.getLong(iC37);
                iC37 = iC37;
                iC38 = iC38;
                String strQ13 = eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38);
                String strQ14 = eVarF0.isNull(iC39) ? null : eVarF0.q0(iC39);
                long j15 = eVarF0.getLong(iC40);
                iC40 = iC40;
                int i57 = iC41;
                int i58 = (int) eVarF0.getLong(i57);
                int i59 = iC42;
                long j16 = eVarF0.getLong(i59);
                iC43 = iC43;
                int i60 = iC45;
                int i61 = iC48;
                int i62 = iC50;
                int i63 = iC73;
                int i64 = iC78;
                arrayList2.add(new DownloadBean(strQ0, strQ1, strQ2, strQ3, lValueOf, strQ4, strQ5, strQ6, lValueOf2, lValueOf3, j10, i12, i14, i16, j11, j12, i22, i26, i30, i34, i38, i40, i42, i44, i46, i48, i50, strQ7, strQ8, strQ9, strQ10, j13, i53, i55, strQ11, strQ12, j14, strQ13, strQ14, j15, i58, j16, eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43), (int) eVarF0.getLong(iC44), eVarF0.isNull(i60) ? null : eVarF0.q0(i60), eVarF0.isNull(iC46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(i62) ? null : eVarF0.q0(i62), eVarF0.isNull(iC51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(iC52) ? null : eVarF0.q0(iC52), eVarF0.isNull(iC53) ? null : eVarF0.q0(iC53), eVarF0.isNull(iC54) ? null : eVarF0.q0(iC54), eVarF0.isNull(iC55) ? null : eVarF0.q0(iC55), eVarF0.isNull(iC56) ? null : eVarF0.q0(iC56), eVarF0.isNull(iC57) ? null : eVarF0.q0(iC57), eVarF0.isNull(iC58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(iC59) ? null : eVarF0.q0(iC59), eVarF0.isNull(iC60) ? null : eVarF0.q0(iC60), eVarF0.isNull(iC61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(iC62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(iC63) ? null : eVarF0.q0(iC63), eVarF0.isNull(iC64) ? null : eVarF0.q0(iC64), eVarF0.isNull(iC65) ? null : eVarF0.q0(iC65), eVarF0.isNull(iC66) ? null : eVarF0.q0(iC66), eVarF0.isNull(iC67) ? null : eVarF0.q0(iC67), eVarF0.isNull(iC68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(iC69) ? null : eVarF0.q0(iC69), eVarF0.isNull(iC70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(iC71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(iC72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(iC73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(iC74) ? null : eVarF0.q0(iC74), eVarF0.isNull(iC75) ? null : eVarF0.q0(iC75), eVarF0.isNull(iC76) ? null : eVarF0.q0(iC76), eVarF0.isNull(iC77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(iC79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80)));
                iC = i18;
                iC79 = iC79;
                iC80 = iC80;
                iC7 = i25;
                iC9 = i29;
                iC11 = i33;
                iC13 = i37;
                iC21 = i36;
                iC23 = i41;
                iC24 = i43;
                iC26 = i47;
                iC27 = i49;
                iC33 = i52;
                iC34 = i54;
                iC41 = i57;
                iC44 = iC44;
                iC48 = i61;
                iC49 = iC49;
                iC47 = iC47;
                iC52 = iC52;
                iC53 = iC53;
                iC58 = iC58;
                iC59 = iC59;
                iC60 = iC60;
                iC51 = iC51;
                iC70 = iC70;
                iC71 = iC71;
                iC68 = iC68;
                iC72 = iC72;
                iC3 = i11;
                iC4 = i13;
                iC5 = i15;
                iC15 = i17;
                iC12 = i31;
                iC22 = i39;
                iC25 = i45;
                iC35 = i56;
                iC42 = i59;
                iC45 = i60;
                iC18 = i24;
                iC19 = i28;
                iC20 = i32;
                iC74 = iC74;
                iC75 = iC75;
                iC6 = i21;
                iC17 = i20;
                iC8 = i23;
                iC10 = i27;
                iC14 = i35;
                iC28 = i51;
                arrayList = arrayList2;
                iC2 = i10;
                iC78 = i64;
                iC50 = i62;
                iC69 = iC69;
                iC73 = i63;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static List E0(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE kidId = ? AND status != 5 AND fileType == 1 ORDER BY createAt ASC");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                Long lValueOf = eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5));
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ5 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ6 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Long lValueOf2 = eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9));
                Long lValueOf3 = eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10));
                long j10 = eVarF0.getLong(iC11);
                int i10 = iC2;
                int i11 = iC3;
                int i12 = (int) eVarF0.getLong(iC12);
                int i13 = iC4;
                int i14 = (int) eVarF0.getLong(iC13);
                int i15 = iC5;
                int i16 = (int) eVarF0.getLong(iC14);
                int i17 = iC15;
                long j11 = eVarF0.getLong(i17);
                int i18 = iC;
                int i19 = iC16;
                long j12 = eVarF0.getLong(i19);
                iC16 = i19;
                int i20 = iC17;
                int i21 = iC6;
                int i22 = (int) eVarF0.getLong(i20);
                int i23 = iC8;
                int i24 = iC18;
                int i25 = iC7;
                int i26 = (int) eVarF0.getLong(i24);
                int i27 = iC10;
                int i28 = iC19;
                int i29 = iC9;
                int i30 = (int) eVarF0.getLong(i28);
                int i31 = iC12;
                int i32 = iC20;
                int i33 = iC11;
                int i34 = (int) eVarF0.getLong(i32);
                int i35 = iC14;
                int i36 = iC21;
                int i37 = iC13;
                int i38 = (int) eVarF0.getLong(i36);
                int i39 = iC22;
                int i40 = (int) eVarF0.getLong(i39);
                int i41 = iC23;
                int i42 = (int) eVarF0.getLong(i41);
                int i43 = iC24;
                int i44 = (int) eVarF0.getLong(i43);
                int i45 = iC25;
                int i46 = (int) eVarF0.getLong(i45);
                int i47 = iC26;
                int i48 = (int) eVarF0.getLong(i47);
                int i49 = iC27;
                int i50 = (int) eVarF0.getLong(i49);
                int i51 = iC28;
                String strQ7 = eVarF0.isNull(i51) ? null : eVarF0.q0(i51);
                String strQ8 = eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29);
                String strQ9 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ10 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                long j13 = eVarF0.getLong(iC32);
                iC32 = iC32;
                int i52 = iC33;
                int i53 = (int) eVarF0.getLong(i52);
                int i54 = iC34;
                int i55 = (int) eVarF0.getLong(i54);
                int i56 = iC35;
                String strQ11 = eVarF0.isNull(i56) ? null : eVarF0.q0(i56);
                String strQ12 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                long j14 = eVarF0.getLong(iC37);
                iC37 = iC37;
                iC38 = iC38;
                String strQ13 = eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38);
                String strQ14 = eVarF0.isNull(iC39) ? null : eVarF0.q0(iC39);
                long j15 = eVarF0.getLong(iC40);
                iC40 = iC40;
                int i57 = iC41;
                int i58 = (int) eVarF0.getLong(i57);
                int i59 = iC42;
                long j16 = eVarF0.getLong(i59);
                iC43 = iC43;
                String strQ15 = eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43);
                int i60 = (int) eVarF0.getLong(iC44);
                int i61 = iC45;
                String strQ16 = eVarF0.isNull(i61) ? null : eVarF0.q0(i61);
                int i62 = iC48;
                int i63 = iC50;
                int i64 = iC75;
                int i65 = iC78;
                arrayList.add(new DownloadBean(strQ0, strQ1, strQ2, strQ3, lValueOf, strQ4, strQ5, strQ6, lValueOf2, lValueOf3, j10, i12, i14, i16, j11, j12, i22, i26, i30, i34, i38, i40, i42, i44, i46, i48, i50, strQ7, strQ8, strQ9, strQ10, j13, i53, i55, strQ11, strQ12, j14, strQ13, strQ14, j15, i58, j16, strQ15, i60, strQ16, eVarF0.isNull(iC46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(i63) ? null : eVarF0.q0(i63), eVarF0.isNull(iC51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(iC52) ? null : eVarF0.q0(iC52), eVarF0.isNull(iC53) ? null : eVarF0.q0(iC53), eVarF0.isNull(iC54) ? null : eVarF0.q0(iC54), eVarF0.isNull(iC55) ? null : eVarF0.q0(iC55), eVarF0.isNull(iC56) ? null : eVarF0.q0(iC56), eVarF0.isNull(iC57) ? null : eVarF0.q0(iC57), eVarF0.isNull(iC58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(iC59) ? null : eVarF0.q0(iC59), eVarF0.isNull(iC60) ? null : eVarF0.q0(iC60), eVarF0.isNull(iC61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(iC62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(iC63) ? null : eVarF0.q0(iC63), eVarF0.isNull(iC64) ? null : eVarF0.q0(iC64), eVarF0.isNull(iC65) ? null : eVarF0.q0(iC65), eVarF0.isNull(iC66) ? null : eVarF0.q0(iC66), eVarF0.isNull(iC67) ? null : eVarF0.q0(iC67), eVarF0.isNull(iC68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(iC69) ? null : eVarF0.q0(iC69), eVarF0.isNull(iC70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(iC71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(iC72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(iC73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(iC74) ? null : eVarF0.q0(iC74), eVarF0.isNull(iC75) ? null : eVarF0.q0(iC75), eVarF0.isNull(iC76) ? null : eVarF0.q0(iC76), eVarF0.isNull(iC77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(iC79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80)));
                iC = i18;
                iC79 = iC79;
                iC80 = iC80;
                iC7 = i25;
                iC9 = i29;
                iC11 = i33;
                iC20 = i32;
                iC33 = i52;
                iC41 = i57;
                iC44 = iC44;
                iC48 = i62;
                iC47 = iC47;
                iC49 = iC49;
                iC51 = iC51;
                iC58 = iC58;
                iC59 = iC59;
                iC60 = iC60;
                iC52 = iC52;
                iC53 = iC53;
                iC70 = iC70;
                iC69 = iC69;
                iC71 = iC71;
                iC68 = iC68;
                iC74 = iC74;
                iC75 = i64;
                iC2 = i10;
                iC3 = i11;
                iC4 = i13;
                iC5 = i15;
                iC15 = i17;
                iC10 = i27;
                iC12 = i31;
                iC23 = i41;
                iC25 = i45;
                iC26 = i47;
                iC27 = i49;
                iC35 = i56;
                iC42 = i59;
                iC45 = i61;
                iC34 = i54;
                iC18 = i24;
                iC19 = i28;
                iC73 = iC73;
                iC72 = iC72;
                iC6 = i21;
                iC13 = i37;
                iC21 = i36;
                iC22 = i39;
                iC17 = i20;
                iC78 = i65;
                iC8 = i23;
                iC14 = i35;
                iC24 = i43;
                iC28 = i51;
                iC50 = i63;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List F0(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE (kidId IS NULL OR kidId = '') AND status != 5 AND fileType == 1 ORDER BY createAt ASC");
        try {
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                Long lValueOf = eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5));
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ5 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ6 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Long lValueOf2 = eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9));
                Long lValueOf3 = eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10));
                long j10 = eVarF0.getLong(iC11);
                int i10 = iC2;
                int i11 = iC3;
                int i12 = (int) eVarF0.getLong(iC12);
                int i13 = iC4;
                int i14 = (int) eVarF0.getLong(iC13);
                int i15 = iC5;
                int i16 = (int) eVarF0.getLong(iC14);
                int i17 = iC15;
                long j11 = eVarF0.getLong(i17);
                int i18 = iC;
                int i19 = iC16;
                long j12 = eVarF0.getLong(i19);
                iC16 = i19;
                int i20 = iC17;
                int i21 = iC6;
                int i22 = (int) eVarF0.getLong(i20);
                int i23 = iC8;
                int i24 = iC18;
                int i25 = iC7;
                int i26 = (int) eVarF0.getLong(i24);
                int i27 = iC10;
                int i28 = iC19;
                int i29 = iC9;
                int i30 = (int) eVarF0.getLong(i28);
                int i31 = iC12;
                int i32 = iC20;
                int i33 = iC11;
                int i34 = (int) eVarF0.getLong(i32);
                int i35 = iC14;
                int i36 = iC21;
                int i37 = iC13;
                int i38 = (int) eVarF0.getLong(i36);
                int i39 = iC22;
                int i40 = (int) eVarF0.getLong(i39);
                int i41 = iC23;
                ArrayList arrayList2 = arrayList;
                int i42 = (int) eVarF0.getLong(i41);
                int i43 = iC24;
                int i44 = (int) eVarF0.getLong(i43);
                int i45 = iC25;
                int i46 = (int) eVarF0.getLong(i45);
                int i47 = iC26;
                int i48 = (int) eVarF0.getLong(i47);
                int i49 = iC27;
                int i50 = (int) eVarF0.getLong(i49);
                int i51 = iC28;
                String strQ7 = eVarF0.isNull(i51) ? null : eVarF0.q0(i51);
                String strQ8 = eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29);
                String strQ9 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ10 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                long j13 = eVarF0.getLong(iC32);
                iC32 = iC32;
                int i52 = iC33;
                int i53 = (int) eVarF0.getLong(i52);
                int i54 = iC34;
                int i55 = (int) eVarF0.getLong(i54);
                int i56 = iC35;
                String strQ11 = eVarF0.isNull(i56) ? null : eVarF0.q0(i56);
                String strQ12 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                long j14 = eVarF0.getLong(iC37);
                iC37 = iC37;
                iC38 = iC38;
                String strQ13 = eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38);
                String strQ14 = eVarF0.isNull(iC39) ? null : eVarF0.q0(iC39);
                long j15 = eVarF0.getLong(iC40);
                iC40 = iC40;
                int i57 = iC41;
                int i58 = (int) eVarF0.getLong(i57);
                int i59 = iC42;
                long j16 = eVarF0.getLong(i59);
                iC43 = iC43;
                int i60 = iC45;
                int i61 = iC48;
                int i62 = iC50;
                int i63 = iC73;
                int i64 = iC78;
                arrayList2.add(new DownloadBean(strQ0, strQ1, strQ2, strQ3, lValueOf, strQ4, strQ5, strQ6, lValueOf2, lValueOf3, j10, i12, i14, i16, j11, j12, i22, i26, i30, i34, i38, i40, i42, i44, i46, i48, i50, strQ7, strQ8, strQ9, strQ10, j13, i53, i55, strQ11, strQ12, j14, strQ13, strQ14, j15, i58, j16, eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43), (int) eVarF0.getLong(iC44), eVarF0.isNull(i60) ? null : eVarF0.q0(i60), eVarF0.isNull(iC46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(i62) ? null : eVarF0.q0(i62), eVarF0.isNull(iC51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(iC52) ? null : eVarF0.q0(iC52), eVarF0.isNull(iC53) ? null : eVarF0.q0(iC53), eVarF0.isNull(iC54) ? null : eVarF0.q0(iC54), eVarF0.isNull(iC55) ? null : eVarF0.q0(iC55), eVarF0.isNull(iC56) ? null : eVarF0.q0(iC56), eVarF0.isNull(iC57) ? null : eVarF0.q0(iC57), eVarF0.isNull(iC58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(iC59) ? null : eVarF0.q0(iC59), eVarF0.isNull(iC60) ? null : eVarF0.q0(iC60), eVarF0.isNull(iC61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(iC62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(iC63) ? null : eVarF0.q0(iC63), eVarF0.isNull(iC64) ? null : eVarF0.q0(iC64), eVarF0.isNull(iC65) ? null : eVarF0.q0(iC65), eVarF0.isNull(iC66) ? null : eVarF0.q0(iC66), eVarF0.isNull(iC67) ? null : eVarF0.q0(iC67), eVarF0.isNull(iC68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(iC69) ? null : eVarF0.q0(iC69), eVarF0.isNull(iC70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(iC71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(iC72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(iC73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(iC74) ? null : eVarF0.q0(iC74), eVarF0.isNull(iC75) ? null : eVarF0.q0(iC75), eVarF0.isNull(iC76) ? null : eVarF0.q0(iC76), eVarF0.isNull(iC77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(iC79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80)));
                iC = i18;
                iC79 = iC79;
                iC80 = iC80;
                iC7 = i25;
                iC9 = i29;
                iC11 = i33;
                iC13 = i37;
                iC21 = i36;
                iC23 = i41;
                iC24 = i43;
                iC26 = i47;
                iC27 = i49;
                iC33 = i52;
                iC34 = i54;
                iC41 = i57;
                iC44 = iC44;
                iC48 = i61;
                iC49 = iC49;
                iC47 = iC47;
                iC52 = iC52;
                iC53 = iC53;
                iC58 = iC58;
                iC59 = iC59;
                iC60 = iC60;
                iC51 = iC51;
                iC70 = iC70;
                iC71 = iC71;
                iC68 = iC68;
                iC72 = iC72;
                iC3 = i11;
                iC4 = i13;
                iC5 = i15;
                iC15 = i17;
                iC12 = i31;
                iC22 = i39;
                iC25 = i45;
                iC35 = i56;
                iC42 = i59;
                iC45 = i60;
                iC18 = i24;
                iC19 = i28;
                iC20 = i32;
                iC74 = iC74;
                iC75 = iC75;
                iC6 = i21;
                iC17 = i20;
                iC8 = i23;
                iC10 = i27;
                iC14 = i35;
                iC28 = i51;
                arrayList = arrayList2;
                iC2 = i10;
                iC78 = i64;
                iC50 = i62;
                iC69 = iC69;
                iC73 = i63;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static DownloadBean G0(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE status = 5 AND fileType == 1 Limit 1 ");
        try {
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarF0.C0()) {
                downloadBean = new DownloadBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5)), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), eVarF0.getLong(iC11), (int) eVarF0.getLong(iC12), (int) eVarF0.getLong(iC13), (int) eVarF0.getLong(iC14), eVarF0.getLong(iC15), eVarF0.getLong(iC16), (int) eVarF0.getLong(iC17), (int) eVarF0.getLong(iC18), (int) eVarF0.getLong(iC19), (int) eVarF0.getLong(iC20), (int) eVarF0.getLong(iC21), (int) eVarF0.getLong(iC22), (int) eVarF0.getLong(iC23), (int) eVarF0.getLong(iC24), (int) eVarF0.getLong(iC25), (int) eVarF0.getLong(iC26), (int) eVarF0.getLong(iC27), eVarF0.isNull(iC28) ? null : eVarF0.q0(iC28), eVarF0.isNull(r29) ? null : eVarF0.q0(iC29), eVarF0.isNull(r30) ? null : eVarF0.q0(iC30), eVarF0.isNull(r31) ? null : eVarF0.q0(iC31), eVarF0.getLong(iC32), (int) eVarF0.getLong(iC33), (int) eVarF0.getLong(iC34), eVarF0.isNull(iC35) ? null : eVarF0.q0(iC35), eVarF0.isNull(r36) ? null : eVarF0.q0(iC36), eVarF0.getLong(iC37), eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38), eVarF0.isNull(r39) ? null : eVarF0.q0(iC39), eVarF0.getLong(iC40), (int) eVarF0.getLong(iC41), eVarF0.getLong(iC42), eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43), (int) eVarF0.getLong(iC44), eVarF0.isNull(iC45) ? null : eVarF0.q0(iC45), eVarF0.isNull(r46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(iC50) ? null : eVarF0.q0(iC50), eVarF0.isNull(r51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(r52) ? null : eVarF0.q0(iC52), eVarF0.isNull(r53) ? null : eVarF0.q0(iC53), eVarF0.isNull(r54) ? null : eVarF0.q0(iC54), eVarF0.isNull(r55) ? null : eVarF0.q0(iC55), eVarF0.isNull(r56) ? null : eVarF0.q0(iC56), eVarF0.isNull(r57) ? null : eVarF0.q0(iC57), eVarF0.isNull(r58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(r59) ? null : eVarF0.q0(iC59), eVarF0.isNull(r60) ? null : eVarF0.q0(iC60), eVarF0.isNull(r61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(r62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(r63) ? null : eVarF0.q0(iC63), eVarF0.isNull(r64) ? null : eVarF0.q0(iC64), eVarF0.isNull(r65) ? null : eVarF0.q0(iC65), eVarF0.isNull(r66) ? null : eVarF0.q0(iC66), eVarF0.isNull(r67) ? null : eVarF0.q0(iC67), eVarF0.isNull(r68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(r69) ? null : eVarF0.q0(iC69), eVarF0.isNull(r70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(r71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(r72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(r73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(r74) ? null : eVarF0.q0(iC74), eVarF0.isNull(r75) ? null : eVarF0.q0(iC75), eVarF0.isNull(r76) ? null : eVarF0.q0(iC76), eVarF0.isNull(r77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(r79) ? null : eVarF0.q0(iC79), eVarF0.isNull(r170) ? null : eVarF0.q0(iC80));
            }
            return downloadBean;
        } finally {
            eVarF0.close();
        }
    }

    public static DownloadBean H0(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE type = 2 AND fileType = 2 AND path = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarF0.C0()) {
                downloadBean = new DownloadBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5)), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), eVarF0.getLong(iC11), (int) eVarF0.getLong(iC12), (int) eVarF0.getLong(iC13), (int) eVarF0.getLong(iC14), eVarF0.getLong(iC15), eVarF0.getLong(iC16), (int) eVarF0.getLong(iC17), (int) eVarF0.getLong(iC18), (int) eVarF0.getLong(iC19), (int) eVarF0.getLong(iC20), (int) eVarF0.getLong(iC21), (int) eVarF0.getLong(iC22), (int) eVarF0.getLong(iC23), (int) eVarF0.getLong(iC24), (int) eVarF0.getLong(iC25), (int) eVarF0.getLong(iC26), (int) eVarF0.getLong(iC27), eVarF0.isNull(iC28) ? null : eVarF0.q0(iC28), eVarF0.isNull(r29) ? null : eVarF0.q0(iC29), eVarF0.isNull(r30) ? null : eVarF0.q0(iC30), eVarF0.isNull(r31) ? null : eVarF0.q0(iC31), eVarF0.getLong(iC32), (int) eVarF0.getLong(iC33), (int) eVarF0.getLong(iC34), eVarF0.isNull(iC35) ? null : eVarF0.q0(iC35), eVarF0.isNull(r36) ? null : eVarF0.q0(iC36), eVarF0.getLong(iC37), eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38), eVarF0.isNull(r39) ? null : eVarF0.q0(iC39), eVarF0.getLong(iC40), (int) eVarF0.getLong(iC41), eVarF0.getLong(iC42), eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43), (int) eVarF0.getLong(iC44), eVarF0.isNull(iC45) ? null : eVarF0.q0(iC45), eVarF0.isNull(r46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(iC50) ? null : eVarF0.q0(iC50), eVarF0.isNull(r51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(r52) ? null : eVarF0.q0(iC52), eVarF0.isNull(r53) ? null : eVarF0.q0(iC53), eVarF0.isNull(r54) ? null : eVarF0.q0(iC54), eVarF0.isNull(r55) ? null : eVarF0.q0(iC55), eVarF0.isNull(r56) ? null : eVarF0.q0(iC56), eVarF0.isNull(r57) ? null : eVarF0.q0(iC57), eVarF0.isNull(r58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(r59) ? null : eVarF0.q0(iC59), eVarF0.isNull(r60) ? null : eVarF0.q0(iC60), eVarF0.isNull(r61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(r62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(r63) ? null : eVarF0.q0(iC63), eVarF0.isNull(r64) ? null : eVarF0.q0(iC64), eVarF0.isNull(r65) ? null : eVarF0.q0(iC65), eVarF0.isNull(r66) ? null : eVarF0.q0(iC66), eVarF0.isNull(r67) ? null : eVarF0.q0(iC67), eVarF0.isNull(r68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(r69) ? null : eVarF0.q0(iC69), eVarF0.isNull(r70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(r71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(r72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(r73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(r74) ? null : eVarF0.q0(iC74), eVarF0.isNull(r75) ? null : eVarF0.q0(iC75), eVarF0.isNull(r76) ? null : eVarF0.q0(iC76), eVarF0.isNull(r77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(r79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80));
            }
            eVarF0.close();
            return downloadBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List I0(int i10, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE fileType == 1 ORDER BY updateTimeStamp DESC Limit ?");
        try {
            eVarF0.c(1, i10);
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                Long lValueOf = eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5));
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ5 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ6 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Long lValueOf2 = eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9));
                Long lValueOf3 = eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10));
                long j10 = eVarF0.getLong(iC11);
                int i11 = iC;
                int i12 = iC2;
                int i13 = (int) eVarF0.getLong(iC12);
                int i14 = iC3;
                int i15 = (int) eVarF0.getLong(iC13);
                int i16 = iC4;
                int i17 = (int) eVarF0.getLong(iC14);
                long j11 = eVarF0.getLong(iC15);
                int i18 = iC16;
                long j12 = eVarF0.getLong(i18);
                iC16 = i18;
                int i19 = iC6;
                int i20 = iC17;
                int i21 = iC5;
                int i22 = (int) eVarF0.getLong(i20);
                int i23 = iC8;
                int i24 = iC18;
                int i25 = iC7;
                int i26 = (int) eVarF0.getLong(i24);
                int i27 = iC10;
                int i28 = iC19;
                int i29 = iC9;
                int i30 = (int) eVarF0.getLong(i28);
                int i31 = iC12;
                int i32 = iC20;
                int i33 = iC11;
                int i34 = (int) eVarF0.getLong(i32);
                int i35 = iC14;
                int i36 = iC21;
                int i37 = iC13;
                int i38 = (int) eVarF0.getLong(i36);
                int i39 = iC22;
                int i40 = (int) eVarF0.getLong(i39);
                int i41 = iC23;
                int i42 = (int) eVarF0.getLong(i41);
                int i43 = iC24;
                int i44 = (int) eVarF0.getLong(i43);
                int i45 = iC25;
                int i46 = (int) eVarF0.getLong(i45);
                int i47 = iC26;
                int i48 = (int) eVarF0.getLong(i47);
                int i49 = iC27;
                int i50 = (int) eVarF0.getLong(i49);
                int i51 = iC28;
                String strQ7 = eVarF0.isNull(i51) ? null : eVarF0.q0(i51);
                String strQ8 = eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29);
                String strQ9 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ10 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                long j13 = eVarF0.getLong(iC32);
                iC32 = iC32;
                int i52 = iC33;
                int i53 = (int) eVarF0.getLong(i52);
                int i54 = iC34;
                int i55 = (int) eVarF0.getLong(i54);
                int i56 = iC35;
                String strQ11 = eVarF0.isNull(i56) ? null : eVarF0.q0(i56);
                String strQ12 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                long j14 = eVarF0.getLong(iC37);
                iC37 = iC37;
                iC38 = iC38;
                String strQ13 = eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38);
                String strQ14 = eVarF0.isNull(iC39) ? null : eVarF0.q0(iC39);
                long j15 = eVarF0.getLong(iC40);
                iC40 = iC40;
                int i57 = iC41;
                int i58 = (int) eVarF0.getLong(i57);
                int i59 = iC42;
                long j16 = eVarF0.getLong(i59);
                iC43 = iC43;
                String strQ15 = eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43);
                int i60 = (int) eVarF0.getLong(iC44);
                int i61 = iC45;
                String strQ16 = eVarF0.isNull(i61) ? null : eVarF0.q0(i61);
                int i62 = iC48;
                int i63 = iC50;
                int i64 = iC75;
                int i65 = iC78;
                arrayList.add(new DownloadBean(strQ0, strQ1, strQ2, strQ3, lValueOf, strQ4, strQ5, strQ6, lValueOf2, lValueOf3, j10, i13, i15, i17, j11, j12, i22, i26, i30, i34, i38, i40, i42, i44, i46, i48, i50, strQ7, strQ8, strQ9, strQ10, j13, i53, i55, strQ11, strQ12, j14, strQ13, strQ14, j15, i58, j16, strQ15, i60, strQ16, eVarF0.isNull(iC46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(i63) ? null : eVarF0.q0(i63), eVarF0.isNull(iC51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(iC52) ? null : eVarF0.q0(iC52), eVarF0.isNull(iC53) ? null : eVarF0.q0(iC53), eVarF0.isNull(iC54) ? null : eVarF0.q0(iC54), eVarF0.isNull(iC55) ? null : eVarF0.q0(iC55), eVarF0.isNull(iC56) ? null : eVarF0.q0(iC56), eVarF0.isNull(iC57) ? null : eVarF0.q0(iC57), eVarF0.isNull(iC58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(iC59) ? null : eVarF0.q0(iC59), eVarF0.isNull(iC60) ? null : eVarF0.q0(iC60), eVarF0.isNull(iC61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(iC62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(iC63) ? null : eVarF0.q0(iC63), eVarF0.isNull(iC64) ? null : eVarF0.q0(iC64), eVarF0.isNull(iC65) ? null : eVarF0.q0(iC65), eVarF0.isNull(iC66) ? null : eVarF0.q0(iC66), eVarF0.isNull(iC67) ? null : eVarF0.q0(iC67), eVarF0.isNull(iC68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(iC69) ? null : eVarF0.q0(iC69), eVarF0.isNull(iC70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(iC71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(iC72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(iC73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(iC74) ? null : eVarF0.q0(iC74), eVarF0.isNull(iC75) ? null : eVarF0.q0(iC75), eVarF0.isNull(iC76) ? null : eVarF0.q0(iC76), eVarF0.isNull(iC77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(iC79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80)));
                iC79 = iC79;
                iC80 = iC80;
                iC5 = i21;
                iC7 = i25;
                iC9 = i29;
                iC11 = i33;
                iC20 = i32;
                iC17 = i20;
                iC33 = i52;
                iC41 = i57;
                iC44 = iC44;
                iC48 = i62;
                iC47 = iC47;
                iC49 = iC49;
                iC51 = iC51;
                iC58 = iC58;
                iC59 = iC59;
                iC60 = iC60;
                iC52 = iC52;
                iC53 = iC53;
                iC70 = iC70;
                iC69 = iC69;
                iC71 = iC71;
                iC68 = iC68;
                iC74 = iC74;
                iC75 = i64;
                iC = i11;
                iC2 = i12;
                iC3 = i14;
                iC4 = i16;
                iC10 = i27;
                iC12 = i31;
                iC23 = i41;
                iC25 = i45;
                iC26 = i47;
                iC28 = i51;
                iC27 = i49;
                iC35 = i56;
                iC42 = i59;
                iC45 = i61;
                iC34 = i54;
                iC18 = i24;
                iC19 = i28;
                iC73 = iC73;
                iC72 = iC72;
                iC13 = i37;
                iC21 = i36;
                iC22 = i39;
                iC78 = i65;
                iC6 = i19;
                iC8 = i23;
                iC14 = i35;
                iC24 = i43;
                iC50 = i63;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static List J0(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ?  ORDER BY episode ASC ");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                Long lValueOf = eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5));
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ5 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ6 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Long lValueOf2 = eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9));
                Long lValueOf3 = eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10));
                long j10 = eVarF0.getLong(iC11);
                int i10 = iC2;
                int i11 = iC3;
                int i12 = (int) eVarF0.getLong(iC12);
                int i13 = iC4;
                int i14 = (int) eVarF0.getLong(iC13);
                int i15 = iC5;
                int i16 = (int) eVarF0.getLong(iC14);
                int i17 = iC15;
                long j11 = eVarF0.getLong(i17);
                int i18 = iC;
                int i19 = iC16;
                long j12 = eVarF0.getLong(i19);
                iC16 = i19;
                int i20 = iC17;
                int i21 = iC6;
                int i22 = (int) eVarF0.getLong(i20);
                int i23 = iC8;
                int i24 = iC18;
                int i25 = iC7;
                int i26 = (int) eVarF0.getLong(i24);
                int i27 = iC10;
                int i28 = iC19;
                int i29 = iC9;
                int i30 = (int) eVarF0.getLong(i28);
                int i31 = iC12;
                int i32 = iC20;
                int i33 = iC11;
                int i34 = (int) eVarF0.getLong(i32);
                int i35 = iC14;
                int i36 = iC21;
                int i37 = iC13;
                int i38 = (int) eVarF0.getLong(i36);
                int i39 = iC22;
                int i40 = (int) eVarF0.getLong(i39);
                int i41 = iC23;
                int i42 = (int) eVarF0.getLong(i41);
                int i43 = iC24;
                int i44 = (int) eVarF0.getLong(i43);
                int i45 = iC25;
                int i46 = (int) eVarF0.getLong(i45);
                int i47 = iC26;
                int i48 = (int) eVarF0.getLong(i47);
                int i49 = iC27;
                int i50 = (int) eVarF0.getLong(i49);
                int i51 = iC28;
                String strQ7 = eVarF0.isNull(i51) ? null : eVarF0.q0(i51);
                String strQ8 = eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29);
                String strQ9 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ10 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                long j13 = eVarF0.getLong(iC32);
                iC32 = iC32;
                int i52 = iC33;
                int i53 = (int) eVarF0.getLong(i52);
                int i54 = iC34;
                int i55 = (int) eVarF0.getLong(i54);
                int i56 = iC35;
                String strQ11 = eVarF0.isNull(i56) ? null : eVarF0.q0(i56);
                String strQ12 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                long j14 = eVarF0.getLong(iC37);
                iC37 = iC37;
                iC38 = iC38;
                String strQ13 = eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38);
                String strQ14 = eVarF0.isNull(iC39) ? null : eVarF0.q0(iC39);
                long j15 = eVarF0.getLong(iC40);
                iC40 = iC40;
                int i57 = iC41;
                int i58 = (int) eVarF0.getLong(i57);
                int i59 = iC42;
                long j16 = eVarF0.getLong(i59);
                iC43 = iC43;
                String strQ15 = eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43);
                int i60 = (int) eVarF0.getLong(iC44);
                int i61 = iC45;
                String strQ16 = eVarF0.isNull(i61) ? null : eVarF0.q0(i61);
                int i62 = iC48;
                int i63 = iC50;
                int i64 = iC75;
                int i65 = iC78;
                arrayList.add(new DownloadBean(strQ0, strQ1, strQ2, strQ3, lValueOf, strQ4, strQ5, strQ6, lValueOf2, lValueOf3, j10, i12, i14, i16, j11, j12, i22, i26, i30, i34, i38, i40, i42, i44, i46, i48, i50, strQ7, strQ8, strQ9, strQ10, j13, i53, i55, strQ11, strQ12, j14, strQ13, strQ14, j15, i58, j16, strQ15, i60, strQ16, eVarF0.isNull(iC46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(i63) ? null : eVarF0.q0(i63), eVarF0.isNull(iC51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(iC52) ? null : eVarF0.q0(iC52), eVarF0.isNull(iC53) ? null : eVarF0.q0(iC53), eVarF0.isNull(iC54) ? null : eVarF0.q0(iC54), eVarF0.isNull(iC55) ? null : eVarF0.q0(iC55), eVarF0.isNull(iC56) ? null : eVarF0.q0(iC56), eVarF0.isNull(iC57) ? null : eVarF0.q0(iC57), eVarF0.isNull(iC58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(iC59) ? null : eVarF0.q0(iC59), eVarF0.isNull(iC60) ? null : eVarF0.q0(iC60), eVarF0.isNull(iC61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(iC62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(iC63) ? null : eVarF0.q0(iC63), eVarF0.isNull(iC64) ? null : eVarF0.q0(iC64), eVarF0.isNull(iC65) ? null : eVarF0.q0(iC65), eVarF0.isNull(iC66) ? null : eVarF0.q0(iC66), eVarF0.isNull(iC67) ? null : eVarF0.q0(iC67), eVarF0.isNull(iC68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(iC69) ? null : eVarF0.q0(iC69), eVarF0.isNull(iC70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(iC71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(iC72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(iC73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(iC74) ? null : eVarF0.q0(iC74), eVarF0.isNull(iC75) ? null : eVarF0.q0(iC75), eVarF0.isNull(iC76) ? null : eVarF0.q0(iC76), eVarF0.isNull(iC77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(iC79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80)));
                iC = i18;
                iC79 = iC79;
                iC80 = iC80;
                iC7 = i25;
                iC9 = i29;
                iC11 = i33;
                iC20 = i32;
                iC33 = i52;
                iC41 = i57;
                iC44 = iC44;
                iC48 = i62;
                iC47 = iC47;
                iC49 = iC49;
                iC51 = iC51;
                iC58 = iC58;
                iC59 = iC59;
                iC60 = iC60;
                iC52 = iC52;
                iC53 = iC53;
                iC70 = iC70;
                iC69 = iC69;
                iC71 = iC71;
                iC68 = iC68;
                iC74 = iC74;
                iC75 = i64;
                iC2 = i10;
                iC3 = i11;
                iC4 = i13;
                iC5 = i15;
                iC15 = i17;
                iC10 = i27;
                iC12 = i31;
                iC23 = i41;
                iC25 = i45;
                iC26 = i47;
                iC27 = i49;
                iC35 = i56;
                iC42 = i59;
                iC45 = i61;
                iC34 = i54;
                iC18 = i24;
                iC19 = i28;
                iC73 = iC73;
                iC72 = iC72;
                iC6 = i21;
                iC13 = i37;
                iC21 = i36;
                iC22 = i39;
                iC17 = i20;
                iC78 = i65;
                iC8 = i23;
                iC14 = i35;
                iC24 = i43;
                iC28 = i51;
                iC50 = i63;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List K0(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? AND status = 5  ORDER BY episode ASC ");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                Long lValueOf = eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5));
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ5 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ6 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Long lValueOf2 = eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9));
                Long lValueOf3 = eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10));
                long j10 = eVarF0.getLong(iC11);
                int i10 = iC2;
                int i11 = iC3;
                int i12 = (int) eVarF0.getLong(iC12);
                int i13 = iC4;
                int i14 = (int) eVarF0.getLong(iC13);
                int i15 = iC5;
                int i16 = (int) eVarF0.getLong(iC14);
                int i17 = iC15;
                long j11 = eVarF0.getLong(i17);
                int i18 = iC;
                int i19 = iC16;
                long j12 = eVarF0.getLong(i19);
                iC16 = i19;
                int i20 = iC17;
                int i21 = iC6;
                int i22 = (int) eVarF0.getLong(i20);
                int i23 = iC8;
                int i24 = iC18;
                int i25 = iC7;
                int i26 = (int) eVarF0.getLong(i24);
                int i27 = iC10;
                int i28 = iC19;
                int i29 = iC9;
                int i30 = (int) eVarF0.getLong(i28);
                int i31 = iC12;
                int i32 = iC20;
                int i33 = iC11;
                int i34 = (int) eVarF0.getLong(i32);
                int i35 = iC14;
                int i36 = iC21;
                int i37 = iC13;
                int i38 = (int) eVarF0.getLong(i36);
                int i39 = iC22;
                int i40 = (int) eVarF0.getLong(i39);
                int i41 = iC23;
                int i42 = (int) eVarF0.getLong(i41);
                int i43 = iC24;
                int i44 = (int) eVarF0.getLong(i43);
                int i45 = iC25;
                int i46 = (int) eVarF0.getLong(i45);
                int i47 = iC26;
                int i48 = (int) eVarF0.getLong(i47);
                int i49 = iC27;
                int i50 = (int) eVarF0.getLong(i49);
                int i51 = iC28;
                String strQ7 = eVarF0.isNull(i51) ? null : eVarF0.q0(i51);
                String strQ8 = eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29);
                String strQ9 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ10 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                long j13 = eVarF0.getLong(iC32);
                iC32 = iC32;
                int i52 = iC33;
                int i53 = (int) eVarF0.getLong(i52);
                int i54 = iC34;
                int i55 = (int) eVarF0.getLong(i54);
                int i56 = iC35;
                String strQ11 = eVarF0.isNull(i56) ? null : eVarF0.q0(i56);
                String strQ12 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                long j14 = eVarF0.getLong(iC37);
                iC37 = iC37;
                iC38 = iC38;
                String strQ13 = eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38);
                String strQ14 = eVarF0.isNull(iC39) ? null : eVarF0.q0(iC39);
                long j15 = eVarF0.getLong(iC40);
                iC40 = iC40;
                int i57 = iC41;
                int i58 = (int) eVarF0.getLong(i57);
                int i59 = iC42;
                long j16 = eVarF0.getLong(i59);
                iC43 = iC43;
                String strQ15 = eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43);
                int i60 = (int) eVarF0.getLong(iC44);
                int i61 = iC45;
                String strQ16 = eVarF0.isNull(i61) ? null : eVarF0.q0(i61);
                int i62 = iC48;
                int i63 = iC50;
                int i64 = iC75;
                int i65 = iC78;
                arrayList.add(new DownloadBean(strQ0, strQ1, strQ2, strQ3, lValueOf, strQ4, strQ5, strQ6, lValueOf2, lValueOf3, j10, i12, i14, i16, j11, j12, i22, i26, i30, i34, i38, i40, i42, i44, i46, i48, i50, strQ7, strQ8, strQ9, strQ10, j13, i53, i55, strQ11, strQ12, j14, strQ13, strQ14, j15, i58, j16, strQ15, i60, strQ16, eVarF0.isNull(iC46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(i63) ? null : eVarF0.q0(i63), eVarF0.isNull(iC51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(iC52) ? null : eVarF0.q0(iC52), eVarF0.isNull(iC53) ? null : eVarF0.q0(iC53), eVarF0.isNull(iC54) ? null : eVarF0.q0(iC54), eVarF0.isNull(iC55) ? null : eVarF0.q0(iC55), eVarF0.isNull(iC56) ? null : eVarF0.q0(iC56), eVarF0.isNull(iC57) ? null : eVarF0.q0(iC57), eVarF0.isNull(iC58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(iC59) ? null : eVarF0.q0(iC59), eVarF0.isNull(iC60) ? null : eVarF0.q0(iC60), eVarF0.isNull(iC61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(iC62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(iC63) ? null : eVarF0.q0(iC63), eVarF0.isNull(iC64) ? null : eVarF0.q0(iC64), eVarF0.isNull(iC65) ? null : eVarF0.q0(iC65), eVarF0.isNull(iC66) ? null : eVarF0.q0(iC66), eVarF0.isNull(iC67) ? null : eVarF0.q0(iC67), eVarF0.isNull(iC68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(iC69) ? null : eVarF0.q0(iC69), eVarF0.isNull(iC70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(iC71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(iC72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(iC73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(iC74) ? null : eVarF0.q0(iC74), eVarF0.isNull(iC75) ? null : eVarF0.q0(iC75), eVarF0.isNull(iC76) ? null : eVarF0.q0(iC76), eVarF0.isNull(iC77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(iC79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80)));
                iC = i18;
                iC79 = iC79;
                iC80 = iC80;
                iC7 = i25;
                iC9 = i29;
                iC11 = i33;
                iC20 = i32;
                iC33 = i52;
                iC41 = i57;
                iC44 = iC44;
                iC48 = i62;
                iC47 = iC47;
                iC49 = iC49;
                iC51 = iC51;
                iC58 = iC58;
                iC59 = iC59;
                iC60 = iC60;
                iC52 = iC52;
                iC53 = iC53;
                iC70 = iC70;
                iC69 = iC69;
                iC71 = iC71;
                iC68 = iC68;
                iC74 = iC74;
                iC75 = i64;
                iC2 = i10;
                iC3 = i11;
                iC4 = i13;
                iC5 = i15;
                iC15 = i17;
                iC10 = i27;
                iC12 = i31;
                iC23 = i41;
                iC25 = i45;
                iC26 = i47;
                iC27 = i49;
                iC35 = i56;
                iC42 = i59;
                iC45 = i61;
                iC34 = i54;
                iC18 = i24;
                iC19 = i28;
                iC73 = iC73;
                iC72 = iC72;
                iC6 = i21;
                iC13 = i37;
                iC21 = i36;
                iC22 = i39;
                iC17 = i20;
                iC78 = i65;
                iC8 = i23;
                iC14 = i35;
                iC24 = i43;
                iC28 = i51;
                iC50 = i63;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static DownloadBean L0(String str, int i10, int i11, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ?  AND se =? AND ep =? ORDER BY resolution DESC LIMIT 1");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            eVarF0.c(2, i10);
            eVarF0.c(3, i11);
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarF0.C0()) {
                downloadBean = new DownloadBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5)), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), eVarF0.getLong(iC11), (int) eVarF0.getLong(iC12), (int) eVarF0.getLong(iC13), (int) eVarF0.getLong(iC14), eVarF0.getLong(iC15), eVarF0.getLong(iC16), (int) eVarF0.getLong(iC17), (int) eVarF0.getLong(iC18), (int) eVarF0.getLong(iC19), (int) eVarF0.getLong(iC20), (int) eVarF0.getLong(iC21), (int) eVarF0.getLong(iC22), (int) eVarF0.getLong(iC23), (int) eVarF0.getLong(iC24), (int) eVarF0.getLong(iC25), (int) eVarF0.getLong(iC26), (int) eVarF0.getLong(iC27), eVarF0.isNull(iC28) ? null : eVarF0.q0(iC28), eVarF0.isNull(r27) ? null : eVarF0.q0(iC29), eVarF0.isNull(r28) ? null : eVarF0.q0(iC30), eVarF0.isNull(r29) ? null : eVarF0.q0(iC31), eVarF0.getLong(iC32), (int) eVarF0.getLong(iC33), (int) eVarF0.getLong(iC34), eVarF0.isNull(iC35) ? null : eVarF0.q0(iC35), eVarF0.isNull(r34) ? null : eVarF0.q0(iC36), eVarF0.getLong(iC37), eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38), eVarF0.isNull(r37) ? null : eVarF0.q0(iC39), eVarF0.getLong(iC40), (int) eVarF0.getLong(iC41), eVarF0.getLong(iC42), eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43), (int) eVarF0.getLong(iC44), eVarF0.isNull(iC45) ? null : eVarF0.q0(iC45), eVarF0.isNull(r44) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(iC50) ? null : eVarF0.q0(iC50), eVarF0.isNull(r49) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(r50) ? null : eVarF0.q0(iC52), eVarF0.isNull(r51) ? null : eVarF0.q0(iC53), eVarF0.isNull(r52) ? null : eVarF0.q0(iC54), eVarF0.isNull(r53) ? null : eVarF0.q0(iC55), eVarF0.isNull(r54) ? null : eVarF0.q0(iC56), eVarF0.isNull(r55) ? null : eVarF0.q0(iC57), eVarF0.isNull(r56) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(r57) ? null : eVarF0.q0(iC59), eVarF0.isNull(r58) ? null : eVarF0.q0(iC60), eVarF0.isNull(r59) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(r60) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(r61) ? null : eVarF0.q0(iC63), eVarF0.isNull(r62) ? null : eVarF0.q0(iC64), eVarF0.isNull(r63) ? null : eVarF0.q0(iC65), eVarF0.isNull(r64) ? null : eVarF0.q0(iC66), eVarF0.isNull(r65) ? null : eVarF0.q0(iC67), eVarF0.isNull(r66) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(r67) ? null : eVarF0.q0(iC69), eVarF0.isNull(r68) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(r69) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(r70) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(r71) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(r72) ? null : eVarF0.q0(iC74), eVarF0.isNull(r73) ? null : eVarF0.q0(iC75), eVarF0.isNull(r74) ? null : eVarF0.q0(iC76), eVarF0.isNull(r75) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(r77) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80));
            }
            eVarF0.close();
            return downloadBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List M0(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE fileType == 1");
        try {
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                Long lValueOf = eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5));
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ5 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ6 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Long lValueOf2 = eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9));
                Long lValueOf3 = eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10));
                long j10 = eVarF0.getLong(iC11);
                int i10 = iC2;
                int i11 = iC3;
                int i12 = (int) eVarF0.getLong(iC12);
                int i13 = iC4;
                int i14 = (int) eVarF0.getLong(iC13);
                int i15 = iC5;
                int i16 = (int) eVarF0.getLong(iC14);
                int i17 = iC15;
                long j11 = eVarF0.getLong(i17);
                int i18 = iC;
                int i19 = iC16;
                long j12 = eVarF0.getLong(i19);
                iC16 = i19;
                int i20 = iC17;
                int i21 = iC6;
                int i22 = (int) eVarF0.getLong(i20);
                int i23 = iC8;
                int i24 = iC18;
                int i25 = iC7;
                int i26 = (int) eVarF0.getLong(i24);
                int i27 = iC10;
                int i28 = iC19;
                int i29 = iC9;
                int i30 = (int) eVarF0.getLong(i28);
                int i31 = iC12;
                int i32 = iC20;
                int i33 = iC11;
                int i34 = (int) eVarF0.getLong(i32);
                int i35 = iC14;
                int i36 = iC21;
                int i37 = iC13;
                int i38 = (int) eVarF0.getLong(i36);
                int i39 = iC22;
                int i40 = (int) eVarF0.getLong(i39);
                int i41 = iC23;
                ArrayList arrayList2 = arrayList;
                int i42 = (int) eVarF0.getLong(i41);
                int i43 = iC24;
                int i44 = (int) eVarF0.getLong(i43);
                int i45 = iC25;
                int i46 = (int) eVarF0.getLong(i45);
                int i47 = iC26;
                int i48 = (int) eVarF0.getLong(i47);
                int i49 = iC27;
                int i50 = (int) eVarF0.getLong(i49);
                int i51 = iC28;
                String strQ7 = eVarF0.isNull(i51) ? null : eVarF0.q0(i51);
                String strQ8 = eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29);
                String strQ9 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ10 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                long j13 = eVarF0.getLong(iC32);
                iC32 = iC32;
                int i52 = iC33;
                int i53 = (int) eVarF0.getLong(i52);
                int i54 = iC34;
                int i55 = (int) eVarF0.getLong(i54);
                int i56 = iC35;
                String strQ11 = eVarF0.isNull(i56) ? null : eVarF0.q0(i56);
                String strQ12 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                long j14 = eVarF0.getLong(iC37);
                iC37 = iC37;
                iC38 = iC38;
                String strQ13 = eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38);
                String strQ14 = eVarF0.isNull(iC39) ? null : eVarF0.q0(iC39);
                long j15 = eVarF0.getLong(iC40);
                iC40 = iC40;
                int i57 = iC41;
                int i58 = (int) eVarF0.getLong(i57);
                int i59 = iC42;
                long j16 = eVarF0.getLong(i59);
                iC43 = iC43;
                int i60 = iC45;
                int i61 = iC48;
                int i62 = iC50;
                int i63 = iC73;
                int i64 = iC78;
                arrayList2.add(new DownloadBean(strQ0, strQ1, strQ2, strQ3, lValueOf, strQ4, strQ5, strQ6, lValueOf2, lValueOf3, j10, i12, i14, i16, j11, j12, i22, i26, i30, i34, i38, i40, i42, i44, i46, i48, i50, strQ7, strQ8, strQ9, strQ10, j13, i53, i55, strQ11, strQ12, j14, strQ13, strQ14, j15, i58, j16, eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43), (int) eVarF0.getLong(iC44), eVarF0.isNull(i60) ? null : eVarF0.q0(i60), eVarF0.isNull(iC46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(i62) ? null : eVarF0.q0(i62), eVarF0.isNull(iC51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(iC52) ? null : eVarF0.q0(iC52), eVarF0.isNull(iC53) ? null : eVarF0.q0(iC53), eVarF0.isNull(iC54) ? null : eVarF0.q0(iC54), eVarF0.isNull(iC55) ? null : eVarF0.q0(iC55), eVarF0.isNull(iC56) ? null : eVarF0.q0(iC56), eVarF0.isNull(iC57) ? null : eVarF0.q0(iC57), eVarF0.isNull(iC58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(iC59) ? null : eVarF0.q0(iC59), eVarF0.isNull(iC60) ? null : eVarF0.q0(iC60), eVarF0.isNull(iC61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(iC62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(iC63) ? null : eVarF0.q0(iC63), eVarF0.isNull(iC64) ? null : eVarF0.q0(iC64), eVarF0.isNull(iC65) ? null : eVarF0.q0(iC65), eVarF0.isNull(iC66) ? null : eVarF0.q0(iC66), eVarF0.isNull(iC67) ? null : eVarF0.q0(iC67), eVarF0.isNull(iC68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(iC69) ? null : eVarF0.q0(iC69), eVarF0.isNull(iC70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(iC71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(iC72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(iC73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(iC74) ? null : eVarF0.q0(iC74), eVarF0.isNull(iC75) ? null : eVarF0.q0(iC75), eVarF0.isNull(iC76) ? null : eVarF0.q0(iC76), eVarF0.isNull(iC77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(iC79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80)));
                iC = i18;
                iC79 = iC79;
                iC80 = iC80;
                iC7 = i25;
                iC9 = i29;
                iC11 = i33;
                iC13 = i37;
                iC21 = i36;
                iC23 = i41;
                iC24 = i43;
                iC26 = i47;
                iC27 = i49;
                iC33 = i52;
                iC34 = i54;
                iC41 = i57;
                iC44 = iC44;
                iC48 = i61;
                iC49 = iC49;
                iC47 = iC47;
                iC52 = iC52;
                iC53 = iC53;
                iC58 = iC58;
                iC59 = iC59;
                iC60 = iC60;
                iC51 = iC51;
                iC70 = iC70;
                iC71 = iC71;
                iC68 = iC68;
                iC72 = iC72;
                iC3 = i11;
                iC4 = i13;
                iC5 = i15;
                iC15 = i17;
                iC12 = i31;
                iC22 = i39;
                iC25 = i45;
                iC35 = i56;
                iC42 = i59;
                iC45 = i60;
                iC18 = i24;
                iC19 = i28;
                iC20 = i32;
                iC74 = iC74;
                iC75 = iC75;
                iC6 = i21;
                iC17 = i20;
                iC8 = i23;
                iC10 = i27;
                iC14 = i35;
                iC28 = i51;
                arrayList = arrayList2;
                iC2 = i10;
                iC78 = i64;
                iC50 = i62;
                iC69 = iC69;
                iC73 = i63;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static List N0(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE fileType = 3 ORDER BY updateTimeStamp DESC ");
        try {
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                Long lValueOf = eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5));
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ5 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ6 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Long lValueOf2 = eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9));
                Long lValueOf3 = eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10));
                long j10 = eVarF0.getLong(iC11);
                int i10 = iC2;
                int i11 = iC3;
                int i12 = (int) eVarF0.getLong(iC12);
                int i13 = iC4;
                int i14 = (int) eVarF0.getLong(iC13);
                int i15 = iC5;
                int i16 = (int) eVarF0.getLong(iC14);
                int i17 = iC15;
                long j11 = eVarF0.getLong(i17);
                int i18 = iC;
                int i19 = iC16;
                long j12 = eVarF0.getLong(i19);
                iC16 = i19;
                int i20 = iC17;
                int i21 = iC6;
                int i22 = (int) eVarF0.getLong(i20);
                int i23 = iC8;
                int i24 = iC18;
                int i25 = iC7;
                int i26 = (int) eVarF0.getLong(i24);
                int i27 = iC10;
                int i28 = iC19;
                int i29 = iC9;
                int i30 = (int) eVarF0.getLong(i28);
                int i31 = iC12;
                int i32 = iC20;
                int i33 = iC11;
                int i34 = (int) eVarF0.getLong(i32);
                int i35 = iC14;
                int i36 = iC21;
                int i37 = iC13;
                int i38 = (int) eVarF0.getLong(i36);
                int i39 = iC22;
                int i40 = (int) eVarF0.getLong(i39);
                int i41 = iC23;
                ArrayList arrayList2 = arrayList;
                int i42 = (int) eVarF0.getLong(i41);
                int i43 = iC24;
                int i44 = (int) eVarF0.getLong(i43);
                int i45 = iC25;
                int i46 = (int) eVarF0.getLong(i45);
                int i47 = iC26;
                int i48 = (int) eVarF0.getLong(i47);
                int i49 = iC27;
                int i50 = (int) eVarF0.getLong(i49);
                int i51 = iC28;
                String strQ7 = eVarF0.isNull(i51) ? null : eVarF0.q0(i51);
                String strQ8 = eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29);
                String strQ9 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ10 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                long j13 = eVarF0.getLong(iC32);
                iC32 = iC32;
                int i52 = iC33;
                int i53 = (int) eVarF0.getLong(i52);
                int i54 = iC34;
                int i55 = (int) eVarF0.getLong(i54);
                int i56 = iC35;
                String strQ11 = eVarF0.isNull(i56) ? null : eVarF0.q0(i56);
                String strQ12 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                long j14 = eVarF0.getLong(iC37);
                iC37 = iC37;
                iC38 = iC38;
                String strQ13 = eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38);
                String strQ14 = eVarF0.isNull(iC39) ? null : eVarF0.q0(iC39);
                long j15 = eVarF0.getLong(iC40);
                iC40 = iC40;
                int i57 = iC41;
                int i58 = (int) eVarF0.getLong(i57);
                int i59 = iC42;
                long j16 = eVarF0.getLong(i59);
                iC43 = iC43;
                int i60 = iC45;
                int i61 = iC48;
                int i62 = iC50;
                int i63 = iC73;
                int i64 = iC78;
                arrayList2.add(new DownloadBean(strQ0, strQ1, strQ2, strQ3, lValueOf, strQ4, strQ5, strQ6, lValueOf2, lValueOf3, j10, i12, i14, i16, j11, j12, i22, i26, i30, i34, i38, i40, i42, i44, i46, i48, i50, strQ7, strQ8, strQ9, strQ10, j13, i53, i55, strQ11, strQ12, j14, strQ13, strQ14, j15, i58, j16, eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43), (int) eVarF0.getLong(iC44), eVarF0.isNull(i60) ? null : eVarF0.q0(i60), eVarF0.isNull(iC46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(i62) ? null : eVarF0.q0(i62), eVarF0.isNull(iC51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(iC52) ? null : eVarF0.q0(iC52), eVarF0.isNull(iC53) ? null : eVarF0.q0(iC53), eVarF0.isNull(iC54) ? null : eVarF0.q0(iC54), eVarF0.isNull(iC55) ? null : eVarF0.q0(iC55), eVarF0.isNull(iC56) ? null : eVarF0.q0(iC56), eVarF0.isNull(iC57) ? null : eVarF0.q0(iC57), eVarF0.isNull(iC58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(iC59) ? null : eVarF0.q0(iC59), eVarF0.isNull(iC60) ? null : eVarF0.q0(iC60), eVarF0.isNull(iC61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(iC62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(iC63) ? null : eVarF0.q0(iC63), eVarF0.isNull(iC64) ? null : eVarF0.q0(iC64), eVarF0.isNull(iC65) ? null : eVarF0.q0(iC65), eVarF0.isNull(iC66) ? null : eVarF0.q0(iC66), eVarF0.isNull(iC67) ? null : eVarF0.q0(iC67), eVarF0.isNull(iC68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(iC69) ? null : eVarF0.q0(iC69), eVarF0.isNull(iC70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(iC71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(iC72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(iC73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(iC74) ? null : eVarF0.q0(iC74), eVarF0.isNull(iC75) ? null : eVarF0.q0(iC75), eVarF0.isNull(iC76) ? null : eVarF0.q0(iC76), eVarF0.isNull(iC77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(iC79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80)));
                iC = i18;
                iC79 = iC79;
                iC80 = iC80;
                iC7 = i25;
                iC9 = i29;
                iC11 = i33;
                iC13 = i37;
                iC21 = i36;
                iC23 = i41;
                iC24 = i43;
                iC26 = i47;
                iC27 = i49;
                iC33 = i52;
                iC34 = i54;
                iC41 = i57;
                iC44 = iC44;
                iC48 = i61;
                iC49 = iC49;
                iC47 = iC47;
                iC52 = iC52;
                iC53 = iC53;
                iC58 = iC58;
                iC59 = iC59;
                iC60 = iC60;
                iC51 = iC51;
                iC70 = iC70;
                iC71 = iC71;
                iC68 = iC68;
                iC72 = iC72;
                iC3 = i11;
                iC4 = i13;
                iC5 = i15;
                iC15 = i17;
                iC12 = i31;
                iC22 = i39;
                iC25 = i45;
                iC35 = i56;
                iC42 = i59;
                iC45 = i60;
                iC18 = i24;
                iC19 = i28;
                iC20 = i32;
                iC74 = iC74;
                iC75 = iC75;
                iC6 = i21;
                iC17 = i20;
                iC8 = i23;
                iC10 = i27;
                iC14 = i35;
                iC28 = i51;
                arrayList = arrayList2;
                iC2 = i10;
                iC78 = i64;
                iC50 = i62;
                iC69 = iC69;
                iC73 = i63;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static List O0(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE ugcVideoCollectionId = ? ORDER BY ugcVideoPosition ASC");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                Long lValueOf = eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5));
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ5 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ6 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Long lValueOf2 = eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9));
                Long lValueOf3 = eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10));
                long j10 = eVarF0.getLong(iC11);
                int i10 = iC2;
                int i11 = iC3;
                int i12 = (int) eVarF0.getLong(iC12);
                int i13 = iC4;
                int i14 = (int) eVarF0.getLong(iC13);
                int i15 = iC5;
                int i16 = (int) eVarF0.getLong(iC14);
                int i17 = iC15;
                long j11 = eVarF0.getLong(i17);
                int i18 = iC;
                int i19 = iC16;
                long j12 = eVarF0.getLong(i19);
                iC16 = i19;
                int i20 = iC17;
                int i21 = iC6;
                int i22 = (int) eVarF0.getLong(i20);
                int i23 = iC8;
                int i24 = iC18;
                int i25 = iC7;
                int i26 = (int) eVarF0.getLong(i24);
                int i27 = iC10;
                int i28 = iC19;
                int i29 = iC9;
                int i30 = (int) eVarF0.getLong(i28);
                int i31 = iC12;
                int i32 = iC20;
                int i33 = iC11;
                int i34 = (int) eVarF0.getLong(i32);
                int i35 = iC14;
                int i36 = iC21;
                int i37 = iC13;
                int i38 = (int) eVarF0.getLong(i36);
                int i39 = iC22;
                int i40 = (int) eVarF0.getLong(i39);
                int i41 = iC23;
                int i42 = (int) eVarF0.getLong(i41);
                int i43 = iC24;
                int i44 = (int) eVarF0.getLong(i43);
                int i45 = iC25;
                int i46 = (int) eVarF0.getLong(i45);
                int i47 = iC26;
                int i48 = (int) eVarF0.getLong(i47);
                int i49 = iC27;
                int i50 = (int) eVarF0.getLong(i49);
                int i51 = iC28;
                String strQ7 = eVarF0.isNull(i51) ? null : eVarF0.q0(i51);
                String strQ8 = eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29);
                String strQ9 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ10 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                long j13 = eVarF0.getLong(iC32);
                iC32 = iC32;
                int i52 = iC33;
                int i53 = (int) eVarF0.getLong(i52);
                int i54 = iC34;
                int i55 = (int) eVarF0.getLong(i54);
                int i56 = iC35;
                String strQ11 = eVarF0.isNull(i56) ? null : eVarF0.q0(i56);
                String strQ12 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                long j14 = eVarF0.getLong(iC37);
                iC37 = iC37;
                iC38 = iC38;
                String strQ13 = eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38);
                String strQ14 = eVarF0.isNull(iC39) ? null : eVarF0.q0(iC39);
                long j15 = eVarF0.getLong(iC40);
                iC40 = iC40;
                int i57 = iC41;
                int i58 = (int) eVarF0.getLong(i57);
                int i59 = iC42;
                long j16 = eVarF0.getLong(i59);
                iC43 = iC43;
                String strQ15 = eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43);
                int i60 = (int) eVarF0.getLong(iC44);
                int i61 = iC45;
                String strQ16 = eVarF0.isNull(i61) ? null : eVarF0.q0(i61);
                int i62 = iC48;
                int i63 = iC50;
                int i64 = iC75;
                int i65 = iC78;
                arrayList.add(new DownloadBean(strQ0, strQ1, strQ2, strQ3, lValueOf, strQ4, strQ5, strQ6, lValueOf2, lValueOf3, j10, i12, i14, i16, j11, j12, i22, i26, i30, i34, i38, i40, i42, i44, i46, i48, i50, strQ7, strQ8, strQ9, strQ10, j13, i53, i55, strQ11, strQ12, j14, strQ13, strQ14, j15, i58, j16, strQ15, i60, strQ16, eVarF0.isNull(iC46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(i63) ? null : eVarF0.q0(i63), eVarF0.isNull(iC51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(iC52) ? null : eVarF0.q0(iC52), eVarF0.isNull(iC53) ? null : eVarF0.q0(iC53), eVarF0.isNull(iC54) ? null : eVarF0.q0(iC54), eVarF0.isNull(iC55) ? null : eVarF0.q0(iC55), eVarF0.isNull(iC56) ? null : eVarF0.q0(iC56), eVarF0.isNull(iC57) ? null : eVarF0.q0(iC57), eVarF0.isNull(iC58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(iC59) ? null : eVarF0.q0(iC59), eVarF0.isNull(iC60) ? null : eVarF0.q0(iC60), eVarF0.isNull(iC61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(iC62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(iC63) ? null : eVarF0.q0(iC63), eVarF0.isNull(iC64) ? null : eVarF0.q0(iC64), eVarF0.isNull(iC65) ? null : eVarF0.q0(iC65), eVarF0.isNull(iC66) ? null : eVarF0.q0(iC66), eVarF0.isNull(iC67) ? null : eVarF0.q0(iC67), eVarF0.isNull(iC68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(iC69) ? null : eVarF0.q0(iC69), eVarF0.isNull(iC70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(iC71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(iC72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(iC73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(iC74) ? null : eVarF0.q0(iC74), eVarF0.isNull(iC75) ? null : eVarF0.q0(iC75), eVarF0.isNull(iC76) ? null : eVarF0.q0(iC76), eVarF0.isNull(iC77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(iC79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80)));
                iC = i18;
                iC79 = iC79;
                iC80 = iC80;
                iC7 = i25;
                iC9 = i29;
                iC11 = i33;
                iC20 = i32;
                iC33 = i52;
                iC41 = i57;
                iC44 = iC44;
                iC48 = i62;
                iC47 = iC47;
                iC49 = iC49;
                iC51 = iC51;
                iC58 = iC58;
                iC59 = iC59;
                iC60 = iC60;
                iC52 = iC52;
                iC53 = iC53;
                iC70 = iC70;
                iC69 = iC69;
                iC71 = iC71;
                iC68 = iC68;
                iC74 = iC74;
                iC75 = i64;
                iC2 = i10;
                iC3 = i11;
                iC4 = i13;
                iC5 = i15;
                iC15 = i17;
                iC10 = i27;
                iC12 = i31;
                iC23 = i41;
                iC25 = i45;
                iC26 = i47;
                iC27 = i49;
                iC35 = i56;
                iC42 = i59;
                iC45 = i61;
                iC34 = i54;
                iC18 = i24;
                iC19 = i28;
                iC73 = iC73;
                iC72 = iC72;
                iC6 = i21;
                iC13 = i37;
                iC21 = i36;
                iC22 = i39;
                iC17 = i20;
                iC78 = i65;
                iC8 = i23;
                iC14 = i35;
                iC24 = i43;
                iC28 = i51;
                iC50 = i63;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static DownloadBean P0(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE ugcVideoId = ?  ORDER BY resolution DESC LIMIT 1");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarF0.C0()) {
                downloadBean = new DownloadBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5)), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), eVarF0.getLong(iC11), (int) eVarF0.getLong(iC12), (int) eVarF0.getLong(iC13), (int) eVarF0.getLong(iC14), eVarF0.getLong(iC15), eVarF0.getLong(iC16), (int) eVarF0.getLong(iC17), (int) eVarF0.getLong(iC18), (int) eVarF0.getLong(iC19), (int) eVarF0.getLong(iC20), (int) eVarF0.getLong(iC21), (int) eVarF0.getLong(iC22), (int) eVarF0.getLong(iC23), (int) eVarF0.getLong(iC24), (int) eVarF0.getLong(iC25), (int) eVarF0.getLong(iC26), (int) eVarF0.getLong(iC27), eVarF0.isNull(iC28) ? null : eVarF0.q0(iC28), eVarF0.isNull(r29) ? null : eVarF0.q0(iC29), eVarF0.isNull(r30) ? null : eVarF0.q0(iC30), eVarF0.isNull(r31) ? null : eVarF0.q0(iC31), eVarF0.getLong(iC32), (int) eVarF0.getLong(iC33), (int) eVarF0.getLong(iC34), eVarF0.isNull(iC35) ? null : eVarF0.q0(iC35), eVarF0.isNull(r36) ? null : eVarF0.q0(iC36), eVarF0.getLong(iC37), eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38), eVarF0.isNull(r39) ? null : eVarF0.q0(iC39), eVarF0.getLong(iC40), (int) eVarF0.getLong(iC41), eVarF0.getLong(iC42), eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43), (int) eVarF0.getLong(iC44), eVarF0.isNull(iC45) ? null : eVarF0.q0(iC45), eVarF0.isNull(r46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(iC50) ? null : eVarF0.q0(iC50), eVarF0.isNull(r51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(r52) ? null : eVarF0.q0(iC52), eVarF0.isNull(r53) ? null : eVarF0.q0(iC53), eVarF0.isNull(r54) ? null : eVarF0.q0(iC54), eVarF0.isNull(r55) ? null : eVarF0.q0(iC55), eVarF0.isNull(r56) ? null : eVarF0.q0(iC56), eVarF0.isNull(r57) ? null : eVarF0.q0(iC57), eVarF0.isNull(r58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(r59) ? null : eVarF0.q0(iC59), eVarF0.isNull(r60) ? null : eVarF0.q0(iC60), eVarF0.isNull(r61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(r62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(r63) ? null : eVarF0.q0(iC63), eVarF0.isNull(r64) ? null : eVarF0.q0(iC64), eVarF0.isNull(r65) ? null : eVarF0.q0(iC65), eVarF0.isNull(r66) ? null : eVarF0.q0(iC66), eVarF0.isNull(r67) ? null : eVarF0.q0(iC67), eVarF0.isNull(r68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(r69) ? null : eVarF0.q0(iC69), eVarF0.isNull(r70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(r71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(r72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(r73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(r74) ? null : eVarF0.q0(iC74), eVarF0.isNull(r75) ? null : eVarF0.q0(iC75), eVarF0.isNull(r76) ? null : eVarF0.q0(iC76), eVarF0.isNull(r77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(r79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80));
            }
            eVarF0.close();
            return downloadBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit Q0(DownloadBean downloadBean, y3.b bVar) throws Exception {
        this.f73126b.d(bVar, downloadBean);
        return Unit.f64096a;
    }

    public Unit R0(DownloadBean downloadBean, y3.b bVar) throws Exception {
        this.f73128d.c(bVar, downloadBean);
        return Unit.f64096a;
    }

    public static Unit S0(long j10, String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE DOWNLOAD_TABLE SET duration = ? WHERE resourceId = ? ");
        try {
            eVarF0.c(1, j10);
            if (str == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, str);
            }
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    public static Unit T0(long j10, String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE DOWNLOAD_TABLE SET lastPlayTimeStamp = ? WHERE resourceId = ? ");
        try {
            eVarF0.c(1, j10);
            if (str == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, str);
            }
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    public static Unit U0(long j10, String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE DOWNLOAD_TABLE SET readProgress = ? WHERE resourceId = ? ");
        try {
            eVarF0.c(1, j10);
            if (str == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, str);
            }
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    public static Unit V0(int i10, String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE DOWNLOAD_TABLE SET status = ? WHERE resourceId = ? ");
        try {
            eVarF0.c(1, i10);
            if (str == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, str);
            }
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    public static Unit W0(String str, String str2, String str3, String str4, Integer num, String str5, String str6, String str7, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE DOWNLOAD_TABLE SET restrictLevel = ?, releaseDate = ?, countryName = ?, subtitles = ?, seNum = ?, genre = ?, imdbRate = ? WHERE resourceId = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            if (str2 == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, str2);
            }
            if (str3 == null) {
                eVarF0.g(3);
            } else {
                eVarF0.i(3, str3);
            }
            if (str4 == null) {
                eVarF0.g(4);
            } else {
                eVarF0.i(4, str4);
            }
            if (num == null) {
                eVarF0.g(5);
            } else {
                eVarF0.c(5, num.intValue());
            }
            if (str5 == null) {
                eVarF0.g(6);
            } else {
                eVarF0.i(6, str5);
            }
            if (str6 == null) {
                eVarF0.g(7);
            } else {
                eVarF0.i(7, str6);
            }
            if (str7 == null) {
                eVarF0.g(8);
            } else {
                eVarF0.i(8, str7);
            }
            eVarF0.C0();
            Unit unit = Unit.f64096a;
            eVarF0.close();
            return unit;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static Unit X0(String str, String str2, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE DOWNLOAD_TABLE SET subtitleSelectId = ? WHERE resourceId = ? ");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            if (str2 == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, str2);
            }
            eVarF0.C0();
            Unit unit = Unit.f64096a;
            eVarF0.close();
            return unit;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static Unit Y0(int i10, int i11, String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE DOWNLOAD_TABLE SET videoWidth = ?, videoHeight = ? WHERE resourceId = ? ");
        try {
            eVarF0.c(1, i10);
            eVarF0.c(2, i11);
            if (str == null) {
                eVarF0.g(3);
            } else {
                eVarF0.i(3, str);
            }
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    public static List q0() {
        return Collections.emptyList();
    }

    public static Unit r0(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM DOWNLOAD_TABLE WHERE url=?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            eVarF0.C0();
            Unit unit = Unit.f64096a;
            eVarF0.close();
            return unit;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static Unit s0(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM DOWNLOAD_TABLE WHERE resourceId=?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            eVarF0.C0();
            Unit unit = Unit.f64096a;
            eVarF0.close();
            return unit;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static Unit t0(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM DOWNLOAD_TABLE WHERE resourceId=? AND fileType =  3 ");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            eVarF0.C0();
            Unit unit = Unit.f64096a;
            eVarF0.close();
            return unit;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List u0(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? ORDER BY createAt DESC");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                Long lValueOf = eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5));
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ5 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ6 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Long lValueOf2 = eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9));
                Long lValueOf3 = eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10));
                long j10 = eVarF0.getLong(iC11);
                int i10 = iC2;
                int i11 = iC3;
                int i12 = (int) eVarF0.getLong(iC12);
                int i13 = iC4;
                int i14 = (int) eVarF0.getLong(iC13);
                int i15 = iC5;
                int i16 = (int) eVarF0.getLong(iC14);
                int i17 = iC15;
                long j11 = eVarF0.getLong(i17);
                int i18 = iC;
                int i19 = iC16;
                long j12 = eVarF0.getLong(i19);
                iC16 = i19;
                int i20 = iC17;
                int i21 = iC6;
                int i22 = (int) eVarF0.getLong(i20);
                int i23 = iC8;
                int i24 = iC18;
                int i25 = iC7;
                int i26 = (int) eVarF0.getLong(i24);
                int i27 = iC10;
                int i28 = iC19;
                int i29 = iC9;
                int i30 = (int) eVarF0.getLong(i28);
                int i31 = iC12;
                int i32 = iC20;
                int i33 = iC11;
                int i34 = (int) eVarF0.getLong(i32);
                int i35 = iC14;
                int i36 = iC21;
                int i37 = iC13;
                int i38 = (int) eVarF0.getLong(i36);
                int i39 = iC22;
                int i40 = (int) eVarF0.getLong(i39);
                int i41 = iC23;
                int i42 = (int) eVarF0.getLong(i41);
                int i43 = iC24;
                int i44 = (int) eVarF0.getLong(i43);
                int i45 = iC25;
                int i46 = (int) eVarF0.getLong(i45);
                int i47 = iC26;
                int i48 = (int) eVarF0.getLong(i47);
                int i49 = iC27;
                int i50 = (int) eVarF0.getLong(i49);
                int i51 = iC28;
                String strQ7 = eVarF0.isNull(i51) ? null : eVarF0.q0(i51);
                String strQ8 = eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29);
                String strQ9 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ10 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                long j13 = eVarF0.getLong(iC32);
                iC32 = iC32;
                int i52 = iC33;
                int i53 = (int) eVarF0.getLong(i52);
                int i54 = iC34;
                int i55 = (int) eVarF0.getLong(i54);
                int i56 = iC35;
                String strQ11 = eVarF0.isNull(i56) ? null : eVarF0.q0(i56);
                String strQ12 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                long j14 = eVarF0.getLong(iC37);
                iC37 = iC37;
                iC38 = iC38;
                String strQ13 = eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38);
                String strQ14 = eVarF0.isNull(iC39) ? null : eVarF0.q0(iC39);
                long j15 = eVarF0.getLong(iC40);
                iC40 = iC40;
                int i57 = iC41;
                int i58 = (int) eVarF0.getLong(i57);
                int i59 = iC42;
                long j16 = eVarF0.getLong(i59);
                iC43 = iC43;
                String strQ15 = eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43);
                int i60 = (int) eVarF0.getLong(iC44);
                int i61 = iC45;
                String strQ16 = eVarF0.isNull(i61) ? null : eVarF0.q0(i61);
                int i62 = iC48;
                int i63 = iC50;
                int i64 = iC75;
                int i65 = iC78;
                arrayList.add(new DownloadBean(strQ0, strQ1, strQ2, strQ3, lValueOf, strQ4, strQ5, strQ6, lValueOf2, lValueOf3, j10, i12, i14, i16, j11, j12, i22, i26, i30, i34, i38, i40, i42, i44, i46, i48, i50, strQ7, strQ8, strQ9, strQ10, j13, i53, i55, strQ11, strQ12, j14, strQ13, strQ14, j15, i58, j16, strQ15, i60, strQ16, eVarF0.isNull(iC46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(i63) ? null : eVarF0.q0(i63), eVarF0.isNull(iC51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(iC52) ? null : eVarF0.q0(iC52), eVarF0.isNull(iC53) ? null : eVarF0.q0(iC53), eVarF0.isNull(iC54) ? null : eVarF0.q0(iC54), eVarF0.isNull(iC55) ? null : eVarF0.q0(iC55), eVarF0.isNull(iC56) ? null : eVarF0.q0(iC56), eVarF0.isNull(iC57) ? null : eVarF0.q0(iC57), eVarF0.isNull(iC58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(iC59) ? null : eVarF0.q0(iC59), eVarF0.isNull(iC60) ? null : eVarF0.q0(iC60), eVarF0.isNull(iC61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(iC62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(iC63) ? null : eVarF0.q0(iC63), eVarF0.isNull(iC64) ? null : eVarF0.q0(iC64), eVarF0.isNull(iC65) ? null : eVarF0.q0(iC65), eVarF0.isNull(iC66) ? null : eVarF0.q0(iC66), eVarF0.isNull(iC67) ? null : eVarF0.q0(iC67), eVarF0.isNull(iC68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(iC69) ? null : eVarF0.q0(iC69), eVarF0.isNull(iC70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(iC71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(iC72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(iC73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(iC74) ? null : eVarF0.q0(iC74), eVarF0.isNull(iC75) ? null : eVarF0.q0(iC75), eVarF0.isNull(iC76) ? null : eVarF0.q0(iC76), eVarF0.isNull(iC77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(iC79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80)));
                iC = i18;
                iC79 = iC79;
                iC80 = iC80;
                iC7 = i25;
                iC9 = i29;
                iC11 = i33;
                iC20 = i32;
                iC33 = i52;
                iC41 = i57;
                iC44 = iC44;
                iC48 = i62;
                iC47 = iC47;
                iC49 = iC49;
                iC51 = iC51;
                iC58 = iC58;
                iC59 = iC59;
                iC60 = iC60;
                iC52 = iC52;
                iC53 = iC53;
                iC70 = iC70;
                iC69 = iC69;
                iC71 = iC71;
                iC68 = iC68;
                iC74 = iC74;
                iC75 = i64;
                iC2 = i10;
                iC3 = i11;
                iC4 = i13;
                iC5 = i15;
                iC15 = i17;
                iC10 = i27;
                iC12 = i31;
                iC23 = i41;
                iC25 = i45;
                iC26 = i47;
                iC27 = i49;
                iC35 = i56;
                iC42 = i59;
                iC45 = i61;
                iC34 = i54;
                iC18 = i24;
                iC19 = i28;
                iC73 = iC73;
                iC72 = iC72;
                iC6 = i21;
                iC13 = i37;
                iC21 = i36;
                iC22 = i39;
                iC17 = i20;
                iC78 = i65;
                iC8 = i23;
                iC14 = i35;
                iC24 = i43;
                iC28 = i51;
                iC50 = i63;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static DownloadBean v0(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE resourceId = ? ORDER BY createAt DESC");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarF0.C0()) {
                downloadBean = new DownloadBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5)), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), eVarF0.getLong(iC11), (int) eVarF0.getLong(iC12), (int) eVarF0.getLong(iC13), (int) eVarF0.getLong(iC14), eVarF0.getLong(iC15), eVarF0.getLong(iC16), (int) eVarF0.getLong(iC17), (int) eVarF0.getLong(iC18), (int) eVarF0.getLong(iC19), (int) eVarF0.getLong(iC20), (int) eVarF0.getLong(iC21), (int) eVarF0.getLong(iC22), (int) eVarF0.getLong(iC23), (int) eVarF0.getLong(iC24), (int) eVarF0.getLong(iC25), (int) eVarF0.getLong(iC26), (int) eVarF0.getLong(iC27), eVarF0.isNull(iC28) ? null : eVarF0.q0(iC28), eVarF0.isNull(r29) ? null : eVarF0.q0(iC29), eVarF0.isNull(r30) ? null : eVarF0.q0(iC30), eVarF0.isNull(r31) ? null : eVarF0.q0(iC31), eVarF0.getLong(iC32), (int) eVarF0.getLong(iC33), (int) eVarF0.getLong(iC34), eVarF0.isNull(iC35) ? null : eVarF0.q0(iC35), eVarF0.isNull(r36) ? null : eVarF0.q0(iC36), eVarF0.getLong(iC37), eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38), eVarF0.isNull(r39) ? null : eVarF0.q0(iC39), eVarF0.getLong(iC40), (int) eVarF0.getLong(iC41), eVarF0.getLong(iC42), eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43), (int) eVarF0.getLong(iC44), eVarF0.isNull(iC45) ? null : eVarF0.q0(iC45), eVarF0.isNull(r46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(iC50) ? null : eVarF0.q0(iC50), eVarF0.isNull(r51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(r52) ? null : eVarF0.q0(iC52), eVarF0.isNull(r53) ? null : eVarF0.q0(iC53), eVarF0.isNull(r54) ? null : eVarF0.q0(iC54), eVarF0.isNull(r55) ? null : eVarF0.q0(iC55), eVarF0.isNull(r56) ? null : eVarF0.q0(iC56), eVarF0.isNull(r57) ? null : eVarF0.q0(iC57), eVarF0.isNull(r58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(r59) ? null : eVarF0.q0(iC59), eVarF0.isNull(r60) ? null : eVarF0.q0(iC60), eVarF0.isNull(r61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(r62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(r63) ? null : eVarF0.q0(iC63), eVarF0.isNull(r64) ? null : eVarF0.q0(iC64), eVarF0.isNull(r65) ? null : eVarF0.q0(iC65), eVarF0.isNull(r66) ? null : eVarF0.q0(iC66), eVarF0.isNull(r67) ? null : eVarF0.q0(iC67), eVarF0.isNull(r68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(r69) ? null : eVarF0.q0(iC69), eVarF0.isNull(r70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(r71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(r72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(r73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(r74) ? null : eVarF0.q0(iC74), eVarF0.isNull(r75) ? null : eVarF0.q0(iC75), eVarF0.isNull(r76) ? null : eVarF0.q0(iC76), eVarF0.isNull(r77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(r79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80));
            }
            eVarF0.close();
            return downloadBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static DownloadBean w0(String str, int i10, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? AND ep = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            eVarF0.c(2, i10);
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarF0.C0()) {
                downloadBean = new DownloadBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5)), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), eVarF0.getLong(iC11), (int) eVarF0.getLong(iC12), (int) eVarF0.getLong(iC13), (int) eVarF0.getLong(iC14), eVarF0.getLong(iC15), eVarF0.getLong(iC16), (int) eVarF0.getLong(iC17), (int) eVarF0.getLong(iC18), (int) eVarF0.getLong(iC19), (int) eVarF0.getLong(iC20), (int) eVarF0.getLong(iC21), (int) eVarF0.getLong(iC22), (int) eVarF0.getLong(iC23), (int) eVarF0.getLong(iC24), (int) eVarF0.getLong(iC25), (int) eVarF0.getLong(iC26), (int) eVarF0.getLong(iC27), eVarF0.isNull(iC28) ? null : eVarF0.q0(iC28), eVarF0.isNull(r28) ? null : eVarF0.q0(iC29), eVarF0.isNull(r29) ? null : eVarF0.q0(iC30), eVarF0.isNull(r30) ? null : eVarF0.q0(iC31), eVarF0.getLong(iC32), (int) eVarF0.getLong(iC33), (int) eVarF0.getLong(iC34), eVarF0.isNull(iC35) ? null : eVarF0.q0(iC35), eVarF0.isNull(r35) ? null : eVarF0.q0(iC36), eVarF0.getLong(iC37), eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38), eVarF0.isNull(r38) ? null : eVarF0.q0(iC39), eVarF0.getLong(iC40), (int) eVarF0.getLong(iC41), eVarF0.getLong(iC42), eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43), (int) eVarF0.getLong(iC44), eVarF0.isNull(iC45) ? null : eVarF0.q0(iC45), eVarF0.isNull(r45) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(iC50) ? null : eVarF0.q0(iC50), eVarF0.isNull(r50) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(r51) ? null : eVarF0.q0(iC52), eVarF0.isNull(r52) ? null : eVarF0.q0(iC53), eVarF0.isNull(r53) ? null : eVarF0.q0(iC54), eVarF0.isNull(r54) ? null : eVarF0.q0(iC55), eVarF0.isNull(r55) ? null : eVarF0.q0(iC56), eVarF0.isNull(r56) ? null : eVarF0.q0(iC57), eVarF0.isNull(r57) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(r58) ? null : eVarF0.q0(iC59), eVarF0.isNull(r59) ? null : eVarF0.q0(iC60), eVarF0.isNull(r60) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(r61) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(r62) ? null : eVarF0.q0(iC63), eVarF0.isNull(r63) ? null : eVarF0.q0(iC64), eVarF0.isNull(r64) ? null : eVarF0.q0(iC65), eVarF0.isNull(r65) ? null : eVarF0.q0(iC66), eVarF0.isNull(r66) ? null : eVarF0.q0(iC67), eVarF0.isNull(r67) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(r68) ? null : eVarF0.q0(iC69), eVarF0.isNull(r69) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(r70) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(r71) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(r72) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(r73) ? null : eVarF0.q0(iC74), eVarF0.isNull(r74) ? null : eVarF0.q0(iC75), eVarF0.isNull(r75) ? null : eVarF0.q0(iC76), eVarF0.isNull(r76) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(r78) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80));
            }
            eVarF0.close();
            return downloadBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static DownloadBean x0(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarF0.C0()) {
                downloadBean = new DownloadBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5)), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), eVarF0.getLong(iC11), (int) eVarF0.getLong(iC12), (int) eVarF0.getLong(iC13), (int) eVarF0.getLong(iC14), eVarF0.getLong(iC15), eVarF0.getLong(iC16), (int) eVarF0.getLong(iC17), (int) eVarF0.getLong(iC18), (int) eVarF0.getLong(iC19), (int) eVarF0.getLong(iC20), (int) eVarF0.getLong(iC21), (int) eVarF0.getLong(iC22), (int) eVarF0.getLong(iC23), (int) eVarF0.getLong(iC24), (int) eVarF0.getLong(iC25), (int) eVarF0.getLong(iC26), (int) eVarF0.getLong(iC27), eVarF0.isNull(iC28) ? null : eVarF0.q0(iC28), eVarF0.isNull(r29) ? null : eVarF0.q0(iC29), eVarF0.isNull(r30) ? null : eVarF0.q0(iC30), eVarF0.isNull(r31) ? null : eVarF0.q0(iC31), eVarF0.getLong(iC32), (int) eVarF0.getLong(iC33), (int) eVarF0.getLong(iC34), eVarF0.isNull(iC35) ? null : eVarF0.q0(iC35), eVarF0.isNull(r36) ? null : eVarF0.q0(iC36), eVarF0.getLong(iC37), eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38), eVarF0.isNull(r39) ? null : eVarF0.q0(iC39), eVarF0.getLong(iC40), (int) eVarF0.getLong(iC41), eVarF0.getLong(iC42), eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43), (int) eVarF0.getLong(iC44), eVarF0.isNull(iC45) ? null : eVarF0.q0(iC45), eVarF0.isNull(r46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(iC50) ? null : eVarF0.q0(iC50), eVarF0.isNull(r51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(r52) ? null : eVarF0.q0(iC52), eVarF0.isNull(r53) ? null : eVarF0.q0(iC53), eVarF0.isNull(r54) ? null : eVarF0.q0(iC54), eVarF0.isNull(r55) ? null : eVarF0.q0(iC55), eVarF0.isNull(r56) ? null : eVarF0.q0(iC56), eVarF0.isNull(r57) ? null : eVarF0.q0(iC57), eVarF0.isNull(r58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(r59) ? null : eVarF0.q0(iC59), eVarF0.isNull(r60) ? null : eVarF0.q0(iC60), eVarF0.isNull(r61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(r62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(r63) ? null : eVarF0.q0(iC63), eVarF0.isNull(r64) ? null : eVarF0.q0(iC64), eVarF0.isNull(r65) ? null : eVarF0.q0(iC65), eVarF0.isNull(r66) ? null : eVarF0.q0(iC66), eVarF0.isNull(r67) ? null : eVarF0.q0(iC67), eVarF0.isNull(r68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(r69) ? null : eVarF0.q0(iC69), eVarF0.isNull(r70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(r71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(r72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(r73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(r74) ? null : eVarF0.q0(iC74), eVarF0.isNull(r75) ? null : eVarF0.q0(iC75), eVarF0.isNull(r76) ? null : eVarF0.q0(iC76), eVarF0.isNull(r77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(r79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80));
            }
            eVarF0.close();
            return downloadBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List y0(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? ORDER BY ep ASC ");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                Long lValueOf = eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5));
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ5 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ6 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Long lValueOf2 = eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9));
                Long lValueOf3 = eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10));
                long j10 = eVarF0.getLong(iC11);
                int i10 = iC2;
                int i11 = iC3;
                int i12 = (int) eVarF0.getLong(iC12);
                int i13 = iC4;
                int i14 = (int) eVarF0.getLong(iC13);
                int i15 = iC5;
                int i16 = (int) eVarF0.getLong(iC14);
                int i17 = iC15;
                long j11 = eVarF0.getLong(i17);
                int i18 = iC;
                int i19 = iC16;
                long j12 = eVarF0.getLong(i19);
                iC16 = i19;
                int i20 = iC17;
                int i21 = iC6;
                int i22 = (int) eVarF0.getLong(i20);
                int i23 = iC8;
                int i24 = iC18;
                int i25 = iC7;
                int i26 = (int) eVarF0.getLong(i24);
                int i27 = iC10;
                int i28 = iC19;
                int i29 = iC9;
                int i30 = (int) eVarF0.getLong(i28);
                int i31 = iC12;
                int i32 = iC20;
                int i33 = iC11;
                int i34 = (int) eVarF0.getLong(i32);
                int i35 = iC14;
                int i36 = iC21;
                int i37 = iC13;
                int i38 = (int) eVarF0.getLong(i36);
                int i39 = iC22;
                int i40 = (int) eVarF0.getLong(i39);
                int i41 = iC23;
                int i42 = (int) eVarF0.getLong(i41);
                int i43 = iC24;
                int i44 = (int) eVarF0.getLong(i43);
                int i45 = iC25;
                int i46 = (int) eVarF0.getLong(i45);
                int i47 = iC26;
                int i48 = (int) eVarF0.getLong(i47);
                int i49 = iC27;
                int i50 = (int) eVarF0.getLong(i49);
                int i51 = iC28;
                String strQ7 = eVarF0.isNull(i51) ? null : eVarF0.q0(i51);
                String strQ8 = eVarF0.isNull(iC29) ? null : eVarF0.q0(iC29);
                String strQ9 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ10 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                long j13 = eVarF0.getLong(iC32);
                iC32 = iC32;
                int i52 = iC33;
                int i53 = (int) eVarF0.getLong(i52);
                int i54 = iC34;
                int i55 = (int) eVarF0.getLong(i54);
                int i56 = iC35;
                String strQ11 = eVarF0.isNull(i56) ? null : eVarF0.q0(i56);
                String strQ12 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                long j14 = eVarF0.getLong(iC37);
                iC37 = iC37;
                iC38 = iC38;
                String strQ13 = eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38);
                String strQ14 = eVarF0.isNull(iC39) ? null : eVarF0.q0(iC39);
                long j15 = eVarF0.getLong(iC40);
                iC40 = iC40;
                int i57 = iC41;
                int i58 = (int) eVarF0.getLong(i57);
                int i59 = iC42;
                long j16 = eVarF0.getLong(i59);
                iC43 = iC43;
                String strQ15 = eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43);
                int i60 = (int) eVarF0.getLong(iC44);
                int i61 = iC45;
                String strQ16 = eVarF0.isNull(i61) ? null : eVarF0.q0(i61);
                int i62 = iC48;
                int i63 = iC50;
                int i64 = iC75;
                int i65 = iC78;
                arrayList.add(new DownloadBean(strQ0, strQ1, strQ2, strQ3, lValueOf, strQ4, strQ5, strQ6, lValueOf2, lValueOf3, j10, i12, i14, i16, j11, j12, i22, i26, i30, i34, i38, i40, i42, i44, i46, i48, i50, strQ7, strQ8, strQ9, strQ10, j13, i53, i55, strQ11, strQ12, j14, strQ13, strQ14, j15, i58, j16, strQ15, i60, strQ16, eVarF0.isNull(iC46) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(i63) ? null : eVarF0.q0(i63), eVarF0.isNull(iC51) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(iC52) ? null : eVarF0.q0(iC52), eVarF0.isNull(iC53) ? null : eVarF0.q0(iC53), eVarF0.isNull(iC54) ? null : eVarF0.q0(iC54), eVarF0.isNull(iC55) ? null : eVarF0.q0(iC55), eVarF0.isNull(iC56) ? null : eVarF0.q0(iC56), eVarF0.isNull(iC57) ? null : eVarF0.q0(iC57), eVarF0.isNull(iC58) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(iC59) ? null : eVarF0.q0(iC59), eVarF0.isNull(iC60) ? null : eVarF0.q0(iC60), eVarF0.isNull(iC61) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(iC62) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(iC63) ? null : eVarF0.q0(iC63), eVarF0.isNull(iC64) ? null : eVarF0.q0(iC64), eVarF0.isNull(iC65) ? null : eVarF0.q0(iC65), eVarF0.isNull(iC66) ? null : eVarF0.q0(iC66), eVarF0.isNull(iC67) ? null : eVarF0.q0(iC67), eVarF0.isNull(iC68) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(iC69) ? null : eVarF0.q0(iC69), eVarF0.isNull(iC70) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(iC71) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(iC72) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(iC73) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(iC74) ? null : eVarF0.q0(iC74), eVarF0.isNull(iC75) ? null : eVarF0.q0(iC75), eVarF0.isNull(iC76) ? null : eVarF0.q0(iC76), eVarF0.isNull(iC77) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(iC79) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80)));
                iC = i18;
                iC79 = iC79;
                iC80 = iC80;
                iC7 = i25;
                iC9 = i29;
                iC11 = i33;
                iC20 = i32;
                iC33 = i52;
                iC41 = i57;
                iC44 = iC44;
                iC48 = i62;
                iC47 = iC47;
                iC49 = iC49;
                iC51 = iC51;
                iC58 = iC58;
                iC59 = iC59;
                iC60 = iC60;
                iC52 = iC52;
                iC53 = iC53;
                iC70 = iC70;
                iC69 = iC69;
                iC71 = iC71;
                iC68 = iC68;
                iC74 = iC74;
                iC75 = i64;
                iC2 = i10;
                iC3 = i11;
                iC4 = i13;
                iC5 = i15;
                iC15 = i17;
                iC10 = i27;
                iC12 = i31;
                iC23 = i41;
                iC25 = i45;
                iC26 = i47;
                iC27 = i49;
                iC35 = i56;
                iC42 = i59;
                iC45 = i61;
                iC34 = i54;
                iC18 = i24;
                iC19 = i28;
                iC73 = iC73;
                iC72 = iC72;
                iC6 = i21;
                iC13 = i37;
                iC21 = i36;
                iC22 = i39;
                iC17 = i20;
                iC78 = i65;
                iC8 = i23;
                iC14 = i35;
                iC24 = i43;
                iC28 = i51;
                iC50 = i63;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static DownloadBean z0(String str, int i10, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_TABLE WHERE subjectId = ? AND ep =? ");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            eVarF0.c(2, i10);
            int iC = androidx.room.util.i.c(eVarF0, "url");
            int iC2 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC3 = androidx.room.util.i.c(eVarF0, "name");
            int iC4 = androidx.room.util.i.c(eVarF0, "cover");
            int iC5 = androidx.room.util.i.c(eVarF0, "size");
            int iC6 = androidx.room.util.i.c(eVarF0, "postId");
            int iC7 = androidx.room.util.i.c(eVarF0, "sizeFormat");
            int iC8 = androidx.room.util.i.c(eVarF0, "path");
            int iC9 = androidx.room.util.i.c(eVarF0, "duration");
            int iC10 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC12 = androidx.room.util.i.c(eVarF0, "supportRanges");
            int iC13 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC14 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC15 = androidx.room.util.i.c(eVarF0, "readProgress");
            int iC16 = androidx.room.util.i.c(eVarF0, "createAt");
            int iC17 = androidx.room.util.i.c(eVarF0, "isRead");
            int iC18 = androidx.room.util.i.c(eVarF0, "episode");
            int iC19 = androidx.room.util.i.c(eVarF0, "ep");
            int iC20 = androidx.room.util.i.c(eVarF0, "se");
            int iC21 = androidx.room.util.i.c(eVarF0, "resolution");
            int iC22 = androidx.room.util.i.c(eVarF0, "resourcePosition");
            int iC23 = androidx.room.util.i.c(eVarF0, "multiresolution");
            int iC24 = androidx.room.util.i.c(eVarF0, "videoWidth");
            int iC25 = androidx.room.util.i.c(eVarF0, "videoHeight");
            int iC26 = androidx.room.util.i.c(eVarF0, "downloadErrorCount");
            int iC27 = androidx.room.util.i.c(eVarF0, "subtitleStarted");
            int iC28 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC29 = androidx.room.util.i.c(eVarF0, "pageFrom");
            int iC30 = androidx.room.util.i.c(eVarF0, "lastPageFrom");
            int iC31 = androidx.room.util.i.c(eVarF0, "subjectName");
            int iC32 = androidx.room.util.i.c(eVarF0, "lastPlayTimeStamp");
            int iC33 = androidx.room.util.i.c(eVarF0, "fileType");
            int iC34 = androidx.room.util.i.c(eVarF0, "totalEpisode");
            int iC35 = androidx.room.util.i.c(eVarF0, "uploadBy");
            int iC36 = androidx.room.util.i.c(eVarF0, "sourceUrl");
            int iC37 = androidx.room.util.i.c(eVarF0, "urlCreateAt");
            int iC38 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC39 = androidx.room.util.i.c(eVarF0, "taskId");
            int iC40 = androidx.room.util.i.c(eVarF0, "sessionTime");
            int iC41 = androidx.room.util.i.c(eVarF0, "reportStatus");
            int iC42 = androidx.room.util.i.c(eVarF0, "downloadHeaderSize");
            int iC43 = androidx.room.util.i.c(eVarF0, "rootPath");
            int iC44 = androidx.room.util.i.c(eVarF0, "rootPathType");
            int iC45 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC46 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC47 = androidx.room.util.i.c(eVarF0, "isTransferFailed");
            int iC48 = androidx.room.util.i.c(eVarF0, "isClosedTransferFailed");
            int iC49 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC50 = androidx.room.util.i.c(eVarF0, "genre");
            int iC51 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC52 = androidx.room.util.i.c(eVarF0, "currentDubLanName");
            int iC53 = androidx.room.util.i.c(eVarF0, "currentDubLanCode");
            int iC54 = androidx.room.util.i.c(eVarF0, "ops");
            int iC55 = androidx.room.util.i.c(eVarF0, "restrictLevel");
            int iC56 = androidx.room.util.i.c(eVarF0, "releaseDate");
            int iC57 = androidx.room.util.i.c(eVarF0, "countryName");
            int iC58 = androidx.room.util.i.c(eVarF0, "seNum");
            int iC59 = androidx.room.util.i.c(eVarF0, "subtitles");
            int iC60 = androidx.room.util.i.c(eVarF0, "imdbRate");
            int iC61 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC62 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC63 = androidx.room.util.i.c(eVarF0, "subtitleIdType");
            int iC64 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionId");
            int iC65 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC66 = androidx.room.util.i.c(eVarF0, "ugcVideoName");
            int iC67 = androidx.room.util.i.c(eVarF0, "ugcVideoCollectionName");
            int iC68 = androidx.room.util.i.c(eVarF0, "ugcVideoPosition");
            int iC69 = androidx.room.util.i.c(eVarF0, "ugcVideoType");
            int iC70 = androidx.room.util.i.c(eVarF0, "ugcCateLev1Id");
            int iC71 = androidx.room.util.i.c(eVarF0, "ugcCateLev2Id");
            int iC72 = androidx.room.util.i.c(eVarF0, "ugcCateLev3Id");
            int iC73 = androidx.room.util.i.c(eVarF0, "ugcCateLev4Id");
            int iC74 = androidx.room.util.i.c(eVarF0, "ugcVideoTrackId");
            int iC75 = androidx.room.util.i.c(eVarF0, "ugcVideoParentVideoId");
            int iC76 = androidx.room.util.i.c(eVarF0, "ugcVideoParentTrackId");
            int iC77 = androidx.room.util.i.c(eVarF0, "ugcVideoEpTitle");
            int iC78 = androidx.room.util.i.c(eVarF0, "ugcVideoIsVertical");
            int iC79 = androidx.room.util.i.c(eVarF0, "originData");
            int iC80 = androidx.room.util.i.c(eVarF0, "kidId");
            DownloadBean downloadBean = null;
            if (eVarF0.C0()) {
                downloadBean = new DownloadBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : Long.valueOf(eVarF0.getLong(iC5)), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), eVarF0.getLong(iC11), (int) eVarF0.getLong(iC12), (int) eVarF0.getLong(iC13), (int) eVarF0.getLong(iC14), eVarF0.getLong(iC15), eVarF0.getLong(iC16), (int) eVarF0.getLong(iC17), (int) eVarF0.getLong(iC18), (int) eVarF0.getLong(iC19), (int) eVarF0.getLong(iC20), (int) eVarF0.getLong(iC21), (int) eVarF0.getLong(iC22), (int) eVarF0.getLong(iC23), (int) eVarF0.getLong(iC24), (int) eVarF0.getLong(iC25), (int) eVarF0.getLong(iC26), (int) eVarF0.getLong(iC27), eVarF0.isNull(iC28) ? null : eVarF0.q0(iC28), eVarF0.isNull(r28) ? null : eVarF0.q0(iC29), eVarF0.isNull(r29) ? null : eVarF0.q0(iC30), eVarF0.isNull(r30) ? null : eVarF0.q0(iC31), eVarF0.getLong(iC32), (int) eVarF0.getLong(iC33), (int) eVarF0.getLong(iC34), eVarF0.isNull(iC35) ? null : eVarF0.q0(iC35), eVarF0.isNull(r35) ? null : eVarF0.q0(iC36), eVarF0.getLong(iC37), eVarF0.isNull(iC38) ? null : eVarF0.q0(iC38), eVarF0.isNull(r38) ? null : eVarF0.q0(iC39), eVarF0.getLong(iC40), (int) eVarF0.getLong(iC41), eVarF0.getLong(iC42), eVarF0.isNull(iC43) ? null : eVarF0.q0(iC43), (int) eVarF0.getLong(iC44), eVarF0.isNull(iC45) ? null : eVarF0.q0(iC45), eVarF0.isNull(r45) ? null : eVarF0.q0(iC46), ((int) eVarF0.getLong(iC47)) != 0, ((int) eVarF0.getLong(iC48)) != 0, (int) eVarF0.getLong(iC49), eVarF0.isNull(iC50) ? null : eVarF0.q0(iC50), eVarF0.isNull(r50) ? null : Integer.valueOf((int) eVarF0.getLong(iC51)), eVarF0.isNull(r51) ? null : eVarF0.q0(iC52), eVarF0.isNull(r52) ? null : eVarF0.q0(iC53), eVarF0.isNull(r53) ? null : eVarF0.q0(iC54), eVarF0.isNull(r54) ? null : eVarF0.q0(iC55), eVarF0.isNull(r55) ? null : eVarF0.q0(iC56), eVarF0.isNull(r56) ? null : eVarF0.q0(iC57), eVarF0.isNull(r57) ? null : Integer.valueOf((int) eVarF0.getLong(iC58)), eVarF0.isNull(r58) ? null : eVarF0.q0(iC59), eVarF0.isNull(r59) ? null : eVarF0.q0(iC60), eVarF0.isNull(r60) ? null : Long.valueOf(eVarF0.getLong(iC61)), eVarF0.isNull(r61) ? null : Long.valueOf(eVarF0.getLong(iC62)), eVarF0.isNull(r62) ? null : eVarF0.q0(iC63), eVarF0.isNull(r63) ? null : eVarF0.q0(iC64), eVarF0.isNull(r64) ? null : eVarF0.q0(iC65), eVarF0.isNull(r65) ? null : eVarF0.q0(iC66), eVarF0.isNull(r66) ? null : eVarF0.q0(iC67), eVarF0.isNull(r67) ? null : Integer.valueOf((int) eVarF0.getLong(iC68)), eVarF0.isNull(r68) ? null : eVarF0.q0(iC69), eVarF0.isNull(r69) ? null : Integer.valueOf((int) eVarF0.getLong(iC70)), eVarF0.isNull(r70) ? null : Integer.valueOf((int) eVarF0.getLong(iC71)), eVarF0.isNull(r71) ? null : Integer.valueOf((int) eVarF0.getLong(iC72)), eVarF0.isNull(r72) ? null : Integer.valueOf((int) eVarF0.getLong(iC73)), eVarF0.isNull(r73) ? null : eVarF0.q0(iC74), eVarF0.isNull(r74) ? null : eVarF0.q0(iC75), eVarF0.isNull(r75) ? null : eVarF0.q0(iC76), eVarF0.isNull(r76) ? null : eVarF0.q0(iC77), ((int) eVarF0.getLong(iC78)) != 0, eVarF0.isNull(r78) ? null : eVarF0.q0(iC79), eVarF0.isNull(iC80) ? null : eVarF0.q0(iC80));
            }
            eVarF0.close();
            return downloadBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    @Override
    public Object A(final String str, final int i10, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.w0(str, i10, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object B(Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.G0((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object C(final String str, final long j10, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.S0(j10, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object D(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.x0(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object E(final String str, final int i10, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.L0(str, i10, i11, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object F(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.H0(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object G(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.y0(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object H(final String str, final String str2, final String str3, final String str4, final Integer num, final String str5, final String str6, final String str7, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.W0(str2, str3, str4, str6, num, str5, str7, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object a(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.s0(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.X0(str2, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.J0(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.v0(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object e(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.K0(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object f(final String str, final int i10, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.z0(str, i10, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object g(Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.D0((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object h(final String str, final int i10, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.Y0(i10, i11, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object i(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.P0(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object j(Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.N0((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object k(Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.F0((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object l(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.t0(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object m(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.r0(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object n(Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.M0((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object o(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.u0(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object p(final int i10, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.I0(i10, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object q(Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.A0((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object r(final String str, final long j10, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.U0(j10, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object s(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.C0(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object t(final DownloadBean downloadBean, Continuation continuation) {
        downloadBean.getClass();
        return androidx.room.util.b.f(this.f73125a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73106a.Q0(downloadBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object u(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.E0(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object v(final String str, final long j10, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.T0(j10, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object w(final String str, final int i10, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.V0(i10, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object x(Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.B0((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object y(final DownloadBean downloadBean, Continuation continuation) {
        downloadBean.getClass();
        return androidx.room.util.b.f(this.f73125a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73118a.R0(downloadBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object z(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73125a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return l0.O0(str, (y3.b) obj);
            }
        }, continuation);
    }
}
