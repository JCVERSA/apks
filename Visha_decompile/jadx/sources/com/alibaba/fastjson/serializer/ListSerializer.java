package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;
import okhttp3.HttpUrl;

public final class ListSerializer implements ObjectSerializer {
    public static final ListSerializer instance = new ListSerializer();

    @Override
    public final void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        SerializerFeature serializerFeature = SerializerFeature.WriteClassName;
        boolean z = serializeWriter.isEnabled(serializerFeature) || SerializerFeature.isEnabled(i, serializerFeature);
        SerializeWriter serializeWriter2 = jSONSerializer.out;
        Type collectionItemType = z ? TypeUtils.getCollectionItemType(type) : null;
        if (obj == null) {
            serializeWriter2.writeNull(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        List list = (List) obj;
        if (list.size() == 0) {
            serializeWriter2.append((CharSequence) HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            return;
        }
        SerialContext serialContext = jSONSerializer.context;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        try {
            char c = ',';
            if (serializeWriter2.isEnabled(SerializerFeature.PrettyFormat)) {
                serializeWriter2.append('[');
                jSONSerializer.incrementIndent();
                int i2 = 0;
                for (Object obj3 : list) {
                    if (i2 != 0) {
                        serializeWriter2.append(c);
                    }
                    jSONSerializer.println();
                    if (obj3 == null) {
                        jSONSerializer.out.writeNull();
                    } else if (jSONSerializer.containsReference(obj3)) {
                        jSONSerializer.writeReference(obj3);
                    } else {
                        ObjectSerializer objectWriter = jSONSerializer.getObjectWriter(obj3.getClass());
                        jSONSerializer.context = new SerialContext(serialContext, obj, obj2, 0, 0);
                        objectWriter.write(jSONSerializer, obj3, Integer.valueOf(i2), collectionItemType, i);
                    }
                    i2++;
                    c = c;
                }
                jSONSerializer.decrementIdent();
                jSONSerializer.println();
                serializeWriter2.append(']');
                return;
            }
            char c2 = ',';
            serializeWriter2.append('[');
            int size = list.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj4 = list.get(i3);
                if (i3 != 0) {
                    serializeWriter2.append(c2);
                }
                if (obj4 == null) {
                    serializeWriter2.append((CharSequence) "null");
                } else {
                    Class<?> cls = obj4.getClass();
                    if (cls == Integer.class) {
                        serializeWriter2.writeInt(((Integer) obj4).intValue());
                    } else {
                        if (cls == Long.class) {
                            long jLongValue = ((Long) obj4).longValue();
                            if (z) {
                                serializeWriter2.writeLong(jLongValue);
                                serializeWriter2.write(76);
                            } else {
                                serializeWriter2.writeLong(jLongValue);
                            }
                        } else if ((SerializerFeature.DisableCircularReferenceDetect.mask & i) != 0) {
                            jSONSerializer.getObjectWriter(obj4.getClass()).write(jSONSerializer, obj4, Integer.valueOf(i3), collectionItemType, i);
                            z = z;
                        } else {
                            i3 = i3;
                            if (!serializeWriter2.disableCircularReferenceDetect) {
                                jSONSerializer.context = new SerialContext(serialContext, obj, obj2, 0, 0);
                            }
                            if (jSONSerializer.containsReference(obj4)) {
                                jSONSerializer.writeReference(obj4);
                            } else {
                                ObjectSerializer objectWriter2 = jSONSerializer.getObjectWriter(obj4.getClass());
                                if ((SerializerFeature.WriteClassName.mask & i) == 0 || !(objectWriter2 instanceof JavaBeanSerializer)) {
                                    objectWriter2.write(jSONSerializer, obj4, Integer.valueOf(i3), collectionItemType, i);
                                } else {
                                    ((JavaBeanSerializer) objectWriter2).writeNoneASM(jSONSerializer, obj4, Integer.valueOf(i3), collectionItemType, i);
                                }
                            }
                        }
                        i3++;
                        z = z;
                        c2 = ',';
                    }
                }
                z = z;
                i3++;
                z = z;
                c2 = ',';
            }
            serializeWriter2.append(']');
        } finally {
            jSONSerializer.context = serialContext;
        }
    }
}
