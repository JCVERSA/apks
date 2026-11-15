package a;

import android.content.Context;
import androidx.annotation.Keep;
import com.transsion.commercialization.task.q;

@Keep
public class ServiceProvider__TheRouter__1452284254 implements com.therouter.inject.b {
    public static final String FLOW_TASK_JSON = "{}";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    @Override
    public void initFlowTask(Context context, jf.b bVar) {
        addFlowTask(context, bVar);
    }

    @Override
    public <T> T interception(Class<T> cls, Object... objArr) {
        if (wj.a.class.equals(cls) && objArr.length == 0) {
            return (T) tj.d.a();
        }
        if (wj.b.class.equals(cls) && objArr.length == 0) {
            return (T) com.transsion.commercialization.gameres.c.a();
        }
        if (wj.d.class.equals(cls) && objArr.length == 0) {
            return (T) rj.c.a();
        }
        if (wj.e.class.equals(cls) && objArr.length == 0) {
            return (T) com.transsion.commercialization.pslink.e.a();
        }
        if (wj.f.class.equals(cls) && objArr.length == 0) {
            return (T) q.a();
        }
        return null;
    }

    public static void addFlowTask(Context context, jf.b bVar) {
    }
}
