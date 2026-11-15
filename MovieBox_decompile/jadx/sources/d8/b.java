package d8;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class b {

    private static final b f58919a = d();

    static class a extends b {

        private static final Map f58920b;

        static {
            HashMap map = new HashMap();
            map.put(Bundle.class, new x7.a());
            map.put(Intent.class, new x7.b());
            f58920b = Collections.unmodifiableMap(map);
        }

        a() {
        }

        @Override
        Map a() {
            return f58920b;
        }

        @Override
        g8.c b() {
            return new g8.a();
        }

        @Override
        public void c(String str) {
            Log.e("XLog", str);
        }

        @Override
        String f() {
            return System.lineSeparator();
        }

        @Override
        public void g(String str) {
            Log.w("XLog", str);
        }
    }

    private static b d() {
        try {
            Class.forName("android.os.Build");
            return new a();
        } catch (ClassNotFoundException unused) {
            return new b();
        }
    }

    public static b e() {
        return f58919a;
    }

    Map a() {
        return Collections.emptyMap();
    }

    g8.c b() {
        return new g8.b();
    }

    public void c(String str) {
        System.out.println(str);
    }

    String f() {
        return System.lineSeparator();
    }

    public void g(String str) {
        System.out.println(str);
    }
}
