package com.transsion.hubsdk.api.util;

public final class TranSingletonUtils {

    public static abstract class Singleton<T> {
        private volatile T mInstance;

        public final void clean() {
            this.mInstance = null;
        }

        public abstract T create();

        public final T get() {
            if (this.mInstance == null) {
                synchronized (this) {
                    try {
                        if (this.mInstance == null) {
                            this.mInstance = create();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return this.mInstance;
        }
    }
}
