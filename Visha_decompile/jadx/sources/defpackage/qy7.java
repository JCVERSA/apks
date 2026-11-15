package defpackage;

import java.lang.reflect.InvocationTargetException;

public abstract class qy7 {
    public static py7 a(String str, String str2) {
        String str3;
        if (str2 == null || str2.isEmpty()) {
            str3 = "";
        } else {
            str3 = "_" + str2;
        }
        try {
            ubc.a(Class.forName("org.schabi.newpipe.extractor.timeago.patterns." + (str + str3)).getDeclaredMethod("getInstance", null).invoke(null, null));
            return null;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
            return null;
        }
    }
}
