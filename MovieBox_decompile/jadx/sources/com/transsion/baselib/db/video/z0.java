package com.transsion.baselib.db.video;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class z0 implements VideoDetailPlayDao {

    private final RoomDatabase f42107a;

    private final ri.b f42109c = new ri.b();

    private final androidx.room.g f42108b = new a();

    private final androidx.room.e f42110d = new b();

    private final androidx.room.e f42111e = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `video_detail_play` (`subjectId`,`id`,`ep`,`se`,`progress`,`title`,`coverUrl`,`thumbnail`,`videoUrl`,`timeStamp`,`subtitleSelectId`,`totalDuration`,`subjectDurationSeconds`,`averageHueLight`,`subjectType`,`hasDelete`,`playMode`,`downloadUrl`,`downloadFilePath`,`downloadSize`,`dubs`,`lastAdStartTimeStamp`,`lastAdEndTimeStamp`,`rewardPlayed`,`rewardUnlock`,`rewardFree`,`ops`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, VideoDetailPlayBean videoDetailPlayBean) {
            if (videoDetailPlayBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, videoDetailPlayBean.getSubjectId());
            }
            if (videoDetailPlayBean.getId() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, videoDetailPlayBean.getId());
            }
            eVar.c(3, videoDetailPlayBean.getEp());
            eVar.c(4, videoDetailPlayBean.getSe());
            eVar.c(5, videoDetailPlayBean.getProgress());
            if (videoDetailPlayBean.getTitle() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, videoDetailPlayBean.getTitle());
            }
            if (videoDetailPlayBean.getCoverUrl() == null) {
                eVar.g(7);
            } else {
                eVar.i(7, videoDetailPlayBean.getCoverUrl());
            }
            if (videoDetailPlayBean.getThumbnail() == null) {
                eVar.g(8);
            } else {
                eVar.i(8, videoDetailPlayBean.getThumbnail());
            }
            if (videoDetailPlayBean.getVideoUrl() == null) {
                eVar.g(9);
            } else {
                eVar.i(9, videoDetailPlayBean.getVideoUrl());
            }
            eVar.c(10, videoDetailPlayBean.getTimeStamp());
            if (videoDetailPlayBean.getSubtitleSelectId() == null) {
                eVar.g(11);
            } else {
                eVar.i(11, videoDetailPlayBean.getSubtitleSelectId());
            }
            if (videoDetailPlayBean.getTotalDuration() == null) {
                eVar.g(12);
            } else {
                eVar.c(12, videoDetailPlayBean.getTotalDuration().longValue());
            }
            if (videoDetailPlayBean.getSubjectDurationSeconds() == null) {
                eVar.g(13);
            } else {
                eVar.c(13, videoDetailPlayBean.getSubjectDurationSeconds().longValue());
            }
            if (videoDetailPlayBean.getAverageHueLight() == null) {
                eVar.g(14);
            } else {
                eVar.i(14, videoDetailPlayBean.getAverageHueLight());
            }
            if (videoDetailPlayBean.getSubjectType() == null) {
                eVar.g(15);
            } else {
                eVar.c(15, videoDetailPlayBean.getSubjectType().intValue());
            }
            eVar.c(16, videoDetailPlayBean.getHasDelete() ? 1L : 0L);
            if (videoDetailPlayBean.getPlayMode() == null) {
                eVar.g(17);
            } else {
                eVar.i(17, videoDetailPlayBean.getPlayMode());
            }
            if (videoDetailPlayBean.getDownloadUrl() == null) {
                eVar.g(18);
            } else {
                eVar.i(18, videoDetailPlayBean.getDownloadUrl());
            }
            if (videoDetailPlayBean.getDownloadFilePath() == null) {
                eVar.g(19);
            } else {
                eVar.i(19, videoDetailPlayBean.getDownloadFilePath());
            }
            eVar.c(20, videoDetailPlayBean.getDownloadSize());
            String strA = z0.this.f42109c.a(videoDetailPlayBean.getDubs());
            if (strA == null) {
                eVar.g(21);
            } else {
                eVar.i(21, strA);
            }
            if (videoDetailPlayBean.getLastAdStartTimeStamp() == null) {
                eVar.g(22);
            } else {
                eVar.c(22, videoDetailPlayBean.getLastAdStartTimeStamp().longValue());
            }
            if (videoDetailPlayBean.getLastAdEndTimeStamp() == null) {
                eVar.g(23);
            } else {
                eVar.c(23, videoDetailPlayBean.getLastAdEndTimeStamp().longValue());
            }
            eVar.c(24, videoDetailPlayBean.getRewardPlayed() ? 1L : 0L);
            eVar.c(25, videoDetailPlayBean.getRewardUnlock() ? 1L : 0L);
            eVar.c(26, videoDetailPlayBean.getRewardFree() ? 1L : 0L);
            if (videoDetailPlayBean.getOps() == null) {
                eVar.g(27);
            } else {
                eVar.i(27, videoDetailPlayBean.getOps());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "DELETE FROM `video_detail_play` WHERE `subjectId` = ? AND `ep` = ? AND `se` = ?";
        }

        @Override
        public void a(y3.e eVar, VideoDetailPlayBean videoDetailPlayBean) {
            if (videoDetailPlayBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, videoDetailPlayBean.getSubjectId());
            }
            eVar.c(2, videoDetailPlayBean.getEp());
            eVar.c(3, videoDetailPlayBean.getSe());
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `video_detail_play` SET `subjectId` = ?,`id` = ?,`ep` = ?,`se` = ?,`progress` = ?,`title` = ?,`coverUrl` = ?,`thumbnail` = ?,`videoUrl` = ?,`timeStamp` = ?,`subtitleSelectId` = ?,`totalDuration` = ?,`subjectDurationSeconds` = ?,`averageHueLight` = ?,`subjectType` = ?,`hasDelete` = ?,`playMode` = ?,`downloadUrl` = ?,`downloadFilePath` = ?,`downloadSize` = ?,`dubs` = ?,`lastAdStartTimeStamp` = ?,`lastAdEndTimeStamp` = ?,`rewardPlayed` = ?,`rewardUnlock` = ?,`rewardFree` = ?,`ops` = ? WHERE `subjectId` = ? AND `ep` = ? AND `se` = ?";
        }

        @Override
        public void a(y3.e eVar, VideoDetailPlayBean videoDetailPlayBean) {
            if (videoDetailPlayBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, videoDetailPlayBean.getSubjectId());
            }
            if (videoDetailPlayBean.getId() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, videoDetailPlayBean.getId());
            }
            eVar.c(3, videoDetailPlayBean.getEp());
            eVar.c(4, videoDetailPlayBean.getSe());
            eVar.c(5, videoDetailPlayBean.getProgress());
            if (videoDetailPlayBean.getTitle() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, videoDetailPlayBean.getTitle());
            }
            if (videoDetailPlayBean.getCoverUrl() == null) {
                eVar.g(7);
            } else {
                eVar.i(7, videoDetailPlayBean.getCoverUrl());
            }
            if (videoDetailPlayBean.getThumbnail() == null) {
                eVar.g(8);
            } else {
                eVar.i(8, videoDetailPlayBean.getThumbnail());
            }
            if (videoDetailPlayBean.getVideoUrl() == null) {
                eVar.g(9);
            } else {
                eVar.i(9, videoDetailPlayBean.getVideoUrl());
            }
            eVar.c(10, videoDetailPlayBean.getTimeStamp());
            if (videoDetailPlayBean.getSubtitleSelectId() == null) {
                eVar.g(11);
            } else {
                eVar.i(11, videoDetailPlayBean.getSubtitleSelectId());
            }
            if (videoDetailPlayBean.getTotalDuration() == null) {
                eVar.g(12);
            } else {
                eVar.c(12, videoDetailPlayBean.getTotalDuration().longValue());
            }
            if (videoDetailPlayBean.getSubjectDurationSeconds() == null) {
                eVar.g(13);
            } else {
                eVar.c(13, videoDetailPlayBean.getSubjectDurationSeconds().longValue());
            }
            if (videoDetailPlayBean.getAverageHueLight() == null) {
                eVar.g(14);
            } else {
                eVar.i(14, videoDetailPlayBean.getAverageHueLight());
            }
            if (videoDetailPlayBean.getSubjectType() == null) {
                eVar.g(15);
            } else {
                eVar.c(15, videoDetailPlayBean.getSubjectType().intValue());
            }
            eVar.c(16, videoDetailPlayBean.getHasDelete() ? 1L : 0L);
            if (videoDetailPlayBean.getPlayMode() == null) {
                eVar.g(17);
            } else {
                eVar.i(17, videoDetailPlayBean.getPlayMode());
            }
            if (videoDetailPlayBean.getDownloadUrl() == null) {
                eVar.g(18);
            } else {
                eVar.i(18, videoDetailPlayBean.getDownloadUrl());
            }
            if (videoDetailPlayBean.getDownloadFilePath() == null) {
                eVar.g(19);
            } else {
                eVar.i(19, videoDetailPlayBean.getDownloadFilePath());
            }
            eVar.c(20, videoDetailPlayBean.getDownloadSize());
            String strA = z0.this.f42109c.a(videoDetailPlayBean.getDubs());
            if (strA == null) {
                eVar.g(21);
            } else {
                eVar.i(21, strA);
            }
            if (videoDetailPlayBean.getLastAdStartTimeStamp() == null) {
                eVar.g(22);
            } else {
                eVar.c(22, videoDetailPlayBean.getLastAdStartTimeStamp().longValue());
            }
            if (videoDetailPlayBean.getLastAdEndTimeStamp() == null) {
                eVar.g(23);
            } else {
                eVar.c(23, videoDetailPlayBean.getLastAdEndTimeStamp().longValue());
            }
            eVar.c(24, videoDetailPlayBean.getRewardPlayed() ? 1L : 0L);
            eVar.c(25, videoDetailPlayBean.getRewardUnlock() ? 1L : 0L);
            eVar.c(26, videoDetailPlayBean.getRewardFree() ? 1L : 0L);
            if (videoDetailPlayBean.getOps() == null) {
                eVar.g(27);
            } else {
                eVar.i(27, videoDetailPlayBean.getOps());
            }
            if (videoDetailPlayBean.getSubjectId() == null) {
                eVar.g(28);
            } else {
                eVar.i(28, videoDetailPlayBean.getSubjectId());
            }
            eVar.c(29, videoDetailPlayBean.getEp());
            eVar.c(30, videoDetailPlayBean.getSe());
        }
    }

    public z0(RoomDatabase roomDatabase) {
        this.f42107a = roomDatabase;
    }

    public static List E() {
        return Collections.emptyList();
    }

    public Unit F(VideoDetailPlayBean videoDetailPlayBean, y3.b bVar) throws Exception {
        this.f42110d.c(bVar, videoDetailPlayBean);
        return Unit.f64096a;
    }

    public static Unit G(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM VIDEO_DETAIL_PLAY");
        try {
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    public VideoDetailPlayBean H(String str, y3.b bVar) throws Throwable {
        y3.e eVarF0 = bVar.F0("SELECT * FROM VIDEO_DETAIL_PLAY WHERE subjectId = ? ORDER BY timeStamp DESC LIMIT 1");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC2 = androidx.room.util.i.c(eVarF0, "id");
            int iC3 = androidx.room.util.i.c(eVarF0, "ep");
            int iC4 = androidx.room.util.i.c(eVarF0, "se");
            int iC5 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC6 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC7 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC8 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC9 = androidx.room.util.i.c(eVarF0, "videoUrl");
            int iC10 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC12 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC13 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC14 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC15 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC16 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC17 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC18 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC19 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC20 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC21 = androidx.room.util.i.c(eVarF0, "dubs");
            int iC22 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC23 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC24 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC25 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC26 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC27 = androidx.room.util.i.c(eVarF0, "ops");
            VideoDetailPlayBean videoDetailPlayBean = null;
            if (eVarF0.C0()) {
                try {
                    videoDetailPlayBean = new VideoDetailPlayBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), (int) eVarF0.getLong(iC3), (int) eVarF0.getLong(iC4), eVarF0.getLong(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.getLong(iC10), eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11), eVarF0.isNull(iC12) ? null : Long.valueOf(eVarF0.getLong(iC12)), eVarF0.isNull(iC13) ? null : Long.valueOf(eVarF0.getLong(iC13)), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r61) ? null : Integer.valueOf((int) eVarF0.getLong(iC15)), ((int) eVarF0.getLong(iC16)) != 0, eVarF0.isNull(r17) ? null : eVarF0.q0(iC17), eVarF0.isNull(r18) ? null : eVarF0.q0(iC18), eVarF0.isNull(r19) ? null : eVarF0.q0(iC19), eVarF0.getLong(iC20), this.f42109c.b(eVarF0.isNull(iC21) ? null : eVarF0.q0(iC21)), eVarF0.isNull(iC22) ? null : Long.valueOf(eVarF0.getLong(iC22)), eVarF0.isNull(r23) ? null : Long.valueOf(eVarF0.getLong(iC23)), ((int) eVarF0.getLong(iC24)) != 0, ((int) eVarF0.getLong(iC25)) != 0, ((int) eVarF0.getLong(iC26)) != 0, eVarF0.isNull(iC27) ? null : eVarF0.q0(iC27));
                } catch (Throwable th2) {
                    th = th2;
                    eVarF0.close();
                    throw th;
                }
            }
            eVarF0.close();
            return videoDetailPlayBean;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public VideoDetailPlayBean I(int i10, int i11, String str, y3.b bVar) throws Throwable {
        y3.e eVarF0 = bVar.F0("SELECT * FROM VIDEO_DETAIL_PLAY WHERE se = ? AND ep = ? AND subjectId = ? ORDER BY timeStamp DESC LIMIT 1");
        try {
            eVarF0.c(1, i10);
            eVarF0.c(2, i11);
            if (str == null) {
                eVarF0.g(3);
            } else {
                eVarF0.i(3, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC2 = androidx.room.util.i.c(eVarF0, "id");
            int iC3 = androidx.room.util.i.c(eVarF0, "ep");
            int iC4 = androidx.room.util.i.c(eVarF0, "se");
            int iC5 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC6 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC7 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC8 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC9 = androidx.room.util.i.c(eVarF0, "videoUrl");
            int iC10 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC12 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC13 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC14 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC15 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC16 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC17 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC18 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC19 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC20 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC21 = androidx.room.util.i.c(eVarF0, "dubs");
            int iC22 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC23 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC24 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC25 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC26 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC27 = androidx.room.util.i.c(eVarF0, "ops");
            VideoDetailPlayBean videoDetailPlayBean = null;
            if (eVarF0.C0()) {
                try {
                    videoDetailPlayBean = new VideoDetailPlayBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), (int) eVarF0.getLong(iC3), (int) eVarF0.getLong(iC4), eVarF0.getLong(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.getLong(iC10), eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11), eVarF0.isNull(iC12) ? null : Long.valueOf(eVarF0.getLong(iC12)), eVarF0.isNull(iC13) ? null : Long.valueOf(eVarF0.getLong(iC13)), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r60) ? null : Integer.valueOf((int) eVarF0.getLong(iC15)), ((int) eVarF0.getLong(iC16)) != 0, eVarF0.isNull(r62) ? null : eVarF0.q0(iC17), eVarF0.isNull(r16) ? null : eVarF0.q0(iC18), eVarF0.isNull(r17) ? null : eVarF0.q0(iC19), eVarF0.getLong(iC20), this.f42109c.b(eVarF0.isNull(iC21) ? null : eVarF0.q0(iC21)), eVarF0.isNull(iC22) ? null : Long.valueOf(eVarF0.getLong(iC22)), eVarF0.isNull(r21) ? null : Long.valueOf(eVarF0.getLong(iC23)), ((int) eVarF0.getLong(iC24)) != 0, ((int) eVarF0.getLong(iC25)) != 0, ((int) eVarF0.getLong(iC26)) != 0, eVarF0.isNull(iC27) ? null : eVarF0.q0(iC27));
                } catch (Throwable th2) {
                    th = th2;
                    eVarF0.close();
                    throw th;
                }
            }
            eVarF0.close();
            return videoDetailPlayBean;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public VideoDetailPlayBean J(String str, int i10, int i11, y3.b bVar) throws Throwable {
        y3.e eVarF0 = bVar.F0("SELECT * FROM VIDEO_DETAIL_PLAY WHERE subjectId = ? AND se = ? AND ep = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            eVarF0.c(2, i10);
            eVarF0.c(3, i11);
            int iC = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC2 = androidx.room.util.i.c(eVarF0, "id");
            int iC3 = androidx.room.util.i.c(eVarF0, "ep");
            int iC4 = androidx.room.util.i.c(eVarF0, "se");
            int iC5 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC6 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC7 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC8 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC9 = androidx.room.util.i.c(eVarF0, "videoUrl");
            int iC10 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC12 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC13 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC14 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC15 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC16 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC17 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC18 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC19 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC20 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC21 = androidx.room.util.i.c(eVarF0, "dubs");
            int iC22 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC23 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC24 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC25 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC26 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC27 = androidx.room.util.i.c(eVarF0, "ops");
            VideoDetailPlayBean videoDetailPlayBean = null;
            if (eVarF0.C0()) {
                try {
                    videoDetailPlayBean = new VideoDetailPlayBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), (int) eVarF0.getLong(iC3), (int) eVarF0.getLong(iC4), eVarF0.getLong(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.getLong(iC10), eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11), eVarF0.isNull(iC12) ? null : Long.valueOf(eVarF0.getLong(iC12)), eVarF0.isNull(iC13) ? null : Long.valueOf(eVarF0.getLong(iC13)), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r59) ? null : Integer.valueOf((int) eVarF0.getLong(iC15)), ((int) eVarF0.getLong(iC16)) != 0, eVarF0.isNull(r61) ? null : eVarF0.q0(iC17), eVarF0.isNull(r16) ? null : eVarF0.q0(iC18), eVarF0.isNull(r17) ? null : eVarF0.q0(iC19), eVarF0.getLong(iC20), this.f42109c.b(eVarF0.isNull(iC21) ? null : eVarF0.q0(iC21)), eVarF0.isNull(iC22) ? null : Long.valueOf(eVarF0.getLong(iC22)), eVarF0.isNull(r21) ? null : Long.valueOf(eVarF0.getLong(iC23)), ((int) eVarF0.getLong(iC24)) != 0, ((int) eVarF0.getLong(iC25)) != 0, ((int) eVarF0.getLong(iC26)) != 0, eVarF0.isNull(iC27) ? null : eVarF0.q0(iC27));
                } catch (Throwable th2) {
                    th = th2;
                    eVarF0.close();
                    throw th;
                }
            }
            eVarF0.close();
            return videoDetailPlayBean;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public List K(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM VIDEO_DETAIL_PLAY WHERE subjectId = ? ORDER BY timeStamp DESC");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC2 = androidx.room.util.i.c(eVarF0, "id");
            int iC3 = androidx.room.util.i.c(eVarF0, "ep");
            int iC4 = androidx.room.util.i.c(eVarF0, "se");
            int iC5 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC6 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC7 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC8 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC9 = androidx.room.util.i.c(eVarF0, "videoUrl");
            int iC10 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC12 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC13 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC14 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC15 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC16 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC17 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC18 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC19 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC20 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC21 = androidx.room.util.i.c(eVarF0, "dubs");
            int iC22 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC23 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC24 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC25 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC26 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC27 = androidx.room.util.i.c(eVarF0, "ops");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                int i10 = (int) eVarF0.getLong(iC3);
                int i11 = iC3;
                int i12 = (int) eVarF0.getLong(iC4);
                long j10 = eVarF0.getLong(iC5);
                String strQ2 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ3 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ4 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                String strQ5 = eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9);
                long j11 = eVarF0.getLong(iC10);
                String strQ6 = eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11);
                Long lValueOf = eVarF0.isNull(iC12) ? null : Long.valueOf(eVarF0.getLong(iC12));
                Long lValueOf2 = eVarF0.isNull(iC13) ? null : Long.valueOf(eVarF0.getLong(iC13));
                String strQ7 = eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14);
                Integer numValueOf = eVarF0.isNull(iC15) ? null : Integer.valueOf((int) eVarF0.getLong(iC15));
                int i13 = iC6;
                boolean z10 = ((int) eVarF0.getLong(iC16)) != 0;
                String strQ8 = eVarF0.isNull(iC17) ? null : eVarF0.q0(iC17);
                String strQ9 = eVarF0.isNull(iC18) ? null : eVarF0.q0(iC18);
                String strQ10 = eVarF0.isNull(iC19) ? null : eVarF0.q0(iC19);
                long j12 = eVarF0.getLong(iC20);
                iC20 = iC20;
                int i14 = iC21;
                ArrayList arrayListB = this.f42109c.b(eVarF0.isNull(i14) ? null : eVarF0.q0(i14));
                iC22 = iC22;
                Long lValueOf3 = eVarF0.isNull(iC22) ? null : Long.valueOf(eVarF0.getLong(iC22));
                Long lValueOf4 = eVarF0.isNull(iC23) ? null : Long.valueOf(eVarF0.getLong(iC23));
                int i15 = (int) eVarF0.getLong(iC24);
                int i16 = iC17;
                boolean z11 = i15 != 0;
                int i17 = (int) eVarF0.getLong(iC25);
                int i18 = iC18;
                VideoDetailPlayBean videoDetailPlayBean = new VideoDetailPlayBean(strQ0, strQ1, i10, i12, j10, strQ2, strQ3, strQ4, strQ5, j11, strQ6, lValueOf, lValueOf2, strQ7, numValueOf, z10, strQ8, strQ9, strQ10, j12, arrayListB, lValueOf3, lValueOf4, z11, i17 != 0, ((int) eVarF0.getLong(iC26)) != 0, eVarF0.isNull(iC27) ? null : eVarF0.q0(iC27));
                arrayList = arrayList;
                arrayList.add(videoDetailPlayBean);
                iC26 = iC26;
                iC27 = iC27;
                iC6 = i13;
                iC17 = i16;
                iC2 = iC2;
                iC5 = iC5;
                iC16 = iC16;
                iC4 = iC4;
                iC24 = iC24;
                iC = iC;
                iC15 = iC15;
                iC18 = i18;
                iC21 = i14;
                iC25 = iC25;
                iC3 = i11;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public VideoDetailPlayBean L(String str, y3.b bVar) throws Throwable {
        y3.e eVarF0 = bVar.F0("SELECT * FROM VIDEO_DETAIL_PLAY WHERE dubs LIKE '%' || ? || '%' ORDER BY timeStamp DESC LIMIT 1");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC2 = androidx.room.util.i.c(eVarF0, "id");
            int iC3 = androidx.room.util.i.c(eVarF0, "ep");
            int iC4 = androidx.room.util.i.c(eVarF0, "se");
            int iC5 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC6 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC7 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC8 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC9 = androidx.room.util.i.c(eVarF0, "videoUrl");
            int iC10 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC12 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC13 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC14 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC15 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC16 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC17 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC18 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC19 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC20 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC21 = androidx.room.util.i.c(eVarF0, "dubs");
            int iC22 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC23 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC24 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC25 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC26 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC27 = androidx.room.util.i.c(eVarF0, "ops");
            VideoDetailPlayBean videoDetailPlayBean = null;
            if (eVarF0.C0()) {
                try {
                    videoDetailPlayBean = new VideoDetailPlayBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), (int) eVarF0.getLong(iC3), (int) eVarF0.getLong(iC4), eVarF0.getLong(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.getLong(iC10), eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11), eVarF0.isNull(iC12) ? null : Long.valueOf(eVarF0.getLong(iC12)), eVarF0.isNull(iC13) ? null : Long.valueOf(eVarF0.getLong(iC13)), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r61) ? null : Integer.valueOf((int) eVarF0.getLong(iC15)), ((int) eVarF0.getLong(iC16)) != 0, eVarF0.isNull(r17) ? null : eVarF0.q0(iC17), eVarF0.isNull(r18) ? null : eVarF0.q0(iC18), eVarF0.isNull(r19) ? null : eVarF0.q0(iC19), eVarF0.getLong(iC20), this.f42109c.b(eVarF0.isNull(iC21) ? null : eVarF0.q0(iC21)), eVarF0.isNull(iC22) ? null : Long.valueOf(eVarF0.getLong(iC22)), eVarF0.isNull(r23) ? null : Long.valueOf(eVarF0.getLong(iC23)), ((int) eVarF0.getLong(iC24)) != 0, ((int) eVarF0.getLong(iC25)) != 0, ((int) eVarF0.getLong(iC26)) != 0, eVarF0.isNull(iC27) ? null : eVarF0.q0(iC27));
                } catch (Throwable th2) {
                    th = th2;
                    eVarF0.close();
                    throw th;
                }
            }
            eVarF0.close();
            return videoDetailPlayBean;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public List M(int i10, int i11, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL AND rowid IN (SELECT rowid FROM (SELECT rowid, subjectId, MAX(timeStamp) as maxTimeStamp FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL GROUP BY subjectId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?;");
        try {
            eVarF0.c(1, i10);
            eVarF0.c(2, i11);
            int iC = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC2 = androidx.room.util.i.c(eVarF0, "id");
            int iC3 = androidx.room.util.i.c(eVarF0, "ep");
            int iC4 = androidx.room.util.i.c(eVarF0, "se");
            int iC5 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC6 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC7 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC8 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC9 = androidx.room.util.i.c(eVarF0, "videoUrl");
            int iC10 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC12 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC13 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC14 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC15 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC16 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC17 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC18 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC19 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC20 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC21 = androidx.room.util.i.c(eVarF0, "dubs");
            int iC22 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC23 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC24 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC25 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC26 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC27 = androidx.room.util.i.c(eVarF0, "ops");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                int i12 = (int) eVarF0.getLong(iC3);
                int i13 = iC3;
                int i14 = (int) eVarF0.getLong(iC4);
                long j10 = eVarF0.getLong(iC5);
                String strQ2 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ3 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ4 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                String strQ5 = eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9);
                long j11 = eVarF0.getLong(iC10);
                String strQ6 = eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11);
                Long lValueOf = eVarF0.isNull(iC12) ? null : Long.valueOf(eVarF0.getLong(iC12));
                Long lValueOf2 = eVarF0.isNull(iC13) ? null : Long.valueOf(eVarF0.getLong(iC13));
                String strQ7 = eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14);
                Integer numValueOf = eVarF0.isNull(iC15) ? null : Integer.valueOf((int) eVarF0.getLong(iC15));
                int i15 = iC16;
                int i16 = iC6;
                boolean z10 = ((int) eVarF0.getLong(i15)) != 0;
                String strQ8 = eVarF0.isNull(iC17) ? null : eVarF0.q0(iC17);
                String strQ9 = eVarF0.isNull(iC18) ? null : eVarF0.q0(iC18);
                String strQ10 = eVarF0.isNull(iC19) ? null : eVarF0.q0(iC19);
                long j12 = eVarF0.getLong(iC20);
                iC20 = iC20;
                int i17 = iC21;
                ArrayList arrayListB = this.f42109c.b(eVarF0.isNull(i17) ? null : eVarF0.q0(i17));
                iC22 = iC22;
                Long lValueOf3 = eVarF0.isNull(iC22) ? null : Long.valueOf(eVarF0.getLong(iC22));
                Long lValueOf4 = eVarF0.isNull(iC23) ? null : Long.valueOf(eVarF0.getLong(iC23));
                int i18 = (int) eVarF0.getLong(iC24);
                int i19 = iC18;
                boolean z11 = i18 != 0;
                int i20 = (int) eVarF0.getLong(iC25);
                int i21 = iC24;
                iC25 = iC25;
                arrayList.add(new VideoDetailPlayBean(strQ0, strQ1, i12, i14, j10, strQ2, strQ3, strQ4, strQ5, j11, strQ6, lValueOf, lValueOf2, strQ7, numValueOf, z10, strQ8, strQ9, strQ10, j12, arrayListB, lValueOf3, lValueOf4, z11, i20 != 0, ((int) eVarF0.getLong(iC26)) != 0, eVarF0.isNull(iC27) ? null : eVarF0.q0(iC27)));
                iC4 = iC4;
                iC27 = iC27;
                iC26 = iC26;
                iC15 = iC15;
                iC18 = i19;
                iC = iC;
                iC2 = iC2;
                iC3 = i13;
                iC5 = iC5;
                iC17 = iC17;
                iC24 = i21;
                iC6 = i16;
                iC16 = i15;
                iC21 = i17;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static Long N(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT SUM(progress) AS totalProgress FROM VIDEO_DETAIL_PLAY WHERE subjectId = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            Long lValueOf = null;
            if (eVarF0.C0() && !eVarF0.isNull(0)) {
                lValueOf = Long.valueOf(eVarF0.getLong(0));
            }
            eVarF0.close();
            return lValueOf;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public List O(int i10, int i11, int i12, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL AND subjectType=? AND subjectDurationSeconds > 0 AND rowid IN (SELECT rowid FROM (SELECT rowid, subjectId, MAX(timeStamp) as maxTimeStamp FROM VIDEO_DETAIL_PLAY WHERE coverUrl IS NOT NULL GROUP BY subjectId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?;");
        try {
            eVarF0.c(1, i10);
            eVarF0.c(2, i11);
            eVarF0.c(3, i12);
            int iC = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC2 = androidx.room.util.i.c(eVarF0, "id");
            int iC3 = androidx.room.util.i.c(eVarF0, "ep");
            int iC4 = androidx.room.util.i.c(eVarF0, "se");
            int iC5 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC6 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC7 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC8 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC9 = androidx.room.util.i.c(eVarF0, "videoUrl");
            int iC10 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC11 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC12 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC13 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC14 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC15 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC16 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC17 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC18 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC19 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC20 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC21 = androidx.room.util.i.c(eVarF0, "dubs");
            int iC22 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC23 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC24 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC25 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC26 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC27 = androidx.room.util.i.c(eVarF0, "ops");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                int i13 = (int) eVarF0.getLong(iC3);
                int i14 = iC3;
                int i15 = (int) eVarF0.getLong(iC4);
                long j10 = eVarF0.getLong(iC5);
                String strQ2 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ3 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                String strQ4 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                String strQ5 = eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9);
                long j11 = eVarF0.getLong(iC10);
                String strQ6 = eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11);
                Long lValueOf = eVarF0.isNull(iC12) ? null : Long.valueOf(eVarF0.getLong(iC12));
                Long lValueOf2 = eVarF0.isNull(iC13) ? null : Long.valueOf(eVarF0.getLong(iC13));
                String strQ7 = eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14);
                Integer numValueOf = eVarF0.isNull(iC15) ? null : Integer.valueOf((int) eVarF0.getLong(iC15));
                int i16 = iC16;
                int i17 = iC6;
                boolean z10 = ((int) eVarF0.getLong(i16)) != 0;
                String strQ8 = eVarF0.isNull(iC17) ? null : eVarF0.q0(iC17);
                String strQ9 = eVarF0.isNull(iC18) ? null : eVarF0.q0(iC18);
                String strQ10 = eVarF0.isNull(iC19) ? null : eVarF0.q0(iC19);
                long j12 = eVarF0.getLong(iC20);
                iC20 = iC20;
                int i18 = iC21;
                ArrayList arrayListB = this.f42109c.b(eVarF0.isNull(i18) ? null : eVarF0.q0(i18));
                iC22 = iC22;
                Long lValueOf3 = eVarF0.isNull(iC22) ? null : Long.valueOf(eVarF0.getLong(iC22));
                Long lValueOf4 = eVarF0.isNull(iC23) ? null : Long.valueOf(eVarF0.getLong(iC23));
                int i19 = (int) eVarF0.getLong(iC24);
                int i20 = iC18;
                boolean z11 = i19 != 0;
                int i21 = (int) eVarF0.getLong(iC25);
                int i22 = iC24;
                iC25 = iC25;
                arrayList.add(new VideoDetailPlayBean(strQ0, strQ1, i13, i15, j10, strQ2, strQ3, strQ4, strQ5, j11, strQ6, lValueOf, lValueOf2, strQ7, numValueOf, z10, strQ8, strQ9, strQ10, j12, arrayListB, lValueOf3, lValueOf4, z11, i21 != 0, ((int) eVarF0.getLong(iC26)) != 0, eVarF0.isNull(iC27) ? null : eVarF0.q0(iC27)));
                iC4 = iC4;
                iC27 = iC27;
                iC26 = iC26;
                iC15 = iC15;
                iC18 = i20;
                iC = iC;
                iC2 = iC2;
                iC3 = i14;
                iC5 = iC5;
                iC17 = iC17;
                iC24 = i22;
                iC6 = i17;
                iC16 = i16;
                iC21 = i18;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public Unit P(VideoDetailPlayBean videoDetailPlayBean, y3.b bVar) throws Exception {
        this.f42108b.d(bVar, videoDetailPlayBean);
        return Unit.f64096a;
    }

    public Unit Q(VideoDetailPlayBean videoDetailPlayBean, y3.b bVar) throws Exception {
        this.f42111e.c(bVar, videoDetailPlayBean);
        return Unit.f64096a;
    }

    public static Unit R(String str, String str2, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE VIDEO_DETAIL_PLAY SET subtitleSelectId = ? WHERE subjectId = ? ");
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

    @Override
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f42107a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return z0.G((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f42107a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return z0.R(str2, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(String str, Continuation continuation) {
        return VideoDetailPlayDao.DefaultImpls.a(this, str, continuation);
    }

    @Override
    public Object d(final int i10, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f42107a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42081a.M(i11, i10, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object e(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f42107a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42098a.H(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object f(String str, int i10, int i11, long j10, long j11, Continuation continuation) {
        return VideoDetailPlayDao.DefaultImpls.c(this, str, i10, i11, j10, j11, continuation);
    }

    @Override
    public Object g(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f42107a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return z0.N(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object h(final VideoDetailPlayBean videoDetailPlayBean, Continuation continuation) {
        videoDetailPlayBean.getClass();
        return androidx.room.util.b.f(this.f42107a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42059a.F(videoDetailPlayBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object i(final int i10, final int i11, final int i12, Continuation continuation) {
        return androidx.room.util.b.f(this.f42107a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42076a.O(i12, i11, i10, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object j(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f42107a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42055a.K(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object k(final VideoDetailPlayBean videoDetailPlayBean, Continuation continuation) {
        videoDetailPlayBean.getClass();
        return androidx.room.util.b.f(this.f42107a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42085a.Q(videoDetailPlayBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object l(final String str, final int i10, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f42107a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42090a.I(i10, i11, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object m(final String str, final int i10, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f42107a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42069a.J(str, i10, i11, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object n(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f42107a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42100a.L(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object o(final VideoDetailPlayBean videoDetailPlayBean, Continuation continuation) {
        videoDetailPlayBean.getClass();
        return androidx.room.util.b.f(this.f42107a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42052a.P(videoDetailPlayBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object p(VideoDetailPlayBean videoDetailPlayBean, Continuation continuation) {
        return VideoDetailPlayDao.DefaultImpls.b(this, videoDetailPlayBean, continuation);
    }
}
