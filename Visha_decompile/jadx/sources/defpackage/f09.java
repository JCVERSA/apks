package defpackage;

import android.os.Bundle;
import android.util.Log;
import com.mgtv.thirdsdk.playcore.view.ImgoPlayerView;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class f09 {
    public static final String a(ConcurrentHashMap concurrentHashMap, String str) {
        y45.j(concurrentHashMap, "<this>");
        y45.j(str, "key");
        try {
            Object obj = concurrentHashMap.get(str);
            if (obj instanceof String) {
                return (String) obj;
            }
            return null;
        } catch (Throwable th) {
            Log.e(ImgoPlayerView.TAG_PLAYER_ADSDK, "safeGetString: ", th);
            return null;
        }
    }

    public static final void b(ConcurrentHashMap concurrentHashMap, Bundle bundle) {
        y45.j(concurrentHashMap, "<this>");
        y45.j(bundle, "bundle");
        try {
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj != null) {
                    concurrentHashMap.put(str, obj);
                }
            }
        } catch (Throwable th) {
            Log.e(ImgoPlayerView.TAG_PLAYER_ADSDK, "safePutAll: ", th);
        }
    }

    public static final void c(ConcurrentHashMap concurrentHashMap, String str, boolean z) {
        y45.j(concurrentHashMap, "<this>");
        y45.j(str, "key");
        try {
            concurrentHashMap.put(str, Boolean.valueOf(z));
        } catch (Throwable th) {
            Log.e(ImgoPlayerView.TAG_PLAYER_ADSDK, "safePutBoolean: ", th);
        }
    }

    public static final void d(Bundle bundle, String str, int i) {
        y45.j(bundle, "<this>");
        y45.j(str, "key");
        try {
            bundle.putInt(str, i);
        } catch (Throwable th) {
            Log.e(ImgoPlayerView.TAG_PLAYER_ADSDK, "bundleSafePutInt: ", th);
        }
    }

    public static final void e(ConcurrentHashMap concurrentHashMap, String str, int i) {
        y45.j(concurrentHashMap, "<this>");
        y45.j(str, "key");
        try {
            concurrentHashMap.put(str, Integer.valueOf(i));
        } catch (Throwable th) {
            Log.e(ImgoPlayerView.TAG_PLAYER_ADSDK, "safePutInt: ", th);
        }
    }

    public static final void f(Bundle bundle, String str, long j) {
        y45.j(bundle, "<this>");
        try {
            bundle.putLong(str, j);
        } catch (Throwable th) {
            Log.e(ImgoPlayerView.TAG_PLAYER_ADSDK, "bundleSafePutLong: ", th);
        }
    }

    public static final void g(Bundle bundle, String str, String str2) {
        y45.j(bundle, "<this>");
        try {
            bundle.putString(str, str2);
        } catch (Throwable th) {
            Log.e(ImgoPlayerView.TAG_PLAYER_ADSDK, "bundleSafePutString: ", th);
        }
    }

    public static final void h(ConcurrentHashMap concurrentHashMap, String str, String str2) {
        y45.j(concurrentHashMap, "<this>");
        y45.j(str, "key");
        if (str2 != null) {
            try {
                concurrentHashMap.put(str, str2);
            } catch (Throwable th) {
                Log.e(ImgoPlayerView.TAG_PLAYER_ADSDK, "safePutString: ", th);
            }
        }
    }

    public static final void i(Bundle bundle, String str) {
        y45.j(bundle, "<this>");
        y45.j(str, "key");
        try {
            bundle.remove(str);
        } catch (Throwable th) {
            Log.e(ImgoPlayerView.TAG_PLAYER_ADSDK, "bundleSafeRemove: ", th);
        }
    }

    public static final void j(ConcurrentHashMap concurrentHashMap, String str) {
        y45.j(concurrentHashMap, "<this>");
        y45.j(str, "key");
        try {
            concurrentHashMap.remove(str);
        } catch (Throwable th) {
            Log.e(ImgoPlayerView.TAG_PLAYER_ADSDK, "safeRemove: ", th);
        }
    }

    public static final Bundle k(Map map) {
        y45.j(map, "<this>");
        Bundle bundle = new Bundle();
        try {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                if (value instanceof String) {
                    bundle.putString(str, (String) value);
                } else if (value instanceof Integer) {
                    bundle.putInt(str, ((Number) value).intValue());
                } else if (value instanceof Long) {
                    bundle.putLong(str, ((Number) value).longValue());
                } else if (value instanceof Boolean) {
                    bundle.putBoolean(str, ((Boolean) value).booleanValue());
                } else if (value instanceof Double) {
                    bundle.putDouble(str, ((Number) value).doubleValue());
                } else if (value instanceof Float) {
                    bundle.putFloat(str, ((Number) value).floatValue());
                } else if (value instanceof byte[]) {
                    bundle.putByteArray(str, (byte[]) value);
                } else {
                    ikd.b().w("MapToBundle", "Unsupported type for key '" + str + "': " + value.getClass().getName());
                }
            }
        } catch (Throwable th) {
            Log.e(ImgoPlayerView.TAG_PLAYER_ADSDK, "toBundle: ", th);
        }
        return bundle;
    }
}
