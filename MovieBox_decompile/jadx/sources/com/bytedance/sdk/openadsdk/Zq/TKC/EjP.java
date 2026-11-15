package com.bytedance.sdk.openadsdk.Zq.TKC;

class EjP implements sP {
    private static volatile EjP Sj;

    private EjP() {
    }

    @Override
    public void Sj(com.bytedance.sdk.openadsdk.Zq.sP sPVar) {
    }

    @Override
    public void Sj(com.bytedance.sdk.openadsdk.Zq.sP sPVar, boolean z10) {
    }

    public static EjP Sj() {
        if (Sj == null) {
            synchronized (EjP.class) {
                try {
                    if (Sj == null) {
                        Sj = new EjP();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }
}
