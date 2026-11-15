package z0;

import android.graphics.Typeface;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class m extends l {
    @Override
    protected Typeface j(Object obj) {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.f76486g, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.f76492m.invoke(null, objNewInstance, C.SANS_SERIF_NAME, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override
    protected Method v(Class cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), String.class, cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
