package kotlinx.serialization.json;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import com.transsion.livecaption.constant.ICode;
import defpackage.e74;
import defpackage.ef5;
import defpackage.i81;
import defpackage.jb5;
import defpackage.ld9;
import defpackage.qe5;
import defpackage.y45;
import defpackage.zz9;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.StringSubstitutor;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\u0010&\n\u0002\b\u0007\n\u0002\u0010\u001e\n\u0002\b\u0006\b\u0007\u0018\u0000 )2\u00020\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0002:\u0001*B\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0003H\u0096\u0001¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0001H\u0096\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0007\u001a\u00020\u0003H\u0096\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\bH\u0096\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0096\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR \u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u001bR&\u0010 \u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u001d0\u001c8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00030\u001c8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b!\u0010\u001fR\u0014\u0010$\u001a\u00020\u00168\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b#\u0010\u0018R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00010%8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u0006+"}, d2 = {"Lkotlinx/serialization/json/JsonObject;", "Lkotlinx/serialization/json/b;", "", "", ICode.CALL.CALL_KEY_CONTENT, MethodDecl.initName, "(Ljava/util/Map;)V", "key", "", "b", "(Ljava/lang/String;)Z", ES6Iterator.VALUE_PROPERTY, "c", "(Lkotlinx/serialization/json/b;)Z", "f", "(Ljava/lang/String;)Lkotlinx/serialization/json/b;", "isEmpty", "()Z", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "()Ljava/lang/String;", "Ljava/util/Map;", "", "", "k", "()Ljava/util/Set;", TranSearchIndexablesContract.TranRawData.COLUMN_ENTRIES, CmcdData.STREAM_TYPE_LIVE, "keys", CmcdData.OBJECT_TYPE_MANIFEST, PlayAudioData.TAG_SIZE, "", "n", "()Ljava/util/Collection;", "values", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "kotlinx-serialization-json"}, k = 1, mv = {1, 8, 0}, xi = 48)
@ld9(with = jb5.class)
public final class JsonObject extends b implements Map<String, b>, qe5 {

    public static final Companion INSTANCE = new Companion(null);

    public final Map content;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ef5 serializer() {
            return jb5.a;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonObject(Map map) {
        super(null);
        y45.j(map, ICode.CALL.CALL_KEY_CONTENT);
        this.content = map;
    }

    public boolean b(String key) {
        y45.j(key, "key");
        return this.content.containsKey(key);
    }

    public boolean c(b value) {
        y45.j(value, ES6Iterator.VALUE_PROPERTY);
        return this.content.containsValue(value);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public b compute(String str, BiFunction<? super String, ? super b, ? extends b> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public b computeIfAbsent(String str, Function<? super String, ? extends b> function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public b computeIfPresent(String str, BiFunction<? super String, ? super b, ? extends b> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return b((String) obj);
        }
        return false;
    }

    @Override
    public final boolean containsValue(Object obj) {
        if (obj instanceof b) {
            return c((b) obj);
        }
        return false;
    }

    @Override
    public final Set<Map.Entry<String, b>> entrySet() {
        return k();
    }

    @Override
    public boolean equals(Object other) {
        return y45.e(this.content, other);
    }

    public b f(String key) {
        y45.j(key, "key");
        return (b) this.content.get(key);
    }

    @Override
    public final b get(Object obj) {
        if (obj instanceof String) {
            return f((String) obj);
        }
        return null;
    }

    @Override
    public int hashCode() {
        return this.content.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return this.content.isEmpty();
    }

    public Set k() {
        return this.content.entrySet();
    }

    @Override
    public final Set<String> keySet() {
        return l();
    }

    public Set l() {
        return this.content.keySet();
    }

    public int m() {
        return this.content.size();
    }

    @Override
    public b merge(String str, b bVar, BiFunction<? super b, ? super b, ? extends b> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public Collection n() {
        return this.content.values();
    }

    @Override
    public b remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public b put(String str, b bVar) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void putAll(Map<? extends String, ? extends b> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public b putIfAbsent(String str, b bVar) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public b replace(String str, b bVar) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void replaceAll(BiFunction<? super String, ? super b, ? extends b> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return m();
    }

    public String toString() {
        return i81.y0(this.content.entrySet(), StringUtils.COMMA, "{", StringSubstitutor.DEFAULT_VAR_END, 0, null, new e74() {
            @Override
            public final CharSequence invoke(Map.Entry<String, ? extends b> entry) {
                y45.j(entry, "<name for destructuring parameter 0>");
                String key = entry.getKey();
                b value = entry.getValue();
                StringBuilder sb = new StringBuilder();
                zz9.c(sb, key);
                sb.append(':');
                sb.append(value);
                String string = sb.toString();
                y45.i(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
        }, 24, null);
    }

    @Override
    public final Collection<b> values() {
        return n();
    }

    @Override
    public boolean replace(String str, b bVar, b bVar2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
