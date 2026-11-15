package org.apache.commons.lang3;

import com.alibaba.android.arouter.utils.Consts;
import org.apache.commons.io.IOUtils;

public class ClassPathUtils {
    public static String toFullyQualifiedName(Class<?> cls, String str) {
        Validate.notNull(cls, "context", new Object[0]);
        Validate.notNull(str, "resourceName", new Object[0]);
        return toFullyQualifiedName(cls.getPackage(), str);
    }

    public static String toFullyQualifiedPath(Class<?> cls, String str) {
        Validate.notNull(cls, "context", new Object[0]);
        Validate.notNull(str, "resourceName", new Object[0]);
        return toFullyQualifiedPath(cls.getPackage(), str);
    }

    public static String toFullyQualifiedName(Package r3, String str) {
        Validate.notNull(r3, "context", new Object[0]);
        Validate.notNull(str, "resourceName", new Object[0]);
        return r3.getName() + Consts.DOT + str;
    }

    public static String toFullyQualifiedPath(Package r3, String str) {
        Validate.notNull(r3, "context", new Object[0]);
        Validate.notNull(str, "resourceName", new Object[0]);
        return r3.getName().replace('.', IOUtils.DIR_SEPARATOR_UNIX) + "/" + str;
    }
}
