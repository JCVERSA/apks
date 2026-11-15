package androidx.collection;

import androidx.media3.muxer.MuxerUtil;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087@\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0000\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\u0005\u0010\tJ\u0010\u0010\u000f\u001a\u00020\u0003H\u0086\n¢\u0006\u0004\b\u0010\u0010\u000bJ\u0010\u0010\u0011\u001a\u00020\u0003H\u0086\n¢\u0006\u0004\b\u0012\u0010\u000bJ\u001a\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0012\u0010\u0002\u001a\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0007\u001a\u00020\b8\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\rR\u0012\u0010\u0004\u001a\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000b\u0088\u0001\u0007\u0092\u0001\u00020\b¨\u0006 "}, d2 = {"Landroidx/collection/FloatFloatPair;", "", "first", "", "second", "constructor-impl", "(FF)J", "packedValue", "", "(J)J", "getFirst-impl", "(J)F", "getPackedValue$annotations", "()V", "getSecond-impl", "component1", "component1-impl", "component2", "component2-impl", "equals", "", "other", "equals-impl", "(JLjava/lang/Object;)Z", "hashCode", "", "hashCode-impl", "(J)I", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FloatFloatPair {
    public final long packedValue;

    private FloatFloatPair(long j) {
        this.packedValue = j;
    }

    public static final FloatFloatPair m7boximpl(long j) {
        return new FloatFloatPair(j);
    }

    public static final float m8component1impl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    public static final float m9component2impl(long j) {
        return Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static long m11constructorimpl(long j) {
        return j;
    }

    public static boolean m12equalsimpl(long j, Object obj) {
        return (obj instanceof FloatFloatPair) && j == ((FloatFloatPair) obj).getPackedValue();
    }

    public static final boolean m13equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static final float m14getFirstimpl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    public static void getPackedValue$annotations() {
    }

    public static final float m15getSecondimpl(long j) {
        return Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static int m16hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    public static String m17toStringimpl(long j) {
        return '(' + Float.intBitsToFloat((int) (j >> 32)) + ", " + Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + ')';
    }

    public boolean equals(Object obj) {
        return m12equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m16hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m17toStringimpl(this.packedValue);
    }

    public final long getPackedValue() {
        return this.packedValue;
    }

    public static long m10constructorimpl(float f, float f2) {
        return m11constructorimpl((((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32));
    }
}
