package com.hunantv.media.drm;

public interface IDrmProxy {

    public interface DrmProxyNotifyListener {
        void onErrorNotification(IDrmProxy iDrmProxy, int i, String str);
    }

    void disableProxy(boolean z);

    void init() throws MgtvDrmErrorCodeException, NullPointerException;

    String makeUrl(String str) throws MgtvDrmErrorCodeException;

    void setDrmNotifyProxyListener(DrmProxyNotifyListener drmProxyNotifyListener);

    void start() throws MgtvDrmErrorCodeException;

    void stop() throws MgtvDrmErrorCodeException;
}
