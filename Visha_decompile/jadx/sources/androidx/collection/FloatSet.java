package androidx.collection;

import androidx.annotation.IntRange;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.e74;
import defpackage.y45;
import java.util.NoSuchElementException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u0016\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\u0006J\r\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\u0006J\r\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\nH\u0086\b¢\u0006\u0004\b\u000b\u0010\fJ2\u0010\u000b\u001a\u00020\n2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040\rH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u000b\u0010\u000fJ2\u0010\u0013\u001a\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\rH\u0081\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u0013\u0010\u0014J2\u0010\u0015\u001a\u00020\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00110\rH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u0015\u0010\u0014J2\u0010\u0016\u001a\u00020\u00042\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040\rH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u0016\u0010\u0017J2\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040\rH\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u0005\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0018\u0010\u0019J2\u0010\u0018\u001a\u00020\u00102\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040\rH\u0087\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001¢\u0006\u0004\b\u0018\u0010\u001aJ\u0018\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\nH\u0086\u0002¢\u0006\u0004\b\u001c\u0010\u001dJA\u0010%\u001a\u00020$2\b\b\u0002\u0010\u001f\u001a\u00020\u001e2\b\b\u0002\u0010 \u001a\u00020\u001e2\b\b\u0002\u0010!\u001a\u00020\u001e2\b\b\u0002\u0010\"\u001a\u00020\u00102\b\b\u0002\u0010#\u001a\u00020\u001eH\u0007¢\u0006\u0004\b%\u0010&J[\u0010%\u001a\u00020$2\b\b\u0002\u0010\u001f\u001a\u00020\u001e2\b\b\u0002\u0010 \u001a\u00020\u001e2\b\b\u0002\u0010!\u001a\u00020\u001e2\b\b\u0002\u0010\"\u001a\u00020\u00102\b\b\u0002\u0010#\u001a\u00020\u001e2\u0014\b\u0004\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u001e0\rH\u0087\bø\u0001\u0000¢\u0006\u0004\b%\u0010(J\u000f\u0010)\u001a\u00020\u0010H\u0016¢\u0006\u0004\b)\u0010\u0019J\u001a\u0010+\u001a\u00020\u00042\b\u0010*\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020$H\u0016¢\u0006\u0004\b-\u0010.J\u0018\u00101\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\nH\u0080\b¢\u0006\u0004\b/\u00100R\u001c\u00103\u001a\u0002028\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\b3\u00104\u0012\u0004\b5\u0010\u0003R\u001c\u00107\u001a\u0002068\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\b7\u00108\u0012\u0004\b9\u0010\u0003R\u0016\u0010:\u001a\u00020\u00108\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010<\u001a\u00020\u00108\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b<\u0010;R\u0011\u0010>\u001a\u00020\u00108G¢\u0006\u0006\u001a\u0004\b=\u0010\u0019R\u0011\u0010@\u001a\u00020\u00108G¢\u0006\u0006\u001a\u0004\b?\u0010\u0019\u0082\u0001\u0001A\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006B"}, d2 = {"Landroidx/collection/FloatSet;", "", MethodDecl.initName, "()V", "", "any", "()Z", "none", "isEmpty", "isNotEmpty", "", "first", "()F", "Lkotlin/Function1;", "predicate", "(Le74;)F", "", "Lzfb;", "block", "forEachIndex", "(Le74;)V", "forEach", TtmlNode.COMBINE_ALL, "(Le74;)Z", "count", "()I", "(Le74;)I", "element", "contains", "(F)Z", "", "separator", "prefix", "postfix", "limit", "truncated", "", "joinToString", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/String;", "transform", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;)Ljava/lang/String;", "hashCode", "other", "equals", "(Ljava/lang/Object;)Z", "toString", "()Ljava/lang/String;", "findElementIndex$collection", "(F)I", "findElementIndex", "", TtmlNode.TAG_METADATA, "[J", "getMetadata$annotations", "", "elements", "[F", "getElements$annotations", "_capacity", "I", "_size", "getCapacity", "capacity", "getSize", PlayAudioData.TAG_SIZE, "Landroidx/collection/MutableFloatSet;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class FloatSet {
    public int _capacity;
    public int _size;
    public float[] elements;
    public long[] metadata;

    public FloatSet(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static void getElements$annotations() {
    }

    public static void getMetadata$annotations() {
    }

    public static String joinToString$default(FloatSet floatSet, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
        }
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i2 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i2 & 4) == 0 ? charSequence3 : "";
        if ((i2 & 8) != 0) {
            i = -1;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        return floatSet.joinToString(charSequence, charSequence5, charSequence6, i3, charSequence4);
    }

    public final boolean all(e74 predicate) {
        y45.j(predicate, "predicate");
        float[] fArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128 && !((Boolean) predicate.invoke(Float.valueOf(fArr[(i << 3) + i3]))).booleanValue()) {
                        return false;
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return true;
                }
            }
            if (i == length) {
                return true;
            }
            i++;
        }
    }

    public final boolean any() {
        return this._size != 0;
    }

    public final boolean contains(float element) {
        int iNumberOfTrailingZeros;
        int iHashCode = Float.hashCode(element) * ScatterMapKt.MurmurHashC1;
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
                if (this.elements[iNumberOfTrailingZeros] == element) {
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
        return iNumberOfTrailingZeros >= 0;
    }

    @IntRange(from = 0)
    public final int get_size() {
        return this._size;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0056 A[LOOP:0: B:14:0x001d->B:26:0x0056, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x0059 A[SYNTHETIC] */
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof FloatSet)) {
            return false;
        }
        FloatSet floatSet = (FloatSet) other;
        if (floatSet._size != this._size) {
            return false;
        }
        float[] fArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128 && !floatSet.contains(fArr[(i << 3) + i3])) {
                            return false;
                        }
                        j >>= 8;
                    }
                    if (i2 == 8) {
                        if (i != length) {
                            i++;
                        }
                    }
                } else if (i != length) {
                    i++;
                }
            }
        }
        return true;
    }

    public final int findElementIndex$collection(float element) {
        int iHashCode = Float.hashCode(element) * ScatterMapKt.MurmurHashC1;
        int i = iHashCode ^ (iHashCode << 16);
        int i2 = i & 127;
        int i3 = this._capacity;
        int i4 = (i >>> 7) & i3;
        int i5 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i6 = i4 >> 3;
            int i7 = (i4 & 7) << 3;
            long j = ((jArr[i6 + 1] << (64 - i7)) & ((-i7) >> 63)) | (jArr[i6] >>> i7);
            long j2 = (((long) i2) * ScatterMapKt.BitmaskLsb) ^ j;
            for (long j3 = (~j2) & (j2 - ScatterMapKt.BitmaskLsb) & (-9187201950435737472L); j3 != 0; j3 &= j3 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j3) >> 3) + i4) & i3;
                if (this.elements[iNumberOfTrailingZeros] == element) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((j & ((~j) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i5 += 8;
            i4 = (i4 + i5) & i3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x003e A[LOOP:0: B:5:0x000b->B:16:0x003e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x0041 A[SYNTHETIC] */
    public final float first() {
        float[] fArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            return fArr[(i << 3) + i3];
                        }
                        j >>= 8;
                    }
                    if (i2 == 8) {
                        if (i != length) {
                            i++;
                        }
                    }
                } else if (i != length) {
                    i++;
                }
            }
        }
        throw new NoSuchElementException("The FloatSet is empty");
    }

    public final void forEach(e74 block) {
        y45.j(block, "block");
        float[] fArr = this.elements;
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
                        block.invoke(Float.valueOf(fArr[(i << 3) + i3]));
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

    public final void forEachIndex(e74 block) {
        y45.j(block, "block");
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
                        block.invoke(Integer.valueOf((i << 3) + i3));
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
    public final int get_capacity() {
        return this._capacity;
    }

    @IntRange(from = 0)
    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        float[] fArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        int i = 0;
        if (length >= 0) {
            int i2 = 0;
            int iHashCode = 0;
            while (true) {
                long j = jArr[i2];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                    for (int i4 = 0; i4 < i3; i4++) {
                        if ((255 & j) < 128) {
                            iHashCode += Float.hashCode(fArr[(i2 << 3) + i4]);
                        }
                        j >>= 8;
                    }
                    if (i3 != 8) {
                        return iHashCode;
                    }
                }
                if (i2 != length) {
                    i2++;
                } else {
                    i = iHashCode;
                }
            }
        }
        return i;
    }

    public final boolean isEmpty() {
        return this._size == 0;
    }

    public final boolean isNotEmpty() {
        return this._size != 0;
    }

    public final String joinToString() {
        return joinToString$default(this, null, null, null, 0, null, 31, null);
    }

    public final boolean none() {
        return this._size == 0;
    }

    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, 25, null);
    }

    private FloatSet() {
        this.metadata = ScatterMapKt.EmptyGroup;
        this.elements = FloatSetKt.getEmptyFloatArray();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0052 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0054 A[LOOP:0: B:5:0x0010->B:18:0x0054, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x0057 A[SYNTHETIC] */
    public final boolean any(e74 predicate) {
        y45.j(predicate, "predicate");
        float[] fArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128 && ((Boolean) predicate.invoke(Float.valueOf(fArr[(i << 3) + i3]))).booleanValue()) {
                            return true;
                        }
                        j >>= 8;
                    }
                    if (i2 == 8) {
                        if (i != length) {
                            i++;
                        }
                    }
                } else if (i != length) {
                    i++;
                }
            }
        }
        return false;
    }

    @IntRange(from = 0)
    public final int count(e74 predicate) {
        y45.j(predicate, "predicate");
        float[] fArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        int i = 0;
        if (length >= 0) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                long j = jArr[i2];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8 - ((~(i2 - length)) >>> 31);
                    for (int i5 = 0; i5 < i4; i5++) {
                        if ((255 & j) < 128 && ((Boolean) predicate.invoke(Float.valueOf(fArr[(i2 << 3) + i5]))).booleanValue()) {
                            i3++;
                        }
                        j >>= 8;
                    }
                    if (i4 != 8) {
                        return i3;
                    }
                }
                if (i2 != length) {
                    i2++;
                } else {
                    i = i3;
                }
            }
        }
        return i;
    }

    public final String joinToString(CharSequence charSequence) {
        y45.j(charSequence, "separator");
        return joinToString$default(this, charSequence, null, null, 0, null, 30, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        return joinToString$default(this, charSequence, charSequence2, null, 0, null, 28, null);
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        return joinToString$default(this, charSequence, charSequence2, charSequence3, 0, null, 24, null);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00ae A[DONT_INVERT, PHI: r11
      0x00ae: PHI (r11v2 int) = (r11v1 int), (r11v3 int) binds: [B:28:0x006e, B:40:0x00ac] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:42:0x00b0 A[LOOP:0: B:27:0x005d->B:42:0x00b0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:50:0x00b3 A[SYNTHETIC] */
    public static String joinToString$default(FloatSet floatSet, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var, int i2, Object obj) {
        if (obj == null) {
            CharSequence charSequence5 = (i2 & 1) != 0 ? ", " : charSequence;
            CharSequence charSequence6 = (i2 & 2) != 0 ? "" : charSequence2;
            CharSequence charSequence7 = (i2 & 4) == 0 ? charSequence3 : "";
            int i3 = (i2 & 8) != 0 ? -1 : i;
            CharSequence charSequence8 = (i2 & 16) != 0 ? "..." : charSequence4;
            y45.j(charSequence5, "separator");
            y45.j(charSequence6, "prefix");
            y45.j(charSequence7, "postfix");
            y45.j(charSequence8, "truncated");
            y45.j(e74Var, "transform");
            StringBuilder sb = new StringBuilder();
            sb.append(charSequence6);
            float[] fArr = floatSet.elements;
            long[] jArr = floatSet.metadata;
            int length = jArr.length - 2;
            if (length < 0) {
                sb.append(charSequence7);
                break;
            }
            int i4 = 0;
            int i5 = 0;
            loop0: while (true) {
                long j = jArr[i4];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i6 = 8;
                    int i7 = 8 - ((~(i4 - length)) >>> 31);
                    for (int i8 = 0; i8 < i7; i8++) {
                        if ((j & 255) < 128) {
                            float f = fArr[(i4 << 3) + i8];
                            if (i5 == i3) {
                                sb.append(charSequence8);
                                break loop0;
                            }
                            if (i5 != 0) {
                                sb.append(charSequence5);
                            }
                            sb.append((CharSequence) e74Var.invoke(Float.valueOf(f)));
                            i5++;
                            i6 = 8;
                        }
                        j >>= i6;
                    }
                    if (i7 == i6) {
                        if (i4 == length) {
                            i4++;
                        }
                    }
                    sb.append(charSequence7);
                    break;
                }
                if (i4 == length) {
                    sb.append(charSequence7);
                    break;
                }
                i4++;
            }
            String string = sb.toString();
            y45.i(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        return joinToString$default(this, charSequence, charSequence2, charSequence3, i, null, 16, null);
    }

    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix, int limit, CharSequence truncated) {
        y45.j(separator, "separator");
        y45.j(prefix, "prefix");
        y45.j(postfix, "postfix");
        y45.j(truncated, "truncated");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        float[] fArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            sb.append(postfix);
            break;
        }
        int i = 0;
        int i2 = 0;
        loop0: while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j) < 128) {
                        float f = fArr[(i << 3) + i4];
                        if (i2 == limit) {
                            sb.append(truncated);
                            break loop0;
                        }
                        if (i2 != 0) {
                            sb.append(separator);
                        }
                        sb.append(f);
                        i2++;
                    }
                    j >>= 8;
                }
                if (i3 == 8) {
                }
                sb.append(postfix);
                break;
            }
            if (i == length) {
                sb.append(postfix);
                break;
            }
            i++;
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0051 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0053 A[LOOP:0: B:5:0x0010->B:17:0x0053, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:20:0x0056 A[SYNTHETIC] */
    public final float first(e74 predicate) {
        y45.j(predicate, "predicate");
        float[] fArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            float f = fArr[(i << 3) + i3];
                            if (((Boolean) predicate.invoke(Float.valueOf(f))).booleanValue()) {
                                return f;
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 == 8) {
                        if (i != length) {
                            i++;
                        }
                    }
                } else if (i != length) {
                    i++;
                }
            }
        }
        throw new NoSuchElementException("Could not find a match");
    }

    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix, int limit, CharSequence truncated, e74 transform) {
        y45.j(separator, "separator");
        y45.j(prefix, "prefix");
        y45.j(postfix, "postfix");
        y45.j(truncated, "truncated");
        y45.j(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        float[] fArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            sb.append(postfix);
            break;
        }
        int i = 0;
        int i2 = 0;
        loop0: while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8;
                int i4 = 8 - ((~(i - length)) >>> 31);
                for (int i5 = 0; i5 < i4; i5++) {
                    if ((j & 255) < 128) {
                        float f = fArr[(i << 3) + i5];
                        if (i2 == limit) {
                            sb.append(truncated);
                            break loop0;
                        }
                        if (i2 != 0) {
                            sb.append(separator);
                        }
                        sb.append((CharSequence) transform.invoke(Float.valueOf(f)));
                        i2++;
                        i3 = 8;
                    }
                    j >>= i3;
                }
                if (i4 == i3) {
                }
                sb.append(postfix);
                break;
            }
            if (i == length) {
                sb.append(postfix);
                break;
            }
            i++;
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, e74 e74Var) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(e74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        float[] fArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            sb.append(charSequence3);
            break;
        }
        int i2 = 0;
        int i3 = 0;
        loop0: while (true) {
            long j = jArr[i2];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i4 = 8 - ((~(i2 - length)) >>> 31);
                for (int i5 = 0; i5 < i4; i5++) {
                    if ((255 & j) < 128) {
                        float f = fArr[(i2 << 3) + i5];
                        if (i3 == i) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i3 != 0) {
                            sb.append(charSequence);
                        }
                        sb.append((CharSequence) e74Var.invoke(Float.valueOf(f)));
                        i3++;
                    }
                    j >>= 8;
                }
                if (i4 == 8) {
                }
                sb.append(charSequence3);
                break;
            }
            if (i2 == length) {
                sb.append(charSequence3);
                break;
            }
            i2++;
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x007e A[DONT_INVERT, PHI: r9
      0x007e: PHI (r9v2 int) = (r9v1 int), (r9v3 int) binds: [B:6:0x003f, B:18:0x007c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:20:0x0080 A[LOOP:0: B:5:0x0031->B:20:0x0080, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x0083 A[SYNTHETIC] */
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, e74 e74Var) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(e74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        float[] fArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            sb.append(charSequence3);
            break;
        }
        int i = 0;
        int i2 = 0;
        loop0: while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j) < 128) {
                        float f = fArr[(i << 3) + i4];
                        if (i2 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i2 != 0) {
                            sb.append(charSequence);
                        }
                        sb.append((CharSequence) e74Var.invoke(Float.valueOf(f)));
                        i2++;
                    }
                    j >>= 8;
                }
                if (i3 == 8) {
                    if (i == length) {
                        i++;
                    }
                }
                sb.append(charSequence3);
                break;
            }
            if (i == length) {
                sb.append(charSequence3);
                break;
            }
            i++;
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0078 A[DONT_INVERT, PHI: r8
      0x0078: PHI (r8v2 int) = (r8v1 int), (r8v3 int) binds: [B:6:0x0039, B:18:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:20:0x007a A[LOOP:0: B:5:0x002b->B:20:0x007a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x007d A[SYNTHETIC] */
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, e74 e74Var) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(e74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        float[] fArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            sb.append((CharSequence) "");
            break;
        }
        int i = 0;
        int i2 = 0;
        loop0: while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j) < 128) {
                        float f = fArr[(i << 3) + i4];
                        if (i2 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i2 != 0) {
                            sb.append(charSequence);
                        }
                        sb.append((CharSequence) e74Var.invoke(Float.valueOf(f)));
                        i2++;
                    }
                    j >>= 8;
                }
                if (i3 == 8) {
                    if (i == length) {
                        i++;
                    }
                }
                sb.append((CharSequence) "");
                break;
            }
            if (i == length) {
                sb.append((CharSequence) "");
                break;
            }
            i++;
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0072 A[DONT_INVERT, PHI: r9
      0x0072: PHI (r9v2 int) = (r9v1 int), (r9v3 int) binds: [B:6:0x0033, B:18:0x0070] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:20:0x0074 A[LOOP:0: B:5:0x0025->B:20:0x0074, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x0077 A[SYNTHETIC] */
    public final String joinToString(CharSequence charSequence, e74 e74Var) {
        y45.j(charSequence, "separator");
        y45.j(e74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        float[] fArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            sb.append((CharSequence) "");
            break;
        }
        int i = 0;
        int i2 = 0;
        loop0: while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j) < 128) {
                        float f = fArr[(i << 3) + i4];
                        if (i2 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i2 != 0) {
                            sb.append(charSequence);
                        }
                        sb.append((CharSequence) e74Var.invoke(Float.valueOf(f)));
                        i2++;
                    }
                    j >>= 8;
                }
                if (i3 == 8) {
                    if (i == length) {
                        i++;
                    }
                }
                sb.append((CharSequence) "");
                break;
            }
            if (i == length) {
                sb.append((CharSequence) "");
                break;
            }
            i++;
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x006e A[DONT_INVERT, PHI: r8
      0x006e: PHI (r8v2 int) = (r8v1 int), (r8v3 int) binds: [B:6:0x002d, B:18:0x006c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:20:0x0070 A[LOOP:0: B:5:0x001f->B:20:0x0070, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x0073 A[SYNTHETIC] */
    public final String joinToString(e74 e74Var) {
        y45.j(e74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        float[] fArr = this.elements;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            sb.append((CharSequence) "");
            break;
        }
        int i = 0;
        int i2 = 0;
        loop0: while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i3 = 8 - ((~(i - length)) >>> 31);
                for (int i4 = 0; i4 < i3; i4++) {
                    if ((255 & j) < 128) {
                        float f = fArr[(i << 3) + i4];
                        if (i2 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i2 != 0) {
                            sb.append((CharSequence) ", ");
                        }
                        sb.append((CharSequence) e74Var.invoke(Float.valueOf(f)));
                        i2++;
                    }
                    j >>= 8;
                }
                if (i3 == 8) {
                    if (i == length) {
                        i++;
                    }
                }
                sb.append((CharSequence) "");
                break;
            }
            if (i == length) {
                sb.append((CharSequence) "");
                break;
            }
            i++;
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
