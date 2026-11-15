package okio;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0015B\u001f\b\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0011\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000eH\u0096\u0002R\u001e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0006X\u0080\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lokio/Options;", "Lkotlin/collections/AbstractList;", "Lokio/ByteString;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "byteStrings", "", "trie", "", "([Lokio/ByteString;[I)V", "getByteStrings$okio", "()[Lokio/ByteString;", "[Lokio/ByteString;", "size", "", "getSize", "()I", "getTrie$okio", "()[I", "get", "index", "Companion", "okio"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class Options extends AbstractList<ByteString> implements RandomAccess {

    public static final Companion INSTANCE = new Companion(null);
    private final ByteString[] byteStrings;
    private final int[] trie;

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JT\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\r2\b\b\u0002\u0010\u0012\u001a\u00020\r2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\u000fH\u0002J!\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u0016\"\u00020\u0010H\u0007¢\u0006\u0002\u0010\u0017R\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, d2 = {"Lokio/Options$Companion;", "", "()V", "intCount", "", "Lokio/Buffer;", "getIntCount", "(Lokio/Buffer;)J", "buildTrieRecursive", "", "nodeOffset", "node", "byteStringOffset", "", "byteStrings", "", "Lokio/ByteString;", "fromIndex", "toIndex", "indexes", "of", "Lokio/Options;", "", "([Lokio/ByteString;)Lokio/Options;", "okio"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void buildTrieRecursive(long nodeOffset, Buffer node, int byteStringOffset, List<? extends ByteString> byteStrings, int fromIndex, int toIndex, List<Integer> indexes) throws IOException {
            int i10;
            int i11;
            int i12;
            int i13 = byteStringOffset;
            if (fromIndex >= toIndex) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            for (int i14 = fromIndex; i14 < toIndex; i14++) {
                if (byteStrings.get(i14).size() < i13) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
            }
            ByteString byteString = byteStrings.get(fromIndex);
            ByteString byteString2 = byteStrings.get(toIndex - 1);
            int i15 = -1;
            if (i13 == byteString.size()) {
                int iIntValue = indexes.get(fromIndex).intValue();
                int i16 = fromIndex + 1;
                ByteString byteString3 = byteStrings.get(i16);
                i10 = i16;
                i11 = iIntValue;
                byteString = byteString3;
            } else {
                i10 = fromIndex;
                i11 = -1;
            }
            if (byteString.getByte(i13) == byteString2.getByte(i13)) {
                int iMin = Math.min(byteString.size(), byteString2.size());
                int i17 = 0;
                for (int i18 = i13; i18 < iMin && byteString.getByte(i18) == byteString2.getByte(i18); i18++) {
                    i17++;
                }
                long intCount = nodeOffset + getIntCount(node) + ((long) 2) + ((long) i17) + 1;
                node.writeInt(-i17);
                node.writeInt(i11);
                int i19 = i17 + i13;
                while (i13 < i19) {
                    node.writeInt(byteString.getByte(i13) & 255);
                    i13++;
                }
                if (i10 + 1 == toIndex) {
                    if (i19 != byteStrings.get(i10).size()) {
                        throw new IllegalStateException("Check failed.");
                    }
                    node.writeInt(indexes.get(i10).intValue());
                    return;
                } else {
                    Buffer buffer = new Buffer();
                    node.writeInt(((int) (getIntCount(buffer) + intCount)) * (-1));
                    buildTrieRecursive(intCount, buffer, i19, byteStrings, i10, toIndex, indexes);
                    node.writeAll(buffer);
                    return;
                }
            }
            int i20 = 1;
            for (int i21 = i10 + 1; i21 < toIndex; i21++) {
                if (byteStrings.get(i21 - 1).getByte(i13) != byteStrings.get(i21).getByte(i13)) {
                    i20++;
                }
            }
            long intCount2 = nodeOffset + getIntCount(node) + ((long) 2) + ((long) (i20 * 2));
            node.writeInt(i20);
            node.writeInt(i11);
            for (int i22 = i10; i22 < toIndex; i22++) {
                byte b10 = byteStrings.get(i22).getByte(i13);
                if (i22 == i10 || b10 != byteStrings.get(i22 - 1).getByte(i13)) {
                    node.writeInt(b10 & 255);
                }
            }
            Buffer buffer2 = new Buffer();
            while (i10 < toIndex) {
                byte b11 = byteStrings.get(i10).getByte(i13);
                int i23 = i10 + 1;
                int i24 = i23;
                while (true) {
                    if (i24 >= toIndex) {
                        i12 = toIndex;
                        break;
                    } else {
                        if (b11 != byteStrings.get(i24).getByte(i13)) {
                            i12 = i24;
                            break;
                        }
                        i24++;
                    }
                }
                if (i23 == i12 && i13 + 1 == byteStrings.get(i10).size()) {
                    node.writeInt(indexes.get(i10).intValue());
                } else {
                    node.writeInt(((int) (intCount2 + getIntCount(buffer2))) * i15);
                    buildTrieRecursive(intCount2, buffer2, i13 + 1, byteStrings, i10, i12, indexes);
                }
                buffer2 = buffer2;
                i10 = i12;
                i15 = -1;
            }
            node.writeAll(buffer2);
        }

        static void buildTrieRecursive$default(Companion companion, long j10, Buffer buffer, int i10, List list, int i11, int i12, List list2, int i13, Object obj) throws IOException {
            companion.buildTrieRecursive((i13 & 1) != 0 ? 0L : j10, buffer, (i13 & 4) != 0 ? 0 : i10, list, (i13 & 16) != 0 ? 0 : i11, (i13 & 32) != 0 ? list.size() : i12, list2);
        }

        private final long getIntCount(Buffer buffer) {
            return buffer.size() / ((long) 4);
        }

        @JvmStatic
        public final Options of(ByteString... byteStrings) throws IOException {
            Intrinsics.h(byteStrings, "byteStrings");
            DefaultConstructorMarker defaultConstructorMarker = null;
            int i10 = 0;
            if (byteStrings.length == 0) {
                return new Options(new ByteString[0], new int[]{0, -1}, defaultConstructorMarker);
            }
            List listJ0 = ArraysKt.J0(byteStrings);
            CollectionsKt.z(listJ0);
            ArrayList arrayList = new ArrayList(byteStrings.length);
            for (ByteString byteString : byteStrings) {
                arrayList.add(-1);
            }
            Integer[] numArr = (Integer[]) arrayList.toArray(new Integer[0]);
            List listQ = CollectionsKt.q(Arrays.copyOf(numArr, numArr.length));
            int length = byteStrings.length;
            int i11 = 0;
            int i12 = 0;
            while (i11 < length) {
                listQ.set(CollectionsKt.k(listJ0, byteStrings[i11], 0, 0, 6, null), Integer.valueOf(i12));
                i11++;
                i12++;
            }
            if (((ByteString) listJ0.get(0)).size() <= 0) {
                throw new IllegalArgumentException("the empty byte string is not a supported option");
            }
            int i13 = 0;
            while (i13 < listJ0.size()) {
                ByteString byteString2 = (ByteString) listJ0.get(i13);
                int i14 = i13 + 1;
                int i15 = i14;
                while (i15 < listJ0.size()) {
                    ByteString byteString3 = (ByteString) listJ0.get(i15);
                    if (!byteString3.startsWith(byteString2)) {
                        break;
                    }
                    if (byteString3.size() == byteString2.size()) {
                        throw new IllegalArgumentException(("duplicate option: " + byteString3).toString());
                    }
                    if (((Number) listQ.get(i15)).intValue() > ((Number) listQ.get(i13)).intValue()) {
                        listJ0.remove(i15);
                        listQ.remove(i15);
                    } else {
                        i15++;
                    }
                }
                i13 = i14;
            }
            Buffer buffer = new Buffer();
            buildTrieRecursive$default(this, 0L, buffer, 0, listJ0, 0, 0, listQ, 53, null);
            int[] iArr = new int[(int) getIntCount(buffer)];
            while (!buffer.exhausted()) {
                iArr[i10] = buffer.readInt();
                i10++;
            }
            Object[] objArrCopyOf = Arrays.copyOf(byteStrings, byteStrings.length);
            Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
            return new Options((ByteString[]) objArrCopyOf, iArr, defaultConstructorMarker);
        }

        private Companion() {
        }
    }

    public Options(ByteString[] byteStringArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteStringArr, iArr);
    }

    @JvmStatic
    public static final Options of(ByteString... byteStringArr) {
        return INSTANCE.of(byteStringArr);
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return contains((ByteString) obj);
        }
        return false;
    }

    public final ByteString[] getByteStrings() {
        return this.byteStrings;
    }

    @Override
    public int get_size() {
        return this.byteStrings.length;
    }

    public final int[] getTrie() {
        return this.trie;
    }

    @Override
    public final int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return indexOf((ByteString) obj);
        }
        return -1;
    }

    @Override
    public final int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return lastIndexOf((ByteString) obj);
        }
        return -1;
    }

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.byteStrings = byteStringArr;
        this.trie = iArr;
    }

    public boolean contains(ByteString byteString) {
        return super.contains((Object) byteString);
    }

    @Override
    public ByteString get(int index) {
        return this.byteStrings[index];
    }

    public int indexOf(ByteString byteString) {
        return super.indexOf((Object) byteString);
    }

    public int lastIndexOf(ByteString byteString) {
        return super.lastIndexOf((Object) byteString);
    }
}
