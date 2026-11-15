package com.google.protobuf;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

final class v0 implements i1 {
    private static final int CHECK_INITIALIZED_BIT = 1024;
    private static final int ENFORCE_UTF8_MASK = 536870912;
    private static final int FIELD_TYPE_MASK = 267386880;
    private static final int HAS_HAS_BIT = 4096;
    private static final int INTS_PER_FIELD = 3;
    private static final int LEGACY_ENUM_IS_CLOSED_BIT = 2048;
    private static final int LEGACY_ENUM_IS_CLOSED_MASK = Integer.MIN_VALUE;
    private static final int NO_PRESENCE_SENTINEL = 1048575;
    private static final int OFFSET_BITS = 20;
    private static final int OFFSET_MASK = 1048575;
    static final int ONEOF_TYPE_OFFSET = 51;
    private static final int REQUIRED_BIT = 256;
    private static final int REQUIRED_MASK = 268435456;
    private static final int UTF8_CHECK_BIT = 512;
    private final int[] buffer;
    private final int checkInitializedCount;
    private final s0 defaultInstance;
    private final p extensionSchema;
    private final boolean hasExtensions;
    private final int[] intArray;
    private final j0 listFieldSchema;
    private final boolean lite;
    private final n0 mapFieldSchema;
    private final int maxFieldNumber;
    private final int minFieldNumber;
    private final x0 newInstanceSchema;
    private final Object[] objects;
    private final int repeatedFieldOffsetStart;
    private final ProtoSyntax syntax;
    private final o1 unknownFieldSchema;
    private final boolean useCachedSizeField;
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private static final Unsafe UNSAFE = s1.getUnsafe();

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
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private v0(int[] iArr, Object[] objArr, int i10, int i11, s0 s0Var, ProtoSyntax protoSyntax, boolean z10, int[] iArr2, int i12, int i13, x0 x0Var, j0 j0Var, o1 o1Var, p pVar, n0 n0Var) {
        this.buffer = iArr;
        this.objects = objArr;
        this.minFieldNumber = i10;
        this.maxFieldNumber = i11;
        this.lite = s0Var instanceof GeneratedMessageLite;
        this.syntax = protoSyntax;
        this.hasExtensions = pVar != null && pVar.hasExtensions(s0Var);
        this.useCachedSizeField = z10;
        this.intArray = iArr2;
        this.checkInitializedCount = i12;
        this.repeatedFieldOffsetStart = i13;
        this.newInstanceSchema = x0Var;
        this.listFieldSchema = j0Var;
        this.unknownFieldSchema = o1Var;
        this.extensionSchema = pVar;
        this.defaultInstance = s0Var;
        this.mapFieldSchema = n0Var;
    }

    private boolean arePresentForEquals(Object obj, Object obj2, int i10) {
        return isFieldPresent(obj, i10) == isFieldPresent(obj2, i10);
    }

    private static <T> boolean booleanAt(T t10, long j10) {
        return s1.getBoolean(t10, j10);
    }

    private static void checkMutable(Object obj) {
        if (isMutable(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> int decodeMapEntry(byte[] bArr, int i10, int i11, m0.b bVar, Map<K, V> map, e.b bVar2) throws IOException {
        int iDecodeVarint32;
        int iDecodeVarint33 = e.decodeVarint32(bArr, i10, bVar2);
        int i12 = bVar2.int1;
        if (i12 < 0 || i12 > i11 - iDecodeVarint33) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i13 = iDecodeVarint33 + i12;
        Object obj = bVar.defaultKey;
        Object obj2 = bVar.defaultValue;
        while (iDecodeVarint33 < i13) {
            int i14 = iDecodeVarint33 + 1;
            int i15 = bArr[iDecodeVarint33];
            if (i15 < 0) {
                iDecodeVarint32 = e.decodeVarint32(i15, bArr, i14, bVar2);
                i15 = bVar2.int1;
            } else {
                iDecodeVarint32 = i14;
            }
            int i16 = i15 >>> 3;
            int i17 = i15 & 7;
            if (i16 != 1) {
                if (i16 == 2 && i17 == bVar.valueType.getWireType()) {
                    iDecodeVarint33 = decodeMapEntryValue(bArr, iDecodeVarint32, i11, bVar.valueType, bVar.defaultValue.getClass(), bVar2);
                    obj2 = bVar2.object1;
                } else {
                    iDecodeVarint33 = e.skipField(i15, bArr, iDecodeVarint32, i11, bVar2);
                }
            } else if (i17 == bVar.keyType.getWireType()) {
                iDecodeVarint33 = decodeMapEntryValue(bArr, iDecodeVarint32, i11, bVar.keyType, null, bVar2);
                obj = bVar2.object1;
            } else {
                iDecodeVarint33 = e.skipField(i15, bArr, iDecodeVarint32, i11, bVar2);
            }
        }
        if (iDecodeVarint33 != i13) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        map.put(obj, obj2);
        return i13;
    }

    private int decodeMapEntryValue(byte[] bArr, int i10, int i11, WireFormat.FieldType fieldType, Class<?> cls, e.b bVar) throws IOException {
        switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                int iDecodeVarint64 = e.decodeVarint64(bArr, i10, bVar);
                bVar.object1 = Boolean.valueOf(bVar.long1 != 0);
                return iDecodeVarint64;
            case 2:
                return e.decodeBytes(bArr, i10, bVar);
            case 3:
                bVar.object1 = Double.valueOf(e.decodeDouble(bArr, i10));
                return i10 + 8;
            case 4:
            case 5:
                bVar.object1 = Integer.valueOf(e.decodeFixed32(bArr, i10));
                return i10 + 4;
            case 6:
            case 7:
                bVar.object1 = Long.valueOf(e.decodeFixed64(bArr, i10));
                return i10 + 8;
            case 8:
                bVar.object1 = Float.valueOf(e.decodeFloat(bArr, i10));
                return i10 + 4;
            case 9:
            case 10:
            case 11:
                int iDecodeVarint32 = e.decodeVarint32(bArr, i10, bVar);
                bVar.object1 = Integer.valueOf(bVar.int1);
                return iDecodeVarint32;
            case 12:
            case 13:
                int iDecodeVarint65 = e.decodeVarint64(bArr, i10, bVar);
                bVar.object1 = Long.valueOf(bVar.long1);
                return iDecodeVarint65;
            case 14:
                return e.decodeMessageField(d1.getInstance().schemaFor((Class) cls), bArr, i10, i11, bVar);
            case 15:
                int iDecodeVarint33 = e.decodeVarint32(bArr, i10, bVar);
                bVar.object1 = Integer.valueOf(i.decodeZigZag32(bVar.int1));
                return iDecodeVarint33;
            case 16:
                int iDecodeVarint66 = e.decodeVarint64(bArr, i10, bVar);
                bVar.object1 = Long.valueOf(i.decodeZigZag64(bVar.long1));
                return iDecodeVarint66;
            case 17:
                return e.decodeStringRequireUtf8(bArr, i10, bVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static <T> double doubleAt(T t10, long j10) {
        return s1.getDouble(t10, j10);
    }

    private <UT, UB> UB filterMapUnknownEnumValues(Object obj, int i10, UB ub2, o1 o1Var, Object obj2) {
        y.e enumFieldVerifier;
        int iNumberAt = numberAt(i10);
        Object object = s1.getObject(obj, offset(typeAndOffsetAt(i10)));
        return (object == null || (enumFieldVerifier = getEnumFieldVerifier(i10)) == null) ? ub2 : (UB) filterUnknownEnumMap(i10, iNumberAt, this.mapFieldSchema.forMutableMapData(object), enumFieldVerifier, ub2, o1Var, obj2);
    }

    private <K, V, UT, UB> UB filterUnknownEnumMap(int i10, int i11, Map<K, V> map, y.e eVar, UB ub2, o1 o1Var, Object obj) {
        m0.b bVarForMapMetadata = this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i10));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!eVar.isInRange(((Integer) next.getValue()).intValue())) {
                if (ub2 == null) {
                    ub2 = (UB) o1Var.getBuilderFromMessage(obj);
                }
                ByteString.f fVarNewCodedBuilder = ByteString.newCodedBuilder(m0.computeSerializedSize(bVarForMapMetadata, next.getKey(), next.getValue()));
                try {
                    m0.writeTo(fVarNewCodedBuilder.getCodedOutput(), bVarForMapMetadata, next.getKey(), next.getValue());
                    o1Var.addLengthDelimited(ub2, i11, fVarNewCodedBuilder.build());
                    it.remove();
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            }
        }
        return ub2;
    }

    private static <T> float floatAt(T t10, long j10) {
        return s1.getFloat(t10, j10);
    }

    private y.e getEnumFieldVerifier(int i10) {
        return (y.e) this.objects[((i10 / 3) * 2) + 1];
    }

    private Object getMapFieldDefaultEntry(int i10) {
        return this.objects[(i10 / 3) * 2];
    }

    private i1 getMessageFieldSchema(int i10) {
        int i11 = (i10 / 3) * 2;
        i1 i1Var = (i1) this.objects[i11];
        if (i1Var != null) {
            return i1Var;
        }
        i1 i1VarSchemaFor = d1.getInstance().schemaFor((Class) this.objects[i11 + 1]);
        this.objects[i11] = i1VarSchemaFor;
        return i1VarSchemaFor;
    }

    static p1 getMutableUnknownFields(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        p1 p1Var = generatedMessageLite.unknownFields;
        if (p1Var != p1.getDefaultInstance()) {
            return p1Var;
        }
        p1 p1VarNewInstance = p1.newInstance();
        generatedMessageLite.unknownFields = p1VarNewInstance;
        return p1VarNewInstance;
    }

    private <UT, UB> int getUnknownFieldsSerializedSize(o1 o1Var, Object obj) {
        return o1Var.getSerializedSize(o1Var.getFromMessage(obj));
    }

    private static <T> int intAt(T t10, long j10) {
        return s1.getInt(t10, j10);
    }

    private static boolean isEnforceUtf8(int i10) {
        return (i10 & 536870912) != 0;
    }

    private boolean isFieldPresent(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return isFieldPresent(obj, i10);
        }
        return (i12 & i13) != 0;
    }

    private static boolean isLegacyEnumIsClosed(int i10) {
        return (i10 & Integer.MIN_VALUE) != 0;
    }

    private <N> boolean isListInitialized(Object obj, int i10, int i11) {
        List list = (List) s1.getObject(obj, offset(i10));
        if (list.isEmpty()) {
            return true;
        }
        i1 messageFieldSchema = getMessageFieldSchema(i11);
        for (int i12 = 0; i12 < list.size(); i12++) {
            if (!messageFieldSchema.isInitialized(list.get(i12))) {
                return false;
            }
        }
        return true;
    }

    private boolean isMapInitialized(Object obj, int i10, int i11) {
        Map<?, ?> mapForMapData = this.mapFieldSchema.forMapData(s1.getObject(obj, offset(i10)));
        if (mapForMapData.isEmpty()) {
            return true;
        }
        if (this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i11)).valueType.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        i1 i1VarSchemaFor = null;
        for (Object obj2 : mapForMapData.values()) {
            if (i1VarSchemaFor == null) {
                i1VarSchemaFor = d1.getInstance().schemaFor((Class) obj2.getClass());
            }
            if (!i1VarSchemaFor.isInitialized(obj2)) {
                return false;
            }
        }
        return true;
    }

    private static boolean isMutable(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) obj).isMutable();
        }
        return true;
    }

    private boolean isOneofCaseEqual(Object obj, Object obj2, int i10) {
        long jPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i10) & 1048575;
        return s1.getInt(obj, jPresenceMaskAndOffsetAt) == s1.getInt(obj2, jPresenceMaskAndOffsetAt);
    }

    private boolean isOneofPresent(Object obj, int i10, int i11) {
        return s1.getInt(obj, (long) (presenceMaskAndOffsetAt(i11) & 1048575)) == i10;
    }

    private static boolean isRequired(int i10) {
        return (i10 & 268435456) != 0;
    }

    private static <T> long longAt(T t10, long j10) {
        return s1.getLong(t10, j10);
    }

    /* JADX WARN: Code duplicated, block: B:170:0x064b A[Catch: all -> 0x0671, TRY_LEAVE, TryCatch #0 {all -> 0x0671, blocks: (B:168:0x0645, B:170:0x064b, B:182:0x0675, B:183:0x067a), top: B:204:0x0645 }] */
    /* JADX WARN: Code duplicated, block: B:175:0x0658 A[LOOP:2: B:173:0x0654->B:175:0x0658, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:177:0x066d  */
    /* JADX WARN: Code duplicated, block: B:181:0x0673 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:182:0x0675 A[Catch: all -> 0x0671, TRY_ENTER, TryCatch #0 {all -> 0x0671, blocks: (B:168:0x0645, B:170:0x064b, B:182:0x0675, B:183:0x067a), top: B:204:0x0645 }] */
    /* JADX WARN: Code duplicated, block: B:188:0x0687 A[LOOP:3: B:186:0x0683->B:188:0x0687, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:190:0x069c  */
    /* JADX WARN: Code duplicated, block: B:198:0x06b1 A[LOOP:4: B:196:0x06ad->B:198:0x06b1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:200:0x06c6  */
    /* JADX WARN: Code duplicated, block: B:227:0x0651 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:228:0x0680 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:242:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    private <UT, UB, ET extends t.c> void mergeFromHelper(o1 o1Var, p pVar, Object obj, h1 h1Var, o oVar) throws Throwable {
        Object obj2;
        o1 o1Var2;
        int i10;
        Object objFilterMapUnknownEnumValues;
        Object obj3;
        o oVar2;
        int i11;
        Object objFilterMapUnknownEnumValues2;
        int i12;
        Object objFilterMapUnknownEnumValues3;
        Object obj4;
        o1 o1Var3 = o1Var;
        Object obj5 = obj;
        o oVar3 = oVar;
        Object builderFromMessage = null;
        t tVar = null;
        while (true) {
            try {
                int fieldNumber = h1Var.getFieldNumber();
                int iPositionForFieldNumber = positionForFieldNumber(fieldNumber);
                if (iPositionForFieldNumber >= 0) {
                    obj2 = obj5;
                    try {
                        int iTypeAndOffsetAt = typeAndOffsetAt(iPositionForFieldNumber);
                        try {
                            switch (type(iTypeAndOffsetAt)) {
                                case 0:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putDouble(obj2, offset(iTypeAndOffsetAt), h1Var.readDouble());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 1:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putFloat(obj2, offset(iTypeAndOffsetAt), h1Var.readFloat());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 2:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putLong(obj2, offset(iTypeAndOffsetAt), h1Var.readInt64());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 3:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putLong(obj2, offset(iTypeAndOffsetAt), h1Var.readUInt64());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 4:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putInt(obj2, offset(iTypeAndOffsetAt), h1Var.readInt32());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 5:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putLong(obj2, offset(iTypeAndOffsetAt), h1Var.readFixed64());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 6:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putInt(obj2, offset(iTypeAndOffsetAt), h1Var.readFixed32());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 7:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putBoolean(obj2, offset(iTypeAndOffsetAt), h1Var.readBool());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 8:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    readString(obj2, iTypeAndOffsetAt, h1Var);
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 9:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s0 s0Var = (s0) mutableMessageFieldForMerge(obj2, iPositionForFieldNumber);
                                    h1Var.mergeMessageField(s0Var, getMessageFieldSchema(iPositionForFieldNumber), oVar2);
                                    storeMessageField(obj2, iPositionForFieldNumber, s0Var);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 10:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), h1Var.readBytes());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 11:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putInt(obj2, offset(iTypeAndOffsetAt), h1Var.readUInt32());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 12:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    int i13 = h1Var.readEnum();
                                    y.e enumFieldVerifier = getEnumFieldVerifier(iPositionForFieldNumber);
                                    if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i13)) {
                                        s1.putInt(obj2, offset(iTypeAndOffsetAt), i13);
                                        setFieldPresent(obj2, iPositionForFieldNumber);
                                        builderFromMessage = obj4;
                                    } else {
                                        builderFromMessage = k1.storeUnknownEnum(obj2, fieldNumber, i13, obj4, o1Var2);
                                    }
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 13:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putInt(obj2, offset(iTypeAndOffsetAt), h1Var.readSFixed32());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 14:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putLong(obj2, offset(iTypeAndOffsetAt), h1Var.readSFixed64());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 15:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putInt(obj2, offset(iTypeAndOffsetAt), h1Var.readSInt32());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 16:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s1.putLong(obj2, offset(iTypeAndOffsetAt), h1Var.readSInt64());
                                    setFieldPresent(obj2, iPositionForFieldNumber);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 17:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    s0 s0Var2 = (s0) mutableMessageFieldForMerge(obj2, iPositionForFieldNumber);
                                    h1Var.mergeGroupField(s0Var2, getMessageFieldSchema(iPositionForFieldNumber), oVar2);
                                    storeMessageField(obj2, iPositionForFieldNumber, s0Var2);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 18:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readDoubleList(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 19:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readFloatList(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 20:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readInt64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 21:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readUInt64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 22:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readInt32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 23:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readFixed64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 24:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readFixed32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 25:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readBoolList(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 26:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    readStringList(obj2, iTypeAndOffsetAt, h1Var);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 27:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    readMessageList(obj, iTypeAndOffsetAt, h1Var, getMessageFieldSchema(iPositionForFieldNumber), oVar);
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 28:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readBytesList(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case NOTIFICATION_REDIRECT_VALUE:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readUInt32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 30:
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    List<Integer> listMutableListAt = this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt));
                                    h1Var.readEnumList(listMutableListAt);
                                    builderFromMessage = k1.filterUnknownEnumList(obj, fieldNumber, listMutableListAt, getEnumFieldVerifier(iPositionForFieldNumber), builderFromMessage, o1Var);
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case TEMPLATE_HTML_SIZE_VALUE:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSFixed32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 32:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSFixed64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 33:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSInt32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 34:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSInt64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 35:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readDoubleList(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 36:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readFloatList(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 37:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readInt64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 38:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readUInt64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 39:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readInt32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 40:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readFixed64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 41:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readFixed32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 42:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readBoolList(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 43:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readUInt32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 44:
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    List<Integer> listMutableListAt2 = this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt));
                                    h1Var.readEnumList(listMutableListAt2);
                                    builderFromMessage = k1.filterUnknownEnumList(obj, fieldNumber, listMutableListAt2, getEnumFieldVerifier(iPositionForFieldNumber), builderFromMessage, o1Var);
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 45:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSFixed32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 46:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSFixed64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 47:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSInt32List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    h1Var.readSInt64List(this.listFieldSchema.mutableListAt(obj2, offset(iTypeAndOffsetAt)));
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    try {
                                        readGroupList(obj, offset(iTypeAndOffsetAt), h1Var, getMessageFieldSchema(iPositionForFieldNumber), oVar);
                                        builderFromMessage = obj4;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                                        builderFromMessage = obj4;
                                        try {
                                            if (!o1Var2.shouldDiscardUnknownFields(h1Var)) {
                                                if (builderFromMessage == null) {
                                                    builderFromMessage = o1Var2.getBuilderFromMessage(obj2);
                                                }
                                                if (!o1Var2.mergeOneFieldFrom(builderFromMessage, h1Var, 0)) {
                                                    objFilterMapUnknownEnumValues2 = builderFromMessage;
                                                    for (i11 = this.checkInitializedCount; i11 < this.repeatedFieldOffsetStart; i11++) {
                                                        objFilterMapUnknownEnumValues2 = filterMapUnknownEnumValues(obj, this.intArray[i11], objFilterMapUnknownEnumValues2, o1Var, obj);
                                                    }
                                                    if (objFilterMapUnknownEnumValues2 != null) {
                                                        o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues2);
                                                        return;
                                                    }
                                                    return;
                                                }
                                            } else if (!h1Var.skipField()) {
                                                objFilterMapUnknownEnumValues3 = builderFromMessage;
                                                for (i12 = this.checkInitializedCount; i12 < this.repeatedFieldOffsetStart; i12++) {
                                                    objFilterMapUnknownEnumValues3 = filterMapUnknownEnumValues(obj, this.intArray[i12], objFilterMapUnknownEnumValues3, o1Var, obj);
                                                }
                                                if (objFilterMapUnknownEnumValues3 != null) {
                                                    o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues3);
                                                    return;
                                                }
                                                return;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        builderFromMessage = obj4;
                                        objFilterMapUnknownEnumValues = builderFromMessage;
                                        for (i10 = this.checkInitializedCount; i10 < this.repeatedFieldOffsetStart; i10++) {
                                            objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(obj, this.intArray[i10], objFilterMapUnknownEnumValues, o1Var, obj);
                                        }
                                        if (objFilterMapUnknownEnumValues != null) {
                                            o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues);
                                        }
                                        throw th;
                                    }
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 50:
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    try {
                                        mergeMap(obj, iPositionForFieldNumber, getMapFieldDefaultEntry(iPositionForFieldNumber), oVar, h1Var);
                                        o1Var2 = o1Var3;
                                        builderFromMessage = obj4;
                                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused2) {
                                        o1Var2 = o1Var3;
                                        builderFromMessage = obj4;
                                        if (!o1Var2.shouldDiscardUnknownFields(h1Var)) {
                                            if (builderFromMessage == null) {
                                                builderFromMessage = o1Var2.getBuilderFromMessage(obj2);
                                            }
                                            if (!o1Var2.mergeOneFieldFrom(builderFromMessage, h1Var, 0)) {
                                                objFilterMapUnknownEnumValues2 = builderFromMessage;
                                                while (i11 < this.repeatedFieldOffsetStart) {
                                                    objFilterMapUnknownEnumValues2 = filterMapUnknownEnumValues(obj, this.intArray[i11], objFilterMapUnknownEnumValues2, o1Var, obj);
                                                }
                                                if (objFilterMapUnknownEnumValues2 != null) {
                                                    o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues2);
                                                    return;
                                                }
                                                return;
                                            }
                                        } else if (!h1Var.skipField()) {
                                            objFilterMapUnknownEnumValues3 = builderFromMessage;
                                            while (i12 < this.repeatedFieldOffsetStart) {
                                                objFilterMapUnknownEnumValues3 = filterMapUnknownEnumValues(obj, this.intArray[i12], objFilterMapUnknownEnumValues3, o1Var, obj);
                                            }
                                            if (objFilterMapUnknownEnumValues3 != null) {
                                                o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues3);
                                                return;
                                            }
                                            return;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        o1Var2 = o1Var3;
                                        builderFromMessage = obj4;
                                        objFilterMapUnknownEnumValues = builderFromMessage;
                                        while (i10 < this.repeatedFieldOffsetStart) {
                                            objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(obj, this.intArray[i10], objFilterMapUnknownEnumValues, o1Var, obj);
                                        }
                                        if (objFilterMapUnknownEnumValues != null) {
                                            o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues);
                                        }
                                        throw th;
                                    }
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 51:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Double.valueOf(h1Var.readDouble()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Float.valueOf(h1Var.readFloat()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Long.valueOf(h1Var.readInt64()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Long.valueOf(h1Var.readUInt64()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Integer.valueOf(h1Var.readInt32()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case AD_VISIBILITY_VALUE:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Long.valueOf(h1Var.readFixed64()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 57:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Integer.valueOf(h1Var.readFixed32()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Boolean.valueOf(h1Var.readBool()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 59:
                                    readString(obj2, iTypeAndOffsetAt, h1Var);
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 60:
                                    s0 s0Var3 = (s0) mutableOneofMessageFieldForMerge(obj2, fieldNumber, iPositionForFieldNumber);
                                    h1Var.mergeMessageField(s0Var3, getMessageFieldSchema(iPositionForFieldNumber), oVar3);
                                    storeOneofMessageField(obj2, fieldNumber, iPositionForFieldNumber, s0Var3);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 61:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), h1Var.readBytes());
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 62:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Integer.valueOf(h1Var.readUInt32()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 63:
                                    int i14 = h1Var.readEnum();
                                    y.e enumFieldVerifier2 = getEnumFieldVerifier(iPositionForFieldNumber);
                                    if (enumFieldVerifier2 != null && !enumFieldVerifier2.isInRange(i14)) {
                                        builderFromMessage = k1.storeUnknownEnum(obj2, fieldNumber, i14, builderFromMessage, o1Var3);
                                        oVar2 = oVar3;
                                        o1Var2 = o1Var3;
                                        oVar3 = oVar2;
                                        o1Var3 = o1Var2;
                                        obj5 = obj2;
                                    }
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Integer.valueOf(i14));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 64:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Integer.valueOf(h1Var.readSFixed32()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Long.valueOf(h1Var.readSFixed64()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 66:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Integer.valueOf(h1Var.readSInt32()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 67:
                                    s1.putObject(obj2, offset(iTypeAndOffsetAt), Long.valueOf(h1Var.readSInt64()));
                                    setOneofPresent(obj2, fieldNumber, iPositionForFieldNumber);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                case 68:
                                    s0 s0Var4 = (s0) mutableOneofMessageFieldForMerge(obj2, fieldNumber, iPositionForFieldNumber);
                                    h1Var.mergeGroupField(s0Var4, getMessageFieldSchema(iPositionForFieldNumber), oVar3);
                                    storeOneofMessageField(obj2, fieldNumber, iPositionForFieldNumber, s0Var4);
                                    obj4 = builderFromMessage;
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    builderFromMessage = obj4;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                                default:
                                    if (builderFromMessage == null) {
                                        try {
                                            builderFromMessage = o1Var3.getBuilderFromMessage(obj2);
                                            break;
                                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused3) {
                                            oVar2 = oVar3;
                                            o1Var2 = o1Var3;
                                            if (!o1Var2.shouldDiscardUnknownFields(h1Var)) {
                                                if (builderFromMessage == null) {
                                                    builderFromMessage = o1Var2.getBuilderFromMessage(obj2);
                                                }
                                                if (!o1Var2.mergeOneFieldFrom(builderFromMessage, h1Var, 0)) {
                                                    objFilterMapUnknownEnumValues2 = builderFromMessage;
                                                    while (i11 < this.repeatedFieldOffsetStart) {
                                                        objFilterMapUnknownEnumValues2 = filterMapUnknownEnumValues(obj, this.intArray[i11], objFilterMapUnknownEnumValues2, o1Var, obj);
                                                    }
                                                    if (objFilterMapUnknownEnumValues2 != null) {
                                                        o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues2);
                                                        return;
                                                    }
                                                    return;
                                                }
                                            } else if (!h1Var.skipField()) {
                                                objFilterMapUnknownEnumValues3 = builderFromMessage;
                                                while (i12 < this.repeatedFieldOffsetStart) {
                                                    objFilterMapUnknownEnumValues3 = filterMapUnknownEnumValues(obj, this.intArray[i12], objFilterMapUnknownEnumValues3, o1Var, obj);
                                                }
                                                if (objFilterMapUnknownEnumValues3 != null) {
                                                    o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues3);
                                                    return;
                                                }
                                                return;
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                            o1Var2 = o1Var3;
                                            objFilterMapUnknownEnumValues = builderFromMessage;
                                            while (i10 < this.repeatedFieldOffsetStart) {
                                                objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(obj, this.intArray[i10], objFilterMapUnknownEnumValues, o1Var, obj);
                                            }
                                            if (objFilterMapUnknownEnumValues != null) {
                                                o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues);
                                            }
                                            throw th;
                                        }
                                    }
                                    if (!o1Var3.mergeOneFieldFrom(builderFromMessage, h1Var, 0)) {
                                        Object objFilterMapUnknownEnumValues4 = builderFromMessage;
                                        for (int i15 = this.checkInitializedCount; i15 < this.repeatedFieldOffsetStart; i15++) {
                                            objFilterMapUnknownEnumValues4 = filterMapUnknownEnumValues(obj, this.intArray[i15], objFilterMapUnknownEnumValues4, o1Var, obj);
                                        }
                                        if (objFilterMapUnknownEnumValues4 != null) {
                                            o1Var3.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues4);
                                            return;
                                        }
                                        return;
                                    }
                                    oVar2 = oVar3;
                                    o1Var2 = o1Var3;
                                    oVar3 = oVar2;
                                    o1Var3 = o1Var2;
                                    obj5 = obj2;
                                    break;
                            }
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused4) {
                        }
                    } catch (Throwable th6) {
                        th = th6;
                    }
                } else {
                    if (fieldNumber == Integer.MAX_VALUE) {
                        Object objFilterMapUnknownEnumValues5 = builderFromMessage;
                        for (int i16 = this.checkInitializedCount; i16 < this.repeatedFieldOffsetStart; i16++) {
                            objFilterMapUnknownEnumValues5 = filterMapUnknownEnumValues(obj, this.intArray[i16], objFilterMapUnknownEnumValues5, o1Var, obj);
                        }
                        if (objFilterMapUnknownEnumValues5 != null) {
                            o1Var3.setBuilderToMessage(obj5, objFilterMapUnknownEnumValues5);
                            return;
                        }
                        return;
                    }
                    try {
                        Object objFindExtensionByNumber = !this.hasExtensions ? null : pVar.findExtensionByNumber(oVar3, this.defaultInstance, fieldNumber);
                        if (objFindExtensionByNumber != null) {
                            t mutableExtensions = tVar == null ? pVar.getMutableExtensions(obj) : tVar;
                            obj3 = obj5;
                            try {
                                builderFromMessage = pVar.parseExtension(obj, h1Var, objFindExtensionByNumber, oVar, mutableExtensions, builderFromMessage, o1Var);
                                tVar = mutableExtensions;
                            } catch (Throwable th7) {
                                th = th7;
                                obj2 = obj3;
                                o1Var2 = o1Var3;
                                objFilterMapUnknownEnumValues = builderFromMessage;
                                while (i10 < this.repeatedFieldOffsetStart) {
                                    objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(obj, this.intArray[i10], objFilterMapUnknownEnumValues, o1Var, obj);
                                }
                                if (objFilterMapUnknownEnumValues != null) {
                                    o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues);
                                }
                                throw th;
                            }
                        } else {
                            obj3 = obj5;
                            if (!o1Var3.shouldDiscardUnknownFields(h1Var)) {
                                if (builderFromMessage == null) {
                                    builderFromMessage = o1Var3.getBuilderFromMessage(obj3);
                                }
                                if (!o1Var3.mergeOneFieldFrom(builderFromMessage, h1Var, 0)) {
                                }
                            } else if (!h1Var.skipField()) {
                            }
                        }
                        obj5 = obj3;
                    } catch (Throwable th8) {
                        th = th8;
                        obj2 = obj5;
                        o1Var2 = o1Var3;
                        objFilterMapUnknownEnumValues = builderFromMessage;
                        while (i10 < this.repeatedFieldOffsetStart) {
                            objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(obj, this.intArray[i10], objFilterMapUnknownEnumValues, o1Var, obj);
                        }
                        if (objFilterMapUnknownEnumValues != null) {
                            o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th9) {
                th = th9;
            }
            objFilterMapUnknownEnumValues = builderFromMessage;
            while (i10 < this.repeatedFieldOffsetStart) {
                objFilterMapUnknownEnumValues = filterMapUnknownEnumValues(obj, this.intArray[i10], objFilterMapUnknownEnumValues, o1Var, obj);
            }
            if (objFilterMapUnknownEnumValues != null) {
                o1Var2.setBuilderToMessage(obj2, objFilterMapUnknownEnumValues);
            }
            throw th;
        }
        int i17 = this.checkInitializedCount;
        Object objFilterMapUnknownEnumValues6 = builderFromMessage;
        while (i17 < this.repeatedFieldOffsetStart) {
            objFilterMapUnknownEnumValues6 = filterMapUnknownEnumValues(obj, this.intArray[i17], objFilterMapUnknownEnumValues6, o1Var, obj);
            i17++;
            obj3 = obj3;
        }
        Object obj6 = obj3;
        if (objFilterMapUnknownEnumValues6 != null) {
            o1Var3.setBuilderToMessage(obj6, objFilterMapUnknownEnumValues6);
        }
    }

    private final <K, V> void mergeMap(Object obj, int i10, Object obj2, o oVar, h1 h1Var) throws IOException {
        long jOffset = offset(typeAndOffsetAt(i10));
        Object object = s1.getObject(obj, jOffset);
        if (object == null) {
            object = this.mapFieldSchema.newMapField(obj2);
            s1.putObject(obj, jOffset, object);
        } else if (this.mapFieldSchema.isImmutable(object)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(obj2);
            this.mapFieldSchema.mergeFrom(objNewMapField, object);
            s1.putObject(obj, jOffset, objNewMapField);
            object = objNewMapField;
        }
        h1Var.readMap(this.mapFieldSchema.forMutableMapData(object), this.mapFieldSchema.forMapMetadata(obj2), oVar);
    }

    private void mergeMessage(Object obj, Object obj2, int i10) {
        if (isFieldPresent(obj2, i10)) {
            long jOffset = offset(typeAndOffsetAt(i10));
            Unsafe unsafe = UNSAFE;
            Object object = unsafe.getObject(obj2, jOffset);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + numberAt(i10) + " is present but null: " + obj2);
            }
            i1 messageFieldSchema = getMessageFieldSchema(i10);
            if (!isFieldPresent(obj, i10)) {
                if (isMutable(object)) {
                    Object objNewInstance = messageFieldSchema.newInstance();
                    messageFieldSchema.mergeFrom(objNewInstance, object);
                    unsafe.putObject(obj, jOffset, objNewInstance);
                } else {
                    unsafe.putObject(obj, jOffset, object);
                }
                setFieldPresent(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, jOffset);
            if (!isMutable(object2)) {
                Object objNewInstance2 = messageFieldSchema.newInstance();
                messageFieldSchema.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(obj, jOffset, objNewInstance2);
                object2 = objNewInstance2;
            }
            messageFieldSchema.mergeFrom(object2, object);
        }
    }

    private void mergeOneofMessage(Object obj, Object obj2, int i10) {
        int iNumberAt = numberAt(i10);
        if (isOneofPresent(obj2, iNumberAt, i10)) {
            long jOffset = offset(typeAndOffsetAt(i10));
            Unsafe unsafe = UNSAFE;
            Object object = unsafe.getObject(obj2, jOffset);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + numberAt(i10) + " is present but null: " + obj2);
            }
            i1 messageFieldSchema = getMessageFieldSchema(i10);
            if (!isOneofPresent(obj, iNumberAt, i10)) {
                if (isMutable(object)) {
                    Object objNewInstance = messageFieldSchema.newInstance();
                    messageFieldSchema.mergeFrom(objNewInstance, object);
                    unsafe.putObject(obj, jOffset, objNewInstance);
                } else {
                    unsafe.putObject(obj, jOffset, object);
                }
                setOneofPresent(obj, iNumberAt, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, jOffset);
            if (!isMutable(object2)) {
                Object objNewInstance2 = messageFieldSchema.newInstance();
                messageFieldSchema.mergeFrom(objNewInstance2, object2);
                unsafe.putObject(obj, jOffset, objNewInstance2);
                object2 = objNewInstance2;
            }
            messageFieldSchema.mergeFrom(object2, object);
        }
    }

    private void mergeSingleField(Object obj, Object obj2, int i10) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i10);
        long jOffset = offset(iTypeAndOffsetAt);
        int iNumberAt = numberAt(i10);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                if (isFieldPresent(obj2, i10)) {
                    s1.putDouble(obj, jOffset, s1.getDouble(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 1:
                if (isFieldPresent(obj2, i10)) {
                    s1.putFloat(obj, jOffset, s1.getFloat(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 2:
                if (isFieldPresent(obj2, i10)) {
                    s1.putLong(obj, jOffset, s1.getLong(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 3:
                if (isFieldPresent(obj2, i10)) {
                    s1.putLong(obj, jOffset, s1.getLong(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 4:
                if (isFieldPresent(obj2, i10)) {
                    s1.putInt(obj, jOffset, s1.getInt(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 5:
                if (isFieldPresent(obj2, i10)) {
                    s1.putLong(obj, jOffset, s1.getLong(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 6:
                if (isFieldPresent(obj2, i10)) {
                    s1.putInt(obj, jOffset, s1.getInt(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 7:
                if (isFieldPresent(obj2, i10)) {
                    s1.putBoolean(obj, jOffset, s1.getBoolean(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 8:
                if (isFieldPresent(obj2, i10)) {
                    s1.putObject(obj, jOffset, s1.getObject(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 9:
                mergeMessage(obj, obj2, i10);
                break;
            case 10:
                if (isFieldPresent(obj2, i10)) {
                    s1.putObject(obj, jOffset, s1.getObject(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 11:
                if (isFieldPresent(obj2, i10)) {
                    s1.putInt(obj, jOffset, s1.getInt(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 12:
                if (isFieldPresent(obj2, i10)) {
                    s1.putInt(obj, jOffset, s1.getInt(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 13:
                if (isFieldPresent(obj2, i10)) {
                    s1.putInt(obj, jOffset, s1.getInt(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 14:
                if (isFieldPresent(obj2, i10)) {
                    s1.putLong(obj, jOffset, s1.getLong(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 15:
                if (isFieldPresent(obj2, i10)) {
                    s1.putInt(obj, jOffset, s1.getInt(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 16:
                if (isFieldPresent(obj2, i10)) {
                    s1.putLong(obj, jOffset, s1.getLong(obj2, jOffset));
                    setFieldPresent(obj, i10);
                }
                break;
            case 17:
                mergeMessage(obj, obj2, i10);
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case NOTIFICATION_REDIRECT_VALUE:
            case 30:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                this.listFieldSchema.mergeListsAt(obj, obj2, jOffset);
                break;
            case 50:
                k1.mergeMap(this.mapFieldSchema, obj, obj2, jOffset);
                break;
            case 51:
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case AD_VISIBILITY_VALUE:
            case 57:
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
            case 59:
                if (isOneofPresent(obj2, iNumberAt, i10)) {
                    s1.putObject(obj, jOffset, s1.getObject(obj2, jOffset));
                    setOneofPresent(obj, iNumberAt, i10);
                }
                break;
            case 60:
                mergeOneofMessage(obj, obj2, i10);
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
            case 66:
            case 67:
                if (isOneofPresent(obj2, iNumberAt, i10)) {
                    s1.putObject(obj, jOffset, s1.getObject(obj2, jOffset));
                    setOneofPresent(obj, iNumberAt, i10);
                }
                break;
            case 68:
                mergeOneofMessage(obj, obj2, i10);
                break;
        }
    }

    private Object mutableMessageFieldForMerge(Object obj, int i10) {
        i1 messageFieldSchema = getMessageFieldSchema(i10);
        long jOffset = offset(typeAndOffsetAt(i10));
        if (!isFieldPresent(obj, i10)) {
            return messageFieldSchema.newInstance();
        }
        Object object = UNSAFE.getObject(obj, jOffset);
        if (isMutable(object)) {
            return object;
        }
        Object objNewInstance = messageFieldSchema.newInstance();
        if (object != null) {
            messageFieldSchema.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    private Object mutableOneofMessageFieldForMerge(Object obj, int i10, int i11) {
        i1 messageFieldSchema = getMessageFieldSchema(i11);
        if (!isOneofPresent(obj, i10, i11)) {
            return messageFieldSchema.newInstance();
        }
        Object object = UNSAFE.getObject(obj, offset(typeAndOffsetAt(i11)));
        if (isMutable(object)) {
            return object;
        }
        Object objNewInstance = messageFieldSchema.newInstance();
        if (object != null) {
            messageFieldSchema.mergeFrom(objNewInstance, object);
        }
        return objNewInstance;
    }

    static <T> v0 newSchema(Class<T> cls, q0 q0Var, x0 x0Var, j0 j0Var, o1 o1Var, p pVar, n0 n0Var) {
        return q0Var instanceof g1 ? newSchemaForRawMessageInfo((g1) q0Var, x0Var, j0Var, o1Var, pVar, n0Var) : newSchemaForMessageInfo((m1) q0Var, x0Var, j0Var, o1Var, pVar, n0Var);
    }

    static <T> v0 newSchemaForMessageInfo(m1 m1Var, x0 x0Var, j0 j0Var, o1 o1Var, p pVar, n0 n0Var) {
        int fieldNumber;
        int fieldNumber2;
        s[] fields = m1Var.getFields();
        if (fields.length == 0) {
            fieldNumber = 0;
            fieldNumber2 = 0;
        } else {
            fieldNumber = fields[0].getFieldNumber();
            fieldNumber2 = fields[fields.length - 1].getFieldNumber();
        }
        int length = fields.length;
        int[] iArr = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        int i10 = 0;
        int i11 = 0;
        for (s sVar : fields) {
            if (sVar.getType() == FieldType.MAP) {
                i10++;
            } else if (sVar.getType().id() >= 18 && sVar.getType().id() <= 49) {
                i11++;
            }
        }
        int[] iArr2 = i10 > 0 ? new int[i10] : null;
        int[] iArr3 = i11 > 0 ? new int[i11] : null;
        int[] checkInitialized = m1Var.getCheckInitialized();
        if (checkInitialized == null) {
            checkInitialized = EMPTY_INT_ARRAY;
        }
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i12 < fields.length) {
            s sVar2 = fields[i12];
            int fieldNumber3 = sVar2.getFieldNumber();
            storeFieldData(sVar2, iArr, i13, objArr);
            if (i14 < checkInitialized.length && checkInitialized[i14] == fieldNumber3) {
                checkInitialized[i14] = i13;
                i14++;
            }
            if (sVar2.getType() == FieldType.MAP) {
                iArr2[i15] = i13;
                i15++;
            } else {
                if (sVar2.getType().id() >= 18 && sVar2.getType().id() <= 49) {
                    iArr3[i16] = (int) s1.objectFieldOffset(sVar2.getField());
                    i16++;
                }
                i12++;
                i13 += 3;
            }
            i12++;
            i13 += 3;
        }
        if (iArr2 == null) {
            iArr2 = EMPTY_INT_ARRAY;
        }
        if (iArr3 == null) {
            iArr3 = EMPTY_INT_ARRAY;
        }
        int[] iArr4 = new int[checkInitialized.length + iArr2.length + iArr3.length];
        System.arraycopy(checkInitialized, 0, iArr4, 0, checkInitialized.length);
        System.arraycopy(iArr2, 0, iArr4, checkInitialized.length, iArr2.length);
        System.arraycopy(iArr3, 0, iArr4, checkInitialized.length + iArr2.length, iArr3.length);
        return new v0(iArr, objArr, fieldNumber, fieldNumber2, m1Var.getDefaultInstance(), m1Var.getSyntax(), true, iArr4, checkInitialized.length, checkInitialized.length + iArr2.length, x0Var, j0Var, o1Var, pVar, n0Var);
    }

    /* JADX WARN: Code duplicated, block: B:121:0x0249  */
    /* JADX WARN: Code duplicated, block: B:123:0x024e  */
    /* JADX WARN: Code duplicated, block: B:126:0x0264  */
    /* JADX WARN: Code duplicated, block: B:127:0x0267  */
    static <T> v0 newSchemaForRawMessageInfo(g1 g1Var, x0 x0Var, j0 j0Var, o1 o1Var, p pVar, n0 n0Var) {
        int i10;
        int iCharAt;
        int iCharAt2;
        int i11;
        int i12;
        int[] iArr;
        int i13;
        int i14;
        int i15;
        int i16;
        char cCharAt;
        int i17;
        char cCharAt2;
        int i18;
        char cCharAt3;
        int i19;
        char cCharAt4;
        int i20;
        char cCharAt5;
        int i21;
        char cCharAt6;
        int i22;
        char cCharAt7;
        int i23;
        char cCharAt8;
        int i24;
        int i25;
        int i26;
        int i27;
        int iObjectFieldOffset;
        int i28;
        int i29;
        int iObjectFieldOffset2;
        Field fieldReflectField;
        int i30;
        char cCharAt9;
        int i31;
        int i32;
        int i33;
        Object obj;
        Field fieldReflectField2;
        int i34;
        Object obj2;
        Field fieldReflectField3;
        int i35;
        char cCharAt10;
        int i36;
        char cCharAt11;
        int i37;
        char cCharAt12;
        int i38;
        char cCharAt13;
        String stringInfo = g1Var.getStringInfo();
        int length = stringInfo.length();
        char c10 = 55296;
        if (stringInfo.charAt(0) >= 55296) {
            int i39 = 1;
            while (true) {
                i10 = i39 + 1;
                if (stringInfo.charAt(i39) < 55296) {
                    break;
                }
                i39 = i10;
            }
        } else {
            i10 = 1;
        }
        int i40 = i10 + 1;
        int iCharAt3 = stringInfo.charAt(i10);
        if (iCharAt3 >= 55296) {
            int i41 = iCharAt3 & 8191;
            int i42 = 13;
            while (true) {
                i38 = i40 + 1;
                cCharAt13 = stringInfo.charAt(i40);
                if (cCharAt13 < 55296) {
                    break;
                }
                i41 |= (cCharAt13 & 8191) << i42;
                i42 += 13;
                i40 = i38;
            }
            iCharAt3 = i41 | (cCharAt13 << i42);
            i40 = i38;
        }
        if (iCharAt3 == 0) {
            iCharAt = 0;
            iCharAt2 = 0;
            i14 = 0;
            i15 = 0;
            i11 = 0;
            i13 = 0;
            iArr = EMPTY_INT_ARRAY;
            i12 = 0;
        } else {
            int i43 = i40 + 1;
            int iCharAt4 = stringInfo.charAt(i40);
            if (iCharAt4 >= 55296) {
                int i44 = iCharAt4 & 8191;
                int i45 = 13;
                while (true) {
                    i23 = i43 + 1;
                    cCharAt8 = stringInfo.charAt(i43);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i44 |= (cCharAt8 & 8191) << i45;
                    i45 += 13;
                    i43 = i23;
                }
                iCharAt4 = i44 | (cCharAt8 << i45);
                i43 = i23;
            }
            int i46 = i43 + 1;
            int iCharAt5 = stringInfo.charAt(i43);
            if (iCharAt5 >= 55296) {
                int i47 = iCharAt5 & 8191;
                int i48 = 13;
                while (true) {
                    i22 = i46 + 1;
                    cCharAt7 = stringInfo.charAt(i46);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt7 & 8191) << i48;
                    i48 += 13;
                    i46 = i22;
                }
                iCharAt5 = i47 | (cCharAt7 << i48);
                i46 = i22;
            }
            int i49 = i46 + 1;
            int iCharAt6 = stringInfo.charAt(i46);
            if (iCharAt6 >= 55296) {
                int i50 = iCharAt6 & 8191;
                int i51 = 13;
                while (true) {
                    i21 = i49 + 1;
                    cCharAt6 = stringInfo.charAt(i49);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt6 & 8191) << i51;
                    i51 += 13;
                    i49 = i21;
                }
                iCharAt6 = i50 | (cCharAt6 << i51);
                i49 = i21;
            }
            int i52 = i49 + 1;
            int iCharAt7 = stringInfo.charAt(i49);
            if (iCharAt7 >= 55296) {
                int i53 = iCharAt7 & 8191;
                int i54 = 13;
                while (true) {
                    i20 = i52 + 1;
                    cCharAt5 = stringInfo.charAt(i52);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt5 & 8191) << i54;
                    i54 += 13;
                    i52 = i20;
                }
                iCharAt7 = i53 | (cCharAt5 << i54);
                i52 = i20;
            }
            int i55 = i52 + 1;
            iCharAt = stringInfo.charAt(i52);
            if (iCharAt >= 55296) {
                int i56 = iCharAt & 8191;
                int i57 = 13;
                while (true) {
                    i19 = i55 + 1;
                    cCharAt4 = stringInfo.charAt(i55);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i56 |= (cCharAt4 & 8191) << i57;
                    i57 += 13;
                    i55 = i19;
                }
                iCharAt = i56 | (cCharAt4 << i57);
                i55 = i19;
            }
            int i58 = i55 + 1;
            iCharAt2 = stringInfo.charAt(i55);
            if (iCharAt2 >= 55296) {
                int i59 = iCharAt2 & 8191;
                int i60 = 13;
                while (true) {
                    i18 = i58 + 1;
                    cCharAt3 = stringInfo.charAt(i58);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i59 |= (cCharAt3 & 8191) << i60;
                    i60 += 13;
                    i58 = i18;
                }
                iCharAt2 = i59 | (cCharAt3 << i60);
                i58 = i18;
            }
            int i61 = i58 + 1;
            int iCharAt8 = stringInfo.charAt(i58);
            if (iCharAt8 >= 55296) {
                int i62 = iCharAt8 & 8191;
                int i63 = 13;
                while (true) {
                    i17 = i61 + 1;
                    cCharAt2 = stringInfo.charAt(i61);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i62 |= (cCharAt2 & 8191) << i63;
                    i63 += 13;
                    i61 = i17;
                }
                iCharAt8 = i62 | (cCharAt2 << i63);
                i61 = i17;
            }
            int i64 = i61 + 1;
            int iCharAt9 = stringInfo.charAt(i61);
            if (iCharAt9 >= 55296) {
                int i65 = iCharAt9 & 8191;
                int i66 = 13;
                while (true) {
                    i16 = i64 + 1;
                    cCharAt = stringInfo.charAt(i64);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i65 |= (cCharAt & 8191) << i66;
                    i66 += 13;
                    i64 = i16;
                }
                iCharAt9 = i65 | (cCharAt << i66);
                i64 = i16;
            }
            i11 = (iCharAt4 * 2) + iCharAt5;
            i12 = iCharAt4;
            iArr = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i13 = iCharAt9;
            i40 = i64;
            i14 = iCharAt6;
            i15 = iCharAt7;
        }
        Unsafe unsafe = UNSAFE;
        Object[] objects = g1Var.getObjects();
        Class<?> cls = g1Var.getDefaultInstance().getClass();
        int[] iArr2 = new int[iCharAt * 3];
        Object[] objArr = new Object[iCharAt * 2];
        int i67 = i13 + iCharAt2;
        int i68 = i13;
        int i69 = i67;
        int i70 = 0;
        int i71 = 0;
        while (i40 < length) {
            int i72 = i40 + 1;
            int iCharAt10 = stringInfo.charAt(i40);
            if (iCharAt10 >= c10) {
                int i73 = iCharAt10 & 8191;
                int i74 = i72;
                int i75 = 13;
                while (true) {
                    i37 = i74 + 1;
                    cCharAt12 = stringInfo.charAt(i74);
                    if (cCharAt12 < c10) {
                        break;
                    }
                    i73 |= (cCharAt12 & 8191) << i75;
                    i75 += 13;
                    i74 = i37;
                }
                iCharAt10 = i73 | (cCharAt12 << i75);
                i24 = i37;
            } else {
                i24 = i72;
            }
            int i76 = i24 + 1;
            int iCharAt11 = stringInfo.charAt(i24);
            if (iCharAt11 >= c10) {
                int i77 = iCharAt11 & 8191;
                int i78 = i76;
                int i79 = 13;
                while (true) {
                    i36 = i78 + 1;
                    cCharAt11 = stringInfo.charAt(i78);
                    if (cCharAt11 < c10) {
                        break;
                    }
                    i77 |= (cCharAt11 & 8191) << i79;
                    i79 += 13;
                    i78 = i36;
                }
                iCharAt11 = i77 | (cCharAt11 << i79);
                i25 = i36;
            } else {
                i25 = i76;
            }
            int i80 = iCharAt11 & 255;
            int i81 = length;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i70] = i71;
                i70++;
            }
            int i82 = i70;
            if (i80 >= 51) {
                int i83 = i25 + 1;
                int iCharAt12 = stringInfo.charAt(i25);
                char c11 = 55296;
                if (iCharAt12 >= 55296) {
                    int i84 = iCharAt12 & 8191;
                    int i85 = 13;
                    while (true) {
                        i35 = i83 + 1;
                        cCharAt10 = stringInfo.charAt(i83);
                        if (cCharAt10 < c11) {
                            break;
                        }
                        i84 |= (cCharAt10 & 8191) << i85;
                        i85 += 13;
                        i83 = i35;
                        c11 = 55296;
                    }
                    iCharAt12 = i84 | (cCharAt10 << i85);
                    i83 = i35;
                }
                int i86 = i80 - 51;
                int i87 = i83;
                if (i86 == 9 || i86 == 17) {
                    i32 = i11 + 1;
                    objArr[((i71 / 3) * 2) + 1] = objects[i11];
                } else {
                    if (i86 == 12 && (g1Var.getSyntax().equals(ProtoSyntax.PROTO2) || (iCharAt11 & 2048) != 0)) {
                        i32 = i11 + 1;
                        objArr[((i71 / 3) * 2) + 1] = objects[i11];
                    }
                    i33 = iCharAt12 * 2;
                    obj = objects[i33];
                    if (obj instanceof Field) {
                        fieldReflectField2 = (Field) obj;
                    } else {
                        fieldReflectField2 = reflectField(cls, (String) obj);
                        objects[i33] = fieldReflectField2;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField2);
                    i34 = i33 + 1;
                    obj2 = objects[i34];
                    if (obj2 instanceof Field) {
                        fieldReflectField3 = (Field) obj2;
                    } else {
                        fieldReflectField3 = reflectField(cls, (String) obj2);
                        objects[i34] = fieldReflectField3;
                    }
                    i27 = i15;
                    i26 = i11;
                    i28 = i87;
                    stringInfo = stringInfo;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField3);
                    i29 = 0;
                }
                i11 = i32;
                i33 = iCharAt12 * 2;
                obj = objects[i33];
                if (obj instanceof Field) {
                    fieldReflectField2 = (Field) obj;
                } else {
                    fieldReflectField2 = reflectField(cls, (String) obj);
                    objects[i33] = fieldReflectField2;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldReflectField2);
                i34 = i33 + 1;
                obj2 = objects[i34];
                if (obj2 instanceof Field) {
                    fieldReflectField3 = (Field) obj2;
                } else {
                    fieldReflectField3 = reflectField(cls, (String) obj2);
                    objects[i34] = fieldReflectField3;
                }
                i27 = i15;
                i26 = i11;
                i28 = i87;
                stringInfo = stringInfo;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField3);
                i29 = 0;
            } else {
                i26 = i11 + 1;
                Field fieldReflectField4 = reflectField(cls, (String) objects[i11]);
                if (i80 == 9 || i80 == 17) {
                    i27 = i15;
                    objArr[((i71 / 3) * 2) + 1] = fieldReflectField4.getType();
                } else {
                    if (i80 == 27 || i80 == 49) {
                        i27 = i15;
                        i31 = i11 + 2;
                        objArr[((i71 / 3) * 2) + 1] = objects[i26];
                    } else if (i80 == 12 || i80 == 30 || i80 == 44) {
                        i27 = i15;
                        if (g1Var.getSyntax() == ProtoSyntax.PROTO2 || (iCharAt11 & 2048) != 0) {
                            i31 = i11 + 2;
                            objArr[((i71 / 3) * 2) + 1] = objects[i26];
                        }
                    } else {
                        if (i80 == 50) {
                            int i88 = i68 + 1;
                            iArr[i68] = i71;
                            int i89 = (i71 / 3) * 2;
                            int i90 = i11 + 2;
                            objArr[i89] = objects[i26];
                            if ((iCharAt11 & 2048) != 0) {
                                i26 = i11 + 3;
                                objArr[i89 + 1] = objects[i90];
                                i68 = i88;
                            } else {
                                i68 = i88;
                                i26 = i90;
                            }
                        }
                        i27 = i15;
                    }
                    i26 = i31;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldReflectField4);
                if ((iCharAt11 & 4096) == 0 || i80 > 17) {
                    iObjectFieldOffset = 1048575;
                    i28 = i25;
                    i29 = 0;
                } else {
                    i28 = i25 + 1;
                    int iCharAt13 = stringInfo.charAt(i25);
                    if (iCharAt13 >= 55296) {
                        int i91 = iCharAt13 & 8191;
                        int i92 = 13;
                        while (true) {
                            i30 = i28 + 1;
                            cCharAt9 = stringInfo.charAt(i28);
                            if (cCharAt9 < 55296) {
                                break;
                            }
                            i91 |= (cCharAt9 & 8191) << i92;
                            i92 += 13;
                            i28 = i30;
                        }
                        iCharAt13 = i91 | (cCharAt9 << i92);
                        i28 = i30;
                    }
                    int i93 = (i12 * 2) + (iCharAt13 / 32);
                    Object obj3 = objects[i93];
                    if (obj3 instanceof Field) {
                        fieldReflectField = (Field) obj3;
                    } else {
                        fieldReflectField = reflectField(cls, (String) obj3);
                        objects[i93] = fieldReflectField;
                    }
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldReflectField);
                    i29 = iCharAt13 % 32;
                }
                if (i80 >= 18 && i80 <= 49) {
                    iArr[i69] = iObjectFieldOffset3;
                    i69++;
                }
                iObjectFieldOffset2 = iObjectFieldOffset3;
            }
            int i94 = i71 + 1;
            iArr2[i71] = iCharAt10;
            int i95 = i71 + 2;
            int i96 = i12;
            iArr2[i94] = iObjectFieldOffset2 | (i80 << 20) | ((iCharAt11 & 256) != 0 ? 268435456 : 0) | ((iCharAt11 & 512) != 0 ? 536870912 : 0) | ((iCharAt11 & 2048) != 0 ? Integer.MIN_VALUE : 0);
            i71 += 3;
            iArr2[i95] = iObjectFieldOffset | (i29 << 20);
            i40 = i28;
            stringInfo = stringInfo;
            i11 = i26;
            length = i81;
            i15 = i27;
            i70 = i82;
            i12 = i96;
            i14 = i14;
            c10 = 55296;
        }
        return new v0(iArr2, objArr, i14, i15, g1Var.getDefaultInstance(), g1Var.getSyntax(), false, iArr, i13, i67, x0Var, j0Var, o1Var, pVar, n0Var);
    }

    private int numberAt(int i10) {
        return this.buffer[i10];
    }

    private static long offset(int i10) {
        return i10 & 1048575;
    }

    private static <T> boolean oneofBooleanAt(T t10, long j10) {
        return ((Boolean) s1.getObject(t10, j10)).booleanValue();
    }

    private static <T> double oneofDoubleAt(T t10, long j10) {
        return ((Double) s1.getObject(t10, j10)).doubleValue();
    }

    private static <T> float oneofFloatAt(T t10, long j10) {
        return ((Float) s1.getObject(t10, j10)).floatValue();
    }

    private static <T> int oneofIntAt(T t10, long j10) {
        return ((Integer) s1.getObject(t10, j10)).intValue();
    }

    private static <T> long oneofLongAt(T t10, long j10) {
        return ((Long) s1.getObject(t10, j10)).longValue();
    }

    private <K, V> int parseMapField(Object obj, byte[] bArr, int i10, int i11, int i12, long j10, e.b bVar) throws IOException {
        Unsafe unsafe = UNSAFE;
        Object mapFieldDefaultEntry = getMapFieldDefaultEntry(i12);
        Object object = unsafe.getObject(obj, j10);
        if (this.mapFieldSchema.isImmutable(object)) {
            Object objNewMapField = this.mapFieldSchema.newMapField(mapFieldDefaultEntry);
            this.mapFieldSchema.mergeFrom(objNewMapField, object);
            unsafe.putObject(obj, j10, objNewMapField);
            object = objNewMapField;
        }
        return decodeMapEntry(bArr, i10, i11, this.mapFieldSchema.forMapMetadata(mapFieldDefaultEntry), this.mapFieldSchema.forMutableMapData(object), bVar);
    }

    private int parseOneofField(Object obj, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, int i17, e.b bVar) throws IOException {
        Unsafe unsafe = UNSAFE;
        long j11 = this.buffer[i17 + 2] & 1048575;
        switch (i16) {
            case 51:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Double.valueOf(e.decodeDouble(bArr, i10)));
                int i18 = i10 + 8;
                unsafe.putInt(obj, j11, i13);
                return i18;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Float.valueOf(e.decodeFloat(bArr, i10)));
                int i19 = i10 + 4;
                unsafe.putInt(obj, j11, i13);
                return i19;
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint64 = e.decodeVarint64(bArr, i10, bVar);
                unsafe.putObject(obj, j10, Long.valueOf(bVar.long1));
                unsafe.putInt(obj, j11, i13);
                return iDecodeVarint64;
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case 62:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint32 = e.decodeVarint32(bArr, i10, bVar);
                unsafe.putObject(obj, j10, Integer.valueOf(bVar.int1));
                unsafe.putInt(obj, j11, i13);
                return iDecodeVarint32;
            case AD_VISIBILITY_VALUE:
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                if (i14 != 1) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Long.valueOf(e.decodeFixed64(bArr, i10)));
                int i20 = i10 + 8;
                unsafe.putInt(obj, j11, i13);
                return i20;
            case 57:
            case 64:
                if (i14 != 5) {
                    return i10;
                }
                unsafe.putObject(obj, j10, Integer.valueOf(e.decodeFixed32(bArr, i10)));
                int i21 = i10 + 4;
                unsafe.putInt(obj, j11, i13);
                return i21;
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint65 = e.decodeVarint64(bArr, i10, bVar);
                unsafe.putObject(obj, j10, Boolean.valueOf(bVar.long1 != 0));
                unsafe.putInt(obj, j11, i13);
                return iDecodeVarint65;
            case 59:
                if (i14 != 2) {
                    return i10;
                }
                int iDecodeVarint33 = e.decodeVarint32(bArr, i10, bVar);
                int i22 = bVar.int1;
                if (i22 == 0) {
                    unsafe.putObject(obj, j10, "");
                } else {
                    if ((i15 & 536870912) != 0 && !Utf8.isValidUtf8(bArr, iDecodeVarint33, iDecodeVarint33 + i22)) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    unsafe.putObject(obj, j10, new String(bArr, iDecodeVarint33, i22, y.UTF_8));
                    iDecodeVarint33 += i22;
                }
                unsafe.putInt(obj, j11, i13);
                return iDecodeVarint33;
            case 60:
                if (i14 != 2) {
                    return i10;
                }
                Object objMutableOneofMessageFieldForMerge = mutableOneofMessageFieldForMerge(obj, i13, i17);
                int iMergeMessageField = e.mergeMessageField(objMutableOneofMessageFieldForMerge, getMessageFieldSchema(i17), bArr, i10, i11, bVar);
                storeOneofMessageField(obj, i13, i17, objMutableOneofMessageFieldForMerge);
                return iMergeMessageField;
            case 61:
                if (i14 != 2) {
                    return i10;
                }
                int iDecodeBytes = e.decodeBytes(bArr, i10, bVar);
                unsafe.putObject(obj, j10, bVar.object1);
                unsafe.putInt(obj, j11, i13);
                return iDecodeBytes;
            case 63:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint34 = e.decodeVarint32(bArr, i10, bVar);
                int i23 = bVar.int1;
                y.e enumFieldVerifier = getEnumFieldVerifier(i17);
                if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i23)) {
                    unsafe.putObject(obj, j10, Integer.valueOf(i23));
                    unsafe.putInt(obj, j11, i13);
                } else {
                    getMutableUnknownFields(obj).storeField(i12, Long.valueOf(i23));
                }
                return iDecodeVarint34;
            case 66:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint35 = e.decodeVarint32(bArr, i10, bVar);
                unsafe.putObject(obj, j10, Integer.valueOf(i.decodeZigZag32(bVar.int1)));
                unsafe.putInt(obj, j11, i13);
                return iDecodeVarint35;
            case 67:
                if (i14 != 0) {
                    return i10;
                }
                int iDecodeVarint66 = e.decodeVarint64(bArr, i10, bVar);
                unsafe.putObject(obj, j10, Long.valueOf(i.decodeZigZag64(bVar.long1)));
                unsafe.putInt(obj, j11, i13);
                return iDecodeVarint66;
            case 68:
                if (i14 != 3) {
                    return i10;
                }
                Object objMutableOneofMessageFieldForMerge2 = mutableOneofMessageFieldForMerge(obj, i13, i17);
                int iMergeGroupField = e.mergeGroupField(objMutableOneofMessageFieldForMerge2, getMessageFieldSchema(i17), bArr, i10, i11, (i12 & (-8)) | 4, bVar);
                storeOneofMessageField(obj, i13, i17, objMutableOneofMessageFieldForMerge2);
                return iMergeGroupField;
            default:
                return i10;
        }
    }

    private int parseRepeatedField(Object obj, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, long j11, e.b bVar) throws IOException {
        int iDecodeVarint32List;
        Unsafe unsafe = UNSAFE;
        y.j jVarMutableCopyWithCapacity = (y.j) unsafe.getObject(obj, j11);
        if (!jVarMutableCopyWithCapacity.isModifiable()) {
            int size = jVarMutableCopyWithCapacity.size();
            jVarMutableCopyWithCapacity = jVarMutableCopyWithCapacity.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
            unsafe.putObject(obj, j11, jVarMutableCopyWithCapacity);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    return e.decodePackedDoubleList(bArr, i10, jVarMutableCopyWithCapacity, bVar);
                }
                return i14 == 1 ? e.decodeDoubleList(i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar) : i10;
            case 19:
            case 36:
                if (i14 == 2) {
                    return e.decodePackedFloatList(bArr, i10, jVarMutableCopyWithCapacity, bVar);
                }
                return i14 == 5 ? e.decodeFloatList(i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar) : i10;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i14 == 2) {
                    return e.decodePackedVarint64List(bArr, i10, jVarMutableCopyWithCapacity, bVar);
                }
                return i14 == 0 ? e.decodeVarint64List(i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar) : i10;
            case 22:
            case NOTIFICATION_REDIRECT_VALUE:
            case 39:
            case 43:
                if (i14 == 2) {
                    return e.decodePackedVarint32List(bArr, i10, jVarMutableCopyWithCapacity, bVar);
                }
                return i14 == 0 ? e.decodeVarint32List(i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar) : i10;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i14 == 2) {
                    return e.decodePackedFixed64List(bArr, i10, jVarMutableCopyWithCapacity, bVar);
                }
                return i14 == 1 ? e.decodeFixed64List(i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar) : i10;
            case 24:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 41:
            case 45:
                if (i14 == 2) {
                    return e.decodePackedFixed32List(bArr, i10, jVarMutableCopyWithCapacity, bVar);
                }
                return i14 == 5 ? e.decodeFixed32List(i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar) : i10;
            case 25:
            case 42:
                if (i14 == 2) {
                    return e.decodePackedBoolList(bArr, i10, jVarMutableCopyWithCapacity, bVar);
                }
                return i14 == 0 ? e.decodeBoolList(i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar) : i10;
            case 26:
                if (i14 == 2) {
                    return (j10 & 536870912) == 0 ? e.decodeStringList(i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar) : e.decodeStringListRequireUtf8(i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar);
                }
                return i10;
            case 27:
                return i14 == 2 ? e.decodeMessageList(getMessageFieldSchema(i15), i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar) : i10;
            case 28:
                return i14 == 2 ? e.decodeBytesList(i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar) : i10;
            case 30:
            case 44:
                if (i14 == 2) {
                    iDecodeVarint32List = e.decodePackedVarint32List(bArr, i10, jVarMutableCopyWithCapacity, bVar);
                } else {
                    if (i14 != 0) {
                        return i10;
                    }
                    iDecodeVarint32List = e.decodeVarint32List(i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar);
                }
                k1.filterUnknownEnumList(obj, i13, jVarMutableCopyWithCapacity, getEnumFieldVerifier(i15), (Object) null, this.unknownFieldSchema);
                return iDecodeVarint32List;
            case 33:
            case 47:
                if (i14 == 2) {
                    return e.decodePackedSInt32List(bArr, i10, jVarMutableCopyWithCapacity, bVar);
                }
                return i14 == 0 ? e.decodeSInt32List(i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar) : i10;
            case 34:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                if (i14 == 2) {
                    return e.decodePackedSInt64List(bArr, i10, jVarMutableCopyWithCapacity, bVar);
                }
                return i14 == 0 ? e.decodeSInt64List(i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar) : i10;
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                return i14 == 3 ? e.decodeGroupList(getMessageFieldSchema(i15), i12, bArr, i10, i11, jVarMutableCopyWithCapacity, bVar) : i10;
            default:
                return i10;
        }
    }

    private int positionForFieldNumber(int i10) {
        if (i10 < this.minFieldNumber || i10 > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i10, 0);
    }

    private int presenceMaskAndOffsetAt(int i10) {
        return this.buffer[i10 + 2];
    }

    private <E> void readGroupList(Object obj, long j10, h1 h1Var, i1 i1Var, o oVar) throws IOException {
        h1Var.readGroupList(this.listFieldSchema.mutableListAt(obj, j10), i1Var, oVar);
    }

    private <E> void readMessageList(Object obj, int i10, h1 h1Var, i1 i1Var, o oVar) throws IOException {
        h1Var.readMessageList(this.listFieldSchema.mutableListAt(obj, offset(i10)), i1Var, oVar);
    }

    private void readString(Object obj, int i10, h1 h1Var) throws IOException {
        if (isEnforceUtf8(i10)) {
            s1.putObject(obj, offset(i10), h1Var.readStringRequireUtf8());
        } else if (this.lite) {
            s1.putObject(obj, offset(i10), h1Var.readString());
        } else {
            s1.putObject(obj, offset(i10), h1Var.readBytes());
        }
    }

    private void readStringList(Object obj, int i10, h1 h1Var) throws IOException {
        if (isEnforceUtf8(i10)) {
            h1Var.readStringListRequireUtf8(this.listFieldSchema.mutableListAt(obj, offset(i10)));
        } else {
            h1Var.readStringList(this.listFieldSchema.mutableListAt(obj, offset(i10)));
        }
    }

    private static Field reflectField(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private void setFieldPresent(Object obj, int i10) {
        int iPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i10);
        long j10 = 1048575 & iPresenceMaskAndOffsetAt;
        if (j10 == 1048575) {
            return;
        }
        s1.putInt(obj, j10, (1 << (iPresenceMaskAndOffsetAt >>> 20)) | s1.getInt(obj, j10));
    }

    private void setOneofPresent(Object obj, int i10, int i11) {
        s1.putInt(obj, presenceMaskAndOffsetAt(i11) & 1048575, i10);
    }

    private int slowPositionForFieldNumber(int i10, int i11) {
        int length = (this.buffer.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int iNumberAt = numberAt(i13);
            if (i10 == iNumberAt) {
                return i13;
            }
            if (i10 < iNumberAt) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x007a  */
    /* JADX WARN: Code duplicated, block: B:22:0x007d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0084  */
    /* JADX WARN: Code duplicated, block: B:28:0x009e  */
    /* JADX WARN: Code duplicated, block: B:30:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:31:0x00af  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:34:0x00be A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:38:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    private static void storeFieldData(s sVar, int[] iArr, int i10, Object[] objArr) {
        int iObjectFieldOffset;
        int iId;
        long jObjectFieldOffset;
        int iObjectFieldOffset2;
        int iNumberOfTrailingZeros;
        int i11;
        Class<?> messageFieldClass;
        int i12;
        a1 oneof = sVar.getOneof();
        if (oneof == null) {
            FieldType type = sVar.getType();
            iObjectFieldOffset = (int) s1.objectFieldOffset(sVar.getField());
            iId = type.id();
            if (!type.isList() && !type.isMap()) {
                Field presenceField = sVar.getPresenceField();
                iObjectFieldOffset2 = presenceField == null ? 1048575 : (int) s1.objectFieldOffset(presenceField);
                iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(sVar.getPresenceMask());
            } else if (sVar.getCachedSizeField() == null) {
                iObjectFieldOffset2 = 0;
                iNumberOfTrailingZeros = 0;
            } else {
                jObjectFieldOffset = s1.objectFieldOffset(sVar.getCachedSizeField());
            }
            iArr[i10] = sVar.getFieldNumber();
            int i13 = i10 + 1;
            if (sVar.isEnforceUtf8()) {
                i11 = 536870912;
            } else {
                i11 = 0;
            }
            iArr[i13] = (sVar.isRequired() ? 268435456 : 0) | i11 | (iId << 20) | iObjectFieldOffset;
            iArr[i10 + 2] = iObjectFieldOffset2 | (iNumberOfTrailingZeros << 20);
            messageFieldClass = sVar.getMessageFieldClass();
            if (sVar.getMapDefaultEntry() != null) {
                if (messageFieldClass != null) {
                    objArr[((i10 / 3) * 2) + 1] = messageFieldClass;
                    return;
                } else {
                    if (sVar.getEnumVerifier() != null) {
                        objArr[((i10 / 3) * 2) + 1] = sVar.getEnumVerifier();
                        return;
                    }
                    return;
                }
            }
            i12 = (i10 / 3) * 2;
            objArr[i12] = sVar.getMapDefaultEntry();
            if (messageFieldClass != null) {
                objArr[i12 + 1] = messageFieldClass;
            } else if (sVar.getEnumVerifier() != null) {
                objArr[i12 + 1] = sVar.getEnumVerifier();
            }
        }
        iId = sVar.getType().id() + 51;
        iObjectFieldOffset = (int) s1.objectFieldOffset(oneof.getValueField());
        jObjectFieldOffset = s1.objectFieldOffset(oneof.getCaseField());
        iObjectFieldOffset2 = (int) jObjectFieldOffset;
        iNumberOfTrailingZeros = 0;
        iArr[i10] = sVar.getFieldNumber();
        int i14 = i10 + 1;
        if (sVar.isEnforceUtf8()) {
            i11 = 536870912;
        } else {
            i11 = 0;
        }
        iArr[i14] = (sVar.isRequired() ? 268435456 : 0) | i11 | (iId << 20) | iObjectFieldOffset;
        iArr[i10 + 2] = iObjectFieldOffset2 | (iNumberOfTrailingZeros << 20);
        messageFieldClass = sVar.getMessageFieldClass();
        if (sVar.getMapDefaultEntry() != null) {
            if (messageFieldClass != null) {
                objArr[((i10 / 3) * 2) + 1] = messageFieldClass;
                return;
            } else {
                if (sVar.getEnumVerifier() != null) {
                    objArr[((i10 / 3) * 2) + 1] = sVar.getEnumVerifier();
                    return;
                }
                return;
            }
        }
        i12 = (i10 / 3) * 2;
        objArr[i12] = sVar.getMapDefaultEntry();
        if (messageFieldClass != null) {
            objArr[i12 + 1] = messageFieldClass;
        } else if (sVar.getEnumVerifier() != null) {
            objArr[i12 + 1] = sVar.getEnumVerifier();
        }
    }

    private void storeMessageField(Object obj, int i10, Object obj2) {
        UNSAFE.putObject(obj, offset(typeAndOffsetAt(i10)), obj2);
        setFieldPresent(obj, i10);
    }

    private void storeOneofMessageField(Object obj, int i10, int i11, Object obj2) {
        UNSAFE.putObject(obj, offset(typeAndOffsetAt(i11)), obj2);
        setOneofPresent(obj, i10, i11);
    }

    private static int type(int i10) {
        return (i10 & FIELD_TYPE_MASK) >>> 20;
    }

    private int typeAndOffsetAt(int i10) {
        return this.buffer[i10 + 1];
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0022  */
    private void writeFieldsInAscendingOrder(Object obj, Writer writer) throws IOException {
        Map.Entry<t.c, Object> next;
        Iterator<Map.Entry<t.c, Object>> it;
        int i10;
        Map.Entry<t.c, Object> next2;
        int i11;
        int i12;
        Map.Entry<t.c, Object> entry;
        boolean z10;
        if (this.hasExtensions) {
            t extensions = this.extensionSchema.getExtensions(obj);
            if (extensions.isEmpty()) {
                next = null;
                it = null;
            } else {
                Iterator<Map.Entry<t.c, Object>> it2 = extensions.iterator();
                next = it2.next();
                it = it2;
            }
        } else {
            next = null;
            it = null;
        }
        int length = this.buffer.length;
        Unsafe unsafe = UNSAFE;
        int i13 = 1048575;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        while (i16 < length) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i16);
            int iNumberAt = numberAt(i16);
            int iType = type(iTypeAndOffsetAt);
            if (iType <= 17) {
                int i17 = this.buffer[i16 + 2];
                int i18 = i17 & i13;
                if (i18 != i14) {
                    i15 = i18 == i13 ? 0 : unsafe.getInt(obj, i18);
                    i14 = i18;
                } else {
                    next = next;
                }
                int i19 = 1 << (i17 >>> 20);
                i10 = i14;
                i11 = i19;
                next2 = next;
            } else {
                i10 = i14;
                next2 = next;
                i11 = 0;
            }
            int i20 = i15;
            while (next2 != null && this.extensionSchema.extensionNumber(next2) <= iNumberAt) {
                this.extensionSchema.serializeExtension(writer, next2);
                next2 = it.hasNext() ? it.next() : null;
            }
            long jOffset = offset(iTypeAndOffsetAt);
            switch (iType) {
                case 0:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeDouble(iNumberAt, doubleAt(obj, jOffset));
                    }
                    break;
                case 1:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeFloat(iNumberAt, floatAt(obj, jOffset));
                    }
                    break;
                case 2:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeInt64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    break;
                case 3:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeUInt64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    break;
                case 4:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeInt32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    break;
                case 5:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeFixed64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    break;
                case 6:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeFixed32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    break;
                case 7:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeBool(iNumberAt, booleanAt(obj, jOffset));
                    }
                    break;
                case 8:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writeString(iNumberAt, unsafe.getObject(obj, jOffset), writer);
                    }
                    break;
                case 9:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeMessage(iNumberAt, unsafe.getObject(obj, jOffset), getMessageFieldSchema(i16));
                    }
                    break;
                case 10:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeBytes(iNumberAt, (ByteString) unsafe.getObject(obj, jOffset));
                    }
                    break;
                case 11:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeUInt32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    break;
                case 12:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeEnum(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    break;
                case 13:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeSFixed32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    break;
                case 14:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeSFixed64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    break;
                case 15:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeSInt32(iNumberAt, unsafe.getInt(obj, jOffset));
                    }
                    break;
                case 16:
                    i12 = length;
                    entry = next2;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeSInt64(iNumberAt, unsafe.getLong(obj, jOffset));
                    }
                    break;
                case 17:
                    entry = next2;
                    i12 = length;
                    if (isFieldPresent(obj, i16, i10, i20, i11)) {
                        writer.writeGroup(iNumberAt, unsafe.getObject(obj, jOffset), getMessageFieldSchema(i16));
                    }
                    break;
                case 18:
                    z10 = false;
                    k1.writeDoubleList(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i12 = length;
                    entry = next2;
                    break;
                case 19:
                    z10 = false;
                    k1.writeFloatList(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i12 = length;
                    entry = next2;
                    break;
                case 20:
                    z10 = false;
                    k1.writeInt64List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i12 = length;
                    entry = next2;
                    break;
                case 21:
                    z10 = false;
                    k1.writeUInt64List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i12 = length;
                    entry = next2;
                    break;
                case 22:
                    z10 = false;
                    k1.writeInt32List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i12 = length;
                    entry = next2;
                    break;
                case 23:
                    z10 = false;
                    k1.writeFixed64List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i12 = length;
                    entry = next2;
                    break;
                case 24:
                    z10 = false;
                    k1.writeFixed32List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i12 = length;
                    entry = next2;
                    break;
                case 25:
                    z10 = false;
                    k1.writeBoolList(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i12 = length;
                    entry = next2;
                    break;
                case 26:
                    k1.writeStringList(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer);
                    i12 = length;
                    entry = next2;
                    break;
                case 27:
                    k1.writeMessageList(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, getMessageFieldSchema(i16));
                    i12 = length;
                    entry = next2;
                    break;
                case 28:
                    k1.writeBytesList(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer);
                    i12 = length;
                    entry = next2;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    z10 = false;
                    k1.writeUInt32List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i12 = length;
                    entry = next2;
                    break;
                case 30:
                    z10 = false;
                    k1.writeEnumList(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i12 = length;
                    entry = next2;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    z10 = false;
                    k1.writeSFixed32List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i12 = length;
                    entry = next2;
                    break;
                case 32:
                    z10 = false;
                    k1.writeSFixed64List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i12 = length;
                    entry = next2;
                    break;
                case 33:
                    z10 = false;
                    k1.writeSInt32List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i12 = length;
                    entry = next2;
                    break;
                case 34:
                    z10 = false;
                    k1.writeSInt64List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, false);
                    i12 = length;
                    entry = next2;
                    break;
                case 35:
                    k1.writeDoubleList(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i12 = length;
                    entry = next2;
                    break;
                case 36:
                    k1.writeFloatList(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i12 = length;
                    entry = next2;
                    break;
                case 37:
                    k1.writeInt64List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i12 = length;
                    entry = next2;
                    break;
                case 38:
                    k1.writeUInt64List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i12 = length;
                    entry = next2;
                    break;
                case 39:
                    k1.writeInt32List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i12 = length;
                    entry = next2;
                    break;
                case 40:
                    k1.writeFixed64List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i12 = length;
                    entry = next2;
                    break;
                case 41:
                    k1.writeFixed32List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i12 = length;
                    entry = next2;
                    break;
                case 42:
                    k1.writeBoolList(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i12 = length;
                    entry = next2;
                    break;
                case 43:
                    k1.writeUInt32List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i12 = length;
                    entry = next2;
                    break;
                case 44:
                    k1.writeEnumList(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i12 = length;
                    entry = next2;
                    break;
                case 45:
                    k1.writeSFixed32List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i12 = length;
                    entry = next2;
                    break;
                case 46:
                    k1.writeSFixed64List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i12 = length;
                    entry = next2;
                    break;
                case 47:
                    k1.writeSInt32List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i12 = length;
                    entry = next2;
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    k1.writeSInt64List(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, true);
                    i12 = length;
                    entry = next2;
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    k1.writeGroupList(numberAt(i16), (List) unsafe.getObject(obj, jOffset), writer, getMessageFieldSchema(i16));
                    i12 = length;
                    entry = next2;
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, unsafe.getObject(obj, jOffset), i16);
                    i12 = length;
                    entry = next2;
                    break;
                case 51:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case AD_VISIBILITY_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case 57:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case 59:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writeString(iNumberAt, unsafe.getObject(obj, jOffset), writer);
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case 60:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeMessage(iNumberAt, unsafe.getObject(obj, jOffset), getMessageFieldSchema(i16));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case 61:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeBytes(iNumberAt, (ByteString) unsafe.getObject(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case 62:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case 63:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case 64:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case 66:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case 67:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(obj, jOffset));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                case 68:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        writer.writeGroup(iNumberAt, unsafe.getObject(obj, jOffset), getMessageFieldSchema(i16));
                    }
                    i12 = length;
                    entry = next2;
                    break;
                default:
                    i12 = length;
                    entry = next2;
                    break;
            }
            i16 += 3;
            i14 = i10;
            next = entry;
            i15 = i20;
            length = i12;
            i13 = 1048575;
        }
        while (next != null) {
            this.extensionSchema.serializeExtension(writer, next);
            next = it.hasNext() ? it.next() : null;
        }
        writeUnknownInMessageTo(this.unknownFieldSchema, obj, writer);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    private void writeFieldsInDescendingOrder(Object obj, Writer writer) throws IOException {
        Iterator<Map.Entry<t.c, Object>> itDescendingIterator;
        Map.Entry<t.c, Object> next;
        writeUnknownInMessageTo(this.unknownFieldSchema, obj, writer);
        if (this.hasExtensions) {
            t extensions = this.extensionSchema.getExtensions(obj);
            if (extensions.isEmpty()) {
                itDescendingIterator = null;
                next = null;
            } else {
                itDescendingIterator = extensions.descendingIterator();
                next = itDescendingIterator.next();
            }
        } else {
            itDescendingIterator = null;
            next = null;
        }
        for (int length = this.buffer.length - 3; length >= 0; length -= 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(length);
            int iNumberAt = numberAt(length);
            while (next != null && this.extensionSchema.extensionNumber(next) > iNumberAt) {
                this.extensionSchema.serializeExtension(writer, next);
                next = itDescendingIterator.hasNext() ? itDescendingIterator.next() : null;
            }
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    if (isFieldPresent(obj, length)) {
                        writer.writeDouble(iNumberAt, doubleAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 1:
                    if (isFieldPresent(obj, length)) {
                        writer.writeFloat(iNumberAt, floatAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 2:
                    if (isFieldPresent(obj, length)) {
                        writer.writeInt64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 3:
                    if (isFieldPresent(obj, length)) {
                        writer.writeUInt64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 4:
                    if (isFieldPresent(obj, length)) {
                        writer.writeInt32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 5:
                    if (isFieldPresent(obj, length)) {
                        writer.writeFixed64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 6:
                    if (isFieldPresent(obj, length)) {
                        writer.writeFixed32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 7:
                    if (isFieldPresent(obj, length)) {
                        writer.writeBool(iNumberAt, booleanAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 8:
                    if (isFieldPresent(obj, length)) {
                        writeString(iNumberAt, s1.getObject(obj, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 9:
                    if (isFieldPresent(obj, length)) {
                        writer.writeMessage(iNumberAt, s1.getObject(obj, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 10:
                    if (isFieldPresent(obj, length)) {
                        writer.writeBytes(iNumberAt, (ByteString) s1.getObject(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 11:
                    if (isFieldPresent(obj, length)) {
                        writer.writeUInt32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 12:
                    if (isFieldPresent(obj, length)) {
                        writer.writeEnum(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 13:
                    if (isFieldPresent(obj, length)) {
                        writer.writeSFixed32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 14:
                    if (isFieldPresent(obj, length)) {
                        writer.writeSFixed64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 15:
                    if (isFieldPresent(obj, length)) {
                        writer.writeSInt32(iNumberAt, intAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 16:
                    if (isFieldPresent(obj, length)) {
                        writer.writeSInt64(iNumberAt, longAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 17:
                    if (isFieldPresent(obj, length)) {
                        writer.writeGroup(iNumberAt, s1.getObject(obj, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 18:
                    k1.writeDoubleList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 19:
                    k1.writeFloatList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 20:
                    k1.writeInt64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 21:
                    k1.writeUInt64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 22:
                    k1.writeInt32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 23:
                    k1.writeFixed64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 24:
                    k1.writeFixed32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 25:
                    k1.writeBoolList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 26:
                    k1.writeStringList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer);
                    break;
                case 27:
                    k1.writeMessageList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(length));
                    break;
                case 28:
                    k1.writeBytesList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer);
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    k1.writeUInt32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 30:
                    k1.writeEnumList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    k1.writeSFixed32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 32:
                    k1.writeSFixed64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 33:
                    k1.writeSInt32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 34:
                    k1.writeSInt64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, false);
                    break;
                case 35:
                    k1.writeDoubleList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 36:
                    k1.writeFloatList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 37:
                    k1.writeInt64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 38:
                    k1.writeUInt64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 39:
                    k1.writeInt32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 40:
                    k1.writeFixed64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 41:
                    k1.writeFixed32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 42:
                    k1.writeBoolList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 43:
                    k1.writeUInt32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 44:
                    k1.writeEnumList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 45:
                    k1.writeSFixed32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 46:
                    k1.writeSFixed64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case 47:
                    k1.writeSInt32List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    k1.writeSInt64List(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, true);
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    k1.writeGroupList(numberAt(length), (List) s1.getObject(obj, offset(iTypeAndOffsetAt)), writer, getMessageFieldSchema(length));
                    break;
                case 50:
                    writeMapHelper(writer, iNumberAt, s1.getObject(obj, offset(iTypeAndOffsetAt)), length);
                    break;
                case 51:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeDouble(iNumberAt, oneofDoubleAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeFloat(iNumberAt, oneofFloatAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeInt64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeUInt64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeInt32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeFixed64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 57:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeFixed32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeBool(iNumberAt, oneofBooleanAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 59:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writeString(iNumberAt, s1.getObject(obj, offset(iTypeAndOffsetAt)), writer);
                    }
                    break;
                case 60:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeMessage(iNumberAt, s1.getObject(obj, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
                case 61:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeBytes(iNumberAt, (ByteString) s1.getObject(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 62:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeUInt32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 63:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeEnum(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 64:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeSFixed32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeSFixed64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 66:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeSInt32(iNumberAt, oneofIntAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 67:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeSInt64(iNumberAt, oneofLongAt(obj, offset(iTypeAndOffsetAt)));
                    }
                    break;
                case 68:
                    if (isOneofPresent(obj, iNumberAt, length)) {
                        writer.writeGroup(iNumberAt, s1.getObject(obj, offset(iTypeAndOffsetAt)), getMessageFieldSchema(length));
                    }
                    break;
            }
        }
        while (next != null) {
            this.extensionSchema.serializeExtension(writer, next);
            next = itDescendingIterator.hasNext() ? itDescendingIterator.next() : null;
        }
    }

    private <K, V> void writeMapHelper(Writer writer, int i10, Object obj, int i11) throws IOException {
        if (obj != null) {
            writer.writeMap(i10, this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i11)), this.mapFieldSchema.forMapData(obj));
        }
    }

    private void writeString(int i10, Object obj, Writer writer) throws IOException {
        if (obj instanceof String) {
            writer.writeString(i10, (String) obj);
        } else {
            writer.writeBytes(i10, (ByteString) obj);
        }
    }

    private <UT, UB> void writeUnknownInMessageTo(o1 o1Var, Object obj, Writer writer) throws IOException {
        o1Var.writeTo(o1Var.getFromMessage(obj), writer);
    }

    @Override
    public boolean equals(Object obj, Object obj2) {
        int length = this.buffer.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            if (!equals(obj, obj2, i10)) {
                return false;
            }
        }
        if (!this.unknownFieldSchema.getFromMessage(obj).equals(this.unknownFieldSchema.getFromMessage(obj2))) {
            return false;
        }
        if (this.hasExtensions) {
            return this.extensionSchema.getExtensions(obj).equals(this.extensionSchema.getExtensions(obj2));
        }
        return true;
    }

    int getSchemaSize() {
        return this.buffer.length * 3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:27:0x0079 A[PHI: r12
      0x0079: PHI (r12v4 int) = 
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v8 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v1 int)
      (r12v9 int)
      (r12v1 int)
     binds: [B:21:0x0060, B:225:0x0560, B:222:0x054a, B:216:0x0522, B:213:0x0503, B:210:0x04e6, B:207:0x04cb, B:204:0x04b0, B:201:0x0498, B:198:0x0482, B:195:0x0468, B:192:0x044d, B:189:0x042c, B:165:0x032e, B:159:0x0310, B:153:0x02f2, B:147:0x02d4, B:141:0x02b6, B:135:0x0298, B:129:0x027a, B:123:0x025c, B:117:0x023e, B:111:0x0221, B:105:0x0204, B:99:0x01e7, B:93:0x01ca, B:86:0x01aa, B:81:0x0176, B:78:0x016a, B:75:0x015a, B:72:0x014a, B:69:0x013a, B:66:0x012e, B:63:0x0122, B:60:0x0116, B:54:0x00f8, B:51:0x00e5, B:48:0x00d4, B:45:0x00c5, B:42:0x00b6, B:40:0x00b0, B:38:0x00a9, B:35:0x009e, B:32:0x008f, B:29:0x0080, B:26:0x0078, B:24:0x0068] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public int getSerializedSize(Object obj) {
        int i10;
        int i11;
        int i12;
        int iComputeDoubleSize;
        int iComputeBoolSize;
        int iComputeSFixed32Size;
        boolean z10;
        int iComputeSizeFixed32List;
        int iComputeSizeFixed64ListNoTag;
        int iComputeTagSize;
        int iComputeUInt32SizeNoTag;
        Unsafe unsafe = UNSAFE;
        int i13 = 1048575;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i16 < this.buffer.length) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i16);
            int iType = type(iTypeAndOffsetAt);
            int iNumberAt = numberAt(i16);
            int i18 = this.buffer[i16 + 2];
            int i19 = i18 & i13;
            if (iType <= 17) {
                if (i19 != i14) {
                    i15 = i19 == i13 ? 0 : unsafe.getInt(obj, i19);
                    i14 = i19;
                }
                i10 = i14;
                i11 = i15;
                i12 = 1 << (i18 >>> 20);
            } else {
                i10 = i14;
                i11 = i15;
                i12 = 0;
            }
            long jOffset = offset(iTypeAndOffsetAt);
            if (iType < FieldType.DOUBLE_LIST_PACKED.id() || iType > FieldType.SINT64_LIST_PACKED.id()) {
                i19 = 0;
            }
            switch (iType) {
                case 0:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeDoubleSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i17 += iComputeDoubleSize;
                    }
                    break;
                case 1:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeDoubleSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i17 += iComputeDoubleSize;
                    }
                    break;
                case 2:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt64Size(iNumberAt, unsafe.getLong(obj, jOffset));
                        i17 += iComputeDoubleSize;
                    }
                    break;
                case 3:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeDoubleSize = CodedOutputStream.computeUInt64Size(iNumberAt, unsafe.getLong(obj, jOffset));
                        i17 += iComputeDoubleSize;
                    }
                    break;
                case 4:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeDoubleSize = CodedOutputStream.computeInt32Size(iNumberAt, unsafe.getInt(obj, jOffset));
                        i17 += iComputeDoubleSize;
                    }
                    break;
                case 5:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i17 += iComputeDoubleSize;
                    }
                    break;
                case 6:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeDoubleSize = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i17 += iComputeDoubleSize;
                    }
                    break;
                case 7:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeBoolSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 8:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        Object object = unsafe.getObject(obj, jOffset);
                        iComputeBoolSize = object instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object) : CodedOutputStream.computeStringSize(iNumberAt, (String) object);
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 9:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeBoolSize = k1.computeSizeMessage(iNumberAt, unsafe.getObject(obj, jOffset), getMessageFieldSchema(i16));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 10:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeBoolSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) unsafe.getObject(obj, jOffset));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 11:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeBoolSize = CodedOutputStream.computeUInt32Size(iNumberAt, unsafe.getInt(obj, jOffset));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 12:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeBoolSize = CodedOutputStream.computeEnumSize(iNumberAt, unsafe.getInt(obj, jOffset));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 13:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeSFixed32Size = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case 14:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeBoolSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 15:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeBoolSize = CodedOutputStream.computeSInt32Size(iNumberAt, unsafe.getInt(obj, jOffset));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 16:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeBoolSize = CodedOutputStream.computeSInt64Size(iNumberAt, unsafe.getLong(obj, jOffset));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 17:
                    if (isFieldPresent(obj, i16, i10, i11, i12)) {
                        iComputeBoolSize = CodedOutputStream.computeGroupSize(iNumberAt, (s0) unsafe.getObject(obj, jOffset), getMessageFieldSchema(i16));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 18:
                    iComputeBoolSize = k1.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i17 += iComputeBoolSize;
                    break;
                case 19:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i17 += iComputeSizeFixed32List;
                    break;
                case 20:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeInt64List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i17 += iComputeSizeFixed32List;
                    break;
                case 21:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeUInt64List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i17 += iComputeSizeFixed32List;
                    break;
                case 22:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeInt32List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i17 += iComputeSizeFixed32List;
                    break;
                case 23:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i17 += iComputeSizeFixed32List;
                    break;
                case 24:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i17 += iComputeSizeFixed32List;
                    break;
                case 25:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeBoolList(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i17 += iComputeSizeFixed32List;
                    break;
                case 26:
                    iComputeBoolSize = k1.computeSizeStringList(iNumberAt, (List) unsafe.getObject(obj, jOffset));
                    i17 += iComputeBoolSize;
                    break;
                case 27:
                    iComputeBoolSize = k1.computeSizeMessageList(iNumberAt, (List) unsafe.getObject(obj, jOffset), getMessageFieldSchema(i16));
                    i17 += iComputeBoolSize;
                    break;
                case 28:
                    iComputeBoolSize = k1.computeSizeByteStringList(iNumberAt, (List) unsafe.getObject(obj, jOffset));
                    i17 += iComputeBoolSize;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    iComputeBoolSize = k1.computeSizeUInt32List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i17 += iComputeBoolSize;
                    break;
                case 30:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeEnumList(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i17 += iComputeSizeFixed32List;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeFixed32List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i17 += iComputeSizeFixed32List;
                    break;
                case 32:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeFixed64List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i17 += iComputeSizeFixed32List;
                    break;
                case 33:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeSInt32List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i17 += iComputeSizeFixed32List;
                    break;
                case 34:
                    z10 = false;
                    iComputeSizeFixed32List = k1.computeSizeSInt64List(iNumberAt, (List) unsafe.getObject(obj, jOffset), false);
                    i17 += iComputeSizeFixed32List;
                    break;
                case 35:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i19, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case 36:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i19, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case 37:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeInt64ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i19, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case 38:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeUInt64ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i19, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case 39:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeInt32ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i19, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case 40:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i19, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case 41:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i19, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case 42:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeBoolListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i19, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case 43:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeUInt32ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i19, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case 44:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeEnumListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i19, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case 45:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeFixed32ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i19, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case 46:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeFixed64ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i19, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case 47:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeSInt32ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i19, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    iComputeSizeFixed64ListNoTag = k1.computeSizeSInt64ListNoTag((List) unsafe.getObject(obj, jOffset));
                    if (iComputeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(obj, i19, iComputeSizeFixed64ListNoTag);
                        }
                        iComputeTagSize = CodedOutputStream.computeTagSize(iNumberAt);
                        iComputeUInt32SizeNoTag = CodedOutputStream.computeUInt32SizeNoTag(iComputeSizeFixed64ListNoTag);
                        iComputeSFixed32Size = iComputeTagSize + iComputeUInt32SizeNoTag + iComputeSizeFixed64ListNoTag;
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    iComputeBoolSize = k1.computeSizeGroupList(iNumberAt, (List) unsafe.getObject(obj, jOffset), getMessageFieldSchema(i16));
                    i17 += iComputeBoolSize;
                    break;
                case 50:
                    iComputeBoolSize = this.mapFieldSchema.getSerializedSize(iNumberAt, unsafe.getObject(obj, jOffset), getMapFieldDefaultEntry(i16));
                    i17 += iComputeBoolSize;
                    break;
                case 51:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = CodedOutputStream.computeDoubleSize(iNumberAt, 0.0d);
                        i17 += iComputeBoolSize;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = CodedOutputStream.computeFloatSize(iNumberAt, 0.0f);
                        i17 += iComputeBoolSize;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = CodedOutputStream.computeInt64Size(iNumberAt, oneofLongAt(obj, jOffset));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = CodedOutputStream.computeUInt64Size(iNumberAt, oneofLongAt(obj, jOffset));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = CodedOutputStream.computeInt32Size(iNumberAt, oneofIntAt(obj, jOffset));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = CodedOutputStream.computeFixed64Size(iNumberAt, 0L);
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 57:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeSFixed32Size = CodedOutputStream.computeFixed32Size(iNumberAt, 0);
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = CodedOutputStream.computeBoolSize(iNumberAt, true);
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 59:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        Object object2 = unsafe.getObject(obj, jOffset);
                        iComputeBoolSize = object2 instanceof ByteString ? CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) object2) : CodedOutputStream.computeStringSize(iNumberAt, (String) object2);
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 60:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = k1.computeSizeMessage(iNumberAt, unsafe.getObject(obj, jOffset), getMessageFieldSchema(i16));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 61:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = CodedOutputStream.computeBytesSize(iNumberAt, (ByteString) unsafe.getObject(obj, jOffset));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 62:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = CodedOutputStream.computeUInt32Size(iNumberAt, oneofIntAt(obj, jOffset));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 63:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = CodedOutputStream.computeEnumSize(iNumberAt, oneofIntAt(obj, jOffset));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 64:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeSFixed32Size = CodedOutputStream.computeSFixed32Size(iNumberAt, 0);
                        i17 += iComputeSFixed32Size;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = CodedOutputStream.computeSFixed64Size(iNumberAt, 0L);
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 66:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = CodedOutputStream.computeSInt32Size(iNumberAt, oneofIntAt(obj, jOffset));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 67:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = CodedOutputStream.computeSInt64Size(iNumberAt, oneofLongAt(obj, jOffset));
                        i17 += iComputeBoolSize;
                    }
                    break;
                case 68:
                    if (isOneofPresent(obj, iNumberAt, i16)) {
                        iComputeBoolSize = CodedOutputStream.computeGroupSize(iNumberAt, (s0) unsafe.getObject(obj, jOffset), getMessageFieldSchema(i16));
                        i17 += iComputeBoolSize;
                    }
                    break;
                default:
                    break;
            }
            i16 += 3;
            i14 = i10;
            i15 = i11;
            i13 = 1048575;
        }
        int unknownFieldsSerializedSize = i17 + getUnknownFieldsSerializedSize(this.unknownFieldSchema, obj);
        return this.hasExtensions ? unknownFieldsSerializedSize + this.extensionSchema.getExtensions(obj).getSerializedSize() : unknownFieldsSerializedSize;
    }

    @Override
    public int hashCode(Object obj) {
        int i10;
        int iHashLong;
        int length = this.buffer.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int iTypeAndOffsetAt = typeAndOffsetAt(i12);
            int iNumberAt = numberAt(i12);
            long jOffset = offset(iTypeAndOffsetAt);
            int iHashCode = 37;
            switch (type(iTypeAndOffsetAt)) {
                case 0:
                    i10 = i11 * 53;
                    iHashLong = y.hashLong(Double.doubleToLongBits(s1.getDouble(obj, jOffset)));
                    i11 = i10 + iHashLong;
                    break;
                case 1:
                    i10 = i11 * 53;
                    iHashLong = Float.floatToIntBits(s1.getFloat(obj, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 2:
                    i10 = i11 * 53;
                    iHashLong = y.hashLong(s1.getLong(obj, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 3:
                    i10 = i11 * 53;
                    iHashLong = y.hashLong(s1.getLong(obj, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 4:
                    i10 = i11 * 53;
                    iHashLong = s1.getInt(obj, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 5:
                    i10 = i11 * 53;
                    iHashLong = y.hashLong(s1.getLong(obj, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 6:
                    i10 = i11 * 53;
                    iHashLong = s1.getInt(obj, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 7:
                    i10 = i11 * 53;
                    iHashLong = y.hashBoolean(s1.getBoolean(obj, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 8:
                    i10 = i11 * 53;
                    iHashLong = ((String) s1.getObject(obj, jOffset)).hashCode();
                    i11 = i10 + iHashLong;
                    break;
                case 9:
                    Object object = s1.getObject(obj, jOffset);
                    if (object != null) {
                        iHashCode = object.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 10:
                    i10 = i11 * 53;
                    iHashLong = s1.getObject(obj, jOffset).hashCode();
                    i11 = i10 + iHashLong;
                    break;
                case 11:
                    i10 = i11 * 53;
                    iHashLong = s1.getInt(obj, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 12:
                    i10 = i11 * 53;
                    iHashLong = s1.getInt(obj, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 13:
                    i10 = i11 * 53;
                    iHashLong = s1.getInt(obj, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 14:
                    i10 = i11 * 53;
                    iHashLong = y.hashLong(s1.getLong(obj, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 15:
                    i10 = i11 * 53;
                    iHashLong = s1.getInt(obj, jOffset);
                    i11 = i10 + iHashLong;
                    break;
                case 16:
                    i10 = i11 * 53;
                    iHashLong = y.hashLong(s1.getLong(obj, jOffset));
                    i11 = i10 + iHashLong;
                    break;
                case 17:
                    Object object2 = s1.getObject(obj, jOffset);
                    if (object2 != null) {
                        iHashCode = object2.hashCode();
                    }
                    i11 = (i11 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case NOTIFICATION_REDIRECT_VALUE:
                case 30:
                case TEMPLATE_HTML_SIZE_VALUE:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    i10 = i11 * 53;
                    iHashLong = s1.getObject(obj, jOffset).hashCode();
                    i11 = i10 + iHashLong;
                    break;
                case 50:
                    i10 = i11 * 53;
                    iHashLong = s1.getObject(obj, jOffset).hashCode();
                    i11 = i10 + iHashLong;
                    break;
                case 51:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = y.hashLong(Double.doubleToLongBits(oneofDoubleAt(obj, jOffset)));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = Float.floatToIntBits(oneofFloatAt(obj, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = y.hashLong(oneofLongAt(obj, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = y.hashLong(oneofLongAt(obj, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = y.hashLong(oneofLongAt(obj, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 57:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = y.hashBoolean(oneofBooleanAt(obj, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 59:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = ((String) s1.getObject(obj, jOffset)).hashCode();
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 60:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = s1.getObject(obj, jOffset).hashCode();
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 61:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = s1.getObject(obj, jOffset).hashCode();
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 62:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 63:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 64:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = y.hashLong(oneofLongAt(obj, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 66:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = oneofIntAt(obj, jOffset);
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 67:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = y.hashLong(oneofLongAt(obj, jOffset));
                        i11 = i10 + iHashLong;
                    }
                    break;
                case 68:
                    if (isOneofPresent(obj, iNumberAt, i12)) {
                        i10 = i11 * 53;
                        iHashLong = s1.getObject(obj, jOffset).hashCode();
                        i11 = i10 + iHashLong;
                    }
                    break;
            }
        }
        int iHashCode2 = (i11 * 53) + this.unknownFieldSchema.getFromMessage(obj).hashCode();
        return this.hasExtensions ? (iHashCode2 * 53) + this.extensionSchema.getExtensions(obj).hashCode() : iHashCode2;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0089  */
    /* JADX WARN: Code duplicated, block: B:58:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x00aa A[SYNTHETIC] */
    @Override
    public final boolean isInitialized(Object obj) {
        int i10;
        int i11;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (i14 < this.checkInitializedCount) {
            int i15 = this.intArray[i14];
            int iNumberAt = numberAt(i15);
            int iTypeAndOffsetAt = typeAndOffsetAt(i15);
            int i16 = this.buffer[i15 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i12) {
                if (i17 != 1048575) {
                    i13 = UNSAFE.getInt(obj, i17);
                }
                i11 = i13;
                i10 = i17;
            } else {
                i10 = i12;
                i11 = i13;
            }
            if (isRequired(iTypeAndOffsetAt) && !isFieldPresent(obj, i15, i10, i11, i18)) {
                return false;
            }
            int iType = type(iTypeAndOffsetAt);
            if (iType == 9 || iType == 17) {
                if (isFieldPresent(obj, i15, i10, i11, i18) && !isInitialized(obj, iTypeAndOffsetAt, getMessageFieldSchema(i15))) {
                    return false;
                }
            } else if (iType == 27) {
                if (!isListInitialized(obj, iTypeAndOffsetAt, i15)) {
                    return false;
                }
            } else if (iType == 60 || iType == 68) {
                if (isOneofPresent(obj, iNumberAt, i15) && !isInitialized(obj, iTypeAndOffsetAt, getMessageFieldSchema(i15))) {
                    return false;
                }
            } else if (iType != 49) {
                if (iType == 50 && !isMapInitialized(obj, iTypeAndOffsetAt, i15)) {
                    return false;
                }
            } else if (!isListInitialized(obj, iTypeAndOffsetAt, i15)) {
                return false;
            }
            i14++;
            i12 = i10;
            i13 = i11;
        }
        return !this.hasExtensions || this.extensionSchema.getExtensions(obj).isInitialized();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0069  */
    /* JADX WARN: Code duplicated, block: B:27:0x006f  */
    /* JADX WARN: Code duplicated, block: B:40:0x007c A[SYNTHETIC] */
    @Override
    public void makeImmutable(Object obj) {
        if (isMutable(obj)) {
            if (obj instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
                generatedMessageLite.clearMemoizedSerializedSize();
                generatedMessageLite.clearMemoizedHashCode();
                generatedMessageLite.markImmutable();
            }
            int length = this.buffer.length;
            for (int i10 = 0; i10 < length; i10 += 3) {
                int iTypeAndOffsetAt = typeAndOffsetAt(i10);
                long jOffset = offset(iTypeAndOffsetAt);
                int iType = type(iTypeAndOffsetAt);
                if (iType != 9) {
                    if (iType != 60 && iType != 68) {
                        switch (iType) {
                            case 17:
                                if (isFieldPresent(obj, i10)) {
                                    getMessageFieldSchema(i10).makeImmutable(UNSAFE.getObject(obj, jOffset));
                                }
                                break;
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case NOTIFICATION_REDIRECT_VALUE:
                            case 30:
                            case TEMPLATE_HTML_SIZE_VALUE:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                this.listFieldSchema.makeImmutableListAt(obj, jOffset);
                                break;
                            case 50:
                                Unsafe unsafe = UNSAFE;
                                Object object = unsafe.getObject(obj, jOffset);
                                if (object != null) {
                                    unsafe.putObject(obj, jOffset, this.mapFieldSchema.toImmutable(object));
                                }
                                break;
                        }
                    } else if (isOneofPresent(obj, numberAt(i10), i10)) {
                        getMessageFieldSchema(i10).makeImmutable(UNSAFE.getObject(obj, jOffset));
                    }
                } else if (isFieldPresent(obj, i10)) {
                    getMessageFieldSchema(i10).makeImmutable(UNSAFE.getObject(obj, jOffset));
                }
            }
            this.unknownFieldSchema.makeImmutable(obj);
            if (this.hasExtensions) {
                this.extensionSchema.makeImmutable(obj);
            }
        }
    }

    @Override
    public void mergeFrom(Object obj, Object obj2) {
        checkMutable(obj);
        obj2.getClass();
        for (int i10 = 0; i10 < this.buffer.length; i10 += 3) {
            mergeSingleField(obj, obj2, i10);
        }
        k1.mergeUnknownFields(this.unknownFieldSchema, obj, obj2);
        if (this.hasExtensions) {
            k1.mergeExtensions(this.extensionSchema, obj, obj2);
        }
    }

    @Override
    public Object newInstance() {
        return this.newInstanceSchema.newInstance(this.defaultInstance);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 12101. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    int parseMessage(java.lang.Object r31, byte[] r32, int r33, int r34, int r35, com.google.protobuf.e.b r36) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.v0.parseMessage(java.lang.Object, byte[], int, int, int, com.google.protobuf.e$b):int");
    }

    @Override
    public void writeTo(Object obj, Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            writeFieldsInDescendingOrder(obj, writer);
        } else {
            writeFieldsInAscendingOrder(obj, writer);
        }
    }

    private boolean isFieldPresent(Object obj, int i10) {
        int iPresenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i10);
        long j10 = 1048575 & iPresenceMaskAndOffsetAt;
        if (j10 != 1048575) {
            return (s1.getInt(obj, j10) & (1 << (iPresenceMaskAndOffsetAt >>> 20))) != 0;
        }
        int iTypeAndOffsetAt = typeAndOffsetAt(i10);
        long jOffset = offset(iTypeAndOffsetAt);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                return Double.doubleToRawLongBits(s1.getDouble(obj, jOffset)) != 0;
            case 1:
                return Float.floatToRawIntBits(s1.getFloat(obj, jOffset)) != 0;
            case 2:
                return s1.getLong(obj, jOffset) != 0;
            case 3:
                return s1.getLong(obj, jOffset) != 0;
            case 4:
                return s1.getInt(obj, jOffset) != 0;
            case 5:
                return s1.getLong(obj, jOffset) != 0;
            case 6:
                return s1.getInt(obj, jOffset) != 0;
            case 7:
                return s1.getBoolean(obj, jOffset);
            case 8:
                Object object = s1.getObject(obj, jOffset);
                if (object instanceof String) {
                    return !((String) object).isEmpty();
                }
                if (object instanceof ByteString) {
                    return !ByteString.EMPTY.equals(object);
                }
                throw new IllegalArgumentException();
            case 9:
                return s1.getObject(obj, jOffset) != null;
            case 10:
                return !ByteString.EMPTY.equals(s1.getObject(obj, jOffset));
            case 11:
                return s1.getInt(obj, jOffset) != 0;
            case 12:
                return s1.getInt(obj, jOffset) != 0;
            case 13:
                return s1.getInt(obj, jOffset) != 0;
            case 14:
                return s1.getLong(obj, jOffset) != 0;
            case 15:
                return s1.getInt(obj, jOffset) != 0;
            case 16:
                return s1.getLong(obj, jOffset) != 0;
            case 17:
                return s1.getObject(obj, jOffset) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private int positionForFieldNumber(int i10, int i11) {
        if (i10 < this.minFieldNumber || i10 > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i10, i11);
    }

    @Override
    public void mergeFrom(Object obj, h1 h1Var, o oVar) throws Throwable {
        oVar.getClass();
        checkMutable(obj);
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, obj, h1Var, oVar);
    }

    private boolean equals(Object obj, Object obj2, int i10) {
        int iTypeAndOffsetAt = typeAndOffsetAt(i10);
        long jOffset = offset(iTypeAndOffsetAt);
        switch (type(iTypeAndOffsetAt)) {
            case 0:
                return arePresentForEquals(obj, obj2, i10) && Double.doubleToLongBits(s1.getDouble(obj, jOffset)) == Double.doubleToLongBits(s1.getDouble(obj2, jOffset));
            case 1:
                return arePresentForEquals(obj, obj2, i10) && Float.floatToIntBits(s1.getFloat(obj, jOffset)) == Float.floatToIntBits(s1.getFloat(obj2, jOffset));
            case 2:
                return arePresentForEquals(obj, obj2, i10) && s1.getLong(obj, jOffset) == s1.getLong(obj2, jOffset);
            case 3:
                return arePresentForEquals(obj, obj2, i10) && s1.getLong(obj, jOffset) == s1.getLong(obj2, jOffset);
            case 4:
                return arePresentForEquals(obj, obj2, i10) && s1.getInt(obj, jOffset) == s1.getInt(obj2, jOffset);
            case 5:
                return arePresentForEquals(obj, obj2, i10) && s1.getLong(obj, jOffset) == s1.getLong(obj2, jOffset);
            case 6:
                return arePresentForEquals(obj, obj2, i10) && s1.getInt(obj, jOffset) == s1.getInt(obj2, jOffset);
            case 7:
                return arePresentForEquals(obj, obj2, i10) && s1.getBoolean(obj, jOffset) == s1.getBoolean(obj2, jOffset);
            case 8:
                return arePresentForEquals(obj, obj2, i10) && k1.safeEquals(s1.getObject(obj, jOffset), s1.getObject(obj2, jOffset));
            case 9:
                return arePresentForEquals(obj, obj2, i10) && k1.safeEquals(s1.getObject(obj, jOffset), s1.getObject(obj2, jOffset));
            case 10:
                return arePresentForEquals(obj, obj2, i10) && k1.safeEquals(s1.getObject(obj, jOffset), s1.getObject(obj2, jOffset));
            case 11:
                return arePresentForEquals(obj, obj2, i10) && s1.getInt(obj, jOffset) == s1.getInt(obj2, jOffset);
            case 12:
                return arePresentForEquals(obj, obj2, i10) && s1.getInt(obj, jOffset) == s1.getInt(obj2, jOffset);
            case 13:
                return arePresentForEquals(obj, obj2, i10) && s1.getInt(obj, jOffset) == s1.getInt(obj2, jOffset);
            case 14:
                return arePresentForEquals(obj, obj2, i10) && s1.getLong(obj, jOffset) == s1.getLong(obj2, jOffset);
            case 15:
                return arePresentForEquals(obj, obj2, i10) && s1.getInt(obj, jOffset) == s1.getInt(obj2, jOffset);
            case 16:
                return arePresentForEquals(obj, obj2, i10) && s1.getLong(obj, jOffset) == s1.getLong(obj2, jOffset);
            case 17:
                return arePresentForEquals(obj, obj2, i10) && k1.safeEquals(s1.getObject(obj, jOffset), s1.getObject(obj2, jOffset));
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case NOTIFICATION_REDIRECT_VALUE:
            case 30:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                return k1.safeEquals(s1.getObject(obj, jOffset), s1.getObject(obj2, jOffset));
            case 50:
                return k1.safeEquals(s1.getObject(obj, jOffset), s1.getObject(obj2, jOffset));
            case 51:
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case AD_VISIBILITY_VALUE:
            case 57:
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH:
            case 66:
            case 67:
            case 68:
                return isOneofCaseEqual(obj, obj2, i10) && k1.safeEquals(s1.getObject(obj, jOffset), s1.getObject(obj2, jOffset));
            default:
                return true;
        }
    }

    @Override
    public void mergeFrom(Object obj, byte[] bArr, int i10, int i11, e.b bVar) throws IOException {
        parseMessage(obj, bArr, i10, i11, 0, bVar);
    }

    private static boolean isInitialized(Object obj, int i10, i1 i1Var) {
        return i1Var.isInitialized(s1.getObject(obj, offset(i10)));
    }
}
