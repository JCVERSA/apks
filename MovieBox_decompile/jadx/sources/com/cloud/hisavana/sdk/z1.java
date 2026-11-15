package com.cloud.hisavana.sdk;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class z1 implements y1 {

    private final RoomDatabase f22465a;

    private final androidx.room.h f22466b;

    private final androidx.room.l0 f22467c;

    private final androidx.room.l0 f22468d;

    private final androidx.room.l0 f22469e;

    private final androidx.room.l0 f22470f;

    private final androidx.room.l0 f22471g;

    private final androidx.room.l0 f22472h;

    private final androidx.room.l0 f22473i;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        protected String e() {
            return "INSERT OR REPLACE INTO `default_ad_room` (`ad_creative_id`,`codeSeatId`,`ad_type`,`price`,`ad_request_ver`,`displayed_times`,`displayed_date`,`start_date`,`end_date`,`display_max_times`,`file_path`,`default_country_white`,`default_country_black`,`default_brand_white`,`default_brand_black`,`ad_bean`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void j(z3.h hVar, c2 c2Var) {
            if (c2Var.b() == null) {
                hVar.g(1);
            } else {
                hVar.V(1, c2Var.b());
            }
            if (c2Var.e() == null) {
                hVar.g(2);
            } else {
                hVar.V(2, c2Var.e());
            }
            hVar.c(3, c2Var.d());
            if (c2Var.o() == null) {
                hVar.g(4);
            } else {
                hVar.a(4, c2Var.o().doubleValue());
            }
            hVar.c(5, c2Var.c());
            hVar.c(6, c2Var.l());
            if (c2Var.k() == null) {
                hVar.g(7);
            } else {
                hVar.V(7, c2Var.k());
            }
            if (c2Var.p() == null) {
                hVar.g(8);
            } else {
                hVar.V(8, c2Var.p());
            }
            if (c2Var.m() == null) {
                hVar.g(9);
            } else {
                hVar.V(9, c2Var.m());
            }
            hVar.c(10, c2Var.j());
            if (c2Var.n() == null) {
                hVar.g(11);
            } else {
                hVar.V(11, c2Var.n());
            }
            if (c2Var.i() == null) {
                hVar.g(12);
            } else {
                hVar.V(12, c2Var.i());
            }
            if (c2Var.h() == null) {
                hVar.g(13);
            } else {
                hVar.V(13, c2Var.h());
            }
            if (c2Var.g() == null) {
                hVar.g(14);
            } else {
                hVar.V(14, c2Var.g());
            }
            if (c2Var.f() == null) {
                hVar.g(15);
            } else {
                hVar.V(15, c2Var.f());
            }
            if (c2Var.a() == null) {
                hVar.g(16);
            } else {
                hVar.V(16, c2Var.a());
            }
        }
    }

    class b extends androidx.room.l0 {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "UPDATE default_ad_room SET displayed_times = ?, displayed_date = ? WHERE ad_creative_id = ? AND codeSeatId = ?";
        }
    }

    class c extends androidx.room.l0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM default_ad_room WHERE ad_creative_id = ? AND codeSeatId = ?";
        }
    }

    class d extends androidx.room.l0 {
        d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "UPDATE default_ad_room SET file_path = '' WHERE file_path LIKE '%' || ? || '.0'";
        }
    }

    class e extends androidx.room.l0 {
        e(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM default_ad_room WHERE codeSeatId = ? AND ad_request_ver < (SELECT MAX(ad_request_ver) FROM default_ad_room WHERE codeSeatId = ?)";
        }
    }

    class f extends androidx.room.l0 {
        f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "UPDATE default_ad_room SET file_path = ? WHERE ad_creative_id = ? AND codeSeatId = ?";
        }
    }

    class g extends androidx.room.l0 {
        g(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM default_ad_room WHERE ad_request_ver < ?";
        }
    }

    class h extends androidx.room.l0 {
        h(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM default_ad_room";
        }
    }

    public z1(RoomDatabase roomDatabase) {
        this.f22465a = roomDatabase;
        this.f22466b = new a(roomDatabase);
        this.f22467c = new b(roomDatabase);
        this.f22468d = new c(roomDatabase);
        this.f22469e = new d(roomDatabase);
        this.f22470f = new e(roomDatabase);
        this.f22471g = new f(roomDatabase);
        this.f22472h = new g(roomDatabase);
        this.f22473i = new h(roomDatabase);
    }

    public static List c() {
        return Collections.emptyList();
    }

    @Override
    public void a(c2 c2Var) {
        this.f22465a.j();
        this.f22465a.k();
        try {
            this.f22466b.l(c2Var);
            this.f22465a.e0();
        } finally {
            this.f22465a.t();
        }
    }

    @Override
    public void b(String str) {
        this.f22465a.j();
        z3.h hVarB = this.f22470f.b();
        if (str == null) {
            hVarB.g(1);
        } else {
            hVarB.V(1, str);
        }
        if (str == null) {
            hVarB.g(2);
        } else {
            hVarB.V(2, str);
        }
        try {
            this.f22465a.k();
            try {
                hVarB.F();
                this.f22465a.e0();
                this.f22465a.t();
                this.f22470f.h(hVarB);
            } catch (Throwable th2) {
                this.f22465a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22470f.h(hVarB);
            throw th3;
        }
    }

    @Override
    public void a(String str, String str2) {
        this.f22465a.j();
        z3.h hVarB = this.f22468d.b();
        if (str == null) {
            hVarB.g(1);
        } else {
            hVarB.V(1, str);
        }
        if (str2 == null) {
            hVarB.g(2);
        } else {
            hVarB.V(2, str2);
        }
        try {
            this.f22465a.k();
            try {
                hVarB.F();
                this.f22465a.e0();
                this.f22465a.t();
                this.f22468d.h(hVarB);
            } catch (Throwable th2) {
                this.f22465a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22468d.h(hVarB);
            throw th3;
        }
    }

    @Override
    public void b(String str, String str2, int i10, String str3) {
        this.f22465a.j();
        z3.h hVarB = this.f22467c.b();
        hVarB.c(1, i10);
        if (str3 == null) {
            hVarB.g(2);
        } else {
            hVarB.V(2, str3);
        }
        if (str == null) {
            hVarB.g(3);
        } else {
            hVarB.V(3, str);
        }
        if (str2 == null) {
            hVarB.g(4);
        } else {
            hVarB.V(4, str2);
        }
        try {
            this.f22465a.k();
            try {
                hVarB.F();
                this.f22465a.e0();
                this.f22465a.t();
                this.f22467c.h(hVarB);
            } catch (Throwable th2) {
                this.f22465a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22467c.h(hVarB);
            throw th3;
        }
    }

    @Override
    public void a(String str) {
        this.f22465a.j();
        z3.h hVarB = this.f22469e.b();
        if (str == null) {
            hVarB.g(1);
        } else {
            hVarB.V(1, str);
        }
        try {
            this.f22465a.k();
            try {
                hVarB.F();
                this.f22465a.e0();
                this.f22465a.t();
                this.f22469e.h(hVarB);
            } catch (Throwable th2) {
                this.f22465a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22469e.h(hVarB);
            throw th3;
        }
    }

    @Override
    public void b() {
        this.f22465a.j();
        z3.h hVarB = this.f22473i.b();
        try {
            this.f22465a.k();
            try {
                hVarB.F();
                this.f22465a.e0();
                this.f22465a.t();
                this.f22473i.h(hVarB);
            } catch (Throwable th2) {
                this.f22465a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22473i.h(hVarB);
            throw th3;
        }
    }

    @Override
    public void a(String str, String str2, String str3) {
        this.f22465a.j();
        z3.h hVarB = this.f22471g.b();
        if (str3 == null) {
            hVarB.g(1);
        } else {
            hVarB.V(1, str3);
        }
        if (str == null) {
            hVarB.g(2);
        } else {
            hVarB.V(2, str);
        }
        if (str2 == null) {
            hVarB.g(3);
        } else {
            hVarB.V(3, str2);
        }
        try {
            this.f22465a.k();
            try {
                hVarB.F();
                this.f22465a.e0();
                this.f22465a.t();
                this.f22471g.h(hVarB);
            } catch (Throwable th2) {
                this.f22465a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22471g.h(hVarB);
            throw th3;
        }
    }

    @Override
    public void a(int i10) {
        this.f22465a.j();
        z3.h hVarB = this.f22472h.b();
        hVarB.c(1, i10);
        try {
            this.f22465a.k();
            try {
                hVarB.F();
                this.f22465a.e0();
                this.f22465a.t();
                this.f22472h.h(hVarB);
            } catch (Throwable th2) {
                this.f22465a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22472h.h(hVarB);
            throw th3;
        }
    }

    @Override
    public List a() throws Throwable {
        androidx.room.i0 i0Var;
        androidx.room.i0 i0VarF = androidx.room.i0.f("SELECT * FROM default_ad_room", 0);
        this.f22465a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f22465a, i0VarF, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "ad_creative_id");
            int iE2 = androidx.room.util.a.e(cursorG, "codeSeatId");
            int iE3 = androidx.room.util.a.e(cursorG, "ad_type");
            int iE4 = androidx.room.util.a.e(cursorG, BidResponsed.KEY_PRICE);
            int iE5 = androidx.room.util.a.e(cursorG, "ad_request_ver");
            int iE6 = androidx.room.util.a.e(cursorG, "displayed_times");
            int iE7 = androidx.room.util.a.e(cursorG, "displayed_date");
            int iE8 = androidx.room.util.a.e(cursorG, "start_date");
            int iE9 = androidx.room.util.a.e(cursorG, "end_date");
            int iE10 = androidx.room.util.a.e(cursorG, "display_max_times");
            int iE11 = androidx.room.util.a.e(cursorG, "file_path");
            int iE12 = androidx.room.util.a.e(cursorG, "default_country_white");
            int iE13 = androidx.room.util.a.e(cursorG, "default_country_black");
            int iE14 = androidx.room.util.a.e(cursorG, "default_brand_white");
            i0Var = i0VarF;
            try {
                int iE15 = androidx.room.util.a.e(cursorG, "default_brand_black");
                int iE16 = androidx.room.util.a.e(cursorG, "ad_bean");
                int i10 = iE14;
                ArrayList arrayList = new ArrayList(cursorG.getCount());
                while (cursorG.moveToNext()) {
                    String string = cursorG.isNull(iE) ? null : cursorG.getString(iE);
                    String string2 = cursorG.isNull(iE2) ? null : cursorG.getString(iE2);
                    int i11 = cursorG.getInt(iE3);
                    Double dValueOf = cursorG.isNull(iE4) ? null : Double.valueOf(cursorG.getDouble(iE4));
                    int i12 = cursorG.getInt(iE5);
                    int i13 = cursorG.getInt(iE6);
                    String string3 = cursorG.isNull(iE7) ? null : cursorG.getString(iE7);
                    String string4 = cursorG.isNull(iE8) ? null : cursorG.getString(iE8);
                    String string5 = cursorG.isNull(iE9) ? null : cursorG.getString(iE9);
                    int i14 = cursorG.getInt(iE10);
                    String string6 = cursorG.isNull(iE11) ? null : cursorG.getString(iE11);
                    String string7 = cursorG.isNull(iE12) ? null : cursorG.getString(iE12);
                    String string8 = cursorG.isNull(iE13) ? null : cursorG.getString(iE13);
                    String string9 = cursorG.isNull(i10) ? null : cursorG.getString(i10);
                    int i15 = iE15;
                    int i16 = iE;
                    String string10 = cursorG.isNull(i15) ? null : cursorG.getString(i15);
                    int i17 = iE16;
                    arrayList.add(new c2(string, string2, i11, dValueOf, i12, i13, string3, string4, string5, i14, string6, string7, string8, string9, string10, cursorG.isNull(i17) ? null : cursorG.getString(i17)));
                    iE = i16;
                    iE15 = i15;
                    iE16 = i17;
                    i10 = i10;
                }
                cursorG.close();
                i0Var.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                cursorG.close();
                i0Var.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            i0Var = i0VarF;
        }
    }

    @Override
    public void a(List list) {
        this.f22465a.j();
        StringBuilder sbB = androidx.room.util.l.b();
        sbB.append("DELETE FROM default_ad_room WHERE codeSeatId NOT IN (");
        androidx.room.util.l.a(sbB, list.size());
        sbB.append(")");
        z3.h hVarM = this.f22465a.m(sbB.toString());
        Iterator it = list.iterator();
        int i10 = 1;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str == null) {
                hVarM.g(i10);
            } else {
                hVarM.V(i10, str);
            }
            i10++;
        }
        this.f22465a.k();
        try {
            hVarM.F();
            this.f22465a.e0();
        } finally {
            this.f22465a.t();
        }
    }
}
