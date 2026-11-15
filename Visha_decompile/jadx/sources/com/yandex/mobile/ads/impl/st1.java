package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.transsion.xuanniao.account.model.data.CloudConfigRes;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class st1 extends e42 {
    private long b;
    private long[] c;
    private long[] d;

    public st1() {
        super(new r40());
        this.b = C.TIME_UNSET;
        this.c = new long[0];
        this.d = new long[0];
    }

    public final long a() {
        return this.b;
    }

    public final long[] b() {
        return this.d;
    }

    public final long[] c() {
        return this.c;
    }

    public final boolean a(long j, ag1 ag1Var) {
        if (ag1Var.t() != 2) {
            return false;
        }
        int iZ = ag1Var.z();
        int iD = ag1Var.d();
        ag1Var.f(iZ);
        if (!"onMetaData".equals(new String(ag1Var.c(), iD, iZ)) || ag1Var.a() == 0 || ag1Var.t() != 8) {
            return false;
        }
        HashMap<String, Object> mapA = a(ag1Var);
        Object obj = mapA.get("duration");
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (dDoubleValue > 0.0d) {
                this.b = (long) (dDoubleValue * 1000000.0d);
            }
        }
        Object obj2 = mapA.get("keyframes");
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get("filepositions");
            Object obj4 = map.get(CloudConfigRes.UNIT_TIMES);
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.c = new long[size];
                this.d = new long[size];
                for (int i = 0; i < size; i++) {
                    Object obj5 = list.get(i);
                    Object obj6 = list2.get(i);
                    if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                        this.c = new long[0];
                        this.d = new long[0];
                        break;
                    }
                    this.c[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                    this.d[i] = ((Double) obj5).longValue();
                }
            }
        }
        return false;
    }

    @Nullable
    private static Serializable a(int i, ag1 ag1Var) {
        if (i == 8) {
            return a(ag1Var);
        }
        if (i == 10) {
            int iX = ag1Var.x();
            ArrayList arrayList = new ArrayList(iX);
            for (int i2 = 0; i2 < iX; i2++) {
                Serializable serializableA = a(ag1Var.t(), ag1Var);
                if (serializableA != null) {
                    arrayList.add(serializableA);
                }
            }
            return arrayList;
        }
        if (i == 11) {
            Date date = new Date((long) Double.longBitsToDouble(ag1Var.p()));
            ag1Var.f(2);
            return date;
        }
        if (i == 0) {
            return Double.valueOf(Double.longBitsToDouble(ag1Var.p()));
        }
        if (i == 1) {
            return Boolean.valueOf(ag1Var.t() == 1);
        }
        if (i == 2) {
            int iZ = ag1Var.z();
            int iD = ag1Var.d();
            ag1Var.f(iZ);
            return new String(ag1Var.c(), iD, iZ);
        }
        if (i != 3) {
            return null;
        }
        HashMap map = new HashMap();
        while (true) {
            int iZ2 = ag1Var.z();
            int iD2 = ag1Var.d();
            ag1Var.f(iZ2);
            String str = new String(ag1Var.c(), iD2, iZ2);
            int iT = ag1Var.t();
            if (iT == 9) {
                return map;
            }
            Serializable serializableA2 = a(iT, ag1Var);
            if (serializableA2 != null) {
                map.put(str, serializableA2);
            }
        }
    }

    private static HashMap<String, Object> a(ag1 ag1Var) {
        int iX = ag1Var.x();
        HashMap<String, Object> map = new HashMap<>(iX);
        for (int i = 0; i < iX; i++) {
            int iZ = ag1Var.z();
            int iD = ag1Var.d();
            ag1Var.f(iZ);
            String str = new String(ag1Var.c(), iD, iZ);
            Serializable serializableA = a(ag1Var.t(), ag1Var);
            if (serializableA != null) {
                map.put(str, serializableA);
            }
        }
        return map;
    }
}
