package com.google.protobuf;

import java.io.IOException;
import java.util.Arrays;

public final class p1 {
    private static final p1 DEFAULT_INSTANCE = new p1(0, new int[0], new Object[0], false);
    private static final int MIN_CAPACITY = 8;
    private int count;
    private boolean isMutable;
    private int memoizedSerializedSize;
    private Object[] objects;
    private int[] tags;

    private p1() {
        this(0, new int[8], new Object[8], true);
    }

    private void ensureCapacity(int i10) {
        int[] iArr = this.tags;
        if (i10 > iArr.length) {
            int i11 = this.count;
            int i12 = i11 + (i11 / 2);
            if (i12 >= i10) {
                i10 = i12;
            }
            if (i10 < 8) {
                i10 = 8;
            }
            this.tags = Arrays.copyOf(iArr, i10);
            this.objects = Arrays.copyOf(this.objects, i10);
        }
    }

    public static p1 getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    private static int hashCode(int[] iArr, int i10) {
        int i11 = 17;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 = (i11 * 31) + iArr[i12];
        }
        return i11;
    }

    private p1 mergeFrom(i iVar) throws IOException {
        int tag;
        do {
            tag = iVar.readTag();
            if (tag == 0) {
                break;
            }
        } while (mergeFieldFrom(tag, iVar));
        return this;
    }

    static p1 mutableCopyOf(p1 p1Var, p1 p1Var2) {
        int i10 = p1Var.count + p1Var2.count;
        int[] iArrCopyOf = Arrays.copyOf(p1Var.tags, i10);
        System.arraycopy(p1Var2.tags, 0, iArrCopyOf, p1Var.count, p1Var2.count);
        Object[] objArrCopyOf = Arrays.copyOf(p1Var.objects, i10);
        System.arraycopy(p1Var2.objects, 0, objArrCopyOf, p1Var.count, p1Var2.count);
        return new p1(i10, iArrCopyOf, objArrCopyOf, true);
    }

    static p1 newInstance() {
        return new p1();
    }

    private static boolean objectsEquals(Object[] objArr, Object[] objArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (!objArr[i11].equals(objArr2[i11])) {
                return false;
            }
        }
        return true;
    }

    private static boolean tagsEquals(int[] iArr, int[] iArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (iArr[i11] != iArr2[i11]) {
                return false;
            }
        }
        return true;
    }

    private static void writeField(int i10, Object obj, Writer writer) throws IOException {
        int tagFieldNumber = WireFormat.getTagFieldNumber(i10);
        int tagWireType = WireFormat.getTagWireType(i10);
        if (tagWireType == 0) {
            writer.writeInt64(tagFieldNumber, ((Long) obj).longValue());
            return;
        }
        if (tagWireType == 1) {
            writer.writeFixed64(tagFieldNumber, ((Long) obj).longValue());
            return;
        }
        if (tagWireType == 2) {
            writer.writeBytes(tagFieldNumber, (ByteString) obj);
            return;
        }
        if (tagWireType != 3) {
            if (tagWireType != 5) {
                throw new RuntimeException(InvalidProtocolBufferException.invalidWireType());
            }
            writer.writeFixed32(tagFieldNumber, ((Integer) obj).intValue());
        } else if (writer.fieldOrder() == Writer.FieldOrder.ASCENDING) {
            writer.writeStartGroup(tagFieldNumber);
            ((p1) obj).writeTo(writer);
            writer.writeEndGroup(tagFieldNumber);
        } else {
            writer.writeEndGroup(tagFieldNumber);
            ((p1) obj).writeTo(writer);
            writer.writeStartGroup(tagFieldNumber);
        }
    }

    void checkMutable() {
        if (!this.isMutable) {
            throw new UnsupportedOperationException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof p1)) {
            return false;
        }
        p1 p1Var = (p1) obj;
        int i10 = this.count;
        return i10 == p1Var.count && tagsEquals(this.tags, p1Var.tags, i10) && objectsEquals(this.objects, p1Var.objects, this.count);
    }

    public int getSerializedSize() {
        int iComputeUInt64Size;
        int i10 = this.memoizedSerializedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.count; i12++) {
            int i13 = this.tags[i12];
            int tagFieldNumber = WireFormat.getTagFieldNumber(i13);
            int tagWireType = WireFormat.getTagWireType(i13);
            if (tagWireType == 0) {
                iComputeUInt64Size = CodedOutputStream.computeUInt64Size(tagFieldNumber, ((Long) this.objects[i12]).longValue());
            } else if (tagWireType == 1) {
                iComputeUInt64Size = CodedOutputStream.computeFixed64Size(tagFieldNumber, ((Long) this.objects[i12]).longValue());
            } else if (tagWireType == 2) {
                iComputeUInt64Size = CodedOutputStream.computeBytesSize(tagFieldNumber, (ByteString) this.objects[i12]);
            } else if (tagWireType == 3) {
                iComputeUInt64Size = (CodedOutputStream.computeTagSize(tagFieldNumber) * 2) + ((p1) this.objects[i12]).getSerializedSize();
            } else {
                if (tagWireType != 5) {
                    throw new IllegalStateException(InvalidProtocolBufferException.invalidWireType());
                }
                iComputeUInt64Size = CodedOutputStream.computeFixed32Size(tagFieldNumber, ((Integer) this.objects[i12]).intValue());
            }
            i11 += iComputeUInt64Size;
        }
        this.memoizedSerializedSize = i11;
        return i11;
    }

    public int getSerializedSizeAsMessageSet() {
        int i10 = this.memoizedSerializedSize;
        if (i10 != -1) {
            return i10;
        }
        int iComputeRawMessageSetExtensionSize = 0;
        for (int i11 = 0; i11 < this.count; i11++) {
            iComputeRawMessageSetExtensionSize += CodedOutputStream.computeRawMessageSetExtensionSize(WireFormat.getTagFieldNumber(this.tags[i11]), (ByteString) this.objects[i11]);
        }
        this.memoizedSerializedSize = iComputeRawMessageSetExtensionSize;
        return iComputeRawMessageSetExtensionSize;
    }

    public void makeImmutable() {
        if (this.isMutable) {
            this.isMutable = false;
        }
    }

    boolean mergeFieldFrom(int i10, i iVar) throws IOException {
        checkMutable();
        int tagFieldNumber = WireFormat.getTagFieldNumber(i10);
        int tagWireType = WireFormat.getTagWireType(i10);
        if (tagWireType == 0) {
            storeField(i10, Long.valueOf(iVar.readInt64()));
            return true;
        }
        if (tagWireType == 1) {
            storeField(i10, Long.valueOf(iVar.readFixed64()));
            return true;
        }
        if (tagWireType == 2) {
            storeField(i10, iVar.readBytes());
            return true;
        }
        if (tagWireType == 3) {
            p1 p1Var = new p1();
            p1Var.mergeFrom(iVar);
            iVar.checkLastTagWas(WireFormat.makeTag(tagFieldNumber, 4));
            storeField(i10, p1Var);
            return true;
        }
        if (tagWireType == 4) {
            return false;
        }
        if (tagWireType != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        storeField(i10, Integer.valueOf(iVar.readFixed32()));
        return true;
    }

    p1 mergeLengthDelimitedField(int i10, ByteString byteString) {
        checkMutable();
        if (i10 == 0) {
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }
        storeField(WireFormat.makeTag(i10, 2), byteString);
        return this;
    }

    p1 mergeVarintField(int i10, int i11) {
        checkMutable();
        if (i10 == 0) {
            throw new IllegalArgumentException("Zero is not a valid field number.");
        }
        storeField(WireFormat.makeTag(i10, 0), Long.valueOf(i11));
        return this;
    }

    final void printWithIndent(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < this.count; i11++) {
            u0.printField(sb2, i10, String.valueOf(WireFormat.getTagFieldNumber(this.tags[i11])), this.objects[i11]);
        }
    }

    void storeField(int i10, Object obj) {
        checkMutable();
        ensureCapacity(this.count + 1);
        int[] iArr = this.tags;
        int i11 = this.count;
        iArr[i11] = i10;
        this.objects[i11] = obj;
        this.count = i11 + 1;
    }

    public void writeAsMessageSetTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i10 = 0; i10 < this.count; i10++) {
            codedOutputStream.writeRawMessageSetExtension(WireFormat.getTagFieldNumber(this.tags[i10]), (ByteString) this.objects[i10]);
        }
    }

    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        for (int i10 = 0; i10 < this.count; i10++) {
            int i11 = this.tags[i10];
            int tagFieldNumber = WireFormat.getTagFieldNumber(i11);
            int tagWireType = WireFormat.getTagWireType(i11);
            if (tagWireType == 0) {
                codedOutputStream.writeUInt64(tagFieldNumber, ((Long) this.objects[i10]).longValue());
            } else if (tagWireType == 1) {
                codedOutputStream.writeFixed64(tagFieldNumber, ((Long) this.objects[i10]).longValue());
            } else if (tagWireType == 2) {
                codedOutputStream.writeBytes(tagFieldNumber, (ByteString) this.objects[i10]);
            } else if (tagWireType == 3) {
                codedOutputStream.writeTag(tagFieldNumber, 3);
                ((p1) this.objects[i10]).writeTo(codedOutputStream);
                codedOutputStream.writeTag(tagFieldNumber, 4);
            } else {
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                codedOutputStream.writeFixed32(tagFieldNumber, ((Integer) this.objects[i10]).intValue());
            }
        }
    }

    private p1(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.memoizedSerializedSize = -1;
        this.count = i10;
        this.tags = iArr;
        this.objects = objArr;
        this.isMutable = z10;
    }

    private static int hashCode(Object[] objArr, int i10) {
        int iHashCode = 17;
        for (int i11 = 0; i11 < i10; i11++) {
            iHashCode = (iHashCode * 31) + objArr[i11].hashCode();
        }
        return iHashCode;
    }

    public int hashCode() {
        int i10 = this.count;
        return ((((527 + i10) * 31) + hashCode(this.tags, i10)) * 31) + hashCode(this.objects, this.count);
    }

    p1 mergeFrom(p1 p1Var) {
        if (p1Var.equals(getDefaultInstance())) {
            return this;
        }
        checkMutable();
        int i10 = this.count + p1Var.count;
        ensureCapacity(i10);
        System.arraycopy(p1Var.tags, 0, this.tags, this.count, p1Var.count);
        System.arraycopy(p1Var.objects, 0, this.objects, this.count, p1Var.count);
        this.count = i10;
        return this;
    }

    void writeAsMessageSetTo(Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            for (int i10 = this.count - 1; i10 >= 0; i10--) {
                writer.writeMessageSetItem(WireFormat.getTagFieldNumber(this.tags[i10]), this.objects[i10]);
            }
            return;
        }
        for (int i11 = 0; i11 < this.count; i11++) {
            writer.writeMessageSetItem(WireFormat.getTagFieldNumber(this.tags[i11]), this.objects[i11]);
        }
    }

    public void writeTo(Writer writer) throws IOException {
        if (this.count == 0) {
            return;
        }
        if (writer.fieldOrder() == Writer.FieldOrder.ASCENDING) {
            for (int i10 = 0; i10 < this.count; i10++) {
                writeField(this.tags[i10], this.objects[i10], writer);
            }
            return;
        }
        for (int i11 = this.count - 1; i11 >= 0; i11--) {
            writeField(this.tags[i11], this.objects[i11], writer);
        }
    }
}
