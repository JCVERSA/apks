package com.transsion.shorttv.db;

import androidx.room.InvalidationTracker;
import androidx.room.f0;
import androidx.room.util.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ShortTvDatabase_Impl extends ShortTvDatabase {

    private volatile ShortTvFavoriteDao f51001s;

    private volatile ShortTvAdUnlockDao f51002t;

    class a extends f0 {
        a(int i10, String str, String str2) {
            super(i10, str, str2);
        }

        @Override
        public void a(y3.b bVar) throws Exception {
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `short_tv_favorite_state` (`subjectId` TEXT NOT NULL, `favoriteNum` TEXT, `hasFavorite` INTEGER NOT NULL, `favoriteTime` TEXT, PRIMARY KEY(`subjectId`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `short_tv_ad_unlock_state` (`subjectId` TEXT NOT NULL, `unlockedEps` TEXT NOT NULL, PRIMARY KEY(`subjectId`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            y3.a.a(bVar, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '7d0cc9a2b371c1f7329d0d00d8bd31c1')");
        }

        @Override
        public void b(y3.b bVar) throws Exception {
            y3.a.a(bVar, "DROP TABLE IF EXISTS `short_tv_favorite_state`");
            y3.a.a(bVar, "DROP TABLE IF EXISTS `short_tv_ad_unlock_state`");
        }

        @Override
        public void f(y3.b bVar) {
        }

        @Override
        public void g(y3.b bVar) {
            ShortTvDatabase_Impl.this.P(bVar);
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
            HashMap map = new HashMap(4);
            map.put("subjectId", new m.a("subjectId", "TEXT", true, 1, null, 1));
            map.put("favoriteNum", new m.a("favoriteNum", "TEXT", false, 0, null, 1));
            map.put("hasFavorite", new m.a("hasFavorite", "INTEGER", true, 0, null, 1));
            map.put("favoriteTime", new m.a("favoriteTime", "TEXT", false, 0, null, 1));
            m mVar = new m("short_tv_favorite_state", map, new HashSet(0), new HashSet(0));
            m mVarA = m.a(bVar, "short_tv_favorite_state");
            if (!mVar.equals(mVarA)) {
                return new f0.a(false, "short_tv_favorite_state(com.transsion.shorttv.db.ShortTvFavoriteStateBean).\n Expected:\n" + mVar + "\n Found:\n" + mVarA);
            }
            HashMap map2 = new HashMap(2);
            map2.put("subjectId", new m.a("subjectId", "TEXT", true, 1, null, 1));
            map2.put("unlockedEps", new m.a("unlockedEps", "TEXT", true, 0, null, 1));
            m mVar2 = new m("short_tv_ad_unlock_state", map2, new HashSet(0), new HashSet(0));
            m mVarA2 = m.a(bVar, "short_tv_ad_unlock_state");
            if (mVar2.equals(mVarA2)) {
                return new f0.a(true, null);
            }
            return new f0.a(false, "short_tv_ad_unlock_state(com.transsion.shorttv.db.ShortTvAdUnlockStateBean).\n Expected:\n" + mVar2 + "\n Found:\n" + mVarA2);
        }
    }

    @Override
    public Set C() {
        return new HashSet();
    }

    @Override
    protected Map F() {
        HashMap map = new HashMap();
        map.put(ShortTvFavoriteDao.class, i.h());
        map.put(ShortTvAdUnlockDao.class, d.h());
        return map;
    }

    @Override
    public ShortTvAdUnlockDao j0() {
        ShortTvAdUnlockDao shortTvAdUnlockDao;
        if (this.f51002t != null) {
            return this.f51002t;
        }
        synchronized (this) {
            try {
                if (this.f51002t == null) {
                    this.f51002t = new d(this);
                }
                shortTvAdUnlockDao = this.f51002t;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return shortTvAdUnlockDao;
    }

    @Override
    public ShortTvFavoriteDao k0() {
        ShortTvFavoriteDao shortTvFavoriteDao;
        if (this.f51001s != null) {
            return this.f51001s;
        }
        synchronized (this) {
            try {
                if (this.f51001s == null) {
                    this.f51001s = new i(this);
                }
                shortTvFavoriteDao = this.f51001s;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return shortTvFavoriteDao;
    }

    @Override
    public f0 r() {
        return new a(2, "7d0cc9a2b371c1f7329d0d00d8bd31c1", "8d7f57b404f63d2b99b6f547f57644e9");
    }

    @Override
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "short_tv_favorite_state", "short_tv_ad_unlock_state");
    }

    @Override
    public List v(Map map) {
        return new ArrayList();
    }
}
