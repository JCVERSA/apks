package com.cloud.hisavana.sdk;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class w3 implements v3 {

    private final RoomDatabase f22393a;

    private final androidx.room.h f22394b;

    private final androidx.room.f f22395c;

    private final androidx.room.l0 f22396d;

    private final androidx.room.l0 f22397e;

    private final androidx.room.l0 f22398f;

    private final androidx.room.l0 f22399g;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        protected String e() {
            return "INSERT OR REPLACE INTO `adList_room` (`_id`,`ad_creative_id`,`codeSeatId`,`file_path`,`price`,`is_offline_ad`,`ad_request_ver`,`ad_bean`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)";
        }

        @Override
        public void j(z3.h hVar, y3 y3Var) {
            hVar.c(1, y3Var.o());
            if (y3Var.f() == null) {
                hVar.g(2);
            } else {
                hVar.V(2, y3Var.f());
            }
            if (y3Var.k() == null) {
                hVar.g(3);
            } else {
                hVar.V(3, y3Var.k());
            }
            if (y3Var.m() == null) {
                hVar.g(4);
            } else {
                hVar.V(4, y3Var.m());
            }
            if (y3Var.n() == null) {
                hVar.g(5);
            } else {
                hVar.a(5, y3Var.n().doubleValue());
            }
            if (y3Var.p() == null) {
                hVar.g(6);
            } else {
                hVar.c(6, y3Var.p().intValue());
            }
            if (y3Var.i() == null) {
                hVar.g(7);
            } else {
                hVar.c(7, y3Var.i().intValue());
            }
            if (y3Var.a() == null) {
                hVar.g(8);
            } else {
                hVar.V(8, y3Var.a());
            }
        }
    }

    class b extends androidx.room.f {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        protected String e() {
            return "UPDATE OR ABORT `adList_room` SET `_id` = ?,`ad_creative_id` = ?,`codeSeatId` = ?,`file_path` = ?,`price` = ?,`is_offline_ad` = ?,`ad_request_ver` = ?,`ad_bean` = ? WHERE `_id` = ?";
        }

        @Override
        public void j(z3.h hVar, y3 y3Var) {
            hVar.c(1, y3Var.o());
            if (y3Var.f() == null) {
                hVar.g(2);
            } else {
                hVar.V(2, y3Var.f());
            }
            if (y3Var.k() == null) {
                hVar.g(3);
            } else {
                hVar.V(3, y3Var.k());
            }
            if (y3Var.m() == null) {
                hVar.g(4);
            } else {
                hVar.V(4, y3Var.m());
            }
            if (y3Var.n() == null) {
                hVar.g(5);
            } else {
                hVar.a(5, y3Var.n().doubleValue());
            }
            if (y3Var.p() == null) {
                hVar.g(6);
            } else {
                hVar.c(6, y3Var.p().intValue());
            }
            if (y3Var.i() == null) {
                hVar.g(7);
            } else {
                hVar.c(7, y3Var.i().intValue());
            }
            if (y3Var.a() == null) {
                hVar.g(8);
            } else {
                hVar.V(8, y3Var.a());
            }
            hVar.c(9, y3Var.o());
        }
    }

    class c extends androidx.room.l0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM adList_room WHERE codeSeatId = ? AND ad_creative_id = ?";
        }
    }

    class d extends androidx.room.l0 {
        d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM adList_room WHERE codeSeatId = ? AND ad_request_ver < ? AND is_offline_ad = 1";
        }
    }

    class e extends androidx.room.l0 {
        e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM adList_room WHERE codeSeatId = ? AND is_offline_ad = 0";
        }
    }

    class f extends androidx.room.l0 {
        f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM adList_room";
        }
    }

    public w3(RoomDatabase roomDatabase) {
        this.f22393a = roomDatabase;
        this.f22394b = new a(roomDatabase);
        this.f22395c = new b(roomDatabase);
        this.f22396d = new c(roomDatabase);
        this.f22397e = new d(roomDatabase);
        this.f22398f = new e(roomDatabase);
        this.f22399g = new f(roomDatabase);
    }

    public static List e() {
        return Collections.emptyList();
    }

    @Override
    public int a(List list) {
        this.f22393a.j();
        this.f22393a.k();
        try {
            int iL = this.f22395c.l(list);
            this.f22393a.e0();
            return iL;
        } finally {
            this.f22393a.t();
        }
    }

    @Override
    public int b(z3.g gVar) {
        this.f22393a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f22393a, gVar, false, null);
        try {
            return cursorG.moveToFirst() ? cursorG.getInt(0) : 0;
        } finally {
            cursorG.close();
        }
    }

    @Override
    public void c(List list) {
        this.f22393a.j();
        this.f22393a.k();
        try {
            this.f22394b.k(list);
            this.f22393a.e0();
        } finally {
            this.f22393a.t();
        }
    }

    @Override
    public List d(List list) {
        StringBuilder sbB = androidx.room.util.l.b();
        sbB.append("SELECT * FROM adList_room WHERE ad_creative_id IN (");
        int i10 = 1;
        int size = list == null ? 1 : list.size();
        androidx.room.util.l.a(sbB, size);
        sbB.append(")");
        androidx.room.i0 i0VarF = androidx.room.i0.f(sbB.toString(), size);
        if (list == null) {
            i0VarF.g(1);
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (str == null) {
                    i0VarF.g(i10);
                } else {
                    i0VarF.V(i10, str);
                }
                i10++;
            }
        }
        this.f22393a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f22393a, i0VarF, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "_id");
            int iE2 = androidx.room.util.a.e(cursorG, "ad_creative_id");
            int iE3 = androidx.room.util.a.e(cursorG, "codeSeatId");
            int iE4 = androidx.room.util.a.e(cursorG, "file_path");
            int iE5 = androidx.room.util.a.e(cursorG, BidResponsed.KEY_PRICE);
            int iE6 = androidx.room.util.a.e(cursorG, TrackingKey.IS_OFFLINE_AD);
            int iE7 = androidx.room.util.a.e(cursorG, "ad_request_ver");
            int iE8 = androidx.room.util.a.e(cursorG, "ad_bean");
            ArrayList arrayList = new ArrayList(cursorG.getCount());
            while (cursorG.moveToNext()) {
                arrayList.add(new y3(cursorG.getInt(iE), cursorG.isNull(iE2) ? null : cursorG.getString(iE2), cursorG.isNull(iE3) ? null : cursorG.getString(iE3), cursorG.isNull(iE4) ? null : cursorG.getString(iE4), cursorG.isNull(iE5) ? null : Double.valueOf(cursorG.getDouble(iE5)), cursorG.isNull(iE6) ? null : Integer.valueOf(cursorG.getInt(iE6)), cursorG.isNull(iE7) ? null : Integer.valueOf(cursorG.getInt(iE7)), cursorG.isNull(iE8) ? null : cursorG.getString(iE8)));
            }
            return arrayList;
        } finally {
            cursorG.close();
            i0VarF.release();
        }
    }

    @Override
    public void a() {
        this.f22393a.j();
        z3.h hVarB = this.f22399g.b();
        try {
            this.f22393a.k();
            try {
                hVarB.F();
                this.f22393a.e0();
                this.f22393a.t();
                this.f22399g.h(hVarB);
            } catch (Throwable th2) {
                this.f22393a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22399g.h(hVarB);
            throw th3;
        }
    }

    @Override
    public Cursor a(z3.g gVar) {
        return this.f22393a.V(gVar);
    }
}
