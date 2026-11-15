package com.hunantv.media.report.c;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

public class g {
    private static String a(String str) {
        if (str != null && str.length() > 0) {
            try {
                char[] charArray = str.toCharArray();
                charArray[0] = Character.toUpperCase(charArray[0]);
                return new String(charArray);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str;
    }

    private static Annotation a(Object obj, Class cls) {
        Annotation[] annotations;
        if (obj == null || (annotations = obj.getClass().getAnnotations()) == null) {
            return null;
        }
        for (Annotation annotation : annotations) {
            if (annotation.annotationType().getName().equals(cls.getName())) {
                return annotation;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0073  */
    /* JADX WARN: Code duplicated, block: B:55:0x00f0 A[Catch: all -> 0x001f, Exception -> 0x004c, TryCatch #0 {Exception -> 0x004c, blocks: (B:17:0x002e, B:19:0x0040, B:21:0x0046, B:24:0x004f, B:26:0x0055, B:27:0x0068, B:29:0x006c, B:31:0x0075, B:33:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:42:0x00a5, B:44:0x00a9, B:47:0x00b0, B:48:0x00b3, B:49:0x00c1, B:51:0x00c7, B:53:0x00d5, B:54:0x00e8, B:55:0x00f0, B:57:0x00fc, B:59:0x0106), top: B:65:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00fc A[Catch: all -> 0x001f, Exception -> 0x004c, TryCatch #0 {Exception -> 0x004c, blocks: (B:17:0x002e, B:19:0x0040, B:21:0x0046, B:24:0x004f, B:26:0x0055, B:27:0x0068, B:29:0x006c, B:31:0x0075, B:33:0x0089, B:36:0x0091, B:38:0x0099, B:40:0x00a1, B:42:0x00a5, B:44:0x00a9, B:47:0x00b0, B:48:0x00b3, B:49:0x00c1, B:51:0x00c7, B:53:0x00d5, B:54:0x00e8, B:55:0x00f0, B:57:0x00fc, B:59:0x0106), top: B:65:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:79:0x010d A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public static HashMap<String, String> a(Object obj) {
        HashMap<String, String> mapA;
        Type[] actualTypeArguments;
        HashMap<String, String> map = new HashMap<>();
        try {
            Field[] declaredFields = obj.getClass().getDeclaredFields();
            if (declaredFields == null) {
                return map;
            }
            Annotation annotationA = a(obj, com.hunantv.media.report.entity.a.a.class);
            String strA = annotationA != null ? ((com.hunantv.media.report.entity.a.a) annotationA).a() : null;
            for (Field field : declaredFields) {
                if (field != null) {
                    try {
                        if (field.getType().getName().equals(String.class.getName())) {
                            Object obj2 = field.get(obj);
                            if (obj2 == null) {
                                obj2 = "none";
                                field.set(obj, "none");
                            }
                            String name = field.getName();
                            if (strA != null) {
                                name = strA + a(name);
                            }
                            if (obj2 instanceof String) {
                                map.put(name, (String) obj2);
                            }
                        } else if (field == null && field.getType().getName().equals(Map.class.getName())) {
                            if (field.get(obj) != null) {
                                Type genericType = field.getGenericType();
                                if ((genericType instanceof ParameterizedType) && (actualTypeArguments = ((ParameterizedType) genericType).getActualTypeArguments()) != null) {
                                    int length = actualTypeArguments.length;
                                    int i = 0;
                                    while (true) {
                                        if (i >= length) {
                                            for (Map.Entry entry : ((Map) field.get(obj)).entrySet()) {
                                                String str = (String) entry.getKey();
                                                if (strA != null) {
                                                    str = strA + a(str);
                                                }
                                                map.put(str, entry.getValue());
                                            }
                                            break;
                                        }
                                        Type type = actualTypeArguments[i];
                                        if (type == null || !type.equals(String.class)) {
                                            break;
                                            break;
                                        }
                                        i++;
                                    }
                                }
                            }
                        } else if (a(field.get(obj), com.hunantv.media.report.entity.a.b.class) == null && (mapA = a(field.get(obj))) != null) {
                            map.putAll(mapA);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else if (field == null) {
                    if (a(field.get(obj), com.hunantv.media.report.entity.a.b.class) == null) {
                    }
                } else if (a(field.get(obj), com.hunantv.media.report.entity.a.b.class) == null) {
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return map;
    }
}
