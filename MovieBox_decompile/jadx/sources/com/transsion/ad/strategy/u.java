package com.transsion.ad.strategy;

import com.transsion.ad.monopoly.model.MbAdPlansBean;

public final class u {

    public static final u f41195a = new u();

    private static boolean f41196b = true;

    private static long f41197c;

    private static int f41198d;

    private u() {
    }

    public final int a() {
        if (f41196b) {
            f41198d = e.f41179a.b().getInt("newUserAdShieldHour", 0);
        }
        return f41198d;
    }

    public final long b() {
        if (f41196b) {
            f41197c = e.f41179a.b().getLong("userCreateTime", 0L);
        }
        return f41197c;
    }

    public final boolean c() {
        if (f41196b) {
            e eVar = e.f41179a;
            f41197c = eVar.b().getLong("userCreateTime", 0L);
            f41198d = eVar.b().getInt("newUserAdShieldHour", 0);
        }
        f41196b = false;
        return f41198d != 0 && System.currentTimeMillis() - f41197c < (((long) f41198d) * ((long) 3600)) * ((long) 1000);
    }

    public final void d(MbAdPlansBean mbAdPlansBean) {
        Integer newUserAdShieldHour;
        Long userCreateTime;
        e eVar = e.f41179a;
        eVar.b().putLong("userCreateTime", (mbAdPlansBean == null || (userCreateTime = mbAdPlansBean.getUserCreateTime()) == null) ? 0L : userCreateTime.longValue());
        eVar.b().putInt("newUserAdShieldHour", (mbAdPlansBean == null || (newUserAdShieldHour = mbAdPlansBean.getNewUserAdShieldHour()) == null) ? 0 : newUserAdShieldHour.intValue());
        f41196b = true;
        xh.a.c(xh.a.f75336a, "NewUserShieldStrategy --> saveNewUserShieldData() --> 保存新用户屏蔽数据 --> userCreateTime = " + (mbAdPlansBean != null ? mbAdPlansBean.getUserCreateTime() : null) + ", newUserAdShieldHour = " + (mbAdPlansBean != null ? mbAdPlansBean.getNewUserAdShieldHour() : null), 0, false, 2, null);
    }
}
