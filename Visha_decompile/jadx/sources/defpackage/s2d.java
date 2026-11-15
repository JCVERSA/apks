package defpackage;

import android.os.Bundle;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Set;

public abstract class s2d {
    public static Bundle b(int i, String str, String str2) {
        y45.j(str, "errorMessage");
        Bundle bundle = new Bundle();
        bundle.putInt("ErrorCode", i);
        bundle.putString("ErrorMessage", str);
        bundle.putBoolean("success", false);
        bundle.putLong("timestamp", System.currentTimeMillis());
        if (str2 != null) {
            bundle.putString("ErrorType", str2);
        }
        return bundle;
    }

    public static Bundle c(e74 e74Var) {
        y45.j(e74Var, "initializer");
        q2d.a aVar = q2d.a;
        Object objPoll = aVar.c.poll();
        if (objPoll != null) {
            aVar.d.decrementAndGet();
        } else {
            objPoll = aVar.a.invoke();
        }
        Bundle bundle = (Bundle) objPoll;
        if (bundle.isEmpty()) {
            q2d.b.incrementAndGet();
        } else {
            q2d.c.incrementAndGet();
            Log.d("NexusFlow.Performance", "Bundle pool miss - bundle not properly reset");
        }
        try {
            e74Var.invoke(bundle);
            return new Bundle(bundle);
        } finally {
            q2d.b(bundle);
        }
    }

    public static void e(Bundle bundle, Bundle bundle2, String str) {
        try {
            Object obj = bundle.get(str);
            if (obj instanceof String) {
                bundle2.putString(str, (String) obj);
            } else if (obj instanceof Integer) {
                bundle2.putInt(str, ((Number) obj).intValue());
            } else if (obj instanceof Long) {
                bundle2.putLong(str, ((Number) obj).longValue());
            } else if (obj instanceof Boolean) {
                bundle2.putBoolean(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof Float) {
                bundle2.putFloat(str, ((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                bundle2.putDouble(str, ((Number) obj).doubleValue());
            } else if (obj instanceof Bundle) {
                bundle2.putBundle(str, (Bundle) obj);
            } else if (obj instanceof Object[]) {
                g(bundle2, str, (Object[]) obj);
            } else if (obj instanceof int[]) {
                bundle2.putIntArray(str, (int[]) obj);
            } else if (obj instanceof long[]) {
                bundle2.putLongArray(str, (long[]) obj);
            } else if (obj instanceof float[]) {
                bundle2.putFloatArray(str, (float[]) obj);
            } else if (obj instanceof double[]) {
                bundle2.putDoubleArray(str, (double[]) obj);
            } else if (obj instanceof boolean[]) {
                bundle2.putBooleanArray(str, (boolean[]) obj);
            } else if (obj == null) {
                Log.d("BundleUtils", "Skipping null value for key: " + str);
            } else {
                Log.w("BundleUtils", "Unsupported parameter type key: " + str + ", type: " + obj.getClass().getSimpleName());
            }
        } catch (Exception e) {
            Log.e("BundleUtils", "Failed to copy Bundle value key: " + str, e);
        }
    }

    public static void f(Bundle bundle, Bundle bundle2, Set set) {
        y45.j(bundle2, TypedValues.AttributesType.S_TARGET);
        y45.j(set, "excludeKeys");
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                if (set.contains(str)) {
                    Log.d("BundleUtils", "Skipping excluded key: " + str);
                } else {
                    y45.g(str);
                    e(bundle, bundle2, str);
                }
            }
        }
    }

    public static void g(Bundle bundle, String str, Object[] objArr) {
        if (objArr instanceof String[]) {
            bundle.putStringArray(str, (String[]) objArr);
            return;
        }
        if (objArr instanceof Integer[]) {
            bundle.putIntArray(str, hi.V0((Integer[]) objArr));
            return;
        }
        if (objArr instanceof Long[]) {
            bundle.putLongArray(str, hi.f1((Long[]) objArr));
            return;
        }
        if (objArr instanceof Float[]) {
            bundle.putFloatArray(str, hi.S0((Float[]) objArr));
            return;
        }
        if (objArr instanceof Double[]) {
            bundle.putDoubleArray(str, hi.R0((Double[]) objArr));
            return;
        }
        if (objArr instanceof Boolean[]) {
            bundle.putBooleanArray(str, hi.O0((Boolean[]) objArr));
            return;
        }
        Class<?> componentType = objArr.getClass().getComponentType();
        Log.w("BundleUtils", "Unsupported array type key: " + str + ", elementType: " + (componentType != null ? componentType.getSimpleName() : null));
    }
}
