package com.cloud.hisavana.sdk.common.tranmeasure;

public abstract class Monitor {

    public static class a {
        public static final Monitor a = new b();
    }

    public static Monitor getInstance() {
        return a.a;
    }

    public abstract void end();

    public abstract void start();
}
