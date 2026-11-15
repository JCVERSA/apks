package com.cloud.hisavana.abtestkit.db;

import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.c;
import androidx.room.h0;
import androidx.room.util.b;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.hisavana.common.tracking.TrackingKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import x6.m;
import x6.q;
import x6.s;
import x6.y;
import z3.d;
import z3.e;

public final class ABRoomDatabase_Impl extends ABRoomDatabase {

    public volatile y f20699q;

    public volatile q f20700r;

    @Override
    public final Set C() {
        return new HashSet();
    }

    @Override
    public final Map F() {
        HashMap map = new HashMap();
        map.put(s.class, Collections.emptyList());
        map.put(m.class, Collections.emptyList());
        return map;
    }

    @Override
    public final m g0() {
        q qVar;
        if (this.f20700r != null) {
            return this.f20700r;
        }
        synchronized (this) {
            try {
                if (this.f20700r == null) {
                    this.f20700r = new q(this);
                }
                qVar = this.f20700r;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return qVar;
    }

    @Override
    public final s h0() {
        y yVar;
        if (this.f20699q != null) {
            return this.f20699q;
        }
        synchronized (this) {
            try {
                if (this.f20699q == null) {
                    this.f20699q = new y(this);
                }
                yVar = this.f20699q;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return yVar;
    }

    @Override
    public final InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "hisavana_ab_room", "hisavana_local_ab_room");
    }

    @Override
    public final e s(c cVar) {
        return cVar.f14251c.a(e.b.a(cVar.f14249a).d(cVar.f14250b).c(new h0(cVar, new a(), "c3731bb55f7c1b83c5a17ab41e6dc2b1", "59a3f677eceb796bf1de1bde197864ae")).b());
    }

    @Override
    public final List v(Map map) {
        return new ArrayList();
    }

    public class a extends h0.b {
        public a() {
            super(1);
        }

        @Override
        public final void a(d dVar) {
            dVar.E("CREATE TABLE IF NOT EXISTS `hisavana_ab_room` (`layer_id` INTEGER NOT NULL, `request_time` INTEGER NOT NULL, `ab_info` TEXT, PRIMARY KEY(`layer_id`))");
            dVar.E("CREATE TABLE IF NOT EXISTS `hisavana_local_ab_room` (`local_ab_version_code` INTEGER NOT NULL, `local_ab_json` TEXT, PRIMARY KEY(`local_ab_version_code`))");
            dVar.E("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            dVar.E("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c3731bb55f7c1b83c5a17ab41e6dc2b1')");
        }

        @Override
        public final void b(d dVar) {
            dVar.E("DROP TABLE IF EXISTS `hisavana_ab_room`");
            dVar.E("DROP TABLE IF EXISTS `hisavana_local_ab_room`");
            List list = ((RoomDatabase) ABRoomDatabase_Impl.this).f14182j;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.b) it.next()).d(dVar);
                }
            }
        }

        @Override
        public final void c(d dVar) {
            List list = ((RoomDatabase) ABRoomDatabase_Impl.this).f14182j;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.b) it.next()).b(dVar);
                }
            }
        }

        @Override
        public final void d(d dVar) {
            ((RoomDatabase) ABRoomDatabase_Impl.this).f14173a = dVar;
            ABRoomDatabase_Impl.this.Q(dVar);
            List list = ((RoomDatabase) ABRoomDatabase_Impl.this).f14182j;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.b) it.next()).f(dVar);
                }
            }
        }

        @Override
        public final void f(d dVar) {
            b.b(dVar);
        }

        @Override
        public final h0.c g(d dVar) {
            HashMap map = new HashMap(3);
            map.put(ClientABTestDTOKt.LAYER_ID, new androidx.room.util.m.a(ClientABTestDTOKt.LAYER_ID, "INTEGER", true, 1, null, 1));
            map.put(TrackingKey.REQUEST_TIME, new androidx.room.util.m.a(TrackingKey.REQUEST_TIME, "INTEGER", true, 0, null, 1));
            map.put("ab_info", new androidx.room.util.m.a("ab_info", "TEXT", false, 0, null, 1));
            androidx.room.util.m mVar = new androidx.room.util.m("hisavana_ab_room", map, new HashSet(0), new HashSet(0));
            androidx.room.util.m mVarB = androidx.room.util.m.b(dVar, "hisavana_ab_room");
            if (!mVar.equals(mVarB)) {
                return new h0.c(false, "hisavana_ab_room(com.cloud.hisavana.abtestkit.db.entities.OnlineABEntity).\n Expected:\n" + mVar + "\n Found:\n" + mVarB);
            }
            HashMap map2 = new HashMap(2);
            map2.put("local_ab_version_code", new androidx.room.util.m.a("local_ab_version_code", "INTEGER", true, 1, null, 1));
            map2.put("local_ab_json", new androidx.room.util.m.a("local_ab_json", "TEXT", false, 0, null, 1));
            androidx.room.util.m mVar2 = new androidx.room.util.m("hisavana_local_ab_room", map2, new HashSet(0), new HashSet(0));
            androidx.room.util.m mVarB2 = androidx.room.util.m.b(dVar, "hisavana_local_ab_room");
            if (mVar2.equals(mVarB2)) {
                return new h0.c(true, null);
            }
            return new h0.c(false, "hisavana_local_ab_room(com.cloud.hisavana.abtestkit.db.entities.LocalABEntity).\n Expected:\n" + mVar2 + "\n Found:\n" + mVarB2);
        }

        @Override
        public final void e(d dVar) {
        }
    }
}
