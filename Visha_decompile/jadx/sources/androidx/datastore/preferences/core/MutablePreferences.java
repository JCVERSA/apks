package androidx.datastore.preferences.core;

import defpackage.e74;
import defpackage.hi;
import defpackage.i81;
import defpackage.ky5;
import defpackage.wn8;
import defpackage.y45;
import defpackage.z71;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010$\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B-\b\u0000\u0012\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\r\u001a\u00020\nH\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000f\u001a\u00020\nH\u0000¢\u0006\u0004\b\u000e\u0010\fJ$\u0010\u0012\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J&\u0010\u0014\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0017\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00040\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J,\u0010\u001a\u001a\u00020\n\"\u0004\b\u0000\u0010\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0019\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ%\u0010\u001d\u001a\u00020\n2\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0004\b\u001c\u0010\u001bJ\u0018\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u0001H\u0086\u0002¢\u0006\u0004\b\u001f\u0010 J\u001c\u0010\u001f\u001a\u00020\n2\n\u0010\"\u001a\u0006\u0012\u0002\b\u00030!H\u0086\u0002¢\u0006\u0004\b\u001f\u0010#J\u001c\u0010$\u001a\u00020\n2\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0086\u0002¢\u0006\u0004\b$\u0010%J)\u0010(\u001a\u00020\n2\u001a\u0010'\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030!0&\"\u0006\u0012\u0002\b\u00030!¢\u0006\u0004\b(\u0010)J!\u0010*\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b*\u0010\u0015J\r\u0010+\u001a\u00020\n¢\u0006\u0004\b+\u0010\fJ\u001a\u0010-\u001a\u00020\u00062\b\u0010,\u001a\u0004\u0018\u00010\u0004H\u0096\u0002¢\u0006\u0004\b-\u0010.J\u000f\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00103\u001a\u000202H\u0016¢\u0006\u0004\b3\u00104R*\u0010\u0005\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0004\u0012\u00020\u00040\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0005\u00105\u001a\u0004\b6\u0010\u0018R\u0014\u00108\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109¨\u0006:"}, d2 = {"Landroidx/datastore/preferences/core/MutablePreferences;", "Landroidx/datastore/preferences/core/Preferences;", "", "Landroidx/datastore/preferences/core/Preferences$Key;", "", "preferencesMap", "", "startFrozen", MethodDecl.initName, "(Ljava/util/Map;Z)V", "Lzfb;", "checkNotFrozen$datastore_preferences_core_release", "()V", "checkNotFrozen", "freeze$datastore_preferences_core_release", "freeze", "T", "key", "contains", "(Landroidx/datastore/preferences/core/Preferences$Key;)Z", "get", "(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;", "", "asMap", "()Ljava/util/Map;", ES6Iterator.VALUE_PROPERTY, "set", "(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V", "setUnchecked$datastore_preferences_core_release", "setUnchecked", "prefs", "plusAssign", "(Landroidx/datastore/preferences/core/Preferences;)V", "Landroidx/datastore/preferences/core/Preferences$Pair;", "pair", "(Landroidx/datastore/preferences/core/Preferences$Pair;)V", "minusAssign", "(Landroidx/datastore/preferences/core/Preferences$Key;)V", "", "pairs", "putAll", "([Landroidx/datastore/preferences/core/Preferences$Pair;)V", "remove", "clear", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Ljava/util/Map;", "getPreferencesMap$datastore_preferences_core_release", "Landroidx/datastore/preferences/core/AtomicBoolean;", "frozen", "Landroidx/datastore/preferences/core/AtomicBoolean;", "datastore-preferences-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MutablePreferences extends Preferences {
    private final AtomicBoolean frozen;
    private final Map<Preferences.Key<?>, Object> preferencesMap;

    /* JADX WARN: Multi-variable type inference failed */
    public MutablePreferences() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    @Override
    public Map<Preferences.Key<?>, Object> asMap() {
        Pair pair;
        Set<Map.Entry<Preferences.Key<?>, Object>> setEntrySet = this.preferencesMap.entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(setEntrySet, 10)), 16));
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                Object key = entry.getKey();
                byte[] bArr = (byte[]) value;
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                y45.i(bArrCopyOf, "copyOf(this, size)");
                pair = new Pair(key, bArrCopyOf);
            } else {
                pair = new Pair(entry.getKey(), entry.getValue());
            }
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return Actual_jvmAndroidKt.immutableMap(linkedHashMap);
    }

    public final void checkNotFrozen$datastore_preferences_core_release() {
        if (this.frozen.get()) {
            throw new IllegalStateException("Do mutate preferences once returned to DataStore.");
        }
    }

    public final void clear() {
        checkNotFrozen$datastore_preferences_core_release();
        this.preferencesMap.clear();
    }

    @Override
    public <T> boolean contains(Preferences.Key<T> key) {
        y45.j(key, "key");
        return this.preferencesMap.containsKey(key);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0064  */
    public boolean equals(Object other) {
        boolean zE;
        if (!(other instanceof MutablePreferences)) {
            return false;
        }
        MutablePreferences mutablePreferences = (MutablePreferences) other;
        Map<Preferences.Key<?>, Object> map = mutablePreferences.preferencesMap;
        if (map == this.preferencesMap) {
            return true;
        }
        if (map.size() != this.preferencesMap.size()) {
            return false;
        }
        Map<Preferences.Key<?>, Object> map2 = mutablePreferences.preferencesMap;
        if (!map2.isEmpty()) {
            for (Map.Entry<Preferences.Key<?>, Object> entry : map2.entrySet()) {
                Object obj = this.preferencesMap.get(entry.getKey());
                if (obj != null) {
                    Object value = entry.getValue();
                    if (!(value instanceof byte[])) {
                        zE = y45.e(value, obj);
                    } else if ((obj instanceof byte[]) && Arrays.equals((byte[]) value, (byte[]) obj)) {
                        zE = true;
                    } else {
                        zE = false;
                    }
                } else {
                    zE = false;
                }
                if (!zE) {
                    return false;
                }
            }
        }
        return true;
    }

    public final void freeze$datastore_preferences_core_release() {
        this.frozen.set(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public <T> T get(Preferences.Key<T> key) {
        y45.j(key, "key");
        T t = (T) this.preferencesMap.get(key);
        if (!(t instanceof byte[])) {
            return t;
        }
        byte[] bArr = (byte[]) t;
        T t2 = (T) Arrays.copyOf(bArr, bArr.length);
        y45.i(t2, "copyOf(this, size)");
        return t2;
    }

    public final Map<Preferences.Key<?>, Object> getPreferencesMap$datastore_preferences_core_release() {
        return this.preferencesMap;
    }

    public int hashCode() {
        Iterator<T> it = this.preferencesMap.entrySet().iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            iHashCode += value instanceof byte[] ? Arrays.hashCode((byte[]) value) : value.hashCode();
        }
        return iHashCode;
    }

    public final void minusAssign(Preferences.Key<?> key) {
        y45.j(key, "key");
        checkNotFrozen$datastore_preferences_core_release();
        remove(key);
    }

    public final void plusAssign(Preferences prefs) {
        y45.j(prefs, "prefs");
        checkNotFrozen$datastore_preferences_core_release();
        this.preferencesMap.putAll(prefs.asMap());
    }

    public final void putAll(Preferences.Pair<?>... pairs) {
        y45.j(pairs, "pairs");
        checkNotFrozen$datastore_preferences_core_release();
        for (Preferences.Pair<?> pair : pairs) {
            setUnchecked$datastore_preferences_core_release(pair.getKey$datastore_preferences_core_release(), pair.getValue$datastore_preferences_core_release());
        }
    }

    public final <T> T remove(Preferences.Key<T> key) {
        y45.j(key, "key");
        checkNotFrozen$datastore_preferences_core_release();
        return (T) this.preferencesMap.remove(key);
    }

    public final <T> void set(Preferences.Key<T> key, T value) {
        y45.j(key, "key");
        setUnchecked$datastore_preferences_core_release(key, value);
    }

    public final void setUnchecked$datastore_preferences_core_release(Preferences.Key<?> key, Object value) {
        y45.j(key, "key");
        checkNotFrozen$datastore_preferences_core_release();
        if (value == null) {
            remove(key);
            return;
        }
        if (value instanceof Set) {
            this.preferencesMap.put(key, Actual_jvmAndroidKt.immutableCopyOfSet((Set) value));
            return;
        }
        if (!(value instanceof byte[])) {
            this.preferencesMap.put(key, value);
            return;
        }
        Map<Preferences.Key<?>, Object> map = this.preferencesMap;
        byte[] bArr = (byte[]) value;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        y45.i(bArrCopyOf, "copyOf(this, size)");
        map.put(key, bArrCopyOf);
    }

    public String toString() {
        return i81.y0(this.preferencesMap.entrySet(), ",\n", "{\n", "\n}", 0, null, new e74() {
            @Override
            public final CharSequence invoke(Map.Entry<Preferences.Key<?>, Object> entry) {
                y45.j(entry, "entry");
                Object value = entry.getValue();
                return "  " + entry.getKey().getName() + " = " + (value instanceof byte[] ? hi.r0((byte[]) value, ", ", "[", "]", 0, null, null, 56, null) : String.valueOf(entry.getValue()));
            }
        }, 24, null);
    }

    public MutablePreferences(Map map, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new LinkedHashMap() : map, (i & 2) != 0 ? true : z);
    }

    public final void plusAssign(Preferences.Pair<?> pair) {
        y45.j(pair, "pair");
        checkNotFrozen$datastore_preferences_core_release();
        putAll(pair);
    }

    public MutablePreferences(Map<Preferences.Key<?>, Object> map, boolean z) {
        y45.j(map, "preferencesMap");
        this.preferencesMap = map;
        this.frozen = new AtomicBoolean(z);
    }
}
