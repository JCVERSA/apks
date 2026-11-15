package j4;

import android.database.Cursor;
import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import androidx.p009lifecycle.LiveData;
import androidx.room.RoomDatabase;
import androidx.room.i0;
import androidx.room.l0;
import androidx.work.BackoffPolicy;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;

public final class w implements v {

    private final RoomDatabase f63016a;

    private final androidx.room.h f63017b;

    private final androidx.room.f f63018c;

    private final l0 f63019d;

    private final l0 f63020e;

    private final l0 f63021f;

    private final l0 f63022g;

    private final l0 f63023h;

    private final l0 f63024i;

    private final l0 f63025j;

    private final l0 f63026k;

    private final l0 f63027l;

    private final l0 f63028m;

    private final l0 f63029n;

    class a extends l0 {
        a(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        }
    }

    class b extends l0 {
        b(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        }
    }

    class c extends l0 {
        c(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
        }
    }

    class d extends l0 {
        d(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "UPDATE workspec SET generation=generation+1 WHERE id=?";
        }
    }

    class e implements Callable {

        final i0 f63034a;

        e(i0 i0Var) {
            this.f63034a = i0Var;
        }

        @Override
        public List call() {
            w.this.f63016a.k();
            try {
                Cursor cursorG = androidx.room.util.b.g(w.this.f63016a, this.f63034a, true, null);
                try {
                    androidx.collection.a aVar = new androidx.collection.a();
                    androidx.collection.a aVar2 = new androidx.collection.a();
                    while (cursorG.moveToNext()) {
                        String string = cursorG.getString(0);
                        if (((ArrayList) aVar.get(string)) == null) {
                            aVar.put(string, new ArrayList());
                        }
                        String string2 = cursorG.getString(0);
                        if (((ArrayList) aVar2.get(string2)) == null) {
                            aVar2.put(string2, new ArrayList());
                        }
                    }
                    cursorG.moveToPosition(-1);
                    w.this.F(aVar);
                    w.this.E(aVar2);
                    ArrayList arrayList = new ArrayList(cursorG.getCount());
                    while (cursorG.moveToNext()) {
                        String string3 = cursorG.isNull(0) ? null : cursorG.getString(0);
                        WorkInfo.State stateF = b0.f(cursorG.getInt(1));
                        androidx.work.d dVarG = androidx.work.d.g(cursorG.isNull(2) ? null : cursorG.getBlob(2));
                        int i10 = cursorG.getInt(3);
                        int i11 = cursorG.getInt(4);
                        ArrayList arrayList2 = (ArrayList) aVar.get(cursorG.getString(0));
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        ArrayList arrayList3 = arrayList2;
                        ArrayList arrayList4 = (ArrayList) aVar2.get(cursorG.getString(0));
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList.add(new u.c(string3, stateF, dVarG, i10, i11, arrayList3, arrayList4));
                    }
                    w.this.f63016a.e0();
                    cursorG.close();
                    w.this.f63016a.t();
                    return arrayList;
                } catch (Throwable th2) {
                    cursorG.close();
                    throw th2;
                }
            } catch (Throwable th3) {
                w.this.f63016a.t();
                throw th3;
            }
        }

        protected void finalize() {
            this.f63034a.release();
        }
    }

    class f extends androidx.room.h {
        f(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void j(z3.h hVar, u uVar) throws Throwable {
            String str = uVar.f62987a;
            if (str == null) {
                hVar.g(1);
            } else {
                hVar.V(1, str);
            }
            b0 b0Var = b0.f62944a;
            hVar.c(2, b0.j(uVar.f62988b));
            String str2 = uVar.f62989c;
            if (str2 == null) {
                hVar.g(3);
            } else {
                hVar.V(3, str2);
            }
            String str3 = uVar.f62990d;
            if (str3 == null) {
                hVar.g(4);
            } else {
                hVar.V(4, str3);
            }
            byte[] bArrK = androidx.work.d.k(uVar.f62991e);
            if (bArrK == null) {
                hVar.g(5);
            } else {
                hVar.k0(5, bArrK);
            }
            byte[] bArrK2 = androidx.work.d.k(uVar.f62992f);
            if (bArrK2 == null) {
                hVar.g(6);
            } else {
                hVar.k0(6, bArrK2);
            }
            hVar.c(7, uVar.f62993g);
            hVar.c(8, uVar.f62994h);
            hVar.c(9, uVar.f62995i);
            hVar.c(10, uVar.f62997k);
            hVar.c(11, b0.a(uVar.f62998l));
            hVar.c(12, uVar.f62999m);
            hVar.c(13, uVar.f63000n);
            hVar.c(14, uVar.f63001o);
            hVar.c(15, uVar.f63002p);
            hVar.c(16, uVar.f63003q ? 1L : 0L);
            hVar.c(17, b0.h(uVar.f63004r));
            hVar.c(18, uVar.g());
            hVar.c(19, uVar.f());
            androidx.work.b bVar = uVar.f62996j;
            if (bVar == null) {
                hVar.g(20);
                hVar.g(21);
                hVar.g(22);
                hVar.g(23);
                hVar.g(24);
                hVar.g(25);
                hVar.g(26);
                hVar.g(27);
                return;
            }
            hVar.c(20, b0.g(bVar.d()));
            hVar.c(21, bVar.g() ? 1L : 0L);
            hVar.c(22, bVar.h() ? 1L : 0L);
            hVar.c(23, bVar.f() ? 1L : 0L);
            hVar.c(24, bVar.i() ? 1L : 0L);
            hVar.c(25, bVar.b());
            hVar.c(26, bVar.a());
            byte[] bArrI = b0.i(bVar.c());
            if (bArrI == null) {
                hVar.g(27);
            } else {
                hVar.k0(27, bArrI);
            }
        }
    }

    class g extends androidx.room.f {
        g(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`required_network_type` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
        }

        @Override
        public void j(z3.h hVar, u uVar) throws Throwable {
            String str = uVar.f62987a;
            if (str == null) {
                hVar.g(1);
            } else {
                hVar.V(1, str);
            }
            b0 b0Var = b0.f62944a;
            hVar.c(2, b0.j(uVar.f62988b));
            String str2 = uVar.f62989c;
            if (str2 == null) {
                hVar.g(3);
            } else {
                hVar.V(3, str2);
            }
            String str3 = uVar.f62990d;
            if (str3 == null) {
                hVar.g(4);
            } else {
                hVar.V(4, str3);
            }
            byte[] bArrK = androidx.work.d.k(uVar.f62991e);
            if (bArrK == null) {
                hVar.g(5);
            } else {
                hVar.k0(5, bArrK);
            }
            byte[] bArrK2 = androidx.work.d.k(uVar.f62992f);
            if (bArrK2 == null) {
                hVar.g(6);
            } else {
                hVar.k0(6, bArrK2);
            }
            hVar.c(7, uVar.f62993g);
            hVar.c(8, uVar.f62994h);
            hVar.c(9, uVar.f62995i);
            hVar.c(10, uVar.f62997k);
            hVar.c(11, b0.a(uVar.f62998l));
            hVar.c(12, uVar.f62999m);
            hVar.c(13, uVar.f63000n);
            hVar.c(14, uVar.f63001o);
            hVar.c(15, uVar.f63002p);
            hVar.c(16, uVar.f63003q ? 1L : 0L);
            hVar.c(17, b0.h(uVar.f63004r));
            hVar.c(18, uVar.g());
            hVar.c(19, uVar.f());
            androidx.work.b bVar = uVar.f62996j;
            if (bVar != null) {
                hVar.c(20, b0.g(bVar.d()));
                hVar.c(21, bVar.g() ? 1L : 0L);
                hVar.c(22, bVar.h() ? 1L : 0L);
                hVar.c(23, bVar.f() ? 1L : 0L);
                hVar.c(24, bVar.i() ? 1L : 0L);
                hVar.c(25, bVar.b());
                hVar.c(26, bVar.a());
                byte[] bArrI = b0.i(bVar.c());
                if (bArrI == null) {
                    hVar.g(27);
                } else {
                    hVar.k0(27, bArrI);
                }
            } else {
                hVar.g(20);
                hVar.g(21);
                hVar.g(22);
                hVar.g(23);
                hVar.g(24);
                hVar.g(25);
                hVar.g(26);
                hVar.g(27);
            }
            String str4 = uVar.f62987a;
            if (str4 == null) {
                hVar.g(28);
            } else {
                hVar.V(28, str4);
            }
        }
    }

    class h extends l0 {
        h(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "DELETE FROM workspec WHERE id=?";
        }
    }

    class i extends l0 {
        i(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "UPDATE workspec SET state=? WHERE id=?";
        }
    }

    class j extends l0 {
        j(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "UPDATE workspec SET period_count=period_count+1 WHERE id=?";
        }
    }

    class k extends l0 {
        k(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "UPDATE workspec SET output=? WHERE id=?";
        }
    }

    class l extends l0 {
        l(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "UPDATE workspec SET last_enqueue_time=? WHERE id=?";
        }
    }

    class m extends l0 {
        m(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        }
    }

    class n extends l0 {
        n(RoomDatabase roomDatabase) {
            super(roomDatabase);
        }

        @Override
        public String e() {
            return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        }
    }

    public w(RoomDatabase roomDatabase) {
        this.f63016a = roomDatabase;
        this.f63017b = new f(roomDatabase);
        this.f63018c = new g(roomDatabase);
        this.f63019d = new h(roomDatabase);
        this.f63020e = new i(roomDatabase);
        this.f63021f = new j(roomDatabase);
        this.f63022g = new k(roomDatabase);
        this.f63023h = new l(roomDatabase);
        this.f63024i = new m(roomDatabase);
        this.f63025j = new n(roomDatabase);
        this.f63026k = new a(roomDatabase);
        this.f63027l = new b(roomDatabase);
        this.f63028m = new c(roomDatabase);
        this.f63029n = new d(roomDatabase);
    }

    public void E(androidx.collection.a aVar) {
        Set<Object> setKeySet = aVar.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (aVar.size() > 999) {
            androidx.collection.a aVar2 = new androidx.collection.a(DescriptorProtos$Edition.EDITION_PROTO3_VALUE);
            int size = aVar.size();
            int i10 = 0;
            int i11 = 0;
            while (i10 < size) {
                aVar2.put((String) aVar.keyAt(i10), (ArrayList) aVar.valueAt(i10));
                i10++;
                i11++;
                if (i11 == 999) {
                    E(aVar2);
                    aVar2 = new androidx.collection.a(DescriptorProtos$Edition.EDITION_PROTO3_VALUE);
                    i11 = 0;
                }
            }
            if (i11 > 0) {
                E(aVar2);
                return;
            }
            return;
        }
        StringBuilder sbB = androidx.room.util.l.b();
        sbB.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        int size2 = setKeySet.size();
        androidx.room.util.l.a(sbB, size2);
        sbB.append(")");
        i0 i0VarF = i0.f(sbB.toString(), size2);
        Iterator<Object> it = setKeySet.iterator();
        int i12 = 1;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str == null) {
                i0VarF.g(i12);
            } else {
                i0VarF.V(i12, str);
            }
            i12++;
        }
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
        try {
            int iD = androidx.room.util.a.d(cursorG, "work_spec_id");
            if (iD == -1) {
                return;
            }
            while (cursorG.moveToNext()) {
                ArrayList arrayList = (ArrayList) aVar.get(cursorG.getString(iD));
                if (arrayList != null) {
                    arrayList.add(androidx.work.d.g(cursorG.isNull(0) ? null : cursorG.getBlob(0)));
                }
            }
        } finally {
            cursorG.close();
        }
    }

    public void F(androidx.collection.a aVar) {
        Set<Object> setKeySet = aVar.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (aVar.size() > 999) {
            androidx.collection.a aVar2 = new androidx.collection.a(DescriptorProtos$Edition.EDITION_PROTO3_VALUE);
            int size = aVar.size();
            int i10 = 0;
            int i11 = 0;
            while (i10 < size) {
                aVar2.put((String) aVar.keyAt(i10), (ArrayList) aVar.valueAt(i10));
                i10++;
                i11++;
                if (i11 == 999) {
                    F(aVar2);
                    aVar2 = new androidx.collection.a(DescriptorProtos$Edition.EDITION_PROTO3_VALUE);
                    i11 = 0;
                }
            }
            if (i11 > 0) {
                F(aVar2);
                return;
            }
            return;
        }
        StringBuilder sbB = androidx.room.util.l.b();
        sbB.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        int size2 = setKeySet.size();
        androidx.room.util.l.a(sbB, size2);
        sbB.append(")");
        i0 i0VarF = i0.f(sbB.toString(), size2);
        Iterator<Object> it = setKeySet.iterator();
        int i12 = 1;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str == null) {
                i0VarF.g(i12);
            } else {
                i0VarF.V(i12, str);
            }
            i12++;
        }
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
        try {
            int iD = androidx.room.util.a.d(cursorG, "work_spec_id");
            if (iD == -1) {
                return;
            }
            while (cursorG.moveToNext()) {
                ArrayList arrayList = (ArrayList) aVar.get(cursorG.getString(iD));
                if (arrayList != null) {
                    arrayList.add(cursorG.isNull(0) ? null : cursorG.getString(0));
                }
            }
        } finally {
            cursorG.close();
        }
    }

    public static List J() {
        return Collections.emptyList();
    }

    @Override
    public List A(String str) {
        i0 i0VarF = i0.f("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f63016a.j();
        this.f63016a.k();
        try {
            Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, true, null);
            try {
                androidx.collection.a aVar = new androidx.collection.a();
                androidx.collection.a aVar2 = new androidx.collection.a();
                while (cursorG.moveToNext()) {
                    String string = cursorG.getString(0);
                    if (((ArrayList) aVar.get(string)) == null) {
                        aVar.put(string, new ArrayList());
                    }
                    String string2 = cursorG.getString(0);
                    if (((ArrayList) aVar2.get(string2)) == null) {
                        aVar2.put(string2, new ArrayList());
                    }
                }
                cursorG.moveToPosition(-1);
                F(aVar);
                E(aVar2);
                ArrayList arrayList = new ArrayList(cursorG.getCount());
                while (cursorG.moveToNext()) {
                    String string3 = cursorG.isNull(0) ? null : cursorG.getString(0);
                    WorkInfo.State stateF = b0.f(cursorG.getInt(1));
                    androidx.work.d dVarG = androidx.work.d.g(cursorG.isNull(2) ? null : cursorG.getBlob(2));
                    int i10 = cursorG.getInt(3);
                    int i11 = cursorG.getInt(4);
                    ArrayList arrayList2 = (ArrayList) aVar.get(cursorG.getString(0));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    ArrayList arrayList3 = arrayList2;
                    ArrayList arrayList4 = (ArrayList) aVar2.get(cursorG.getString(0));
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList.add(new u.c(string3, stateF, dVarG, i10, i11, arrayList3, arrayList4));
                }
                this.f63016a.e0();
                cursorG.close();
                i0VarF.release();
                this.f63016a.t();
                return arrayList;
            } catch (Throwable th2) {
                cursorG.close();
                i0VarF.release();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f63016a.t();
            throw th3;
        }
    }

    @Override
    public LiveData B(List list) {
        StringBuilder sbB = androidx.room.util.l.b();
        sbB.append("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (");
        int size = list.size();
        androidx.room.util.l.a(sbB, size);
        sbB.append(")");
        i0 i0VarF = i0.f(sbB.toString(), size);
        Iterator it = list.iterator();
        int i10 = 1;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str == null) {
                i0VarF.g(i10);
            } else {
                i0VarF.V(i10, str);
            }
            i10++;
        }
        return this.f63016a.y().l(new String[]{"WorkTag", "WorkProgress", "workspec"}, true, new e(i0VarF));
    }

    @Override
    public int C(String str) {
        this.f63016a.j();
        z3.h hVarB = this.f63024i.b();
        if (str == null) {
            hVarB.g(1);
        } else {
            hVarB.V(1, str);
        }
        this.f63016a.k();
        try {
            int iF = hVarB.F();
            this.f63016a.e0();
            return iF;
        } finally {
            this.f63016a.t();
            this.f63024i.h(hVarB);
        }
    }

    @Override
    public List D(List list) {
        StringBuilder sbB = androidx.room.util.l.b();
        sbB.append("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (");
        int size = list.size();
        androidx.room.util.l.a(sbB, size);
        sbB.append(")");
        i0 i0VarF = i0.f(sbB.toString(), size);
        Iterator it = list.iterator();
        int i10 = 1;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str == null) {
                i0VarF.g(i10);
            } else {
                i0VarF.V(i10, str);
            }
            i10++;
        }
        this.f63016a.j();
        this.f63016a.k();
        try {
            Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, true, null);
            try {
                androidx.collection.a aVar = new androidx.collection.a();
                androidx.collection.a aVar2 = new androidx.collection.a();
                while (cursorG.moveToNext()) {
                    String string = cursorG.getString(0);
                    if (((ArrayList) aVar.get(string)) == null) {
                        aVar.put(string, new ArrayList());
                    }
                    String string2 = cursorG.getString(0);
                    if (((ArrayList) aVar2.get(string2)) == null) {
                        aVar2.put(string2, new ArrayList());
                    }
                }
                cursorG.moveToPosition(-1);
                F(aVar);
                E(aVar2);
                ArrayList arrayList = new ArrayList(cursorG.getCount());
                while (cursorG.moveToNext()) {
                    String string3 = cursorG.isNull(0) ? null : cursorG.getString(0);
                    WorkInfo.State stateF = b0.f(cursorG.getInt(1));
                    androidx.work.d dVarG = androidx.work.d.g(cursorG.isNull(2) ? null : cursorG.getBlob(2));
                    int i11 = cursorG.getInt(3);
                    int i12 = cursorG.getInt(4);
                    ArrayList arrayList2 = (ArrayList) aVar.get(cursorG.getString(0));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    ArrayList arrayList3 = arrayList2;
                    ArrayList arrayList4 = (ArrayList) aVar2.get(cursorG.getString(0));
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList.add(new u.c(string3, stateF, dVarG, i11, i12, arrayList3, arrayList4));
                }
                this.f63016a.e0();
                cursorG.close();
                i0VarF.release();
                this.f63016a.t();
                return arrayList;
            } catch (Throwable th2) {
                cursorG.close();
                i0VarF.release();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f63016a.t();
            throw th3;
        }
    }

    @Override
    public void a(String str) {
        this.f63016a.j();
        z3.h hVarB = this.f63019d.b();
        if (str == null) {
            hVarB.g(1);
        } else {
            hVarB.V(1, str);
        }
        this.f63016a.k();
        try {
            hVarB.F();
            this.f63016a.e0();
        } finally {
            this.f63016a.t();
            this.f63019d.h(hVarB);
        }
    }

    @Override
    public void b() {
        this.f63016a.j();
        z3.h hVarB = this.f63028m.b();
        this.f63016a.k();
        try {
            hVarB.F();
            this.f63016a.e0();
        } finally {
            this.f63016a.t();
            this.f63028m.h(hVarB);
        }
    }

    @Override
    public void c(String str) {
        this.f63016a.j();
        z3.h hVarB = this.f63021f.b();
        if (str == null) {
            hVarB.g(1);
        } else {
            hVarB.V(1, str);
        }
        this.f63016a.k();
        try {
            hVarB.F();
            this.f63016a.e0();
        } finally {
            this.f63016a.t();
            this.f63021f.h(hVarB);
        }
    }

    @Override
    public List d(long j10) throws Throwable {
        i0 i0Var;
        i0 i0VarF = i0.f("SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC", 1);
        i0VarF.c(1, j10);
        this.f63016a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "id");
            int iE2 = androidx.room.util.a.e(cursorG, "state");
            int iE3 = androidx.room.util.a.e(cursorG, "worker_class_name");
            int iE4 = androidx.room.util.a.e(cursorG, "input_merger_class_name");
            int iE5 = androidx.room.util.a.e(cursorG, "input");
            int iE6 = androidx.room.util.a.e(cursorG, "output");
            int iE7 = androidx.room.util.a.e(cursorG, "initial_delay");
            int iE8 = androidx.room.util.a.e(cursorG, "interval_duration");
            int iE9 = androidx.room.util.a.e(cursorG, "flex_duration");
            int iE10 = androidx.room.util.a.e(cursorG, "run_attempt_count");
            int iE11 = androidx.room.util.a.e(cursorG, "backoff_policy");
            int iE12 = androidx.room.util.a.e(cursorG, "backoff_delay_duration");
            int iE13 = androidx.room.util.a.e(cursorG, "last_enqueue_time");
            int iE14 = androidx.room.util.a.e(cursorG, "minimum_retention_duration");
            i0Var = i0VarF;
            try {
                int iE15 = androidx.room.util.a.e(cursorG, "schedule_requested_at");
                int iE16 = androidx.room.util.a.e(cursorG, "run_in_foreground");
                int iE17 = androidx.room.util.a.e(cursorG, "out_of_quota_policy");
                int iE18 = androidx.room.util.a.e(cursorG, "period_count");
                int iE19 = androidx.room.util.a.e(cursorG, "generation");
                int iE20 = androidx.room.util.a.e(cursorG, "required_network_type");
                int iE21 = androidx.room.util.a.e(cursorG, "requires_charging");
                int iE22 = androidx.room.util.a.e(cursorG, "requires_device_idle");
                int iE23 = androidx.room.util.a.e(cursorG, "requires_battery_not_low");
                int iE24 = androidx.room.util.a.e(cursorG, "requires_storage_not_low");
                int iE25 = androidx.room.util.a.e(cursorG, "trigger_content_update_delay");
                int iE26 = androidx.room.util.a.e(cursorG, "trigger_max_content_delay");
                int iE27 = androidx.room.util.a.e(cursorG, "content_uri_triggers");
                int i10 = iE14;
                ArrayList arrayList = new ArrayList(cursorG.getCount());
                while (cursorG.moveToNext()) {
                    String string = cursorG.isNull(iE) ? null : cursorG.getString(iE);
                    WorkInfo.State stateF = b0.f(cursorG.getInt(iE2));
                    String string2 = cursorG.isNull(iE3) ? null : cursorG.getString(iE3);
                    String string3 = cursorG.isNull(iE4) ? null : cursorG.getString(iE4);
                    androidx.work.d dVarG = androidx.work.d.g(cursorG.isNull(iE5) ? null : cursorG.getBlob(iE5));
                    androidx.work.d dVarG2 = androidx.work.d.g(cursorG.isNull(iE6) ? null : cursorG.getBlob(iE6));
                    long j11 = cursorG.getLong(iE7);
                    long j12 = cursorG.getLong(iE8);
                    long j13 = cursorG.getLong(iE9);
                    int i11 = cursorG.getInt(iE10);
                    BackoffPolicy backoffPolicyC = b0.c(cursorG.getInt(iE11));
                    long j14 = cursorG.getLong(iE12);
                    long j15 = cursorG.getLong(iE13);
                    int i12 = i10;
                    long j16 = cursorG.getLong(i12);
                    int i13 = iE;
                    int i14 = iE15;
                    long j17 = cursorG.getLong(i14);
                    iE15 = i14;
                    iE16 = iE16;
                    boolean z10 = cursorG.getInt(iE16) != 0;
                    OutOfQuotaPolicy outOfQuotaPolicyE = b0.e(cursorG.getInt(iE17));
                    iE17 = iE17;
                    int i15 = iE18;
                    int i16 = cursorG.getInt(i15);
                    iE18 = i15;
                    int i17 = iE19;
                    int i18 = cursorG.getInt(i17);
                    iE19 = i17;
                    int i19 = iE20;
                    NetworkType networkTypeD = b0.d(cursorG.getInt(i19));
                    iE20 = i19;
                    iE21 = iE21;
                    boolean z11 = cursorG.getInt(iE21) != 0;
                    boolean z12 = cursorG.getInt(iE22) != 0;
                    boolean z13 = cursorG.getInt(iE23) != 0;
                    boolean z14 = cursorG.getInt(iE24) != 0;
                    long j18 = cursorG.getLong(iE25);
                    iE25 = iE25;
                    int i20 = iE26;
                    long j19 = cursorG.getLong(i20);
                    iE26 = i20;
                    int i21 = iE27;
                    iE27 = i21;
                    arrayList.add(new u(string, stateF, string2, string3, dVarG, dVarG2, j11, j12, j13, new androidx.work.b(networkTypeD, z11, z12, z13, z14, j18, j19, b0.b(cursorG.isNull(i21) ? null : cursorG.getBlob(i21))), i11, backoffPolicyC, j14, j15, j16, j17, z10, outOfQuotaPolicyE, i16, i18));
                    iE = i13;
                    i10 = i12;
                }
                cursorG.close();
                i0Var.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                cursorG.close();
                i0Var.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            i0Var = i0VarF;
        }
    }

    @Override
    public List e() throws Throwable {
        i0 i0Var;
        i0 i0VarF = i0.f("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.f63016a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "id");
            int iE2 = androidx.room.util.a.e(cursorG, "state");
            int iE3 = androidx.room.util.a.e(cursorG, "worker_class_name");
            int iE4 = androidx.room.util.a.e(cursorG, "input_merger_class_name");
            int iE5 = androidx.room.util.a.e(cursorG, "input");
            int iE6 = androidx.room.util.a.e(cursorG, "output");
            int iE7 = androidx.room.util.a.e(cursorG, "initial_delay");
            int iE8 = androidx.room.util.a.e(cursorG, "interval_duration");
            int iE9 = androidx.room.util.a.e(cursorG, "flex_duration");
            int iE10 = androidx.room.util.a.e(cursorG, "run_attempt_count");
            int iE11 = androidx.room.util.a.e(cursorG, "backoff_policy");
            int iE12 = androidx.room.util.a.e(cursorG, "backoff_delay_duration");
            int iE13 = androidx.room.util.a.e(cursorG, "last_enqueue_time");
            int iE14 = androidx.room.util.a.e(cursorG, "minimum_retention_duration");
            i0Var = i0VarF;
            try {
                int iE15 = androidx.room.util.a.e(cursorG, "schedule_requested_at");
                int iE16 = androidx.room.util.a.e(cursorG, "run_in_foreground");
                int iE17 = androidx.room.util.a.e(cursorG, "out_of_quota_policy");
                int iE18 = androidx.room.util.a.e(cursorG, "period_count");
                int iE19 = androidx.room.util.a.e(cursorG, "generation");
                int iE20 = androidx.room.util.a.e(cursorG, "required_network_type");
                int iE21 = androidx.room.util.a.e(cursorG, "requires_charging");
                int iE22 = androidx.room.util.a.e(cursorG, "requires_device_idle");
                int iE23 = androidx.room.util.a.e(cursorG, "requires_battery_not_low");
                int iE24 = androidx.room.util.a.e(cursorG, "requires_storage_not_low");
                int iE25 = androidx.room.util.a.e(cursorG, "trigger_content_update_delay");
                int iE26 = androidx.room.util.a.e(cursorG, "trigger_max_content_delay");
                int iE27 = androidx.room.util.a.e(cursorG, "content_uri_triggers");
                int i10 = iE14;
                ArrayList arrayList = new ArrayList(cursorG.getCount());
                while (cursorG.moveToNext()) {
                    String string = cursorG.isNull(iE) ? null : cursorG.getString(iE);
                    WorkInfo.State stateF = b0.f(cursorG.getInt(iE2));
                    String string2 = cursorG.isNull(iE3) ? null : cursorG.getString(iE3);
                    String string3 = cursorG.isNull(iE4) ? null : cursorG.getString(iE4);
                    androidx.work.d dVarG = androidx.work.d.g(cursorG.isNull(iE5) ? null : cursorG.getBlob(iE5));
                    androidx.work.d dVarG2 = androidx.work.d.g(cursorG.isNull(iE6) ? null : cursorG.getBlob(iE6));
                    long j10 = cursorG.getLong(iE7);
                    long j11 = cursorG.getLong(iE8);
                    long j12 = cursorG.getLong(iE9);
                    int i11 = cursorG.getInt(iE10);
                    BackoffPolicy backoffPolicyC = b0.c(cursorG.getInt(iE11));
                    long j13 = cursorG.getLong(iE12);
                    long j14 = cursorG.getLong(iE13);
                    int i12 = i10;
                    long j15 = cursorG.getLong(i12);
                    int i13 = iE;
                    int i14 = iE15;
                    long j16 = cursorG.getLong(i14);
                    iE15 = i14;
                    iE16 = iE16;
                    boolean z10 = cursorG.getInt(iE16) != 0;
                    OutOfQuotaPolicy outOfQuotaPolicyE = b0.e(cursorG.getInt(iE17));
                    iE17 = iE17;
                    int i15 = iE18;
                    int i16 = cursorG.getInt(i15);
                    iE18 = i15;
                    int i17 = iE19;
                    int i18 = cursorG.getInt(i17);
                    iE19 = i17;
                    int i19 = iE20;
                    NetworkType networkTypeD = b0.d(cursorG.getInt(i19));
                    iE20 = i19;
                    iE21 = iE21;
                    boolean z11 = cursorG.getInt(iE21) != 0;
                    boolean z12 = cursorG.getInt(iE22) != 0;
                    boolean z13 = cursorG.getInt(iE23) != 0;
                    boolean z14 = cursorG.getInt(iE24) != 0;
                    long j17 = cursorG.getLong(iE25);
                    iE25 = iE25;
                    int i20 = iE26;
                    long j18 = cursorG.getLong(i20);
                    iE26 = i20;
                    int i21 = iE27;
                    iE27 = i21;
                    arrayList.add(new u(string, stateF, string2, string3, dVarG, dVarG2, j10, j11, j12, new androidx.work.b(networkTypeD, z11, z12, z13, z14, j17, j18, b0.b(cursorG.isNull(i21) ? null : cursorG.getBlob(i21))), i11, backoffPolicyC, j13, j14, j15, j16, z10, outOfQuotaPolicyE, i16, i18));
                    iE = i13;
                    i10 = i12;
                }
                cursorG.close();
                i0Var.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                cursorG.close();
                i0Var.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            i0Var = i0VarF;
        }
    }

    @Override
    public void f(u uVar) {
        this.f63016a.j();
        this.f63016a.k();
        try {
            this.f63018c.k(uVar);
            this.f63016a.e0();
        } finally {
            this.f63016a.t();
        }
    }

    @Override
    public List g(String str) {
        i0 i0VarF = i0.f("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f63016a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
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
    public u.c h(String str) {
        i0 i0VarF = i0.f("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id=?", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f63016a.j();
        this.f63016a.k();
        try {
            u.c cVar = null;
            byte[] blob = null;
            Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, true, null);
            try {
                androidx.collection.a aVar = new androidx.collection.a();
                androidx.collection.a aVar2 = new androidx.collection.a();
                while (cursorG.moveToNext()) {
                    String string = cursorG.getString(0);
                    if (((ArrayList) aVar.get(string)) == null) {
                        aVar.put(string, new ArrayList());
                    }
                    String string2 = cursorG.getString(0);
                    if (((ArrayList) aVar2.get(string2)) == null) {
                        aVar2.put(string2, new ArrayList());
                    }
                }
                cursorG.moveToPosition(-1);
                F(aVar);
                E(aVar2);
                if (cursorG.moveToFirst()) {
                    String string3 = cursorG.isNull(0) ? null : cursorG.getString(0);
                    WorkInfo.State stateF = b0.f(cursorG.getInt(1));
                    if (!cursorG.isNull(2)) {
                        blob = cursorG.getBlob(2);
                    }
                    androidx.work.d dVarG = androidx.work.d.g(blob);
                    int i10 = cursorG.getInt(3);
                    int i11 = cursorG.getInt(4);
                    ArrayList arrayList = (ArrayList) aVar.get(cursorG.getString(0));
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    ArrayList arrayList2 = arrayList;
                    ArrayList arrayList3 = (ArrayList) aVar2.get(cursorG.getString(0));
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                    }
                    cVar = new u.c(string3, stateF, dVarG, i10, i11, arrayList2, arrayList3);
                }
                this.f63016a.e0();
                cursorG.close();
                i0VarF.release();
                this.f63016a.t();
                return cVar;
            } catch (Throwable th2) {
                cursorG.close();
                i0VarF.release();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f63016a.t();
            throw th3;
        }
    }

    @Override
    public WorkInfo.State i(String str) {
        i0 i0VarF = i0.f("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f63016a.j();
        WorkInfo.State stateF = null;
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
        try {
            if (cursorG.moveToFirst()) {
                Integer numValueOf = cursorG.isNull(0) ? null : Integer.valueOf(cursorG.getInt(0));
                if (numValueOf != null) {
                    b0 b0Var = b0.f62944a;
                    stateF = b0.f(numValueOf.intValue());
                }
            }
            return stateF;
        } finally {
            cursorG.close();
            i0VarF.release();
        }
    }

    @Override
    public u j(String str) throws Throwable {
        i0 i0Var;
        u uVar;
        i0 i0VarF = i0.f("SELECT * FROM workspec WHERE id=?", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f63016a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "id");
            int iE2 = androidx.room.util.a.e(cursorG, "state");
            int iE3 = androidx.room.util.a.e(cursorG, "worker_class_name");
            int iE4 = androidx.room.util.a.e(cursorG, "input_merger_class_name");
            int iE5 = androidx.room.util.a.e(cursorG, "input");
            int iE6 = androidx.room.util.a.e(cursorG, "output");
            int iE7 = androidx.room.util.a.e(cursorG, "initial_delay");
            int iE8 = androidx.room.util.a.e(cursorG, "interval_duration");
            int iE9 = androidx.room.util.a.e(cursorG, "flex_duration");
            int iE10 = androidx.room.util.a.e(cursorG, "run_attempt_count");
            int iE11 = androidx.room.util.a.e(cursorG, "backoff_policy");
            int iE12 = androidx.room.util.a.e(cursorG, "backoff_delay_duration");
            int iE13 = androidx.room.util.a.e(cursorG, "last_enqueue_time");
            int iE14 = androidx.room.util.a.e(cursorG, "minimum_retention_duration");
            i0Var = i0VarF;
            try {
                int iE15 = androidx.room.util.a.e(cursorG, "schedule_requested_at");
                int iE16 = androidx.room.util.a.e(cursorG, "run_in_foreground");
                int iE17 = androidx.room.util.a.e(cursorG, "out_of_quota_policy");
                int iE18 = androidx.room.util.a.e(cursorG, "period_count");
                int iE19 = androidx.room.util.a.e(cursorG, "generation");
                int iE20 = androidx.room.util.a.e(cursorG, "required_network_type");
                int iE21 = androidx.room.util.a.e(cursorG, "requires_charging");
                int iE22 = androidx.room.util.a.e(cursorG, "requires_device_idle");
                int iE23 = androidx.room.util.a.e(cursorG, "requires_battery_not_low");
                int iE24 = androidx.room.util.a.e(cursorG, "requires_storage_not_low");
                int iE25 = androidx.room.util.a.e(cursorG, "trigger_content_update_delay");
                int iE26 = androidx.room.util.a.e(cursorG, "trigger_max_content_delay");
                int iE27 = androidx.room.util.a.e(cursorG, "content_uri_triggers");
                if (cursorG.moveToFirst()) {
                    uVar = new u(cursorG.isNull(iE) ? null : cursorG.getString(iE), b0.f(cursorG.getInt(iE2)), cursorG.isNull(iE3) ? null : cursorG.getString(iE3), cursorG.isNull(iE4) ? null : cursorG.getString(iE4), androidx.work.d.g(cursorG.isNull(iE5) ? null : cursorG.getBlob(iE5)), androidx.work.d.g(cursorG.isNull(iE6) ? null : cursorG.getBlob(iE6)), cursorG.getLong(iE7), cursorG.getLong(iE8), cursorG.getLong(iE9), new androidx.work.b(b0.d(cursorG.getInt(iE20)), cursorG.getInt(iE21) != 0, cursorG.getInt(iE22) != 0, cursorG.getInt(iE23) != 0, cursorG.getInt(iE24) != 0, cursorG.getLong(iE25), cursorG.getLong(iE26), b0.b(cursorG.isNull(iE27) ? null : cursorG.getBlob(iE27))), cursorG.getInt(iE10), b0.c(cursorG.getInt(iE11)), cursorG.getLong(iE12), cursorG.getLong(iE13), cursorG.getLong(iE14), cursorG.getLong(iE15), cursorG.getInt(iE16) != 0, b0.e(cursorG.getInt(iE17)), cursorG.getInt(iE18), cursorG.getInt(iE19));
                } else {
                    uVar = null;
                }
                cursorG.close();
                i0Var.release();
                return uVar;
            } catch (Throwable th2) {
                th = th2;
                cursorG.close();
                i0Var.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            i0Var = i0VarF;
        }
    }

    @Override
    public void k(String str, long j10) {
        this.f63016a.j();
        z3.h hVarB = this.f63023h.b();
        hVarB.c(1, j10);
        if (str == null) {
            hVarB.g(2);
        } else {
            hVarB.V(2, str);
        }
        this.f63016a.k();
        try {
            hVarB.F();
            this.f63016a.e0();
        } finally {
            this.f63016a.t();
            this.f63023h.h(hVarB);
        }
    }

    @Override
    public List l(String str) {
        i0 i0VarF = i0.f("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f63016a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
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
    public List m(String str) {
        i0 i0VarF = i0.f("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f63016a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorG.getCount());
            while (cursorG.moveToNext()) {
                arrayList.add(androidx.work.d.g(cursorG.isNull(0) ? null : cursorG.getBlob(0)));
            }
            return arrayList;
        } finally {
            cursorG.close();
            i0VarF.release();
        }
    }

    @Override
    public List n(String str) {
        i0 i0VarF = i0.f("SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f63016a.j();
        this.f63016a.k();
        try {
            Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, true, null);
            try {
                androidx.collection.a aVar = new androidx.collection.a();
                androidx.collection.a aVar2 = new androidx.collection.a();
                while (cursorG.moveToNext()) {
                    String string = cursorG.getString(0);
                    if (((ArrayList) aVar.get(string)) == null) {
                        aVar.put(string, new ArrayList());
                    }
                    String string2 = cursorG.getString(0);
                    if (((ArrayList) aVar2.get(string2)) == null) {
                        aVar2.put(string2, new ArrayList());
                    }
                }
                cursorG.moveToPosition(-1);
                F(aVar);
                E(aVar2);
                ArrayList arrayList = new ArrayList(cursorG.getCount());
                while (cursorG.moveToNext()) {
                    String string3 = cursorG.isNull(0) ? null : cursorG.getString(0);
                    WorkInfo.State stateF = b0.f(cursorG.getInt(1));
                    androidx.work.d dVarG = androidx.work.d.g(cursorG.isNull(2) ? null : cursorG.getBlob(2));
                    int i10 = cursorG.getInt(3);
                    int i11 = cursorG.getInt(4);
                    ArrayList arrayList2 = (ArrayList) aVar.get(cursorG.getString(0));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    ArrayList arrayList3 = arrayList2;
                    ArrayList arrayList4 = (ArrayList) aVar2.get(cursorG.getString(0));
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList.add(new u.c(string3, stateF, dVarG, i10, i11, arrayList3, arrayList4));
                }
                this.f63016a.e0();
                cursorG.close();
                i0VarF.release();
                this.f63016a.t();
                return arrayList;
            } catch (Throwable th2) {
                cursorG.close();
                i0VarF.release();
                throw th2;
            }
        } catch (Throwable th3) {
            this.f63016a.t();
            throw th3;
        }
    }

    @Override
    public List o(int i10) throws Throwable {
        i0 i0Var;
        i0 i0VarF = i0.f("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?", 1);
        i0VarF.c(1, i10);
        this.f63016a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "id");
            int iE2 = androidx.room.util.a.e(cursorG, "state");
            int iE3 = androidx.room.util.a.e(cursorG, "worker_class_name");
            int iE4 = androidx.room.util.a.e(cursorG, "input_merger_class_name");
            int iE5 = androidx.room.util.a.e(cursorG, "input");
            int iE6 = androidx.room.util.a.e(cursorG, "output");
            int iE7 = androidx.room.util.a.e(cursorG, "initial_delay");
            int iE8 = androidx.room.util.a.e(cursorG, "interval_duration");
            int iE9 = androidx.room.util.a.e(cursorG, "flex_duration");
            int iE10 = androidx.room.util.a.e(cursorG, "run_attempt_count");
            int iE11 = androidx.room.util.a.e(cursorG, "backoff_policy");
            int iE12 = androidx.room.util.a.e(cursorG, "backoff_delay_duration");
            int iE13 = androidx.room.util.a.e(cursorG, "last_enqueue_time");
            int iE14 = androidx.room.util.a.e(cursorG, "minimum_retention_duration");
            i0Var = i0VarF;
            try {
                int iE15 = androidx.room.util.a.e(cursorG, "schedule_requested_at");
                int iE16 = androidx.room.util.a.e(cursorG, "run_in_foreground");
                int iE17 = androidx.room.util.a.e(cursorG, "out_of_quota_policy");
                int iE18 = androidx.room.util.a.e(cursorG, "period_count");
                int iE19 = androidx.room.util.a.e(cursorG, "generation");
                int iE20 = androidx.room.util.a.e(cursorG, "required_network_type");
                int iE21 = androidx.room.util.a.e(cursorG, "requires_charging");
                int iE22 = androidx.room.util.a.e(cursorG, "requires_device_idle");
                int iE23 = androidx.room.util.a.e(cursorG, "requires_battery_not_low");
                int iE24 = androidx.room.util.a.e(cursorG, "requires_storage_not_low");
                int iE25 = androidx.room.util.a.e(cursorG, "trigger_content_update_delay");
                int iE26 = androidx.room.util.a.e(cursorG, "trigger_max_content_delay");
                int iE27 = androidx.room.util.a.e(cursorG, "content_uri_triggers");
                int i11 = iE14;
                ArrayList arrayList = new ArrayList(cursorG.getCount());
                while (cursorG.moveToNext()) {
                    String string = cursorG.isNull(iE) ? null : cursorG.getString(iE);
                    WorkInfo.State stateF = b0.f(cursorG.getInt(iE2));
                    String string2 = cursorG.isNull(iE3) ? null : cursorG.getString(iE3);
                    String string3 = cursorG.isNull(iE4) ? null : cursorG.getString(iE4);
                    androidx.work.d dVarG = androidx.work.d.g(cursorG.isNull(iE5) ? null : cursorG.getBlob(iE5));
                    androidx.work.d dVarG2 = androidx.work.d.g(cursorG.isNull(iE6) ? null : cursorG.getBlob(iE6));
                    long j10 = cursorG.getLong(iE7);
                    long j11 = cursorG.getLong(iE8);
                    long j12 = cursorG.getLong(iE9);
                    int i12 = cursorG.getInt(iE10);
                    BackoffPolicy backoffPolicyC = b0.c(cursorG.getInt(iE11));
                    long j13 = cursorG.getLong(iE12);
                    long j14 = cursorG.getLong(iE13);
                    int i13 = i11;
                    long j15 = cursorG.getLong(i13);
                    int i14 = iE;
                    int i15 = iE15;
                    long j16 = cursorG.getLong(i15);
                    iE15 = i15;
                    iE16 = iE16;
                    boolean z10 = cursorG.getInt(iE16) != 0;
                    OutOfQuotaPolicy outOfQuotaPolicyE = b0.e(cursorG.getInt(iE17));
                    iE17 = iE17;
                    int i16 = iE18;
                    int i17 = cursorG.getInt(i16);
                    iE18 = i16;
                    int i18 = iE19;
                    int i19 = cursorG.getInt(i18);
                    iE19 = i18;
                    int i20 = iE20;
                    NetworkType networkTypeD = b0.d(cursorG.getInt(i20));
                    iE20 = i20;
                    iE21 = iE21;
                    boolean z11 = cursorG.getInt(iE21) != 0;
                    boolean z12 = cursorG.getInt(iE22) != 0;
                    boolean z13 = cursorG.getInt(iE23) != 0;
                    boolean z14 = cursorG.getInt(iE24) != 0;
                    long j17 = cursorG.getLong(iE25);
                    iE25 = iE25;
                    int i21 = iE26;
                    long j18 = cursorG.getLong(i21);
                    iE26 = i21;
                    int i22 = iE27;
                    iE27 = i22;
                    arrayList.add(new u(string, stateF, string2, string3, dVarG, dVarG2, j10, j11, j12, new androidx.work.b(networkTypeD, z11, z12, z13, z14, j17, j18, b0.b(cursorG.isNull(i22) ? null : cursorG.getBlob(i22))), i12, backoffPolicyC, j13, j14, j15, j16, z10, outOfQuotaPolicyE, i17, i19));
                    iE = i14;
                    i11 = i13;
                }
                cursorG.close();
                i0Var.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                cursorG.close();
                i0Var.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            i0Var = i0VarF;
        }
    }

    @Override
    public int p() {
        this.f63016a.j();
        z3.h hVarB = this.f63027l.b();
        this.f63016a.k();
        try {
            int iF = hVarB.F();
            this.f63016a.e0();
            return iF;
        } finally {
            this.f63016a.t();
            this.f63027l.h(hVarB);
        }
    }

    @Override
    public void q(u uVar) {
        this.f63016a.j();
        this.f63016a.k();
        try {
            this.f63017b.l(uVar);
            this.f63016a.e0();
        } finally {
            this.f63016a.t();
        }
    }

    @Override
    public int r(String str, long j10) {
        this.f63016a.j();
        z3.h hVarB = this.f63026k.b();
        hVarB.c(1, j10);
        if (str == null) {
            hVarB.g(2);
        } else {
            hVarB.V(2, str);
        }
        this.f63016a.k();
        try {
            int iF = hVarB.F();
            this.f63016a.e0();
            return iF;
        } finally {
            this.f63016a.t();
            this.f63026k.h(hVarB);
        }
    }

    @Override
    public List s(String str) {
        i0 i0VarF = i0.f("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            i0VarF.g(1);
        } else {
            i0VarF.V(1, str);
        }
        this.f63016a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
        try {
            ArrayList arrayList = new ArrayList(cursorG.getCount());
            while (cursorG.moveToNext()) {
                arrayList.add(new u.b(cursorG.isNull(0) ? null : cursorG.getString(0), b0.f(cursorG.getInt(1))));
            }
            return arrayList;
        } finally {
            cursorG.close();
            i0VarF.release();
        }
    }

    @Override
    public List t(int i10) throws Throwable {
        i0 i0Var;
        i0 i0VarF = i0.f("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
        i0VarF.c(1, i10);
        this.f63016a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "id");
            int iE2 = androidx.room.util.a.e(cursorG, "state");
            int iE3 = androidx.room.util.a.e(cursorG, "worker_class_name");
            int iE4 = androidx.room.util.a.e(cursorG, "input_merger_class_name");
            int iE5 = androidx.room.util.a.e(cursorG, "input");
            int iE6 = androidx.room.util.a.e(cursorG, "output");
            int iE7 = androidx.room.util.a.e(cursorG, "initial_delay");
            int iE8 = androidx.room.util.a.e(cursorG, "interval_duration");
            int iE9 = androidx.room.util.a.e(cursorG, "flex_duration");
            int iE10 = androidx.room.util.a.e(cursorG, "run_attempt_count");
            int iE11 = androidx.room.util.a.e(cursorG, "backoff_policy");
            int iE12 = androidx.room.util.a.e(cursorG, "backoff_delay_duration");
            int iE13 = androidx.room.util.a.e(cursorG, "last_enqueue_time");
            int iE14 = androidx.room.util.a.e(cursorG, "minimum_retention_duration");
            i0Var = i0VarF;
            try {
                int iE15 = androidx.room.util.a.e(cursorG, "schedule_requested_at");
                int iE16 = androidx.room.util.a.e(cursorG, "run_in_foreground");
                int iE17 = androidx.room.util.a.e(cursorG, "out_of_quota_policy");
                int iE18 = androidx.room.util.a.e(cursorG, "period_count");
                int iE19 = androidx.room.util.a.e(cursorG, "generation");
                int iE20 = androidx.room.util.a.e(cursorG, "required_network_type");
                int iE21 = androidx.room.util.a.e(cursorG, "requires_charging");
                int iE22 = androidx.room.util.a.e(cursorG, "requires_device_idle");
                int iE23 = androidx.room.util.a.e(cursorG, "requires_battery_not_low");
                int iE24 = androidx.room.util.a.e(cursorG, "requires_storage_not_low");
                int iE25 = androidx.room.util.a.e(cursorG, "trigger_content_update_delay");
                int iE26 = androidx.room.util.a.e(cursorG, "trigger_max_content_delay");
                int iE27 = androidx.room.util.a.e(cursorG, "content_uri_triggers");
                int i11 = iE14;
                ArrayList arrayList = new ArrayList(cursorG.getCount());
                while (cursorG.moveToNext()) {
                    String string = cursorG.isNull(iE) ? null : cursorG.getString(iE);
                    WorkInfo.State stateF = b0.f(cursorG.getInt(iE2));
                    String string2 = cursorG.isNull(iE3) ? null : cursorG.getString(iE3);
                    String string3 = cursorG.isNull(iE4) ? null : cursorG.getString(iE4);
                    androidx.work.d dVarG = androidx.work.d.g(cursorG.isNull(iE5) ? null : cursorG.getBlob(iE5));
                    androidx.work.d dVarG2 = androidx.work.d.g(cursorG.isNull(iE6) ? null : cursorG.getBlob(iE6));
                    long j10 = cursorG.getLong(iE7);
                    long j11 = cursorG.getLong(iE8);
                    long j12 = cursorG.getLong(iE9);
                    int i12 = cursorG.getInt(iE10);
                    BackoffPolicy backoffPolicyC = b0.c(cursorG.getInt(iE11));
                    long j13 = cursorG.getLong(iE12);
                    long j14 = cursorG.getLong(iE13);
                    int i13 = i11;
                    long j15 = cursorG.getLong(i13);
                    int i14 = iE;
                    int i15 = iE15;
                    long j16 = cursorG.getLong(i15);
                    iE15 = i15;
                    iE16 = iE16;
                    boolean z10 = cursorG.getInt(iE16) != 0;
                    OutOfQuotaPolicy outOfQuotaPolicyE = b0.e(cursorG.getInt(iE17));
                    iE17 = iE17;
                    int i16 = iE18;
                    int i17 = cursorG.getInt(i16);
                    iE18 = i16;
                    int i18 = iE19;
                    int i19 = cursorG.getInt(i18);
                    iE19 = i18;
                    int i20 = iE20;
                    NetworkType networkTypeD = b0.d(cursorG.getInt(i20));
                    iE20 = i20;
                    iE21 = iE21;
                    boolean z11 = cursorG.getInt(iE21) != 0;
                    boolean z12 = cursorG.getInt(iE22) != 0;
                    boolean z13 = cursorG.getInt(iE23) != 0;
                    boolean z14 = cursorG.getInt(iE24) != 0;
                    long j17 = cursorG.getLong(iE25);
                    iE25 = iE25;
                    int i21 = iE26;
                    long j18 = cursorG.getLong(i21);
                    iE26 = i21;
                    int i22 = iE27;
                    iE27 = i22;
                    arrayList.add(new u(string, stateF, string2, string3, dVarG, dVarG2, j10, j11, j12, new androidx.work.b(networkTypeD, z11, z12, z13, z14, j17, j18, b0.b(cursorG.isNull(i22) ? null : cursorG.getBlob(i22))), i12, backoffPolicyC, j13, j14, j15, j16, z10, outOfQuotaPolicyE, i17, i19));
                    iE = i14;
                    i11 = i13;
                }
                cursorG.close();
                i0Var.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                cursorG.close();
                i0Var.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            i0Var = i0VarF;
        }
    }

    @Override
    public int u(WorkInfo.State state, String str) {
        this.f63016a.j();
        z3.h hVarB = this.f63020e.b();
        hVarB.c(1, b0.j(state));
        if (str == null) {
            hVarB.g(2);
        } else {
            hVarB.V(2, str);
        }
        this.f63016a.k();
        try {
            int iF = hVarB.F();
            this.f63016a.e0();
            return iF;
        } finally {
            this.f63016a.t();
            this.f63020e.h(hVarB);
        }
    }

    @Override
    public void v(String str, androidx.work.d dVar) throws Throwable {
        this.f63016a.j();
        z3.h hVarB = this.f63022g.b();
        byte[] bArrK = androidx.work.d.k(dVar);
        if (bArrK == null) {
            hVarB.g(1);
        } else {
            hVarB.k0(1, bArrK);
        }
        if (str == null) {
            hVarB.g(2);
        } else {
            hVarB.V(2, str);
        }
        this.f63016a.k();
        try {
            hVarB.F();
            this.f63016a.e0();
        } finally {
            this.f63016a.t();
            this.f63022g.h(hVarB);
        }
    }

    @Override
    public List w() throws Throwable {
        i0 i0Var;
        i0 i0VarF = i0.f("SELECT * FROM workspec WHERE state=1", 0);
        this.f63016a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
        try {
            int iE = androidx.room.util.a.e(cursorG, "id");
            int iE2 = androidx.room.util.a.e(cursorG, "state");
            int iE3 = androidx.room.util.a.e(cursorG, "worker_class_name");
            int iE4 = androidx.room.util.a.e(cursorG, "input_merger_class_name");
            int iE5 = androidx.room.util.a.e(cursorG, "input");
            int iE6 = androidx.room.util.a.e(cursorG, "output");
            int iE7 = androidx.room.util.a.e(cursorG, "initial_delay");
            int iE8 = androidx.room.util.a.e(cursorG, "interval_duration");
            int iE9 = androidx.room.util.a.e(cursorG, "flex_duration");
            int iE10 = androidx.room.util.a.e(cursorG, "run_attempt_count");
            int iE11 = androidx.room.util.a.e(cursorG, "backoff_policy");
            int iE12 = androidx.room.util.a.e(cursorG, "backoff_delay_duration");
            int iE13 = androidx.room.util.a.e(cursorG, "last_enqueue_time");
            int iE14 = androidx.room.util.a.e(cursorG, "minimum_retention_duration");
            i0Var = i0VarF;
            try {
                int iE15 = androidx.room.util.a.e(cursorG, "schedule_requested_at");
                int iE16 = androidx.room.util.a.e(cursorG, "run_in_foreground");
                int iE17 = androidx.room.util.a.e(cursorG, "out_of_quota_policy");
                int iE18 = androidx.room.util.a.e(cursorG, "period_count");
                int iE19 = androidx.room.util.a.e(cursorG, "generation");
                int iE20 = androidx.room.util.a.e(cursorG, "required_network_type");
                int iE21 = androidx.room.util.a.e(cursorG, "requires_charging");
                int iE22 = androidx.room.util.a.e(cursorG, "requires_device_idle");
                int iE23 = androidx.room.util.a.e(cursorG, "requires_battery_not_low");
                int iE24 = androidx.room.util.a.e(cursorG, "requires_storage_not_low");
                int iE25 = androidx.room.util.a.e(cursorG, "trigger_content_update_delay");
                int iE26 = androidx.room.util.a.e(cursorG, "trigger_max_content_delay");
                int iE27 = androidx.room.util.a.e(cursorG, "content_uri_triggers");
                int i10 = iE14;
                ArrayList arrayList = new ArrayList(cursorG.getCount());
                while (cursorG.moveToNext()) {
                    String string = cursorG.isNull(iE) ? null : cursorG.getString(iE);
                    WorkInfo.State stateF = b0.f(cursorG.getInt(iE2));
                    String string2 = cursorG.isNull(iE3) ? null : cursorG.getString(iE3);
                    String string3 = cursorG.isNull(iE4) ? null : cursorG.getString(iE4);
                    androidx.work.d dVarG = androidx.work.d.g(cursorG.isNull(iE5) ? null : cursorG.getBlob(iE5));
                    androidx.work.d dVarG2 = androidx.work.d.g(cursorG.isNull(iE6) ? null : cursorG.getBlob(iE6));
                    long j10 = cursorG.getLong(iE7);
                    long j11 = cursorG.getLong(iE8);
                    long j12 = cursorG.getLong(iE9);
                    int i11 = cursorG.getInt(iE10);
                    BackoffPolicy backoffPolicyC = b0.c(cursorG.getInt(iE11));
                    long j13 = cursorG.getLong(iE12);
                    long j14 = cursorG.getLong(iE13);
                    int i12 = i10;
                    long j15 = cursorG.getLong(i12);
                    int i13 = iE;
                    int i14 = iE15;
                    long j16 = cursorG.getLong(i14);
                    iE15 = i14;
                    iE16 = iE16;
                    boolean z10 = cursorG.getInt(iE16) != 0;
                    OutOfQuotaPolicy outOfQuotaPolicyE = b0.e(cursorG.getInt(iE17));
                    iE17 = iE17;
                    int i15 = iE18;
                    int i16 = cursorG.getInt(i15);
                    iE18 = i15;
                    int i17 = iE19;
                    int i18 = cursorG.getInt(i17);
                    iE19 = i17;
                    int i19 = iE20;
                    NetworkType networkTypeD = b0.d(cursorG.getInt(i19));
                    iE20 = i19;
                    iE21 = iE21;
                    boolean z11 = cursorG.getInt(iE21) != 0;
                    boolean z12 = cursorG.getInt(iE22) != 0;
                    boolean z13 = cursorG.getInt(iE23) != 0;
                    boolean z14 = cursorG.getInt(iE24) != 0;
                    long j17 = cursorG.getLong(iE25);
                    iE25 = iE25;
                    int i20 = iE26;
                    long j18 = cursorG.getLong(i20);
                    iE26 = i20;
                    int i21 = iE27;
                    iE27 = i21;
                    arrayList.add(new u(string, stateF, string2, string3, dVarG, dVarG2, j10, j11, j12, new androidx.work.b(networkTypeD, z11, z12, z13, z14, j17, j18, b0.b(cursorG.isNull(i21) ? null : cursorG.getBlob(i21))), i11, backoffPolicyC, j13, j14, j15, j16, z10, outOfQuotaPolicyE, i16, i18));
                    iE = i13;
                    i10 = i12;
                }
                cursorG.close();
                i0Var.release();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                cursorG.close();
                i0Var.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            i0Var = i0VarF;
        }
    }

    @Override
    public List x() {
        i0 i0VarF = i0.f("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
        this.f63016a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
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
    public boolean y() {
        boolean z10 = false;
        i0 i0VarF = i0.f("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
        this.f63016a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f63016a, i0VarF, false, null);
        try {
            if (cursorG.moveToFirst() && cursorG.getInt(0) != 0) {
                z10 = true;
            }
            return z10;
        } finally {
            cursorG.close();
            i0VarF.release();
        }
    }

    @Override
    public int z(String str) {
        this.f63016a.j();
        z3.h hVarB = this.f63025j.b();
        if (str == null) {
            hVarB.g(1);
        } else {
            hVarB.V(1, str);
        }
        this.f63016a.k();
        try {
            int iF = hVarB.F();
            this.f63016a.e0();
            return iF;
        } finally {
            this.f63016a.t();
            this.f63025j.h(hVarB);
        }
    }
}
