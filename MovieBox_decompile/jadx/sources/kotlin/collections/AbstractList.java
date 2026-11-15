package kotlin.collections;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;

@SinceKotlin
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0006\n\u0002\u0010*\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b'\u0018\u0000  *\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0004!\"# B\t\b\u0004¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u0006H¦\u0002¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u0015\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u00112\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0014J%\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0096\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006$"}, d2 = {"Lkotlin/collections/AbstractList;", "E", "Lkotlin/collections/AbstractCollection;", "", "<init>", "()V", "", "index", "get", "(I)Ljava/lang/Object;", "", "iterator", "()Ljava/util/Iterator;", "element", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "Companion", "c", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class AbstractList<E> extends AbstractCollection<E> implements List<E>, KMappedMarker {

    public static final Companion INSTANCE = new Companion(null);
    private static final int maxArraySize = 2147483639;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\n\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\n\u0010\tJ'\u0010\r\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0011\u0010\u000eJ\u001f\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0017\u001a\u00020\u00042\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0000¢\u0006\u0004\b\u0017\u0010\u0018J'\u0010\u001b\u001a\u00020\u001a2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00162\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0000¢\u0006\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lkotlin/collections/AbstractList$Companion;", "", "<init>", "()V", "", "index", "size", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(II)V", "c", "fromIndex", "toIndex", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(III)V", "startIndex", "endIndex", "a", "oldCapacity", "minCapacity", "e", "(II)I", "", "g", "(Ljava/util/Collection;)I", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "f", "(Ljava/util/Collection;Ljava/util/Collection;)Z", "maxArraySize", "I", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(int startIndex, int endIndex, int size) {
            if (startIndex < 0 || endIndex > size) {
                throw new IndexOutOfBoundsException("startIndex: " + startIndex + ", endIndex: " + endIndex + ", size: " + size);
            }
            if (startIndex <= endIndex) {
                return;
            }
            throw new IllegalArgumentException("startIndex: " + startIndex + " > endIndex: " + endIndex);
        }

        public final void b(int index, int size) {
            if (index < 0 || index >= size) {
                throw new IndexOutOfBoundsException("index: " + index + ", size: " + size);
            }
        }

        public final void c(int index, int size) {
            if (index < 0 || index > size) {
                throw new IndexOutOfBoundsException("index: " + index + ", size: " + size);
            }
        }

        public final void d(int fromIndex, int toIndex, int size) {
            if (fromIndex < 0 || toIndex > size) {
                throw new IndexOutOfBoundsException("fromIndex: " + fromIndex + ", toIndex: " + toIndex + ", size: " + size);
            }
            if (fromIndex <= toIndex) {
                return;
            }
            throw new IllegalArgumentException("fromIndex: " + fromIndex + " > toIndex: " + toIndex);
        }

        public final int e(int oldCapacity, int minCapacity) {
            int i10 = oldCapacity + (oldCapacity >> 1);
            if (i10 - minCapacity < 0) {
                i10 = minCapacity;
            }
            if (i10 - AbstractList.maxArraySize <= 0) {
                return i10;
            }
            if (minCapacity > AbstractList.maxArraySize) {
                return Integer.MAX_VALUE;
            }
            return AbstractList.maxArraySize;
        }

        public final boolean f(Collection c10, Collection other) {
            Intrinsics.h(c10, "c");
            Intrinsics.h(other, "other");
            if (c10.size() != other.size()) {
                return false;
            }
            Iterator<E> it = other.iterator();
            Iterator<E> it2 = c10.iterator();
            while (it2.hasNext()) {
                if (!Intrinsics.c(it2.next(), it.next())) {
                    return false;
                }
            }
            return true;
        }

        public final int g(Collection c10) {
            Intrinsics.h(c10, "c");
            Iterator<E> it = c10.iterator();
            int iHashCode = 1;
            while (it.hasNext()) {
                E next = it.next();
                iHashCode = (iHashCode * 31) + (next != null ? next.hashCode() : 0);
            }
            return iHashCode;
        }

        private Companion() {
        }
    }

    private class a implements Iterator, KMappedMarker {

        private int f64105a;

        public a() {
        }

        protected final int a() {
            return this.f64105a;
        }

        protected final void c(int i10) {
            this.f64105a = i10;
        }

        @Override
        public boolean hasNext() {
            return this.f64105a < AbstractList.this.size();
        }

        @Override
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            AbstractList abstractList = AbstractList.this;
            int i10 = this.f64105a;
            this.f64105a = i10 + 1;
            return abstractList.get(i10);
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private class b extends a implements ListIterator, KMappedMarker {
        public b(int i10) {
            super();
            AbstractList.INSTANCE.c(i10, AbstractList.this.size());
            c(i10);
        }

        @Override
        public void add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override
        public boolean hasPrevious() {
            return a() > 0;
        }

        @Override
        public int nextIndex() {
            return a();
        }

        @Override
        public Object previous() {
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            AbstractList abstractList = AbstractList.this;
            c(a() - 1);
            return abstractList.get(a());
        }

        @Override
        public int previousIndex() {
            return a() - 1;
        }

        @Override
        public void set(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private static final class c extends AbstractList implements RandomAccess {

        private final AbstractList f64108a;

        private final int f64109b;

        private int f64110c;

        public c(AbstractList list, int i10, int i11) {
            Intrinsics.h(list, "list");
            this.f64108a = list;
            this.f64109b = i10;
            AbstractList.INSTANCE.d(i10, i11, list.size());
            this.f64110c = i11 - i10;
        }

        @Override
        public Object get(int i10) {
            AbstractList.INSTANCE.b(i10, this.f64110c);
            return this.f64108a.get(this.f64109b + i10);
        }

        @Override
        public int getSize() {
            return this.f64110c;
        }
    }

    protected AbstractList() {
    }

    @Override
    public void add(int i10, E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(int i10, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof List) {
            return INSTANCE.f(this, (Collection) other);
        }
        return false;
    }

    public abstract Object get(int index);

    @Override
    public int hashCode() {
        return INSTANCE.g(this);
    }

    public int indexOf(Object element) {
        Iterator<E> it = iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (Intrinsics.c(it.next(), element)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @Override
    public Iterator<E> iterator() {
        return new a();
    }

    public int lastIndexOf(Object element) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (Intrinsics.c(listIterator.previous(), element)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    public ListIterator<E> listIterator() {
        return new b(0);
    }

    @Override
    public E remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public E set(int i10, E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public List<E> subList(int fromIndex, int toIndex) {
        return new c(this, fromIndex, toIndex);
    }

    public ListIterator<E> listIterator(int index) {
        return new b(index);
    }
}
