package com.bytedance.sdk.openadsdk.core;

import android.content.Context;

public class TKC {
    private static volatile TKC Sj;

    private TKC() {
    }

    public static TKC Sj(Context context) {
        if (Sj == null) {
            synchronized (TKC.class) {
                try {
                    if (Sj == null) {
                        Sj = new TKC();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public String sP(String str, String str2) {
        return com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("ttopenadsdk", str, str2);
    }

    public int sP(String str, int i10) {
        return com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("ttopenadsdk", str, i10);
    }

    public Long sP(String str, long j10) {
        return Long.valueOf(com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("ttopenadsdk", str, j10));
    }

    public void Sj(String str, String str2) {
        com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("ttopenadsdk", str, str2);
    }

    public void Sj(String str, int i10) {
        com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("ttopenadsdk", str, Integer.valueOf(i10));
    }

    public void Sj(String str, long j10) {
        com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("ttopenadsdk", str, Long.valueOf(j10));
    }
}
