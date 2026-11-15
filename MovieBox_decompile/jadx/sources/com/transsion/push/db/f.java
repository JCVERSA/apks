package com.transsion.push.db;

import androidx.room.RoomDatabase;
import androidx.room.util.i;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.push.bean.PermanentItemBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class f implements com.transsion.push.db.a {

    private final RoomDatabase f48727a;

    private final androidx.room.g f48728b = new a();

    private final androidx.room.e f48729c = new b();

    private final androidx.room.e f48730d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `permanent_item` (`id`,`deeplink`,`subject_id`,`image`,`title`) VALUES (nullif(?, 0),?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, PermanentItemBean permanentItemBean) {
            eVar.c(1, permanentItemBean.getId());
            if (permanentItemBean.getDeeplink() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, permanentItemBean.getDeeplink());
            }
            if (permanentItemBean.getSubjectId() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, permanentItemBean.getSubjectId());
            }
            if (permanentItemBean.getImage() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, permanentItemBean.getImage());
            }
            if (permanentItemBean.getTitle() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, permanentItemBean.getTitle());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "DELETE FROM `permanent_item` WHERE `id` = ?";
        }

        @Override
        public void a(y3.e eVar, PermanentItemBean permanentItemBean) {
            eVar.c(1, permanentItemBean.getId());
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `permanent_item` SET `id` = ?,`deeplink` = ?,`subject_id` = ?,`image` = ?,`title` = ? WHERE `id` = ?";
        }

        @Override
        public void a(y3.e eVar, PermanentItemBean permanentItemBean) {
            eVar.c(1, permanentItemBean.getId());
            if (permanentItemBean.getDeeplink() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, permanentItemBean.getDeeplink());
            }
            if (permanentItemBean.getSubjectId() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, permanentItemBean.getSubjectId());
            }
            if (permanentItemBean.getImage() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, permanentItemBean.getImage());
            }
            if (permanentItemBean.getTitle() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, permanentItemBean.getTitle());
            }
            eVar.c(6, permanentItemBean.getId());
        }
    }

    public f(RoomDatabase roomDatabase) {
        this.f48727a = roomDatabase;
    }

    public static List i() {
        return Collections.emptyList();
    }

    public static Unit j(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("DELETE FROM PERMANENT_ITEM");
        try {
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    public Unit k(PermanentItemBean permanentItemBean, y3.b bVar) throws Exception {
        this.f48729c.c(bVar, permanentItemBean);
        return Unit.f64096a;
    }

    public static List l(y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM permanent_item");
        try {
            int iC = i.c(eVarF0, "id");
            int iC2 = i.c(eVarF0, "deeplink");
            int iC3 = i.c(eVarF0, "subject_id");
            int iC4 = i.c(eVarF0, "image");
            int iC5 = i.c(eVarF0, CampaignEx.JSON_KEY_TITLE);
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                arrayList.add(new PermanentItemBean((int) eVarF0.getLong(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5)));
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public Unit m(List list, y3.b bVar) throws Exception {
        this.f48728b.c(bVar, list);
        return Unit.f64096a;
    }

    @Override
    public Object a(Continuation continuation) {
        return androidx.room.util.b.f(this.f48727a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return f.j((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final List list, Continuation continuation) {
        list.getClass();
        return androidx.room.util.b.f(this.f48727a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f48725a.m(list, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(Continuation continuation) {
        return androidx.room.util.b.f(this.f48727a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return f.l((y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(final PermanentItemBean permanentItemBean, Continuation continuation) {
        permanentItemBean.getClass();
        return androidx.room.util.b.f(this.f48727a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f48723a.k(permanentItemBean, (y3.b) obj);
            }
        }, continuation);
    }
}
