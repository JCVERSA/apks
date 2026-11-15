package androidx.collection;

import androidx.annotation.IntRange;
import androidx.exifinterface.media.ExifInterface;
import defpackage.e74;
import defpackage.fi;
import defpackage.pc9;
import defpackage.qeb;
import defpackage.y45;
import defpackage.ze5;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010#\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001AB\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0013\u0010\fJ\u0017\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0015\u0010\u0006J\u000f\u0010\u0016\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\fJ \u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0018H\u0082\b¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00028\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010#\u001a\u00020\u001c2\u000e\u0010\"\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000!¢\u0006\u0004\b#\u0010$J\u001b\u0010#\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000%¢\u0006\u0004\b#\u0010&J\u001b\u0010#\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000'¢\u0006\u0004\b#\u0010(J\u001b\u0010#\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b#\u0010)J\u001b\u0010#\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000*¢\u0006\u0004\b#\u0010+J \u0010\u001f\u001a\u00020\u00072\u000e\u0010\"\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000!H\u0086\u0002¢\u0006\u0004\b\u001f\u0010,J\u001e\u0010\u001f\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000%H\u0086\u0002¢\u0006\u0004\b\u001f\u0010-J\u001e\u0010\u001f\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000'H\u0086\u0002¢\u0006\u0004\b\u001f\u0010.J\u001e\u0010\u001f\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\u0002¢\u0006\u0004\b\u001f\u0010/J\u001e\u0010\u001f\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0086\u0002¢\u0006\u0004\b\u001f\u00100J\u0015\u00101\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00028\u0000¢\u0006\u0004\b1\u0010\u001eJ\u0018\u00102\u001a\u00020\u00072\u0006\u0010\r\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b2\u0010 J\u001d\u00103\u001a\u00020\u001c2\u000e\u0010\"\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000!¢\u0006\u0004\b3\u0010$J\u001b\u00103\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000'¢\u0006\u0004\b3\u0010(J\u001b\u00103\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000%¢\u0006\u0004\b3\u0010&J\u001b\u00103\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b3\u0010)J\u001b\u00103\u001a\u00020\u001c2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000*¢\u0006\u0004\b3\u0010+J \u00102\u001a\u00020\u00072\u000e\u0010\"\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000!H\u0086\u0002¢\u0006\u0004\b2\u0010,J\u001e\u00102\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000'H\u0086\u0002¢\u0006\u0004\b2\u0010.J\u001e\u00102\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000%H\u0086\u0002¢\u0006\u0004\b2\u0010-J\u001e\u00102\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\u0002¢\u0006\u0004\b2\u0010/J\u001e\u00102\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0086\u0002¢\u0006\u0004\b2\u00100J'\u00106\u001a\u00020\u00072\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001c04H\u0086\bø\u0001\u0000¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0003H\u0001¢\u0006\u0004\b8\u0010\u0006J\r\u00109\u001a\u00020\u0007¢\u0006\u0004\b9\u0010\fJ\u000f\u0010:\u001a\u00020\u0003H\u0007¢\u0006\u0004\b:\u0010;J\u0013\u0010=\u001a\b\u0012\u0004\u0012\u00028\u00000<¢\u0006\u0004\b=\u0010>R\u0016\u0010?\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006B"}, d2 = {"Landroidx/collection/MutableScatterSet;", ExifInterface.LONGITUDE_EAST, "Landroidx/collection/ScatterSet;", "", "initialCapacity", MethodDecl.initName, "(I)V", "Lzfb;", "initializeStorage", "capacity", "initializeMetadata", "initializeGrowth", "()V", "element", "findAbsoluteInsertIndex", "(Ljava/lang/Object;)I", "hash1", "findFirstAvailableSlot", "(I)I", "adjustStorage", "newCapacity", "resizeStorage", "removeDeletedMarkers", "index", "", ES6Iterator.VALUE_PROPERTY, "writeMetadata", "(IJ)V", "", "add", "(Ljava/lang/Object;)Z", "plusAssign", "(Ljava/lang/Object;)V", "", "elements", "addAll", "([Ljava/lang/Object;)Z", "", "(Ljava/lang/Iterable;)Z", "Lpc9;", "(Lpc9;)Z", "(Landroidx/collection/ScatterSet;)Z", "Landroidx/collection/ObjectList;", "(Landroidx/collection/ObjectList;)Z", "([Ljava/lang/Object;)V", "(Ljava/lang/Iterable;)V", "(Lpc9;)V", "(Landroidx/collection/ScatterSet;)V", "(Landroidx/collection/ObjectList;)V", "remove", "minusAssign", "removeAll", "Lkotlin/Function1;", "predicate", "removeIf", "(Le74;)V", "removeElementAt", "clear", "trim", "()I", "", "asMutableSet", "()Ljava/util/Set;", "growthLimit", "I", "MutableSetWrapper", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MutableScatterSet<E> extends ScatterSet<E> {
    private int growthLimit;

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010)\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\f0\u0001R\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\f\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0016\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0014\u0010\tJ\u001d\u0010\u0015\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016¢\u0006\u0004\b\u0015\u0010\rJ\u001d\u0010\u0016\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0016¢\u0006\u0004\b\u0016\u0010\r¨\u0006\u0017"}, d2 = {"Landroidx/collection/MutableScatterSet$MutableSetWrapper;", "Landroidx/collection/ScatterSet$SetWrapper;", "Landroidx/collection/ScatterSet;", "", MethodDecl.initName, "(Landroidx/collection/MutableScatterSet;)V", "element", "", "add", "(Ljava/lang/Object;)Z", "", "elements", "addAll", "(Ljava/util/Collection;)Z", "Lzfb;", "clear", "()V", "", "iterator", "()Ljava/util/Iterator;", "remove", "retainAll", "removeAll", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class MutableSetWrapper extends ScatterSet<E>.SetWrapper implements Set<E>, ze5 {
        public MutableSetWrapper() {
            super();
        }

        @Override
        public boolean add(E element) {
            return MutableScatterSet.this.add(element);
        }

        @Override
        public boolean addAll(Collection<? extends E> elements) {
            y45.j(elements, "elements");
            return MutableScatterSet.this.addAll(elements);
        }

        @Override
        public void clear() {
            MutableScatterSet.this.clear();
        }

        @Override
        public Iterator<E> iterator() {
            return new MutableScatterSet$MutableSetWrapper$iterator$1(MutableScatterSet.this);
        }

        @Override
        public boolean remove(Object element) {
            return MutableScatterSet.this.remove(element);
        }

        @Override
        public boolean removeAll(Collection<? extends Object> elements) {
            y45.j(elements, "elements");
            int i = MutableScatterSet.this.get_size();
            Iterator<? extends Object> it = elements.iterator();
            while (it.hasNext()) {
                MutableScatterSet.this.minusAssign((E) it.next());
            }
            return i != MutableScatterSet.this.get_size();
        }

        @Override
        public boolean retainAll(Collection<? extends Object> elements) {
            y45.j(elements, "elements");
            MutableScatterSet<E> mutableScatterSet = MutableScatterSet.this;
            long[] jArr = mutableScatterSet.metadata;
            int length = jArr.length - 2;
            boolean z = false;
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
                                if (!elements.contains(mutableScatterSet.elements[i4])) {
                                    mutableScatterSet.removeElementAt(i4);
                                    z2 = true;
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
            }
            return z;
        }
    }

    public MutableScatterSet() {
        this(0, 1, null);
    }

    private final void adjustStorage() {
        if (this._capacity <= 8 || Long.compareUnsigned(qeb.b(qeb.b(this._size) * 32), qeb.b(qeb.b(this._capacity) * 25)) > 0) {
            resizeStorage(ScatterMapKt.nextCapacity(this._capacity));
        } else {
            removeDeletedMarkers();
        }
    }

    private final int findAbsoluteInsertIndex(E element) {
        int iHashCode = (element != null ? element.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
        int i = iHashCode ^ (iHashCode << 16);
        int i2 = i >>> 7;
        int i3 = i & 127;
        int i4 = this._capacity;
        int i5 = i2 & i4;
        int i6 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i7 = i5 >> 3;
            int i8 = (i5 & 7) << 3;
            long j = ((jArr[i7 + 1] << (64 - i8)) & ((-i8) >> 63)) | (jArr[i7] >>> i8);
            long j2 = i3;
            int i9 = i3;
            long j3 = j ^ (j2 * ScatterMapKt.BitmaskLsb);
            for (long j4 = (~j3) & (j3 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j4 != 0; j4 &= j4 - 1) {
                int iNumberOfTrailingZeros = (i5 + (Long.numberOfTrailingZeros(j4) >> 3)) & i4;
                if (y45.e(this.elements[iNumberOfTrailingZeros], element)) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j) << 6) & j & (-9187201950435737472L)) != 0) {
                int iFindFirstAvailableSlot = findFirstAvailableSlot(i2);
                if (this.growthLimit == 0 && ((this.metadata[iFindFirstAvailableSlot >> 3] >> ((iFindFirstAvailableSlot & 7) << 3)) & 255) != 254) {
                    adjustStorage();
                    iFindFirstAvailableSlot = findFirstAvailableSlot(i2);
                }
                this._size++;
                int i10 = this.growthLimit;
                long[] jArr2 = this.metadata;
                int i11 = iFindFirstAvailableSlot >> 3;
                long j5 = jArr2[i11];
                int i12 = (iFindFirstAvailableSlot & 7) << 3;
                this.growthLimit = i10 - (((j5 >> i12) & 255) == 128 ? 1 : 0);
                jArr2[i11] = (j5 & (~(255 << i12))) | (j2 << i12);
                int i13 = this._capacity;
                int i14 = ((iFindFirstAvailableSlot - 7) & i13) + (i13 & 7);
                int i15 = i14 >> 3;
                int i16 = (i14 & 7) << 3;
                jArr2[i15] = ((~(255 << i16)) & jArr2[i15]) | (j2 << i16);
                return iFindFirstAvailableSlot;
            }
            i6 += 8;
            i5 = (i5 + i6) & i4;
            i3 = i9;
        }
    }

    private final int findFirstAvailableSlot(int hash1) {
        int i = this._capacity;
        int i2 = hash1 & i;
        int i3 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i4 = i2 >> 3;
            int i5 = (i2 & 7) << 3;
            long j = ((jArr[i4 + 1] << (64 - i5)) & ((-i5) >> 63)) | (jArr[i4] >>> i5);
            long j2 = j & ((~j) << 7) & (-9187201950435737472L);
            if (j2 != 0) {
                return (i2 + (Long.numberOfTrailingZeros(j2) >> 3)) & i;
            }
            i3 += 8;
            i2 = (i2 + i3) & i;
        }
    }

    private final void initializeGrowth() {
        this.growthLimit = ScatterMapKt.loadedCapacity(get_capacity()) - this._size;
    }

    private final void initializeMetadata(int capacity) {
        long[] jArr;
        if (capacity == 0) {
            jArr = ScatterMapKt.EmptyGroup;
        } else {
            jArr = new long[((capacity + 15) & (-8)) >> 3];
            fi.x(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.metadata = jArr;
        int i = capacity >> 3;
        long j = 255 << ((capacity & 7) << 3);
        jArr[i] = (jArr[i] & (~j)) | j;
        initializeGrowth();
    }

    private final void initializeStorage(int initialCapacity) {
        int iMax = initialCapacity > 0 ? Math.max(7, ScatterMapKt.normalizeCapacity(initialCapacity)) : 0;
        this._capacity = iMax;
        initializeMetadata(iMax);
        this.elements = new Object[iMax];
    }

    private final void removeDeletedMarkers() {
        long[] jArr = this.metadata;
        int i = this._capacity;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = i3 >> 3;
            int i5 = (i3 & 7) << 3;
            if (((jArr[i4] >> i5) & 255) == 254) {
                long[] jArr2 = this.metadata;
                jArr2[i4] = (128 << i5) | (jArr2[i4] & (~(255 << i5)));
                int i6 = this._capacity;
                int i7 = ((i3 - 7) & i6) + (i6 & 7);
                int i8 = i7 >> 3;
                int i9 = (i7 & 7) << 3;
                jArr2[i8] = ((~(255 << i9)) & jArr2[i8]) | (128 << i9);
                i2++;
            }
        }
        this.growthLimit += i2;
    }

    private final void resizeStorage(int newCapacity) {
        long[] jArr = this.metadata;
        Object[] objArr = this.elements;
        int i = this._capacity;
        initializeStorage(newCapacity);
        Object[] objArr2 = this.elements;
        for (int i2 = 0; i2 < i; i2++) {
            if (((jArr[i2 >> 3] >> ((i2 & 7) << 3)) & 255) < 128) {
                Object obj = objArr[i2];
                int iHashCode = (obj != null ? obj.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
                int i3 = iHashCode ^ (iHashCode << 16);
                int iFindFirstAvailableSlot = findFirstAvailableSlot(i3 >>> 7);
                long j = i3 & 127;
                long[] jArr2 = this.metadata;
                int i4 = iFindFirstAvailableSlot >> 3;
                int i5 = (iFindFirstAvailableSlot & 7) << 3;
                jArr2[i4] = (jArr2[i4] & (~(255 << i5))) | (j << i5);
                int i6 = this._capacity;
                int i7 = ((iFindFirstAvailableSlot - 7) & i6) + (i6 & 7);
                int i8 = i7 >> 3;
                int i9 = (i7 & 7) << 3;
                jArr2[i8] = ((~(255 << i9)) & jArr2[i8]) | (j << i9);
                objArr2[iFindFirstAvailableSlot] = obj;
            }
        }
    }

    private final void writeMetadata(int index, long value) {
        long[] jArr = this.metadata;
        int i = index >> 3;
        int i2 = (index & 7) << 3;
        jArr[i] = (jArr[i] & (~(255 << i2))) | (value << i2);
        int i3 = this._capacity;
        int i4 = ((index - 7) & i3) + (i3 & 7);
        int i5 = i4 >> 3;
        int i6 = (i4 & 7) << 3;
        jArr[i5] = (value << i6) | (jArr[i5] & (~(255 << i6)));
    }

    public final boolean add(E element) {
        int i = get_size();
        this.elements[findAbsoluteInsertIndex(element)] = element;
        return get_size() != i;
    }

    public final boolean addAll(E[] elements) {
        y45.j(elements, "elements");
        int i = get_size();
        plusAssign((Object[]) elements);
        return i != get_size();
    }

    public final Set<E> asMutableSet() {
        return new MutableSetWrapper();
    }

    public final void clear() {
        this._size = 0;
        long[] jArr = this.metadata;
        if (jArr != ScatterMapKt.EmptyGroup) {
            fi.x(jArr, -9187201950435737472L, 0, 0, 6, null);
            long[] jArr2 = this.metadata;
            int i = this._capacity;
            int i2 = i >> 3;
            long j = 255 << ((i & 7) << 3);
            jArr2[i2] = (jArr2[i2] & (~j)) | j;
        }
        fi.v(this.elements, null, 0, this._capacity);
        initializeGrowth();
    }

    public final void minusAssign(E element) {
        int iNumberOfTrailingZeros;
        int i = 0;
        int iHashCode = (element != null ? element.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
        int i2 = iHashCode ^ (iHashCode << 16);
        int i3 = i2 & 127;
        int i4 = this._capacity;
        int i5 = i2 >>> 7;
        loop0: while (true) {
            int i6 = i5 & i4;
            long[] jArr = this.metadata;
            int i7 = i6 >> 3;
            int i8 = (i6 & 7) << 3;
            long j = ((jArr[i7 + 1] << (64 - i8)) & ((-i8) >> 63)) | (jArr[i7] >>> i8);
            long j2 = (((long) i3) * ScatterMapKt.BitmaskLsb) ^ j;
            for (long j3 = (~j2) & (j2 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j3 != 0; j3 &= j3 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j3) >> 3) + i6) & i4;
                if (y45.e(this.elements[iNumberOfTrailingZeros], element)) {
                    break loop0;
                }
            }
            if ((j & ((~j) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            } else {
                i += 8;
                i5 = i6 + i;
            }
        }
        if (iNumberOfTrailingZeros >= 0) {
            removeElementAt(iNumberOfTrailingZeros);
        }
    }

    public final void plusAssign(E element) {
        this.elements[findAbsoluteInsertIndex(element)] = element;
    }

    public final boolean remove(E element) {
        int iNumberOfTrailingZeros;
        int iHashCode = (element != null ? element.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
        int i = iHashCode ^ (iHashCode << 16);
        int i2 = i & 127;
        int i3 = this._capacity;
        int i4 = (i >>> 7) & i3;
        int i5 = 0;
        loop0: while (true) {
            long[] jArr = this.metadata;
            int i6 = i4 >> 3;
            int i7 = (i4 & 7) << 3;
            long j = ((jArr[i6 + 1] << (64 - i7)) & ((-i7) >> 63)) | (jArr[i6] >>> i7);
            long j2 = (((long) i2) * ScatterMapKt.BitmaskLsb) ^ j;
            for (long j3 = (~j2) & (j2 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j3 != 0; j3 &= j3 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j3) >> 3) + i4) & i3;
                if (y45.e(this.elements[iNumberOfTrailingZeros], element)) {
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
        boolean z = iNumberOfTrailingZeros >= 0;
        if (z) {
            removeElementAt(iNumberOfTrailingZeros);
        }
        return z;
    }

    public final boolean removeAll(E[] elements) {
        y45.j(elements, "elements");
        int i = get_size();
        minusAssign((Object[]) elements);
        return i != get_size();
    }

    public final void removeElementAt(int index) {
        this._size--;
        long[] jArr = this.metadata;
        int i = index >> 3;
        int i2 = (index & 7) << 3;
        jArr[i] = (jArr[i] & (~(255 << i2))) | (254 << i2);
        int i3 = this._capacity;
        int i4 = ((index - 7) & i3) + (i3 & 7);
        int i5 = i4 >> 3;
        int i6 = (i4 & 7) << 3;
        jArr[i5] = (jArr[i5] & (~(255 << i6))) | (254 << i6);
        this.elements[index] = null;
    }

    public final void removeIf(e74 predicate) {
        y45.j(predicate, "predicate");
        Object[] objArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        if (((Boolean) predicate.invoke(objArr[i4])).booleanValue()) {
                            removeElementAt(i4);
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    @IntRange(from = 0)
    public final int trim() {
        int i = this._capacity;
        int iNormalizeCapacity = ScatterMapKt.normalizeCapacity(ScatterMapKt.unloadedCapacity(this._size));
        if (iNormalizeCapacity >= i) {
            return 0;
        }
        resizeStorage(iNormalizeCapacity);
        return i - this._capacity;
    }

    public MutableScatterSet(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 6 : i);
    }

    public MutableScatterSet(int i) {
        super(null);
        if (i >= 0) {
            initializeStorage(ScatterMapKt.unloadedCapacity(i));
            return;
        }
        throw new IllegalArgumentException("Capacity must be a positive value.");
    }

    public final void plusAssign(E[] elements) {
        y45.j(elements, "elements");
        for (E e : elements) {
            plusAssign(e);
        }
    }

    public final boolean addAll(Iterable<? extends E> elements) {
        y45.j(elements, "elements");
        int i = get_size();
        plusAssign((Iterable) elements);
        return i != get_size();
    }

    public final boolean removeAll(pc9 elements) {
        y45.j(elements, "elements");
        int i = get_size();
        minusAssign(elements);
        return i != get_size();
    }

    public final void plusAssign(Iterable<? extends E> elements) {
        y45.j(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            plusAssign(it.next());
        }
    }

    public final boolean addAll(pc9 elements) {
        y45.j(elements, "elements");
        int i = get_size();
        plusAssign(elements);
        return i != get_size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void plusAssign(pc9 elements) {
        y45.j(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            plusAssign(it.next());
        }
    }

    public final boolean removeAll(Iterable<? extends E> elements) {
        y45.j(elements, "elements");
        int i = get_size();
        minusAssign((Iterable) elements);
        return i != get_size();
    }

    public final void minusAssign(E[] elements) {
        y45.j(elements, "elements");
        for (E e : elements) {
            minusAssign(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void plusAssign(ScatterSet<E> elements) {
        y45.j(elements, "elements");
        Object[] objArr = elements.elements;
        long[] jArr = elements.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        plusAssign(objArr[(i << 3) + i3]);
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final boolean addAll(ScatterSet<E> elements) {
        y45.j(elements, "elements");
        int i = get_size();
        plusAssign((ScatterSet) elements);
        return i != get_size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(pc9 elements) {
        y45.j(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            minusAssign(it.next());
        }
    }

    public final boolean removeAll(ScatterSet<E> elements) {
        y45.j(elements, "elements");
        int i = get_size();
        minusAssign((ScatterSet) elements);
        return i != get_size();
    }

    public final void minusAssign(Iterable<? extends E> elements) {
        y45.j(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            minusAssign(it.next());
        }
    }

    public final boolean addAll(ObjectList<E> elements) {
        y45.j(elements, "elements");
        int i = get_size();
        plusAssign((ObjectList) elements);
        return i != get_size();
    }

    public final boolean removeAll(ObjectList<E> elements) {
        y45.j(elements, "elements");
        int i = get_size();
        minusAssign((ObjectList) elements);
        return i != get_size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(ScatterSet<E> elements) {
        y45.j(elements, "elements");
        Object[] objArr = elements.elements;
        long[] jArr = elements.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        minusAssign(objArr[(i << 3) + i3]);
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void plusAssign(ObjectList<E> elements) {
        y45.j(elements, "elements");
        Object[] objArr = elements.content;
        int i = elements._size;
        for (int i2 = 0; i2 < i; i2++) {
            plusAssign(objArr[i2]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(ObjectList<E> elements) {
        y45.j(elements, "elements");
        Object[] objArr = elements.content;
        int i = elements._size;
        for (int i2 = 0; i2 < i; i2++) {
            minusAssign(objArr[i2]);
        }
    }
}
