package androidx.work.impl;

import androidx.core.app.NotificationCompat;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class WorkDatabase_Impl extends WorkDatabase {

    private volatile j4.v f15156q;

    private volatile j4.b f15157r;

    private volatile j4.z f15158s;

    private volatile j4.j f15159t;

    private volatile j4.o f15160u;

    private volatile j4.r f15161v;

    private volatile j4.e f15162w;

    private volatile j4.g f15163x;

    @Override
    public Set C() {
        return new HashSet();
    }

    @Override
    protected Map F() {
        HashMap map = new HashMap();
        map.put(j4.v.class, j4.w.J());
        map.put(j4.b.class, j4.c.e());
        map.put(j4.z.class, j4.a0.e());
        map.put(j4.j.class, j4.k.h());
        map.put(j4.o.class, j4.p.c());
        map.put(j4.r.class, j4.s.d());
        map.put(j4.e.class, j4.f.b());
        map.put(j4.g.class, j4.h.d());
        return map;
    }

    @Override
    public j4.b h0() {
        j4.b bVar;
        if (this.f15157r != null) {
            return this.f15157r;
        }
        synchronized (this) {
            try {
                if (this.f15157r == null) {
                    this.f15157r = new j4.c(this);
                }
                bVar = this.f15157r;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return bVar;
    }

    @Override
    public j4.e i0() {
        j4.e eVar;
        if (this.f15162w != null) {
            return this.f15162w;
        }
        synchronized (this) {
            try {
                if (this.f15162w == null) {
                    this.f15162w = new j4.f(this);
                }
                eVar = this.f15162w;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return eVar;
    }

    @Override
    public j4.g j0() {
        j4.g gVar;
        if (this.f15163x != null) {
            return this.f15163x;
        }
        synchronized (this) {
            try {
                if (this.f15163x == null) {
                    this.f15163x = new j4.h(this);
                }
                gVar = this.f15163x;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVar;
    }

    @Override
    public j4.j k0() {
        j4.j jVar;
        if (this.f15159t != null) {
            return this.f15159t;
        }
        synchronized (this) {
            try {
                if (this.f15159t == null) {
                    this.f15159t = new j4.k(this);
                }
                jVar = this.f15159t;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return jVar;
    }

    @Override
    public j4.o l0() {
        j4.o oVar;
        if (this.f15160u != null) {
            return this.f15160u;
        }
        synchronized (this) {
            try {
                if (this.f15160u == null) {
                    this.f15160u = new j4.p(this);
                }
                oVar = this.f15160u;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return oVar;
    }

    @Override
    public j4.r m0() {
        j4.r rVar;
        if (this.f15161v != null) {
            return this.f15161v;
        }
        synchronized (this) {
            try {
                if (this.f15161v == null) {
                    this.f15161v = new j4.s(this);
                }
                rVar = this.f15161v;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return rVar;
    }

    @Override
    public j4.v n0() {
        j4.v vVar;
        if (this.f15156q != null) {
            return this.f15156q;
        }
        synchronized (this) {
            try {
                if (this.f15156q == null) {
                    this.f15156q = new j4.w(this);
                }
                vVar = this.f15156q;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return vVar;
    }

    @Override
    public j4.z o0() {
        j4.z zVar;
        if (this.f15158s != null) {
            return this.f15158s;
        }
        synchronized (this) {
            try {
                if (this.f15158s == null) {
                    this.f15158s = new j4.a0(this);
                }
                zVar = this.f15158s;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zVar;
    }

    @Override
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override
    protected z3.e s(androidx.room.c cVar) {
        return cVar.f14251c.a(z3.e.b.a(cVar.f14249a).d(cVar.f14250b).c(new androidx.room.h0(cVar, new a(16), "5181942b9ebc31ce68dacb56c16fd79f", "ae2044fb577e65ee8bb576ca48a2f06e")).b());
    }

    @Override
    public List v(Map map) {
        return Arrays.asList(new b0(), new c0());
    }

    class a extends androidx.room.h0.b {
        a(int i10) {
            super(i10);
        }

        @Override
        public void a(z3.d dVar) {
            dVar.E("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            dVar.E("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
            dVar.E("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
            dVar.E("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))");
            dVar.E("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
            dVar.E("CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)");
            dVar.E("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            dVar.E("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
            dVar.E("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            dVar.E("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            dVar.E("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
            dVar.E("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            dVar.E("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            dVar.E("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            dVar.E("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '5181942b9ebc31ce68dacb56c16fd79f')");
        }

        @Override
        public void b(z3.d dVar) {
            dVar.E("DROP TABLE IF EXISTS `Dependency`");
            dVar.E("DROP TABLE IF EXISTS `WorkSpec`");
            dVar.E("DROP TABLE IF EXISTS `WorkTag`");
            dVar.E("DROP TABLE IF EXISTS `SystemIdInfo`");
            dVar.E("DROP TABLE IF EXISTS `WorkName`");
            dVar.E("DROP TABLE IF EXISTS `WorkProgress`");
            dVar.E("DROP TABLE IF EXISTS `Preference`");
            if (((RoomDatabase) WorkDatabase_Impl.this).f14182j != null) {
                int size = ((RoomDatabase) WorkDatabase_Impl.this).f14182j.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((RoomDatabase.b) ((RoomDatabase) WorkDatabase_Impl.this).f14182j.get(i10)).d(dVar);
                }
            }
        }

        @Override
        public void c(z3.d dVar) {
            if (((RoomDatabase) WorkDatabase_Impl.this).f14182j != null) {
                int size = ((RoomDatabase) WorkDatabase_Impl.this).f14182j.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((RoomDatabase.b) ((RoomDatabase) WorkDatabase_Impl.this).f14182j.get(i10)).b(dVar);
                }
            }
        }

        @Override
        public void d(z3.d dVar) {
            ((RoomDatabase) WorkDatabase_Impl.this).f14173a = dVar;
            dVar.E("PRAGMA foreign_keys = ON");
            WorkDatabase_Impl.this.Q(dVar);
            if (((RoomDatabase) WorkDatabase_Impl.this).f14182j != null) {
                int size = ((RoomDatabase) WorkDatabase_Impl.this).f14182j.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((RoomDatabase.b) ((RoomDatabase) WorkDatabase_Impl.this).f14182j.get(i10)).f(dVar);
                }
            }
        }

        @Override
        public void f(z3.d dVar) {
            androidx.room.util.b.b(dVar);
        }

        @Override
        public androidx.room.h0.c g(z3.d dVar) {
            HashMap map = new HashMap(2);
            map.put("work_spec_id", new androidx.room.util.m.a("work_spec_id", "TEXT", true, 1, null, 1));
            map.put("prerequisite_id", new androidx.room.util.m.a("prerequisite_id", "TEXT", true, 2, null, 1));
            HashSet hashSet = new HashSet(2);
            hashSet.add(new androidx.room.util.m.c("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            hashSet.add(new androidx.room.util.m.c("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
            HashSet hashSet2 = new HashSet(2);
            hashSet2.add(new androidx.room.util.m.d("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id"), Arrays.asList("ASC")));
            hashSet2.add(new androidx.room.util.m.d("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id"), Arrays.asList("ASC")));
            androidx.room.util.m mVar = new androidx.room.util.m("Dependency", map, hashSet, hashSet2);
            androidx.room.util.m mVarB = androidx.room.util.m.b(dVar, "Dependency");
            if (!mVar.equals(mVarB)) {
                return new androidx.room.h0.c(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + mVar + "\n Found:\n" + mVarB);
            }
            HashMap map2 = new HashMap(27);
            map2.put("id", new androidx.room.util.m.a("id", "TEXT", true, 1, null, 1));
            map2.put("state", new androidx.room.util.m.a("state", "INTEGER", true, 0, null, 1));
            map2.put("worker_class_name", new androidx.room.util.m.a("worker_class_name", "TEXT", true, 0, null, 1));
            map2.put("input_merger_class_name", new androidx.room.util.m.a("input_merger_class_name", "TEXT", false, 0, null, 1));
            map2.put("input", new androidx.room.util.m.a("input", "BLOB", true, 0, null, 1));
            map2.put("output", new androidx.room.util.m.a("output", "BLOB", true, 0, null, 1));
            map2.put("initial_delay", new androidx.room.util.m.a("initial_delay", "INTEGER", true, 0, null, 1));
            map2.put("interval_duration", new androidx.room.util.m.a("interval_duration", "INTEGER", true, 0, null, 1));
            map2.put("flex_duration", new androidx.room.util.m.a("flex_duration", "INTEGER", true, 0, null, 1));
            map2.put("run_attempt_count", new androidx.room.util.m.a("run_attempt_count", "INTEGER", true, 0, null, 1));
            map2.put("backoff_policy", new androidx.room.util.m.a("backoff_policy", "INTEGER", true, 0, null, 1));
            map2.put("backoff_delay_duration", new androidx.room.util.m.a("backoff_delay_duration", "INTEGER", true, 0, null, 1));
            map2.put("last_enqueue_time", new androidx.room.util.m.a("last_enqueue_time", "INTEGER", true, 0, null, 1));
            map2.put("minimum_retention_duration", new androidx.room.util.m.a("minimum_retention_duration", "INTEGER", true, 0, null, 1));
            map2.put("schedule_requested_at", new androidx.room.util.m.a("schedule_requested_at", "INTEGER", true, 0, null, 1));
            map2.put("run_in_foreground", new androidx.room.util.m.a("run_in_foreground", "INTEGER", true, 0, null, 1));
            map2.put("out_of_quota_policy", new androidx.room.util.m.a("out_of_quota_policy", "INTEGER", true, 0, null, 1));
            map2.put("period_count", new androidx.room.util.m.a("period_count", "INTEGER", true, 0, "0", 1));
            map2.put("generation", new androidx.room.util.m.a("generation", "INTEGER", true, 0, "0", 1));
            map2.put("required_network_type", new androidx.room.util.m.a("required_network_type", "INTEGER", true, 0, null, 1));
            map2.put("requires_charging", new androidx.room.util.m.a("requires_charging", "INTEGER", true, 0, null, 1));
            map2.put("requires_device_idle", new androidx.room.util.m.a("requires_device_idle", "INTEGER", true, 0, null, 1));
            map2.put("requires_battery_not_low", new androidx.room.util.m.a("requires_battery_not_low", "INTEGER", true, 0, null, 1));
            map2.put("requires_storage_not_low", new androidx.room.util.m.a("requires_storage_not_low", "INTEGER", true, 0, null, 1));
            map2.put("trigger_content_update_delay", new androidx.room.util.m.a("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
            map2.put("trigger_max_content_delay", new androidx.room.util.m.a("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
            map2.put("content_uri_triggers", new androidx.room.util.m.a("content_uri_triggers", "BLOB", true, 0, null, 1));
            HashSet hashSet3 = new HashSet(0);
            HashSet hashSet4 = new HashSet(2);
            hashSet4.add(new androidx.room.util.m.d("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at"), Arrays.asList("ASC")));
            hashSet4.add(new androidx.room.util.m.d("index_WorkSpec_last_enqueue_time", false, Arrays.asList("last_enqueue_time"), Arrays.asList("ASC")));
            androidx.room.util.m mVar2 = new androidx.room.util.m("WorkSpec", map2, hashSet3, hashSet4);
            androidx.room.util.m mVarB2 = androidx.room.util.m.b(dVar, "WorkSpec");
            if (!mVar2.equals(mVarB2)) {
                return new androidx.room.h0.c(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + mVar2 + "\n Found:\n" + mVarB2);
            }
            HashMap map3 = new HashMap(2);
            map3.put("tag", new androidx.room.util.m.a("tag", "TEXT", true, 1, null, 1));
            map3.put("work_spec_id", new androidx.room.util.m.a("work_spec_id", "TEXT", true, 2, null, 1));
            HashSet hashSet5 = new HashSet(1);
            hashSet5.add(new androidx.room.util.m.c("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            HashSet hashSet6 = new HashSet(1);
            hashSet6.add(new androidx.room.util.m.d("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id"), Arrays.asList("ASC")));
            androidx.room.util.m mVar3 = new androidx.room.util.m("WorkTag", map3, hashSet5, hashSet6);
            androidx.room.util.m mVarB3 = androidx.room.util.m.b(dVar, "WorkTag");
            if (!mVar3.equals(mVarB3)) {
                return new androidx.room.h0.c(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + mVar3 + "\n Found:\n" + mVarB3);
            }
            HashMap map4 = new HashMap(3);
            map4.put("work_spec_id", new androidx.room.util.m.a("work_spec_id", "TEXT", true, 1, null, 1));
            map4.put("generation", new androidx.room.util.m.a("generation", "INTEGER", true, 2, "0", 1));
            map4.put("system_id", new androidx.room.util.m.a("system_id", "INTEGER", true, 0, null, 1));
            HashSet hashSet7 = new HashSet(1);
            hashSet7.add(new androidx.room.util.m.c("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            androidx.room.util.m mVar4 = new androidx.room.util.m("SystemIdInfo", map4, hashSet7, new HashSet(0));
            androidx.room.util.m mVarB4 = androidx.room.util.m.b(dVar, "SystemIdInfo");
            if (!mVar4.equals(mVarB4)) {
                return new androidx.room.h0.c(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + mVar4 + "\n Found:\n" + mVarB4);
            }
            HashMap map5 = new HashMap(2);
            map5.put("name", new androidx.room.util.m.a("name", "TEXT", true, 1, null, 1));
            map5.put("work_spec_id", new androidx.room.util.m.a("work_spec_id", "TEXT", true, 2, null, 1));
            HashSet hashSet8 = new HashSet(1);
            hashSet8.add(new androidx.room.util.m.c("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            HashSet hashSet9 = new HashSet(1);
            hashSet9.add(new androidx.room.util.m.d("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id"), Arrays.asList("ASC")));
            androidx.room.util.m mVar5 = new androidx.room.util.m("WorkName", map5, hashSet8, hashSet9);
            androidx.room.util.m mVarB5 = androidx.room.util.m.b(dVar, "WorkName");
            if (!mVar5.equals(mVarB5)) {
                return new androidx.room.h0.c(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + mVar5 + "\n Found:\n" + mVarB5);
            }
            HashMap map6 = new HashMap(2);
            map6.put("work_spec_id", new androidx.room.util.m.a("work_spec_id", "TEXT", true, 1, null, 1));
            map6.put(NotificationCompat.CATEGORY_PROGRESS, new androidx.room.util.m.a(NotificationCompat.CATEGORY_PROGRESS, "BLOB", true, 0, null, 1));
            HashSet hashSet10 = new HashSet(1);
            hashSet10.add(new androidx.room.util.m.c("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            androidx.room.util.m mVar6 = new androidx.room.util.m("WorkProgress", map6, hashSet10, new HashSet(0));
            androidx.room.util.m mVarB6 = androidx.room.util.m.b(dVar, "WorkProgress");
            if (!mVar6.equals(mVarB6)) {
                return new androidx.room.h0.c(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + mVar6 + "\n Found:\n" + mVarB6);
            }
            HashMap map7 = new HashMap(2);
            map7.put("key", new androidx.room.util.m.a("key", "TEXT", true, 1, null, 1));
            map7.put("long_value", new androidx.room.util.m.a("long_value", "INTEGER", false, 0, null, 1));
            androidx.room.util.m mVar7 = new androidx.room.util.m("Preference", map7, new HashSet(0), new HashSet(0));
            androidx.room.util.m mVarB7 = androidx.room.util.m.b(dVar, "Preference");
            if (mVar7.equals(mVarB7)) {
                return new androidx.room.h0.c(true, null);
            }
            return new androidx.room.h0.c(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + mVar7 + "\n Found:\n" + mVarB7);
        }

        @Override
        public void e(z3.d dVar) {
        }
    }
}
