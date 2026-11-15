package b5;

import com.alibaba.fastjson.JSONException;
import java.lang.reflect.Type;

public class g3 implements b2 {

    public final Class f15540a;

    public g3(Class cls) {
        this.f15540a = cls;
    }

    @Override
    public int b() {
        return 12;
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        try {
            android.support.v4.media.session.c.a(this.f15540a.newInstance());
            return aVar.y(null, obj);
        } catch (Exception unused) {
            throw new JSONException("craete instance error");
        }
    }
}
