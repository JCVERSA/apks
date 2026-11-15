package com.cloud.hisavana.sdk;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class y4 implements x4 {

    private final RoomDatabase f22457a;

    private final androidx.room.h f22458b;

    private final androidx.room.h f22459c;

    private final androidx.room.l0 f22460d;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        protected String e() {
            return "INSERT OR ABORT INTO `attr_click_room` (`_id`,`ac_type`,`pkg`,`dl_type`,`codeSeatId`,`click_ts`,`ad_creative_id`) VALUES (nullif(?, 0),?,?,?,?,?,?)";
        }

        @Override
        public void j(z3.h hVar, n5 n5Var) {
            hVar.c(1, n5Var.g());
            hVar.c(2, n5Var.a());
            if (n5Var.f() == null) {
                hVar.g(3);
            } else {
                hVar.V(3, n5Var.f());
            }
            if (n5Var.e() == null) {
                hVar.g(4);
            } else {
                hVar.V(4, n5Var.e());
            }
            if (n5Var.d() == null) {
                hVar.g(5);
            } else {
                hVar.V(5, n5Var.d());
            }
            hVar.c(6, n5Var.c());
            if (n5Var.b() == null) {
                hVar.g(7);
            } else {
                hVar.V(7, n5Var.b());
            }
        }
    }

    class b extends androidx.room.h {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        protected String e() {
            return "INSERT OR REPLACE INTO `attr_click_room` (`_id`,`ac_type`,`pkg`,`dl_type`,`codeSeatId`,`click_ts`,`ad_creative_id`) VALUES (nullif(?, 0),?,?,?,?,?,?)";
        }

        @Override
        public void j(z3.h hVar, n5 n5Var) {
            hVar.c(1, n5Var.g());
            hVar.c(2, n5Var.a());
            if (n5Var.f() == null) {
                hVar.g(3);
            } else {
                hVar.V(3, n5Var.f());
            }
            if (n5Var.e() == null) {
                hVar.g(4);
            } else {
                hVar.V(4, n5Var.e());
            }
            if (n5Var.d() == null) {
                hVar.g(5);
            } else {
                hVar.V(5, n5Var.d());
            }
            hVar.c(6, n5Var.c());
            if (n5Var.b() == null) {
                hVar.g(7);
            } else {
                hVar.V(7, n5Var.b());
            }
        }
    }

    class c extends androidx.room.l0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM attr_click_room";
        }
    }

    public y4(RoomDatabase roomDatabase) {
        this.f22457a = roomDatabase;
        this.f22458b = new a(roomDatabase);
        this.f22459c = new b(roomDatabase);
        this.f22460d = new c(roomDatabase);
    }

    public static List c() {
        return Collections.emptyList();
    }

    @Override
    public void a(n5 n5Var) {
        this.f22457a.j();
        this.f22457a.k();
        try {
            this.f22458b.l(n5Var);
            this.f22457a.e0();
        } finally {
            this.f22457a.t();
        }
    }

    @Override
    public List b() {
        androidx.room.i0 i0VarF = androidx.room.i0.f("SELECT * FROM attr_click_room", 0);
        this.f22457a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f22457a, i0VarF, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "_id");
            int iE2 = androidx.room.util.a.e(cursorG, "ac_type");
            int iE3 = androidx.room.util.a.e(cursorG, PushConstants.PROVIDER_FIELD_PKG);
            int iE4 = androidx.room.util.a.e(cursorG, "dl_type");
            int iE5 = androidx.room.util.a.e(cursorG, "codeSeatId");
            int iE6 = androidx.room.util.a.e(cursorG, TrackingKey.CLICK_TS);
            int iE7 = androidx.room.util.a.e(cursorG, "ad_creative_id");
            ArrayList arrayList = new ArrayList(cursorG.getCount());
            while (cursorG.moveToNext()) {
                arrayList.add(new n5(cursorG.getInt(iE), cursorG.getInt(iE2), cursorG.isNull(iE3) ? null : cursorG.getString(iE3), cursorG.isNull(iE4) ? null : cursorG.getString(iE4), cursorG.isNull(iE5) ? null : cursorG.getString(iE5), cursorG.getLong(iE6), cursorG.isNull(iE7) ? null : cursorG.getString(iE7)));
            }
            return arrayList;
        } finally {
            cursorG.close();
            i0VarF.release();
        }
    }

    @Override
    public int a() {
        this.f22457a.j();
        z3.h hVarB = this.f22460d.b();
        try {
            this.f22457a.k();
            try {
                int iF = hVarB.F();
                this.f22457a.e0();
                this.f22457a.t();
                this.f22460d.h(hVarB);
                return iF;
            } catch (Throwable th2) {
                this.f22457a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22460d.h(hVarB);
            throw th3;
        }
    }

    @Override
    public int a(List list) {
        this.f22457a.j();
        StringBuilder sbB = androidx.room.util.l.b();
        sbB.append("DELETE FROM attr_click_room WHERE _id IN (");
        androidx.room.util.l.a(sbB, list.size());
        sbB.append(")");
        z3.h hVarM = this.f22457a.m(sbB.toString());
        Iterator it = list.iterator();
        int i10 = 1;
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num == null) {
                hVarM.g(i10);
            } else {
                hVarM.c(i10, num.intValue());
            }
            i10++;
        }
        this.f22457a.k();
        try {
            int iF = hVarM.F();
            this.f22457a.e0();
            return iF;
        } finally {
            this.f22457a.t();
        }
    }
}
