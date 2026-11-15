package xi;

import androidx.room.RoomDatabase;
import androidx.room.util.i;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baselib.db.music.MusicLikedDbBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class h implements xi.a {

    private final RoomDatabase f75343a;

    private final androidx.room.g f75344b = new a();

    private final androidx.room.e f75345c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `music_liked` (`subjectId`,`title`,`coverUrl`,`countryName`,`genre`,`releaseDate`,`durationSeconds`,`singerName`,`singerAvatar`,`path`,`timeStamp`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, MusicLikedDbBean musicLikedDbBean) {
            if (musicLikedDbBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, musicLikedDbBean.getSubjectId());
            }
            if (musicLikedDbBean.getTitle() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, musicLikedDbBean.getTitle());
            }
            if (musicLikedDbBean.getCoverUrl() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, musicLikedDbBean.getCoverUrl());
            }
            if (musicLikedDbBean.getCountryName() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, musicLikedDbBean.getCountryName());
            }
            if (musicLikedDbBean.getGenre() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, musicLikedDbBean.getGenre());
            }
            if (musicLikedDbBean.getReleaseDate() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, musicLikedDbBean.getReleaseDate());
            }
            eVar.c(7, musicLikedDbBean.getDurationSeconds());
            if (musicLikedDbBean.getSingerName() == null) {
                eVar.g(8);
            } else {
                eVar.i(8, musicLikedDbBean.getSingerName());
            }
            if (musicLikedDbBean.getSingerAvatar() == null) {
                eVar.g(9);
            } else {
                eVar.i(9, musicLikedDbBean.getSingerAvatar());
            }
            if (musicLikedDbBean.getPath() == null) {
                eVar.g(10);
            } else {
                eVar.i(10, musicLikedDbBean.getPath());
            }
            eVar.c(11, musicLikedDbBean.getTimeStamp());
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `music_liked` SET `subjectId` = ?,`title` = ?,`coverUrl` = ?,`countryName` = ?,`genre` = ?,`releaseDate` = ?,`durationSeconds` = ?,`singerName` = ?,`singerAvatar` = ?,`path` = ?,`timeStamp` = ? WHERE `subjectId` = ?";
        }

        @Override
        public void a(y3.e eVar, MusicLikedDbBean musicLikedDbBean) {
            if (musicLikedDbBean.getSubjectId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, musicLikedDbBean.getSubjectId());
            }
            if (musicLikedDbBean.getTitle() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, musicLikedDbBean.getTitle());
            }
            if (musicLikedDbBean.getCoverUrl() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, musicLikedDbBean.getCoverUrl());
            }
            if (musicLikedDbBean.getCountryName() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, musicLikedDbBean.getCountryName());
            }
            if (musicLikedDbBean.getGenre() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, musicLikedDbBean.getGenre());
            }
            if (musicLikedDbBean.getReleaseDate() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, musicLikedDbBean.getReleaseDate());
            }
            eVar.c(7, musicLikedDbBean.getDurationSeconds());
            if (musicLikedDbBean.getSingerName() == null) {
                eVar.g(8);
            } else {
                eVar.i(8, musicLikedDbBean.getSingerName());
            }
            if (musicLikedDbBean.getSingerAvatar() == null) {
                eVar.g(9);
            } else {
                eVar.i(9, musicLikedDbBean.getSingerAvatar());
            }
            if (musicLikedDbBean.getPath() == null) {
                eVar.g(10);
            } else {
                eVar.i(10, musicLikedDbBean.getPath());
            }
            eVar.c(11, musicLikedDbBean.getTimeStamp());
            if (musicLikedDbBean.getSubjectId() == null) {
                eVar.g(12);
            } else {
                eVar.i(12, musicLikedDbBean.getSubjectId());
            }
        }
    }

    public h(RoomDatabase roomDatabase) {
        this.f75343a = roomDatabase;
    }

    public static List m() {
        return Collections.emptyList();
    }

    public static Unit n(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM music_liked WHERE subjectId = ?");
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

    public static List o(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM music_liked ORDER BY timeStamp DESC");
        try {
            int iC = i.c(eVarF0, "subjectId");
            int iC2 = i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC3 = i.c(eVarF0, "coverUrl");
            int iC4 = i.c(eVarF0, "countryName");
            int iC5 = i.c(eVarF0, "genre");
            int iC6 = i.c(eVarF0, "releaseDate");
            int iC7 = i.c(eVarF0, "durationSeconds");
            int iC8 = i.c(eVarF0, "singerName");
            int iC9 = i.c(eVarF0, "singerAvatar");
            int iC10 = i.c(eVarF0, "path");
            int iC11 = i.c(eVarF0, "timeStamp");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                arrayList.add(new MusicLikedDbBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), (int) eVarF0.getLong(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.isNull(iC10) ? null : eVarF0.q0(iC10), eVarF0.getLong(iC11)));
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static Integer p(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT COUNT(*) FROM music_liked");
        try {
            Integer numValueOf = null;
            if (eVarF0.C0() && !eVarF0.isNull(0)) {
                numValueOf = Integer.valueOf((int) eVarF0.getLong(0));
            }
            return numValueOf;
        } finally {
            eVarF0.close();
        }
    }

    public static MusicLikedDbBean q(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM music_liked WHERE subjectId = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = i.c(eVarF0, "subjectId");
            int iC2 = i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            int iC3 = i.c(eVarF0, "coverUrl");
            int iC4 = i.c(eVarF0, "countryName");
            int iC5 = i.c(eVarF0, "genre");
            int iC6 = i.c(eVarF0, "releaseDate");
            int iC7 = i.c(eVarF0, "durationSeconds");
            int iC8 = i.c(eVarF0, "singerName");
            int iC9 = i.c(eVarF0, "singerAvatar");
            int iC10 = i.c(eVarF0, "path");
            int iC11 = i.c(eVarF0, "timeStamp");
            MusicLikedDbBean musicLikedDbBean = null;
            if (eVarF0.C0()) {
                musicLikedDbBean = new MusicLikedDbBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), (int) eVarF0.getLong(iC7), eVarF0.isNull(iC8) ? null : eVarF0.q0(iC8), eVarF0.isNull(iC9) ? null : eVarF0.q0(iC9), eVarF0.isNull(iC10) ? null : eVarF0.q0(iC10), eVarF0.getLong(iC11));
            }
            eVarF0.close();
            return musicLikedDbBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit r(MusicLikedDbBean musicLikedDbBean, y3.b bVar) throws Exception {
        this.f75344b.d(bVar, musicLikedDbBean);
        return Unit.f64096a;
    }

    public Unit s(List list, y3.b bVar) throws Exception {
        this.f75344b.c(bVar, list);
        return Unit.f64096a;
    }

    @Override
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f75343a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return h.p((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final List list, Continuation continuation) {
        list.getClass();
        return androidx.room.util.b.f(this.f75343a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f75340a.s(list, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(Continuation continuation) {
        return androidx.room.util.b.f(this.f75343a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return h.o((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f75343a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return h.n(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object e(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f75343a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return h.q(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object f(final MusicLikedDbBean musicLikedDbBean, Continuation continuation) {
        musicLikedDbBean.getClass();
        return androidx.room.util.b.f(this.f75343a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f75338a.r(musicLikedDbBean, (y3.b) obj);
            }
        }, continuation);
    }
}
