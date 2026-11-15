package si;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baselib.db.audio.AudioBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class j implements si.a {

    private final RoomDatabase f72212a;

    private final androidx.room.g f72213b = new a();

    private final androidx.room.e f72214c = new b();

    private final androidx.room.e f72215d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `audio` (`audioId`,`cover`,`duration`,`size`,`url`,`title`,`desc`,`bitrate`,`updateTimeStamp`,`readProcess`,`localPath`,`ops`,`resourceId`,`postId`,`subjectId`,`groupId`,`status`,`subjectTitle`,`se`,`ep`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, AudioBean audioBean) {
            if (audioBean.getAudioUrl() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, audioBean.getAudioUrl());
            }
            if (audioBean.getCover() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, audioBean.getCover());
            }
            if (audioBean.getDuration() == null) {
                eVar.g(3);
            } else {
                eVar.c(3, audioBean.getDuration().longValue());
            }
            if (audioBean.getSize() == null) {
                eVar.g(4);
            } else {
                eVar.c(4, audioBean.getSize().longValue());
            }
            if (audioBean.getUrl() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, audioBean.getUrl());
            }
            if (audioBean.getTitle() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, audioBean.getTitle());
            }
            if (audioBean.getDesc() == null) {
                eVar.g(7);
            } else {
                eVar.i(7, audioBean.getDesc());
            }
            if (audioBean.getBitrate() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, audioBean.getBitrate().intValue());
            }
            if (audioBean.getUpdateTimeStamp() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, audioBean.getUpdateTimeStamp().longValue());
            }
            if (audioBean.getReadProcess() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, audioBean.getReadProcess().longValue());
            }
            if (audioBean.getLocalPath() == null) {
                eVar.g(11);
            } else {
                eVar.i(11, audioBean.getLocalPath());
            }
            if (audioBean.getOps() == null) {
                eVar.g(12);
            } else {
                eVar.i(12, audioBean.getOps());
            }
            if (audioBean.getResourceId() == null) {
                eVar.g(13);
            } else {
                eVar.i(13, audioBean.getResourceId());
            }
            if (audioBean.getPostId() == null) {
                eVar.g(14);
            } else {
                eVar.i(14, audioBean.getPostId());
            }
            if (audioBean.getSubjectId() == null) {
                eVar.g(15);
            } else {
                eVar.i(15, audioBean.getSubjectId());
            }
            if (audioBean.getGroupId() == null) {
                eVar.g(16);
            } else {
                eVar.i(16, audioBean.getGroupId());
            }
            eVar.c(17, audioBean.getStatus());
            if (audioBean.getSubjectTitle() == null) {
                eVar.g(18);
            } else {
                eVar.i(18, audioBean.getSubjectTitle());
            }
            eVar.c(19, audioBean.getSe());
            eVar.c(20, audioBean.getEp());
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "DELETE FROM `audio` WHERE `audioId` = ?";
        }

        @Override
        public void a(y3.e eVar, AudioBean audioBean) {
            if (audioBean.getAudioUrl() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, audioBean.getAudioUrl());
            }
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `audio` SET `audioId` = ?,`cover` = ?,`duration` = ?,`size` = ?,`url` = ?,`title` = ?,`desc` = ?,`bitrate` = ?,`updateTimeStamp` = ?,`readProcess` = ?,`localPath` = ?,`ops` = ?,`resourceId` = ?,`postId` = ?,`subjectId` = ?,`groupId` = ?,`status` = ?,`subjectTitle` = ?,`se` = ?,`ep` = ? WHERE `audioId` = ?";
        }

        @Override
        public void a(y3.e eVar, AudioBean audioBean) {
            if (audioBean.getAudioUrl() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, audioBean.getAudioUrl());
            }
            if (audioBean.getCover() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, audioBean.getCover());
            }
            if (audioBean.getDuration() == null) {
                eVar.g(3);
            } else {
                eVar.c(3, audioBean.getDuration().longValue());
            }
            if (audioBean.getSize() == null) {
                eVar.g(4);
            } else {
                eVar.c(4, audioBean.getSize().longValue());
            }
            if (audioBean.getUrl() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, audioBean.getUrl());
            }
            if (audioBean.getTitle() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, audioBean.getTitle());
            }
            if (audioBean.getDesc() == null) {
                eVar.g(7);
            } else {
                eVar.i(7, audioBean.getDesc());
            }
            if (audioBean.getBitrate() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, audioBean.getBitrate().intValue());
            }
            if (audioBean.getUpdateTimeStamp() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, audioBean.getUpdateTimeStamp().longValue());
            }
            if (audioBean.getReadProcess() == null) {
                eVar.g(10);
            } else {
                eVar.c(10, audioBean.getReadProcess().longValue());
            }
            if (audioBean.getLocalPath() == null) {
                eVar.g(11);
            } else {
                eVar.i(11, audioBean.getLocalPath());
            }
            if (audioBean.getOps() == null) {
                eVar.g(12);
            } else {
                eVar.i(12, audioBean.getOps());
            }
            if (audioBean.getResourceId() == null) {
                eVar.g(13);
            } else {
                eVar.i(13, audioBean.getResourceId());
            }
            if (audioBean.getPostId() == null) {
                eVar.g(14);
            } else {
                eVar.i(14, audioBean.getPostId());
            }
            if (audioBean.getSubjectId() == null) {
                eVar.g(15);
            } else {
                eVar.i(15, audioBean.getSubjectId());
            }
            if (audioBean.getGroupId() == null) {
                eVar.g(16);
            } else {
                eVar.i(16, audioBean.getGroupId());
            }
            eVar.c(17, audioBean.getStatus());
            if (audioBean.getSubjectTitle() == null) {
                eVar.g(18);
            } else {
                eVar.i(18, audioBean.getSubjectTitle());
            }
            eVar.c(19, audioBean.getSe());
            eVar.c(20, audioBean.getEp());
            if (audioBean.getAudioUrl() == null) {
                eVar.g(21);
            } else {
                eVar.i(21, audioBean.getAudioUrl());
            }
        }
    }

    public j(RoomDatabase roomDatabase) {
        this.f72212a = roomDatabase;
    }

    public static List q() {
        return Collections.emptyList();
    }

    public static Unit r(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM Audio");
        try {
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    public Unit s(AudioBean audioBean, y3.b bVar) throws Exception {
        this.f72214c.c(bVar, audioBean);
        return Unit.f64096a;
    }

    public static AudioBean t(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM Audio WHERE audioId = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "audioId");
            int iC2 = androidx.room.util.i.c(eVarF0, "cover");
            int iC3 = androidx.room.util.i.c(eVarF0, "duration");
            int iC4 = androidx.room.util.i.c(eVarF0, "size");
            int iC5 = androidx.room.util.i.c(eVarF0, "url");
            int iC6 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC7 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_DESC);
            int iC8 = androidx.room.util.i.c(eVarF0, "bitrate");
            int iC9 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC10 = androidx.room.util.i.c(eVarF0, "readProcess");
            int iC11 = androidx.room.util.i.c(eVarF0, "localPath");
            int iC12 = androidx.room.util.i.c(eVarF0, "ops");
            int iC13 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC14 = androidx.room.util.i.c(eVarF0, "postId");
            int iC15 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC16 = androidx.room.util.i.c(eVarF0, "groupId");
            int iC17 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectTitle");
            int iC19 = androidx.room.util.i.c(eVarF0, "se");
            int iC20 = androidx.room.util.i.c(eVarF0, "ep");
            AudioBean audioBean = null;
            if (eVarF0.C0()) {
                audioBean = new AudioBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : Long.valueOf(eVarF0.getLong(iC3)), eVarF0.isNull(iC4) ? null : Long.valueOf(eVarF0.getLong(iC4)), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : Integer.valueOf((int) eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), eVarF0.isNull(iC13) ? null : eVarF0.q0(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r42) ? null : eVarF0.q0(iC15), eVarF0.isNull(r43) ? null : eVarF0.q0(iC16), (int) eVarF0.getLong(iC17), eVarF0.isNull(iC18) ? null : eVarF0.q0(iC18), (int) eVarF0.getLong(iC19), (int) eVarF0.getLong(iC20));
            }
            eVarF0.close();
            return audioBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static AudioBean u(String str, String str2, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM Audio WHERE postId = ? AND subjectId =?");
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
            int iC = androidx.room.util.i.c(eVarF0, "audioId");
            int iC2 = androidx.room.util.i.c(eVarF0, "cover");
            int iC3 = androidx.room.util.i.c(eVarF0, "duration");
            int iC4 = androidx.room.util.i.c(eVarF0, "size");
            int iC5 = androidx.room.util.i.c(eVarF0, "url");
            int iC6 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC7 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_DESC);
            int iC8 = androidx.room.util.i.c(eVarF0, "bitrate");
            int iC9 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC10 = androidx.room.util.i.c(eVarF0, "readProcess");
            int iC11 = androidx.room.util.i.c(eVarF0, "localPath");
            int iC12 = androidx.room.util.i.c(eVarF0, "ops");
            int iC13 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC14 = androidx.room.util.i.c(eVarF0, "postId");
            int iC15 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC16 = androidx.room.util.i.c(eVarF0, "groupId");
            int iC17 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectTitle");
            int iC19 = androidx.room.util.i.c(eVarF0, "se");
            int iC20 = androidx.room.util.i.c(eVarF0, "ep");
            AudioBean audioBean = null;
            if (eVarF0.C0()) {
                audioBean = new AudioBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : Long.valueOf(eVarF0.getLong(iC3)), eVarF0.isNull(iC4) ? null : Long.valueOf(eVarF0.getLong(iC4)), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : Integer.valueOf((int) eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), eVarF0.isNull(iC13) ? null : eVarF0.q0(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r41) ? null : eVarF0.q0(iC15), eVarF0.isNull(r42) ? null : eVarF0.q0(iC16), (int) eVarF0.getLong(iC17), eVarF0.isNull(iC18) ? null : eVarF0.q0(iC18), (int) eVarF0.getLong(iC19), (int) eVarF0.getLong(iC20));
            }
            eVarF0.close();
            return audioBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static AudioBean v(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM Audio WHERE resourceId = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "audioId");
            int iC2 = androidx.room.util.i.c(eVarF0, "cover");
            int iC3 = androidx.room.util.i.c(eVarF0, "duration");
            int iC4 = androidx.room.util.i.c(eVarF0, "size");
            int iC5 = androidx.room.util.i.c(eVarF0, "url");
            int iC6 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC7 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_DESC);
            int iC8 = androidx.room.util.i.c(eVarF0, "bitrate");
            int iC9 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC10 = androidx.room.util.i.c(eVarF0, "readProcess");
            int iC11 = androidx.room.util.i.c(eVarF0, "localPath");
            int iC12 = androidx.room.util.i.c(eVarF0, "ops");
            int iC13 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC14 = androidx.room.util.i.c(eVarF0, "postId");
            int iC15 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC16 = androidx.room.util.i.c(eVarF0, "groupId");
            int iC17 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectTitle");
            int iC19 = androidx.room.util.i.c(eVarF0, "se");
            int iC20 = androidx.room.util.i.c(eVarF0, "ep");
            AudioBean audioBean = null;
            if (eVarF0.C0()) {
                audioBean = new AudioBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : Long.valueOf(eVarF0.getLong(iC3)), eVarF0.isNull(iC4) ? null : Long.valueOf(eVarF0.getLong(iC4)), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : Integer.valueOf((int) eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), eVarF0.isNull(iC13) ? null : eVarF0.q0(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(r42) ? null : eVarF0.q0(iC15), eVarF0.isNull(r43) ? null : eVarF0.q0(iC16), (int) eVarF0.getLong(iC17), eVarF0.isNull(iC18) ? null : eVarF0.q0(iC18), (int) eVarF0.getLong(iC19), (int) eVarF0.getLong(iC20));
            }
            eVarF0.close();
            return audioBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List w(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM Audio ORDER BY updateTimeStamp DESC");
        try {
            int iC = androidx.room.util.i.c(eVarF0, "audioId");
            int iC2 = androidx.room.util.i.c(eVarF0, "cover");
            int iC3 = androidx.room.util.i.c(eVarF0, "duration");
            int iC4 = androidx.room.util.i.c(eVarF0, "size");
            int iC5 = androidx.room.util.i.c(eVarF0, "url");
            int iC6 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC7 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_DESC);
            int iC8 = androidx.room.util.i.c(eVarF0, "bitrate");
            int iC9 = androidx.room.util.i.c(eVarF0, "updateTimeStamp");
            int iC10 = androidx.room.util.i.c(eVarF0, "readProcess");
            int iC11 = androidx.room.util.i.c(eVarF0, "localPath");
            int iC12 = androidx.room.util.i.c(eVarF0, "ops");
            int iC13 = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC14 = androidx.room.util.i.c(eVarF0, "postId");
            int iC15 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC16 = androidx.room.util.i.c(eVarF0, "groupId");
            int iC17 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC18 = androidx.room.util.i.c(eVarF0, "subjectTitle");
            int iC19 = androidx.room.util.i.c(eVarF0, "se");
            int iC20 = androidx.room.util.i.c(eVarF0, "ep");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                Long lValueOf = eVarF0.isNull(iC3) ? null : Long.valueOf(eVarF0.getLong(iC3));
                Long lValueOf2 = eVarF0.isNull(iC4) ? null : Long.valueOf(eVarF0.getLong(iC4));
                int i10 = iC16;
                int i11 = iC18;
                int i12 = iC17;
                int i13 = iC19;
                int i14 = iC4;
                int i15 = iC6;
                int i16 = iC20;
                int i17 = iC5;
                arrayList.add(new AudioBean(strQ0, strQ1, lValueOf, lValueOf2, eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : Integer.valueOf((int) eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), eVarF0.isNull(iC10) ? null : Long.valueOf(eVarF0.getLong(iC10)), eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), eVarF0.isNull(iC13) ? null : eVarF0.q0(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14), eVarF0.isNull(iC15) ? null : eVarF0.q0(iC15), eVarF0.isNull(iC16) ? null : eVarF0.q0(iC16), (int) eVarF0.getLong(iC17), eVarF0.isNull(i11) ? null : eVarF0.q0(i11), (int) eVarF0.getLong(i13), (int) eVarF0.getLong(i16)));
                iC5 = i17;
                iC2 = iC2;
                iC3 = iC3;
                iC6 = i15;
                iC20 = i16;
                iC4 = i14;
                iC19 = i13;
                iC = iC;
                iC15 = iC15;
                iC16 = i10;
                iC17 = i12;
                iC18 = i11;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public Unit x(AudioBean audioBean, y3.b bVar) throws Exception {
        this.f72213b.d(bVar, audioBean);
        return Unit.f64096a;
    }

    public Unit y(AudioBean audioBean, y3.b bVar) throws Exception {
        this.f72215d.c(bVar, audioBean);
        return Unit.f64096a;
    }

    @Override
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f72212a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j.r((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final AudioBean audioBean, Continuation continuation) {
        audioBean.getClass();
        return androidx.room.util.b.f(this.f72212a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f72210a.s(audioBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f72212a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j.t(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f72212a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j.v(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object e(Continuation continuation) {
        return androidx.room.util.b.f(this.f72212a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j.w((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object f(final AudioBean audioBean, Continuation continuation) {
        audioBean.getClass();
        return androidx.room.util.b.f(this.f72212a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f72207a.y(audioBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object g(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f72212a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return j.u(str, str2, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object h(final AudioBean audioBean, Continuation continuation) {
        audioBean.getClass();
        return androidx.room.util.b.f(this.f72212a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f72204a.x(audioBean, (y3.b) obj);
            }
        }, continuation);
    }
}
