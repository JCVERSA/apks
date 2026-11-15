package androidx.collection;

import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.ccb;
import defpackage.r71;
import defpackage.y45;
import defpackage.ze5;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;

@Metadata(d1 = {"\u00005\n\u0000\n\u0002\u0010#\n\u0002\u0010'\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010)\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00020\u0001J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\"\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ)\u0010\u000e\u001a\u00020\u00032\u0018\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ$\u0010\u0011\u001a\u00020\u00032\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J)\u0010\u0013\u001a\u00020\u00032\u0018\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00020\fH\u0016¢\u0006\u0004\b\u0013\u0010\u000fJ#\u0010\u0014\u001a\u00020\u00032\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0012J)\u0010\u0015\u001a\u00020\u00032\u0018\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00020\fH\u0016¢\u0006\u0004\b\u0015\u0010\u000fJ)\u0010\u0016\u001a\u00020\u00032\u0018\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00020\fH\u0016¢\u0006\u0004\b\u0016\u0010\u000fJ#\u0010\u0017\u001a\u00020\u00032\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0016¢\u0006\u0004\b\u0017\u0010\u0012R\u0014\u0010\u001b\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"androidx/collection/MutableScatterMap$MutableMapWrapper$entries$1", "", "", "", "isEmpty", "()Z", "", "iterator", "()Ljava/util/Iterator;", "Lzfb;", "clear", "()V", "", "elements", "containsAll", "(Ljava/util/Collection;)Z", "element", "contains", "(Ljava/util/Map$Entry;)Z", "addAll", "add", "retainAll", "removeAll", "remove", "", "getSize", "()I", PlayAudioData.TAG_SIZE, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MutableScatterMap$MutableMapWrapper$entries$1<K, V> implements Set<Map.Entry<K, V>>, ze5 {
    final MutableScatterMap<K, V> this$0;

    public MutableScatterMap$MutableMapWrapper$entries$1(MutableScatterMap<K, V> mutableScatterMap) {
        this.this$0 = mutableScatterMap;
    }

    @Override
    public boolean addAll(Collection<? extends Map.Entry<K, V>> elements) {
        y45.j(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        this.this$0.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        if (ccb.p(obj)) {
            return contains((Map.Entry) obj);
        }
        return false;
    }

    @Override
    public boolean containsAll(Collection<? extends Object> elements) {
        y45.j(elements, "elements");
        Collection<? extends Object> collection = elements;
        MutableScatterMap<K, V> mutableScatterMap = this.this$0;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!y45.e(mutableScatterMap.get((K) entry.getKey()), entry.getValue())) {
                return false;
            }
        }
        return true;
    }

    public int getSize() {
        return this.this$0._size;
    }

    @Override
    public boolean isEmpty() {
        return this.this$0.isEmpty();
    }

    @Override
    public Iterator<Map.Entry<K, V>> iterator() {
        return new MutableScatterMap$MutableMapWrapper$entries$1$iterator$1(this.this$0);
    }

    @Override
    public final boolean remove(Object obj) {
        if (ccb.p(obj)) {
            return remove((Map.Entry) obj);
        }
        return false;
    }

    @Override
    public boolean removeAll(Collection<? extends Object> elements) {
        boolean z;
        y45.j(elements, "elements");
        MutableScatterMap<K, V> mutableScatterMap = this.this$0;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            boolean z2 = false;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            Iterator<? extends Object> it = elements.iterator();
                            while (it.hasNext()) {
                                Map.Entry entry = (Map.Entry) it.next();
                                if (y45.e(entry.getKey(), mutableScatterMap.keys[i4]) && y45.e(entry.getValue(), mutableScatterMap.values[i4])) {
                                    mutableScatterMap.removeValueAt(i4);
                                    z2 = true;
                                    break;
                                }
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return z2;
                    }
                }
                if (i != length) {
                    i++;
                } else {
                    z = z2;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override
    public boolean retainAll(Collection<? extends Object> elements) {
        boolean z;
        y45.j(elements, "elements");
        MutableScatterMap<K, V> mutableScatterMap = this.this$0;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            boolean z2 = false;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            Iterator<? extends Object> it = elements.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    mutableScatterMap.removeValueAt(i4);
                                    z2 = true;
                                    break;
                                }
                                Map.Entry entry = (Map.Entry) it.next();
                                if (y45.e(entry.getKey(), mutableScatterMap.keys[i4]) && y45.e(entry.getValue(), mutableScatterMap.values[i4])) {
                                    break;
                                }
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return z2;
                    }
                }
                if (i != length) {
                    i++;
                } else {
                    z = z2;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override
    public final int size() {
        return getSize();
    }

    @Override
    public Object[] toArray() {
        return r71.a(this);
    }

    @Override
    public boolean add(Map.Entry<K, V> element) {
        y45.j(element, "element");
        throw new UnsupportedOperationException();
    }

    public boolean contains(Map.Entry<K, V> element) {
        y45.j(element, "element");
        return y45.e(this.this$0.get(element.getKey()), element.getValue());
    }

    public boolean remove(Map.Entry<K, V> element) {
        int iNumberOfTrailingZeros;
        y45.j(element, "element");
        MutableScatterMap<K, V> mutableScatterMap = this.this$0;
        K key = element.getKey();
        int iHashCode = (key != null ? key.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
        int i = iHashCode ^ (iHashCode << 16);
        int i2 = i & 127;
        int i3 = mutableScatterMap._capacity;
        int i4 = (i >>> 7) & i3;
        int i5 = 0;
        loop0: while (true) {
            long[] jArr = mutableScatterMap.metadata;
            int i6 = i4 >> 3;
            int i7 = (i4 & 7) << 3;
            long j = ((jArr[i6 + 1] << (64 - i7)) & ((-i7) >> 63)) | (jArr[i6] >>> i7);
            long j2 = (((long) i2) * ScatterMapKt.BitmaskLsb) ^ j;
            for (long j3 = (~j2) & (j2 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j3 != 0; j3 &= j3 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j3) >> 3) + i4) & i3;
                if (y45.e(mutableScatterMap.keys[iNumberOfTrailingZeros], key)) {
                    break loop0;
                }
            }
            if ((j & ((~j) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i5 += 8;
            i4 = (i4 + i5) & i3;
        }
        if (iNumberOfTrailingZeros < 0 || !y45.e(this.this$0.values[iNumberOfTrailingZeros], element.getValue())) {
            return false;
        }
        this.this$0.removeValueAt(iNumberOfTrailingZeros);
        return true;
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        y45.j(tArr, "array");
        return (T[]) r71.b(this, tArr);
    }
}
