package c5;

import b5.b2;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

public class m implements z0, b2 {

    public static final m f16615a = new m();

    @Override
    public int b() {
        return 14;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        if (obj instanceof AtomicInteger) {
            j1Var.e0(((AtomicInteger) obj).get());
            return;
        }
        if (obj instanceof AtomicLong) {
            j1Var.g0(((AtomicLong) obj).get());
            return;
        }
        if (obj instanceof AtomicBoolean) {
            j1Var.append(((AtomicBoolean) obj).get() ? "true" : "false");
            return;
        }
        if (obj == null) {
            j1Var.l0(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        int i11 = 0;
        if (obj instanceof AtomicIntegerArray) {
            AtomicIntegerArray atomicIntegerArray = (AtomicIntegerArray) obj;
            int length = atomicIntegerArray.length();
            j1Var.write(91);
            while (i11 < length) {
                int i12 = atomicIntegerArray.get(i11);
                if (i11 != 0) {
                    j1Var.write(44);
                }
                j1Var.e0(i12);
                i11++;
            }
            j1Var.write(93);
            return;
        }
        AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
        int length2 = atomicLongArray.length();
        j1Var.write(91);
        while (i11 < length2) {
            long j10 = atomicLongArray.get(i11);
            if (i11 != 0) {
                j1Var.write(44);
            }
            j1Var.g0(j10);
            i11++;
        }
        j1Var.write(93);
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        if (aVar.f141f.t0() == 8) {
            aVar.f141f.f0(16);
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        aVar.d0(jSONArray);
        int i10 = 0;
        if (type == AtomicIntegerArray.class) {
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(jSONArray.size());
            while (i10 < jSONArray.size()) {
                atomicIntegerArray.set(i10, jSONArray.getInteger(i10).intValue());
                i10++;
            }
            return atomicIntegerArray;
        }
        AtomicLongArray atomicLongArray = new AtomicLongArray(jSONArray.size());
        while (i10 < jSONArray.size()) {
            atomicLongArray.set(i10, jSONArray.getLong(i10).longValue());
            i10++;
        }
        return atomicLongArray;
    }
}
