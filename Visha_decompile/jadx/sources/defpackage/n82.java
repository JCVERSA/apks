package defpackage;

import org.apache.commons.io.IOUtils;

public abstract class n82 {
    public static String a(String str) {
        return str.replace(IOUtils.DIR_SEPARATOR_UNIX, '.');
    }

    public static String b(String str) {
        return str.replace('.', IOUtils.DIR_SEPARATOR_UNIX);
    }
}
