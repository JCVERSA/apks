package com.therouter.router;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000*\u0004\b\u0000\u0010\u00012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0002B\u0005¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u0004\u0018\u00018\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/therouter/router/RegexpKeyedMap;", "V", "Ljava/util/HashMap;", "", "()V", "get", "key", "(Ljava/lang/String;)Ljava/lang/Object;", "router_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RegexpKeyedMap<V> extends HashMap<String, V> {
    @Override
    public final boolean containsKey(Object obj) {
        if (obj == null ? true : obj instanceof String) {
            return containsKey((String) obj);
        }
        return false;
    }

    @Override
    public final Set<Map.Entry<String, V>> entrySet() {
        return (Set<Map.Entry<String, V>>) getEntries();
    }

    @Override
    public final V get(Object obj) {
        if (obj == null ? true : obj instanceof String) {
            return get((String) obj);
        }
        return null;
    }

    public Set<Map.Entry<String, Object>> getEntries() {
        return super.entrySet();
    }

    public Set<String> getKeys() {
        return super.keySet();
    }

    @Override
    public final Object getOrDefault(Object obj, Object obj2) {
        return !(obj == null ? true : obj instanceof String) ? obj2 : getOrDefault((String) obj, obj2);
    }

    public int getSize() {
        return super.size();
    }

    public Collection<Object> getValues() {
        return super.values();
    }

    @Override
    public final Set<String> keySet() {
        return getKeys();
    }

    @Override
    public final V remove(Object obj) {
        if (obj == null ? true : obj instanceof String) {
            return (V) remove((String) obj);
        }
        return null;
    }

    @Override
    public final int size() {
        return getSize();
    }

    @Override
    public final Collection<V> values() {
        return (Collection<V>) getValues();
    }

    public boolean containsKey(String str) {
        return super.containsKey((Object) str);
    }

    public V get(String key) {
        V v10;
        String strSubstring;
        if (key == null) {
            return null;
        }
        V v11 = (V) super.get((Object) key);
        if (v11 != null) {
            return v11;
        }
        int iN0 = StringsKt.n0(key, '?', 0, false, 6, null);
        if (iN0 > 0) {
            strSubstring = key.substring(0, iN0);
            Intrinsics.g(strSubstring, "substring(...)");
            v10 = (V) super.get((Object) strSubstring);
            if (v10 != null) {
                return v10;
            }
        } else {
            v10 = v11;
            strSubstring = null;
        }
        for (String str : keySet()) {
            if (str != null && StringsKt.c0(str, "\\", false, 2, null)) {
                Pattern patternCompile = Pattern.compile(str);
                if (patternCompile.matcher(key).find()) {
                    return (V) super.get((Object) str);
                }
                if (strSubstring != null && patternCompile.matcher(key).find()) {
                    return (V) super.get((Object) str);
                }
            }
        }
        return v10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object getOrDefault(String str, Object obj) {
        return super.getOrDefault((Object) str, obj);
    }

    public Object remove(String str) {
        return super.remove((Object) str);
    }

    @Override
    public final boolean remove(Object obj, Object obj2) {
        if (obj == null ? true : obj instanceof String) {
            return remove((String) obj, obj2);
        }
        return false;
    }

    public boolean remove(String str, Object obj) {
        return super.remove((Object) str, obj);
    }
}
