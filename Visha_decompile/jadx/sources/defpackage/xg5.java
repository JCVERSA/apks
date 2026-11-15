package defpackage;

import kotlin.KotlinVersion;

public abstract class xg5 {
    public static String a() {
        try {
            return KotlinVersion.CURRENT.toString();
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }
}
