package ui;

import androidx.core.app.NotificationCompat;
import androidx.room.RoomDatabase;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.baselib.db.download.SubtitleBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class c1 implements v0 {

    private final RoomDatabase f73091a;

    private final androidx.room.g f73092b = new a();

    private final androidx.room.e f73093c = new b();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `download_subtitle_table` (`resourceId`,`postId`,`url`,`path`,`lan`,`lanName`,`subtitleName`,`size`,`delayDuration`,`status`,`type`,`fileCharsetName`,`subjectId`,`ep`,`se`,`resolution`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, SubtitleBean subtitleBean) {
            if (subtitleBean.getResourceId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, subtitleBean.getResourceId());
            }
            if (subtitleBean.getPostId() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, subtitleBean.getPostId());
            }
            if (subtitleBean.getUrl() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, subtitleBean.getUrl());
            }
            if (subtitleBean.getPath() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, subtitleBean.getPath());
            }
            if (subtitleBean.getLan() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, subtitleBean.getLan());
            }
            if (subtitleBean.getLanName() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, subtitleBean.getLanName());
            }
            if (subtitleBean.getSubtitleName() == null) {
                eVar.g(7);
            } else {
                eVar.i(7, subtitleBean.getSubtitleName());
            }
            if (subtitleBean.getSize() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, subtitleBean.getSize().longValue());
            }
            if (subtitleBean.getDelayDuration() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, subtitleBean.getDelayDuration().longValue());
            }
            eVar.c(10, subtitleBean.getStatus());
            eVar.c(11, subtitleBean.getType());
            if (subtitleBean.getFileCharsetName() == null) {
                eVar.g(12);
            } else {
                eVar.i(12, subtitleBean.getFileCharsetName());
            }
            if (subtitleBean.getSubjectId() == null) {
                eVar.g(13);
            } else {
                eVar.i(13, subtitleBean.getSubjectId());
            }
            eVar.c(14, subtitleBean.getEp());
            eVar.c(15, subtitleBean.getSe());
            eVar.c(16, subtitleBean.getResolution());
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `download_subtitle_table` SET `resourceId` = ?,`postId` = ?,`url` = ?,`path` = ?,`lan` = ?,`lanName` = ?,`subtitleName` = ?,`size` = ?,`delayDuration` = ?,`status` = ?,`type` = ?,`fileCharsetName` = ?,`subjectId` = ?,`ep` = ?,`se` = ?,`resolution` = ? WHERE `resourceId` = ?";
        }

        @Override
        public void a(y3.e eVar, SubtitleBean subtitleBean) {
            if (subtitleBean.getResourceId() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, subtitleBean.getResourceId());
            }
            if (subtitleBean.getPostId() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, subtitleBean.getPostId());
            }
            if (subtitleBean.getUrl() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, subtitleBean.getUrl());
            }
            if (subtitleBean.getPath() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, subtitleBean.getPath());
            }
            if (subtitleBean.getLan() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, subtitleBean.getLan());
            }
            if (subtitleBean.getLanName() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, subtitleBean.getLanName());
            }
            if (subtitleBean.getSubtitleName() == null) {
                eVar.g(7);
            } else {
                eVar.i(7, subtitleBean.getSubtitleName());
            }
            if (subtitleBean.getSize() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, subtitleBean.getSize().longValue());
            }
            if (subtitleBean.getDelayDuration() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, subtitleBean.getDelayDuration().longValue());
            }
            eVar.c(10, subtitleBean.getStatus());
            eVar.c(11, subtitleBean.getType());
            if (subtitleBean.getFileCharsetName() == null) {
                eVar.g(12);
            } else {
                eVar.i(12, subtitleBean.getFileCharsetName());
            }
            if (subtitleBean.getSubjectId() == null) {
                eVar.g(13);
            } else {
                eVar.i(13, subtitleBean.getSubjectId());
            }
            eVar.c(14, subtitleBean.getEp());
            eVar.c(15, subtitleBean.getSe());
            eVar.c(16, subtitleBean.getResolution());
            if (subtitleBean.getResourceId() == null) {
                eVar.g(17);
            } else {
                eVar.i(17, subtitleBean.getResourceId());
            }
        }
    }

    public c1(RoomDatabase roomDatabase) {
        this.f73091a = roomDatabase;
    }

    public static List m() {
        return Collections.emptyList();
    }

    public static Unit n(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM DOWNLOAD_SUBTITLE_TABLE WHERE postId=?");
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
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_SUBTITLE_TABLE");
        try {
            int iC = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC2 = androidx.room.util.i.c(eVarF0, "postId");
            int iC3 = androidx.room.util.i.c(eVarF0, "url");
            int iC4 = androidx.room.util.i.c(eVarF0, "path");
            int iC5 = androidx.room.util.i.c(eVarF0, "lan");
            int iC6 = androidx.room.util.i.c(eVarF0, "lanName");
            int iC7 = androidx.room.util.i.c(eVarF0, "subtitleName");
            int iC8 = androidx.room.util.i.c(eVarF0, "size");
            int iC9 = androidx.room.util.i.c(eVarF0, "delayDuration");
            int iC10 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC11 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC12 = androidx.room.util.i.c(eVarF0, "fileCharsetName");
            int iC13 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC14 = androidx.room.util.i.c(eVarF0, "ep");
            int iC15 = androidx.room.util.i.c(eVarF0, "se");
            int iC16 = androidx.room.util.i.c(eVarF0, "resolution");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                String strQ4 = eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5);
                String strQ5 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ6 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                int i10 = iC4;
                int i11 = iC5;
                int i12 = iC15;
                int i13 = iC6;
                int i14 = iC7;
                int i15 = iC9;
                int i16 = iC16;
                int i17 = iC8;
                arrayList.add(new SubtitleBean(strQ0, strQ1, strQ2, strQ3, strQ4, strQ5, strQ6, eVarF0.isNull(iC8) ? null : Long.valueOf(eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), (int) eVarF0.getLong(iC10), (int) eVarF0.getLong(iC11), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), eVarF0.isNull(iC13) ? null : eVarF0.q0(iC13), (int) eVarF0.getLong(iC14), (int) eVarF0.getLong(i12), (int) eVarF0.getLong(i16)));
                iC6 = i13;
                iC15 = i12;
                iC8 = i17;
                iC2 = iC2;
                iC5 = i11;
                iC3 = iC3;
                iC4 = i10;
                iC9 = i15;
                iC16 = i16;
                iC7 = i14;
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static List p(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_SUBTITLE_TABLE WHERE postId = ? ");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC2 = androidx.room.util.i.c(eVarF0, "postId");
            int iC3 = androidx.room.util.i.c(eVarF0, "url");
            int iC4 = androidx.room.util.i.c(eVarF0, "path");
            int iC5 = androidx.room.util.i.c(eVarF0, "lan");
            int iC6 = androidx.room.util.i.c(eVarF0, "lanName");
            int iC7 = androidx.room.util.i.c(eVarF0, "subtitleName");
            int iC8 = androidx.room.util.i.c(eVarF0, "size");
            int iC9 = androidx.room.util.i.c(eVarF0, "delayDuration");
            int iC10 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC11 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC12 = androidx.room.util.i.c(eVarF0, "fileCharsetName");
            int iC13 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC14 = androidx.room.util.i.c(eVarF0, "ep");
            int iC15 = androidx.room.util.i.c(eVarF0, "se");
            int iC16 = androidx.room.util.i.c(eVarF0, "resolution");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                String strQ4 = eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5);
                String strQ5 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ6 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                int i10 = iC4;
                int i11 = iC5;
                int i12 = iC15;
                int i13 = iC6;
                int i14 = iC7;
                int i15 = iC16;
                int i16 = iC8;
                int i17 = iC9;
                arrayList.add(new SubtitleBean(strQ0, strQ1, strQ2, strQ3, strQ4, strQ5, strQ6, eVarF0.isNull(iC8) ? null : Long.valueOf(eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), (int) eVarF0.getLong(iC10), (int) eVarF0.getLong(iC11), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), eVarF0.isNull(iC13) ? null : eVarF0.q0(iC13), (int) eVarF0.getLong(iC14), (int) eVarF0.getLong(i12), (int) eVarF0.getLong(i15)));
                iC6 = i13;
                iC8 = i16;
                iC15 = i12;
                iC16 = i15;
                iC2 = iC2;
                iC5 = i11;
                iC3 = iC3;
                iC4 = i10;
                iC7 = i14;
                iC9 = i17;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List q(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_SUBTITLE_TABLE WHERE subjectId = ? ");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC2 = androidx.room.util.i.c(eVarF0, "postId");
            int iC3 = androidx.room.util.i.c(eVarF0, "url");
            int iC4 = androidx.room.util.i.c(eVarF0, "path");
            int iC5 = androidx.room.util.i.c(eVarF0, "lan");
            int iC6 = androidx.room.util.i.c(eVarF0, "lanName");
            int iC7 = androidx.room.util.i.c(eVarF0, "subtitleName");
            int iC8 = androidx.room.util.i.c(eVarF0, "size");
            int iC9 = androidx.room.util.i.c(eVarF0, "delayDuration");
            int iC10 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC11 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC12 = androidx.room.util.i.c(eVarF0, "fileCharsetName");
            int iC13 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC14 = androidx.room.util.i.c(eVarF0, "ep");
            int iC15 = androidx.room.util.i.c(eVarF0, "se");
            int iC16 = androidx.room.util.i.c(eVarF0, "resolution");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                String strQ4 = eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5);
                String strQ5 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ6 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                int i10 = iC4;
                int i11 = iC5;
                int i12 = iC15;
                int i13 = iC6;
                int i14 = iC7;
                int i15 = iC16;
                int i16 = iC8;
                int i17 = iC9;
                arrayList.add(new SubtitleBean(strQ0, strQ1, strQ2, strQ3, strQ4, strQ5, strQ6, eVarF0.isNull(iC8) ? null : Long.valueOf(eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), (int) eVarF0.getLong(iC10), (int) eVarF0.getLong(iC11), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), eVarF0.isNull(iC13) ? null : eVarF0.q0(iC13), (int) eVarF0.getLong(iC14), (int) eVarF0.getLong(i12), (int) eVarF0.getLong(i15)));
                iC6 = i13;
                iC8 = i16;
                iC15 = i12;
                iC16 = i15;
                iC2 = iC2;
                iC5 = i11;
                iC3 = iC3;
                iC4 = i10;
                iC7 = i14;
                iC9 = i17;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public static List r(String str, int i10, int i11, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM DOWNLOAD_SUBTITLE_TABLE WHERE subjectId = ? AND ep = ? AND se = ?");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            eVarF0.c(2, i10);
            eVarF0.c(3, i11);
            int iC = androidx.room.util.i.c(eVarF0, "resourceId");
            int iC2 = androidx.room.util.i.c(eVarF0, "postId");
            int iC3 = androidx.room.util.i.c(eVarF0, "url");
            int iC4 = androidx.room.util.i.c(eVarF0, "path");
            int iC5 = androidx.room.util.i.c(eVarF0, "lan");
            int iC6 = androidx.room.util.i.c(eVarF0, "lanName");
            int iC7 = androidx.room.util.i.c(eVarF0, "subtitleName");
            int iC8 = androidx.room.util.i.c(eVarF0, "size");
            int iC9 = androidx.room.util.i.c(eVarF0, "delayDuration");
            int iC10 = androidx.room.util.i.c(eVarF0, NotificationCompat.CATEGORY_STATUS);
            int iC11 = androidx.room.util.i.c(eVarF0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iC12 = androidx.room.util.i.c(eVarF0, "fileCharsetName");
            int iC13 = androidx.room.util.i.c(eVarF0, "subjectId");
            int iC14 = androidx.room.util.i.c(eVarF0, "ep");
            int iC15 = androidx.room.util.i.c(eVarF0, "se");
            int iC16 = androidx.room.util.i.c(eVarF0, "resolution");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                String strQ0 = eVarF0.isNull(iC) ? null : eVarF0.q0(iC);
                String strQ1 = eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2);
                String strQ2 = eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3);
                String strQ3 = eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4);
                String strQ4 = eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5);
                String strQ5 = eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6);
                String strQ6 = eVarF0.isNull(iC7) ? null : eVarF0.q0(iC7);
                int i12 = iC4;
                int i13 = iC5;
                int i14 = iC15;
                int i15 = iC6;
                int i16 = iC7;
                int i17 = iC16;
                int i18 = iC8;
                int i19 = iC9;
                arrayList.add(new SubtitleBean(strQ0, strQ1, strQ2, strQ3, strQ4, strQ5, strQ6, eVarF0.isNull(iC8) ? null : Long.valueOf(eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)), (int) eVarF0.getLong(iC10), (int) eVarF0.getLong(iC11), eVarF0.isNull(iC12) ? null : eVarF0.q0(iC12), eVarF0.isNull(iC13) ? null : eVarF0.q0(iC13), (int) eVarF0.getLong(iC14), (int) eVarF0.getLong(i14), (int) eVarF0.getLong(i17)));
                iC6 = i15;
                iC8 = i18;
                iC2 = iC2;
                iC3 = iC3;
                iC15 = i14;
                iC16 = i17;
                iC4 = i12;
                iC5 = i13;
                iC7 = i16;
                iC9 = i19;
            }
            eVarF0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Unit s(SubtitleBean subtitleBean, y3.b bVar) throws Exception {
        this.f73093c.c(bVar, subtitleBean);
        return Unit.f64096a;
    }

    @Override
    public Object a(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73091a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return c1.n(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final SubtitleBean subtitleBean, Continuation continuation) {
        subtitleBean.getClass();
        return androidx.room.util.b.f(this.f73091a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73167a.s(subtitleBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(Continuation continuation) {
        return androidx.room.util.b.f(this.f73091a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return c1.o((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73091a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return c1.q(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object e(final String str, final int i10, final int i11, Continuation continuation) {
        return androidx.room.util.b.f(this.f73091a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return c1.r(str, i10, i11, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object f(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73091a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return c1.p(str, (y3.b) obj);
            }
        }, continuation);
    }
}
