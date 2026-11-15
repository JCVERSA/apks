package j4;

import android.database.Cursor;
import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import androidx.room.RoomDatabase;
import androidx.room.i0;
import androidx.work.WorkInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class h implements g {

    private final RoomDatabase f62957a;

    public h(RoomDatabase roomDatabase) {
        this.f62957a = roomDatabase;
    }

    private void b(androidx.collection.a aVar) {
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
                    b(aVar2);
                    aVar2 = new androidx.collection.a(DescriptorProtos$Edition.EDITION_PROTO3_VALUE);
                    i11 = 0;
                }
            }
            if (i11 > 0) {
                b(aVar2);
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
        Cursor cursorG = androidx.room.util.b.g(this.f62957a, i0VarF, false, null);
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

    private void c(androidx.collection.a aVar) {
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
                    c(aVar2);
                    aVar2 = new androidx.collection.a(DescriptorProtos$Edition.EDITION_PROTO3_VALUE);
                    i11 = 0;
                }
            }
            if (i11 > 0) {
                c(aVar2);
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
        Cursor cursorG = androidx.room.util.b.g(this.f62957a, i0VarF, false, null);
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

    public static List d() {
        return Collections.emptyList();
    }

    @Override
    public List a(z3.g gVar) {
        androidx.work.d dVarG;
        this.f62957a.j();
        Cursor cursorG = androidx.room.util.b.g(this.f62957a, gVar, true, null);
        try {
            int iD = androidx.room.util.a.d(cursorG, "id");
            int iD2 = androidx.room.util.a.d(cursorG, "state");
            int iD3 = androidx.room.util.a.d(cursorG, "output");
            int iD4 = androidx.room.util.a.d(cursorG, "run_attempt_count");
            int iD5 = androidx.room.util.a.d(cursorG, "generation");
            androidx.collection.a aVar = new androidx.collection.a();
            androidx.collection.a aVar2 = new androidx.collection.a();
            while (cursorG.moveToNext()) {
                String string = cursorG.getString(iD);
                if (((ArrayList) aVar.get(string)) == null) {
                    aVar.put(string, new ArrayList());
                }
                String string2 = cursorG.getString(iD);
                if (((ArrayList) aVar2.get(string2)) == null) {
                    aVar2.put(string2, new ArrayList());
                }
            }
            cursorG.moveToPosition(-1);
            c(aVar);
            b(aVar2);
            ArrayList arrayList = new ArrayList(cursorG.getCount());
            while (cursorG.moveToNext()) {
                String string3 = (iD == -1 || cursorG.isNull(iD)) ? null : cursorG.getString(iD);
                WorkInfo.State stateF = iD2 == -1 ? null : b0.f(cursorG.getInt(iD2));
                if (iD3 == -1) {
                    dVarG = null;
                } else {
                    dVarG = androidx.work.d.g(cursorG.isNull(iD3) ? null : cursorG.getBlob(iD3));
                }
                int i10 = iD4 == -1 ? 0 : cursorG.getInt(iD4);
                int i11 = iD5 != -1 ? cursorG.getInt(iD5) : 0;
                ArrayList arrayList2 = (ArrayList) aVar.get(cursorG.getString(iD));
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                ArrayList arrayList3 = arrayList2;
                ArrayList arrayList4 = (ArrayList) aVar2.get(cursorG.getString(iD));
                if (arrayList4 == null) {
                    arrayList4 = new ArrayList();
                }
                arrayList.add(new u.c(string3, stateF, dVarG, i10, i11, arrayList3, arrayList4));
            }
            return arrayList;
        } finally {
            cursorG.close();
        }
    }
}
