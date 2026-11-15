package com.cloud.tmc.integration.invoke.action;

import com.cloud.tmc.integration.invoke.ExtensionCallback;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.executor.IExecutorService;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import java.util.List;
import java.util.Map;

public class ActionCallback<T> implements ExtensionCallback<T> {
    private static final String TAG = "TmcKernel:ActionCallback";
    private final IExecutorService IExecutorService = (IExecutorService) TmcProxy.get(IExecutorService.class);
    private final Map<Action, ExecutorType> actionPolicyMap;
    private final T defaultValue;

    public ActionCallback(Map<Action, ExecutorType> map, T t10) {
        this.actionPolicyMap = map;
        this.defaultValue = t10;
    }

    @Override
    public void onComplete(T t10) {
        if (t10 == null) {
            t10 = this.defaultValue;
        }
        for (final Action action : this.actionPolicyMap.keySet()) {
            if (action instanceof Action.Complete) {
                final long jCurrentTimeMillis = System.currentTimeMillis();
                final T t11 = t10;
                this.IExecutorService.getExecutor(this.actionPolicyMap.get(action)).execute(new Runnable() {
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override
                    public void run() {
                        TmcLogger.debug(ActionCallback.TAG, "onComplete for " + action.getClass().getName() + " schedule " + (System.currentTimeMillis() - jCurrentTimeMillis));
                        ((Action.Complete) action).onComplete(t11);
                    }
                });
            }
        }
    }

    @Override
    public void onException(final Extension extension, final Throwable th2) {
        for (final Action action : this.actionPolicyMap.keySet()) {
            if (action instanceof Action.Exception) {
                this.IExecutorService.getExecutor(this.actionPolicyMap.get(action)).execute(new Runnable() {
                    @Override
                    public void run() {
                        ((Action.Exception) action).onException(extension, th2);
                    }
                });
            }
        }
    }

    @Override
    public void onInterrupt(final Extension extension) {
        for (final Action action : this.actionPolicyMap.keySet()) {
            if (action instanceof Action.Interrupt) {
                this.IExecutorService.getExecutor(this.actionPolicyMap.get(action)).execute(new Runnable() {
                    @Override
                    public void run() {
                        ((Action.Interrupt) action).onInterrupt(extension);
                    }
                });
            }
        }
    }

    @Override
    public void onProgress(final Extension extension, final T t10) {
        for (final Action action : this.actionPolicyMap.keySet()) {
            if (action instanceof Action.Progress) {
                this.IExecutorService.getExecutor(this.actionPolicyMap.get(action)).execute(new Runnable() {
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override
                    public void run() {
                        ((Action.Progress) action).onProgress(extension, t10);
                    }
                });
            }
        }
    }

    @Override
    public void onStart(final List<Extension> list) {
        for (final Action action : this.actionPolicyMap.keySet()) {
            final long jCurrentTimeMillis = System.currentTimeMillis();
            if (action instanceof Action.Start) {
                this.IExecutorService.getExecutor(this.actionPolicyMap.get(action)).execute(new Runnable() {
                    @Override
                    public void run() {
                        TmcLogger.debug(ActionCallback.TAG, "onComplete for " + action.getClass().getName() + " schedule " + (System.currentTimeMillis() - jCurrentTimeMillis));
                        ((Action.Start) action).onStart(list);
                    }
                });
            }
        }
    }

    @Override
    public void onFail(Throwable th2) {
    }
}
