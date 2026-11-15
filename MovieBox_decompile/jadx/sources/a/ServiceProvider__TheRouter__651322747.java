package a;

import android.content.Context;
import androidx.annotation.Keep;

@Keep
public class ServiceProvider__TheRouter__651322747 implements com.therouter.inject.b {
    public static final String FLOW_TASK_JSON = "{}";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    @Override
    public void initFlowTask(Context context, jf.b bVar) {
        addFlowTask(context, bVar);
    }

    @Override
    public <T> T interception(Class<T> cls, Object... objArr) {
        if (com.transsion.push.tpush.i.class.equals(cls) && objArr.length == 0) {
            return (T) com.transsion.startup.work.b.a();
        }
        return null;
    }

    public static void addFlowTask(Context context, jf.b bVar) {
    }
}
