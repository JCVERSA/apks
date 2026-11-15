package defpackage;

public abstract class q06 {
    public static void a(String str, String str2, Object obj) {
        if (str2 == null || obj == null) {
            hb0.markDirect(str);
        } else {
            hb0.markTrackSingle(str, str2, obj);
        }
    }
}
