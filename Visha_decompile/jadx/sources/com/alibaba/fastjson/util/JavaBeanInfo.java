package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONCreator;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONPOJOBuilder;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public class JavaBeanInfo {
    public final Method buildMethod;
    public final Class<?> builderClass;
    public final Class<?> clazz;
    public final Constructor<?> creatorConstructor;
    public Type[] creatorConstructorParameterTypes;
    public String[] creatorConstructorParameters;
    public final Constructor<?> defaultConstructor;
    public final int defaultConstructorParameterSize;
    public final Method factoryMethod;
    public final FieldInfo[] fields;
    public final JSONType jsonType;

    public boolean f10kotlin;
    public Constructor<?> kotlinDefaultConstructor;
    public String[] orders;
    public final int parserFeatures;
    public final FieldInfo[] sortedFields;
    public final String typeKey;
    public final String typeName;

    public JavaBeanInfo(Class<?> cls, Class<?> cls2, Constructor<?> constructor, Constructor<?> constructor2, Method method, Method method2, JSONType jSONType, List<FieldInfo> list) {
        JSONField jSONField;
        this.clazz = cls;
        this.builderClass = cls2;
        this.defaultConstructor = constructor;
        this.creatorConstructor = constructor2;
        this.factoryMethod = method;
        this.parserFeatures = TypeUtils.getParserFeatures(cls);
        this.buildMethod = method2;
        this.jsonType = jSONType;
        if (jSONType != null) {
            String strTypeName = jSONType.typeName();
            String strTypeKey = jSONType.typeKey();
            this.typeKey = strTypeKey.length() <= 0 ? null : strTypeKey;
            if (strTypeName.length() != 0) {
                this.typeName = strTypeName;
            } else {
                this.typeName = cls.getName();
            }
            String[] strArrOrders = jSONType.orders();
            this.orders = strArrOrders.length == 0 ? null : strArrOrders;
        } else {
            this.typeName = cls.getName();
            this.typeKey = null;
            this.orders = null;
        }
        FieldInfo[] fieldInfoArr = new FieldInfo[list.size()];
        this.fields = fieldInfoArr;
        list.toArray(fieldInfoArr);
        FieldInfo[] fieldInfoArr2 = new FieldInfo[fieldInfoArr.length];
        int i = 0;
        if (this.orders != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(list.size());
            for (FieldInfo fieldInfo : fieldInfoArr) {
                linkedHashMap.put(fieldInfo.name, fieldInfo);
            }
            int i2 = 0;
            for (String str : this.orders) {
                FieldInfo fieldInfo2 = (FieldInfo) linkedHashMap.get(str);
                if (fieldInfo2 != null) {
                    fieldInfoArr2[i2] = fieldInfo2;
                    linkedHashMap.remove(str);
                    i2++;
                }
            }
            Iterator it = linkedHashMap.values().iterator();
            while (it.hasNext()) {
                fieldInfoArr2[i2] = (FieldInfo) it.next();
                i2++;
            }
        } else {
            System.arraycopy(fieldInfoArr, 0, fieldInfoArr2, 0, fieldInfoArr.length);
            Arrays.sort(fieldInfoArr2);
        }
        this.sortedFields = Arrays.equals(this.fields, fieldInfoArr2) ? this.fields : fieldInfoArr2;
        if (constructor != null) {
            this.defaultConstructorParameterSize = constructor.getParameterTypes().length;
        } else if (method != null) {
            this.defaultConstructorParameterSize = method.getParameterTypes().length;
        } else {
            this.defaultConstructorParameterSize = 0;
        }
        if (constructor2 != null) {
            this.creatorConstructorParameterTypes = constructor2.getParameterTypes();
            boolean zIsKotlin = TypeUtils.isKotlin(cls);
            this.f10kotlin = zIsKotlin;
            if (!zIsKotlin) {
                if (this.creatorConstructorParameterTypes.length == this.fields.length) {
                    while (true) {
                        Type[] typeArr = this.creatorConstructorParameterTypes;
                        if (i >= typeArr.length) {
                            return;
                        }
                        if (typeArr[i] == this.fields[i].fieldClass) {
                            i++;
                        }
                    }
                }
                this.creatorConstructorParameters = ASMUtils.lookupParameterNames(constructor2);
                return;
            }
            this.creatorConstructorParameters = TypeUtils.getKoltinConstructorParameters(cls);
            try {
                this.kotlinDefaultConstructor = cls.getConstructor(null);
            } catch (Throwable unused) {
            }
            Annotation[][] parameterAnnotations = TypeUtils.getParameterAnnotations(constructor2);
            for (int i3 = 0; i3 < this.creatorConstructorParameters.length && i3 < parameterAnnotations.length; i3++) {
                Annotation[] annotationArr = parameterAnnotations[i3];
                int length = annotationArr.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        jSONField = null;
                        break;
                    }
                    Annotation annotation = annotationArr[i4];
                    if (annotation instanceof JSONField) {
                        jSONField = (JSONField) annotation;
                        break;
                    }
                    i4++;
                }
                if (jSONField != null) {
                    String strName = jSONField.name();
                    if (strName.length() > 0) {
                        this.creatorConstructorParameters[i3] = strName;
                    }
                }
            }
        }
    }

    public static boolean add(List<FieldInfo> list, FieldInfo fieldInfo) {
        for (int size = list.size() - 1; size >= 0; size--) {
            FieldInfo fieldInfo2 = list.get(size);
            if (fieldInfo2.name.equals(fieldInfo.name) && (!fieldInfo2.getOnly || fieldInfo.getOnly)) {
                if (fieldInfo2.fieldClass.isAssignableFrom(fieldInfo.fieldClass)) {
                    list.set(size, fieldInfo);
                    return true;
                }
                if (fieldInfo2.compareTo(fieldInfo) >= 0) {
                    return false;
                }
                list.set(size, fieldInfo);
                return true;
            }
        }
        list.add(fieldInfo);
        return true;
    }

    public static JavaBeanInfo build(Class<?> cls, Type type, PropertyNamingStrategy propertyNamingStrategy) {
        return build(cls, type, propertyNamingStrategy, false, TypeUtils.compatibleWithJavaBean, false);
    }

    private static Map<TypeVariable, Type> buildGenericInfo(Class<?> cls) {
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap map = null;
        if (superclass == null) {
            return null;
        }
        while (true) {
            Class<? super Object> cls2 = superclass;
            Class<?> cls3 = cls;
            cls = cls2;
            if (cls == null || cls == Object.class) {
                break;
            }
            if (cls3.getGenericSuperclass() instanceof ParameterizedType) {
                Type[] actualTypeArguments = ((ParameterizedType) cls3.getGenericSuperclass()).getActualTypeArguments();
                TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
                for (int i = 0; i < actualTypeArguments.length; i++) {
                    if (map == null) {
                        map = new HashMap();
                    }
                    if (map.containsKey(actualTypeArguments[i])) {
                        map.put(typeParameters[i], map.get(actualTypeArguments[i]));
                    } else {
                        map.put(typeParameters[i], actualTypeArguments[i]);
                    }
                }
            }
            superclass = cls.getSuperclass();
        }
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0051  */
    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    /* JADX WARN: Code duplicated, block: B:27:0x007d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0084  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:34:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:43:0x006e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x0019 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:? A[LOOP:1: B:20:0x0055->B:45:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:6:0x0019  */
    private static void computeFields(Class<?> cls, Type type, PropertyNamingStrategy propertyNamingStrategy, List<FieldInfo> list, Field[] fieldArr) {
        Iterator<FieldInfo> it;
        String name;
        JSONField jSONField;
        int i;
        int i2;
        int i3;
        Map<TypeVariable, Type> mapBuildGenericInfo = buildGenericInfo(cls);
        int i4 = 0;
        for (int length = fieldArr.length; i4 < length; length = length) {
            Field field = fieldArr[i4];
            int modifiers = field.getModifiers();
            if ((modifiers & 8) != 0) {
                break;
                break;
            }
            if ((modifiers & 16) == 0) {
                it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        name = field.getName();
                        jSONField = (JSONField) TypeUtils.getAnnotation(field, JSONField.class);
                        if (jSONField != null) {
                            i = 0;
                            i2 = 0;
                            i3 = 0;
                        } else if (!jSONField.deserialize()) {
                            int iOrdinal = jSONField.ordinal();
                            int iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                            int iOf2 = Feature.of(jSONField.parseFeatures());
                            if (jSONField.name().length() != 0) {
                                name = jSONField.name();
                            }
                            i = iOrdinal;
                            i2 = iOf;
                            i3 = iOf2;
                        }
                        if (propertyNamingStrategy != null) {
                            name = propertyNamingStrategy.translate(name);
                        }
                        add(list, new FieldInfo(name, null, field, cls, type, i, i2, i3, null, jSONField, null, mapBuildGenericInfo));
                        break;
                        break;
                    }
                    if (it.next().name.equals(field.getName())) {
                    }
                    break;
                    break;
                }
            }
            Class<?> type2 = field.getType();
            if (!Map.class.isAssignableFrom(type2) && !Collection.class.isAssignableFrom(type2) && !AtomicLong.class.equals(type2) && !AtomicInteger.class.equals(type2) && !AtomicBoolean.class.equals(type2)) {
                break;
                break;
            }
            it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    name = field.getName();
                    jSONField = (JSONField) TypeUtils.getAnnotation(field, JSONField.class);
                    if (jSONField != null) {
                        i = 0;
                        i2 = 0;
                        i3 = 0;
                    } else if (!jSONField.deserialize()) {
                        int iOrdinal2 = jSONField.ordinal();
                        int iOf3 = SerializerFeature.of(jSONField.serialzeFeatures());
                        int iOf4 = Feature.of(jSONField.parseFeatures());
                        if (jSONField.name().length() != 0) {
                            name = jSONField.name();
                        }
                        i = iOrdinal2;
                        i2 = iOf3;
                        i3 = iOf4;
                    }
                    if (propertyNamingStrategy != null) {
                        name = propertyNamingStrategy.translate(name);
                    }
                    add(list, new FieldInfo(name, null, field, cls, type, i, i2, i3, null, jSONField, null, mapBuildGenericInfo));
                    break;
                }
                if (it.next().name.equals(field.getName())) {
                }
                break;
            }
            i4++;
        }
    }

    public static Class<?> getBuilderClass(JSONType jSONType) {
        return getBuilderClass(null, jSONType);
    }

    public static Constructor<?> getCreatorConstructor(Constructor[] constructorArr) {
        Constructor constructor = null;
        for (Constructor constructor2 : constructorArr) {
            if (((JSONCreator) constructor2.getAnnotation(JSONCreator.class)) != null) {
                if (constructor != null) {
                    throw new JSONException("multi-JSONCreator");
                }
                constructor = constructor2;
            }
        }
        if (constructor != null) {
            return constructor;
        }
        for (Constructor constructor3 : constructorArr) {
            Annotation[][] parameterAnnotations = TypeUtils.getParameterAnnotations(constructor3);
            if (parameterAnnotations.length != 0) {
                int length = parameterAnnotations.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        if (constructor != null) {
                            throw new JSONException("multi-JSONCreator");
                        }
                        constructor = constructor3;
                        break;
                    }
                    Annotation[] annotationArr = parameterAnnotations[i];
                    int length2 = annotationArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length2) {
                            break;
                        }
                        if (annotationArr[i2] instanceof JSONField) {
                            break;
                        }
                        i2++;
                    }
                    i++;
                }
            }
        }
        return constructor;
    }

    public static Constructor<?> getDefaultConstructor(Class<?> cls, Constructor<?>[] constructorArr) {
        Constructor<?> constructor = null;
        if (Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        for (Constructor<?> constructor2 : constructorArr) {
            if (constructor2.getParameterTypes().length == 0) {
                constructor = constructor2;
                break;
            }
        }
        if (constructor != null || !cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) {
            return constructor;
        }
        for (Constructor<?> constructor3 : constructorArr) {
            Class<?>[] parameterTypes = constructor3.getParameterTypes();
            if (parameterTypes.length == 1 && parameterTypes[0].equals(cls.getDeclaringClass())) {
                return constructor3;
            }
        }
        return constructor;
    }

    private static Method getFactoryMethod(Class<?> cls, Method[] methodArr, boolean z) {
        Method method = null;
        for (Method method2 : methodArr) {
            if (Modifier.isStatic(method2.getModifiers()) && cls.isAssignableFrom(method2.getReturnType()) && ((JSONCreator) TypeUtils.getAnnotation(method2, JSONCreator.class)) != null) {
                if (method != null) {
                    throw new JSONException("multi-JSONCreator");
                }
                method = method2;
            }
        }
        if (method != null || !z) {
            return method;
        }
        for (Method method3 : methodArr) {
            if (TypeUtils.isJacksonCreator(method3)) {
                return method3;
            }
        }
        return method;
    }

    private static FieldInfo getField(List<FieldInfo> list, String str) {
        for (FieldInfo fieldInfo : list) {
            if (fieldInfo.name.equals(str)) {
                return fieldInfo;
            }
            Field field = fieldInfo.field;
            if (field != null && fieldInfo.getAnnotation() != null && field.getName().equals(str)) {
                return fieldInfo;
            }
        }
        return null;
    }

    public static JavaBeanInfo build(Class<?> cls, Type type, PropertyNamingStrategy propertyNamingStrategy, boolean z, boolean z2) {
        return build(cls, type, propertyNamingStrategy, z, z2, false);
    }

    public static Class<?> getBuilderClass(Class<?> cls, JSONType jSONType) {
        Class<?> clsBuilder;
        if (cls != null && cls.getName().equals("org.springframework.security.web.savedrequest.DefaultSavedRequest")) {
            return TypeUtils.loadClass("org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder");
        }
        if (jSONType == null || (clsBuilder = jSONType.builder()) == Void.class) {
            return null;
        }
        return clsBuilder;
    }

    /* JADX WARN: Code duplicated, block: B:234:0x04c7  */
    /* JADX WARN: Code duplicated, block: B:299:0x06bb  */
    /* JADX WARN: Code duplicated, block: B:359:0x085e  */
    /* JADX WARN: Code duplicated, block: B:362:0x0867  */
    /* JADX WARN: Code duplicated, block: B:364:0x0873  */
    /* JADX WARN: Code duplicated, block: B:366:0x087f  */
    /* JADX WARN: Code duplicated, block: B:369:0x088b  */
    /* JADX WARN: Code duplicated, block: B:371:0x088f  */
    /* JADX WARN: Code duplicated, block: B:404:0x0946  */
    /* JADX WARN: Code duplicated, block: B:405:0x0961  */
    /* JADX WARN: Code duplicated, block: B:407:0x0965  */
    /* JADX WARN: Code duplicated, block: B:408:0x096f  */
    /* JADX WARN: Code duplicated, block: B:410:0x0977  */
    /* JADX WARN: Code duplicated, block: B:413:0x097e  */
    /* JADX WARN: Code duplicated, block: B:416:0x09a9  */
    /* JADX WARN: Code duplicated, block: B:418:0x09ac  */
    /* JADX WARN: Code duplicated, block: B:420:0x09b8  */
    /* JADX WARN: Code duplicated, block: B:422:0x09be  */
    /* JADX WARN: Code duplicated, block: B:423:0x09cf  */
    /* JADX WARN: Code duplicated, block: B:425:0x09ed  */
    /* JADX WARN: Code duplicated, block: B:427:0x0a21  */
    /* JADX WARN: Code duplicated, block: B:429:0x0a36  */
    /* JADX WARN: Code duplicated, block: B:430:0x0a4b  */
    /* JADX WARN: Code duplicated, block: B:432:0x0a62  */
    /* JADX WARN: Code duplicated, block: B:488:0x0be4  */
    /* JADX WARN: Code duplicated, block: B:535:0x087c A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:404:0x0946, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13, types: [com.alibaba.fastjson.annotation.JSONField] */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r6v25, types: [java.util.ArrayList, java.util.List] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.util.List] */
    public static JavaBeanInfo build(Class<?> cls, Type type, PropertyNamingStrategy propertyNamingStrategy, boolean z, boolean z2, boolean z3) {
        Constructor<?> defaultConstructor;
        Constructor<?> constructor;
        Class<?> cls2;
        Class<Collection> cls3;
        ArrayList arrayList;
        Field[] fieldArr;
        Class<String> cls4;
        Class<JSONField> cls5;
        Method[] methodArr;
        Constructor<?> constructor2;
        PropertyNamingStrategy propertyNamingStrategy2;
        String str;
        Class<JSONField> cls6;
        Field[] fieldArr2;
        Class<String> cls7;
        Field field;
        JSONType jSONType;
        Class<?> cls8;
        String str2;
        int i;
        Class<Collection> cls9;
        Class<JSONField> cls10;
        String propertyNameByMethodName;
        Field[] fieldArr3;
        Field field2;
        Field[] fieldArr4;
        Class<?> cls11;
        Class<String> cls12;
        Class<JSONField> cls13;
        Class<?> cls14;
        char cCharAt;
        ?? arrayList2;
        Field[] fieldArr5;
        char c;
        String propertyNameByMethodName2;
        Field field3;
        Field field4;
        int iOrdinal;
        int i2;
        int i3;
        ?? r10;
        PropertyNamingStrategy propertyNamingStrategy3;
        JSONField jSONField;
        int iOf;
        int iOf2;
        char c2;
        int i4;
        int i5;
        int i6;
        int i7;
        String str3;
        StringBuilder sb;
        String str4;
        String str5;
        char cCharAt2;
        Constructor<?> creatorConstructor;
        Class<?> cls15;
        Class<Collection> cls16;
        Class<String> cls17;
        Class<JSONField> cls18;
        Field[] fieldArr6;
        Class<?> cls19;
        Class<String> cls20;
        String[] strArrLookupParameterNames;
        Constructor<?>[] constructorArr;
        String[] strArrLookupParameterNames2;
        JSONField jSONField2;
        Class<JSONField> cls21;
        int iOrdinal2;
        int iOf3;
        int iOf4;
        JSONField jSONField3;
        String strName;
        int i8;
        int i9;
        int iOf5;
        Class<Collection> cls22;
        JSONField jSONField4;
        Field field5;
        String strName2;
        int i10;
        int i11;
        int i12;
        String str6;
        Constructor<?> creatorConstructor2;
        PropertyNamingStrategy propertyNamingStrategyNaming;
        Class<?> cls23 = cls;
        boolean z4 = z3;
        JSONType jSONType2 = (JSONType) TypeUtils.getAnnotation(cls23, JSONType.class);
        PropertyNamingStrategy propertyNamingStrategy4 = (jSONType2 == null || (propertyNamingStrategyNaming = jSONType2.naming()) == null || propertyNamingStrategyNaming == PropertyNamingStrategy.CamelCase) ? propertyNamingStrategy : propertyNamingStrategyNaming;
        Class<?> builderClass = getBuilderClass(cls23, jSONType2);
        Field[] declaredFields = cls.getDeclaredFields();
        Method[] methods = cls.getMethods();
        Map<TypeVariable, Type> mapBuildGenericInfo = buildGenericInfo(cls);
        boolean zIsKotlin = TypeUtils.isKotlin(cls);
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        if (!zIsKotlin || declaredConstructors.length == 1) {
            if (builderClass == null) {
                defaultConstructor = getDefaultConstructor(cls23, declaredConstructors);
            } else {
                defaultConstructor = getDefaultConstructor(builderClass, builderClass.getDeclaredConstructors());
            }
            constructor = defaultConstructor;
        } else {
            constructor = null;
        }
        ArrayList arrayList3 = new ArrayList();
        Method method = null;
        Method factoryMethod = null;
        if (z) {
            for (Class<?> superclass = cls23; superclass != null; superclass = superclass.getSuperclass()) {
                computeFields(cls23, type, propertyNamingStrategy4, arrayList3, superclass.getDeclaredFields());
            }
            if (constructor != null) {
                TypeUtils.setAccessible(constructor);
            }
            return new JavaBeanInfo(cls, builderClass, constructor, null, null, null, jSONType2, arrayList3);
        }
        boolean z5 = cls.isInterface() || Modifier.isAbstract(cls.getModifiers());
        Class<Collection> cls24 = Collection.class;
        Class<?> cls25 = Object.class;
        PropertyNamingStrategy propertyNamingStrategy5 = propertyNamingStrategy4;
        Class<String> cls26 = String.class;
        Class<JSONField> cls27 = JSONField.class;
        if ((constructor == null && builderClass == null) || z5) {
            Type mixInAnnotations = JSON.getMixInAnnotations(cls);
            if (!(mixInAnnotations instanceof Class) || (creatorConstructor2 = getCreatorConstructor(((Class) mixInAnnotations).getConstructors())) == null) {
                creatorConstructor = null;
            } else {
                try {
                    creatorConstructor = cls23.getConstructor(creatorConstructor2.getParameterTypes());
                } catch (NoSuchMethodException unused) {
                    creatorConstructor = null;
                }
            }
            if (creatorConstructor == null) {
                creatorConstructor = getCreatorConstructor(declaredConstructors);
            }
            constructor2 = creatorConstructor;
            if (constructor2 != null && !z5) {
                TypeUtils.setAccessible(constructor2);
                Class<?>[] parameterTypes = constructor2.getParameterTypes();
                if (parameterTypes.length > 0) {
                    Annotation[][] parameterAnnotations = TypeUtils.getParameterAnnotations(constructor2);
                    String[] strArrLookupParameterNames3 = null;
                    int i13 = 0;
                    while (i13 < parameterTypes.length && i13 < parameterAnnotations.length) {
                        Annotation[] annotationArr = parameterAnnotations[i13];
                        int length = annotationArr.length;
                        Class<?> cls28 = cls25;
                        int i14 = 0;
                        while (true) {
                            cls22 = cls24;
                            if (i14 >= length) {
                                jSONField4 = null;
                                break;
                            }
                            Annotation annotation = annotationArr[i14];
                            Annotation[] annotationArr2 = annotationArr;
                            if (annotation instanceof JSONField) {
                                jSONField4 = (JSONField) annotation;
                                break;
                            }
                            i14++;
                            annotationArr = annotationArr2;
                            cls24 = cls22;
                        }
                        Class<?> cls29 = parameterTypes[i13];
                        Type type2 = constructor2.getGenericParameterTypes()[i13];
                        if (jSONField4 != null) {
                            field5 = TypeUtils.getField(cls23, jSONField4.name(), declaredFields);
                            int iOrdinal3 = jSONField4.ordinal();
                            int iOf6 = SerializerFeature.of(jSONField4.serialzeFeatures());
                            int iOf7 = Feature.of(jSONField4.parseFeatures());
                            strName2 = jSONField4.name();
                            i12 = iOf7;
                            i11 = iOf6;
                            i10 = iOrdinal3;
                        } else {
                            field5 = null;
                            strName2 = null;
                            i10 = 0;
                            i11 = 0;
                            i12 = 0;
                        }
                        if (strName2 == null || strName2.length() == 0) {
                            if (strArrLookupParameterNames3 == null) {
                                strArrLookupParameterNames3 = ASMUtils.lookupParameterNames(constructor2);
                            }
                            str6 = strArrLookupParameterNames3[i13];
                        } else {
                            str6 = strName2;
                        }
                        if (field5 == null) {
                            if (strArrLookupParameterNames3 == null) {
                                if (zIsKotlin) {
                                    strArrLookupParameterNames3 = TypeUtils.getKoltinConstructorParameters(cls);
                                } else {
                                    strArrLookupParameterNames3 = ASMUtils.lookupParameterNames(constructor2);
                                }
                            }
                            if (strArrLookupParameterNames3.length > i13) {
                                field5 = TypeUtils.getField(cls23, strArrLookupParameterNames3[i13], declaredFields);
                            }
                        }
                        ArrayList arrayList4 = arrayList3;
                        add(arrayList4, new FieldInfo(str6, cls, cls29, type2, field5, i10, i11, i12));
                        i13++;
                        parameterTypes = parameterTypes;
                        declaredFields = declaredFields;
                        arrayList3 = arrayList4;
                        methods = methods;
                        parameterAnnotations = parameterAnnotations;
                        cls25 = cls28;
                        cls26 = cls26;
                        strArrLookupParameterNames3 = strArrLookupParameterNames3;
                        cls27 = cls27;
                        cls24 = cls22;
                    }
                }
                cls15 = cls25;
                cls16 = cls24;
                arrayList = arrayList3;
                cls17 = cls26;
                cls18 = cls27;
                methodArr = methods;
                fieldArr6 = declaredFields;
            } else {
                cls15 = cls25;
                cls16 = cls24;
                arrayList = arrayList3;
                cls17 = cls26;
                cls18 = cls27;
                methodArr = methods;
                fieldArr6 = declaredFields;
                factoryMethod = getFactoryMethod(cls23, methodArr, z4);
                if (factoryMethod != null) {
                    TypeUtils.setAccessible(factoryMethod);
                    Class<?>[] parameterTypes2 = factoryMethod.getParameterTypes();
                    if (parameterTypes2.length > 0) {
                        Annotation[][] parameterAnnotations2 = TypeUtils.getParameterAnnotations(factoryMethod);
                        String[] strArrLookupParameterNames4 = null;
                        int i15 = 0;
                        while (i15 < parameterTypes2.length) {
                            Annotation[] annotationArr3 = parameterAnnotations2[i15];
                            int length2 = annotationArr3.length;
                            int i16 = 0;
                            while (true) {
                                if (i16 >= length2) {
                                    jSONField3 = null;
                                    break;
                                }
                                Annotation annotation2 = annotationArr3[i16];
                                if (annotation2 instanceof JSONField) {
                                    jSONField3 = (JSONField) annotation2;
                                    break;
                                }
                                i16++;
                            }
                            if (jSONField3 == null && (!z4 || !TypeUtils.isJacksonCreator(factoryMethod))) {
                                throw new JSONException("illegal json creator");
                            }
                            if (jSONField3 != null) {
                                strName = jSONField3.name();
                                int iOrdinal4 = jSONField3.ordinal();
                                int iOf8 = SerializerFeature.of(jSONField3.serialzeFeatures());
                                iOf5 = Feature.of(jSONField3.parseFeatures());
                                i8 = iOrdinal4;
                                i9 = iOf8;
                            } else {
                                strName = null;
                                i8 = 0;
                                i9 = 0;
                                iOf5 = 0;
                            }
                            if (strName == null || strName.length() == 0) {
                                if (strArrLookupParameterNames4 == null) {
                                    strArrLookupParameterNames4 = ASMUtils.lookupParameterNames(factoryMethod);
                                }
                                strName = strArrLookupParameterNames4[i15];
                            }
                            String[] strArr = strArrLookupParameterNames4;
                            add(arrayList, new FieldInfo(strName, cls, parameterTypes2[i15], factoryMethod.getGenericParameterTypes()[i15], TypeUtils.getField(cls23, strName, fieldArr6), i8, i9, iOf5));
                            i15++;
                            z4 = z3;
                            parameterTypes2 = parameterTypes2;
                            strArrLookupParameterNames4 = strArr;
                        }
                        return new JavaBeanInfo(cls, builderClass, null, null, factoryMethod, null, jSONType2, arrayList);
                    }
                } else if (!z5) {
                    String name = cls.getName();
                    if (zIsKotlin && declaredConstructors.length > 0) {
                        String[] koltinConstructorParameters = TypeUtils.getKoltinConstructorParameters(cls);
                        Constructor<?> kotlinConstructor = TypeUtils.getKotlinConstructor(declaredConstructors, koltinConstructorParameters);
                        TypeUtils.setAccessible(kotlinConstructor);
                        constructor2 = kotlinConstructor;
                        strArrLookupParameterNames = koltinConstructorParameters;
                        cls19 = cls15;
                        cls20 = cls17;
                    } else {
                        int length3 = declaredConstructors.length;
                        int i17 = 0;
                        String[] strArr2 = null;
                        while (true) {
                            if (i17 >= length3) {
                                cls19 = cls15;
                                cls20 = cls17;
                                strArrLookupParameterNames = strArr2;
                                break;
                            }
                            Constructor<?> constructor3 = declaredConstructors[i17];
                            Class<?>[] parameterTypes3 = constructor3.getParameterTypes();
                            if (name.equals("org.springframework.security.web.authentication.WebAuthenticationDetails")) {
                                if (parameterTypes3.length == 2) {
                                    cls20 = cls17;
                                    if (parameterTypes3[0] == cls20 && parameterTypes3[1] == cls20) {
                                        constructor3.setAccessible(true);
                                        strArrLookupParameterNames = ASMUtils.lookupParameterNames(constructor3);
                                        constructor2 = constructor3;
                                        cls19 = cls15;
                                        break;
                                    }
                                } else {
                                    cls20 = cls17;
                                }
                                constructorArr = declaredConstructors;
                                cls19 = cls15;
                                i17++;
                                cls15 = cls19;
                                cls17 = cls20;
                                declaredConstructors = constructorArr;
                            } else {
                                cls20 = cls17;
                                if (name.equals("org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken")) {
                                    if (parameterTypes3.length == 3) {
                                        cls19 = cls15;
                                        constructorArr = declaredConstructors;
                                        if (parameterTypes3[0] == cls19 && parameterTypes3[1] == cls19) {
                                            Class<Collection> cls30 = cls16;
                                            if (parameterTypes3[2] == cls30) {
                                                constructor3.setAccessible(true);
                                                cls16 = cls30;
                                                constructor2 = constructor3;
                                                strArrLookupParameterNames = new String[]{"principal", "credentials", "authorities"};
                                                break;
                                            }
                                            cls16 = cls30;
                                        }
                                    } else {
                                        constructorArr = declaredConstructors;
                                        cls19 = cls15;
                                    }
                                    i17++;
                                    cls15 = cls19;
                                    cls17 = cls20;
                                    declaredConstructors = constructorArr;
                                } else {
                                    constructorArr = declaredConstructors;
                                    cls19 = cls15;
                                    Class<Collection> cls31 = cls16;
                                    if (name.equals("org.springframework.security.core.authority.SimpleGrantedAuthority")) {
                                        cls16 = cls31;
                                        if (parameterTypes3.length == 1 && parameterTypes3[0] == cls20) {
                                            strArrLookupParameterNames = new String[]{"authority"};
                                            constructor2 = constructor3;
                                            break;
                                        }
                                    } else {
                                        cls16 = cls31;
                                        if ((constructor3.getModifiers() & 1) != 0 && (strArrLookupParameterNames2 = ASMUtils.lookupParameterNames(constructor3)) != null && strArrLookupParameterNames2.length != 0 && (constructor2 == null || strArr2 == null || strArrLookupParameterNames2.length > strArr2.length)) {
                                            strArr2 = strArrLookupParameterNames2;
                                            constructor2 = constructor3;
                                        }
                                    }
                                    i17++;
                                    cls15 = cls19;
                                    cls17 = cls20;
                                    declaredConstructors = constructorArr;
                                }
                            }
                        }
                    }
                    Class<?>[] parameterTypes4 = strArrLookupParameterNames != null ? constructor2.getParameterTypes() : null;
                    if (strArrLookupParameterNames != null && parameterTypes4.length == strArrLookupParameterNames.length) {
                        Annotation[][] parameterAnnotations3 = TypeUtils.getParameterAnnotations(constructor2);
                        int i18 = 0;
                        while (i18 < parameterTypes4.length) {
                            Annotation[] annotationArr4 = parameterAnnotations3[i18];
                            String str7 = strArrLookupParameterNames[i18];
                            int length4 = annotationArr4.length;
                            int i19 = 0;
                            while (true) {
                                if (i19 >= length4) {
                                    jSONField2 = null;
                                    break;
                                }
                                int i20 = length4;
                                Annotation annotation3 = annotationArr4[i19];
                                Annotation[] annotationArr5 = annotationArr4;
                                if (annotation3 instanceof JSONField) {
                                    jSONField2 = (JSONField) annotation3;
                                    break;
                                }
                                i19++;
                                annotationArr4 = annotationArr5;
                                length4 = i20;
                            }
                            Class<?> cls32 = parameterTypes4[i18];
                            Type type3 = constructor2.getGenericParameterTypes()[i18];
                            Field field6 = TypeUtils.getField(cls23, str7, fieldArr6);
                            if (field6 == null || jSONField2 != null) {
                                cls21 = cls18;
                            } else {
                                cls21 = cls18;
                                jSONField2 = (JSONField) TypeUtils.getAnnotation(field6, cls21);
                            }
                            if (jSONField2 == null) {
                                if ("org.springframework.security.core.userdetails.User".equals(name) && "password".equals(str7)) {
                                    iOf4 = Feature.InitStringFieldAsEmpty.mask;
                                    iOrdinal2 = 0;
                                    iOf3 = 0;
                                } else {
                                    iOrdinal2 = 0;
                                    iOf3 = 0;
                                    iOf4 = 0;
                                }
                            } else {
                                String strName3 = jSONField2.name();
                                if (strName3.length() != 0) {
                                    str7 = strName3;
                                }
                                iOrdinal2 = jSONField2.ordinal();
                                iOf3 = SerializerFeature.of(jSONField2.serialzeFeatures());
                                iOf4 = Feature.of(jSONField2.parseFeatures());
                            }
                            add(arrayList, new FieldInfo(str7, cls, cls32, type3, field6, iOrdinal2, iOf3, iOf4));
                            i18++;
                            cls18 = cls21;
                            parameterTypes4 = parameterTypes4;
                            fieldArr6 = fieldArr6;
                            strArrLookupParameterNames = strArrLookupParameterNames;
                            cls20 = cls20;
                            cls19 = cls19;
                        }
                        cls2 = cls19;
                        cls4 = cls20;
                        fieldArr = fieldArr6;
                        cls5 = cls18;
                        cls3 = cls16;
                        if (!zIsKotlin && !cls.getName().equals("javax.servlet.http.Cookie")) {
                            return new JavaBeanInfo(cls, builderClass, null, constructor2, null, null, jSONType2, arrayList);
                        }
                    } else {
                        throw new JSONException("default constructor not found. " + cls23);
                    }
                }
            }
            cls2 = cls15;
            cls4 = cls17;
            cls3 = cls16;
            fieldArr = fieldArr6;
            cls5 = cls18;
        } else {
            cls2 = cls25;
            cls3 = cls24;
            arrayList = arrayList3;
            fieldArr = declaredFields;
            cls4 = cls26;
            cls5 = cls27;
            methodArr = methods;
            constructor2 = null;
        }
        if (constructor != null) {
            TypeUtils.setAccessible(constructor);
        }
        String str8 = "set";
        if (builderClass == null) {
            propertyNamingStrategy2 = propertyNamingStrategy5;
            str = "set";
            cls6 = cls5;
            fieldArr2 = fieldArr;
            cls7 = cls4;
            field = null;
            jSONType = jSONType2;
            cls8 = builderClass;
        } else {
            Class<JSONPOJOBuilder> cls33 = JSONPOJOBuilder.class;
            JSONPOJOBuilder jSONPOJOBuilder = (JSONPOJOBuilder) TypeUtils.getAnnotation(builderClass, cls33);
            String strWithPrefix = jSONPOJOBuilder != null ? jSONPOJOBuilder.withPrefix() : null;
            if (strWithPrefix == null) {
                strWithPrefix = "with";
            }
            String str9 = strWithPrefix;
            Method[] methods2 = builderClass.getMethods();
            int length5 = methods2.length;
            int i21 = 0;
            while (i21 < length5) {
                Method method2 = methods2[i21];
                if (!Modifier.isStatic(method2.getModifiers()) && method2.getReturnType().equals(builderClass)) {
                    JSONField superMethodAnnotation = (JSONField) TypeUtils.getAnnotation(method2, cls5);
                    if (superMethodAnnotation == null) {
                        superMethodAnnotation = TypeUtils.getSuperMethodAnnotation(cls23, method2);
                    }
                    JSONField jSONField5 = superMethodAnnotation;
                    if (jSONField5 == null) {
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                    } else if (jSONField5.deserialize()) {
                        int iOrdinal5 = jSONField5.ordinal();
                        int iOf9 = SerializerFeature.of(jSONField5.serialzeFeatures());
                        int iOf10 = Feature.of(jSONField5.parseFeatures());
                        if (jSONField5.name().length() != 0) {
                            i21 = i21;
                            length5 = length5;
                            methods2 = methods2;
                            cls33 = cls33;
                            builderClass = builderClass;
                            propertyNamingStrategy5 = propertyNamingStrategy5;
                            cls5 = cls5;
                            fieldArr = fieldArr;
                            cls4 = cls4;
                            jSONType2 = jSONType2;
                            add(arrayList, new FieldInfo(jSONField5.name(), method2, null, cls, type, iOrdinal5, iOf9, iOf10, jSONField5, null, null, mapBuildGenericInfo));
                            str4 = str9;
                            str5 = str8;
                        } else {
                            i5 = iOrdinal5;
                            i6 = iOf9;
                            i7 = iOf10;
                        }
                    } else {
                        propertyNamingStrategy5 = propertyNamingStrategy5;
                        i21 = i21;
                        length5 = length5;
                        methods2 = methods2;
                        str4 = str9;
                        cls33 = cls33;
                        str5 = str8;
                        builderClass = builderClass;
                        cls5 = cls5;
                        fieldArr = fieldArr;
                        cls4 = cls4;
                        jSONType2 = jSONType2;
                    }
                    String name2 = method2.getName();
                    String str10 = str8;
                    if (name2.startsWith(str10) && name2.length() > 3) {
                        sb = new StringBuilder(name2.substring(3));
                    } else {
                        if (str9.length() == 0) {
                            sb = new StringBuilder(name2);
                        } else {
                            str3 = str9;
                            if (name2.startsWith(str3) && name2.length() > str3.length()) {
                                sb = new StringBuilder(name2.substring(str3.length()));
                                cCharAt2 = sb.charAt(0);
                                if (str3.length() != 0 || Character.isUpperCase(cCharAt2)) {
                                    sb.setCharAt(0, Character.toLowerCase(cCharAt2));
                                    str4 = str3;
                                    str5 = str10;
                                    add(arrayList, new FieldInfo(sb.toString(), method2, null, cls, type, i5, i6, i7, jSONField5, null, null, mapBuildGenericInfo));
                                }
                            }
                        }
                        str4 = str3;
                        str5 = str10;
                    }
                    str3 = str9;
                    cCharAt2 = sb.charAt(0);
                    if (str3.length() != 0) {
                    }
                    sb.setCharAt(0, Character.toLowerCase(cCharAt2));
                    str4 = str3;
                    str5 = str10;
                    add(arrayList, new FieldInfo(sb.toString(), method2, null, cls, type, i5, i6, i7, jSONField5, null, null, mapBuildGenericInfo));
                } else {
                    propertyNamingStrategy5 = propertyNamingStrategy5;
                    i21 = i21;
                    length5 = length5;
                    methods2 = methods2;
                    str4 = str9;
                    cls33 = cls33;
                    str5 = str8;
                    builderClass = builderClass;
                    cls5 = cls5;
                    fieldArr = fieldArr;
                    cls4 = cls4;
                    jSONType2 = jSONType2;
                }
                i21++;
                str9 = str4;
                jSONType2 = jSONType2;
                length5 = length5;
                methods2 = methods2;
                cls33 = cls33;
                builderClass = builderClass;
                propertyNamingStrategy5 = propertyNamingStrategy5;
                fieldArr = fieldArr;
                cls4 = cls4;
                cls5 = cls5;
                str8 = str5;
            }
            propertyNamingStrategy2 = propertyNamingStrategy5;
            str = str8;
            cls6 = cls5;
            fieldArr2 = fieldArr;
            cls7 = cls4;
            jSONType = jSONType2;
            cls8 = builderClass;
            JSONPOJOBuilder jSONPOJOBuilder2 = (JSONPOJOBuilder) TypeUtils.getAnnotation(cls8, cls33);
            String strBuildMethod = jSONPOJOBuilder2 != null ? jSONPOJOBuilder2.buildMethod() : null;
            if (strBuildMethod == null || strBuildMethod.length() == 0) {
                strBuildMethod = "build";
            }
            field = null;
            try {
                method = cls8.getMethod(strBuildMethod, null);
            } catch (NoSuchMethodException | SecurityException unused2) {
            }
            if (method == null) {
                try {
                    method = cls8.getMethod("create", null);
                } catch (NoSuchMethodException | SecurityException unused3) {
                }
            }
            if (method != null) {
                TypeUtils.setAccessible(method);
            } else {
                throw new JSONException("buildMethod not found.");
            }
        }
        int length6 = methodArr.length;
        int i22 = 0;
        while (true) {
            str2 = "get";
            i = 4;
            if (i22 >= length6) {
                break;
            }
            Method method3 = methodArr[i22];
            String name3 = method3.getName();
            if (Modifier.isStatic(method3.getModifiers())) {
                cls11 = cls2;
                propertyNamingStrategy2 = propertyNamingStrategy2;
                cls12 = cls7;
                cls13 = cls6;
                str = str;
                cls14 = cls23;
            } else {
                Class<?> returnType = method3.getReturnType();
                if (returnType.equals(Void.TYPE) || returnType.equals(method3.getDeclaringClass())) {
                    cls11 = cls2;
                    if (method3.getDeclaringClass() == cls11) {
                        cls11 = cls11;
                    } else {
                        Class<?>[] parameterTypes5 = method3.getParameterTypes();
                        if (parameterTypes5.length != 0) {
                            if (parameterTypes5.length > 2) {
                                cls11 = cls11;
                                i22 = i22;
                                length6 = length6;
                                field = field;
                                cls8 = cls8;
                                cls12 = cls7;
                                cls13 = cls6;
                            } else {
                                Class<JSONField> cls34 = cls6;
                                JSONField jSONField6 = (JSONField) TypeUtils.getAnnotation(method3, cls34);
                                int i23 = 0;
                                int i24 = 0;
                                int i25 = 0;
                                if (jSONField6 == null || parameterTypes5.length != 2) {
                                    field = field;
                                    cls12 = cls7;
                                } else {
                                    Class<String> cls35 = cls7;
                                    if (parameterTypes5[0] == cls35) {
                                        if (parameterTypes5[1] == cls11) {
                                            cls12 = cls35;
                                            cls11 = cls11;
                                            cls34 = cls34;
                                            i22 = i22;
                                            length6 = length6;
                                            field = null;
                                            cls8 = cls8;
                                            add(arrayList, new FieldInfo("", method3, null, cls, type, 0, 0, 0, jSONField6, null, null, mapBuildGenericInfo));
                                        } else {
                                            cls12 = cls35;
                                            field = null;
                                        }
                                        cls13 = cls34;
                                    } else {
                                        cls12 = cls35;
                                        field = field;
                                    }
                                }
                                if (parameterTypes5.length != 1) {
                                    methodArr = methodArr;
                                    propertyNamingStrategy2 = propertyNamingStrategy2;
                                    str = str;
                                    cls13 = cls34;
                                    cls14 = cls23;
                                } else {
                                    JSONField superMethodAnnotation2 = jSONField6 == null ? TypeUtils.getSuperMethodAnnotation(cls23, method3) : jSONField6;
                                    if (superMethodAnnotation2 != null || name3.length() >= 4) {
                                        if (superMethodAnnotation2 != null) {
                                            if (superMethodAnnotation2.deserialize()) {
                                                int iOrdinal6 = superMethodAnnotation2.ordinal();
                                                int iOf11 = SerializerFeature.of(superMethodAnnotation2.serialzeFeatures());
                                                int iOf12 = Feature.of(superMethodAnnotation2.parseFeatures());
                                                if (superMethodAnnotation2.name().length() != 0) {
                                                    add(arrayList, new FieldInfo(superMethodAnnotation2.name(), method3, null, cls, type, iOrdinal6, iOf11, iOf12, superMethodAnnotation2, null, null, mapBuildGenericInfo));
                                                    str = str;
                                                } else {
                                                    i23 = iOrdinal6;
                                                    i24 = iOf11;
                                                    i25 = iOf12;
                                                    str = str;
                                                    if (superMethodAnnotation2 == null) {
                                                        cCharAt = name3.charAt(3);
                                                        if (zIsKotlin) {
                                                            arrayList2 = new ArrayList();
                                                            for (i4 = 0; i4 < methodArr.length; i4++) {
                                                                if (methodArr[i4].getName().startsWith("get")) {
                                                                    arrayList2.add(methodArr[i4].getName());
                                                                }
                                                            }
                                                        } else {
                                                            arrayList2 = field;
                                                        }
                                                        if (Character.isUpperCase(cCharAt)) {
                                                            cls14 = cls;
                                                            fieldArr5 = fieldArr2;
                                                            if (zIsKotlin) {
                                                                propertyNameByMethodName2 = TypeUtils.getPropertyNameByMethodName(GslbInterceptor.HEADER_KEY_GSLB + name3.substring(1));
                                                                field3 = field;
                                                                c = 3;
                                                                if (field3 == null) {
                                                                    field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                                }
                                                                if (field3 == null) {
                                                                    field4 = field3;
                                                                } else {
                                                                    field4 = field3;
                                                                }
                                                                if (field4 != null) {
                                                                    jSONField = (JSONField) TypeUtils.getAnnotation(field4, cls34);
                                                                    if (jSONField != null) {
                                                                        cls13 = cls34;
                                                                        r10 = jSONField;
                                                                        iOrdinal = i23;
                                                                        i2 = i24;
                                                                        i3 = i25;
                                                                    } else if (jSONField.deserialize()) {
                                                                        iOrdinal = jSONField.ordinal();
                                                                        iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                                                        iOf2 = Feature.of(jSONField.parseFeatures());
                                                                        if (jSONField.name().length() != 0) {
                                                                            cls13 = cls34;
                                                                            str = str;
                                                                            methodArr = methodArr;
                                                                            cls14 = cls14;
                                                                            add(arrayList, new FieldInfo(jSONField.name(), method3, field4, cls, type, iOrdinal, iOf, iOf2, superMethodAnnotation2, jSONField, null, mapBuildGenericInfo));
                                                                            fieldArr2 = fieldArr5;
                                                                            propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                        } else {
                                                                            cls13 = cls34;
                                                                            r10 = jSONField;
                                                                            i2 = iOf;
                                                                            i3 = iOf2;
                                                                        }
                                                                    } else {
                                                                        cls13 = cls34;
                                                                        fieldArr2 = fieldArr5;
                                                                    }
                                                                } else {
                                                                    cls13 = cls34;
                                                                    iOrdinal = i23;
                                                                    i2 = i24;
                                                                    i3 = i25;
                                                                    r10 = field;
                                                                }
                                                                propertyNamingStrategy3 = propertyNamingStrategy2;
                                                                if (propertyNamingStrategy3 != null) {
                                                                    propertyNameByMethodName2 = propertyNamingStrategy3.translate(propertyNameByMethodName2);
                                                                }
                                                                fieldArr2 = fieldArr5;
                                                                propertyNamingStrategy2 = propertyNamingStrategy3;
                                                                add(arrayList, new FieldInfo(propertyNameByMethodName2, method3, field4, cls, type, iOrdinal, i2, i3, superMethodAnnotation2, r10, null, mapBuildGenericInfo));
                                                            } else {
                                                                if (TypeUtils.compatibleWithJavaBean) {
                                                                    c = 3;
                                                                    propertyNameByMethodName2 = TypeUtils.decapitalize(name3.substring(3));
                                                                } else {
                                                                    c = 3;
                                                                    propertyNameByMethodName2 = TypeUtils.getPropertyNameByMethodName(name3);
                                                                }
                                                                field3 = field;
                                                                if (field3 == null) {
                                                                    field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                                }
                                                                if (field3 == null) {
                                                                    field4 = field3;
                                                                } else {
                                                                    field4 = field3;
                                                                }
                                                                if (field4 != null) {
                                                                    jSONField = (JSONField) TypeUtils.getAnnotation(field4, cls34);
                                                                    if (jSONField != null) {
                                                                        cls13 = cls34;
                                                                        r10 = jSONField;
                                                                        iOrdinal = i23;
                                                                        i2 = i24;
                                                                        i3 = i25;
                                                                    } else if (jSONField.deserialize()) {
                                                                        cls13 = cls34;
                                                                        fieldArr2 = fieldArr5;
                                                                    } else {
                                                                        iOrdinal = jSONField.ordinal();
                                                                        iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                                                        iOf2 = Feature.of(jSONField.parseFeatures());
                                                                        if (jSONField.name().length() != 0) {
                                                                            cls13 = cls34;
                                                                            str = str;
                                                                            methodArr = methodArr;
                                                                            cls14 = cls14;
                                                                            add(arrayList, new FieldInfo(jSONField.name(), method3, field4, cls, type, iOrdinal, iOf, iOf2, superMethodAnnotation2, jSONField, null, mapBuildGenericInfo));
                                                                            fieldArr2 = fieldArr5;
                                                                            propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                        } else {
                                                                            cls13 = cls34;
                                                                            r10 = jSONField;
                                                                            i2 = iOf;
                                                                            i3 = iOf2;
                                                                        }
                                                                    }
                                                                } else {
                                                                    cls13 = cls34;
                                                                    iOrdinal = i23;
                                                                    i2 = i24;
                                                                    i3 = i25;
                                                                    r10 = field;
                                                                }
                                                                propertyNamingStrategy3 = propertyNamingStrategy2;
                                                                if (propertyNamingStrategy3 != null) {
                                                                    propertyNameByMethodName2 = propertyNamingStrategy3.translate(propertyNameByMethodName2);
                                                                }
                                                                fieldArr2 = fieldArr5;
                                                                propertyNamingStrategy2 = propertyNamingStrategy3;
                                                                add(arrayList, new FieldInfo(propertyNameByMethodName2, method3, field4, cls, type, iOrdinal, i2, i3, superMethodAnnotation2, r10, null, mapBuildGenericInfo));
                                                            }
                                                        } else {
                                                            cls14 = cls;
                                                            fieldArr5 = fieldArr2;
                                                            if (zIsKotlin) {
                                                                propertyNameByMethodName2 = TypeUtils.getPropertyNameByMethodName(GslbInterceptor.HEADER_KEY_GSLB + name3.substring(1));
                                                                field3 = field;
                                                                c = 3;
                                                                if (field3 == null) {
                                                                    field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                                }
                                                                if (field3 == null) {
                                                                    field4 = field3;
                                                                } else {
                                                                    field4 = field3;
                                                                }
                                                                if (field4 != null) {
                                                                    jSONField = (JSONField) TypeUtils.getAnnotation(field4, cls34);
                                                                    if (jSONField != null) {
                                                                        cls13 = cls34;
                                                                        r10 = jSONField;
                                                                        iOrdinal = i23;
                                                                        i2 = i24;
                                                                        i3 = i25;
                                                                    } else if (jSONField.deserialize()) {
                                                                        cls13 = cls34;
                                                                        fieldArr2 = fieldArr5;
                                                                    } else {
                                                                        iOrdinal = jSONField.ordinal();
                                                                        iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                                                        iOf2 = Feature.of(jSONField.parseFeatures());
                                                                        if (jSONField.name().length() != 0) {
                                                                            cls13 = cls34;
                                                                            str = str;
                                                                            methodArr = methodArr;
                                                                            cls14 = cls14;
                                                                            add(arrayList, new FieldInfo(jSONField.name(), method3, field4, cls, type, iOrdinal, iOf, iOf2, superMethodAnnotation2, jSONField, null, mapBuildGenericInfo));
                                                                            fieldArr2 = fieldArr5;
                                                                            propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                        } else {
                                                                            cls13 = cls34;
                                                                            r10 = jSONField;
                                                                            i2 = iOf;
                                                                            i3 = iOf2;
                                                                        }
                                                                    }
                                                                } else {
                                                                    cls13 = cls34;
                                                                    iOrdinal = i23;
                                                                    i2 = i24;
                                                                    i3 = i25;
                                                                    r10 = field;
                                                                }
                                                                propertyNamingStrategy3 = propertyNamingStrategy2;
                                                                if (propertyNamingStrategy3 != null) {
                                                                    propertyNameByMethodName2 = propertyNamingStrategy3.translate(propertyNameByMethodName2);
                                                                }
                                                                fieldArr2 = fieldArr5;
                                                                propertyNamingStrategy2 = propertyNamingStrategy3;
                                                                add(arrayList, new FieldInfo(propertyNameByMethodName2, method3, field4, cls, type, iOrdinal, i2, i3, superMethodAnnotation2, r10, null, mapBuildGenericInfo));
                                                            } else {
                                                                if (TypeUtils.compatibleWithJavaBean) {
                                                                    c = 3;
                                                                    propertyNameByMethodName2 = TypeUtils.decapitalize(name3.substring(3));
                                                                } else {
                                                                    c = 3;
                                                                    propertyNameByMethodName2 = TypeUtils.getPropertyNameByMethodName(name3);
                                                                }
                                                                field3 = field;
                                                                if (field3 == null) {
                                                                    field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                                }
                                                                if (field3 == null) {
                                                                    field4 = field3;
                                                                } else {
                                                                    field4 = field3;
                                                                }
                                                                if (field4 != null) {
                                                                    jSONField = (JSONField) TypeUtils.getAnnotation(field4, cls34);
                                                                    if (jSONField != null) {
                                                                        cls13 = cls34;
                                                                        r10 = jSONField;
                                                                        iOrdinal = i23;
                                                                        i2 = i24;
                                                                        i3 = i25;
                                                                    } else if (jSONField.deserialize()) {
                                                                        cls13 = cls34;
                                                                        fieldArr2 = fieldArr5;
                                                                    } else {
                                                                        iOrdinal = jSONField.ordinal();
                                                                        iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                                                        iOf2 = Feature.of(jSONField.parseFeatures());
                                                                        if (jSONField.name().length() != 0) {
                                                                            cls13 = cls34;
                                                                            str = str;
                                                                            methodArr = methodArr;
                                                                            cls14 = cls14;
                                                                            add(arrayList, new FieldInfo(jSONField.name(), method3, field4, cls, type, iOrdinal, iOf, iOf2, superMethodAnnotation2, jSONField, null, mapBuildGenericInfo));
                                                                            fieldArr2 = fieldArr5;
                                                                            propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                        } else {
                                                                            cls13 = cls34;
                                                                            r10 = jSONField;
                                                                            i2 = iOf;
                                                                            i3 = iOf2;
                                                                        }
                                                                    }
                                                                } else {
                                                                    cls13 = cls34;
                                                                    iOrdinal = i23;
                                                                    i2 = i24;
                                                                    i3 = i25;
                                                                    r10 = field;
                                                                }
                                                                propertyNamingStrategy3 = propertyNamingStrategy2;
                                                                if (propertyNamingStrategy3 != null) {
                                                                    propertyNameByMethodName2 = propertyNamingStrategy3.translate(propertyNameByMethodName2);
                                                                }
                                                                fieldArr2 = fieldArr5;
                                                                propertyNamingStrategy2 = propertyNamingStrategy3;
                                                                add(arrayList, new FieldInfo(propertyNameByMethodName2, method3, field4, cls, type, iOrdinal, i2, i3, superMethodAnnotation2, r10, null, mapBuildGenericInfo));
                                                            }
                                                        }
                                                        cls14 = cls14;
                                                    } else {
                                                        cCharAt = name3.charAt(3);
                                                        if (zIsKotlin) {
                                                            arrayList2 = new ArrayList();
                                                            while (i4 < methodArr.length) {
                                                                if (methodArr[i4].getName().startsWith("get")) {
                                                                    arrayList2.add(methodArr[i4].getName());
                                                                }
                                                            }
                                                        } else {
                                                            arrayList2 = field;
                                                        }
                                                        if (Character.isUpperCase(cCharAt)) {
                                                            cls14 = cls;
                                                            fieldArr5 = fieldArr2;
                                                            if (zIsKotlin) {
                                                                propertyNameByMethodName2 = TypeUtils.getPropertyNameByMethodName(GslbInterceptor.HEADER_KEY_GSLB + name3.substring(1));
                                                                field3 = field;
                                                                c = 3;
                                                                if (field3 == null) {
                                                                    field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                                }
                                                                if (field3 == null) {
                                                                    field4 = field3;
                                                                } else {
                                                                    field4 = field3;
                                                                }
                                                                if (field4 != null) {
                                                                    jSONField = (JSONField) TypeUtils.getAnnotation(field4, cls34);
                                                                    if (jSONField != null) {
                                                                        cls13 = cls34;
                                                                        r10 = jSONField;
                                                                        iOrdinal = i23;
                                                                        i2 = i24;
                                                                        i3 = i25;
                                                                    } else if (jSONField.deserialize()) {
                                                                        cls13 = cls34;
                                                                        fieldArr2 = fieldArr5;
                                                                    } else {
                                                                        iOrdinal = jSONField.ordinal();
                                                                        iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                                                        iOf2 = Feature.of(jSONField.parseFeatures());
                                                                        if (jSONField.name().length() != 0) {
                                                                            cls13 = cls34;
                                                                            str = str;
                                                                            methodArr = methodArr;
                                                                            cls14 = cls14;
                                                                            add(arrayList, new FieldInfo(jSONField.name(), method3, field4, cls, type, iOrdinal, iOf, iOf2, superMethodAnnotation2, jSONField, null, mapBuildGenericInfo));
                                                                            fieldArr2 = fieldArr5;
                                                                            propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                        } else {
                                                                            cls13 = cls34;
                                                                            r10 = jSONField;
                                                                            i2 = iOf;
                                                                            i3 = iOf2;
                                                                        }
                                                                    }
                                                                } else {
                                                                    cls13 = cls34;
                                                                    iOrdinal = i23;
                                                                    i2 = i24;
                                                                    i3 = i25;
                                                                    r10 = field;
                                                                }
                                                                propertyNamingStrategy3 = propertyNamingStrategy2;
                                                                if (propertyNamingStrategy3 != null) {
                                                                    propertyNameByMethodName2 = propertyNamingStrategy3.translate(propertyNameByMethodName2);
                                                                }
                                                                fieldArr2 = fieldArr5;
                                                                propertyNamingStrategy2 = propertyNamingStrategy3;
                                                                add(arrayList, new FieldInfo(propertyNameByMethodName2, method3, field4, cls, type, iOrdinal, i2, i3, superMethodAnnotation2, r10, null, mapBuildGenericInfo));
                                                            } else {
                                                                if (TypeUtils.compatibleWithJavaBean) {
                                                                    c = 3;
                                                                    propertyNameByMethodName2 = TypeUtils.decapitalize(name3.substring(3));
                                                                } else {
                                                                    c = 3;
                                                                    propertyNameByMethodName2 = TypeUtils.getPropertyNameByMethodName(name3);
                                                                }
                                                                field3 = field;
                                                                if (field3 == null) {
                                                                    field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                                }
                                                                if (field3 == null) {
                                                                    field4 = field3;
                                                                } else {
                                                                    field4 = field3;
                                                                }
                                                                if (field4 != null) {
                                                                    jSONField = (JSONField) TypeUtils.getAnnotation(field4, cls34);
                                                                    if (jSONField != null) {
                                                                        cls13 = cls34;
                                                                        r10 = jSONField;
                                                                        iOrdinal = i23;
                                                                        i2 = i24;
                                                                        i3 = i25;
                                                                    } else if (jSONField.deserialize()) {
                                                                        cls13 = cls34;
                                                                        fieldArr2 = fieldArr5;
                                                                    } else {
                                                                        iOrdinal = jSONField.ordinal();
                                                                        iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                                                        iOf2 = Feature.of(jSONField.parseFeatures());
                                                                        if (jSONField.name().length() != 0) {
                                                                            cls13 = cls34;
                                                                            str = str;
                                                                            methodArr = methodArr;
                                                                            cls14 = cls14;
                                                                            add(arrayList, new FieldInfo(jSONField.name(), method3, field4, cls, type, iOrdinal, iOf, iOf2, superMethodAnnotation2, jSONField, null, mapBuildGenericInfo));
                                                                            fieldArr2 = fieldArr5;
                                                                            propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                        } else {
                                                                            cls13 = cls34;
                                                                            r10 = jSONField;
                                                                            i2 = iOf;
                                                                            i3 = iOf2;
                                                                        }
                                                                    }
                                                                } else {
                                                                    cls13 = cls34;
                                                                    iOrdinal = i23;
                                                                    i2 = i24;
                                                                    i3 = i25;
                                                                    r10 = field;
                                                                }
                                                                propertyNamingStrategy3 = propertyNamingStrategy2;
                                                                if (propertyNamingStrategy3 != null) {
                                                                    propertyNameByMethodName2 = propertyNamingStrategy3.translate(propertyNameByMethodName2);
                                                                }
                                                                fieldArr2 = fieldArr5;
                                                                propertyNamingStrategy2 = propertyNamingStrategy3;
                                                                add(arrayList, new FieldInfo(propertyNameByMethodName2, method3, field4, cls, type, iOrdinal, i2, i3, superMethodAnnotation2, r10, null, mapBuildGenericInfo));
                                                            }
                                                        } else {
                                                            cls14 = cls;
                                                            fieldArr5 = fieldArr2;
                                                            if (zIsKotlin) {
                                                                propertyNameByMethodName2 = TypeUtils.getPropertyNameByMethodName(GslbInterceptor.HEADER_KEY_GSLB + name3.substring(1));
                                                                field3 = field;
                                                                c = 3;
                                                                if (field3 == null) {
                                                                    field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                                }
                                                                if (field3 == null) {
                                                                    field4 = field3;
                                                                } else {
                                                                    field4 = field3;
                                                                }
                                                                if (field4 != null) {
                                                                    jSONField = (JSONField) TypeUtils.getAnnotation(field4, cls34);
                                                                    if (jSONField != null) {
                                                                        cls13 = cls34;
                                                                        r10 = jSONField;
                                                                        iOrdinal = i23;
                                                                        i2 = i24;
                                                                        i3 = i25;
                                                                    } else if (jSONField.deserialize()) {
                                                                        cls13 = cls34;
                                                                        fieldArr2 = fieldArr5;
                                                                    } else {
                                                                        iOrdinal = jSONField.ordinal();
                                                                        iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                                                        iOf2 = Feature.of(jSONField.parseFeatures());
                                                                        if (jSONField.name().length() != 0) {
                                                                            cls13 = cls34;
                                                                            str = str;
                                                                            methodArr = methodArr;
                                                                            cls14 = cls14;
                                                                            add(arrayList, new FieldInfo(jSONField.name(), method3, field4, cls, type, iOrdinal, iOf, iOf2, superMethodAnnotation2, jSONField, null, mapBuildGenericInfo));
                                                                            fieldArr2 = fieldArr5;
                                                                            propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                        } else {
                                                                            cls13 = cls34;
                                                                            r10 = jSONField;
                                                                            i2 = iOf;
                                                                            i3 = iOf2;
                                                                        }
                                                                    }
                                                                } else {
                                                                    cls13 = cls34;
                                                                    iOrdinal = i23;
                                                                    i2 = i24;
                                                                    i3 = i25;
                                                                    r10 = field;
                                                                }
                                                                propertyNamingStrategy3 = propertyNamingStrategy2;
                                                                if (propertyNamingStrategy3 != null) {
                                                                    propertyNameByMethodName2 = propertyNamingStrategy3.translate(propertyNameByMethodName2);
                                                                }
                                                                fieldArr2 = fieldArr5;
                                                                propertyNamingStrategy2 = propertyNamingStrategy3;
                                                                add(arrayList, new FieldInfo(propertyNameByMethodName2, method3, field4, cls, type, iOrdinal, i2, i3, superMethodAnnotation2, r10, null, mapBuildGenericInfo));
                                                            } else {
                                                                if (TypeUtils.compatibleWithJavaBean) {
                                                                    c = 3;
                                                                    propertyNameByMethodName2 = TypeUtils.decapitalize(name3.substring(3));
                                                                } else {
                                                                    c = 3;
                                                                    propertyNameByMethodName2 = TypeUtils.getPropertyNameByMethodName(name3);
                                                                }
                                                                field3 = field;
                                                                if (field3 == null) {
                                                                    field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                                }
                                                                if (field3 == null) {
                                                                    field4 = field3;
                                                                } else {
                                                                    field4 = field3;
                                                                }
                                                                if (field4 != null) {
                                                                    jSONField = (JSONField) TypeUtils.getAnnotation(field4, cls34);
                                                                    if (jSONField != null) {
                                                                        cls13 = cls34;
                                                                        r10 = jSONField;
                                                                        iOrdinal = i23;
                                                                        i2 = i24;
                                                                        i3 = i25;
                                                                    } else if (jSONField.deserialize()) {
                                                                        cls13 = cls34;
                                                                        fieldArr2 = fieldArr5;
                                                                    } else {
                                                                        iOrdinal = jSONField.ordinal();
                                                                        iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                                                        iOf2 = Feature.of(jSONField.parseFeatures());
                                                                        if (jSONField.name().length() != 0) {
                                                                            cls13 = cls34;
                                                                            str = str;
                                                                            methodArr = methodArr;
                                                                            cls14 = cls14;
                                                                            add(arrayList, new FieldInfo(jSONField.name(), method3, field4, cls, type, iOrdinal, iOf, iOf2, superMethodAnnotation2, jSONField, null, mapBuildGenericInfo));
                                                                            fieldArr2 = fieldArr5;
                                                                            propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                        } else {
                                                                            cls13 = cls34;
                                                                            r10 = jSONField;
                                                                            i2 = iOf;
                                                                            i3 = iOf2;
                                                                        }
                                                                    }
                                                                } else {
                                                                    cls13 = cls34;
                                                                    iOrdinal = i23;
                                                                    i2 = i24;
                                                                    i3 = i25;
                                                                    r10 = field;
                                                                }
                                                                propertyNamingStrategy3 = propertyNamingStrategy2;
                                                                if (propertyNamingStrategy3 != null) {
                                                                    propertyNameByMethodName2 = propertyNamingStrategy3.translate(propertyNameByMethodName2);
                                                                }
                                                                fieldArr2 = fieldArr5;
                                                                propertyNamingStrategy2 = propertyNamingStrategy3;
                                                                add(arrayList, new FieldInfo(propertyNameByMethodName2, method3, field4, cls, type, iOrdinal, i2, i3, superMethodAnnotation2, r10, null, mapBuildGenericInfo));
                                                            }
                                                        }
                                                        cls14 = cls14;
                                                    }
                                                }
                                                cls13 = cls34;
                                                cls14 = cls;
                                            }
                                        } else {
                                            str = str;
                                            if ((superMethodAnnotation2 == null || name3.startsWith(str)) && cls8 == 0) {
                                                cCharAt = name3.charAt(3);
                                                if (zIsKotlin) {
                                                    arrayList2 = new ArrayList();
                                                    while (i4 < methodArr.length) {
                                                        if (methodArr[i4].getName().startsWith("get")) {
                                                            arrayList2.add(methodArr[i4].getName());
                                                        }
                                                    }
                                                } else {
                                                    arrayList2 = field;
                                                }
                                                if (Character.isUpperCase(cCharAt) || cCharAt > 512) {
                                                    cls14 = cls;
                                                    fieldArr5 = fieldArr2;
                                                    if (zIsKotlin) {
                                                        propertyNameByMethodName2 = TypeUtils.getPropertyNameByMethodName(GslbInterceptor.HEADER_KEY_GSLB + name3.substring(1));
                                                        field3 = field;
                                                        c = 3;
                                                        if (field3 == null) {
                                                            field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                        }
                                                        if (field3 == null || parameterTypes5[0] != Boolean.TYPE) {
                                                            field4 = field3;
                                                        } else {
                                                            field4 = TypeUtils.getField(cls14, "is" + Character.toUpperCase(propertyNameByMethodName2.charAt(0)) + propertyNameByMethodName2.substring(1), fieldArr5);
                                                        }
                                                        if (field4 != null) {
                                                            jSONField = (JSONField) TypeUtils.getAnnotation(field4, cls34);
                                                            if (jSONField != null) {
                                                                cls13 = cls34;
                                                                r10 = jSONField;
                                                                iOrdinal = i23;
                                                                i2 = i24;
                                                                i3 = i25;
                                                            } else if (jSONField.deserialize()) {
                                                                cls13 = cls34;
                                                                fieldArr2 = fieldArr5;
                                                            } else {
                                                                iOrdinal = jSONField.ordinal();
                                                                iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                                                iOf2 = Feature.of(jSONField.parseFeatures());
                                                                if (jSONField.name().length() != 0) {
                                                                    cls13 = cls34;
                                                                    str = str;
                                                                    methodArr = methodArr;
                                                                    cls14 = cls14;
                                                                    add(arrayList, new FieldInfo(jSONField.name(), method3, field4, cls, type, iOrdinal, iOf, iOf2, superMethodAnnotation2, jSONField, null, mapBuildGenericInfo));
                                                                    fieldArr2 = fieldArr5;
                                                                    propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                } else {
                                                                    cls13 = cls34;
                                                                    r10 = jSONField;
                                                                    i2 = iOf;
                                                                    i3 = iOf2;
                                                                }
                                                            }
                                                        } else {
                                                            cls13 = cls34;
                                                            iOrdinal = i23;
                                                            i2 = i24;
                                                            i3 = i25;
                                                            r10 = field;
                                                        }
                                                        propertyNamingStrategy3 = propertyNamingStrategy2;
                                                        if (propertyNamingStrategy3 != null) {
                                                            propertyNameByMethodName2 = propertyNamingStrategy3.translate(propertyNameByMethodName2);
                                                        }
                                                        fieldArr2 = fieldArr5;
                                                        propertyNamingStrategy2 = propertyNamingStrategy3;
                                                        add(arrayList, new FieldInfo(propertyNameByMethodName2, method3, field4, cls, type, iOrdinal, i2, i3, superMethodAnnotation2, r10, null, mapBuildGenericInfo));
                                                    } else {
                                                        if (TypeUtils.compatibleWithJavaBean) {
                                                            c = 3;
                                                            propertyNameByMethodName2 = TypeUtils.decapitalize(name3.substring(3));
                                                        } else {
                                                            c = 3;
                                                            propertyNameByMethodName2 = TypeUtils.getPropertyNameByMethodName(name3);
                                                        }
                                                        field3 = field;
                                                        if (field3 == null) {
                                                            field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                        }
                                                        if (field3 == null) {
                                                            field4 = field3;
                                                        } else {
                                                            field4 = field3;
                                                        }
                                                        if (field4 != null) {
                                                            jSONField = (JSONField) TypeUtils.getAnnotation(field4, cls34);
                                                            if (jSONField != null) {
                                                                cls13 = cls34;
                                                                r10 = jSONField;
                                                                iOrdinal = i23;
                                                                i2 = i24;
                                                                i3 = i25;
                                                            } else if (jSONField.deserialize()) {
                                                                cls13 = cls34;
                                                                fieldArr2 = fieldArr5;
                                                            } else {
                                                                iOrdinal = jSONField.ordinal();
                                                                iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                                                iOf2 = Feature.of(jSONField.parseFeatures());
                                                                if (jSONField.name().length() != 0) {
                                                                    cls13 = cls34;
                                                                    str = str;
                                                                    methodArr = methodArr;
                                                                    cls14 = cls14;
                                                                    add(arrayList, new FieldInfo(jSONField.name(), method3, field4, cls, type, iOrdinal, iOf, iOf2, superMethodAnnotation2, jSONField, null, mapBuildGenericInfo));
                                                                    fieldArr2 = fieldArr5;
                                                                    propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                } else {
                                                                    cls13 = cls34;
                                                                    r10 = jSONField;
                                                                    i2 = iOf;
                                                                    i3 = iOf2;
                                                                }
                                                            }
                                                        } else {
                                                            cls13 = cls34;
                                                            iOrdinal = i23;
                                                            i2 = i24;
                                                            i3 = i25;
                                                            r10 = field;
                                                        }
                                                        propertyNamingStrategy3 = propertyNamingStrategy2;
                                                        if (propertyNamingStrategy3 != null) {
                                                            propertyNameByMethodName2 = propertyNamingStrategy3.translate(propertyNameByMethodName2);
                                                        }
                                                        fieldArr2 = fieldArr5;
                                                        propertyNamingStrategy2 = propertyNamingStrategy3;
                                                        add(arrayList, new FieldInfo(propertyNameByMethodName2, method3, field4, cls, type, iOrdinal, i2, i3, superMethodAnnotation2, r10, null, mapBuildGenericInfo));
                                                    }
                                                } else if (cCharAt == '_') {
                                                    if (zIsKotlin) {
                                                        if (arrayList2.contains(GslbInterceptor.HEADER_KEY_GSLB + name3.substring(1))) {
                                                            c2 = 3;
                                                            propertyNameByMethodName2 = name3.substring(3);
                                                        } else {
                                                            c2 = 3;
                                                            propertyNameByMethodName2 = "is" + name3.substring(3);
                                                        }
                                                        cls14 = cls;
                                                        fieldArr5 = fieldArr2;
                                                        field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                    } else {
                                                        c2 = 3;
                                                        cls14 = cls;
                                                        fieldArr5 = fieldArr2;
                                                        String strSubstring = name3.substring(4);
                                                        field3 = TypeUtils.getField(cls14, strSubstring, fieldArr5);
                                                        if (field3 == null) {
                                                            propertyNameByMethodName2 = name3.substring(3);
                                                            field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                            if (field3 == null) {
                                                                propertyNameByMethodName2 = strSubstring;
                                                            }
                                                        } else {
                                                            c = 3;
                                                            propertyNameByMethodName2 = strSubstring;
                                                        }
                                                        if (field3 == null) {
                                                            field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                        }
                                                        if (field3 == null) {
                                                            field4 = field3;
                                                        } else {
                                                            field4 = field3;
                                                        }
                                                        if (field4 != null) {
                                                            jSONField = (JSONField) TypeUtils.getAnnotation(field4, cls34);
                                                            if (jSONField != null) {
                                                                cls13 = cls34;
                                                                r10 = jSONField;
                                                                iOrdinal = i23;
                                                                i2 = i24;
                                                                i3 = i25;
                                                            } else if (jSONField.deserialize()) {
                                                                cls13 = cls34;
                                                                fieldArr2 = fieldArr5;
                                                            } else {
                                                                iOrdinal = jSONField.ordinal();
                                                                iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                                                iOf2 = Feature.of(jSONField.parseFeatures());
                                                                if (jSONField.name().length() != 0) {
                                                                    cls13 = cls34;
                                                                    str = str;
                                                                    methodArr = methodArr;
                                                                    cls14 = cls14;
                                                                    add(arrayList, new FieldInfo(jSONField.name(), method3, field4, cls, type, iOrdinal, iOf, iOf2, superMethodAnnotation2, jSONField, null, mapBuildGenericInfo));
                                                                    fieldArr2 = fieldArr5;
                                                                    propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                } else {
                                                                    cls13 = cls34;
                                                                    r10 = jSONField;
                                                                    i2 = iOf;
                                                                    i3 = iOf2;
                                                                }
                                                            }
                                                        } else {
                                                            cls13 = cls34;
                                                            iOrdinal = i23;
                                                            i2 = i24;
                                                            i3 = i25;
                                                            r10 = field;
                                                        }
                                                        propertyNamingStrategy3 = propertyNamingStrategy2;
                                                        if (propertyNamingStrategy3 != null) {
                                                            propertyNameByMethodName2 = propertyNamingStrategy3.translate(propertyNameByMethodName2);
                                                        }
                                                        fieldArr2 = fieldArr5;
                                                        propertyNamingStrategy2 = propertyNamingStrategy3;
                                                        add(arrayList, new FieldInfo(propertyNameByMethodName2, method3, field4, cls, type, iOrdinal, i2, i3, superMethodAnnotation2, r10, null, mapBuildGenericInfo));
                                                    }
                                                    c = c2;
                                                    if (field3 == null) {
                                                        field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                    }
                                                    if (field3 == null) {
                                                        field4 = field3;
                                                    } else {
                                                        field4 = field3;
                                                    }
                                                    if (field4 != null) {
                                                        jSONField = (JSONField) TypeUtils.getAnnotation(field4, cls34);
                                                        if (jSONField != null) {
                                                            cls13 = cls34;
                                                            r10 = jSONField;
                                                            iOrdinal = i23;
                                                            i2 = i24;
                                                            i3 = i25;
                                                        } else if (jSONField.deserialize()) {
                                                            cls13 = cls34;
                                                            fieldArr2 = fieldArr5;
                                                        } else {
                                                            iOrdinal = jSONField.ordinal();
                                                            iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                                            iOf2 = Feature.of(jSONField.parseFeatures());
                                                            if (jSONField.name().length() != 0) {
                                                                cls13 = cls34;
                                                                str = str;
                                                                methodArr = methodArr;
                                                                cls14 = cls14;
                                                                add(arrayList, new FieldInfo(jSONField.name(), method3, field4, cls, type, iOrdinal, iOf, iOf2, superMethodAnnotation2, jSONField, null, mapBuildGenericInfo));
                                                                fieldArr2 = fieldArr5;
                                                                propertyNamingStrategy2 = propertyNamingStrategy2;
                                                            } else {
                                                                cls13 = cls34;
                                                                r10 = jSONField;
                                                                i2 = iOf;
                                                                i3 = iOf2;
                                                            }
                                                        }
                                                    } else {
                                                        cls13 = cls34;
                                                        iOrdinal = i23;
                                                        i2 = i24;
                                                        i3 = i25;
                                                        r10 = field;
                                                    }
                                                    propertyNamingStrategy3 = propertyNamingStrategy2;
                                                    if (propertyNamingStrategy3 != null) {
                                                        propertyNameByMethodName2 = propertyNamingStrategy3.translate(propertyNameByMethodName2);
                                                    }
                                                    fieldArr2 = fieldArr5;
                                                    propertyNamingStrategy2 = propertyNamingStrategy3;
                                                    add(arrayList, new FieldInfo(propertyNameByMethodName2, method3, field4, cls, type, iOrdinal, i2, i3, superMethodAnnotation2, r10, null, mapBuildGenericInfo));
                                                } else {
                                                    cls14 = cls;
                                                    fieldArr5 = fieldArr2;
                                                    if (cCharAt == 'f') {
                                                        propertyNameByMethodName2 = name3.substring(3);
                                                    } else if (name3.length() >= 5 && Character.isUpperCase(name3.charAt(4))) {
                                                        propertyNameByMethodName2 = TypeUtils.decapitalize(name3.substring(3));
                                                    } else {
                                                        propertyNameByMethodName2 = name3.substring(3);
                                                        field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                        if (field3 == null) {
                                                            fieldArr2 = fieldArr5;
                                                            cls13 = cls34;
                                                        } else {
                                                            c = 3;
                                                            if (field3 == null) {
                                                                field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                            }
                                                            if (field3 == null) {
                                                                field4 = field3;
                                                            } else {
                                                                field4 = field3;
                                                            }
                                                            if (field4 != null) {
                                                                jSONField = (JSONField) TypeUtils.getAnnotation(field4, cls34);
                                                                if (jSONField != null) {
                                                                    cls13 = cls34;
                                                                    r10 = jSONField;
                                                                    iOrdinal = i23;
                                                                    i2 = i24;
                                                                    i3 = i25;
                                                                } else if (jSONField.deserialize()) {
                                                                    cls13 = cls34;
                                                                    fieldArr2 = fieldArr5;
                                                                } else {
                                                                    iOrdinal = jSONField.ordinal();
                                                                    iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                                                    iOf2 = Feature.of(jSONField.parseFeatures());
                                                                    if (jSONField.name().length() != 0) {
                                                                        cls13 = cls34;
                                                                        str = str;
                                                                        methodArr = methodArr;
                                                                        cls14 = cls14;
                                                                        add(arrayList, new FieldInfo(jSONField.name(), method3, field4, cls, type, iOrdinal, iOf, iOf2, superMethodAnnotation2, jSONField, null, mapBuildGenericInfo));
                                                                        fieldArr2 = fieldArr5;
                                                                        propertyNamingStrategy2 = propertyNamingStrategy2;
                                                                    } else {
                                                                        cls13 = cls34;
                                                                        r10 = jSONField;
                                                                        i2 = iOf;
                                                                        i3 = iOf2;
                                                                    }
                                                                }
                                                            } else {
                                                                cls13 = cls34;
                                                                iOrdinal = i23;
                                                                i2 = i24;
                                                                i3 = i25;
                                                                r10 = field;
                                                            }
                                                            propertyNamingStrategy3 = propertyNamingStrategy2;
                                                            if (propertyNamingStrategy3 != null) {
                                                                propertyNameByMethodName2 = propertyNamingStrategy3.translate(propertyNameByMethodName2);
                                                            }
                                                            fieldArr2 = fieldArr5;
                                                            propertyNamingStrategy2 = propertyNamingStrategy3;
                                                            add(arrayList, new FieldInfo(propertyNameByMethodName2, method3, field4, cls, type, iOrdinal, i2, i3, superMethodAnnotation2, r10, null, mapBuildGenericInfo));
                                                        }
                                                    }
                                                    c = 3;
                                                    field3 = field;
                                                    if (field3 == null) {
                                                        field3 = TypeUtils.getField(cls14, propertyNameByMethodName2, fieldArr5);
                                                    }
                                                    if (field3 == null) {
                                                        field4 = field3;
                                                    } else {
                                                        field4 = field3;
                                                    }
                                                    if (field4 != null) {
                                                        jSONField = (JSONField) TypeUtils.getAnnotation(field4, cls34);
                                                        if (jSONField != null) {
                                                            cls13 = cls34;
                                                            r10 = jSONField;
                                                            iOrdinal = i23;
                                                            i2 = i24;
                                                            i3 = i25;
                                                        } else if (jSONField.deserialize()) {
                                                            cls13 = cls34;
                                                            fieldArr2 = fieldArr5;
                                                        } else {
                                                            iOrdinal = jSONField.ordinal();
                                                            iOf = SerializerFeature.of(jSONField.serialzeFeatures());
                                                            iOf2 = Feature.of(jSONField.parseFeatures());
                                                            if (jSONField.name().length() != 0) {
                                                                cls13 = cls34;
                                                                str = str;
                                                                methodArr = methodArr;
                                                                cls14 = cls14;
                                                                add(arrayList, new FieldInfo(jSONField.name(), method3, field4, cls, type, iOrdinal, iOf, iOf2, superMethodAnnotation2, jSONField, null, mapBuildGenericInfo));
                                                                fieldArr2 = fieldArr5;
                                                                propertyNamingStrategy2 = propertyNamingStrategy2;
                                                            } else {
                                                                cls13 = cls34;
                                                                r10 = jSONField;
                                                                i2 = iOf;
                                                                i3 = iOf2;
                                                            }
                                                        }
                                                    } else {
                                                        cls13 = cls34;
                                                        iOrdinal = i23;
                                                        i2 = i24;
                                                        i3 = i25;
                                                        r10 = field;
                                                    }
                                                    propertyNamingStrategy3 = propertyNamingStrategy2;
                                                    if (propertyNamingStrategy3 != null) {
                                                        propertyNameByMethodName2 = propertyNamingStrategy3.translate(propertyNameByMethodName2);
                                                    }
                                                    fieldArr2 = fieldArr5;
                                                    propertyNamingStrategy2 = propertyNamingStrategy3;
                                                    add(arrayList, new FieldInfo(propertyNameByMethodName2, method3, field4, cls, type, iOrdinal, i2, i3, superMethodAnnotation2, r10, null, mapBuildGenericInfo));
                                                }
                                                cls14 = cls14;
                                            } else {
                                                str = str;
                                                cls13 = cls34;
                                                cls14 = cls;
                                            }
                                        }
                                    }
                                    cls13 = cls34;
                                }
                            }
                            cls14 = cls23;
                        } else {
                            cls11 = cls11;
                            i22 = i22;
                            length6 = length6;
                            field = field;
                            cls8 = cls8;
                            methodArr = methodArr;
                            propertyNamingStrategy2 = propertyNamingStrategy2;
                            cls12 = cls7;
                            cls13 = cls6;
                            str = str;
                            cls14 = cls23;
                        }
                    }
                } else {
                    cls11 = cls2;
                }
                propertyNamingStrategy2 = propertyNamingStrategy2;
                cls12 = cls7;
                cls13 = cls6;
                str = str;
                cls14 = cls23;
            }
            i22++;
            cls23 = cls14;
            methodArr = methodArr;
            field = field;
            cls8 = cls8;
            cls7 = cls12;
            cls2 = cls11;
            length6 = length6;
            str = str;
            cls6 = cls13;
            propertyNamingStrategy2 = propertyNamingStrategy2;
        }
        Field field7 = field;
        Class<?> cls36 = cls8;
        Class<?> cls37 = cls23;
        Class<JSONField> cls38 = cls6;
        int i26 = 3;
        PropertyNamingStrategy propertyNamingStrategy6 = propertyNamingStrategy2;
        computeFields(cls37, type, propertyNamingStrategy6, arrayList, cls.getFields());
        Method[] methods3 = cls.getMethods();
        int length7 = methods3.length;
        int i27 = 0;
        while (i27 < length7) {
            Method method4 = methods3[i27];
            String name4 = method4.getName();
            if (name4.length() >= i && !Modifier.isStatic(method4.getModifiers()) && cls36 == null && name4.startsWith(str2) && Character.isUpperCase(name4.charAt(i26)) && method4.getParameterTypes().length == 0) {
                cls9 = cls3;
                if (cls9.isAssignableFrom(method4.getReturnType()) || Map.class.isAssignableFrom(method4.getReturnType()) || AtomicBoolean.class == method4.getReturnType() || AtomicInteger.class == method4.getReturnType() || AtomicLong.class == method4.getReturnType()) {
                    cls10 = cls38;
                    JSONField jSONField7 = (JSONField) TypeUtils.getAnnotation(method4, cls10);
                    if (jSONField7 == null || !jSONField7.deserialize()) {
                        if (jSONField7 != null && jSONField7.name().length() > 0) {
                            propertyNameByMethodName = jSONField7.name();
                            field2 = field7;
                            fieldArr3 = fieldArr2;
                        } else {
                            propertyNameByMethodName = TypeUtils.getPropertyNameByMethodName(name4);
                            fieldArr3 = fieldArr2;
                            Field field8 = TypeUtils.getField(cls37, propertyNameByMethodName, fieldArr3);
                            if (field8 == null) {
                                field2 = field7;
                            } else {
                                JSONField jSONField8 = (JSONField) TypeUtils.getAnnotation(field8, cls10);
                                if (jSONField8 != null && !jSONField8.deserialize()) {
                                    fieldArr4 = fieldArr3;
                                    i26 = i26;
                                } else if (cls9.isAssignableFrom(method4.getReturnType()) || Map.class.isAssignableFrom(method4.getReturnType())) {
                                    field2 = field8;
                                } else {
                                    field2 = field7;
                                }
                            }
                            i = 4;
                        }
                        if (propertyNamingStrategy6 != null) {
                            propertyNameByMethodName = propertyNamingStrategy6.translate(propertyNameByMethodName);
                        }
                        String str11 = propertyNameByMethodName;
                        if (getField(arrayList, str11) != null) {
                            fieldArr4 = fieldArr3;
                            i26 = 3;
                            i = 4;
                        } else {
                            fieldArr4 = fieldArr3;
                            cls10 = cls10;
                            cls9 = cls9;
                            i27 = i27;
                            i = 4;
                            str2 = str2;
                            length7 = length7;
                            methods3 = methods3;
                            i26 = 3;
                            propertyNamingStrategy6 = propertyNamingStrategy6;
                            add(arrayList, new FieldInfo(str11, method4, field2, cls, type, 0, 0, 0, jSONField7, null, null, mapBuildGenericInfo));
                        }
                    } else {
                        cls10 = cls10;
                        cls9 = cls9;
                        i27 = i27;
                        i = i;
                        str2 = str2;
                        length7 = length7;
                        methods3 = methods3;
                        i26 = i26;
                        propertyNamingStrategy6 = propertyNamingStrategy6;
                        fieldArr4 = fieldArr2;
                    }
                } else {
                    cls9 = cls9;
                }
                i27++;
                methods3 = methods3;
                i26 = i26;
                i = i;
                str2 = str2;
                length7 = length7;
                cls38 = cls10;
                cls3 = cls9;
                fieldArr2 = fieldArr4;
                propertyNamingStrategy6 = propertyNamingStrategy6;
            } else {
                cls9 = cls3;
            }
            fieldArr4 = fieldArr2;
            cls10 = cls38;
            i27++;
            methods3 = methods3;
            i26 = i26;
            i = i;
            str2 = str2;
            length7 = length7;
            cls38 = cls10;
            cls3 = cls9;
            fieldArr2 = fieldArr4;
            propertyNamingStrategy6 = propertyNamingStrategy6;
        }
        PropertyNamingStrategy propertyNamingStrategy7 = propertyNamingStrategy6;
        Field[] fieldArr7 = fieldArr2;
        if (arrayList.size() == 0) {
            if (TypeUtils.isXmlField(cls) ? true : z) {
                for (Class<?> superclass2 = cls37; superclass2 != null; superclass2 = superclass2.getSuperclass()) {
                    computeFields(cls37, type, propertyNamingStrategy7, arrayList, fieldArr7);
                }
            }
        }
        return new JavaBeanInfo(cls, cls36, constructor, constructor2, factoryMethod, method, jSONType, arrayList);
    }
}
