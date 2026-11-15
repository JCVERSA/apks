package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;

abstract class a0 {

    private static Field f796a;

    private static boolean f797b;

    private static Class f798c;

    private static boolean f799d;

    private static Field f800e;

    private static boolean f801f;

    private static Field f802g;

    private static boolean f803h;

    static void a(Resources resources) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            return;
        }
        if (i10 >= 24) {
            c(resources);
        } else {
            b(resources);
        }
    }

    private static void b(Resources resources) {
        Object obj;
        if (!f797b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f796a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e10);
            }
            f797b = true;
        }
        Field field = f796a;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e11) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e11);
                obj = null;
            }
        } else {
            obj = null;
        }
        if (obj == null) {
            return;
        }
        d(obj);
    }

    private static void c(Resources resources) {
        Object obj;
        if (!f803h) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f802g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e10);
            }
            f803h = true;
        }
        Field field = f802g;
        if (field == null) {
            return;
        }
        Object obj2 = null;
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException e11) {
            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e11);
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!f797b) {
            try {
                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                f796a = declaredField2;
                declaredField2.setAccessible(true);
            } catch (NoSuchFieldException e12) {
                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e12);
            }
            f797b = true;
        }
        Field field2 = f796a;
        if (field2 != null) {
            try {
                obj2 = field2.get(obj);
            } catch (IllegalAccessException e13) {
                Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e13);
            }
        }
        if (obj2 != null) {
            d(obj2);
        }
    }

    private static void d(Object obj) {
        LongSparseArray longSparseArray;
        if (!f799d) {
            try {
                f798c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e10) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e10);
            }
            f799d = true;
        }
        Class cls = f798c;
        if (cls == null) {
            return;
        }
        if (!f801f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f800e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e11) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e11);
            }
            f801f = true;
        }
        Field field = f800e;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e12) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e12);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }
}
