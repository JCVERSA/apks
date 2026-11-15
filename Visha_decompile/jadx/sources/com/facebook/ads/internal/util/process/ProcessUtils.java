package com.facebook.ads.internal.util.process;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.AnyThread;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicBoolean;

@AnyThread
@Keep
public final class ProcessUtils {

    @Nullable
    private static String sProcessName;
    private static final AtomicBoolean sRemoteRenderingProcess = new AtomicBoolean();

    private ProcessUtils() {
    }

    @Nullable
    public static String getProcessName(Context context) {
        synchronized (ProcessUtils.class) {
            try {
                String str = sProcessName;
                return str != null ? str : getProcessNameAPI28();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    private static String getProcessNameAPI28() {
        try {
            return (String) Application.class.getMethod("getProcessName", null).invoke(null, null);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    private static String getProcessNameViaReflection(Application application) {
        try {
            Field field = application.getClass().getField("mLoadedApk");
            field.setAccessible(true);
            Object obj = field.get(application);
            Field declaredField = obj.getClass().getDeclaredField("mActivityThread");
            declaredField.setAccessible(true);
            Object obj2 = declaredField.get(obj);
            return (String) obj2.getClass().getDeclaredMethod("getProcessName", null).invoke(obj2, null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getProcessSpecificName(String str, Context context) {
        String packageName = context.getPackageName();
        String processName = getProcessName(context);
        if (TextUtils.isEmpty(processName) || packageName.equals(processName)) {
            return str;
        }
        if (processName.contains(StringUtils.PROCESS_POSTFIX_DELIMITER)) {
            processName = processName.split(StringUtils.PROCESS_POSTFIX_DELIMITER)[1];
        }
        return str + "_" + processName;
    }

    public static boolean isRemoteRenderingProcess() {
        return sRemoteRenderingProcess.get();
    }

    public static void setRemoteRenderingProcess(boolean z) {
        sRemoteRenderingProcess.set(z);
    }
}
