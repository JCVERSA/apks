package kotlin.collections.builders;

import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.g3;
import defpackage.ol5;
import defpackage.qe5;
import defpackage.ue5;
import defpackage.wn8;
import defpackage.y45;
import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.StringSubstitutor;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000¬\u0001\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010&\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0010'\n\u0002\b\f\b\u0000\u0018\u0000 \u0093\u0001*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u00060\u0004j\u0002`\u0005:\f\u0094\u0001\u0095\u0001\u0096\u0001\u0097\u0001\u0098\u0001\u0099\u0001BG\b\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010B\t\b\u0016¢\u0006\u0004\b\u000f\u0010\u0011B\u0011\b\u0016\u0012\u0006\u0010\u0012\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0018\u0010\u0011J\u0017\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001a\u0010\u0013J\u0017\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\fH\u0002¢\u0006\u0004\b \u0010\u0013J\u0015\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006H\u0002¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020\f2\u0006\u0010#\u001a\u00028\u0000H\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010'\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u001cH\u0002¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020\u00172\u0006\u0010)\u001a\u00020\fH\u0002¢\u0006\u0004\b*\u0010\u0013J\u0017\u0010,\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020\fH\u0002¢\u0006\u0004\b,\u0010\u001eJ\u0017\u0010-\u001a\u00020\f2\u0006\u0010#\u001a\u00028\u0000H\u0002¢\u0006\u0004\b-\u0010%J\u0017\u0010/\u001a\u00020\f2\u0006\u0010.\u001a\u00028\u0001H\u0002¢\u0006\u0004\b/\u0010%J\u0017\u00101\u001a\u00020\u00172\u0006\u00100\u001a\u00020\fH\u0002¢\u0006\u0004\b1\u0010\u0013J\u0017\u00103\u001a\u00020\u00172\u0006\u00102\u001a\u00020\fH\u0002¢\u0006\u0004\b3\u0010\u0013J\u001f\u00106\u001a\u00020\u001c2\u000e\u00105\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u000304H\u0002¢\u0006\u0004\b6\u00107J#\u0010:\u001a\u00020\u001c2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000108H\u0002¢\u0006\u0004\b:\u0010;J)\u0010>\u001a\u00020\u001c2\u0018\u0010=\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001080<H\u0002¢\u0006\u0004\b>\u0010?J\u0019\u0010@\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000104¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\u001cH\u0016¢\u0006\u0004\bB\u0010CJ\u0017\u0010D\u001a\u00020\u001c2\u0006\u0010#\u001a\u00028\u0000H\u0016¢\u0006\u0004\bD\u0010EJ\u0017\u0010F\u001a\u00020\u001c2\u0006\u0010.\u001a\u00028\u0001H\u0016¢\u0006\u0004\bF\u0010EJ\u001a\u0010G\u001a\u0004\u0018\u00018\u00012\u0006\u0010#\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\bG\u0010HJ!\u0010I\u001a\u0004\u0018\u00018\u00012\u0006\u0010#\u001a\u00028\u00002\u0006\u0010.\u001a\u00028\u0001H\u0016¢\u0006\u0004\bI\u0010JJ%\u0010K\u001a\u00020\u00172\u0014\u0010=\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000104H\u0016¢\u0006\u0004\bK\u0010LJ\u0019\u0010M\u001a\u0004\u0018\u00018\u00012\u0006\u0010#\u001a\u00028\u0000H\u0016¢\u0006\u0004\bM\u0010HJ\u000f\u0010N\u001a\u00020\u0017H\u0016¢\u0006\u0004\bN\u0010\u0011J\u001a\u0010O\u001a\u00020\u001c2\b\u00105\u001a\u0004\u0018\u00010\u0014H\u0096\u0002¢\u0006\u0004\bO\u0010EJ\u000f\u0010P\u001a\u00020\fH\u0016¢\u0006\u0004\bP\u0010QJ\u000f\u0010S\u001a\u00020RH\u0016¢\u0006\u0004\bS\u0010TJ\u000f\u0010V\u001a\u00020\u0017H\u0000¢\u0006\u0004\bU\u0010\u0011J\u0017\u0010X\u001a\u00020\f2\u0006\u0010#\u001a\u00028\u0000H\u0000¢\u0006\u0004\bW\u0010%J\u0017\u0010Z\u001a\u00020\u001c2\u0006\u0010#\u001a\u00028\u0000H\u0000¢\u0006\u0004\bY\u0010EJ#\u0010\\\u001a\u00020\u001c2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000108H\u0000¢\u0006\u0004\b[\u0010;J\u001b\u0010_\u001a\u00020\u001c2\n\u0010]\u001a\u0006\u0012\u0002\b\u00030<H\u0000¢\u0006\u0004\b^\u0010?J#\u0010a\u001a\u00020\u001c2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000108H\u0000¢\u0006\u0004\b`\u0010;J\u0017\u0010d\u001a\u00020\u001c2\u0006\u0010b\u001a\u00028\u0001H\u0000¢\u0006\u0004\bc\u0010EJ\u001b\u0010h\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010eH\u0000¢\u0006\u0004\bf\u0010gJ\u001b\u0010l\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010iH\u0000¢\u0006\u0004\bj\u0010kJ\u001b\u0010p\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010mH\u0000¢\u0006\u0004\bn\u0010oR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010qR\u001e\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010qR\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010rR\u0016\u0010\u000b\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010rR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010sR\u0016\u0010\u000e\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010sR\u0016\u0010t\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010sR\u0016\u0010u\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010sR$\u0010v\u001a\u00020\f2\u0006\u0010.\u001a\u00020\f8\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\bv\u0010s\u001a\u0004\bw\u0010QR\u001e\u0010y\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010x8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR\u001e\u0010|\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R%\u0010\u007f\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010~8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R(\u0010\u0081\u0001\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020\u001c8\u0000@BX\u0080\u000e¢\u0006\u000f\n\u0006\b\u0081\u0001\u0010\u0082\u0001\u001a\u0005\b\u0083\u0001\u0010CR\u0016\u0010\u0085\u0001\u001a\u00020\f8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0084\u0001\u0010QR\u001e\u0010\u0089\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0086\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001e\u0010\u008d\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u008a\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001R+\u0010\u0090\u0001\u001a\u0016\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u008e\u00010\u0086\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u008f\u0001\u0010\u0088\u0001R\u0016\u0010\u0092\u0001\u001a\u00020\f8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u0091\u0001\u0010Q¨\u0006\u009a\u0001"}, d2 = {"Lkotlin/collections/builders/MapBuilder;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "keysArray", "valuesArray", "", "presenceArray", "hashArray", "", "maxProbeDistance", SessionDescription.ATTR_LENGTH, MethodDecl.initName, "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V", "()V", "initialCapacity", "(I)V", "", "writeReplace", "()Ljava/lang/Object;", "Lzfb;", "registerModification", "n", "ensureExtraCapacity", "extraCapacity", "", "shouldCompact", "(I)Z", "minCapacity", "ensureCapacity", "allocateValuesArray", "()[Ljava/lang/Object;", "key", "hash", "(Ljava/lang/Object;)I", "updateHashArray", "compact", "(Z)V", "newHashSize", "rehash", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "putRehash", "findKey", ES6Iterator.VALUE_PROPERTY, "findValue", "index", "removeEntryAt", "removedHash", "removeHashAt", "", "other", "contentEquals", "(Ljava/util/Map;)Z", "", "entry", "putEntry", "(Ljava/util/Map$Entry;)Z", "", "from", "putAllEntries", "(Ljava/util/Collection;)Z", "build", "()Ljava/util/Map;", "isEmpty", "()Z", "containsKey", "(Ljava/lang/Object;)Z", "containsValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "putAll", "(Ljava/util/Map;)V", "remove", "clear", "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "checkIsMutable$kotlin_stdlib", "checkIsMutable", "addKey$kotlin_stdlib", "addKey", "removeKey$kotlin_stdlib", "removeKey", "containsEntry$kotlin_stdlib", "containsEntry", CmcdData.OBJECT_TYPE_MANIFEST, "containsAllEntries$kotlin_stdlib", "containsAllEntries", "removeEntry$kotlin_stdlib", "removeEntry", "element", "removeValue$kotlin_stdlib", "removeValue", "Lkotlin/collections/builders/MapBuilder$e;", "keysIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$e;", "keysIterator", "Lkotlin/collections/builders/MapBuilder$f;", "valuesIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$f;", "valuesIterator", "Lkotlin/collections/builders/MapBuilder$b;", "entriesIterator$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder$b;", "entriesIterator", "[Ljava/lang/Object;", "[I", "I", "hashShift", "modCount", PlayAudioData.TAG_SIZE, "getSize", "Lkotlin/collections/builders/b;", "keysView", "Lkotlin/collections/builders/b;", "Lkotlin/collections/builders/c;", "valuesView", "Lkotlin/collections/builders/c;", "Lkotlin/collections/builders/a;", "entriesView", "Lkotlin/collections/builders/a;", "isReadOnly", "Z", "isReadOnly$kotlin_stdlib", "getHashSize", "hashSize", "", "getKeys", "()Ljava/util/Set;", "keys", "", "getValues", "()Ljava/util/Collection;", "values", "", "getEntries", TranSearchIndexablesContract.TranRawData.COLUMN_ENTRIES, "getCapacity$kotlin_stdlib", "capacity", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "d", "e", "f", "b", "c", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MapBuilder<K, V> implements Map<K, V>, Serializable, ue5 {

    public static final Companion INSTANCE = new Companion(null);
    private static final MapBuilder Empty;
    private static final int INITIAL_CAPACITY = 8;
    private static final int INITIAL_MAX_PROBE_DISTANCE = 2;
    private static final int MAGIC = -1640531527;
    private static final int TOMBSTONE = -1;
    private a entriesView;
    private int[] hashArray;
    private int hashShift;
    private boolean isReadOnly;
    private K[] keysArray;
    private kotlin.collections.builders.b keysView;
    private int length;
    private int maxProbeDistance;
    private int modCount;
    private int[] presenceArray;
    private int size;
    private V[] valuesArray;
    private kotlin.collections.builders.c valuesView;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int c(int i) {
            return Integer.highestOneBit(wn8.d(i, 1) * 3);
        }

        public final int d(int i) {
            return Integer.numberOfLeadingZeros(i) + 1;
        }

        public final MapBuilder e() {
            return MapBuilder.Empty;
        }

        public Companion() {
        }
    }

    public static final class b extends d implements Iterator, qe5 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(MapBuilder mapBuilder) {
            super(mapBuilder);
            y45.j(mapBuilder, "map");
        }

        @Override
        public c next() {
            b();
            if (c() >= e().length) {
                throw new NoSuchElementException();
            }
            int iC = c();
            g(iC + 1);
            k(iC);
            c cVar = new c(e(), d());
            f();
            return cVar;
        }

        public final void m(StringBuilder sb) {
            y45.j(sb, "sb");
            if (c() >= e().length) {
                throw new NoSuchElementException();
            }
            int iC = c();
            g(iC + 1);
            k(iC);
            Object obj = e().keysArray[d()];
            if (obj == e()) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = e().valuesArray;
            y45.g(objArr);
            Object obj2 = objArr[d()];
            if (obj2 == e()) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            f();
        }

        public final int n() {
            if (c() >= e().length) {
                throw new NoSuchElementException();
            }
            int iC = c();
            g(iC + 1);
            k(iC);
            Object obj = e().keysArray[d()];
            int iHashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = e().valuesArray;
            y45.g(objArr);
            Object obj2 = objArr[d()];
            int iHashCode2 = iHashCode ^ (obj2 != null ? obj2.hashCode() : 0);
            f();
            return iHashCode2;
        }
    }

    public static final class c implements Map.Entry, ue5.a {
        public final MapBuilder b;
        public final int c;
        public final int d;

        public c(MapBuilder mapBuilder, int i) {
            y45.j(mapBuilder, "map");
            this.b = mapBuilder;
            this.c = i;
            this.d = mapBuilder.modCount;
        }

        private final void b() {
            if (this.b.modCount != this.d) {
                throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
            }
        }

        @Override
        public boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (y45.e(entry.getKey(), getKey()) && y45.e(entry.getValue(), getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public Object getKey() {
            b();
            return this.b.keysArray[this.c];
        }

        @Override
        public Object getValue() {
            b();
            Object[] objArr = this.b.valuesArray;
            y45.g(objArr);
            return objArr[this.c];
        }

        @Override
        public int hashCode() {
            Object key = getKey();
            int iHashCode = key != null ? key.hashCode() : 0;
            Object value = getValue();
            return iHashCode ^ (value != null ? value.hashCode() : 0);
        }

        @Override
        public Object setValue(Object obj) {
            b();
            this.b.checkIsMutable$kotlin_stdlib();
            Object[] objArrAllocateValuesArray = this.b.allocateValuesArray();
            int i = this.c;
            Object obj2 = objArrAllocateValuesArray[i];
            objArrAllocateValuesArray[i] = obj;
            return obj2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }
    }

    public static class d {
        public final MapBuilder b;
        public int c;
        public int d;
        public int e;

        public d(MapBuilder mapBuilder) {
            y45.j(mapBuilder, "map");
            this.b = mapBuilder;
            this.d = -1;
            this.e = mapBuilder.modCount;
            f();
        }

        public final void b() {
            if (this.b.modCount != this.e) {
                throw new ConcurrentModificationException();
            }
        }

        public final int c() {
            return this.c;
        }

        public final int d() {
            return this.d;
        }

        public final MapBuilder e() {
            return this.b;
        }

        public final void f() {
            while (this.c < this.b.length) {
                int[] iArr = this.b.presenceArray;
                int i = this.c;
                if (iArr[i] >= 0) {
                    return;
                } else {
                    this.c = i + 1;
                }
            }
        }

        public final void g(int i) {
            this.c = i;
        }

        public final boolean hasNext() {
            return this.c < this.b.length;
        }

        public final void k(int i) {
            this.d = i;
        }

        public final void remove() {
            b();
            if (this.d == -1) {
                throw new IllegalStateException("Call next() before removing element from the iterator.");
            }
            this.b.checkIsMutable$kotlin_stdlib();
            this.b.removeEntryAt(this.d);
            this.d = -1;
            this.e = this.b.modCount;
        }
    }

    public static final class e extends d implements Iterator, qe5 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(MapBuilder mapBuilder) {
            super(mapBuilder);
            y45.j(mapBuilder, "map");
        }

        @Override
        public Object next() {
            b();
            if (c() >= e().length) {
                throw new NoSuchElementException();
            }
            int iC = c();
            g(iC + 1);
            k(iC);
            Object obj = e().keysArray[d()];
            f();
            return obj;
        }
    }

    public static final class f extends d implements Iterator, qe5 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(MapBuilder mapBuilder) {
            super(mapBuilder);
            y45.j(mapBuilder, "map");
        }

        @Override
        public Object next() {
            b();
            if (c() >= e().length) {
                throw new NoSuchElementException();
            }
            int iC = c();
            g(iC + 1);
            k(iC);
            Object[] objArr = e().valuesArray;
            y45.g(objArr);
            Object obj = objArr[d()];
            f();
            return obj;
        }
    }

    static {
        MapBuilder mapBuilder = new MapBuilder(0);
        mapBuilder.isReadOnly = true;
        Empty = mapBuilder;
    }

    private MapBuilder(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i, int i2) {
        this.keysArray = kArr;
        this.valuesArray = vArr;
        this.presenceArray = iArr;
        this.hashArray = iArr2;
        this.maxProbeDistance = i;
        this.length = i2;
        this.hashShift = INSTANCE.d(getHashSize());
    }

    public final V[] allocateValuesArray() {
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) ol5.d(getCapacity$kotlin_stdlib());
        this.valuesArray = vArr2;
        return vArr2;
    }

    private final void compact(boolean updateHashArray) {
        int i;
        V[] vArr = this.valuesArray;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.length;
            if (i2 >= i) {
                break;
            }
            int[] iArr = this.presenceArray;
            int i4 = iArr[i2];
            if (i4 >= 0) {
                K[] kArr = this.keysArray;
                kArr[i3] = kArr[i2];
                if (vArr != null) {
                    vArr[i3] = vArr[i2];
                }
                if (updateHashArray) {
                    iArr[i3] = i4;
                    this.hashArray[i4] = i3 + 1;
                }
                i3++;
            }
            i2++;
        }
        ol5.g(this.keysArray, i3, i);
        if (vArr != null) {
            ol5.g(vArr, i3, this.length);
        }
        this.length = i3;
    }

    private final boolean contentEquals(Map<?, ?> other) {
        return size() == other.size() && containsAllEntries$kotlin_stdlib(other.entrySet());
    }

    private final void ensureCapacity(int minCapacity) {
        if (minCapacity < 0) {
            throw new OutOfMemoryError();
        }
        if (minCapacity > getCapacity$kotlin_stdlib()) {
            int iE = g3.Companion.e(getCapacity$kotlin_stdlib(), minCapacity);
            this.keysArray = (K[]) ol5.e(this.keysArray, iE);
            V[] vArr = this.valuesArray;
            this.valuesArray = vArr != null ? (V[]) ol5.e(vArr, iE) : null;
            int[] iArrCopyOf = Arrays.copyOf(this.presenceArray, iE);
            y45.i(iArrCopyOf, "copyOf(...)");
            this.presenceArray = iArrCopyOf;
            int iC = INSTANCE.c(iE);
            if (iC > getHashSize()) {
                rehash(iC);
            }
        }
    }

    private final void ensureExtraCapacity(int n) {
        if (shouldCompact(n)) {
            compact(true);
        } else {
            ensureCapacity(this.length + n);
        }
    }

    private final int findKey(K key) {
        int iHash = hash(key);
        int i = this.maxProbeDistance;
        while (true) {
            int i2 = this.hashArray[iHash];
            if (i2 == 0) {
                return -1;
            }
            if (i2 > 0) {
                int i3 = i2 - 1;
                if (y45.e(this.keysArray[i3], key)) {
                    return i3;
                }
            }
            i--;
            if (i < 0) {
                return -1;
            }
            iHash = iHash == 0 ? getHashSize() - 1 : iHash - 1;
        }
    }

    private final int findValue(V value) {
        int i = this.length;
        while (true) {
            i--;
            if (i < 0) {
                return -1;
            }
            if (this.presenceArray[i] >= 0) {
                V[] vArr = this.valuesArray;
                y45.g(vArr);
                if (y45.e(vArr[i], value)) {
                    return i;
                }
            }
        }
    }

    private final int getHashSize() {
        return this.hashArray.length;
    }

    private final int hash(K key) {
        return ((key != null ? key.hashCode() : 0) * MAGIC) >>> this.hashShift;
    }

    private final boolean putAllEntries(Collection<? extends Map.Entry<? extends K, ? extends V>> from) {
        boolean z = false;
        if (from.isEmpty()) {
            return false;
        }
        ensureExtraCapacity(from.size());
        Iterator<? extends Map.Entry<? extends K, ? extends V>> it = from.iterator();
        while (it.hasNext()) {
            if (putEntry(it.next())) {
                z = true;
            }
        }
        return z;
    }

    private final boolean putEntry(Map.Entry<? extends K, ? extends V> entry) {
        int iAddKey$kotlin_stdlib = addKey$kotlin_stdlib(entry.getKey());
        V[] vArrAllocateValuesArray = allocateValuesArray();
        if (iAddKey$kotlin_stdlib >= 0) {
            vArrAllocateValuesArray[iAddKey$kotlin_stdlib] = entry.getValue();
            return true;
        }
        int i = (-iAddKey$kotlin_stdlib) - 1;
        if (y45.e(entry.getValue(), vArrAllocateValuesArray[i])) {
            return false;
        }
        vArrAllocateValuesArray[i] = entry.getValue();
        return true;
    }

    private final boolean putRehash(int i) {
        int iHash = hash(this.keysArray[i]);
        int i2 = this.maxProbeDistance;
        while (true) {
            int[] iArr = this.hashArray;
            if (iArr[iHash] == 0) {
                iArr[iHash] = i + 1;
                this.presenceArray[i] = iHash;
                return true;
            }
            i2--;
            if (i2 < 0) {
                return false;
            }
            iHash = iHash == 0 ? getHashSize() - 1 : iHash - 1;
        }
    }

    private final void registerModification() {
        this.modCount++;
    }

    private final void rehash(int newHashSize) {
        registerModification();
        int i = 0;
        if (this.length > size()) {
            compact(false);
        }
        this.hashArray = new int[newHashSize];
        this.hashShift = INSTANCE.d(newHashSize);
        while (i < this.length) {
            int i2 = i + 1;
            if (!putRehash(i)) {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
            i = i2;
        }
    }

    public final void removeEntryAt(int index) {
        ol5.f(this.keysArray, index);
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            ol5.f(vArr, index);
        }
        removeHashAt(this.presenceArray[index]);
        this.presenceArray[index] = -1;
        this.size = size() - 1;
        registerModification();
    }

    private final void removeHashAt(int removedHash) {
        int iG = wn8.g(this.maxProbeDistance * 2, getHashSize() / 2);
        int i = 0;
        int i2 = removedHash;
        do {
            removedHash = removedHash == 0 ? getHashSize() - 1 : removedHash - 1;
            i++;
            if (i > this.maxProbeDistance) {
                this.hashArray[i2] = 0;
                return;
            }
            int[] iArr = this.hashArray;
            int i3 = iArr[removedHash];
            if (i3 == 0) {
                iArr[i2] = 0;
                return;
            }
            if (i3 < 0) {
                iArr[i2] = -1;
            } else {
                int i4 = i3 - 1;
                if (((hash(this.keysArray[i4]) - removedHash) & (getHashSize() - 1)) >= i) {
                    this.hashArray[i2] = i3;
                    this.presenceArray[i4] = i2;
                }
                iG--;
            }
            i2 = removedHash;
            i = 0;
            iG--;
        } while (iG >= 0);
        this.hashArray[i2] = -1;
    }

    private final boolean shouldCompact(int extraCapacity) {
        int capacity$kotlin_stdlib = getCapacity$kotlin_stdlib();
        int i = this.length;
        int i2 = capacity$kotlin_stdlib - i;
        int size = i - size();
        return i2 < extraCapacity && i2 + size >= extraCapacity && size >= getCapacity$kotlin_stdlib() / 4;
    }

    private final Object writeReplace() throws NotSerializableException {
        if (this.isReadOnly) {
            return new SerializedMap(this);
        }
        throw new NotSerializableException("The map cannot be serialized while it is being built.");
    }

    public final int addKey$kotlin_stdlib(K key) {
        checkIsMutable$kotlin_stdlib();
        while (true) {
            int iHash = hash(key);
            int iG = wn8.g(this.maxProbeDistance * 2, getHashSize() / 2);
            int i = 0;
            while (true) {
                int i2 = this.hashArray[iHash];
                if (i2 <= 0) {
                    if (this.length >= getCapacity$kotlin_stdlib()) {
                        ensureExtraCapacity(1);
                        break;
                    }
                    int i3 = this.length;
                    int i4 = i3 + 1;
                    this.length = i4;
                    this.keysArray[i3] = key;
                    this.presenceArray[i3] = iHash;
                    this.hashArray[iHash] = i4;
                    this.size = size() + 1;
                    registerModification();
                    if (i > this.maxProbeDistance) {
                        this.maxProbeDistance = i;
                    }
                    return i3;
                }
                if (y45.e(this.keysArray[i2 - 1], key)) {
                    return -i2;
                }
                i++;
                if (i > iG) {
                    rehash(getHashSize() * 2);
                    break;
                }
                iHash = iHash == 0 ? getHashSize() - 1 : iHash - 1;
            }
        }
    }

    public final Map<K, V> build() {
        checkIsMutable$kotlin_stdlib();
        this.isReadOnly = true;
        if (size() > 0) {
            return this;
        }
        MapBuilder mapBuilder = Empty;
        y45.h(mapBuilder, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>");
        return mapBuilder;
    }

    public final void checkIsMutable$kotlin_stdlib() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public void clear() {
        checkIsMutable$kotlin_stdlib();
        int i = this.length - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.presenceArray;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.hashArray[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        ol5.g(this.keysArray, 0, this.length);
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            ol5.g(vArr, 0, this.length);
        }
        this.size = 0;
        this.length = 0;
        registerModification();
    }

    public final boolean containsAllEntries$kotlin_stdlib(Collection<?> m) {
        y45.j(m, CmcdData.OBJECT_TYPE_MANIFEST);
        for (Object obj : m) {
            if (obj != null) {
                try {
                    if (!containsEntry$kotlin_stdlib((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean containsEntry$kotlin_stdlib(Map.Entry<? extends K, ? extends V> entry) {
        y45.j(entry, "entry");
        int iFindKey = findKey(entry.getKey());
        if (iFindKey < 0) {
            return false;
        }
        V[] vArr = this.valuesArray;
        y45.g(vArr);
        return y45.e(vArr[iFindKey], entry.getValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean containsKey(Object key) {
        return findKey(key) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean containsValue(Object value) {
        return findValue(value) >= 0;
    }

    public final b entriesIterator$kotlin_stdlib() {
        return new b(this);
    }

    @Override
    public final Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override
    public boolean equals(Object other) {
        return other == this || ((other instanceof Map) && contentEquals((Map) other));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public V get(Object key) {
        int iFindKey = findKey(key);
        if (iFindKey < 0) {
            return null;
        }
        V[] vArr = this.valuesArray;
        y45.g(vArr);
        return vArr[iFindKey];
    }

    public final int getCapacity$kotlin_stdlib() {
        return this.keysArray.length;
    }

    public Set<Map.Entry<K, V>> getEntries() {
        a aVar = this.entriesView;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(this);
        this.entriesView = aVar2;
        return aVar2;
    }

    public Set<K> getKeys() {
        kotlin.collections.builders.b bVar = this.keysView;
        if (bVar != null) {
            return bVar;
        }
        kotlin.collections.builders.b bVar2 = new kotlin.collections.builders.b(this);
        this.keysView = bVar2;
        return bVar2;
    }

    public int getSize() {
        return this.size;
    }

    public Collection<V> getValues() {
        kotlin.collections.builders.c cVar = this.valuesView;
        if (cVar != null) {
            return cVar;
        }
        kotlin.collections.builders.c cVar2 = new kotlin.collections.builders.c(this);
        this.valuesView = cVar2;
        return cVar2;
    }

    @Override
    public int hashCode() {
        b bVarEntriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int iN = 0;
        while (bVarEntriesIterator$kotlin_stdlib.hasNext()) {
            iN += bVarEntriesIterator$kotlin_stdlib.n();
        }
        return iN;
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public final boolean getIsReadOnly() {
        return this.isReadOnly;
    }

    @Override
    public final Set<K> keySet() {
        return getKeys();
    }

    public final e keysIterator$kotlin_stdlib() {
        return new e(this);
    }

    @Override
    public V put(K key, V value) {
        checkIsMutable$kotlin_stdlib();
        int iAddKey$kotlin_stdlib = addKey$kotlin_stdlib(key);
        V[] vArrAllocateValuesArray = allocateValuesArray();
        if (iAddKey$kotlin_stdlib >= 0) {
            vArrAllocateValuesArray[iAddKey$kotlin_stdlib] = value;
            return null;
        }
        int i = (-iAddKey$kotlin_stdlib) - 1;
        V v = vArrAllocateValuesArray[i];
        vArrAllocateValuesArray[i] = value;
        return v;
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> from) {
        y45.j(from, "from");
        checkIsMutable$kotlin_stdlib();
        putAllEntries(from.entrySet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public V remove(Object key) {
        checkIsMutable$kotlin_stdlib();
        int iFindKey = findKey(key);
        if (iFindKey < 0) {
            return null;
        }
        V[] vArr = this.valuesArray;
        y45.g(vArr);
        V v = vArr[iFindKey];
        removeEntryAt(iFindKey);
        return v;
    }

    public final boolean removeEntry$kotlin_stdlib(Map.Entry<? extends K, ? extends V> entry) {
        y45.j(entry, "entry");
        checkIsMutable$kotlin_stdlib();
        int iFindKey = findKey(entry.getKey());
        if (iFindKey < 0) {
            return false;
        }
        V[] vArr = this.valuesArray;
        y45.g(vArr);
        if (!y45.e(vArr[iFindKey], entry.getValue())) {
            return false;
        }
        removeEntryAt(iFindKey);
        return true;
    }

    public final boolean removeKey$kotlin_stdlib(K key) {
        checkIsMutable$kotlin_stdlib();
        int iFindKey = findKey(key);
        if (iFindKey < 0) {
            return false;
        }
        removeEntryAt(iFindKey);
        return true;
    }

    public final boolean removeValue$kotlin_stdlib(V element) {
        checkIsMutable$kotlin_stdlib();
        int iFindValue = findValue(element);
        if (iFindValue < 0) {
            return false;
        }
        removeEntryAt(iFindValue);
        return true;
    }

    @Override
    public final int size() {
        return getSize();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((size() * 3) + 2);
        sb.append("{");
        b bVarEntriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int i = 0;
        while (bVarEntriesIterator$kotlin_stdlib.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            bVarEntriesIterator$kotlin_stdlib.m(sb);
            i++;
        }
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }

    @Override
    public final Collection<V> values() {
        return getValues();
    }

    public final f valuesIterator$kotlin_stdlib() {
        return new f(this);
    }

    public MapBuilder() {
        this(8);
    }

    public MapBuilder(int i) {
        this(ol5.d(i), null, new int[i], new int[INSTANCE.c(i)], 2, 0);
    }
}
