package com.transsion.baselib.db.video;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class m implements ShortTVPlayDao {

    private final RoomDatabase f42045a;

    private final androidx.room.g f42046b = new a();

    private final androidx.room.e f42047c = new b();

    private final androidx.room.e f42048d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `short_tv_play` (`subjectId`,`id`,`ep`,`se`,`totalEp`,`progress`,`title`,`description`,`coverUrl`,`thumbnail`,`videoId`,`videoUrl`,`timeStamp`,`subtitleSelectId`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, ShortTVPlayBean shortTVPlayBean) {
            if (shortTVPlayBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, shortTVPlayBean.getSubjectId());
            }
            if (shortTVPlayBean.getId() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, shortTVPlayBean.getId());
            }
            eVar.c(3, shortTVPlayBean.getEp());
            eVar.c(4, shortTVPlayBean.getSe());
            eVar.c(5, shortTVPlayBean.getTotalEp());
            eVar.c(6, shortTVPlayBean.getProgress());
            if (shortTVPlayBean.getTitle() == null) {
                eVar.g(7);
            } else {
                eVar.i(7, shortTVPlayBean.getTitle());
            }
            if (shortTVPlayBean.getDescription() == null) {
                eVar.g(8);
            } else {
                eVar.i(8, shortTVPlayBean.getDescription());
            }
            if (shortTVPlayBean.getCoverUrl() == null) {
                eVar.g(9);
            } else {
                eVar.i(9, shortTVPlayBean.getCoverUrl());
            }
            if (shortTVPlayBean.getThumbnail() == null) {
                eVar.g(10);
            } else {
                eVar.i(10, shortTVPlayBean.getThumbnail());
            }
            if (shortTVPlayBean.getVideoId() == null) {
                eVar.g(11);
            } else {
                eVar.i(11, shortTVPlayBean.getVideoId());
            }
            if (shortTVPlayBean.getVideoUrl() == null) {
                eVar.g(12);
            } else {
                eVar.i(12, shortTVPlayBean.getVideoUrl());
            }
            eVar.c(13, shortTVPlayBean.getTimeStamp());
            if (shortTVPlayBean.getSubtitleSelectId() == null) {
                eVar.g(14);
            } else {
                eVar.i(14, shortTVPlayBean.getSubtitleSelectId());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "DELETE FROM `short_tv_play` WHERE `subjectId` = ?";
        }

        @Override
        public void a(y3.e eVar, ShortTVPlayBean shortTVPlayBean) {
            if (shortTVPlayBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, shortTVPlayBean.getSubjectId());
            }
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `short_tv_play` SET `subjectId` = ?,`id` = ?,`ep` = ?,`se` = ?,`totalEp` = ?,`progress` = ?,`title` = ?,`description` = ?,`coverUrl` = ?,`thumbnail` = ?,`videoId` = ?,`videoUrl` = ?,`timeStamp` = ?,`subtitleSelectId` = ? WHERE `subjectId` = ?";
        }

        @Override
        public void a(y3.e eVar, ShortTVPlayBean shortTVPlayBean) {
            if (shortTVPlayBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, shortTVPlayBean.getSubjectId());
            }
            if (shortTVPlayBean.getId() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, shortTVPlayBean.getId());
            }
            eVar.c(3, shortTVPlayBean.getEp());
            eVar.c(4, shortTVPlayBean.getSe());
            eVar.c(5, shortTVPlayBean.getTotalEp());
            eVar.c(6, shortTVPlayBean.getProgress());
            if (shortTVPlayBean.getTitle() == null) {
                eVar.g(7);
            } else {
                eVar.i(7, shortTVPlayBean.getTitle());
            }
            if (shortTVPlayBean.getDescription() == null) {
                eVar.g(8);
            } else {
                eVar.i(8, shortTVPlayBean.getDescription());
            }
            if (shortTVPlayBean.getCoverUrl() == null) {
                eVar.g(9);
            } else {
                eVar.i(9, shortTVPlayBean.getCoverUrl());
            }
            if (shortTVPlayBean.getThumbnail() == null) {
                eVar.g(10);
            } else {
                eVar.i(10, shortTVPlayBean.getThumbnail());
            }
            if (shortTVPlayBean.getVideoId() == null) {
                eVar.g(11);
            } else {
                eVar.i(11, shortTVPlayBean.getVideoId());
            }
            if (shortTVPlayBean.getVideoUrl() == null) {
                eVar.g(12);
            } else {
                eVar.i(12, shortTVPlayBean.getVideoUrl());
            }
            eVar.c(13, shortTVPlayBean.getTimeStamp());
            if (shortTVPlayBean.getSubtitleSelectId() == null) {
                eVar.g(14);
            } else {
                eVar.i(14, shortTVPlayBean.getSubtitleSelectId());
            }
            if (shortTVPlayBean.getSubjectId() == null) {
                eVar.g(15);
            } else {
                eVar.i(15, shortTVPlayBean.getSubjectId());
            }
        }
    }

    public m(RoomDatabase roomDatabase) {
        this.f42045a = roomDatabase;
    }

    public static List r() {
        return Collections.emptyList();
    }

    public Unit s(ShortTVPlayBean shortTVPlayBean, y3.b bVar) throws Exception {
        this.f42047c.c(bVar, shortTVPlayBean);
        return Unit.f64096a;
    }

    public static Unit t(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM SHORT_TV_PLAY");
        try {
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    public static ShortTVPlayBean u(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM SHORT_TV_PLAY WHERE subjectId = ?");
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
            int iC5 = androidx.room.util.i.c(eVarF0, "totalEp");
            int iC6 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC7 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC8 = androidx.room.util.i.c(eVarF0, TrackingKey.DESCRIPTION);
            int iC9 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC10 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC11 = androidx.room.util.i.c(eVarF0, "videoId");
            int iC12 = androidx.room.util.i.c(eVarF0, "videoUrl");
            int iC13 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC14 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            ShortTVPlayBean shortTVPlayBean = null;
            if (eVarF0.C0()) {
                shortTVPlayBean = new ShortTVPlayBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), (int) eVarF0.getLong(iC3), (int) eVarF0.getLong(iC4), (int) eVarF0.getLong(iC5), eVarF0.getLong(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.isNull(iC10) ? null : eVarF0.q0(iC10), eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), eVarF0.getLong(iC13), eVarF0.isNull(iC14) ? null : eVarF0.q0(iC14));
            }
            eVarF0.close();
            return shortTVPlayBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List v(int i10, int i11, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM SHORT_TV_PLAY WHERE coverUrl IS NOT NULL AND rowid IN (SELECT rowid FROM (SELECT rowid, subjectId, MAX(timeStamp) as maxTimeStamp FROM SHORT_TV_PLAY WHERE coverUrl IS NOT NULL GROUP BY subjectId)) ORDER BY timeStamp DESC LIMIT ? OFFSET ?;");
        try {
            eVarF0.c(1, i10);
            eVarF0.c(2, i11);
            int iC = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC2 = androidx.room.util.i.c(eVarF0, "id");
            int iC3 = androidx.room.util.i.c(eVarF0, "ep");
            int iC4 = androidx.room.util.i.c(eVarF0, "se");
            int iC5 = androidx.room.util.i.c(eVarF0, "totalEp");
            int iC6 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_PROGRESS);
            int iC7 = androidx.room.util.i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC8 = androidx.room.util.i.c(eVarF0, TrackingKey.DESCRIPTION);
            int iC9 = androidx.room.util.i.c(eVarF0, "coverUrl");
            int iC10 = androidx.room.util.i.c(eVarF0, "thumbnail");
            int iC11 = androidx.room.util.i.c(eVarF0, "videoId");
            int iC12 = androidx.room.util.i.c(eVarF0, "videoUrl");
            int iC13 = androidx.room.util.i.c(eVarF0, "timeStamp");
            int iC14 = androidx.room.util.i.c(eVarF0, "subtitleSelectId");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                int i12 = (int) eVarF0.getLong(iC3);
                int i13 = iC2;
                int i14 = iC3;
                int i15 = (int) eVarF0.getLong(iC4);
                int i16 = iC4;
                int i17 = iC14;
                int i18 = iC;
                ShortTVPlayBean shortTVPlayBean = new ShortTVPlayBean(strQ0, strQ1, i12, i15, (int) eVarF0.getLong(iC5), eVarF0.getLong(iC6), eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.isNull(iC10) ? null : eVarF0.q0(iC10), eVarF0.isNull(iC11) ? null : eVarF0.q0(iC11), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), eVarF0.getLong(iC13), eVarF0.isNull(i17) ? null : eVarF0.q0(i17));
                ArrayList arrayList2 = arrayList;
                arrayList2.add(shortTVPlayBean);
                iC = i18;
                iC14 = i17;
                iC3 = i14;
                iC4 = i16;
                arrayList = arrayList2;
                iC2 = i13;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public Unit w(ShortTVPlayBean shortTVPlayBean, y3.b bVar) throws Exception {
        this.f42046b.d(bVar, shortTVPlayBean);
        return Unit.f64096a;
    }

    public static Unit x(long j10, int i10, String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE SHORT_TV_PLAY SET progress = ?, ep = ? WHERE subjectId = ?");
        try {
            eVarF0.c(1, j10);
            eVarF0.c(2, i10);
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

    public Unit y(ShortTVPlayBean shortTVPlayBean, y3.b bVar) throws Exception {
        this.f42048d.c(bVar, shortTVPlayBean);
        return Unit.f64096a;
    }

    public static Unit z(String str, String str2, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("UPDATE SHORT_TV_PLAY SET subtitleSelectId = ? WHERE subjectId = ? ");
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
        return androidx.room.util.b.f(this.f42045a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return m.t((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final String str, final String str2, Continuation continuation) {
        return androidx.room.util.b.f(this.f42045a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return m.z(str2, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(final int i10, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f42045a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return m.v(i11, i10, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object e(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f42045a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return m.u(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object f(final ShortTVPlayBean shortTVPlayBean, Continuation continuation) {
        shortTVPlayBean.getClass();
        return androidx.room.util.b.f(this.f42045a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42015a.w(shortTVPlayBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object g(ShortTVPlayBean shortTVPlayBean, Continuation continuation) {
        return ShortTVPlayDao.DefaultImpls.a(this, shortTVPlayBean, continuation);
    }

    @Override
    public Object h(final String str, final int i10, final long j10, Continuation continuation) {
        return androidx.room.util.b.f(this.f42045a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return m.x(j10, i10, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object i(final ShortTVPlayBean shortTVPlayBean, Continuation continuation) {
        shortTVPlayBean.getClass();
        return androidx.room.util.b.f(this.f42045a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42022a.y(shortTVPlayBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object j(final ShortTVPlayBean shortTVPlayBean, Continuation continuation) {
        shortTVPlayBean.getClass();
        return androidx.room.util.b.f(this.f42045a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f42026a.s(shortTVPlayBean, (y3.b) obj);
            }
        }, continuation);
    }
}
