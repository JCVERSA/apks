package com.google.protobuf;

import java.io.IOException;

final class e {
    static final int DEFAULT_RECURSION_LIMIT = 100;
    private static volatile int recursionLimit = 100;

    static class a {
        static final int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 5;
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
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BOOL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    private e() {
    }

    private static void checkRecursionLimit(int i10) throws InvalidProtocolBufferException {
        if (i10 >= recursionLimit) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
    }

    static int decodeBoolList(int i10, byte[] bArr, int i11, int i12, y.j jVar, b bVar) {
        f fVar = (f) jVar;
        int iDecodeVarint64 = decodeVarint64(bArr, i11, bVar);
        fVar.addBoolean(bVar.long1 != 0);
        while (iDecodeVarint64 < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint64, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeVarint64 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            fVar.addBoolean(bVar.long1 != 0);
        }
        return iDecodeVarint64;
    }

    static int decodeBytes(byte[] bArr, int i10, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1;
        if (i11 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i11 > bArr.length - iDecodeVarint32) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i11 == 0) {
            bVar.object1 = ByteString.EMPTY;
            return iDecodeVarint32;
        }
        bVar.object1 = ByteString.copyFrom(bArr, iDecodeVarint32, i11);
        return iDecodeVarint32 + i11;
    }

    static int decodeBytesList(int i10, byte[] bArr, int i11, int i12, y.j jVar, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i13 = bVar.int1;
        if (i13 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i13 > bArr.length - iDecodeVarint32) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i13 == 0) {
            jVar.add(ByteString.EMPTY);
        } else {
            jVar.add(ByteString.copyFrom(bArr, iDecodeVarint32, i13));
            iDecodeVarint32 += i13;
        }
        while (iDecodeVarint32 < i12) {
            int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
            int i14 = bVar.int1;
            if (i14 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i14 > bArr.length - iDecodeVarint32) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i14 == 0) {
                jVar.add(ByteString.EMPTY);
            } else {
                jVar.add(ByteString.copyFrom(bArr, iDecodeVarint32, i14));
                iDecodeVarint32 += i14;
            }
        }
        return iDecodeVarint32;
    }

    static double decodeDouble(byte[] bArr, int i10) {
        return Double.longBitsToDouble(decodeFixed64(bArr, i10));
    }

    static int decodeDoubleList(int i10, byte[] bArr, int i11, int i12, y.j jVar, b bVar) {
        l lVar = (l) jVar;
        lVar.addDouble(decodeDouble(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, i13, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            lVar.addDouble(decodeDouble(bArr, iDecodeVarint32));
            i13 = iDecodeVarint32 + 8;
        }
        return i13;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static int decodeExtension(int i10, byte[] bArr, int i11, int i12, GeneratedMessageLite.d dVar, GeneratedMessageLite.g gVar, o1 o1Var, b bVar) throws IOException {
        t tVar = dVar.extensions;
        int i13 = i10 >>> 3;
        if (gVar.descriptor.isRepeated() && gVar.descriptor.isPacked()) {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[gVar.getLiteType().ordinal()]) {
                case 1:
                    l lVar = new l();
                    int iDecodePackedDoubleList = decodePackedDoubleList(bArr, i11, lVar, bVar);
                    tVar.setField(gVar.descriptor, lVar);
                    return iDecodePackedDoubleList;
                case 2:
                    u uVar = new u();
                    int iDecodePackedFloatList = decodePackedFloatList(bArr, i11, uVar, bVar);
                    tVar.setField(gVar.descriptor, uVar);
                    return iDecodePackedFloatList;
                case 3:
                case 4:
                    k0 k0Var = new k0();
                    int iDecodePackedVarint64List = decodePackedVarint64List(bArr, i11, k0Var, bVar);
                    tVar.setField(gVar.descriptor, k0Var);
                    return iDecodePackedVarint64List;
                case 5:
                case 6:
                    w wVar = new w();
                    int iDecodePackedVarint32List = decodePackedVarint32List(bArr, i11, wVar, bVar);
                    tVar.setField(gVar.descriptor, wVar);
                    return iDecodePackedVarint32List;
                case 7:
                case 8:
                    k0 k0Var2 = new k0();
                    int iDecodePackedFixed64List = decodePackedFixed64List(bArr, i11, k0Var2, bVar);
                    tVar.setField(gVar.descriptor, k0Var2);
                    return iDecodePackedFixed64List;
                case 9:
                case 10:
                    w wVar2 = new w();
                    int iDecodePackedFixed32List = decodePackedFixed32List(bArr, i11, wVar2, bVar);
                    tVar.setField(gVar.descriptor, wVar2);
                    return iDecodePackedFixed32List;
                case 11:
                    f fVar = new f();
                    int iDecodePackedBoolList = decodePackedBoolList(bArr, i11, fVar, bVar);
                    tVar.setField(gVar.descriptor, fVar);
                    return iDecodePackedBoolList;
                case 12:
                    w wVar3 = new w();
                    int iDecodePackedSInt32List = decodePackedSInt32List(bArr, i11, wVar3, bVar);
                    tVar.setField(gVar.descriptor, wVar3);
                    return iDecodePackedSInt32List;
                case 13:
                    k0 k0Var3 = new k0();
                    int iDecodePackedSInt64List = decodePackedSInt64List(bArr, i11, k0Var3, bVar);
                    tVar.setField(gVar.descriptor, k0Var3);
                    return iDecodePackedSInt64List;
                case 14:
                    w wVar4 = new w();
                    int iDecodePackedVarint32List2 = decodePackedVarint32List(bArr, i11, wVar4, bVar);
                    k1.filterUnknownEnumList(dVar, i13, wVar4, gVar.descriptor.getEnumType(), (Object) null, o1Var);
                    tVar.setField(gVar.descriptor, wVar4);
                    return iDecodePackedVarint32List2;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + gVar.descriptor.getLiteType());
            }
        }
        Object objValueOf = null;
        if (gVar.getLiteType() == WireFormat.FieldType.ENUM) {
            i11 = decodeVarint32(bArr, i11, bVar);
            if (gVar.descriptor.getEnumType().findValueByNumber(bVar.int1) == null) {
                k1.storeUnknownEnum(dVar, i13, bVar.int1, null, o1Var);
                return i11;
            }
            objValueOf = Integer.valueOf(bVar.int1);
        } else {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[gVar.getLiteType().ordinal()]) {
                case 1:
                    objValueOf = Double.valueOf(decodeDouble(bArr, i11));
                    i11 += 8;
                    break;
                case 2:
                    objValueOf = Float.valueOf(decodeFloat(bArr, i11));
                    i11 += 4;
                    break;
                case 3:
                case 4:
                    i11 = decodeVarint64(bArr, i11, bVar);
                    objValueOf = Long.valueOf(bVar.long1);
                    break;
                case 5:
                case 6:
                    i11 = decodeVarint32(bArr, i11, bVar);
                    objValueOf = Integer.valueOf(bVar.int1);
                    break;
                case 7:
                case 8:
                    objValueOf = Long.valueOf(decodeFixed64(bArr, i11));
                    i11 += 8;
                    break;
                case 9:
                case 10:
                    objValueOf = Integer.valueOf(decodeFixed32(bArr, i11));
                    i11 += 4;
                    break;
                case 11:
                    i11 = decodeVarint64(bArr, i11, bVar);
                    objValueOf = Boolean.valueOf(bVar.long1 != 0);
                    break;
                case 12:
                    i11 = decodeVarint32(bArr, i11, bVar);
                    objValueOf = Integer.valueOf(i.decodeZigZag32(bVar.int1));
                    break;
                case 13:
                    i11 = decodeVarint64(bArr, i11, bVar);
                    objValueOf = Long.valueOf(i.decodeZigZag64(bVar.long1));
                    break;
                case 14:
                    throw new IllegalStateException("Shouldn't reach here.");
                case 15:
                    i11 = decodeBytes(bArr, i11, bVar);
                    objValueOf = bVar.object1;
                    break;
                case 16:
                    i11 = decodeString(bArr, i11, bVar);
                    objValueOf = bVar.object1;
                    break;
                case 17:
                    int i14 = (i13 << 3) | 4;
                    i1 i1VarSchemaFor = d1.getInstance().schemaFor((Class) gVar.getMessageDefaultInstance().getClass());
                    if (gVar.isRepeated()) {
                        int iDecodeGroupField = decodeGroupField(i1VarSchemaFor, bArr, i11, i12, i14, bVar);
                        tVar.addRepeatedField(gVar.descriptor, bVar.object1);
                        return iDecodeGroupField;
                    }
                    Object field = tVar.getField(gVar.descriptor);
                    if (field == null) {
                        field = i1VarSchemaFor.newInstance();
                        tVar.setField(gVar.descriptor, field);
                    }
                    return mergeGroupField(field, i1VarSchemaFor, bArr, i11, i12, i14, bVar);
                case 18:
                    i1 i1VarSchemaFor2 = d1.getInstance().schemaFor((Class) gVar.getMessageDefaultInstance().getClass());
                    if (gVar.isRepeated()) {
                        int iDecodeMessageField = decodeMessageField(i1VarSchemaFor2, bArr, i11, i12, bVar);
                        tVar.addRepeatedField(gVar.descriptor, bVar.object1);
                        return iDecodeMessageField;
                    }
                    Object field2 = tVar.getField(gVar.descriptor);
                    if (field2 == null) {
                        field2 = i1VarSchemaFor2.newInstance();
                        tVar.setField(gVar.descriptor, field2);
                    }
                    return mergeMessageField(field2, i1VarSchemaFor2, bArr, i11, i12, bVar);
            }
        }
        if (gVar.isRepeated()) {
            tVar.addRepeatedField(gVar.descriptor, objValueOf);
        } else {
            tVar.setField(gVar.descriptor, objValueOf);
        }
        return i11;
    }

    static int decodeExtensionOrUnknownField(int i10, byte[] bArr, int i11, int i12, Object obj, s0 s0Var, o1 o1Var, b bVar) throws IOException {
        GeneratedMessageLite.g gVarFindLiteExtensionByNumber = bVar.extensionRegistry.findLiteExtensionByNumber(s0Var, i10 >>> 3);
        if (gVarFindLiteExtensionByNumber == null) {
            return decodeUnknownField(i10, bArr, i11, i12, v0.getMutableUnknownFields(obj), bVar);
        }
        GeneratedMessageLite.d dVar = (GeneratedMessageLite.d) obj;
        dVar.ensureExtensionsAreMutable();
        return decodeExtension(i10, bArr, i11, i12, dVar, gVarFindLiteExtensionByNumber, o1Var, bVar);
    }

    static int decodeFixed32(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    static int decodeFixed32List(int i10, byte[] bArr, int i11, int i12, y.j jVar, b bVar) {
        w wVar = (w) jVar;
        wVar.addInt(decodeFixed32(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, i13, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            wVar.addInt(decodeFixed32(bArr, iDecodeVarint32));
            i13 = iDecodeVarint32 + 4;
        }
        return i13;
    }

    static long decodeFixed64(byte[] bArr, int i10) {
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
    }

    static int decodeFixed64List(int i10, byte[] bArr, int i11, int i12, y.j jVar, b bVar) {
        k0 k0Var = (k0) jVar;
        k0Var.addLong(decodeFixed64(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, i13, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            k0Var.addLong(decodeFixed64(bArr, iDecodeVarint32));
            i13 = iDecodeVarint32 + 8;
        }
        return i13;
    }

    static float decodeFloat(byte[] bArr, int i10) {
        return Float.intBitsToFloat(decodeFixed32(bArr, i10));
    }

    static int decodeFloatList(int i10, byte[] bArr, int i11, int i12, y.j jVar, b bVar) {
        u uVar = (u) jVar;
        uVar.addFloat(decodeFloat(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, i13, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            uVar.addFloat(decodeFloat(bArr, iDecodeVarint32));
            i13 = iDecodeVarint32 + 4;
        }
        return i13;
    }

    static int decodeGroupField(i1 i1Var, byte[] bArr, int i10, int i11, int i12, b bVar) throws IOException {
        Object objNewInstance = i1Var.newInstance();
        int iMergeGroupField = mergeGroupField(objNewInstance, i1Var, bArr, i10, i11, i12, bVar);
        i1Var.makeImmutable(objNewInstance);
        bVar.object1 = objNewInstance;
        return iMergeGroupField;
    }

    static int decodeGroupList(i1 i1Var, int i10, byte[] bArr, int i11, int i12, y.j jVar, b bVar) throws IOException {
        int i13 = (i10 & (-8)) | 4;
        int iDecodeGroupField = decodeGroupField(i1Var, bArr, i11, i12, i13, bVar);
        jVar.add(bVar.object1);
        while (iDecodeGroupField < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeGroupField, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeGroupField = decodeGroupField(i1Var, bArr, iDecodeVarint32, i12, i13, bVar);
            jVar.add(bVar.object1);
        }
        return iDecodeGroupField;
    }

    static int decodeMessageField(i1 i1Var, byte[] bArr, int i10, int i11, b bVar) throws IOException {
        Object objNewInstance = i1Var.newInstance();
        int iMergeMessageField = mergeMessageField(objNewInstance, i1Var, bArr, i10, i11, bVar);
        i1Var.makeImmutable(objNewInstance);
        bVar.object1 = objNewInstance;
        return iMergeMessageField;
    }

    static int decodeMessageList(i1 i1Var, int i10, byte[] bArr, int i11, int i12, y.j jVar, b bVar) throws IOException {
        int iDecodeMessageField = decodeMessageField(i1Var, bArr, i11, i12, bVar);
        jVar.add(bVar.object1);
        while (iDecodeMessageField < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeMessageField, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeMessageField = decodeMessageField(i1Var, bArr, iDecodeVarint32, i12, bVar);
            jVar.add(bVar.object1);
        }
        return iDecodeMessageField;
    }

    static int decodePackedBoolList(byte[] bArr, int i10, y.j jVar, b bVar) throws IOException {
        f fVar = (f) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            iDecodeVarint32 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            fVar.addBoolean(bVar.long1 != 0);
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedDoubleList(byte[] bArr, int i10, y.j jVar, b bVar) throws IOException {
        l lVar = (l) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            lVar.addDouble(decodeDouble(bArr, iDecodeVarint32));
            iDecodeVarint32 += 8;
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedFixed32List(byte[] bArr, int i10, y.j jVar, b bVar) throws IOException {
        w wVar = (w) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            wVar.addInt(decodeFixed32(bArr, iDecodeVarint32));
            iDecodeVarint32 += 4;
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedFixed64List(byte[] bArr, int i10, y.j jVar, b bVar) throws IOException {
        k0 k0Var = (k0) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            k0Var.addLong(decodeFixed64(bArr, iDecodeVarint32));
            iDecodeVarint32 += 8;
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedFloatList(byte[] bArr, int i10, y.j jVar, b bVar) throws IOException {
        u uVar = (u) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            uVar.addFloat(decodeFloat(bArr, iDecodeVarint32));
            iDecodeVarint32 += 4;
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedSInt32List(byte[] bArr, int i10, y.j jVar, b bVar) throws IOException {
        w wVar = (w) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            wVar.addInt(i.decodeZigZag32(bVar.int1));
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedSInt64List(byte[] bArr, int i10, y.j jVar, b bVar) throws IOException {
        k0 k0Var = (k0) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            iDecodeVarint32 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            k0Var.addLong(i.decodeZigZag64(bVar.long1));
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedVarint32List(byte[] bArr, int i10, y.j jVar, b bVar) throws IOException {
        w wVar = (w) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            wVar.addInt(bVar.int1);
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedVarint64List(byte[] bArr, int i10, y.j jVar, b bVar) throws IOException {
        k0 k0Var = (k0) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            iDecodeVarint32 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            k0Var.addLong(bVar.long1);
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodeSInt32List(int i10, byte[] bArr, int i11, int i12, y.j jVar, b bVar) {
        w wVar = (w) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        wVar.addInt(i.decodeZigZag32(bVar.int1));
        while (iDecodeVarint32 < i12) {
            int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
            wVar.addInt(i.decodeZigZag32(bVar.int1));
        }
        return iDecodeVarint32;
    }

    static int decodeSInt64List(int i10, byte[] bArr, int i11, int i12, y.j jVar, b bVar) {
        k0 k0Var = (k0) jVar;
        int iDecodeVarint64 = decodeVarint64(bArr, i11, bVar);
        k0Var.addLong(i.decodeZigZag64(bVar.long1));
        while (iDecodeVarint64 < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint64, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeVarint64 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            k0Var.addLong(i.decodeZigZag64(bVar.long1));
        }
        return iDecodeVarint64;
    }

    static int decodeString(byte[] bArr, int i10, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1;
        if (i11 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i11 == 0) {
            bVar.object1 = "";
            return iDecodeVarint32;
        }
        bVar.object1 = new String(bArr, iDecodeVarint32, i11, y.UTF_8);
        return iDecodeVarint32 + i11;
    }

    static int decodeStringList(int i10, byte[] bArr, int i11, int i12, y.j jVar, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i13 = bVar.int1;
        if (i13 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i13 == 0) {
            jVar.add("");
        } else {
            jVar.add(new String(bArr, iDecodeVarint32, i13, y.UTF_8));
            iDecodeVarint32 += i13;
        }
        while (iDecodeVarint32 < i12) {
            int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
            int i14 = bVar.int1;
            if (i14 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i14 == 0) {
                jVar.add("");
            } else {
                jVar.add(new String(bArr, iDecodeVarint32, i14, y.UTF_8));
                iDecodeVarint32 += i14;
            }
        }
        return iDecodeVarint32;
    }

    static int decodeStringListRequireUtf8(int i10, byte[] bArr, int i11, int i12, y.j jVar, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i13 = bVar.int1;
        if (i13 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i13 == 0) {
            jVar.add("");
        } else {
            int i14 = iDecodeVarint32 + i13;
            if (!Utf8.isValidUtf8(bArr, iDecodeVarint32, i14)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            jVar.add(new String(bArr, iDecodeVarint32, i13, y.UTF_8));
            iDecodeVarint32 = i14;
        }
        while (iDecodeVarint32 < i12) {
            int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
            int i15 = bVar.int1;
            if (i15 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i15 == 0) {
                jVar.add("");
            } else {
                int i16 = iDecodeVarint32 + i15;
                if (!Utf8.isValidUtf8(bArr, iDecodeVarint32, i16)) {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
                jVar.add(new String(bArr, iDecodeVarint32, i15, y.UTF_8));
                iDecodeVarint32 = i16;
            }
        }
        return iDecodeVarint32;
    }

    static int decodeStringRequireUtf8(byte[] bArr, int i10, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1;
        if (i11 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        if (i11 == 0) {
            bVar.object1 = "";
            return iDecodeVarint32;
        }
        bVar.object1 = Utf8.decodeUtf8(bArr, iDecodeVarint32, i11);
        return iDecodeVarint32 + i11;
    }

    static int decodeUnknownField(int i10, byte[] bArr, int i11, int i12, p1 p1Var, b bVar) throws InvalidProtocolBufferException {
        if (WireFormat.getTagFieldNumber(i10) == 0) {
            throw InvalidProtocolBufferException.invalidTag();
        }
        int tagWireType = WireFormat.getTagWireType(i10);
        if (tagWireType == 0) {
            int iDecodeVarint64 = decodeVarint64(bArr, i11, bVar);
            p1Var.storeField(i10, Long.valueOf(bVar.long1));
            return iDecodeVarint64;
        }
        if (tagWireType == 1) {
            p1Var.storeField(i10, Long.valueOf(decodeFixed64(bArr, i11)));
            return i11 + 8;
        }
        if (tagWireType == 2) {
            int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
            int i13 = bVar.int1;
            if (i13 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i13 > bArr.length - iDecodeVarint32) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i13 == 0) {
                p1Var.storeField(i10, ByteString.EMPTY);
            } else {
                p1Var.storeField(i10, ByteString.copyFrom(bArr, iDecodeVarint32, i13));
            }
            return iDecodeVarint32 + i13;
        }
        if (tagWireType != 3) {
            if (tagWireType != 5) {
                throw InvalidProtocolBufferException.invalidTag();
            }
            p1Var.storeField(i10, Integer.valueOf(decodeFixed32(bArr, i11)));
            return i11 + 4;
        }
        p1 p1VarNewInstance = p1.newInstance();
        int i14 = (i10 & (-8)) | 4;
        int i15 = bVar.recursionDepth + 1;
        bVar.recursionDepth = i15;
        checkRecursionLimit(i15);
        int i16 = 0;
        while (i11 < i12) {
            int iDecodeVarint33 = decodeVarint32(bArr, i11, bVar);
            int i17 = bVar.int1;
            if (i17 == i14) {
                i16 = i17;
                i11 = iDecodeVarint33;
                break;
            }
            i16 = i17;
            i11 = decodeUnknownField(i17, bArr, iDecodeVarint33, i12, p1VarNewInstance, bVar);
        }
        bVar.recursionDepth--;
        if (i11 > i12 || i16 != i14) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        p1Var.storeField(i10, p1VarNewInstance);
        return i11;
    }

    static int decodeVarint32(byte[] bArr, int i10, b bVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 < 0) {
            return decodeVarint32(b10, bArr, i11, bVar);
        }
        bVar.int1 = b10;
        return i11;
    }

    static int decodeVarint32List(int i10, byte[] bArr, int i11, int i12, y.j jVar, b bVar) {
        w wVar = (w) jVar;
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        wVar.addInt(bVar.int1);
        while (iDecodeVarint32 < i12) {
            int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
            wVar.addInt(bVar.int1);
        }
        return iDecodeVarint32;
    }

    static int decodeVarint64(byte[] bArr, int i10, b bVar) {
        int i11 = i10 + 1;
        long j10 = bArr[i10];
        if (j10 < 0) {
            return decodeVarint64(j10, bArr, i11, bVar);
        }
        bVar.long1 = j10;
        return i11;
    }

    static int decodeVarint64List(int i10, byte[] bArr, int i11, int i12, y.j jVar, b bVar) {
        k0 k0Var = (k0) jVar;
        int iDecodeVarint64 = decodeVarint64(bArr, i11, bVar);
        k0Var.addLong(bVar.long1);
        while (iDecodeVarint64 < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint64, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeVarint64 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            k0Var.addLong(bVar.long1);
        }
        return iDecodeVarint64;
    }

    static int mergeGroupField(Object obj, i1 i1Var, byte[] bArr, int i10, int i11, int i12, b bVar) throws IOException {
        v0 v0Var = (v0) i1Var;
        int i13 = bVar.recursionDepth + 1;
        bVar.recursionDepth = i13;
        checkRecursionLimit(i13);
        int message = v0Var.parseMessage(obj, bArr, i10, i11, i12, bVar);
        bVar.recursionDepth--;
        bVar.object1 = obj;
        return message;
    }

    static int mergeMessageField(Object obj, i1 i1Var, byte[] bArr, int i10, int i11, b bVar) throws IOException {
        int iDecodeVarint32 = i10 + 1;
        int i12 = bArr[i10];
        if (i12 < 0) {
            iDecodeVarint32 = decodeVarint32(i12, bArr, iDecodeVarint32, bVar);
            i12 = bVar.int1;
        }
        int i13 = iDecodeVarint32;
        if (i12 < 0 || i12 > i11 - i13) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i14 = bVar.recursionDepth + 1;
        bVar.recursionDepth = i14;
        checkRecursionLimit(i14);
        int i15 = i12 + i13;
        i1Var.mergeFrom(obj, bArr, i13, i15, bVar);
        bVar.recursionDepth--;
        bVar.object1 = obj;
        return i15;
    }

    public static void setRecursionLimit(int i10) {
        recursionLimit = i10;
    }

    static int skipField(int i10, byte[] bArr, int i11, int i12, b bVar) throws InvalidProtocolBufferException {
        if (WireFormat.getTagFieldNumber(i10) == 0) {
            throw InvalidProtocolBufferException.invalidTag();
        }
        int tagWireType = WireFormat.getTagWireType(i10);
        if (tagWireType == 0) {
            return decodeVarint64(bArr, i11, bVar);
        }
        if (tagWireType == 1) {
            return i11 + 8;
        }
        if (tagWireType == 2) {
            return decodeVarint32(bArr, i11, bVar) + bVar.int1;
        }
        if (tagWireType != 3) {
            if (tagWireType == 5) {
                return i11 + 4;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }
        int i13 = (i10 & (-8)) | 4;
        int i14 = 0;
        while (i11 < i12) {
            i11 = decodeVarint32(bArr, i11, bVar);
            i14 = bVar.int1;
            if (i14 == i13) {
                break;
            }
            i11 = skipField(i14, bArr, i11, i12, bVar);
        }
        if (i11 > i12 || i14 != i13) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return i11;
    }

    static final class b {
        public final o extensionRegistry;
        public int int1;
        public long long1;
        public Object object1;
        public int recursionDepth;

        b() {
            this.extensionRegistry = o.getEmptyRegistry();
        }

        b(o oVar) {
            oVar.getClass();
            this.extensionRegistry = oVar;
        }
    }

    static int decodeVarint32(int i10, byte[] bArr, int i11, b bVar) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b10 = bArr[i11];
        if (b10 >= 0) {
            bVar.int1 = i12 | (b10 << 7);
            return i13;
        }
        int i14 = i12 | ((b10 & 127) << 7);
        int i15 = i11 + 2;
        byte b11 = bArr[i13];
        if (b11 >= 0) {
            bVar.int1 = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & 127) << 14);
        int i17 = i11 + 3;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            bVar.int1 = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & 127) << 21);
        int i19 = i11 + 4;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            bVar.int1 = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & 127) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                bVar.int1 = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    static int decodeVarint64(long j10, byte[] bArr, int i10, b bVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        long j11 = (j10 & 127) | (((long) (b10 & 127)) << 7);
        int i12 = 7;
        while (b10 < 0) {
            int i13 = i11 + 1;
            byte b11 = bArr[i11];
            i12 += 7;
            j11 |= ((long) (b11 & 127)) << i12;
            i11 = i13;
            b10 = b11;
        }
        bVar.long1 = j11;
        return i11;
    }
}
