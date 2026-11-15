package defpackage;

import android.os.Bundle;
import android.os.PersistableBundle;

public abstract class tn0 {
    public static final boolean a(Object obj) {
        return (obj instanceof PersistableBundle) || (obj instanceof Integer) || (obj instanceof int[]) || (obj instanceof Long) || (obj instanceof long[]) || (obj instanceof Double) || (obj instanceof double[]) || (obj instanceof String) || ((obj instanceof Object[]) && (((Object[]) obj) instanceof String[])) || (obj instanceof Boolean) || (obj instanceof boolean[]);
    }

    public static final void b(PersistableBundle persistableBundle, String str, Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Unable to determine type of null values");
        }
        if (obj instanceof Integer) {
            persistableBundle.putInt(str, ((Number) obj).intValue());
            return;
        }
        if (obj instanceof int[]) {
            persistableBundle.putIntArray(str, (int[]) obj);
            return;
        }
        if (obj instanceof Long) {
            persistableBundle.putLong(str, ((Number) obj).longValue());
            return;
        }
        if (obj instanceof long[]) {
            persistableBundle.putLongArray(str, (long[]) obj);
            return;
        }
        if (obj instanceof Double) {
            persistableBundle.putDouble(str, ((Number) obj).doubleValue());
            return;
        }
        if (obj instanceof double[]) {
            persistableBundle.putDoubleArray(str, (double[]) obj);
            return;
        }
        if (obj instanceof String) {
            persistableBundle.putString(str, (String) obj);
            return;
        }
        if ((obj instanceof Object[]) && (((Object[]) obj) instanceof String[])) {
            persistableBundle.putStringArray(str, (String[]) obj);
            return;
        }
        if (obj instanceof Boolean) {
            persistableBundle.putBoolean(str, ((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof boolean[]) {
            persistableBundle.putBooleanArray(str, (boolean[]) obj);
            return;
        }
        if (obj instanceof PersistableBundle) {
            persistableBundle.putAll((PersistableBundle) obj);
            return;
        }
        throw new IllegalArgumentException("Objects of type " + obj.getClass().getSimpleName() + " can not be put into a PersistableBundle");
    }

    public static final PersistableBundle c(Bundle bundle) {
        y45.j(bundle, "<this>");
        PersistableBundle persistableBundle = new PersistableBundle();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (a(obj)) {
                y45.i(str, "key");
                b(persistableBundle, str, obj);
            }
        }
        return persistableBundle;
    }
}
