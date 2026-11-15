package com.transsion.baselib.db.video;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.config.utils.CommonUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class j0 implements UGCVideoDetailPlayDao {

    private final RoomDatabase f42033a;

    private final androidx.room.g f42034b = new a();

    private final androidx.room.e f42035c = new b();

    private final androidx.room.e f42036d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `ugc_video_detail_play` (`collectionId`,`ugcVideoId`,`progress`,`title`,`coverUrl`,`thumbnail`,`position`,`type`,`cateLev1Id`,`cateLev2Id`,`cateLev3Id`,`cateLev4Id`,`timeStamp`,`subtitleSelectId`,`totalDuration`,`subjectDurationSeconds`,`averageHueLight`,`subjectType`,`hasDelete`,`playMode`,`downloadUrl`,`downloadResid`,`downloadFilePath`,`downloadSize`,`lastAdStartTimeStamp`,`lastAdEndTimeStamp`,`rewardPlayed`,`rewardUnlock`,`rewardFree`,`ops`,`uid`,`userName`,`userAvatar`,`description`,`videoStyle`,`kidId`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, UGCVideoDetailPlayBean uGCVideoDetailPlayBean) {
            if (uGCVideoDetailPlayBean.getCollectionId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, uGCVideoDetailPlayBean.getCollectionId());
            }
            if (uGCVideoDetailPlayBean.getUgcVideoId() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, uGCVideoDetailPlayBean.getUgcVideoId());
            }
            eVar.c(3, uGCVideoDetailPlayBean.getProgress());
            if (uGCVideoDetailPlayBean.getTitle() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, uGCVideoDetailPlayBean.getTitle());
            }
            if (uGCVideoDetailPlayBean.getCoverUrl() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, uGCVideoDetailPlayBean.getCoverUrl());
            }
            if (uGCVideoDetailPlayBean.getThumbnail() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, uGCVideoDetailPlayBean.getThumbnail());
            }
            eVar.c(7, uGCVideoDetailPlayBean.getPosition());
            if (uGCVideoDetailPlayBean.getType() == null) {
                eVar.g(8);
            } else {
                eVar.i(8, uGCVideoDetailPlayBean.getType());
            }
            if (uGCVideoDetailPlayBean.getCateLev1Id() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, uGCVideoDetailPlayBean.getCateLev1Id().intValue());
            }
            if (uGCVideoDetailPlayBean.getCateLev2Id() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, uGCVideoDetailPlayBean.getCateLev2Id().intValue());
            }
            if (uGCVideoDetailPlayBean.getCateLev3Id() == null) {
                eVar.g(11);
            } else {
                eVar.c(11, uGCVideoDetailPlayBean.getCateLev3Id().intValue());
            }
            if (uGCVideoDetailPlayBean.getCateLev4Id() == null) {
                eVar.g(12);
            } else {
                eVar.c(12, uGCVideoDetailPlayBean.getCateLev4Id().intValue());
            }
            eVar.c(13, uGCVideoDetailPlayBean.getTimeStamp());
            if (uGCVideoDetailPlayBean.getSubtitleSelectId() == null) {
                eVar.g(14);
            } else {
                eVar.i(14, uGCVideoDetailPlayBean.getSubtitleSelectId());
            }
            if (uGCVideoDetailPlayBean.getTotalDuration() == null) {
                eVar.g(15);
            } else {
                eVar.c(15, uGCVideoDetailPlayBean.getTotalDuration().longValue());
            }
            if (uGCVideoDetailPlayBean.getSubjectDurationSeconds() == null) {
                eVar.g(16);
            } else {
                eVar.c(16, uGCVideoDetailPlayBean.getSubjectDurationSeconds().longValue());
            }
            if (uGCVideoDetailPlayBean.getAverageHueLight() == null) {
                eVar.g(17);
            } else {
                eVar.i(17, uGCVideoDetailPlayBean.getAverageHueLight());
            }
            if (uGCVideoDetailPlayBean.getSubjectType() == null) {
                eVar.g(18);
            } else {
                eVar.c(18, uGCVideoDetailPlayBean.getSubjectType().intValue());
            }
            eVar.c(19, uGCVideoDetailPlayBean.getHasDelete() ? 1L : 0L);
            if (uGCVideoDetailPlayBean.getPlayMode() == null) {
                eVar.g(20);
            } else {
                eVar.i(20, uGCVideoDetailPlayBean.getPlayMode());
            }
            if (uGCVideoDetailPlayBean.getDownloadUrl() == null) {
                eVar.g(21);
            } else {
                eVar.i(21, uGCVideoDetailPlayBean.getDownloadUrl());
            }
            if (uGCVideoDetailPlayBean.getDownloadResid() == null) {
                eVar.g(22);
            } else {
                eVar.i(22, uGCVideoDetailPlayBean.getDownloadResid());
            }
            if (uGCVideoDetailPlayBean.getDownloadFilePath() == null) {
                eVar.g(23);
            } else {
                eVar.i(23, uGCVideoDetailPlayBean.getDownloadFilePath());
            }
            eVar.c(24, uGCVideoDetailPlayBean.getDownloadSize());
            if (uGCVideoDetailPlayBean.getLastAdStartTimeStamp() == null) {
                eVar.g(25);
            } else {
                eVar.c(25, uGCVideoDetailPlayBean.getLastAdStartTimeStamp().longValue());
            }
            if (uGCVideoDetailPlayBean.getLastAdEndTimeStamp() == null) {
                eVar.g(26);
            } else {
                eVar.c(26, uGCVideoDetailPlayBean.getLastAdEndTimeStamp().longValue());
            }
            eVar.c(27, uGCVideoDetailPlayBean.getRewardPlayed() ? 1L : 0L);
            eVar.c(28, uGCVideoDetailPlayBean.getRewardUnlock() ? 1L : 0L);
            eVar.c(29, uGCVideoDetailPlayBean.getRewardFree() ? 1L : 0L);
            if (uGCVideoDetailPlayBean.getOps() == null) {
                eVar.g(30);
            } else {
                eVar.i(30, uGCVideoDetailPlayBean.getOps());
            }
            if (uGCVideoDetailPlayBean.getUid() == null) {
                eVar.g(31);
            } else {
                eVar.i(31, uGCVideoDetailPlayBean.getUid());
            }
            if (uGCVideoDetailPlayBean.getUserName() == null) {
                eVar.g(32);
            } else {
                eVar.i(32, uGCVideoDetailPlayBean.getUserName());
            }
            if (uGCVideoDetailPlayBean.getUserAvatar() == null) {
                eVar.g(33);
            } else {
                eVar.i(33, uGCVideoDetailPlayBean.getUserAvatar());
            }
            if (uGCVideoDetailPlayBean.getDescription() == null) {
                eVar.g(34);
            } else {
                eVar.i(34, uGCVideoDetailPlayBean.getDescription());
            }
            if (uGCVideoDetailPlayBean.getVideoStyle() == null) {
                eVar.g(35);
            } else {
                eVar.i(35, uGCVideoDetailPlayBean.getVideoStyle());
            }
            if (uGCVideoDetailPlayBean.getKidId() == null) {
                eVar.g(36);
            } else {
                eVar.i(36, uGCVideoDetailPlayBean.getKidId());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "DELETE FROM `ugc_video_detail_play` WHERE `collectionId` = ?";
        }

        @Override
        public void a(y3.e eVar, UGCVideoDetailPlayBean uGCVideoDetailPlayBean) {
            if (uGCVideoDetailPlayBean.getCollectionId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, uGCVideoDetailPlayBean.getCollectionId());
            }
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `ugc_video_detail_play` SET `collectionId` = ?,`ugcVideoId` = ?,`progress` = ?,`title` = ?,`coverUrl` = ?,`thumbnail` = ?,`position` = ?,`type` = ?,`cateLev1Id` = ?,`cateLev2Id` = ?,`cateLev3Id` = ?,`cateLev4Id` = ?,`timeStamp` = ?,`subtitleSelectId` = ?,`totalDuration` = ?,`subjectDurationSeconds` = ?,`averageHueLight` = ?,`subjectType` = ?,`hasDelete` = ?,`playMode` = ?,`downloadUrl` = ?,`downloadResid` = ?,`downloadFilePath` = ?,`downloadSize` = ?,`lastAdStartTimeStamp` = ?,`lastAdEndTimeStamp` = ?,`rewardPlayed` = ?,`rewardUnlock` = ?,`rewardFree` = ?,`ops` = ?,`uid` = ?,`userName` = ?,`userAvatar` = ?,`description` = ?,`videoStyle` = ?,`kidId` = ? WHERE `collectionId` = ?";
        }

        @Override
        public void a(y3.e eVar, UGCVideoDetailPlayBean uGCVideoDetailPlayBean) {
            if (uGCVideoDetailPlayBean.getCollectionId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, uGCVideoDetailPlayBean.getCollectionId());
            }
            if (uGCVideoDetailPlayBean.getUgcVideoId() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, uGCVideoDetailPlayBean.getUgcVideoId());
            }
            eVar.c(3, uGCVideoDetailPlayBean.getProgress());
            if (uGCVideoDetailPlayBean.getTitle() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, uGCVideoDetailPlayBean.getTitle());
            }
            if (uGCVideoDetailPlayBean.getCoverUrl() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, uGCVideoDetailPlayBean.getCoverUrl());
            }
            if (uGCVideoDetailPlayBean.getThumbnail() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, uGCVideoDetailPlayBean.getThumbnail());
            }
            eVar.c(7, uGCVideoDetailPlayBean.getPosition());
            if (uGCVideoDetailPlayBean.getType() == null) {
                eVar.g(8);
            } else {
                eVar.i(8, uGCVideoDetailPlayBean.getType());
            }
            if (uGCVideoDetailPlayBean.getCateLev1Id() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, uGCVideoDetailPlayBean.getCateLev1Id().intValue());
            }
            if (uGCVideoDetailPlayBean.getCateLev2Id() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, uGCVideoDetailPlayBean.getCateLev2Id().intValue());
            }
            if (uGCVideoDetailPlayBean.getCateLev3Id() == null) {
                eVar.g(11);
            } else {
                eVar.c(11, uGCVideoDetailPlayBean.getCateLev3Id().intValue());
            }
            if (uGCVideoDetailPlayBean.getCateLev4Id() == null) {
                eVar.g(12);
            } else {
                eVar.c(12, uGCVideoDetailPlayBean.getCateLev4Id().intValue());
            }
            eVar.c(13, uGCVideoDetailPlayBean.getTimeStamp());
            if (uGCVideoDetailPlayBean.getSubtitleSelectId() == null) {
                eVar.g(14);
            } else {
                eVar.i(14, uGCVideoDetailPlayBean.getSubtitleSelectId());
            }
            if (uGCVideoDetailPlayBean.getTotalDuration() == null) {
                eVar.g(15);
            } else {
                eVar.c(15, uGCVideoDetailPlayBean.getTotalDuration().longValue());
            }
            if (uGCVideoDetailPlayBean.getSubjectDurationSeconds() == null) {
                eVar.g(16);
            } else {
                eVar.c(16, uGCVideoDetailPlayBean.getSubjectDurationSeconds().longValue());
            }
            if (uGCVideoDetailPlayBean.getAverageHueLight() == null) {
                eVar.g(17);
            } else {
                eVar.i(17, uGCVideoDetailPlayBean.getAverageHueLight());
            }
            if (uGCVideoDetailPlayBean.getSubjectType() == null) {
                eVar.g(18);
            } else {
                eVar.c(18, uGCVideoDetailPlayBean.getSubjectType().intValue());
            }
            eVar.c(19, uGCVideoDetailPlayBean.getHasDelete() ? 1L : 0L);
            if (uGCVideoDetailPlayBean.getPlayMode() == null) {
                eVar.g(20);
            } else {
                eVar.i(20, uGCVideoDetailPlayBean.getPlayMode());
            }
            if (uGCVideoDetailPlayBean.getDownloadUrl() == null) {
                eVar.g(21);
            } else {
                eVar.i(21, uGCVideoDetailPlayBean.getDownloadUrl());
            }
            if (uGCVideoDetailPlayBean.getDownloadResid() == null) {
                eVar.g(22);
            } else {
                eVar.i(22, uGCVideoDetailPlayBean.getDownloadResid());
            }
            if (uGCVideoDetailPlayBean.getDownloadFilePath() == null) {
                eVar.g(23);
            } else {
                eVar.i(23, uGCVideoDetailPlayBean.getDownloadFilePath());
            }
            eVar.c(24, uGCVideoDetailPlayBean.getDownloadSize());
            if (uGCVideoDetailPlayBean.getLastAdStartTimeStamp() == null) {
                eVar.g(25);
            } else {
                eVar.c(25, uGCVideoDetailPlayBean.getLastAdStartTimeStamp().longValue());
            }
            if (uGCVideoDetailPlayBean.getLastAdEndTimeStamp() == null) {
                eVar.g(26);
            } else {
                eVar.c(26, uGCVideoDetailPlayBean.getLastAdEndTimeStamp().longValue());
            }
            eVar.c(27, uGCVideoDetailPlayBean.getRewardPlayed() ? 1L : 0L);
            eVar.c(28, uGCVideoDetailPlayBean.getRewardUnlock() ? 1L : 0L);
            eVar.c(29, uGCVideoDetailPlayBean.getRewardFree() ? 1L : 0L);
            if (uGCVideoDetailPlayBean.getOps() == null) {
                eVar.g(30);
            } else {
                eVar.i(30, uGCVideoDetailPlayBean.getOps());
            }
            if (uGCVideoDetailPlayBean.getUid() == null) {
                eVar.g(31);
            } else {
                eVar.i(31, uGCVideoDetailPlayBean.getUid());
            }
            if (uGCVideoDetailPlayBean.getUserName() == null) {
                eVar.g(32);
            } else {
                eVar.i(32, uGCVideoDetailPlayBean.getUserName());
            }
            if (uGCVideoDetailPlayBean.getUserAvatar() == null) {
                eVar.g(33);
            } else {
                eVar.i(33, uGCVideoDetailPlayBean.getUserAvatar());
            }
            if (uGCVideoDetailPlayBean.getDescription() == null) {
                eVar.g(34);
            } else {
                eVar.i(34, uGCVideoDetailPlayBean.getDescription());
            }
            if (uGCVideoDetailPlayBean.getVideoStyle() == null) {
                eVar.g(35);
            } else {
                eVar.i(35, uGCVideoDetailPlayBean.getVideoStyle());
            }
            if (uGCVideoDetailPlayBean.getKidId() == null) {
                eVar.g(36);
            } else {
                eVar.i(36, uGCVideoDetailPlayBean.getKidId());
            }
            if (uGCVideoDetailPlayBean.getCollectionId() == null) {
                eVar.g(37);
            } else {
                eVar.i(37, uGCVideoDetailPlayBean.getCollectionId());
            }
        }
    }

    public j0(RoomDatabase roomDatabase) {
        this.f42033a = roomDatabase;
    }

    public static List P() {
        return Collections.emptyList();
    }

    public static Unit Q(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM UGC_VIDEO_DETAIL_PLAY");
        try {
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    public static Unit R(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM UGC_VIDEO_DETAIL_PLAY WHERE ugcVideoId=?");
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

    public static List S(String str, int i10, int i11, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ugc_video_detail_play WHERE kidId = ? AND coverUrl IS NOT NULL AND collectionId NOT LIKE 'SINGLE_%' AND rowid IN (SELECT rowid FROM (SELECT rowid, collectionId, MAX(timeStamp) as maxTimeStamp FROM ugc_video_detail_play WHERE kidId = ? AND coverUrl IS NOT NULL AND collectionId NOT LIKE 'SINGLE_%' GROUP BY collectionId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            if (str == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, str);
            }
            eVarF0.c(3, i10);
            eVarF0.c(4, i11);
            int iC = androidx.room.util.i.c(eVarF0, "collectionId");
            int iC2 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC3 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC4 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC5 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC6 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC7 = androidx.room.util.i.c(eVarF0, RequestParameters.POSITION);
            int iC8 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC9 = androidx.room.util.i.c(eVarF0, "cateLev1Id");
            int iC10 = androidx.room.util.i.c(eVarF0, "cateLev2Id");
            int iC11 = androidx.room.util.i.c(eVarF0, "cateLev3Id");
            int iC12 = androidx.room.util.i.c(eVarF0, "cateLev4Id");
            int iC13 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC14 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC15 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC16 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC17 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC19 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC20 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC21 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC22 = androidx.room.util.i.c(eVarF0, "downloadResid");
            int iC23 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC24 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC25 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC26 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC27 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC28 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC29 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC30 = androidx.room.util.i.c(eVarF0, "ops");
            int iC31 = androidx.room.util.i.c(eVarF0, CommonUtils.PARAM_UID);
            int iC32 = androidx.room.util.i.c(eVarF0, "userName");
            int iC33 = androidx.room.util.i.c(eVarF0, "userAvatar");
            int iC34 = androidx.room.util.i.c(eVarF0, TrackingKey.DESCRIPTION);
            int iC35 = androidx.room.util.i.c(eVarF0, "videoStyle");
            int iC36 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                long j10 = eVarF0.getLong(iC3);
                String strQ2 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                String strQ3 = eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5);
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                int i12 = (int) eVarF0.getLong(iC7);
                String strQ5 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Integer numValueOf = eVarF0.isNull(iC9) ? null : Integer.valueOf((int) eVarF0.getLong(iC9));
                Integer numValueOf2 = eVarF0.isNull(iC10) ? null : Integer.valueOf((int) eVarF0.getLong(iC10));
                Integer numValueOf3 = eVarF0.isNull(iC11) ? null : Integer.valueOf((int) eVarF0.getLong(iC11));
                Integer numValueOf4 = eVarF0.isNull(iC12) ? null : Integer.valueOf((int) eVarF0.getLong(iC12));
                long j11 = eVarF0.getLong(iC13);
                String strQ6 = eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14);
                Long lValueOf = eVarF0.isNull(iC15) ? null : Long.valueOf(eVarF0.getLong(iC15));
                Long lValueOf2 = eVarF0.isNull(iC16) ? null : Long.valueOf(eVarF0.getLong(iC16));
                iC17 = iC17;
                String strQ7 = eVarF0.isNull(iC17) ? null : eVarF0.q0(iC17);
                Integer numValueOf5 = eVarF0.isNull(iC18) ? null : Integer.valueOf((int) eVarF0.getLong(iC18));
                int i13 = iC5;
                boolean z10 = ((int) eVarF0.getLong(iC19)) != 0;
                String strQ8 = eVarF0.isNull(iC20) ? null : eVarF0.q0(iC20);
                String strQ9 = eVarF0.isNull(iC21) ? null : eVarF0.q0(iC21);
                String strQ10 = eVarF0.isNull(iC22) ? null : eVarF0.q0(iC22);
                String strQ11 = eVarF0.isNull(iC23) ? null : eVarF0.q0(iC23);
                long j12 = eVarF0.getLong(iC24);
                iC24 = iC24;
                iC25 = iC25;
                Long lValueOf3 = eVarF0.isNull(iC25) ? null : Long.valueOf(eVarF0.getLong(iC25));
                Long lValueOf4 = eVarF0.isNull(iC26) ? null : Long.valueOf(eVarF0.getLong(iC26));
                int i14 = iC19;
                boolean z11 = ((int) eVarF0.getLong(iC27)) != 0;
                int i15 = iC21;
                boolean z12 = ((int) eVarF0.getLong(iC28)) != 0;
                int i16 = iC6;
                boolean z13 = ((int) eVarF0.getLong(iC29)) != 0;
                String strQ12 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ13 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                String strQ14 = eVarF0.isNull(iC32) ? null : eVarF0.q0(iC32);
                String strQ15 = eVarF0.isNull(iC33) ? null : eVarF0.q0(iC33);
                String strQ16 = eVarF0.isNull(iC34) ? null : eVarF0.q0(iC34);
                String strQ17 = eVarF0.isNull(iC35) ? null : eVarF0.q0(iC35);
                String strQ18 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                iC36 = iC36;
                arrayList.add(new UGCVideoDetailPlayBean(strQ0, strQ1, j10, strQ2, strQ3, strQ4, i12, strQ5, numValueOf, numValueOf2, numValueOf3, numValueOf4, j11, strQ6, lValueOf, lValueOf2, strQ7, numValueOf5, z10, strQ8, strQ9, strQ10, strQ11, j12, lValueOf3, lValueOf4, z11, z12, z13, strQ12, strQ13, strQ14, strQ15, strQ16, strQ17, strQ18));
                iC = iC;
                iC30 = iC30;
                iC31 = iC31;
                iC15 = iC15;
                iC5 = i13;
                iC18 = iC18;
                iC19 = i14;
                iC21 = i15;
                iC6 = i16;
                iC2 = iC2;
                iC28 = iC28;
                iC29 = iC29;
                iC27 = iC27;
                iC3 = iC3;
                iC4 = iC4;
                iC20 = iC20;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List T(int i10, int i11, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ugc_video_detail_play WHERE (kidId IS NULL OR kidId = '') AND coverUrl IS NOT NULL AND collectionId NOT LIKE 'SINGLE_%' AND rowid IN (SELECT rowid FROM (SELECT rowid, collectionId, MAX(timeStamp) as maxTimeStamp FROM ugc_video_detail_play WHERE (kidId IS NULL OR kidId = '') AND coverUrl IS NOT NULL AND collectionId NOT LIKE 'SINGLE_%' GROUP BY collectionId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?");
        try {
            eVarF0.c(1, i10);
            eVarF0.c(2, i11);
            int iC = androidx.room.util.i.c(eVarF0, "collectionId");
            int iC2 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC3 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC4 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC5 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC6 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC7 = androidx.room.util.i.c(eVarF0, RequestParameters.POSITION);
            int iC8 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC9 = androidx.room.util.i.c(eVarF0, "cateLev1Id");
            int iC10 = androidx.room.util.i.c(eVarF0, "cateLev2Id");
            int iC11 = androidx.room.util.i.c(eVarF0, "cateLev3Id");
            int iC12 = androidx.room.util.i.c(eVarF0, "cateLev4Id");
            int iC13 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC14 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC15 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC16 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC17 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC19 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC20 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC21 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC22 = androidx.room.util.i.c(eVarF0, "downloadResid");
            int iC23 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC24 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC25 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC26 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC27 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC28 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC29 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC30 = androidx.room.util.i.c(eVarF0, "ops");
            int iC31 = androidx.room.util.i.c(eVarF0, CommonUtils.PARAM_UID);
            int iC32 = androidx.room.util.i.c(eVarF0, "userName");
            int iC33 = androidx.room.util.i.c(eVarF0, "userAvatar");
            int iC34 = androidx.room.util.i.c(eVarF0, TrackingKey.DESCRIPTION);
            int iC35 = androidx.room.util.i.c(eVarF0, "videoStyle");
            int iC36 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                long j10 = eVarF0.getLong(iC3);
                String strQ2 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                String strQ3 = eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5);
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                int i12 = (int) eVarF0.getLong(iC7);
                String strQ5 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Integer numValueOf = eVarF0.isNull(iC9) ? null : Integer.valueOf((int) eVarF0.getLong(iC9));
                Integer numValueOf2 = eVarF0.isNull(iC10) ? null : Integer.valueOf((int) eVarF0.getLong(iC10));
                Integer numValueOf3 = eVarF0.isNull(iC11) ? null : Integer.valueOf((int) eVarF0.getLong(iC11));
                Integer numValueOf4 = eVarF0.isNull(iC12) ? null : Integer.valueOf((int) eVarF0.getLong(iC12));
                long j11 = eVarF0.getLong(iC13);
                String strQ6 = eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14);
                Long lValueOf = eVarF0.isNull(iC15) ? null : Long.valueOf(eVarF0.getLong(iC15));
                Long lValueOf2 = eVarF0.isNull(iC16) ? null : Long.valueOf(eVarF0.getLong(iC16));
                String strQ7 = eVarF0.isNull(iC17) ? null : eVarF0.q0(iC17);
                Integer numValueOf5 = eVarF0.isNull(iC18) ? null : Integer.valueOf((int) eVarF0.getLong(iC18));
                int i13 = iC5;
                boolean z10 = ((int) eVarF0.getLong(iC19)) != 0;
                String strQ8 = eVarF0.isNull(iC20) ? null : eVarF0.q0(iC20);
                String strQ9 = eVarF0.isNull(iC21) ? null : eVarF0.q0(iC21);
                String strQ10 = eVarF0.isNull(iC22) ? null : eVarF0.q0(iC22);
                String strQ11 = eVarF0.isNull(iC23) ? null : eVarF0.q0(iC23);
                long j12 = eVarF0.getLong(iC24);
                iC24 = iC24;
                iC25 = iC25;
                Long lValueOf3 = eVarF0.isNull(iC25) ? null : Long.valueOf(eVarF0.getLong(iC25));
                Long lValueOf4 = eVarF0.isNull(iC26) ? null : Long.valueOf(eVarF0.getLong(iC26));
                int i14 = iC19;
                boolean z11 = ((int) eVarF0.getLong(iC27)) != 0;
                int i15 = iC21;
                int i16 = iC27;
                boolean z12 = ((int) eVarF0.getLong(iC28)) != 0;
                int i17 = iC28;
                boolean z13 = ((int) eVarF0.getLong(iC29)) != 0;
                String strQ12 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ13 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                String strQ14 = eVarF0.isNull(iC32) ? null : eVarF0.q0(iC32);
                String strQ15 = eVarF0.isNull(iC33) ? null : eVarF0.q0(iC33);
                String strQ16 = eVarF0.isNull(iC34) ? null : eVarF0.q0(iC34);
                String strQ17 = eVarF0.isNull(iC35) ? null : eVarF0.q0(iC35);
                String strQ18 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                iC36 = iC36;
                arrayList.add(new UGCVideoDetailPlayBean(strQ0, strQ1, j10, strQ2, strQ3, strQ4, i12, strQ5, numValueOf, numValueOf2, numValueOf3, numValueOf4, j11, strQ6, lValueOf, lValueOf2, strQ7, numValueOf5, z10, strQ8, strQ9, strQ10, strQ11, j12, lValueOf3, lValueOf4, z11, z12, z13, strQ12, strQ13, strQ14, strQ15, strQ16, strQ17, strQ18));
                iC31 = iC31;
                iC = iC;
                iC2 = iC2;
                iC3 = iC3;
                iC20 = iC20;
                iC4 = iC4;
                iC16 = iC16;
                iC18 = iC18;
                iC21 = i15;
                iC28 = i17;
                iC29 = iC29;
                iC27 = i16;
                iC5 = i13;
                iC19 = i14;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static UGCVideoDetailPlayBean U(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM UGC_VIDEO_DETAIL_PLAY WHERE ugcVideoId = ? AND collectionId NOT LIKE 'SINGLE_%' ORDER BY timeStamp DESC LIMIT 1");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "collectionId");
            int iC2 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC3 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC4 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC5 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC6 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC7 = androidx.room.util.i.c(eVarF0, RequestParameters.POSITION);
            int iC8 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC9 = androidx.room.util.i.c(eVarF0, "cateLev1Id");
            int iC10 = androidx.room.util.i.c(eVarF0, "cateLev2Id");
            int iC11 = androidx.room.util.i.c(eVarF0, "cateLev3Id");
            int iC12 = androidx.room.util.i.c(eVarF0, "cateLev4Id");
            int iC13 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC14 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC15 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC16 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC17 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC19 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC20 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC21 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC22 = androidx.room.util.i.c(eVarF0, "downloadResid");
            int iC23 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC24 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC25 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC26 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC27 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC28 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC29 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC30 = androidx.room.util.i.c(eVarF0, "ops");
            int iC31 = androidx.room.util.i.c(eVarF0, CommonUtils.PARAM_UID);
            int iC32 = androidx.room.util.i.c(eVarF0, "userName");
            int iC33 = androidx.room.util.i.c(eVarF0, "userAvatar");
            int iC34 = androidx.room.util.i.c(eVarF0, TrackingKey.DESCRIPTION);
            int iC35 = androidx.room.util.i.c(eVarF0, "videoStyle");
            int iC36 = androidx.room.util.i.c(eVarF0, "kidId");
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = null;
            if (eVarF0.C0()) {
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.getLong(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), (int) eVarF0.getLong(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Integer.valueOf((int) eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Integer.valueOf((int) eVarF0.getLong(iC10)), eVarF0.isNull(iC11) ? null : Integer.valueOf((int) eVarF0.getLong(iC11)), eVarF0.isNull(iC12) ? null : Integer.valueOf((int) eVarF0.getLong(iC12)), eVarF0.getLong(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r78) ? null : Long.valueOf(eVarF0.getLong(iC15)), eVarF0.isNull(r16) ? null : Long.valueOf(eVarF0.getLong(iC16)), eVarF0.isNull(r17) ? null : eVarF0.q0(iC17), eVarF0.isNull(r18) ? null : Integer.valueOf((int) eVarF0.getLong(iC18)), ((int) eVarF0.getLong(iC19)) != 0, eVarF0.isNull(r20) ? null : eVarF0.q0(iC20), eVarF0.isNull(r21) ? null : eVarF0.q0(iC21), eVarF0.isNull(r22) ? null : eVarF0.q0(iC22), eVarF0.isNull(r23) ? null : eVarF0.q0(iC23), eVarF0.getLong(iC24), eVarF0.isNull(iC25) ? null : Long.valueOf(eVarF0.getLong(iC25)), eVarF0.isNull(r26) ? null : Long.valueOf(eVarF0.getLong(iC26)), ((int) eVarF0.getLong(iC27)) != 0, ((int) eVarF0.getLong(iC28)) != 0, ((int) eVarF0.getLong(iC29)) != 0, eVarF0.isNull(r30) ? null : eVarF0.q0(iC30), eVarF0.isNull(r31) ? null : eVarF0.q0(iC31), eVarF0.isNull(r32) ? null : eVarF0.q0(iC32), eVarF0.isNull(r33) ? null : eVarF0.q0(iC33), eVarF0.isNull(r34) ? null : eVarF0.q0(iC34), eVarF0.isNull(r35) ? null : eVarF0.q0(iC35), eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36));
            }
            eVarF0.close();
            return uGCVideoDetailPlayBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static UGCVideoDetailPlayBean V(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM UGC_VIDEO_DETAIL_PLAY WHERE collectionId = ? ORDER BY timeStamp DESC LIMIT 1");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "collectionId");
            int iC2 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC3 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC4 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC5 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC6 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC7 = androidx.room.util.i.c(eVarF0, RequestParameters.POSITION);
            int iC8 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC9 = androidx.room.util.i.c(eVarF0, "cateLev1Id");
            int iC10 = androidx.room.util.i.c(eVarF0, "cateLev2Id");
            int iC11 = androidx.room.util.i.c(eVarF0, "cateLev3Id");
            int iC12 = androidx.room.util.i.c(eVarF0, "cateLev4Id");
            int iC13 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC14 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC15 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC16 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC17 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC19 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC20 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC21 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC22 = androidx.room.util.i.c(eVarF0, "downloadResid");
            int iC23 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC24 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC25 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC26 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC27 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC28 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC29 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC30 = androidx.room.util.i.c(eVarF0, "ops");
            int iC31 = androidx.room.util.i.c(eVarF0, CommonUtils.PARAM_UID);
            int iC32 = androidx.room.util.i.c(eVarF0, "userName");
            int iC33 = androidx.room.util.i.c(eVarF0, "userAvatar");
            int iC34 = androidx.room.util.i.c(eVarF0, TrackingKey.DESCRIPTION);
            int iC35 = androidx.room.util.i.c(eVarF0, "videoStyle");
            int iC36 = androidx.room.util.i.c(eVarF0, "kidId");
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = null;
            if (eVarF0.C0()) {
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.getLong(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), (int) eVarF0.getLong(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Integer.valueOf((int) eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Integer.valueOf((int) eVarF0.getLong(iC10)), eVarF0.isNull(iC11) ? null : Integer.valueOf((int) eVarF0.getLong(iC11)), eVarF0.isNull(iC12) ? null : Integer.valueOf((int) eVarF0.getLong(iC12)), eVarF0.getLong(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r78) ? null : Long.valueOf(eVarF0.getLong(iC15)), eVarF0.isNull(r16) ? null : Long.valueOf(eVarF0.getLong(iC16)), eVarF0.isNull(r17) ? null : eVarF0.q0(iC17), eVarF0.isNull(r18) ? null : Integer.valueOf((int) eVarF0.getLong(iC18)), ((int) eVarF0.getLong(iC19)) != 0, eVarF0.isNull(r20) ? null : eVarF0.q0(iC20), eVarF0.isNull(r21) ? null : eVarF0.q0(iC21), eVarF0.isNull(r22) ? null : eVarF0.q0(iC22), eVarF0.isNull(r23) ? null : eVarF0.q0(iC23), eVarF0.getLong(iC24), eVarF0.isNull(iC25) ? null : Long.valueOf(eVarF0.getLong(iC25)), eVarF0.isNull(r26) ? null : Long.valueOf(eVarF0.getLong(iC26)), ((int) eVarF0.getLong(iC27)) != 0, ((int) eVarF0.getLong(iC28)) != 0, ((int) eVarF0.getLong(iC29)) != 0, eVarF0.isNull(r30) ? null : eVarF0.q0(iC30), eVarF0.isNull(r31) ? null : eVarF0.q0(iC31), eVarF0.isNull(r32) ? null : eVarF0.q0(iC32), eVarF0.isNull(r33) ? null : eVarF0.q0(iC33), eVarF0.isNull(r34) ? null : eVarF0.q0(iC34), eVarF0.isNull(r35) ? null : eVarF0.q0(iC35), eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36));
            }
            eVarF0.close();
            return uGCVideoDetailPlayBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static UGCVideoDetailPlayBean W(String str, String str2, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM UGC_VIDEO_DETAIL_PLAY WHERE ugcVideoId = ? AND collectionId = ? ORDER BY timeStamp DESC LIMIT 1");
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
            int iC = androidx.room.util.i.c(eVarF0, "collectionId");
            int iC2 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC3 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC4 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC5 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC6 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC7 = androidx.room.util.i.c(eVarF0, RequestParameters.POSITION);
            int iC8 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC9 = androidx.room.util.i.c(eVarF0, "cateLev1Id");
            int iC10 = androidx.room.util.i.c(eVarF0, "cateLev2Id");
            int iC11 = androidx.room.util.i.c(eVarF0, "cateLev3Id");
            int iC12 = androidx.room.util.i.c(eVarF0, "cateLev4Id");
            int iC13 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC14 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC15 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC16 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC17 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC19 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC20 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC21 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC22 = androidx.room.util.i.c(eVarF0, "downloadResid");
            int iC23 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC24 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC25 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC26 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC27 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC28 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC29 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC30 = androidx.room.util.i.c(eVarF0, "ops");
            int iC31 = androidx.room.util.i.c(eVarF0, CommonUtils.PARAM_UID);
            int iC32 = androidx.room.util.i.c(eVarF0, "userName");
            int iC33 = androidx.room.util.i.c(eVarF0, "userAvatar");
            int iC34 = androidx.room.util.i.c(eVarF0, TrackingKey.DESCRIPTION);
            int iC35 = androidx.room.util.i.c(eVarF0, "videoStyle");
            int iC36 = androidx.room.util.i.c(eVarF0, "kidId");
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = null;
            if (eVarF0.C0()) {
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.getLong(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), (int) eVarF0.getLong(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Integer.valueOf((int) eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Integer.valueOf((int) eVarF0.getLong(iC10)), eVarF0.isNull(iC11) ? null : Integer.valueOf((int) eVarF0.getLong(iC11)), eVarF0.isNull(iC12) ? null : Integer.valueOf((int) eVarF0.getLong(iC12)), eVarF0.getLong(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r77) ? null : Long.valueOf(eVarF0.getLong(iC15)), eVarF0.isNull(r78) ? null : Long.valueOf(eVarF0.getLong(iC16)), eVarF0.isNull(r16) ? null : eVarF0.q0(iC17), eVarF0.isNull(r17) ? null : Integer.valueOf((int) eVarF0.getLong(iC18)), ((int) eVarF0.getLong(iC19)) != 0, eVarF0.isNull(r19) ? null : eVarF0.q0(iC20), eVarF0.isNull(r20) ? null : eVarF0.q0(iC21), eVarF0.isNull(r21) ? null : eVarF0.q0(iC22), eVarF0.isNull(r22) ? null : eVarF0.q0(iC23), eVarF0.getLong(iC24), eVarF0.isNull(iC25) ? null : Long.valueOf(eVarF0.getLong(iC25)), eVarF0.isNull(r25) ? null : Long.valueOf(eVarF0.getLong(iC26)), ((int) eVarF0.getLong(iC27)) != 0, ((int) eVarF0.getLong(iC28)) != 0, ((int) eVarF0.getLong(iC29)) != 0, eVarF0.isNull(r29) ? null : eVarF0.q0(iC30), eVarF0.isNull(r30) ? null : eVarF0.q0(iC31), eVarF0.isNull(r31) ? null : eVarF0.q0(iC32), eVarF0.isNull(r32) ? null : eVarF0.q0(iC33), eVarF0.isNull(r33) ? null : eVarF0.q0(iC34), eVarF0.isNull(r34) ? null : eVarF0.q0(iC35), eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36));
            }
            eVarF0.close();
            return uGCVideoDetailPlayBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static UGCVideoDetailPlayBean X(String str, String str2, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND kidId = ? ORDER BY timeStamp DESC LIMIT 1");
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
            int iC = androidx.room.util.i.c(eVarF0, "collectionId");
            int iC2 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC3 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC4 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC5 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC6 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC7 = androidx.room.util.i.c(eVarF0, RequestParameters.POSITION);
            int iC8 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC9 = androidx.room.util.i.c(eVarF0, "cateLev1Id");
            int iC10 = androidx.room.util.i.c(eVarF0, "cateLev2Id");
            int iC11 = androidx.room.util.i.c(eVarF0, "cateLev3Id");
            int iC12 = androidx.room.util.i.c(eVarF0, "cateLev4Id");
            int iC13 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC14 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC15 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC16 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC17 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC19 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC20 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC21 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC22 = androidx.room.util.i.c(eVarF0, "downloadResid");
            int iC23 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC24 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC25 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC26 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC27 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC28 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC29 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC30 = androidx.room.util.i.c(eVarF0, "ops");
            int iC31 = androidx.room.util.i.c(eVarF0, CommonUtils.PARAM_UID);
            int iC32 = androidx.room.util.i.c(eVarF0, "userName");
            int iC33 = androidx.room.util.i.c(eVarF0, "userAvatar");
            int iC34 = androidx.room.util.i.c(eVarF0, TrackingKey.DESCRIPTION);
            int iC35 = androidx.room.util.i.c(eVarF0, "videoStyle");
            int iC36 = androidx.room.util.i.c(eVarF0, "kidId");
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = null;
            if (eVarF0.C0()) {
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.getLong(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), (int) eVarF0.getLong(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Integer.valueOf((int) eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Integer.valueOf((int) eVarF0.getLong(iC10)), eVarF0.isNull(iC11) ? null : Integer.valueOf((int) eVarF0.getLong(iC11)), eVarF0.isNull(iC12) ? null : Integer.valueOf((int) eVarF0.getLong(iC12)), eVarF0.getLong(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r77) ? null : Long.valueOf(eVarF0.getLong(iC15)), eVarF0.isNull(r78) ? null : Long.valueOf(eVarF0.getLong(iC16)), eVarF0.isNull(r16) ? null : eVarF0.q0(iC17), eVarF0.isNull(r17) ? null : Integer.valueOf((int) eVarF0.getLong(iC18)), ((int) eVarF0.getLong(iC19)) != 0, eVarF0.isNull(r19) ? null : eVarF0.q0(iC20), eVarF0.isNull(r20) ? null : eVarF0.q0(iC21), eVarF0.isNull(r21) ? null : eVarF0.q0(iC22), eVarF0.isNull(r22) ? null : eVarF0.q0(iC23), eVarF0.getLong(iC24), eVarF0.isNull(iC25) ? null : Long.valueOf(eVarF0.getLong(iC25)), eVarF0.isNull(r25) ? null : Long.valueOf(eVarF0.getLong(iC26)), ((int) eVarF0.getLong(iC27)) != 0, ((int) eVarF0.getLong(iC28)) != 0, ((int) eVarF0.getLong(iC29)) != 0, eVarF0.isNull(r29) ? null : eVarF0.q0(iC30), eVarF0.isNull(r30) ? null : eVarF0.q0(iC31), eVarF0.isNull(r31) ? null : eVarF0.q0(iC32), eVarF0.isNull(r32) ? null : eVarF0.q0(iC33), eVarF0.isNull(r33) ? null : eVarF0.q0(iC34), eVarF0.isNull(r34) ? null : eVarF0.q0(iC35), eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36));
            }
            eVarF0.close();
            return uGCVideoDetailPlayBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static UGCVideoDetailPlayBean Y(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND (kidId IS NULL OR kidId = '') ORDER BY timeStamp DESC LIMIT 1");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "collectionId");
            int iC2 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC3 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC4 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC5 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC6 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC7 = androidx.room.util.i.c(eVarF0, RequestParameters.POSITION);
            int iC8 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC9 = androidx.room.util.i.c(eVarF0, "cateLev1Id");
            int iC10 = androidx.room.util.i.c(eVarF0, "cateLev2Id");
            int iC11 = androidx.room.util.i.c(eVarF0, "cateLev3Id");
            int iC12 = androidx.room.util.i.c(eVarF0, "cateLev4Id");
            int iC13 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC14 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC15 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC16 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC17 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC19 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC20 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC21 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC22 = androidx.room.util.i.c(eVarF0, "downloadResid");
            int iC23 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC24 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC25 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC26 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC27 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC28 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC29 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC30 = androidx.room.util.i.c(eVarF0, "ops");
            int iC31 = androidx.room.util.i.c(eVarF0, CommonUtils.PARAM_UID);
            int iC32 = androidx.room.util.i.c(eVarF0, "userName");
            int iC33 = androidx.room.util.i.c(eVarF0, "userAvatar");
            int iC34 = androidx.room.util.i.c(eVarF0, TrackingKey.DESCRIPTION);
            int iC35 = androidx.room.util.i.c(eVarF0, "videoStyle");
            int iC36 = androidx.room.util.i.c(eVarF0, "kidId");
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = null;
            if (eVarF0.C0()) {
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.getLong(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), (int) eVarF0.getLong(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Integer.valueOf((int) eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Integer.valueOf((int) eVarF0.getLong(iC10)), eVarF0.isNull(iC11) ? null : Integer.valueOf((int) eVarF0.getLong(iC11)), eVarF0.isNull(iC12) ? null : Integer.valueOf((int) eVarF0.getLong(iC12)), eVarF0.getLong(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r78) ? null : Long.valueOf(eVarF0.getLong(iC15)), eVarF0.isNull(r16) ? null : Long.valueOf(eVarF0.getLong(iC16)), eVarF0.isNull(r17) ? null : eVarF0.q0(iC17), eVarF0.isNull(r18) ? null : Integer.valueOf((int) eVarF0.getLong(iC18)), ((int) eVarF0.getLong(iC19)) != 0, eVarF0.isNull(r20) ? null : eVarF0.q0(iC20), eVarF0.isNull(r21) ? null : eVarF0.q0(iC21), eVarF0.isNull(r22) ? null : eVarF0.q0(iC22), eVarF0.isNull(r23) ? null : eVarF0.q0(iC23), eVarF0.getLong(iC24), eVarF0.isNull(iC25) ? null : Long.valueOf(eVarF0.getLong(iC25)), eVarF0.isNull(r26) ? null : Long.valueOf(eVarF0.getLong(iC26)), ((int) eVarF0.getLong(iC27)) != 0, ((int) eVarF0.getLong(iC28)) != 0, ((int) eVarF0.getLong(iC29)) != 0, eVarF0.isNull(r30) ? null : eVarF0.q0(iC30), eVarF0.isNull(r31) ? null : eVarF0.q0(iC31), eVarF0.isNull(r32) ? null : eVarF0.q0(iC32), eVarF0.isNull(r33) ? null : eVarF0.q0(iC33), eVarF0.isNull(r34) ? null : eVarF0.q0(iC34), eVarF0.isNull(r35) ? null : eVarF0.q0(iC35), eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36));
            }
            eVarF0.close();
            return uGCVideoDetailPlayBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static UGCVideoDetailPlayBean Z(String str, String str2, String str3, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND ugcVideoId = ? AND kidId = ? ORDER BY timeStamp DESC LIMIT 1");
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
            int iC = androidx.room.util.i.c(eVarF0, "collectionId");
            int iC2 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC3 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC4 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC5 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC6 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC7 = androidx.room.util.i.c(eVarF0, RequestParameters.POSITION);
            int iC8 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC9 = androidx.room.util.i.c(eVarF0, "cateLev1Id");
            int iC10 = androidx.room.util.i.c(eVarF0, "cateLev2Id");
            int iC11 = androidx.room.util.i.c(eVarF0, "cateLev3Id");
            int iC12 = androidx.room.util.i.c(eVarF0, "cateLev4Id");
            int iC13 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC14 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC15 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC16 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC17 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC19 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC20 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC21 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC22 = androidx.room.util.i.c(eVarF0, "downloadResid");
            int iC23 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC24 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC25 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC26 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC27 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC28 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC29 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC30 = androidx.room.util.i.c(eVarF0, "ops");
            int iC31 = androidx.room.util.i.c(eVarF0, CommonUtils.PARAM_UID);
            int iC32 = androidx.room.util.i.c(eVarF0, "userName");
            int iC33 = androidx.room.util.i.c(eVarF0, "userAvatar");
            int iC34 = androidx.room.util.i.c(eVarF0, TrackingKey.DESCRIPTION);
            int iC35 = androidx.room.util.i.c(eVarF0, "videoStyle");
            int iC36 = androidx.room.util.i.c(eVarF0, "kidId");
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = null;
            if (eVarF0.C0()) {
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.getLong(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), (int) eVarF0.getLong(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Integer.valueOf((int) eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Integer.valueOf((int) eVarF0.getLong(iC10)), eVarF0.isNull(iC11) ? null : Integer.valueOf((int) eVarF0.getLong(iC11)), eVarF0.isNull(iC12) ? null : Integer.valueOf((int) eVarF0.getLong(iC12)), eVarF0.getLong(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r76) ? null : Long.valueOf(eVarF0.getLong(iC15)), eVarF0.isNull(r77) ? null : Long.valueOf(eVarF0.getLong(iC16)), eVarF0.isNull(r78) ? null : eVarF0.q0(iC17), eVarF0.isNull(r16) ? null : Integer.valueOf((int) eVarF0.getLong(iC18)), ((int) eVarF0.getLong(iC19)) != 0, eVarF0.isNull(r18) ? null : eVarF0.q0(iC20), eVarF0.isNull(r19) ? null : eVarF0.q0(iC21), eVarF0.isNull(r20) ? null : eVarF0.q0(iC22), eVarF0.isNull(r21) ? null : eVarF0.q0(iC23), eVarF0.getLong(iC24), eVarF0.isNull(iC25) ? null : Long.valueOf(eVarF0.getLong(iC25)), eVarF0.isNull(r24) ? null : Long.valueOf(eVarF0.getLong(iC26)), ((int) eVarF0.getLong(iC27)) != 0, ((int) eVarF0.getLong(iC28)) != 0, ((int) eVarF0.getLong(iC29)) != 0, eVarF0.isNull(r28) ? null : eVarF0.q0(iC30), eVarF0.isNull(r29) ? null : eVarF0.q0(iC31), eVarF0.isNull(r30) ? null : eVarF0.q0(iC32), eVarF0.isNull(r31) ? null : eVarF0.q0(iC33), eVarF0.isNull(r32) ? null : eVarF0.q0(iC34), eVarF0.isNull(r33) ? null : eVarF0.q0(iC35), eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36));
            }
            eVarF0.close();
            return uGCVideoDetailPlayBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static UGCVideoDetailPlayBean a0(String str, String str2, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ugc_video_detail_play WHERE collectionId = ? AND ugcVideoId = ? AND (kidId IS NULL OR kidId = '') ORDER BY timeStamp DESC LIMIT 1");
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
            int iC = androidx.room.util.i.c(eVarF0, "collectionId");
            int iC2 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC3 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC4 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC5 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC6 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC7 = androidx.room.util.i.c(eVarF0, RequestParameters.POSITION);
            int iC8 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC9 = androidx.room.util.i.c(eVarF0, "cateLev1Id");
            int iC10 = androidx.room.util.i.c(eVarF0, "cateLev2Id");
            int iC11 = androidx.room.util.i.c(eVarF0, "cateLev3Id");
            int iC12 = androidx.room.util.i.c(eVarF0, "cateLev4Id");
            int iC13 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC14 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC15 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC16 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC17 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC19 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC20 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC21 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC22 = androidx.room.util.i.c(eVarF0, "downloadResid");
            int iC23 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC24 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC25 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC26 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC27 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC28 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC29 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC30 = androidx.room.util.i.c(eVarF0, "ops");
            int iC31 = androidx.room.util.i.c(eVarF0, CommonUtils.PARAM_UID);
            int iC32 = androidx.room.util.i.c(eVarF0, "userName");
            int iC33 = androidx.room.util.i.c(eVarF0, "userAvatar");
            int iC34 = androidx.room.util.i.c(eVarF0, TrackingKey.DESCRIPTION);
            int iC35 = androidx.room.util.i.c(eVarF0, "videoStyle");
            int iC36 = androidx.room.util.i.c(eVarF0, "kidId");
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = null;
            if (eVarF0.C0()) {
                uGCVideoDetailPlayBean = new UGCVideoDetailPlayBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.getLong(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), (int) eVarF0.getLong(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : Integer.valueOf((int) eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Integer.valueOf((int) eVarF0.getLong(iC10)), eVarF0.isNull(iC11) ? null : Integer.valueOf((int) eVarF0.getLong(iC11)), eVarF0.isNull(iC12) ? null : Integer.valueOf((int) eVarF0.getLong(iC12)), eVarF0.getLong(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r77) ? null : Long.valueOf(eVarF0.getLong(iC15)), eVarF0.isNull(r78) ? null : Long.valueOf(eVarF0.getLong(iC16)), eVarF0.isNull(r16) ? null : eVarF0.q0(iC17), eVarF0.isNull(r17) ? null : Integer.valueOf((int) eVarF0.getLong(iC18)), ((int) eVarF0.getLong(iC19)) != 0, eVarF0.isNull(r19) ? null : eVarF0.q0(iC20), eVarF0.isNull(r20) ? null : eVarF0.q0(iC21), eVarF0.isNull(r21) ? null : eVarF0.q0(iC22), eVarF0.isNull(r22) ? null : eVarF0.q0(iC23), eVarF0.getLong(iC24), eVarF0.isNull(iC25) ? null : Long.valueOf(eVarF0.getLong(iC25)), eVarF0.isNull(r25) ? null : Long.valueOf(eVarF0.getLong(iC26)), ((int) eVarF0.getLong(iC27)) != 0, ((int) eVarF0.getLong(iC28)) != 0, ((int) eVarF0.getLong(iC29)) != 0, eVarF0.isNull(r29) ? null : eVarF0.q0(iC30), eVarF0.isNull(r30) ? null : eVarF0.q0(iC31), eVarF0.isNull(r31) ? null : eVarF0.q0(iC32), eVarF0.isNull(r32) ? null : eVarF0.q0(iC33), eVarF0.isNull(r33) ? null : eVarF0.q0(iC34), eVarF0.isNull(r34) ? null : eVarF0.q0(iC35), eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36));
            }
            eVarF0.close();
            return uGCVideoDetailPlayBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List b0(String str, int i10, int i11, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ugc_video_detail_play WHERE kidId = ? AND coverUrl IS NOT NULL AND collectionId LIKE 'SINGLE_%' ORDER BY timeStamp DESC LIMIT ? OFFSET ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            eVarF0.c(2, i10);
            eVarF0.c(3, i11);
            int iC = androidx.room.util.i.c(eVarF0, "collectionId");
            int iC2 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC3 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC4 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC5 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC6 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC7 = androidx.room.util.i.c(eVarF0, RequestParameters.POSITION);
            int iC8 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC9 = androidx.room.util.i.c(eVarF0, "cateLev1Id");
            int iC10 = androidx.room.util.i.c(eVarF0, "cateLev2Id");
            int iC11 = androidx.room.util.i.c(eVarF0, "cateLev3Id");
            int iC12 = androidx.room.util.i.c(eVarF0, "cateLev4Id");
            int iC13 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC14 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC15 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC16 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC17 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC19 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC20 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC21 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC22 = androidx.room.util.i.c(eVarF0, "downloadResid");
            int iC23 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC24 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC25 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC26 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC27 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC28 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC29 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC30 = androidx.room.util.i.c(eVarF0, "ops");
            int iC31 = androidx.room.util.i.c(eVarF0, CommonUtils.PARAM_UID);
            int iC32 = androidx.room.util.i.c(eVarF0, "userName");
            int iC33 = androidx.room.util.i.c(eVarF0, "userAvatar");
            int iC34 = androidx.room.util.i.c(eVarF0, TrackingKey.DESCRIPTION);
            int iC35 = androidx.room.util.i.c(eVarF0, "videoStyle");
            int iC36 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                long j10 = eVarF0.getLong(iC3);
                String strQ2 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                String strQ3 = eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5);
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                int i12 = (int) eVarF0.getLong(iC7);
                String strQ5 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Integer numValueOf = eVarF0.isNull(iC9) ? null : Integer.valueOf((int) eVarF0.getLong(iC9));
                Integer numValueOf2 = eVarF0.isNull(iC10) ? null : Integer.valueOf((int) eVarF0.getLong(iC10));
                Integer numValueOf3 = eVarF0.isNull(iC11) ? null : Integer.valueOf((int) eVarF0.getLong(iC11));
                Integer numValueOf4 = eVarF0.isNull(iC12) ? null : Integer.valueOf((int) eVarF0.getLong(iC12));
                long j11 = eVarF0.getLong(iC13);
                String strQ6 = eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14);
                Long lValueOf = eVarF0.isNull(iC15) ? null : Long.valueOf(eVarF0.getLong(iC15));
                Long lValueOf2 = eVarF0.isNull(iC16) ? null : Long.valueOf(eVarF0.getLong(iC16));
                iC17 = iC17;
                String strQ7 = eVarF0.isNull(iC17) ? null : eVarF0.q0(iC17);
                Integer numValueOf5 = eVarF0.isNull(iC18) ? null : Integer.valueOf((int) eVarF0.getLong(iC18));
                int i13 = iC5;
                boolean z10 = ((int) eVarF0.getLong(iC19)) != 0;
                String strQ8 = eVarF0.isNull(iC20) ? null : eVarF0.q0(iC20);
                String strQ9 = eVarF0.isNull(iC21) ? null : eVarF0.q0(iC21);
                String strQ10 = eVarF0.isNull(iC22) ? null : eVarF0.q0(iC22);
                String strQ11 = eVarF0.isNull(iC23) ? null : eVarF0.q0(iC23);
                long j12 = eVarF0.getLong(iC24);
                iC24 = iC24;
                iC25 = iC25;
                Long lValueOf3 = eVarF0.isNull(iC25) ? null : Long.valueOf(eVarF0.getLong(iC25));
                Long lValueOf4 = eVarF0.isNull(iC26) ? null : Long.valueOf(eVarF0.getLong(iC26));
                int i14 = iC19;
                boolean z11 = ((int) eVarF0.getLong(iC27)) != 0;
                int i15 = iC21;
                boolean z12 = ((int) eVarF0.getLong(iC28)) != 0;
                int i16 = iC6;
                boolean z13 = ((int) eVarF0.getLong(iC29)) != 0;
                String strQ12 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ13 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                String strQ14 = eVarF0.isNull(iC32) ? null : eVarF0.q0(iC32);
                String strQ15 = eVarF0.isNull(iC33) ? null : eVarF0.q0(iC33);
                String strQ16 = eVarF0.isNull(iC34) ? null : eVarF0.q0(iC34);
                String strQ17 = eVarF0.isNull(iC35) ? null : eVarF0.q0(iC35);
                String strQ18 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                iC36 = iC36;
                arrayList.add(new UGCVideoDetailPlayBean(strQ0, strQ1, j10, strQ2, strQ3, strQ4, i12, strQ5, numValueOf, numValueOf2, numValueOf3, numValueOf4, j11, strQ6, lValueOf, lValueOf2, strQ7, numValueOf5, z10, strQ8, strQ9, strQ10, strQ11, j12, lValueOf3, lValueOf4, z11, z12, z13, strQ12, strQ13, strQ14, strQ15, strQ16, strQ17, strQ18));
                iC = iC;
                iC30 = iC30;
                iC31 = iC31;
                iC15 = iC15;
                iC5 = i13;
                iC18 = iC18;
                iC19 = i14;
                iC21 = i15;
                iC6 = i16;
                iC2 = iC2;
                iC28 = iC28;
                iC29 = iC29;
                iC27 = iC27;
                iC3 = iC3;
                iC4 = iC4;
                iC20 = iC20;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List c0(int i10, int i11, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM ugc_video_detail_play WHERE (kidId IS NULL OR kidId = '') AND coverUrl IS NOT NULL AND collectionId LIKE 'SINGLE_%' ORDER BY timeStamp DESC LIMIT ? OFFSET ?");
        try {
            eVarF0.c(1, i10);
            eVarF0.c(2, i11);
            int iC = androidx.room.util.i.c(eVarF0, "collectionId");
            int iC2 = androidx.room.util.i.c(eVarF0, "ugcVideoId");
            int iC3 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC4 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC5 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC6 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC7 = androidx.room.util.i.c(eVarF0, RequestParameters.POSITION);
            int iC8 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC9 = androidx.room.util.i.c(eVarF0, "cateLev1Id");
            int iC10 = androidx.room.util.i.c(eVarF0, "cateLev2Id");
            int iC11 = androidx.room.util.i.c(eVarF0, "cateLev3Id");
            int iC12 = androidx.room.util.i.c(eVarF0, "cateLev4Id");
            int iC13 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC14 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            int iC15 = androidx.room.util.i.c(eVarF0, "totalDuration");
            int iC16 = androidx.room.util.i.c(eVarF0, "subjectDurationSeconds");
            int iC17 = androidx.room.util.i.c(eVarF0, "averageHueLight");
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectType");
            int iC19 = androidx.room.util.i.c(eVarF0, "hasDelete");
            int iC20 = androidx.room.util.i.c(eVarF0, "playMode");
            int iC21 = androidx.room.util.i.c(eVarF0, "downloadUrl");
            int iC22 = androidx.room.util.i.c(eVarF0, "downloadResid");
            int iC23 = androidx.room.util.i.c(eVarF0, "downloadFilePath");
            int iC24 = androidx.room.util.i.c(eVarF0, "downloadSize");
            int iC25 = androidx.room.util.i.c(eVarF0, "lastAdStartTimeStamp");
            int iC26 = androidx.room.util.i.c(eVarF0, "lastAdEndTimeStamp");
            int iC27 = androidx.room.util.i.c(eVarF0, "rewardPlayed");
            int iC28 = androidx.room.util.i.c(eVarF0, "rewardUnlock");
            int iC29 = androidx.room.util.i.c(eVarF0, "rewardFree");
            int iC30 = androidx.room.util.i.c(eVarF0, "ops");
            int iC31 = androidx.room.util.i.c(eVarF0, CommonUtils.PARAM_UID);
            int iC32 = androidx.room.util.i.c(eVarF0, "userName");
            int iC33 = androidx.room.util.i.c(eVarF0, "userAvatar");
            int iC34 = androidx.room.util.i.c(eVarF0, TrackingKey.DESCRIPTION);
            int iC35 = androidx.room.util.i.c(eVarF0, "videoStyle");
            int iC36 = androidx.room.util.i.c(eVarF0, "kidId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                long j10 = eVarF0.getLong(iC3);
                String strQ2 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                String strQ3 = eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5);
                String strQ4 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                int i12 = (int) eVarF0.getLong(iC7);
                String strQ5 = eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8);
                Integer numValueOf = eVarF0.isNull(iC9) ? null : Integer.valueOf((int) eVarF0.getLong(iC9));
                Integer numValueOf2 = eVarF0.isNull(iC10) ? null : Integer.valueOf((int) eVarF0.getLong(iC10));
                Integer numValueOf3 = eVarF0.isNull(iC11) ? null : Integer.valueOf((int) eVarF0.getLong(iC11));
                Integer numValueOf4 = eVarF0.isNull(iC12) ? null : Integer.valueOf((int) eVarF0.getLong(iC12));
                long j11 = eVarF0.getLong(iC13);
                String strQ6 = eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14);
                Long lValueOf = eVarF0.isNull(iC15) ? null : Long.valueOf(eVarF0.getLong(iC15));
                Long lValueOf2 = eVarF0.isNull(iC16) ? null : Long.valueOf(eVarF0.getLong(iC16));
                String strQ7 = eVarF0.isNull(iC17) ? null : eVarF0.q0(iC17);
                Integer numValueOf5 = eVarF0.isNull(iC18) ? null : Integer.valueOf((int) eVarF0.getLong(iC18));
                int i13 = iC5;
                boolean z10 = ((int) eVarF0.getLong(iC19)) != 0;
                String strQ8 = eVarF0.isNull(iC20) ? null : eVarF0.q0(iC20);
                String strQ9 = eVarF0.isNull(iC21) ? null : eVarF0.q0(iC21);
                String strQ10 = eVarF0.isNull(iC22) ? null : eVarF0.q0(iC22);
                String strQ11 = eVarF0.isNull(iC23) ? null : eVarF0.q0(iC23);
                long j12 = eVarF0.getLong(iC24);
                iC24 = iC24;
                iC25 = iC25;
                Long lValueOf3 = eVarF0.isNull(iC25) ? null : Long.valueOf(eVarF0.getLong(iC25));
                Long lValueOf4 = eVarF0.isNull(iC26) ? null : Long.valueOf(eVarF0.getLong(iC26));
                int i14 = iC19;
                boolean z11 = ((int) eVarF0.getLong(iC27)) != 0;
                int i15 = iC21;
                int i16 = iC27;
                boolean z12 = ((int) eVarF0.getLong(iC28)) != 0;
                int i17 = iC28;
                boolean z13 = ((int) eVarF0.getLong(iC29)) != 0;
                String strQ12 = eVarF0.isNull(iC30) ? null : eVarF0.q0(iC30);
                String strQ13 = eVarF0.isNull(iC31) ? null : eVarF0.q0(iC31);
                String strQ14 = eVarF0.isNull(iC32) ? null : eVarF0.q0(iC32);
                String strQ15 = eVarF0.isNull(iC33) ? null : eVarF0.q0(iC33);
                String strQ16 = eVarF0.isNull(iC34) ? null : eVarF0.q0(iC34);
                String strQ17 = eVarF0.isNull(iC35) ? null : eVarF0.q0(iC35);
                String strQ18 = eVarF0.isNull(iC36) ? null : eVarF0.q0(iC36);
                iC36 = iC36;
                arrayList.add(new UGCVideoDetailPlayBean(strQ0, strQ1, j10, strQ2, strQ3, strQ4, i12, strQ5, numValueOf, numValueOf2, numValueOf3, numValueOf4, j11, strQ6, lValueOf, lValueOf2, strQ7, numValueOf5, z10, strQ8, strQ9, strQ10, strQ11, j12, lValueOf3, lValueOf4, z11, z12, z13, strQ12, strQ13, strQ14, strQ15, strQ16, strQ17, strQ18));
                iC31 = iC31;
                iC = iC;
                iC2 = iC2;
                iC3 = iC3;
                iC20 = iC20;
                iC4 = iC4;
                iC16 = iC16;
                iC18 = iC18;
                iC21 = i15;
                iC28 = i17;
                iC29 = iC29;
                iC27 = i16;
                iC5 = i13;
                iC19 = i14;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public Unit d0(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, y3.b bVar) throws Exception {
        this.f42034b.d(bVar, uGCVideoDetailPlayBean);
        return Unit.f64096a;
    }

    public Unit e0(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, y3.b bVar) throws Exception {
        this.f42036d.c(bVar, uGCVideoDetailPlayBean);
        return Unit.f64096a;
    }

    public static Unit f0(long j10, String str, long j11, int i10, String str2, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE UGC_VIDEO_DETAIL_PLAY SET progress = ?, ugcVideoId= ?, timeStamp =?, position = ? WHERE collectionId = ? ");
        try {
            eVarF0.c(1, j10);
            if (str == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, str);
            }
            eVarF0.c(3, j11);
            eVarF0.c(4, i10);
            if (str2 == null) {
                eVarF0.g(5);
            } else {
                eVarF0.i(5, str2);
            }
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    public static Unit g0(String str, String str2, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE UGC_VIDEO_DETAIL_PLAY SET subtitleSelectId = ? WHERE collectionId = ? ");
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

    public static Unit h0(long j10, String str, String str2, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE UGC_VIDEO_DETAIL_PLAY SET totalDuration = ?, ugcVideoId= ? WHERE collectionId = ? ");
        try {
            eVarF0.c(1, j10);
            if (str == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, str);
            }
            if (str2 == null) {
                eVarF0.g(3);
            } else {
                eVarF0.i(3, str2);
            }
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    @Override
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.Q((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.g0(str2, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(String str, Continuation continuation) {
        return UGCVideoDetailPlayDao.DefaultImpls.b(this, str, continuation);
    }

    @Override
    public Object d(int i10, int i11, Continuation continuation) {
        return UGCVideoDetailPlayDao.DefaultImpls.c(this, i10, i11, continuation);
    }

    @Override
    public Object e(final String str, final String str2, final long j10, final long j11, final int i10, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.f0(j11, str2, j10, i10, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object f(final int i10, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.T(i11, i10, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object g(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.V(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object h(final String str, final String str2, final long j10, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.h0(j10, str2, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object i(final int i10, final int i11, final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.b0(str, i11, i10, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object j(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.R(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object k(String str, String str2, long j10, long j11, Continuation continuation) {
        return UGCVideoDetailPlayDao.DefaultImpls.e(this, str, str2, j10, j11, continuation);
    }

    @Override
    public Object l(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.X(str, str2, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object m(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.U(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object n(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, Continuation continuation) {
        return UGCVideoDetailPlayDao.DefaultImpls.d(this, uGCVideoDetailPlayBean, continuation);
    }

    @Override
    public Object o(final int i10, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.c0(i11, i10, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object p(final UGCVideoDetailPlayBean uGCVideoDetailPlayBean, Continuation continuation) {
        uGCVideoDetailPlayBean.getClass();
        return androidx.room.util.b.f(this.f42033a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f41995a.d0(uGCVideoDetailPlayBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object q(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.a0(str, str2, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object r(String str, Continuation continuation) {
        return UGCVideoDetailPlayDao.DefaultImpls.a(this, str, continuation);
    }

    @Override
    public Object s(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.W(str2, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object t(final String str, final String str2, final String str3, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.Z(str, str2, str3, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object u(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.Y(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object v(final UGCVideoDetailPlayBean uGCVideoDetailPlayBean, Continuation continuation) {
        uGCVideoDetailPlayBean.getClass();
        return androidx.room.util.b.f(this.f42033a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42002a.e0(uGCVideoDetailPlayBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object w(final int i10, final int i11, final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f42033a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j0.S(str, i11, i10, (y3.b) obj);
            }
        }, continuation);
    }
}
