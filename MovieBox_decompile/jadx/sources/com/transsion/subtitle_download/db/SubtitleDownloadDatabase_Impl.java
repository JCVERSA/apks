package com.transsion.subtitle_download.db;

import androidx.core.app.NotificationCompat;
import androidx.room.InvalidationTracker;
import androidx.room.f0;
import androidx.room.util.m;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import qt.i;
import y3.b;

public final class SubtitleDownloadDatabase_Impl extends SubtitleDownloadDatabase {

    private volatile qt.a f52973u;

    class a extends f0 {
        a(int i10, String str, String str2) {
            super(i10, str, str2);
        }

        @Override
        public void a(b bVar) throws Exception {
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS `st_download_table` (`id` TEXT NOT NULL, `resourceStreamType` INTEGER NOT NULL, `resourceId` TEXT NOT NULL, `lan` TEXT, `lanName` TEXT, `url` TEXT, `size` INTEGER, `delay` INTEGER, `downloads` INTEGER, `type` INTEGER NOT NULL, `postId` TEXT, `subtitleName` TEXT, `subjectId` TEXT, `ep` INTEGER NOT NULL, `se` INTEGER NOT NULL, `resolution` INTEGER NOT NULL, `subjectName` TEXT, `status` INTEGER NOT NULL, `fileCharsetName` TEXT, `path` TEXT, `zipPath` TEXT NOT NULL, `taskId` TEXT, `failCount` INTEGER NOT NULL, `ugcVideoId` TEXT, `ugcVideoCollectionId` TEXT, `ops` TEXT, PRIMARY KEY(`id`, `resourceStreamType`))");
            y3.a.a(bVar, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            y3.a.a(bVar, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'b69203d51150b93b225b86bfd78bf875')");
        }

        @Override
        public void b(b bVar) throws Exception {
            y3.a.a(bVar, "DROP TABLE IF EXISTS `st_download_table`");
        }

        @Override
        public void f(b bVar) {
        }

        @Override
        public void g(b bVar) {
            SubtitleDownloadDatabase_Impl.this.P(bVar);
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
            HashMap map = new HashMap(26);
            map.put("id", new m.a("id", "TEXT", true, 1, null, 1));
            map.put("resourceStreamType", new m.a("resourceStreamType", "INTEGER", true, 2, null, 1));
            map.put("resourceId", new m.a("resourceId", "TEXT", true, 0, null, 1));
            map.put("lan", new m.a("lan", "TEXT", false, 0, null, 1));
            map.put("lanName", new m.a("lanName", "TEXT", false, 0, null, 1));
            map.put("url", new m.a("url", "TEXT", false, 0, null, 1));
            map.put("size", new m.a("size", "INTEGER", false, 0, null, 1));
            map.put("delay", new m.a("delay", "INTEGER", false, 0, null, 1));
            map.put("downloads", new m.a("downloads", "INTEGER", false, 0, null, 1));
            map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, new m.a(NativeComponentConstants.KEY_COMPONENT_TYPE, "INTEGER", true, 0, null, 1));
            map.put("postId", new m.a("postId", "TEXT", false, 0, null, 1));
            map.put("subtitleName", new m.a("subtitleName", "TEXT", false, 0, null, 1));
            map.put("subjectId", new m.a("subjectId", "TEXT", false, 0, null, 1));
            map.put("ep", new m.a("ep", "INTEGER", true, 0, null, 1));
            map.put("se", new m.a("se", "INTEGER", true, 0, null, 1));
            map.put("resolution", new m.a("resolution", "INTEGER", true, 0, null, 1));
            map.put("subjectName", new m.a("subjectName", "TEXT", false, 0, null, 1));
            map.put(NotificationCompat.CATEGORY_STATUS, new m.a(NotificationCompat.CATEGORY_STATUS, "INTEGER", true, 0, null, 1));
            map.put("fileCharsetName", new m.a("fileCharsetName", "TEXT", false, 0, null, 1));
            map.put("path", new m.a("path", "TEXT", false, 0, null, 1));
            map.put("zipPath", new m.a("zipPath", "TEXT", true, 0, null, 1));
            map.put("taskId", new m.a("taskId", "TEXT", false, 0, null, 1));
            map.put("failCount", new m.a("failCount", "INTEGER", true, 0, null, 1));
            map.put("ugcVideoId", new m.a("ugcVideoId", "TEXT", false, 0, null, 1));
            map.put("ugcVideoCollectionId", new m.a("ugcVideoCollectionId", "TEXT", false, 0, null, 1));
            map.put("ops", new m.a("ops", "TEXT", false, 0, null, 1));
            m mVar = new m("st_download_table", map, new HashSet(0), new HashSet(0));
            m mVarA = m.a(bVar, "st_download_table");
            if (mVar.equals(mVarA)) {
                return new f0.a(true, null);
            }
            return new f0.a(false, "st_download_table(com.transsion.subtitle_download.db.SubtitleDownloadTable).\n Expected:\n" + mVar + "\n Found:\n" + mVarA);
        }
    }

    @Override
    public Set C() {
        return new HashSet();
    }

    @Override
    protected Map F() {
        HashMap map = new HashMap();
        map.put(qt.a.class, i.o());
        return map;
    }

    @Override
    public qt.a l0() {
        qt.a aVar;
        if (this.f52973u != null) {
            return this.f52973u;
        }
        synchronized (this) {
            try {
                if (this.f52973u == null) {
                    this.f52973u = new i(this);
                }
                aVar = this.f52973u;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    @Override
    public f0 r() {
        return new a(4, "b69203d51150b93b225b86bfd78bf875", "a207c71dcb7f4328cd120ce375a1f942");
    }

    @Override
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "st_download_table");
    }

    @Override
    public List v(Map map) {
        return new ArrayList();
    }
}
