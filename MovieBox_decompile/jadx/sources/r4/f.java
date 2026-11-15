package r4;

import androidx.collection.z;

public class f {

    private static final f f70835b = new f();

    private final z f70836a = new z(20);

    f() {
    }

    public static f b() {
        return f70835b;
    }

    public com.airbnb.lottie.h a(String str) {
        if (str == null) {
            return null;
        }
        return (com.airbnb.lottie.h) this.f70836a.get(str);
    }

    public void c(String str, com.airbnb.lottie.h hVar) {
        if (str == null) {
            return;
        }
        this.f70836a.put(str, hVar);
    }
}
