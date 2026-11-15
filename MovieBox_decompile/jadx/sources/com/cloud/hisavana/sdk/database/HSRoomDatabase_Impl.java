package com.cloud.hisavana.sdk.database;

import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.c;
import androidx.room.h0;
import androidx.room.util.b;
import androidx.room.util.m;
import com.cloud.hisavana.sdk.a1;
import com.cloud.hisavana.sdk.b1;
import com.cloud.hisavana.sdk.d1;
import com.cloud.hisavana.sdk.u1;
import com.cloud.hisavana.sdk.v3;
import com.cloud.hisavana.sdk.v5;
import com.cloud.hisavana.sdk.w1;
import com.cloud.hisavana.sdk.w3;
import com.cloud.hisavana.sdk.w5;
import com.cloud.hisavana.sdk.x4;
import com.cloud.hisavana.sdk.y1;
import com.cloud.hisavana.sdk.y4;
import com.cloud.hisavana.sdk.z0;
import com.cloud.hisavana.sdk.z1;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import z3.d;
import z3.e;

public final class HSRoomDatabase_Impl extends HSRoomDatabase {
    private volatile x4 A;
    private volatile v5 B;
    private volatile b1 C;

    private volatile z0 f21775x;

    private volatile v3 f21776y;

    private volatile y1 f21777z;

    @Override
    public Set C() {
        return new HashSet();
    }

    @Override
    protected Map F() {
        HashMap map = new HashMap();
        map.put(z0.class, a1.d());
        map.put(v3.class, w3.e());
        map.put(y1.class, z1.c());
        map.put(x4.class, y4.c());
        map.put(v5.class, w5.c());
        map.put(b1.class, d1.e());
        map.put(u1.class, w1.a());
        return map;
    }

    @Override
    public v3 h0() {
        v3 v3Var;
        if (this.f21776y != null) {
            return this.f21776y;
        }
        synchronized (this) {
            try {
                if (this.f21776y == null) {
                    this.f21776y = new w3(this);
                }
                v3Var = this.f21776y;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return v3Var;
    }

    @Override
    public x4 k0() {
        x4 x4Var;
        if (this.A != null) {
            return this.A;
        }
        synchronized (this) {
            try {
                if (this.A == null) {
                    this.A = new y4(this);
                }
                x4Var = this.A;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return x4Var;
    }

    @Override
    public v5 n0() {
        v5 v5Var;
        if (this.B != null) {
            return this.B;
        }
        synchronized (this) {
            try {
                if (this.B == null) {
                    this.B = new w5(this);
                }
                v5Var = this.B;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return v5Var;
    }

    @Override
    public z0 p0() {
        z0 z0Var;
        if (this.f21775x != null) {
            return this.f21775x;
        }
        synchronized (this) {
            try {
                if (this.f21775x == null) {
                    this.f21775x = new a1(this);
                }
                z0Var = this.f21775x;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z0Var;
    }

    @Override
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "cloudList_room", "adList_room", "attr_click_room", "attr_impression_room", "retry_tracking_table_room", "default_ad_room");
    }

    @Override
    protected e s(c cVar) {
        return cVar.f14251c.a(e.b.a(cVar.f14249a).d(cVar.f14250b).c(new h0(cVar, new a(3400), "45caaee56032168186f6d5e50f533e4c", "15505439a33f76665084a50b0e709cb5")).b());
    }

    @Override
    public y1 t0() {
        y1 y1Var;
        if (this.f21777z != null) {
            return this.f21777z;
        }
        synchronized (this) {
            try {
                if (this.f21777z == null) {
                    this.f21777z = new z1(this);
                }
                y1Var = this.f21777z;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return y1Var;
    }

    @Override
    public List v(Map map) {
        return new ArrayList();
    }

    @Override
    public b1 x0() {
        b1 b1Var;
        if (this.C != null) {
            return this.C;
        }
        synchronized (this) {
            try {
                if (this.C == null) {
                    this.C = new d1(this);
                }
                b1Var = this.C;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return b1Var;
    }

    class a extends h0.b {
        a(int i10) {
            super(i10);
        }

        @Override
        public void a(d dVar) {
            dVar.E("CREATE TABLE IF NOT EXISTS `cloudList_room` (`codeSeatId` TEXT NOT NULL, `code_seat_bean` TEXT, PRIMARY KEY(`codeSeatId`))");
            dVar.E("CREATE TABLE IF NOT EXISTS `adList_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ad_creative_id` TEXT, `codeSeatId` TEXT, `file_path` TEXT, `price` REAL, `is_offline_ad` INTEGER, `ad_request_ver` INTEGER, `ad_bean` TEXT)");
            dVar.E("CREATE TABLE IF NOT EXISTS `attr_click_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `ac_type` INTEGER NOT NULL, `pkg` TEXT NOT NULL, `dl_type` TEXT NOT NULL, `codeSeatId` TEXT NOT NULL, `click_ts` INTEGER NOT NULL, `ad_creative_id` TEXT NOT NULL)");
            dVar.E("CREATE TABLE IF NOT EXISTS `attr_impression_room` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `pkg` TEXT NOT NULL, `imp_ts` INTEGER NOT NULL, `ad_creative_id` TEXT NOT NULL)");
            dVar.E("CREATE TABLE IF NOT EXISTS `retry_tracking_table_room` (`uuid` TEXT NOT NULL, `create_time` INTEGER, `retry_times` INTEGER, `tracking_data` TEXT, `md5` TEXT, PRIMARY KEY(`uuid`))");
            dVar.E("CREATE TABLE IF NOT EXISTS `default_ad_room` (`ad_creative_id` TEXT NOT NULL, `codeSeatId` TEXT NOT NULL, `ad_type` INTEGER NOT NULL, `price` REAL, `ad_request_ver` INTEGER NOT NULL, `displayed_times` INTEGER NOT NULL, `displayed_date` TEXT, `start_date` TEXT, `end_date` TEXT, `display_max_times` INTEGER NOT NULL, `file_path` TEXT, `default_country_white` TEXT, `default_country_black` TEXT, `default_brand_white` TEXT, `default_brand_black` TEXT, `ad_bean` TEXT, PRIMARY KEY(`ad_creative_id`, `codeSeatId`))");
            dVar.E("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            dVar.E("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '45caaee56032168186f6d5e50f533e4c')");
        }

        @Override
        public void b(d dVar) {
            dVar.E("DROP TABLE IF EXISTS `cloudList_room`");
            dVar.E("DROP TABLE IF EXISTS `adList_room`");
            dVar.E("DROP TABLE IF EXISTS `attr_click_room`");
            dVar.E("DROP TABLE IF EXISTS `attr_impression_room`");
            dVar.E("DROP TABLE IF EXISTS `retry_tracking_table_room`");
            dVar.E("DROP TABLE IF EXISTS `default_ad_room`");
            List list = ((RoomDatabase) HSRoomDatabase_Impl.this).f14182j;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.b) it.next()).d(dVar);
                }
            }
        }

        @Override
        public void c(d dVar) {
            List list = ((RoomDatabase) HSRoomDatabase_Impl.this).f14182j;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.b) it.next()).b(dVar);
                }
            }
        }

        @Override
        public void d(d dVar) {
            ((RoomDatabase) HSRoomDatabase_Impl.this).f14173a = dVar;
            HSRoomDatabase_Impl.this.Q(dVar);
            List list = ((RoomDatabase) HSRoomDatabase_Impl.this).f14182j;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((RoomDatabase.b) it.next()).f(dVar);
                }
            }
        }

        @Override
        public void f(d dVar) {
            b.b(dVar);
        }

        @Override
        public h0.c g(d dVar) {
            HashMap map = new HashMap(2);
            map.put("codeSeatId", new m.a("codeSeatId", "TEXT", true, 1, null, 1));
            map.put("code_seat_bean", new m.a("code_seat_bean", "TEXT", false, 0, null, 1));
            m mVar = new m("cloudList_room", map, new HashSet(0), new HashSet(0));
            m mVarB = m.b(dVar, "cloudList_room");
            if (!mVar.equals(mVarB)) {
                return new h0.c(false, "cloudList_room(com.cloud.hisavana.sdk.database.entities.CloudConfigEntity).\n Expected:\n" + mVar + "\n Found:\n" + mVarB);
            }
            HashMap map2 = new HashMap(8);
            map2.put("_id", new m.a("_id", "INTEGER", true, 1, null, 1));
            map2.put("ad_creative_id", new m.a("ad_creative_id", "TEXT", false, 0, null, 1));
            map2.put("codeSeatId", new m.a("codeSeatId", "TEXT", false, 0, null, 1));
            map2.put("file_path", new m.a("file_path", "TEXT", false, 0, null, 1));
            map2.put(BidResponsed.KEY_PRICE, new m.a(BidResponsed.KEY_PRICE, "REAL", false, 0, null, 1));
            map2.put(TrackingKey.IS_OFFLINE_AD, new m.a(TrackingKey.IS_OFFLINE_AD, "INTEGER", false, 0, null, 1));
            map2.put("ad_request_ver", new m.a("ad_request_ver", "INTEGER", false, 0, null, 1));
            map2.put("ad_bean", new m.a("ad_bean", "TEXT", false, 0, null, 1));
            m mVar2 = new m("adList_room", map2, new HashSet(0), new HashSet(0));
            m mVarB2 = m.b(dVar, "adList_room");
            if (!mVar2.equals(mVarB2)) {
                return new h0.c(false, "adList_room(com.cloud.hisavana.sdk.database.entities.AdListEntity).\n Expected:\n" + mVar2 + "\n Found:\n" + mVarB2);
            }
            HashMap map3 = new HashMap(7);
            map3.put("_id", new m.a("_id", "INTEGER", true, 1, null, 1));
            map3.put("ac_type", new m.a("ac_type", "INTEGER", true, 0, null, 1));
            map3.put(PushConstants.PROVIDER_FIELD_PKG, new m.a(PushConstants.PROVIDER_FIELD_PKG, "TEXT", true, 0, null, 1));
            map3.put("dl_type", new m.a("dl_type", "TEXT", true, 0, null, 1));
            map3.put("codeSeatId", new m.a("codeSeatId", "TEXT", true, 0, null, 1));
            map3.put(TrackingKey.CLICK_TS, new m.a(TrackingKey.CLICK_TS, "INTEGER", true, 0, null, 1));
            map3.put("ad_creative_id", new m.a("ad_creative_id", "TEXT", true, 0, null, 1));
            m mVar3 = new m("attr_click_room", map3, new HashSet(0), new HashSet(0));
            m mVarB3 = m.b(dVar, "attr_click_room");
            if (!mVar3.equals(mVarB3)) {
                return new h0.c(false, "attr_click_room(com.cloud.hisavana.sdk.database.entities.AttrClickEntity).\n Expected:\n" + mVar3 + "\n Found:\n" + mVarB3);
            }
            HashMap map4 = new HashMap(4);
            map4.put("_id", new m.a("_id", "INTEGER", true, 1, null, 1));
            map4.put(PushConstants.PROVIDER_FIELD_PKG, new m.a(PushConstants.PROVIDER_FIELD_PKG, "TEXT", true, 0, null, 1));
            map4.put("imp_ts", new m.a("imp_ts", "INTEGER", true, 0, null, 1));
            map4.put("ad_creative_id", new m.a("ad_creative_id", "TEXT", true, 0, null, 1));
            m mVar4 = new m("attr_impression_room", map4, new HashSet(0), new HashSet(0));
            m mVarB4 = m.b(dVar, "attr_impression_room");
            if (!mVar4.equals(mVarB4)) {
                return new h0.c(false, "attr_impression_room(com.cloud.hisavana.sdk.database.entities.AttrImpressionEntity).\n Expected:\n" + mVar4 + "\n Found:\n" + mVarB4);
            }
            HashMap map5 = new HashMap(5);
            map5.put("uuid", new m.a("uuid", "TEXT", true, 1, null, 1));
            map5.put("create_time", new m.a("create_time", "INTEGER", false, 0, null, 1));
            map5.put("retry_times", new m.a("retry_times", "INTEGER", false, 0, null, 1));
            map5.put("tracking_data", new m.a("tracking_data", "TEXT", false, 0, null, 1));
            map5.put("md5", new m.a("md5", "TEXT", false, 0, null, 1));
            m mVar5 = new m("retry_tracking_table_room", map5, new HashSet(0), new HashSet(0));
            m mVarB5 = m.b(dVar, "retry_tracking_table_room");
            if (!mVar5.equals(mVarB5)) {
                return new h0.c(false, "retry_tracking_table_room(com.cloud.hisavana.sdk.database.entities.RetryTrackingEntity).\n Expected:\n" + mVar5 + "\n Found:\n" + mVarB5);
            }
            HashMap map6 = new HashMap(16);
            map6.put("ad_creative_id", new m.a("ad_creative_id", "TEXT", true, 1, null, 1));
            map6.put("codeSeatId", new m.a("codeSeatId", "TEXT", true, 2, null, 1));
            map6.put("ad_type", new m.a("ad_type", "INTEGER", true, 0, null, 1));
            map6.put(BidResponsed.KEY_PRICE, new m.a(BidResponsed.KEY_PRICE, "REAL", false, 0, null, 1));
            map6.put("ad_request_ver", new m.a("ad_request_ver", "INTEGER", true, 0, null, 1));
            map6.put("displayed_times", new m.a("displayed_times", "INTEGER", true, 0, null, 1));
            map6.put("displayed_date", new m.a("displayed_date", "TEXT", false, 0, null, 1));
            map6.put("start_date", new m.a("start_date", "TEXT", false, 0, null, 1));
            map6.put("end_date", new m.a("end_date", "TEXT", false, 0, null, 1));
            map6.put("display_max_times", new m.a("display_max_times", "INTEGER", true, 0, null, 1));
            map6.put("file_path", new m.a("file_path", "TEXT", false, 0, null, 1));
            map6.put("default_country_white", new m.a("default_country_white", "TEXT", false, 0, null, 1));
            map6.put("default_country_black", new m.a("default_country_black", "TEXT", false, 0, null, 1));
            map6.put("default_brand_white", new m.a("default_brand_white", "TEXT", false, 0, null, 1));
            map6.put("default_brand_black", new m.a("default_brand_black", "TEXT", false, 0, null, 1));
            map6.put("ad_bean", new m.a("ad_bean", "TEXT", false, 0, null, 1));
            m mVar6 = new m("default_ad_room", map6, new HashSet(0), new HashSet(0));
            m mVarB6 = m.b(dVar, "default_ad_room");
            if (mVar6.equals(mVarB6)) {
                return new h0.c(true, null);
            }
            return new h0.c(false, "default_ad_room(com.cloud.hisavana.sdk.database.entities.DefaultAdEntity).\n Expected:\n" + mVar6 + "\n Found:\n" + mVarB6);
        }

        @Override
        public void e(d dVar) {
        }
    }
}
