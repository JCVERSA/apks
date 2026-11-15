package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.gslb.NetResponse;
import defpackage.c74;
import defpackage.e74;
import defpackage.s74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u0016\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\t\b\u0004¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\u0007J\r\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\u0007J\r\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u0007J\u001a\u0010\r\u001a\u0004\u0018\u00018\u00002\u0006\u0010\f\u001a\u00020\u000bH\u0086\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0010\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00028\u0000¢\u0006\u0004\b\u0010\u0010\u0011J)\u0010\u0013\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u0018\u001a\u00020\u00162\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00160\u0015H\u0081\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019J-\u0010\u001b\u001a\u00020\u00162\u0018\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00160\u001aH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ'\u0010\u001d\u001a\u00020\u00162\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00160\u0015H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u0019J'\u0010\u001e\u001a\u00020\u00162\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00160\u0015H\u0086\bø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u0019J-\u0010 \u001a\u00020\u00052\u0018\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u001aH\u0086\bø\u0001\u0000¢\u0006\u0004\b \u0010!J-\u0010\u0006\u001a\u00020\u00052\u0018\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u001aH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0006\u0010!J\r\u0010\"\u001a\u00020\u000b¢\u0006\u0004\b\"\u0010#J-\u0010\"\u001a\u00020\u000b2\u0018\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u001aH\u0086\bø\u0001\u0000¢\u0006\u0004\b\"\u0010$J\u0018\u0010%\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0086\u0002¢\u0006\u0004\b%\u0010&J\u0015\u0010'\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b'\u0010&J\u0015\u0010)\u001a\u00020\u00052\u0006\u0010(\u001a\u00028\u0000¢\u0006\u0004\b)\u0010*JA\u00102\u001a\u0002012\b\b\u0002\u0010,\u001a\u00020+2\b\b\u0002\u0010-\u001a\u00020+2\b\b\u0002\u0010.\u001a\u00020+2\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u00020+H\u0007¢\u0006\u0004\b2\u00103Ja\u00102\u001a\u0002012\b\b\u0002\u0010,\u001a\u00020+2\b\b\u0002\u0010-\u001a\u00020+2\b\b\u0002\u0010.\u001a\u00020+2\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u00020+2\u001a\b\u0004\u00104\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020+0\u001aH\u0087\bø\u0001\u0000¢\u0006\u0004\b2\u00105J\u000f\u00106\u001a\u00020\u000bH\u0016¢\u0006\u0004\b6\u0010#J\u001a\u00108\u001a\u00020\u00052\b\u00107\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b8\u0010*J\u000f\u00109\u001a\u000201H\u0016¢\u0006\u0004\b9\u0010:J\u0018\u0010=\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0080\b¢\u0006\u0004\b;\u0010<R\u001c\u0010?\u001a\u00020>8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\b?\u0010@\u0012\u0004\bA\u0010\u0004R\u001c\u0010C\u001a\u00020B8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bC\u0010D\u0012\u0004\bE\u0010\u0004R$\u0010G\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020F8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bG\u0010H\u0012\u0004\bI\u0010\u0004R\u001c\u0010J\u001a\u00020\u000b8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bJ\u0010K\u0012\u0004\bL\u0010\u0004R\u001c\u0010M\u001a\u00020\u000b8\u0000@\u0000X\u0081\u000e¢\u0006\f\n\u0004\bM\u0010K\u0012\u0004\bN\u0010\u0004R\u0011\u0010P\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\bO\u0010#R\u0011\u0010R\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\bQ\u0010#\u0082\u0001\u0001S\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006T"}, d2 = {"Landroidx/collection/IntObjectMap;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", MethodDecl.initName, "()V", "", "any", "()Z", "none", "isEmpty", "isNotEmpty", "", "key", "get", "(I)Ljava/lang/Object;", "defaultValue", "getOrDefault", "(ILjava/lang/Object;)Ljava/lang/Object;", "Lkotlin/Function0;", "getOrElse", "(ILc74;)Ljava/lang/Object;", "Lkotlin/Function1;", "Lzfb;", "block", "forEachIndexed", "(Le74;)V", "Lkotlin/Function2;", "forEach", "(Ls74;)V", "forEachKey", "forEachValue", "predicate", TtmlNode.COMBINE_ALL, "(Ls74;)Z", "count", "()I", "(Ls74;)I", "contains", "(I)Z", "containsKey", ES6Iterator.VALUE_PROPERTY, "containsValue", "(Ljava/lang/Object;)Z", "", "separator", "prefix", "postfix", "limit", "truncated", "", "joinToString", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/String;", "transform", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls74;)Ljava/lang/String;", "hashCode", "other", "equals", "toString", "()Ljava/lang/String;", "findKeyIndex$collection", "(I)I", "findKeyIndex", "", TtmlNode.TAG_METADATA, "[J", "getMetadata$annotations", "", "keys", "[I", "getKeys$annotations", "", "values", "[Ljava/lang/Object;", "getValues$annotations", "_capacity", "I", "get_capacity$collection$annotations", "_size", "get_size$collection$annotations", "getCapacity", "capacity", "getSize", PlayAudioData.TAG_SIZE, "Landroidx/collection/MutableIntObjectMap;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class IntObjectMap<V> {
    public int _capacity;
    public int _size;
    public int[] keys;
    public long[] metadata;
    public Object[] values;

    public IntObjectMap(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static void getKeys$annotations() {
    }

    public static void getMetadata$annotations() {
    }

    public static void getValues$annotations() {
    }

    public static void get_capacity$collection$annotations() {
    }

    public static void get_size$collection$annotations() {
    }

    public static String joinToString$default(IntObjectMap intObjectMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, int i2, Object obj) {
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
        return intObjectMap.joinToString(charSequence, charSequence5, charSequence6, i3, charSequence4);
    }

    public final boolean all(s74 predicate) {
        y45.j(predicate, "predicate");
        int[] iArr = this.keys;
        Object[] objArr = this.values;
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
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        if (!((Boolean) predicate.invoke(Integer.valueOf(iArr[i4]), objArr[i4])).booleanValue()) {
                            return false;
                        }
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

    public final boolean contains(int key) {
        int iNumberOfTrailingZeros;
        int iHashCode = Integer.hashCode(key) * ScatterMapKt.MurmurHashC1;
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
                if (this.keys[iNumberOfTrailingZeros] == key) {
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

    public final boolean containsKey(int key) {
        int iNumberOfTrailingZeros;
        int iHashCode = Integer.hashCode(key) * ScatterMapKt.MurmurHashC1;
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
                if (this.keys[iNumberOfTrailingZeros] == key) {
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

    /* JADX WARN: Code duplicated, block: B:17:0x0043 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0045 A[LOOP:0: B:5:0x000b->B:18:0x0045, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x0048 A[SYNTHETIC] */
    public final boolean containsValue(V value) {
        Object[] objArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128 && y45.e(value, objArr[(i << 3) + i3])) {
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

    public final int count() {
        return get_size();
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0073 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x0075 A[LOOP:0: B:14:0x0027->B:33:0x0075, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:35:0x0078 A[EDGE_INSN: B:35:0x0078->B:34:0x0078 BREAK  A[LOOP:0: B:14:0x0027->B:33:0x0075], SYNTHETIC] */
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof IntObjectMap)) {
            return false;
        }
        IntObjectMap intObjectMap = (IntObjectMap) other;
        if (intObjectMap.get_size() != get_size()) {
            return false;
        }
        int[] iArr = this.keys;
        Object[] objArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i != length) {
                        break;
                        break;
                    }
                    i++;
                } else {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            int i5 = iArr[i4];
                            Object obj = objArr[i4];
                            if (obj == null) {
                                if (intObjectMap.get(i5) != null || !intObjectMap.containsKey(i5)) {
                                    return false;
                                }
                            } else if (!y45.e(obj, intObjectMap.get(i5))) {
                                return false;
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                    if (i != length) {
                        break;
                    }
                    i++;
                }
            }
        }
        return true;
    }

    public final int findKeyIndex$collection(int key) {
        int iHashCode = Integer.hashCode(key) * ScatterMapKt.MurmurHashC1;
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
                if (this.keys[iNumberOfTrailingZeros] == key) {
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

    public final void forEach(s74 block) {
        y45.j(block, "block");
        int[] iArr = this.keys;
        Object[] objArr = this.values;
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
                        block.invoke(Integer.valueOf(iArr[i4]), objArr[i4]);
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

    public final void forEachIndexed(e74 block) {
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

    public final void forEachKey(e74 block) {
        y45.j(block, "block");
        int[] iArr = this.keys;
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
                        block.invoke(Integer.valueOf(iArr[(i << 3) + i3]));
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

    public final void forEachValue(e74 block) {
        y45.j(block, "block");
        Object[] objArr = this.values;
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
                        block.invoke(objArr[(i << 3) + i3]);
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

    public final V get(int key) {
        int iNumberOfTrailingZeros;
        int iHashCode = Integer.hashCode(key) * ScatterMapKt.MurmurHashC1;
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
                if (this.keys[iNumberOfTrailingZeros] == key) {
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
        if (iNumberOfTrailingZeros >= 0) {
            return (V) this.values[iNumberOfTrailingZeros];
        }
        return null;
    }

    public final int get_capacity() {
        return this._capacity;
    }

    public final V getOrDefault(int key, V defaultValue) {
        int iNumberOfTrailingZeros;
        int iHashCode = Integer.hashCode(key) * ScatterMapKt.MurmurHashC1;
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
                if (this.keys[iNumberOfTrailingZeros] == key) {
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
        return iNumberOfTrailingZeros >= 0 ? (V) this.values[iNumberOfTrailingZeros] : defaultValue;
    }

    public final V getOrElse(int key, c74 defaultValue) {
        y45.j(defaultValue, "defaultValue");
        V v = get(key);
        return v == null ? (V) defaultValue.invoke() : v;
    }

    public final int get_size() {
        return this._size;
    }

    public int hashCode() {
        int[] iArr = this.keys;
        Object[] objArr = this.values;
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
                            int i5 = (i2 << 3) + i4;
                            int i6 = iArr[i5];
                            Object obj = objArr[i5];
                            iHashCode += (obj != null ? obj.hashCode() : 0) ^ Integer.hashCode(i6);
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

    /* JADX WARN: Code duplicated, block: B:23:0x0074 A[DONT_INVERT, PHI: r8
      0x0074: PHI (r8v2 int) = (r8v1 int), (r8v3 int) binds: [B:10:0x0031, B:22:0x0072] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:24:0x0076 A[LOOP:0: B:9:0x0023->B:24:0x0076, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x0079 A[EDGE_INSN: B:28:0x0079->B:25:0x0079 BREAK  A[LOOP:0: B:9:0x0023->B:24:0x0076], SYNTHETIC] */
    public String toString() {
        if (isEmpty()) {
            return NetResponse.EMPTY_RESPONSE;
        }
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        int[] iArr = this.keys;
        Object[] objArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            int i2 = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i != length) {
                        break;
                        break;
                    }
                    i++;
                } else {
                    int i3 = 8 - ((~(i - length)) >>> 31);
                    for (int i4 = 0; i4 < i3; i4++) {
                        if ((255 & j) < 128) {
                            int i5 = (i << 3) + i4;
                            int i6 = iArr[i5];
                            Object obj = objArr[i5];
                            sb.append(i6);
                            sb.append("=");
                            if (obj == this) {
                                obj = "(this)";
                            }
                            sb.append(obj);
                            i2++;
                            if (i2 < this._size) {
                                sb.append(',');
                                sb.append(' ');
                            }
                        }
                        j >>= 8;
                    }
                    if (i3 != 8) {
                        break;
                    }
                    if (i != length) {
                        break;
                    }
                    i++;
                }
            }
        }
        sb.append('}');
        String string = sb.toString();
        y45.i(string, "s.append('}').toString()");
        return string;
    }

    private IntObjectMap() {
        this.metadata = ScatterMapKt.EmptyGroup;
        this.keys = IntSetKt.getEmptyIntArray();
        this.values = ContainerHelpersKt.EMPTY_OBJECTS;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0056 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0058 A[LOOP:0: B:5:0x0012->B:18:0x0058, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x005b A[SYNTHETIC] */
    public final boolean any(s74 predicate) {
        y45.j(predicate, "predicate");
        int[] iArr = this.keys;
        Object[] objArr = this.values;
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
                            int i4 = (i << 3) + i3;
                            if (((Boolean) predicate.invoke(Integer.valueOf(iArr[i4]), objArr[i4])).booleanValue()) {
                                return true;
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
        return false;
    }

    public final int count(s74 predicate) {
        y45.j(predicate, "predicate");
        int[] iArr = this.keys;
        Object[] objArr = this.values;
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
                        if ((255 & j) < 128) {
                            int i6 = (i2 << 3) + i5;
                            if (((Boolean) predicate.invoke(Integer.valueOf(iArr[i6]), objArr[i6])).booleanValue()) {
                                i3++;
                            }
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

    public static String joinToString$default(IntObjectMap intObjectMap, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, s74 s74Var, int i2, Object obj) {
        long[] jArr;
        int i3;
        if (obj == null) {
            CharSequence charSequence5 = (i2 & 1) != 0 ? ", " : charSequence;
            CharSequence charSequence6 = (i2 & 2) != 0 ? "" : charSequence2;
            CharSequence charSequence7 = (i2 & 4) == 0 ? charSequence3 : "";
            int i4 = (i2 & 8) != 0 ? -1 : i;
            CharSequence charSequence8 = (i2 & 16) != 0 ? "..." : charSequence4;
            y45.j(charSequence5, "separator");
            y45.j(charSequence6, "prefix");
            y45.j(charSequence7, "postfix");
            y45.j(charSequence8, "truncated");
            y45.j(s74Var, "transform");
            StringBuilder sb = new StringBuilder();
            sb.append(charSequence6);
            int[] iArr = intObjectMap.keys;
            Object[] objArr = intObjectMap.values;
            long[] jArr2 = intObjectMap.metadata;
            int length = jArr2.length - 2;
            if (length < 0) {
                sb.append(charSequence7);
                break;
            }
            int i5 = 0;
            int i6 = 0;
            loop0: while (true) {
                long j = jArr2[i5];
                int i7 = i5;
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i8 = 8;
                    int i9 = 8 - ((~(i7 - length)) >>> 31);
                    int i10 = 0;
                    while (i10 < i9) {
                        if ((j & 255) < 128) {
                            int i11 = (i7 << 3) + i10;
                            int i12 = iArr[i11];
                            Object obj2 = objArr[i11];
                            if (i6 == i4) {
                                sb.append(charSequence8);
                                break loop0;
                            }
                            if (i6 != 0) {
                                sb.append(charSequence5);
                            }
                            sb.append((CharSequence) s74Var.invoke(Integer.valueOf(i12), obj2));
                            i6++;
                            i3 = 8;
                        } else {
                            i3 = i8;
                        }
                        j >>= i3;
                        i10++;
                        i8 = i3;
                        jArr2 = jArr2;
                    }
                    jArr = jArr2;
                    if (i9 == i8) {
                    }
                    sb.append(charSequence7);
                    break;
                }
                jArr = jArr2;
                if (i7 == length) {
                    sb.append(charSequence7);
                    break;
                }
                i5 = i7 + 1;
                jArr2 = jArr;
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
        long[] jArr;
        int i;
        y45.j(separator, "separator");
        y45.j(prefix, "prefix");
        y45.j(postfix, "postfix");
        y45.j(truncated, "truncated");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        int[] iArr = this.keys;
        Object[] objArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length < 0) {
            sb.append(postfix);
            break;
        }
        int i2 = 0;
        int i3 = 0;
        loop0: while (true) {
            long j = jArr2[i2];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i4 = 8;
                int i5 = 8 - ((~(i2 - length)) >>> 31);
                int i6 = 0;
                while (i6 < i5) {
                    if ((j & 255) < 128) {
                        int i7 = (i2 << 3) + i6;
                        int i8 = iArr[i7];
                        Object obj = objArr[i7];
                        if (i3 == limit) {
                            sb.append(truncated);
                            break loop0;
                        }
                        if (i3 != 0) {
                            sb.append(separator);
                        }
                        sb.append(i8);
                        sb.append('=');
                        sb.append(obj);
                        i3++;
                        i = 8;
                    } else {
                        i = i4;
                    }
                    j >>= i;
                    i6++;
                    i4 = i;
                    jArr2 = jArr2;
                }
                jArr = jArr2;
                if (i5 == i4) {
                }
                sb.append(postfix);
                break;
            }
            jArr = jArr2;
            if (i2 == length) {
                sb.append(postfix);
                break;
            }
            i2++;
            jArr2 = jArr;
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix, int limit, CharSequence truncated, s74 transform) {
        long[] jArr;
        int i;
        y45.j(separator, "separator");
        y45.j(prefix, "prefix");
        y45.j(postfix, "postfix");
        y45.j(truncated, "truncated");
        y45.j(transform, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        int[] iArr = this.keys;
        Object[] objArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length < 0) {
            sb.append(postfix);
            break;
        }
        int i2 = 0;
        int i3 = 0;
        loop0: while (true) {
            long j = jArr2[i2];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i4 = 8;
                int i5 = 8 - ((~(i2 - length)) >>> 31);
                int i6 = 0;
                while (i6 < i5) {
                    if ((j & 255) < 128) {
                        int i7 = (i2 << 3) + i6;
                        int i8 = iArr[i7];
                        Object obj = objArr[i7];
                        if (i3 == limit) {
                            sb.append(truncated);
                            break loop0;
                        }
                        if (i3 != 0) {
                            sb.append(separator);
                        }
                        sb.append((CharSequence) transform.invoke(Integer.valueOf(i8), obj));
                        i3++;
                        i = 8;
                    } else {
                        i = i4;
                    }
                    j >>= i;
                    i6++;
                    i4 = i;
                    jArr2 = jArr2;
                }
                jArr = jArr2;
                if (i5 == i4) {
                }
                sb.append(postfix);
                break;
            }
            jArr = jArr2;
            if (i2 == length) {
                sb.append(postfix);
                break;
            }
            i2++;
            jArr2 = jArr;
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, s74 s74Var) {
        long[] jArr;
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(s74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        int[] iArr = this.keys;
        Object[] objArr = this.values;
        long[] jArr2 = this.metadata;
        int length = jArr2.length - 2;
        if (length < 0) {
            sb.append(charSequence3);
            break;
        }
        int i2 = 0;
        int i3 = 0;
        loop0: while (true) {
            long j = jArr2[i2];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i4 = 8;
                int i5 = 8 - ((~(i2 - length)) >>> 31);
                int i6 = 0;
                while (i6 < i5) {
                    if ((j & 255) < 128) {
                        int i7 = (i2 << 3) + i6;
                        int i8 = iArr[i7];
                        Object obj = objArr[i7];
                        if (i3 == i) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i3 != 0) {
                            sb.append(charSequence);
                        }
                        sb.append((CharSequence) s74Var.invoke(Integer.valueOf(i8), obj));
                        i3++;
                    }
                    j >>= 8;
                    i6++;
                    i4 = 8;
                    jArr2 = jArr2;
                }
                jArr = jArr2;
                if (i5 == i4) {
                }
                sb.append(charSequence3);
                break;
            }
            jArr = jArr2;
            if (i2 == length) {
                sb.append(charSequence3);
                break;
            }
            i2++;
            jArr2 = jArr;
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x008a A[DONT_INVERT, PHI: r10
      0x008a: PHI (r10v2 int) = (r10v1 int), (r10v3 int) binds: [B:6:0x0041, B:20:0x0088] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:22:0x008c A[LOOP:0: B:5:0x0033->B:22:0x008c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x008f A[SYNTHETIC] */
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, s74 s74Var) {
        int i;
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(s74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        int[] iArr = this.keys;
        Object[] objArr = this.values;
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
            if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                if (i2 == length) {
                    sb.append(charSequence3);
                    break;
                }
                i2++;
            } else {
                int i4 = 8;
                int i5 = 8 - ((~(i2 - length)) >>> 31);
                int i6 = 0;
                while (i6 < i5) {
                    if ((j & 255) < 128) {
                        int i7 = (i2 << 3) + i6;
                        int i8 = iArr[i7];
                        Object obj = objArr[i7];
                        if (i3 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i3 != 0) {
                            sb.append(charSequence);
                        }
                        sb.append((CharSequence) s74Var.invoke(Integer.valueOf(i8), obj));
                        i3++;
                        i = 8;
                    } else {
                        i = i4;
                    }
                    j >>= i;
                    i6++;
                    i4 = i;
                }
                if (i5 == i4) {
                    if (i2 == length) {
                        i2++;
                    }
                }
                sb.append(charSequence3);
                break;
            }
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x007b A[DONT_INVERT, PHI: r9
      0x007b: PHI (r9v2 int) = (r9v1 int), (r9v3 int) binds: [B:6:0x003a, B:18:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:20:0x007d A[LOOP:0: B:5:0x002c->B:20:0x007d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x0080 A[SYNTHETIC] */
    public final String joinToString(CharSequence charSequence, CharSequence charSequence2, s74 s74Var) {
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(s74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append(charSequence2);
        int[] iArr = this.keys;
        Object[] objArr = this.values;
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
                        int i5 = (i << 3) + i4;
                        int i6 = iArr[i5];
                        Object obj = objArr[i5];
                        if (i2 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i2 != 0) {
                            sb.append(charSequence);
                        }
                        sb.append((CharSequence) s74Var.invoke(Integer.valueOf(i6), obj));
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

    /* JADX WARN: Code duplicated, block: B:21:0x007e A[DONT_INVERT, PHI: r10
      0x007e: PHI (r10v2 int) = (r10v1 int), (r10v3 int) binds: [B:6:0x0035, B:20:0x007c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:22:0x0080 A[LOOP:0: B:5:0x0027->B:22:0x0080, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x0083 A[SYNTHETIC] */
    public final String joinToString(CharSequence charSequence, s74 s74Var) {
        int i;
        y45.j(charSequence, "separator");
        y45.j(s74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int[] iArr = this.keys;
        Object[] objArr = this.values;
        long[] jArr = this.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            sb.append((CharSequence) "");
            break;
        }
        int i2 = 0;
        int i3 = 0;
        loop0: while (true) {
            long j = jArr[i2];
            if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                if (i2 == length) {
                    sb.append((CharSequence) "");
                    break;
                }
                i2++;
            } else {
                int i4 = 8;
                int i5 = 8 - ((~(i2 - length)) >>> 31);
                int i6 = 0;
                while (i6 < i5) {
                    if ((j & 255) < 128) {
                        int i7 = (i2 << 3) + i6;
                        int i8 = iArr[i7];
                        Object obj = objArr[i7];
                        if (i3 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i3 != 0) {
                            sb.append(charSequence);
                        }
                        sb.append((CharSequence) s74Var.invoke(Integer.valueOf(i8), obj));
                        i3++;
                        i = 8;
                    } else {
                        i = i4;
                    }
                    j >>= i;
                    i6++;
                    i4 = i;
                }
                if (i5 == i4) {
                    if (i2 == length) {
                        i2++;
                    }
                }
                sb.append((CharSequence) "");
                break;
            }
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0071 A[DONT_INVERT, PHI: r9
      0x0071: PHI (r9v2 int) = (r9v1 int), (r9v3 int) binds: [B:6:0x002e, B:18:0x006f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:20:0x0073 A[LOOP:0: B:5:0x0020->B:20:0x0073, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:26:0x0076 A[SYNTHETIC] */
    public final String joinToString(s74 s74Var) {
        y45.j(s74Var, "transform");
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int[] iArr = this.keys;
        Object[] objArr = this.values;
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
                        int i5 = (i << 3) + i4;
                        int i6 = iArr[i5];
                        Object obj = objArr[i5];
                        if (i2 == -1) {
                            sb.append((CharSequence) "...");
                            break loop0;
                        }
                        if (i2 != 0) {
                            sb.append((CharSequence) ", ");
                        }
                        sb.append((CharSequence) s74Var.invoke(Integer.valueOf(i6), obj));
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
