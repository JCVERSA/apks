package com.transsion.shorttv_pugc.db;

import androidx.room.InvalidationTracker;
import androidx.room.f0;
import androidx.room.util.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import y3.b;

public final class ShortTvDatabase_Impl extends ShortTvDatabase {

    class a extends f0 {
        a(int i10, String str, String str2) {
            super(i10, str, str2);
        }

        @Override
        public void a(b bVar) throws Exception {
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `short_tv_favorite_state` (`subjectId` TEXT NOT NULL, `favoriteNum` TEXT, `hasFavorite` INTEGER NOT NULL, `favoriteTime` TEXT, PRIMARY KEY(`subjectId`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            y3.a.a(bVar, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'e90a38f8313cd010419e55bde1e55126')");
        }

        @Override
        public void b(b bVar) throws Exception {
            y3.a.a(bVar, "DROP TABLE IF EXISTS `short_tv_favorite_state`");
        }

        @Override
        public void f(b bVar) {
        }

        @Override
        public void g(b bVar) {
            ShortTvDatabase_Impl.this.P(bVar);
        }

        @Override
        public void h(b bVar) {
        }

        @Override
        public void i(b bVar) {
            androidx.room.util.b.a(bVar);
        }

        @Override
        public f0.a j(b bVar) {
            HashMap map = new HashMap(4);
            map.put("subjectId", new m.a("subjectId", "TEXT", true, 1, null, 1));
            map.put("favoriteNum", new m.a("favoriteNum", "TEXT", false, 0, null, 1));
            map.put("hasFavorite", new m.a("hasFavorite", "INTEGER", true, 0, null, 1));
            map.put("favoriteTime", new m.a("favoriteTime", "TEXT", false, 0, null, 1));
            m mVar = new m("short_tv_favorite_state", map, new HashSet(0), new HashSet(0));
            m mVarA = m.a(bVar, "short_tv_favorite_state");
            if (mVar.equals(mVarA)) {
                return new f0.a(true, null);
            }
            return new f0.a(false, "short_tv_favorite_state(com.transsion.shorttv_pugc.db.ShortTvFavoriteStateBean).\n Expected:\n" + mVar + "\n Found:\n" + mVarA);
        }
    }

    @Override
    public Set C() {
        return new HashSet();
    }

    @Override
    protected Map F() {
        HashMap map = new HashMap();
        map.put(ss.a.class, ss.b.a());
        return map;
    }

    @Override
    public f0 r() {
        return new a(1, "e90a38f8313cd010419e55bde1e55126", "0c797eb7adf7787e513fa3e6ff4af75e");
    }

    @Override
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "short_tv_favorite_state");
    }

    @Override
    public List v(Map map) {
        return new ArrayList();
    }
}
