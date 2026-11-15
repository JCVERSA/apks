package com.transsion.push.db;

import androidx.room.InvalidationTracker;
import androidx.room.f0;
import androidx.room.util.m;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class PermanentPushDatabase_Impl extends PermanentPushDatabase {

    private volatile com.transsion.push.db.a f48719r;

    class a extends f0 {
        a(int i10, String str, String str2) {
            super(i10, str, str2);
        }

        @Override
        public void a(y3.b bVar) throws Exception {
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `permanent_item` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `deeplink` TEXT, `subject_id` TEXT, `image` TEXT, `title` TEXT)");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            y3.a.a(bVar, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '1fffbd46e501ef2aa1bccfc7df8cf2d6')");
        }

        @Override
        public void b(y3.b bVar) throws Exception {
            y3.a.a(bVar, "DROP TABLE IF EXISTS `permanent_item`");
        }

        @Override
        public void f(y3.b bVar) {
        }

        @Override
        public void g(y3.b bVar) {
            PermanentPushDatabase_Impl.this.P(bVar);
        }

        @Override
        public void h(y3.b bVar) {
        }

        @Override
        public void i(y3.b bVar) {
            androidx.room.util.b.a(bVar);
        }

        @Override
        public f0.a j(y3.b bVar) {
            HashMap map = new HashMap(5);
            map.put("id", new m.a("id", "INTEGER", true, 1, null, 1));
            map.put("deeplink", new m.a("deeplink", "TEXT", false, 0, null, 1));
            map.put("subject_id", new m.a("subject_id", "TEXT", false, 0, null, 1));
            map.put("image", new m.a("image", "TEXT", false, 0, null, 1));
            map.put(CampaignEx.JSON_KEY_TITLE, new m.a(CampaignEx.JSON_KEY_TITLE, "TEXT", false, 0, null, 1));
            m mVar = new m("permanent_item", map, new HashSet(0), new HashSet(0));
            m mVarA = m.a(bVar, "permanent_item");
            if (mVar.equals(mVarA)) {
                return new f0.a(true, null);
            }
            return new f0.a(false, "permanent_item(com.transsion.push.bean.PermanentItemBean).\n Expected:\n" + mVar + "\n Found:\n" + mVarA);
        }
    }

    @Override
    public Set C() {
        return new HashSet();
    }

    @Override
    protected Map F() {
        HashMap map = new HashMap();
        map.put(com.transsion.push.db.a.class, f.i());
        return map;
    }

    @Override
    public com.transsion.push.db.a i0() {
        com.transsion.push.db.a aVar;
        if (this.f48719r != null) {
            return this.f48719r;
        }
        synchronized (this) {
            try {
                if (this.f48719r == null) {
                    this.f48719r = new f(this);
                }
                aVar = this.f48719r;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public f0 r() {
        return new a(1, "1fffbd46e501ef2aa1bccfc7df8cf2d6", "ea621e991f9e4353c74e708cec62b4ff");
    }

    @Override
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "permanent_item");
    }

    @Override
    public List v(Map map) {
        return new ArrayList();
    }
}
