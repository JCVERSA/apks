package com.cloud.hisavana.sdk;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class d1 implements b1 {

    private final RoomDatabase f21744a;

    private final androidx.room.h f21745b;

    private final f f21746c;

    private final androidx.room.l0 f21747d;

    private final androidx.room.l0 f21748e;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        protected String e() {
            return "INSERT OR REPLACE INTO `retry_tracking_table_room` (`uuid`,`create_time`,`retry_times`,`tracking_data`,`md5`) VALUES (?,?,?,?,?)";
        }

        @Override
        public void j(z3.h hVar, i1 i1Var) {
            if (i1Var.j() == null) {
                hVar.g(1);
            } else {
                hVar.V(1, i1Var.j());
            }
            if (i1Var.a() == null) {
                hVar.g(2);
            } else {
                hVar.c(2, i1Var.a().longValue());
            }
            if (i1Var.g() == null) {
                hVar.g(3);
            } else {
                hVar.c(3, i1Var.g().intValue());
            }
            if (i1Var.i() == null) {
                hVar.g(4);
            } else {
                hVar.V(4, i1Var.i());
            }
            if (i1Var.e() == null) {
                hVar.g(5);
            } else {
                hVar.V(5, i1Var.e());
            }
        }
    }

    class b extends f {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        protected String e() {
            return "UPDATE OR ABORT `retry_tracking_table_room` SET `uuid` = ?,`create_time` = ?,`retry_times` = ?,`tracking_data` = ?,`md5` = ? WHERE `uuid` = ?";
        }

        @Override
        public void j(z3.h hVar, i1 i1Var) {
            if (i1Var.j() == null) {
                hVar.g(1);
            } else {
                hVar.V(1, i1Var.j());
            }
            if (i1Var.a() == null) {
                hVar.g(2);
            } else {
                hVar.c(2, i1Var.a().longValue());
            }
            if (i1Var.g() == null) {
                hVar.g(3);
            } else {
                hVar.c(3, i1Var.g().intValue());
            }
            if (i1Var.i() == null) {
                hVar.g(4);
            } else {
                hVar.V(4, i1Var.i());
            }
            if (i1Var.e() == null) {
                hVar.g(5);
            } else {
                hVar.V(5, i1Var.e());
            }
            if (i1Var.j() == null) {
                hVar.g(6);
            } else {
                hVar.V(6, i1Var.j());
            }
        }
    }

    class c extends androidx.room.l0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM retry_tracking_table_room WHERE create_time < ?";
        }
    }

    class d extends androidx.room.l0 {
        d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM retry_tracking_table_room";
        }
    }

    public d1(RoomDatabase roomDatabase) {
        this.f21744a = roomDatabase;
        this.f21745b = new a(roomDatabase);
        this.f21746c = new b(roomDatabase);
        this.f21747d = new c(roomDatabase);
        this.f21748e = new d(roomDatabase);
    }

    public static List e() {
        return Collections.emptyList();
    }

    @Override
    public int a(long j10) {
        this.f21744a.j();
        z3.h hVarB = this.f21747d.b();
        hVarB.c(1, j10);
        try {
            this.f21744a.k();
            try {
                int iF = hVarB.F();
                this.f21744a.e0();
                this.f21744a.t();
                this.f21747d.h(hVarB);
                return iF;
            } catch (Throwable th2) {
                this.f21744a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f21747d.h(hVarB);
            throw th3;
        }
    }

    @Override
    public void b() {
        this.f21744a.j();
        z3.h hVarB = this.f21748e.b();
        try {
            this.f21744a.k();
            try {
                hVarB.F();
                this.f21744a.e0();
                this.f21744a.t();
                this.f21748e.h(hVarB);
            } catch (Throwable th2) {
                this.f21744a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f21748e.h(hVarB);
            throw th3;
        }
    }

    @Override
    public int c(i1 i1Var) {
        this.f21744a.j();
        this.f21744a.k();
        try {
            int iK = this.f21746c.k(i1Var);
            this.f21744a.e0();
            return iK;
        } finally {
            this.f21744a.t();
        }
    }

    @Override
    public void d(i1 i1Var) {
        this.f21744a.j();
        this.f21744a.k();
        try {
            this.f21745b.l(i1Var);
            this.f21744a.e0();
        } finally {
            this.f21744a.t();
        }
    }

    @Override
    public int b(String[] strArr) {
        this.f21744a.j();
        StringBuilder sbB = androidx.room.util.l.b();
        sbB.append("DELETE FROM retry_tracking_table_room WHERE uuid in (");
        androidx.room.util.l.a(sbB, strArr.length);
        sbB.append(")");
        z3.h hVarM = this.f21744a.m(sbB.toString());
        int i10 = 1;
        for (String str : strArr) {
            if (str == null) {
                hVarM.g(i10);
            } else {
                hVarM.V(i10, str);
            }
            i10++;
        }
        this.f21744a.k();
        try {
            int iF = hVarM.F();
            this.f21744a.e0();
            return iF;
        } finally {
            this.f21744a.t();
        }
    }

    @Override
    public List a() {
        androidx.room.i0 i0VarF = androidx.room.i0.f("SELECT tracking_data FROM retry_tracking_table_room", 0);
        this.f21744a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f21744a, i0VarF, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorG.getCount());
            while (cursorG.moveToNext()) {
                arrayList.add(cursorG.isNull(0) ? null : cursorG.getString(0));
            }
            return arrayList;
        } finally {
            cursorG.close();
            i0VarF.release();
        }
    }

    @Override
    public Cursor a(z3.g gVar) {
        return this.f21744a.V(gVar);
    }
}
