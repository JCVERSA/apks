package io.appmetrica.analytics.impl;

import defpackage.i81;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessorsHolder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

public final class C2930v5 implements ModuleAdRevenueProcessor, ModuleAdRevenueProcessorsHolder {
    public final ArrayList a = new ArrayList();

    @Override
    public final String getDescription() {
        return i81.y0(this.a, null, "Composite processor with " + this.a.size() + " children: [", "]", 0, null, C2905u5.a, 25, null);
    }

    @Override
    public final boolean process(Object... objArr) {
        Object next;
        LoggerStorage.getMainPublicOrAnonymousLogger().info("Processing Ad Revenue for " + Arrays.toString(objArr), new Object[0]);
        Iterator it = this.a.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            ModuleAdRevenueProcessor moduleAdRevenueProcessor = (ModuleAdRevenueProcessor) next;
            try {
                boolean zProcess = moduleAdRevenueProcessor.process(Arrays.copyOf(objArr, objArr.length));
                if (!zProcess) {
                    LoggerStorage.getMainPublicOrAnonymousLogger().info("Ad Revenue was not processed by " + moduleAdRevenueProcessor.getDescription(), new Object[0]);
                }
                if (zProcess) {
                    break;
                }
            } catch (Throwable th) {
                LoggerStorage.getMainPublicOrAnonymousLogger().error(th, "Got exception from processor " + moduleAdRevenueProcessor.getDescription(), new Object[0]);
            }
        }
        boolean z = ((ModuleAdRevenueProcessor) next) != null;
        if (!z) {
            LoggerStorage.getMainPublicOrAnonymousLogger().info("Ad Revenue was not processed by " + getDescription() + " since processor for " + Arrays.toString(objArr) + " was not found", new Object[0]);
        }
        return z;
    }

    @Override
    public final void register(ModuleAdRevenueProcessor moduleAdRevenueProcessor) {
        this.a.add(moduleAdRevenueProcessor);
    }
}
