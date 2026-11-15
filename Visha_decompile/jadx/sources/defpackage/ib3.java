package defpackage;

import java.lang.annotation.Annotation;
import kotlinx.serialization.internal.EnumDescriptor;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

public abstract class ib3 {
    public static final ef5 a(String str, Enum[] enumArr, String[] strArr, Annotation[][] annotationArr, Annotation[] annotationArr2) {
        y45.j(str, "serialName");
        y45.j(enumArr, "values");
        y45.j(strArr, "names");
        y45.j(annotationArr, "entryAnnotations");
        EnumDescriptor enumDescriptor = new EnumDescriptor(str, enumArr.length);
        if (annotationArr2 != null) {
            for (Annotation annotation : annotationArr2) {
                enumDescriptor.r(annotation);
            }
        }
        int length = enumArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            Enum r4 = enumArr[i];
            int i3 = i2 + 1;
            String strName = (String) hi.f0(strArr, i2);
            if (strName == null) {
                strName = r4.name();
            }
            PluginGeneratedSerialDescriptor.l(enumDescriptor, strName, false, 2, null);
            Annotation[] annotationArr3 = (Annotation[]) hi.f0(annotationArr, i2);
            if (annotationArr3 != null) {
                for (Annotation annotation2 : annotationArr3) {
                    enumDescriptor.q(annotation2);
                }
            }
            i++;
            i2 = i3;
        }
        return new EnumSerializer(str, enumArr, enumDescriptor);
    }
}
