package com.mgtv.drm;

import com.mgtv.drm.jni.LightPlayNative;
import com.mgtv.drm.loader.LightPlayDrmLibLoader;

public class LightPlayDrmManager {
    private static LightPlayDrmManager sInstance;
    private boolean inited;
    private boolean libLoaded;
    private Object locker = new Object();

    public static class InitConfig {
        public boolean autoLibLoad = true;

        public InitConfig setAutoLibLoad(boolean z) {
            this.autoLibLoad = z;
            return this;
        }
    }

    private LightPlayDrmManager() {
    }

    public static synchronized LightPlayDrmManager getInstance() {
        try {
            if (sInstance == null) {
                sInstance = new LightPlayDrmManager();
            }
        } catch (Throwable th) {
            throw th;
        }
        return sInstance;
    }

    public void closeSession(ILightPlayDrmSession iLightPlayDrmSession) {
        synchronized (this.locker) {
            if (iLightPlayDrmSession != null) {
                try {
                    iLightPlayDrmSession.close();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
    }

    public byte[] getProvisionRequest() {
        synchronized (this.locker) {
            try {
                if (!this.inited) {
                    return null;
                }
                return LightPlayNative.getProvisionRequest();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String getVersion() {
        synchronized (this.locker) {
            try {
                if (!this.inited) {
                    return "";
                }
                return LightPlayNative.getVersion();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String getVersionTime() {
        synchronized (this.locker) {
            try {
                if (!this.inited) {
                    return "";
                }
                return LightPlayNative.getVersionTime();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean init() {
        return init(new InitConfig().setAutoLibLoad(true));
    }

    public boolean isInited() {
        return this.inited;
    }

    public boolean isProvisioned() {
        synchronized (this.locker) {
            try {
                if (!this.inited) {
                    return false;
                }
                return LightPlayNative.isProvisioned();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ILightPlayDrmSession openSession() throws IllegalStateException {
        synchronized (this.locker) {
            try {
                if (!this.inited) {
                    return null;
                }
                return new LightPlayDrmSessionImpl();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int provideProvisionResponse(byte[] bArr) {
        synchronized (this.locker) {
            try {
                if (!this.inited) {
                    return -1;
                }
                return LightPlayNative.provideProvisionResponse(bArr);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void release() {
        synchronized (this.locker) {
            try {
                if (this.inited) {
                    LightPlayNative.terminate();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean init(InitConfig initConfig) {
        synchronized (this.locker) {
            try {
                boolean z = true;
                if (this.inited) {
                    return true;
                }
                if (initConfig != null && initConfig.autoLibLoad) {
                    boolean zLoadLibs = LightPlayDrmLibLoader.getInstance().loadLibs();
                    this.libLoaded = zLoadLibs;
                    if (zLoadLibs) {
                        if (LightPlayNative.initialize() != 0) {
                            z = false;
                        }
                    }
                    return this.inited;
                }
                if (LightPlayNative.initialize() != 0) {
                    z = false;
                }
                this.inited = z;
                return this.inited;
            } catch (Error | Exception e) {
                e.printStackTrace();
                return this.inited;
            }
        }
    }
}
