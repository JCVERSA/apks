package okio;

import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.c81;
import defpackage.g3;
import defpackage.hi;
import defpackage.y45;
import defpackage.y71;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.RandomAccess;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u0000 \u00182\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0018B!\b\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eR\"\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u00058\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\b\u001a\u00020\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\b\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lokio/Options;", "Lg3;", "Lokio/ByteString;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "", "byteStrings", "", "trie", MethodDecl.initName, "([Lokio/ByteString;[I)V", "", "index", "get", "(I)Lokio/ByteString;", "[Lokio/ByteString;", "getByteStrings$okio", "()[Lokio/ByteString;", "[I", "getTrie$okio", "()[I", "getSize", "()I", PlayAudioData.TAG_SIZE, "Companion", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Options extends g3 implements RandomAccess {

    public static final Companion INSTANCE = new Companion(null);
    private final ByteString[] byteStrings;
    private final int[] trie;

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J[\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0002\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\nH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J#\u0010\u0015\u001a\u00020\u00142\u0012\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000b0\u0013\"\u00020\u000bH\u0007¢\u0006\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0019\u001a\u00020\u0004*\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lokio/Options$Companion;", "", MethodDecl.initName, "()V", "", "nodeOffset", "Lokio/Buffer;", "node", "", "byteStringOffset", "", "Lokio/ByteString;", "byteStrings", "fromIndex", "toIndex", "indexes", "Lzfb;", "buildTrieRecursive", "(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V", "", "Lokio/Options;", "of", "([Lokio/ByteString;)Lokio/Options;", "getIntCount", "(Lokio/Buffer;)J", "intCount", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void buildTrieRecursive(long nodeOffset, Buffer node, int byteStringOffset, List<? extends ByteString> byteStrings, int fromIndex, int toIndex, List<Integer> indexes) throws IOException {
            int i;
            int i2;
            int i3;
            int i4 = byteStringOffset;
            if (fromIndex >= toIndex) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            for (int i5 = fromIndex; i5 < toIndex; i5++) {
                if (byteStrings.get(i5).size() < i4) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
            }
            ByteString byteString = byteStrings.get(fromIndex);
            ByteString byteString2 = byteStrings.get(toIndex - 1);
            int i6 = -1;
            if (i4 == byteString.size()) {
                int iIntValue = indexes.get(fromIndex).intValue();
                int i7 = fromIndex + 1;
                ByteString byteString3 = byteStrings.get(i7);
                i = i7;
                i2 = iIntValue;
                byteString = byteString3;
            } else {
                i = fromIndex;
                i2 = -1;
            }
            if (byteString.getByte(i4) == byteString2.getByte(i4)) {
                int iMin = Math.min(byteString.size(), byteString2.size());
                int i8 = 0;
                for (int i9 = i4; i9 < iMin && byteString.getByte(i9) == byteString2.getByte(i9); i9++) {
                    i8++;
                }
                long intCount = nodeOffset + getIntCount(node) + ((long) 2) + ((long) i8) + 1;
                node.writeInt(-i8);
                node.writeInt(i2);
                int i10 = i8 + i4;
                while (i4 < i10) {
                    node.writeInt(byteString.getByte(i4) & 255);
                    i4++;
                }
                if (i + 1 == toIndex) {
                    if (i10 != byteStrings.get(i).size()) {
                        throw new IllegalStateException("Check failed.");
                    }
                    node.writeInt(indexes.get(i).intValue());
                    return;
                } else {
                    Buffer buffer = new Buffer();
                    node.writeInt(((int) (getIntCount(buffer) + intCount)) * (-1));
                    buildTrieRecursive(intCount, buffer, i10, byteStrings, i, toIndex, indexes);
                    node.writeAll(buffer);
                    return;
                }
            }
            int i11 = 1;
            for (int i12 = i + 1; i12 < toIndex; i12++) {
                if (byteStrings.get(i12 - 1).getByte(i4) != byteStrings.get(i12).getByte(i4)) {
                    i11++;
                }
            }
            long intCount2 = nodeOffset + getIntCount(node) + ((long) 2) + ((long) (i11 * 2));
            node.writeInt(i11);
            node.writeInt(i2);
            for (int i13 = i; i13 < toIndex; i13++) {
                byte b = byteStrings.get(i13).getByte(i4);
                if (i13 == i || b != byteStrings.get(i13 - 1).getByte(i4)) {
                    node.writeInt(b & 255);
                }
            }
            Buffer buffer2 = new Buffer();
            while (i < toIndex) {
                byte b2 = byteStrings.get(i).getByte(i4);
                int i14 = i + 1;
                int i15 = i14;
                while (true) {
                    if (i15 >= toIndex) {
                        i3 = toIndex;
                        break;
                    } else {
                        if (b2 != byteStrings.get(i15).getByte(i4)) {
                            i3 = i15;
                            break;
                        }
                        i15++;
                    }
                }
                if (i14 == i3 && i4 + 1 == byteStrings.get(i).size()) {
                    node.writeInt(indexes.get(i).intValue());
                } else {
                    node.writeInt(((int) (intCount2 + getIntCount(buffer2))) * i6);
                    buildTrieRecursive(intCount2, buffer2, i4 + 1, byteStrings, i, i3, indexes);
                }
                buffer2 = buffer2;
                i = i3;
                i6 = -1;
            }
            node.writeAll(buffer2);
        }

        public static void buildTrieRecursive$default(Companion companion, long j, Buffer buffer, int i, List list, int i2, int i3, List list2, int i4, Object obj) throws IOException {
            companion.buildTrieRecursive((i4 & 1) != 0 ? 0L : j, buffer, (i4 & 4) != 0 ? 0 : i, list, (i4 & 16) != 0 ? 0 : i2, (i4 & 32) != 0 ? list.size() : i3, list2);
        }

        private final long getIntCount(Buffer buffer) {
            return buffer.size() / ((long) 4);
        }

        public final Options of(ByteString... byteStrings) throws IOException {
            y45.j(byteStrings, "byteStrings");
            DefaultConstructorMarker defaultConstructorMarker = null;
            int i = 0;
            if (byteStrings.length == 0) {
                return new Options(new ByteString[0], new int[]{0, -1}, defaultConstructorMarker);
            }
            List listM1 = hi.m1(byteStrings);
            c81.A(listM1);
            ArrayList arrayList = new ArrayList(byteStrings.length);
            for (ByteString byteString : byteStrings) {
                arrayList.add(-1);
            }
            Integer[] numArr = (Integer[]) arrayList.toArray(new Integer[0]);
            List listQ = y71.q(Arrays.copyOf(numArr, numArr.length));
            int length = byteStrings.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                listQ.set(y71.j(listM1, byteStrings[i2], 0, 0, 6, null), Integer.valueOf(i3));
                i2++;
                i3++;
            }
            if (((ByteString) listM1.get(0)).size() <= 0) {
                throw new IllegalArgumentException("the empty byte string is not a supported option");
            }
            int i4 = 0;
            while (i4 < listM1.size()) {
                ByteString byteString2 = (ByteString) listM1.get(i4);
                int i5 = i4 + 1;
                int i6 = i5;
                while (i6 < listM1.size()) {
                    ByteString byteString3 = (ByteString) listM1.get(i6);
                    if (!byteString3.startsWith(byteString2)) {
                        break;
                    }
                    if (byteString3.size() == byteString2.size()) {
                        throw new IllegalArgumentException(("duplicate option: " + byteString3).toString());
                    }
                    if (((Number) listQ.get(i6)).intValue() > ((Number) listQ.get(i4)).intValue()) {
                        listM1.remove(i6);
                        listQ.remove(i6);
                    } else {
                        i6++;
                    }
                }
                i4 = i5;
            }
            Buffer buffer = new Buffer();
            buildTrieRecursive$default(this, 0L, buffer, 0, listM1, 0, 0, listQ, 53, null);
            int[] iArr = new int[(int) getIntCount(buffer)];
            while (!buffer.exhausted()) {
                iArr[i] = buffer.readInt();
                i++;
            }
            Object[] objArrCopyOf = Arrays.copyOf(byteStrings, byteStrings.length);
            y45.i(objArrCopyOf, "copyOf(...)");
            return new Options((ByteString[]) objArrCopyOf, iArr, defaultConstructorMarker);
        }

        private Companion() {
        }
    }

    public Options(ByteString[] byteStringArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteStringArr, iArr);
    }

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
    public int getSize() {
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
