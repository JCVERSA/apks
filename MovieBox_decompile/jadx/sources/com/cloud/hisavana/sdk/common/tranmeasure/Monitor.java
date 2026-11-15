package com.cloud.hisavana.sdk.common.tranmeasure;

public abstract class Monitor {

    private static class a {

        private static final Monitor f21506a = new b();
    }

    public static Monitor getInstance() {
        return a.f21506a;
    }

    public abstract void end();

    public abstract void start();
}
