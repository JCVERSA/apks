package com.cloud.hisavana.sdk;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class w5 implements v5 {

    private final RoomDatabase f22406a;

    private final androidx.room.h f22407b;

    private final androidx.room.l0 f22408c;

    private final androidx.room.l0 f22409d;

    class a extends androidx.room.h {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        protected String e() {
            return "INSERT OR REPLACE INTO `attr_impression_room` (`_id`,`pkg`,`imp_ts`,`ad_creative_id`) VALUES (nullif(?, 0),?,?,?)";
        }

        @Override
        public void j(z3.h hVar, com.cloud.hisavana.sdk.b bVar) {
            hVar.c(1, bVar.d());
            if (bVar.c() == null) {
                hVar.g(2);
            } else {
                hVar.V(2, bVar.c());
            }
            hVar.c(3, bVar.b());
            if (bVar.a() == null) {
                hVar.g(4);
            } else {
                hVar.V(4, bVar.a());
            }
        }
    }

    class b extends androidx.room.l0 {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM attr_impression_room WHERE _id IN (SELECT _id FROM attr_impression_room ORDER BY _id ASC LIMIT ?)";
        }
    }

    class c extends androidx.room.l0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM attr_impression_room";
        }
    }

    public w5(RoomDatabase roomDatabase) {
        this.f22406a = roomDatabase;
        this.f22407b = new a(roomDatabase);
        this.f22408c = new b(roomDatabase);
        this.f22409d = new c(roomDatabase);
    }

    public static List c() {
        return Collections.emptyList();
    }

    @Override
    public void a(com.cloud.hisavana.sdk.b bVar) {
        this.f22406a.j();
        this.f22406a.k();
        try {
            this.f22407b.l(bVar);
            this.f22406a.e0();
        } finally {
            this.f22406a.t();
        }
    }

    @Override
    public List b() {
        androidx.room.i0 i0VarF = androidx.room.i0.f("SELECT * FROM attr_impression_room", 0);
        this.f22406a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f22406a, i0VarF, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "_id");
            int iE2 = androidx.room.util.a.e(cursorG, PushConstants.PROVIDER_FIELD_PKG);
            int iE3 = androidx.room.util.a.e(cursorG, "imp_ts");
            int iE4 = androidx.room.util.a.e(cursorG, "ad_creative_id");
            ArrayList arrayList = new ArrayList(cursorG.getCount());
            while (cursorG.moveToNext()) {
                arrayList.add(new com.cloud.hisavana.sdk.b(cursorG.getInt(iE), cursorG.isNull(iE2) ? null : cursorG.getString(iE2), cursorG.getLong(iE3), cursorG.isNull(iE4) ? null : cursorG.getString(iE4)));
            }
            return arrayList;
        } finally {
            cursorG.close();
            i0VarF.release();
        }
    }

    @Override
    public int a(int i10) {
        this.f22406a.j();
        z3.h hVarB = this.f22408c.b();
        hVarB.c(1, i10);
        try {
            this.f22406a.k();
            try {
                int iF = hVarB.F();
                this.f22406a.e0();
                this.f22406a.t();
                this.f22408c.h(hVarB);
                return iF;
            } catch (Throwable th2) {
                this.f22406a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22408c.h(hVarB);
            throw th3;
        }
    }

    @Override
    public int a() {
        this.f22406a.j();
        z3.h hVarB = this.f22409d.b();
        try {
            this.f22406a.k();
            try {
                int iF = hVarB.F();
                this.f22406a.e0();
                this.f22406a.t();
                this.f22409d.h(hVarB);
                return iF;
            } catch (Throwable th2) {
                this.f22406a.t();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f22409d.h(hVarB);
            throw th3;
        }
    }
}
