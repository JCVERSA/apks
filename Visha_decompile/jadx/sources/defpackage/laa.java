package defpackage;

import java.lang.reflect.Method;
import kotlin.Result;
import kotlin.c;

public final class laa {
    public static final laa a = new laa();
    public static b b = new a();

    public static final class a implements b {
        public Method a;
        public Method b;
        public Method c;
        public Method d;

        public a() {
            try {
                Result.Companion companion = Result.INSTANCE;
                Class<?> cls = Class.forName("android.os.SystemProperties");
                this.a = cls.getMethod("get", String.class, String.class);
                this.b = cls.getMethod("getInt", String.class, Integer.TYPE);
                this.c = cls.getMethod("getLong", String.class, Long.TYPE);
                this.d = cls.getMethod("getBoolean", String.class, Boolean.TYPE);
                Result.m279constructorimpl(zfb.a);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m279constructorimpl(c.a(th));
            }
        }

        @Override
        public String get(String str, String str2) {
            y45.j(str, "key");
            y45.j(str2, "defaultValue");
            Method method = this.a;
            Object objInvoke = method != null ? method.invoke(null, str, str2) : null;
            String str3 = objInvoke instanceof String ? (String) objInvoke : null;
            return str3 == null ? "" : str3;
        }
    }

    public interface b {
        String get(String str, String str2);
    }

    public final String a(String str) {
        y45.j(str, "key");
        return b.get(str, "");
    }
}
