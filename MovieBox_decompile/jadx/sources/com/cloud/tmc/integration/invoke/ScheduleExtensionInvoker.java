package com.cloud.tmc.integration.invoke;

import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.executor.IExecutorService;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import java.lang.reflect.Method;

public class ScheduleExtensionInvoker extends ExtensionInvoker {
    private static final String TAG = "TmcKernel:ExtensionInvoker:Schedule";
    private IExecutorService mIExecutorService;

    static class AnonymousClass3 {
        static final int[] $SwitchMap$com$cloud$tmc$kernel$executor$ExecutorType;

        static {
            int[] iArr = new int[ExecutorType.values().length];
            $SwitchMap$com$cloud$tmc$kernel$executor$ExecutorType = iArr;
            try {
                iArr[ExecutorType.SYNC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$cloud$tmc$kernel$executor$ExecutorType[ExecutorType.UI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$cloud$tmc$kernel$executor$ExecutorType[ExecutorType.URGENT_DISPLAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public ScheduleExtensionInvoker(ExtensionInvoker extensionInvoker) {
        super(extensionInvoker);
        this.mIExecutorService = (IExecutorService) TmcProxy.get(IExecutorService.class);
    }

    @Override
    protected ExtensionInvoker.InvokeResult onInvoke(final Object obj, final Method method, final Object[] objArr) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        ThreadType threadType = (ThreadType) method.getAnnotation(ThreadType.class);
        ExecutorType executorTypeValue = threadType != null ? threadType.value() : ExecutorType.SYNC;
        int i10 = AnonymousClass3.$SwitchMap$com$cloud$tmc$kernel$executor$ExecutorType[executorTypeValue.ordinal()];
        if (i10 == 1) {
            TmcLogger.debug(TAG, "method " + method + " cost " + (System.currentTimeMillis() - jCurrentTimeMillis));
            return ExtensionInvoker.InvokeResult.proceed();
        }
        if (i10 == 2) {
            ExecutorUtils.runOnMain(new Runnable() {
                @Override
                public void run() {
                    TmcLogger.debug(ScheduleExtensionInvoker.TAG, "method " + method + " cost " + (System.currentTimeMillis() - jCurrentTimeMillis));
                    ScheduleExtensionInvoker scheduleExtensionInvoker = ScheduleExtensionInvoker.this;
                    scheduleExtensionInvoker.proceedSafe(scheduleExtensionInvoker.targetExtensions, obj, method, objArr);
                }
            });
            return ExtensionInvoker.InvokeResult.pending();
        }
        if (i10 == 3) {
            if ((obj.getClass().getInterfaces().length > 0 ? obj.getClass().getInterfaces()[0] : null) == null) {
                TmcLogger.w(TAG, "extension " + obj + " want to execute on URGENT_DISPLAY but not nebulax class!");
                executorTypeValue = ExecutorType.URGENT;
            }
        }
        this.mIExecutorService.getExecutor(executorTypeValue).execute(new Runnable() {
            @Override
            public void run() {
                TmcLogger.debug(ScheduleExtensionInvoker.TAG, "method " + method + " cost " + (System.currentTimeMillis() - jCurrentTimeMillis));
                ScheduleExtensionInvoker scheduleExtensionInvoker = ScheduleExtensionInvoker.this;
                scheduleExtensionInvoker.proceedSafe(scheduleExtensionInvoker.targetExtensions, obj, method, objArr);
            }
        });
        return ExtensionInvoker.InvokeResult.pending();
    }
}
