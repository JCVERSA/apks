package com.google.protobuf;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class k implements Writer {
    private final CodedOutputStream output;

    static class a {
        static final int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private k(CodedOutputStream codedOutputStream) {
        CodedOutputStream codedOutputStream2 = (CodedOutputStream) y.checkNotNull(codedOutputStream, "output");
        this.output = codedOutputStream2;
        codedOutputStream2.wrapper = this;
    }

    public static k forCodedOutput(CodedOutputStream codedOutputStream) {
        k kVar = codedOutputStream.wrapper;
        return kVar != null ? kVar : new k(codedOutputStream);
    }

    private <V> void writeDeterministicBooleanMapEntry(int i10, boolean z10, V v10, m0.b bVar) throws IOException {
        this.output.writeTag(i10, 2);
        this.output.writeUInt32NoTag(m0.computeSerializedSize(bVar, Boolean.valueOf(z10), v10));
        m0.writeTo(this.output, bVar, Boolean.valueOf(z10), v10);
    }

    private <V> void writeDeterministicIntegerMap(int i10, m0.b bVar, Map<Integer, V> map) throws IOException {
        int size = map.size();
        int[] iArr = new int[size];
        Iterator<Integer> it = map.keySet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            iArr[i11] = it.next().intValue();
            i11++;
        }
        Arrays.sort(iArr);
        for (int i12 = 0; i12 < size; i12++) {
            int i13 = iArr[i12];
            V v10 = map.get(Integer.valueOf(i13));
            this.output.writeTag(i10, 2);
            this.output.writeUInt32NoTag(m0.computeSerializedSize(bVar, Integer.valueOf(i13), v10));
            m0.writeTo(this.output, bVar, Integer.valueOf(i13), v10);
        }
    }

    private <V> void writeDeterministicLongMap(int i10, m0.b bVar, Map<Long, V> map) throws IOException {
        int size = map.size();
        long[] jArr = new long[size];
        Iterator<Long> it = map.keySet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            jArr[i11] = it.next().longValue();
            i11++;
        }
        Arrays.sort(jArr);
        for (int i12 = 0; i12 < size; i12++) {
            long j10 = jArr[i12];
            V v10 = map.get(Long.valueOf(j10));
            this.output.writeTag(i10, 2);
            this.output.writeUInt32NoTag(m0.computeSerializedSize(bVar, Long.valueOf(j10), v10));
            m0.writeTo(this.output, bVar, Long.valueOf(j10), v10);
        }
    }

    private <K, V> void writeDeterministicMap(int i10, m0.b bVar, Map<K, V> map) throws IOException {
        switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[bVar.keyType.ordinal()]) {
            case 1:
                V v10 = map.get(Boolean.FALSE);
                if (v10 != null) {
                    writeDeterministicBooleanMapEntry(i10, false, v10, bVar);
                }
                V v11 = map.get(Boolean.TRUE);
                if (v11 != null) {
                    writeDeterministicBooleanMapEntry(i10, true, v11, bVar);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                writeDeterministicIntegerMap(i10, bVar, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                writeDeterministicLongMap(i10, bVar, map);
                return;
            case 12:
                writeDeterministicStringMap(i10, bVar, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + bVar.keyType);
        }
    }

    private <V> void writeDeterministicStringMap(int i10, m0.b bVar, Map<String, V> map) throws IOException {
        int size = map.size();
        String[] strArr = new String[size];
        Iterator<String> it = map.keySet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            strArr[i11] = it.next();
            i11++;
        }
        Arrays.sort(strArr);
        for (int i12 = 0; i12 < size; i12++) {
            String str = strArr[i12];
            V v10 = map.get(str);
            this.output.writeTag(i10, 2);
            this.output.writeUInt32NoTag(m0.computeSerializedSize(bVar, str, v10));
            m0.writeTo(this.output, bVar, str, v10);
        }
    }

    private void writeLazyString(int i10, Object obj) throws IOException {
        if (obj instanceof String) {
            this.output.writeString(i10, (String) obj);
        } else {
            this.output.writeBytes(i10, (ByteString) obj);
        }
    }

    @Override
    public Writer.FieldOrder fieldOrder() {
        return Writer.FieldOrder.ASCENDING;
    }

    public int getTotalBytesWritten() {
        return this.output.getTotalBytesWritten();
    }

    @Override
    public void writeBool(int i10, boolean z10) throws IOException {
        this.output.writeBool(i10, z10);
    }

    @Override
    public void writeBoolList(int i10, List<Boolean> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.output.writeBool(i10, list.get(i11).booleanValue());
                i11++;
            }
            return;
        }
        this.output.writeTag(i10, 2);
        int iComputeBoolSizeNoTag = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeBoolSizeNoTag += CodedOutputStream.computeBoolSizeNoTag(list.get(i12).booleanValue());
        }
        this.output.writeUInt32NoTag(iComputeBoolSizeNoTag);
        while (i11 < list.size()) {
            this.output.writeBoolNoTag(list.get(i11).booleanValue());
            i11++;
        }
    }

    @Override
    public void writeBytes(int i10, ByteString byteString) throws IOException {
        this.output.writeBytes(i10, byteString);
    }

    @Override
    public void writeBytesList(int i10, List<ByteString> list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.output.writeBytes(i10, list.get(i11));
        }
    }

    @Override
    public void writeDouble(int i10, double d10) throws IOException {
        this.output.writeDouble(i10, d10);
    }

    @Override
    public void writeDoubleList(int i10, List<Double> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.output.writeDouble(i10, list.get(i11).doubleValue());
                i11++;
            }
            return;
        }
        this.output.writeTag(i10, 2);
        int iComputeDoubleSizeNoTag = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeDoubleSizeNoTag += CodedOutputStream.computeDoubleSizeNoTag(list.get(i12).doubleValue());
        }
        this.output.writeUInt32NoTag(iComputeDoubleSizeNoTag);
        while (i11 < list.size()) {
            this.output.writeDoubleNoTag(list.get(i11).doubleValue());
            i11++;
        }
    }

    @Override
    @Deprecated
    public void writeEndGroup(int i10) throws IOException {
        this.output.writeTag(i10, 4);
    }

    @Override
    public void writeEnum(int i10, int i11) throws IOException {
        this.output.writeEnum(i10, i11);
    }

    @Override
    public void writeEnumList(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.output.writeEnum(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.output.writeTag(i10, 2);
        int iComputeEnumSizeNoTag = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeEnumSizeNoTag += CodedOutputStream.computeEnumSizeNoTag(list.get(i12).intValue());
        }
        this.output.writeUInt32NoTag(iComputeEnumSizeNoTag);
        while (i11 < list.size()) {
            this.output.writeEnumNoTag(list.get(i11).intValue());
            i11++;
        }
    }

    @Override
    public void writeFixed32(int i10, int i11) throws IOException {
        this.output.writeFixed32(i10, i11);
    }

    @Override
    public void writeFixed32List(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.output.writeFixed32(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.output.writeTag(i10, 2);
        int iComputeFixed32SizeNoTag = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeFixed32SizeNoTag += CodedOutputStream.computeFixed32SizeNoTag(list.get(i12).intValue());
        }
        this.output.writeUInt32NoTag(iComputeFixed32SizeNoTag);
        while (i11 < list.size()) {
            this.output.writeFixed32NoTag(list.get(i11).intValue());
            i11++;
        }
    }

    @Override
    public void writeFixed64(int i10, long j10) throws IOException {
        this.output.writeFixed64(i10, j10);
    }

    @Override
    public void writeFixed64List(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.output.writeFixed64(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.output.writeTag(i10, 2);
        int iComputeFixed64SizeNoTag = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeFixed64SizeNoTag += CodedOutputStream.computeFixed64SizeNoTag(list.get(i12).longValue());
        }
        this.output.writeUInt32NoTag(iComputeFixed64SizeNoTag);
        while (i11 < list.size()) {
            this.output.writeFixed64NoTag(list.get(i11).longValue());
            i11++;
        }
    }

    @Override
    public void writeFloat(int i10, float f10) throws IOException {
        this.output.writeFloat(i10, f10);
    }

    @Override
    public void writeFloatList(int i10, List<Float> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.output.writeFloat(i10, list.get(i11).floatValue());
                i11++;
            }
            return;
        }
        this.output.writeTag(i10, 2);
        int iComputeFloatSizeNoTag = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeFloatSizeNoTag += CodedOutputStream.computeFloatSizeNoTag(list.get(i12).floatValue());
        }
        this.output.writeUInt32NoTag(iComputeFloatSizeNoTag);
        while (i11 < list.size()) {
            this.output.writeFloatNoTag(list.get(i11).floatValue());
            i11++;
        }
    }

    @Override
    @Deprecated
    public void writeGroup(int i10, Object obj) throws IOException {
        this.output.writeGroup(i10, (s0) obj);
    }

    @Override
    @Deprecated
    public void writeGroupList(int i10, List<?> list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            writeGroup(i10, list.get(i11));
        }
    }

    @Override
    public void writeInt32(int i10, int i11) throws IOException {
        this.output.writeInt32(i10, i11);
    }

    @Override
    public void writeInt32List(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.output.writeInt32(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.output.writeTag(i10, 2);
        int iComputeInt32SizeNoTag = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeInt32SizeNoTag += CodedOutputStream.computeInt32SizeNoTag(list.get(i12).intValue());
        }
        this.output.writeUInt32NoTag(iComputeInt32SizeNoTag);
        while (i11 < list.size()) {
            this.output.writeInt32NoTag(list.get(i11).intValue());
            i11++;
        }
    }

    @Override
    public void writeInt64(int i10, long j10) throws IOException {
        this.output.writeInt64(i10, j10);
    }

    @Override
    public void writeInt64List(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.output.writeInt64(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.output.writeTag(i10, 2);
        int iComputeInt64SizeNoTag = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeInt64SizeNoTag += CodedOutputStream.computeInt64SizeNoTag(list.get(i12).longValue());
        }
        this.output.writeUInt32NoTag(iComputeInt64SizeNoTag);
        while (i11 < list.size()) {
            this.output.writeInt64NoTag(list.get(i11).longValue());
            i11++;
        }
    }

    @Override
    public <K, V> void writeMap(int i10, m0.b bVar, Map<K, V> map) throws IOException {
        if (this.output.isSerializationDeterministic()) {
            writeDeterministicMap(i10, bVar, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.output.writeTag(i10, 2);
            this.output.writeUInt32NoTag(m0.computeSerializedSize(bVar, entry.getKey(), entry.getValue()));
            m0.writeTo(this.output, bVar, entry.getKey(), entry.getValue());
        }
    }

    @Override
    public void writeMessage(int i10, Object obj) throws IOException {
        this.output.writeMessage(i10, (s0) obj);
    }

    @Override
    public void writeMessageList(int i10, List<?> list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            writeMessage(i10, list.get(i11));
        }
    }

    @Override
    public final void writeMessageSetItem(int i10, Object obj) throws IOException {
        if (obj instanceof ByteString) {
            this.output.writeRawMessageSetExtension(i10, (ByteString) obj);
        } else {
            this.output.writeMessageSetExtension(i10, (s0) obj);
        }
    }

    @Override
    public void writeSFixed32(int i10, int i11) throws IOException {
        this.output.writeSFixed32(i10, i11);
    }

    @Override
    public void writeSFixed32List(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.output.writeSFixed32(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.output.writeTag(i10, 2);
        int iComputeSFixed32SizeNoTag = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeSFixed32SizeNoTag += CodedOutputStream.computeSFixed32SizeNoTag(list.get(i12).intValue());
        }
        this.output.writeUInt32NoTag(iComputeSFixed32SizeNoTag);
        while (i11 < list.size()) {
            this.output.writeSFixed32NoTag(list.get(i11).intValue());
            i11++;
        }
    }

    @Override
    public void writeSFixed64(int i10, long j10) throws IOException {
        this.output.writeSFixed64(i10, j10);
    }

    @Override
    public void writeSFixed64List(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.output.writeSFixed64(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.output.writeTag(i10, 2);
        int iComputeSFixed64SizeNoTag = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeSFixed64SizeNoTag += CodedOutputStream.computeSFixed64SizeNoTag(list.get(i12).longValue());
        }
        this.output.writeUInt32NoTag(iComputeSFixed64SizeNoTag);
        while (i11 < list.size()) {
            this.output.writeSFixed64NoTag(list.get(i11).longValue());
            i11++;
        }
    }

    @Override
    public void writeSInt32(int i10, int i11) throws IOException {
        this.output.writeSInt32(i10, i11);
    }

    @Override
    public void writeSInt32List(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.output.writeSInt32(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.output.writeTag(i10, 2);
        int iComputeSInt32SizeNoTag = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeSInt32SizeNoTag += CodedOutputStream.computeSInt32SizeNoTag(list.get(i12).intValue());
        }
        this.output.writeUInt32NoTag(iComputeSInt32SizeNoTag);
        while (i11 < list.size()) {
            this.output.writeSInt32NoTag(list.get(i11).intValue());
            i11++;
        }
    }

    @Override
    public void writeSInt64(int i10, long j10) throws IOException {
        this.output.writeSInt64(i10, j10);
    }

    @Override
    public void writeSInt64List(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.output.writeSInt64(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.output.writeTag(i10, 2);
        int iComputeSInt64SizeNoTag = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeSInt64SizeNoTag += CodedOutputStream.computeSInt64SizeNoTag(list.get(i12).longValue());
        }
        this.output.writeUInt32NoTag(iComputeSInt64SizeNoTag);
        while (i11 < list.size()) {
            this.output.writeSInt64NoTag(list.get(i11).longValue());
            i11++;
        }
    }

    @Override
    @Deprecated
    public void writeStartGroup(int i10) throws IOException {
        this.output.writeTag(i10, 3);
    }

    @Override
    public void writeString(int i10, String str) throws IOException {
        this.output.writeString(i10, str);
    }

    @Override
    public void writeStringList(int i10, List<String> list) throws IOException {
        int i11 = 0;
        if (!(list instanceof i0)) {
            while (i11 < list.size()) {
                this.output.writeString(i10, list.get(i11));
                i11++;
            }
        } else {
            i0 i0Var = (i0) list;
            while (i11 < list.size()) {
                writeLazyString(i10, i0Var.getRaw(i11));
                i11++;
            }
        }
    }

    @Override
    public void writeUInt32(int i10, int i11) throws IOException {
        this.output.writeUInt32(i10, i11);
    }

    @Override
    public void writeUInt32List(int i10, List<Integer> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.output.writeUInt32(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.output.writeTag(i10, 2);
        int iComputeUInt32SizeNoTag = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeUInt32SizeNoTag += CodedOutputStream.computeUInt32SizeNoTag(list.get(i12).intValue());
        }
        this.output.writeUInt32NoTag(iComputeUInt32SizeNoTag);
        while (i11 < list.size()) {
            this.output.writeUInt32NoTag(list.get(i11).intValue());
            i11++;
        }
    }

    @Override
    public void writeUInt64(int i10, long j10) throws IOException {
        this.output.writeUInt64(i10, j10);
    }

    @Override
    public void writeUInt64List(int i10, List<Long> list, boolean z10) throws IOException {
        int i11 = 0;
        if (!z10) {
            while (i11 < list.size()) {
                this.output.writeUInt64(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.output.writeTag(i10, 2);
        int iComputeUInt64SizeNoTag = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iComputeUInt64SizeNoTag += CodedOutputStream.computeUInt64SizeNoTag(list.get(i12).longValue());
        }
        this.output.writeUInt32NoTag(iComputeUInt64SizeNoTag);
        while (i11 < list.size()) {
            this.output.writeUInt64NoTag(list.get(i11).longValue());
            i11++;
        }
    }

    @Override
    public void writeGroup(int i10, Object obj, i1 i1Var) throws IOException {
        this.output.writeGroup(i10, (s0) obj, i1Var);
    }

    @Override
    public void writeMessage(int i10, Object obj, i1 i1Var) throws IOException {
        this.output.writeMessage(i10, (s0) obj, i1Var);
    }

    @Override
    public void writeGroupList(int i10, List<?> list, i1 i1Var) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            writeGroup(i10, list.get(i11), i1Var);
        }
    }

    @Override
    public void writeMessageList(int i10, List<?> list, i1 i1Var) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            writeMessage(i10, list.get(i11), i1Var);
        }
    }
}
