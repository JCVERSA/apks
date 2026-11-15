package com.transsion.moviedetail.staff;

import android.os.SystemClock;
import android.util.SparseArray;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.moviedetailapi.bean.Staff;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;

public final class w {

    private List f45622c;

    private int f45620a = -1;

    private int f45621b = -1;

    private SparseArray f45623d = new SparseArray();

    private HashSet f45624e = new HashSet();

    public final int a() {
        return this.f45620a;
    }

    public final int b() {
        return this.f45621b;
    }

    public final void c(int i10, long j10) {
        String staffId;
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("reportBrowseEvent  staff----  position:");
            sb2.append(i10);
            sb2.append("  duration:");
            sb2.append(j10);
            List list = this.f45622c;
            Staff staff = list != null ? (Staff) list.get(i10) : null;
            if (this.f45624e.add(staff != null ? staff.getStaffId() : null)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("item_type", "staff");
                if (staff == null || (staffId = staff.getStaffId()) == null) {
                    staffId = "";
                }
                linkedHashMap.put("staff_id", staffId);
                linkedHashMap.put(RequestParameters.POSITION, String.valueOf(i10));
                linkedHashMap.put("browse_duration", String.valueOf(j10));
                com.transsion.baselib.helper.a.f42121a.e("staff_info", linkedHashMap);
            }
        } catch (Exception unused) {
        }
    }

    public final void d(int i10, int i11) {
        int i12 = this.f45620a;
        if (i12 == i10 && this.f45621b == i11) {
            return;
        }
        if (i12 >= 0 && this.f45621b >= 0) {
            ArrayList arrayList = new ArrayList();
            IntIterator intIteratorA = androidx.core.util.k.a(this.f45623d);
            while (intIteratorA.hasNext()) {
                int iIntValue = intIteratorA.next().intValue();
                if (i10 > iIntValue || iIntValue > i11) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    Object obj = this.f45623d.get(iIntValue);
                    Intrinsics.g(obj, "get(...)");
                    c(iIntValue, jElapsedRealtime - ((Number) obj).longValue());
                    arrayList.add(Integer.valueOf(iIntValue));
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.f45623d.remove(((Number) it.next()).intValue());
            }
            if (i10 <= i11) {
                int i13 = i10;
                while (true) {
                    if (this.f45623d.get(i13) == null) {
                        this.f45623d.put(i13, Long.valueOf(SystemClock.elapsedRealtime()));
                    }
                    if (i13 == i11) {
                        break;
                    } else {
                        i13++;
                    }
                }
            }
        } else if (i10 <= i11) {
            int i14 = i10;
            while (true) {
                this.f45623d.put(i14, Long.valueOf(SystemClock.elapsedRealtime()));
                if (i14 == i11) {
                    break;
                } else {
                    i14++;
                }
            }
        }
        this.f45620a = i10;
        this.f45621b = i11;
    }

    public final void e(List list) {
        this.f45622c = list;
    }
}
