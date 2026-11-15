package kotlin;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;

@SinceKotlin
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\n\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001'B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0001\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0003H\u0086\u0002¢\u0006\u0004\b\f\u0010\rJ \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u0012H\u0096\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u001a\u001a\u00020\u00162\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001f\u001a\u00020\u001eHÖ\u0001¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b!\u0010\"J\u001a\u0010%\u001a\u00020\u00162\b\u0010$\u001a\u0004\u0018\u00010#HÖ\u0003¢\u0006\u0004\b%\u0010&R\u001a\u0010\b\u001a\u00020\u00078\u0000X\u0081\u0004¢\u0006\f\n\u0004\b'\u0010(\u0012\u0004\b)\u0010*R\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,\u0088\u0001\b\u0092\u0001\u00020\u0007¨\u0006-"}, d2 = {"Lkotlin/UIntArray;", "", "Lkotlin/UInt;", "", "size", "c", "(I)[I", "", PlaceTypes.STORAGE, "e", "([I)[I", "index", "m", "([II)I", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "s", "([III)V", "", CampaignEx.JSON_KEY_AD_R, "([I)Ljava/util/Iterator;", "element", "", "i", "([II)Z", "elements", "j", "([ILjava/util/Collection;)Z", CampaignEx.JSON_KEY_AD_Q, "([I)Z", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "a", "[I", "getStorage$annotations", "()V", "o", "([I)I", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@ExperimentalUnsignedTypes
@JvmInline
@SourceDebugExtension
public final class UIntArray implements Collection<UInt>, KMappedMarker {

    private final int[] storage;

    private static final class a implements Iterator, KMappedMarker {

        private final int[] f64083a;

        private int f64084b;

        public a(int[] array) {
            Intrinsics.h(array, "array");
            this.f64083a = array;
        }

        public int a() {
            int i10 = this.f64084b;
            int[] iArr = this.f64083a;
            if (i10 >= iArr.length) {
                throw new NoSuchElementException(String.valueOf(this.f64084b));
            }
            this.f64084b = i10 + 1;
            return UInt.b(iArr[i10]);
        }

        @Override
        public boolean hasNext() {
            return this.f64084b < this.f64083a.length;
        }

        @Override
        public Object next() {
            return UInt.a(a());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private UIntArray(int[] iArr) {
        this.storage = iArr;
    }

    public static final UIntArray a(int[] iArr) {
        return new UIntArray(iArr);
    }

    public static int[] c(int i10) {
        return e(new int[i10]);
    }

    public static int[] e(int[] storage) {
        Intrinsics.h(storage, "storage");
        return storage;
    }

    public static boolean i(int[] iArr, int i10) {
        return ArraysKt.J(iArr, i10);
    }

    public static boolean j(int[] iArr, Collection elements) {
        Intrinsics.h(elements, "elements");
        Collection collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!(obj instanceof UInt) || !ArraysKt.J(iArr, ((UInt) obj).getData())) {
                return false;
            }
        }
        return true;
    }

    public static boolean l(int[] iArr, Object obj) {
        return (obj instanceof UIntArray) && Intrinsics.c(iArr, ((UIntArray) obj).getStorage());
    }

    public static final int m(int[] iArr, int i10) {
        return UInt.b(iArr[i10]);
    }

    public static int o(int[] iArr) {
        return iArr.length;
    }

    public static int p(int[] iArr) {
        return Arrays.hashCode(iArr);
    }

    public static boolean q(int[] iArr) {
        return iArr.length == 0;
    }

    public static Iterator r(int[] iArr) {
        return new a(iArr);
    }

    public static final void s(int[] iArr, int i10, int i11) {
        iArr[i10] = i11;
    }

    public static String t(int[] iArr) {
        return "UIntArray(storage=" + Arrays.toString(iArr) + ')';
    }

    @Override
    public boolean add(UInt uInt) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection<? extends UInt> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof UInt) {
            return f(((UInt) obj).getData());
        }
        return false;
    }

    @Override
    public boolean containsAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        return j(this.storage, elements);
    }

    @Override
    public boolean equals(Object other) {
        return l(this.storage, other);
    }

    public boolean f(int i10) {
        return i(this.storage, i10);
    }

    @Override
    public int hashCode() {
        return p(this.storage);
    }

    @Override
    public boolean isEmpty() {
        return q(this.storage);
    }

    @Override
    public Iterator iterator() {
        return r(this.storage);
    }

    @Override
    public int size() {
        return o(this.storage);
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object[] toArray() {
        return CollectionToArray.a(this);
    }

    public String toString() {
        return t(this.storage);
    }

    public final int[] getStorage() {
        return this.storage;
    }

    @Override
    public Object[] toArray(Object[] array) {
        Intrinsics.h(array, "array");
        return CollectionToArray.b(this, array);
    }
}
