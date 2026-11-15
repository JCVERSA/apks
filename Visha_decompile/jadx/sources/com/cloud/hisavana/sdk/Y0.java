package com.cloud.hisavana.sdk;

import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import androidx.sqlite.db.SimpleSQLiteQuery;
import com.cloud.hisavana.sdk.common.bean.DiskTrackingBean;
import com.cloud.hisavana.sdk.database.HSRoomDatabase;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.google.gson.reflect.TypeToken;
import defpackage.abb;
import defpackage.ikd;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class Y0 {
    public static final a e = new a(null);
    public static final Y0 f = new Y0();
    public final long a = 172800000;
    public final int b = 400;
    public final int c = 500;
    public final String d = "RetryTrackingDbManager";

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Y0 a() {
            return Y0.f;
        }

        public a() {
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/Y0$b", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class b extends TypeToken<List<? extends DiskTrackingBean>> {
    }

    public final s b(DiskTrackingBean diskTrackingBean) {
        return s.f.a(diskTrackingBean);
    }

    public final List c(Integer num) throws GsonUtil.GsonParseException {
        Pair pairA = num != null ? abb.a("SELECT tracking_data FROM retry_tracking_table_room LIMIT ?", new Integer[]{num}) : abb.a("SELECT tracking_data FROM retry_tracking_table_room", new Integer[0]);
        Cursor cursorA = HSRoomDatabase.t().v().a(new SimpleSQLiteQuery((String) pairA.component1(), (Integer[]) pairA.component2()));
        ArrayList arrayList = new ArrayList();
        while (cursorA.moveToNext()) {
            String string = cursorA.getString(0);
            y45.g(string);
            arrayList.add(string);
        }
        cursorA.close();
        if (arrayList.isEmpty()) {
            return new ArrayList();
        }
        Object objB = GsonUtil.b(arrayList.toString(), new b().getType());
        y45.i(objB, "fromJson(...)");
        return (List) objB;
    }

    public final void d(String str) {
        y45.j(str, "uuid");
        try {
            HSRoomDatabase.t().v().a(new String[]{str});
        } catch (Exception e2) {
            ikd.b().e(this.d, "deleteByUUID " + Log.getStackTraceString(e2));
        }
    }

    public final void e(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        HSRoomDatabase.t().v().a((String[]) list.toArray(new String[0]));
        ikd.b().d(this.d, "deleteByUUIDs ," + list + ' ');
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0084  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v3 */
    public final DiskTrackingBean f(String str) throws Throwable {
        Cursor cursorA;
        y45.j(str, "uuid");
        ?? r0 = 0;
        try {
            try {
                cursorA = HSRoomDatabase.t().v().a(new SimpleSQLiteQuery("SELECT tracking_data FROM retry_tracking_table_room WHERE uuid = ?", new String[]{str}));
                try {
                    if (cursorA.moveToNext()) {
                        if (cursorA.getColumnCount() <= 0) {
                            cursorA.close();
                            return null;
                        }
                        int columnIndex = cursorA.getColumnIndex("tracking_data");
                        if (columnIndex < 0) {
                            cursorA.close();
                            return null;
                        }
                        String string = cursorA.getString(columnIndex);
                        if (TextUtils.isEmpty(string)) {
                            cursorA.close();
                            return null;
                        }
                        DiskTrackingBean diskTrackingBean = (DiskTrackingBean) GsonUtil.a(string, DiskTrackingBean.class);
                        cursorA.close();
                        return diskTrackingBean;
                    }
                } catch (Exception e2) {
                    e = e2;
                    ikd.b().e(this.d, "queryByMd5 " + Log.getStackTraceString(e));
                    if (cursorA != null) {
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                r0 = str;
                if (r0 != 0) {
                    r0.close();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursorA = null;
        } catch (Throwable th2) {
            th = th2;
            if (r0 != 0) {
                r0.close();
            }
            throw th;
        }
        cursorA.close();
        return null;
    }

    public final void g() {
        HSRoomDatabase.t().v().a(System.currentTimeMillis() - this.a);
    }

    public final void h(DiskTrackingBean diskTrackingBean) {
        if (diskTrackingBean != null) {
            try {
                HSRoomDatabase.t().v().a(b(diskTrackingBean));
            } catch (Exception e2) {
                ikd.b().e(this.d, "saveTrackingBean " + Log.getStackTraceString(e2));
            }
        }
    }

    public final void i() {
        try {
            List<String> listA = HSRoomDatabase.t().v().a();
            int size = (listA == null || listA.size() < this.c) ? 0 : listA.size() - this.b;
            ikd ikdVarB = ikd.b();
            String str = this.d;
            StringBuilder sb = new StringBuilder();
            sb.append("deleteTrackingBeanToSafeSpace count : ");
            sb.append(size);
            sb.append(",query?.count : ");
            sb.append(listA != null ? Integer.valueOf(listA.size()) : null);
            sb.append(' ');
            ikdVarB.e(str, sb.toString());
            if (size > 0) {
                List listC = c(Integer.valueOf(size));
                ArrayList arrayList = new ArrayList();
                Iterator it = listC.iterator();
                while (it.hasNext()) {
                    arrayList.add(((DiskTrackingBean) it.next()).getUuid());
                }
                e(arrayList);
            }
        } catch (Exception e2) {
            ikd.b().e(this.d, "deleteTrackingBeanToSafeSpace " + Log.getStackTraceString(e2));
        }
    }

    public final void j(DiskTrackingBean diskTrackingBean) {
        if (diskTrackingBean != null) {
            try {
                HSRoomDatabase.t().v().b(b(diskTrackingBean));
            } catch (Exception e2) {
                ikd.b().e(this.d, "updateTrackingBean " + Log.getStackTraceString(e2));
            }
        }
    }

    public final List k() {
        try {
            g();
            return l();
        } catch (Exception e2) {
            ikd.b().e(this.d, "getAllTrackingBeans " + Log.getStackTraceString(e2));
            return new ArrayList();
        }
    }

    public final List l() {
        return c(null);
    }
}
