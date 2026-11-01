package com.snaptube.extractor.pluginlib.sites.extract;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import o.d00;

public class BackgroundWebExtractProvider {
    private static final String METHOD_GET_INSTANCE = "getInstance";
    private static final String METHOD_SEND_BACKGROUND_WEB_RESULT_TO_EXTRACTOR = "sendBackgroundWebResultToExtractor";
    private static volatile BackgroundWebExtractProvider instance;
    private final CopyOnWriteArrayList<d00> listenersList = new CopyOnWriteArrayList<>();
    private Object pluginProvider;

    public static BackgroundWebExtractProvider getInstance() {
        if (instance == null) {
            synchronized (BackgroundWebExtractProvider.class) {
                try {
                    if (instance == null) {
                        instance = new BackgroundWebExtractProvider();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private void notifyResultToListener(String str) {
        Iterator<d00> it2 = this.listenersList.iterator();
        while (it2.hasNext()) {
            it2.next().a(str);
        }
    }

    private boolean sendToPlugin(String str) {
        if (this.pluginProvider == null || BackgroundWebExtractProvider.class.getClassLoader() == this.pluginProvider.getClass().getClassLoader()) {
            return false;
        }
        try {
            Object objInvoke = this.pluginProvider.getClass().getMethod(METHOD_SEND_BACKGROUND_WEB_RESULT_TO_EXTRACTOR, String.class).invoke(this.pluginProvider, str);
            if (objInvoke != null) {
                return ((Boolean) objInvoke).booleanValue();
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public void addListener(d00 d00Var) {
        if (this.listenersList.contains(d00Var)) {
            return;
        }
        this.listenersList.add(d00Var);
    }

    public void loadPlugin(ClassLoader classLoader) {
        try {
            this.pluginProvider = classLoader.loadClass(BackgroundWebExtractProvider.class.getName()).getMethod("getInstance", null).invoke(null, null);
        } catch (Throwable unused) {
        }
    }

    public void removerListener(d00 d00Var) {
        this.listenersList.remove(d00Var);
    }

    public boolean sendBackgroundWebResultToExtractor(String str) {
        if (sendToPlugin(str)) {
            return true;
        }
        notifyResultToListener(str);
        return true;
    }
}
