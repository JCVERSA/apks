package kotlin.collections.unsigned;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;

@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\n\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0011\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"kotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$3", "Lkotlin/collections/AbstractList;", "Lkotlin/UByte;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "isEmpty", "()Z", "element", "e", "(B)Z", "", "index", "f", "(I)B", "i", "(B)I", "j", "getSize", "()I", "size", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UArraysKt___UArraysJvmKt$asList$3 extends AbstractList<UByte> implements RandomAccess {

    final byte[] f64207a;

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof UByte) {
            return e(((UByte) obj).getData());
        }
        return false;
    }

    public boolean e(byte element) {
        return UByteArray.i(this.f64207a, element);
    }

    public byte f(int index) {
        return UByteArray.m(this.f64207a, index);
    }

    @Override
    public Object get(int i10) {
        return UByte.a(f(i10));
    }

    @Override
    public int get_size() {
        return UByteArray.o(this.f64207a);
    }

    public int i(byte element) {
        return ArraysKt.a0(this.f64207a, element);
    }

    @Override
    public final int indexOf(Object obj) {
        if (obj instanceof UByte) {
            return i(((UByte) obj).getData());
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return UByteArray.q(this.f64207a);
    }

    public int j(byte element) {
        return ArraysKt.o0(this.f64207a, element);
    }

    @Override
    public final int lastIndexOf(Object obj) {
        if (obj instanceof UByte) {
            return j(((UByte) obj).getData());
        }
        return -1;
    }
}
