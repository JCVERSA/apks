package com.cloud.hisavana.sdk;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import androidx.room.f;
import java.util.Collections;
import java.util.List;

public final class a1 implements z0 {

    private final RoomDatabase f20948a;

    private final androidx.room.h f20949b;

    private final f f20950c;

    private final androidx.room.l0 f20951d;

    private final androidx.room.l0 f20952e;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        protected String e() {
            return "INSERT OR REPLACE INTO `cloudList_room` (`codeSeatId`,`code_seat_bean`) VALUES (?,?)";
        }

        @Override
        public void j(z3.h hVar, c1 c1Var) {
            if (c1Var.a() == null) {
                hVar.g(1);
            } else {
                hVar.V(1, c1Var.a());
            }
            if (c1Var.b() == null) {
                hVar.g(2);
            } else {
                hVar.V(2, c1Var.b());
            }
        }
    }

    class b extends f {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        protected String e() {
            return "UPDATE OR ABORT `cloudList_room` SET `codeSeatId` = ?,`code_seat_bean` = ? WHERE `codeSeatId` = ?";
        }

        @Override
        public void j(z3.h hVar, c1 c1Var) {
            if (c1Var.a() == null) {
                hVar.g(1);
            } else {
                hVar.V(1, c1Var.a());
            }
            if (c1Var.b() == null) {
                hVar.g(2);
            } else {
                hVar.V(2, c1Var.b());
            }
            if (c1Var.a() == null) {
                hVar.g(3);
            } else {
                hVar.V(3, c1Var.a());
            }
        }
    }

    class c extends androidx.room.l0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM cloudList_room";
        }
    }

    class d extends androidx.room.l0 {
        d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "UPDATE cloudList_room SET code_seat_bean = ? WHERE codeSeatId = ?";
        }
    }

    public a1(RoomDatabase roomDatabase) {
        this.f20948a = roomDatabase;
        this.f20949b = new a(roomDatabase);
        this.f20950c = new b(roomDatabase);
        this.f20951d = new c(roomDatabase);
        this.f20952e = new d(roomDatabase);
    }

    public static List d() {
        return Collections.emptyList();
    }

    @Override
    public int a(List list) {
        this.f20948a.j();
        this.f20948a.k();
        try {
            int iL = this.f20950c.l(list);
            this.f20948a.e0();
            return iL;
        } finally {
            this.f20948a.t();
        }
    }

    @Override
    public int b(z3.g gVar) {
        this.f20948a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f20948a, gVar, false, null);
        try {
            return cursorG.moveToFirst() ? cursorG.getInt(0) : 0;
        } finally {
            cursorG.close();
        }
    }

    @Override
    public void c(List list) {
        this.f20948a.j();
        this.f20948a.k();
        try {
            this.f20949b.k(list);
            this.f20948a.e0();
        } finally {
            this.f20948a.t();
        }
    }

    @Override
    public void a() {
        this.f20948a.j();
        z3.h hVarB = this.f20951d.b();
        try {
            this.f20948a.k();
            try {
                hVarB.F();
                this.f20948a.e0();
                this.f20948a.t();
                this.f20951d.h(hVarB);
            } catch (Throwable th2) {
                this.f20948a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f20951d.h(hVarB);
            throw th3;
        }
    }

    @Override
    public Cursor a(z3.g gVar) {
        return this.f20948a.V(gVar);
    }
}
