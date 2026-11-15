package kotlinx.serialization.json;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.serialization.json.internal.o0;

public final class JsonObject extends h implements Map, KMappedMarker {

    public static final a f65260c = new a(null);

    private final Map f65261b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonObject(Map content) {
        super(null);
        Intrinsics.h(content, "content");
        this.f65261b = content;
    }

    public boolean a(String key) {
        Intrinsics.h(key, "key");
        return this.f65261b.containsKey(key);
    }

    public boolean c(h value) {
        Intrinsics.h(value, "value");
        return this.f65261b.containsValue(value);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object compute(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object computeIfAbsent(Object obj, Function function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object computeIfPresent(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return a((String) obj);
        }
        return false;
    }

    @Override
    public final boolean containsValue(Object obj) {
        if (obj instanceof h) {
            return c((h) obj);
        }
        return false;
    }

    public h e(String key) {
        Intrinsics.h(key, "key");
        return (h) this.f65261b.get(key);
    }

    @Override
    public final Set entrySet() {
        return f();
    }

    @Override
    public boolean equals(Object obj) {
        return Intrinsics.c(this.f65261b, obj);
    }

    public Set f() {
        return this.f65261b.entrySet();
    }

    @Override
    public final Object get(Object obj) {
        if (obj instanceof String) {
            return e((String) obj);
        }
        return null;
    }

    @Override
    public int hashCode() {
        return this.f65261b.hashCode();
    }

    public Set i() {
        return this.f65261b.keySet();
    }

    @Override
    public boolean isEmpty() {
        return this.f65261b.isEmpty();
    }

    public int j() {
        return this.f65261b.size();
    }

    @Override
    public final Set keySet() {
        return i();
    }

    public Collection l() {
        return this.f65261b.values();
    }

    @Override
    public h remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object merge(Object obj, Object obj2, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object putIfAbsent(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object replace(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void replaceAll(BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return j();
    }

    public String toString() {
        return CollectionsKt.s0(this.f65261b.entrySet(), ",", "{", "}", 0, null, new Function1<Map.Entry<? extends String, ? extends h>, CharSequence>() {
            @Override
            public final CharSequence invoke(Map.Entry<String, ? extends h> entry) {
                Intrinsics.h(entry, "<name for destructuring parameter 0>");
                String key = entry.getKey();
                h value = entry.getValue();
                StringBuilder sb2 = new StringBuilder();
                o0.c(sb2, key);
                sb2.append(':');
                sb2.append(value);
                String string = sb2.toString();
                Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
        }, 24, null);
    }

    @Override
    public final Collection values() {
        return l();
    }

    @Override
    public boolean replace(Object obj, Object obj2, Object obj3) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
