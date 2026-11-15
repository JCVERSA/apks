package defpackage;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

public abstract class w7d {
    public static final String a = "w7d";
    public static String b;
    public static String c = n2d.class.getName();

    public static g6d a(String str, String str2) {
        String str3 = b;
        if (str3 == null) {
            str3 = c;
        }
        b(str3, ResourceBundle.getBundle(str), str2);
        throw new MissingResourceException("Error locating the logging class", a, str2);
    }

    public static g6d b(String str, ResourceBundle resourceBundle, String str2) {
        try {
            ubc.a(Class.forName(str).newInstance());
            throw null;
        } catch (ClassNotFoundException | ExceptionInInitializerError | IllegalAccessException | InstantiationException | NoClassDefFoundError | SecurityException unused) {
            return null;
        }
    }
}
