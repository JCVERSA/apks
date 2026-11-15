package com.transsion.fission;

import com.tencent.mmkv.MMKV;

public final class l {

    public static final l f42971a = new l();

    private static final MMKV f42972b = MMKV.I("one_room_fission");

    private l() {
    }

    public final String a() {
        MMKV mmkv = f42972b;
        if (mmkv != null) {
            return mmkv.getString("KEY_FISSION_INVITATION_CODE", null);
        }
        return null;
    }

    public final String b() {
        MMKV mmkv = f42972b;
        if (mmkv != null) {
            return mmkv.getString("KEY_FISSION_INVITE_REG", null);
        }
        return null;
    }

    public final void c(String str) {
        MMKV mmkv = f42972b;
        if (mmkv != null) {
            mmkv.putString("KEY_FISSION_INVITATION_CODE", str);
        }
    }
}
