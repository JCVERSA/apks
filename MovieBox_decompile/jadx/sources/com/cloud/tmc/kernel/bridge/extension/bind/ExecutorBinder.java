package com.cloud.tmc.kernel.bridge.extension.bind;

import com.cloud.tmc.kernel.bridge.extension.annotation.BindingExecutor;
import com.cloud.tmc.kernel.executor.IExecutorService;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import java.util.concurrent.Executor;

public class ExecutorBinder implements Binder<BindingExecutor, Executor> {
    @Override
    public Executor bind(Class<Executor> cls, BindingExecutor bindingExecutor) throws BindException {
        return ((IExecutorService) TmcProxy.get(IExecutorService.class)).getExecutor(bindingExecutor.value());
    }
}
