package com.mbridge.msdk.foundation.controller.authoritycontroller;

import android.text.TextUtils;

public class a {

    protected int f34183a;

    protected int f34184b;

    protected int f34185c;

    protected int f34186d;

    protected void a(int i10) {
        this.f34183a = i10;
        this.f34184b = i10;
        this.f34185c = i10;
    }

    public void authDeviceIdStatus(int i10) {
        this.f34184b = i10;
    }

    public void authGenDataStatus(int i10) {
        this.f34183a = i10;
    }

    public void authOtherDataStatus(int i10) {
        this.f34186d = i10;
    }

    public void authSerialIdStatus(int i10) {
        this.f34185c = i10;
    }

    public int getAuthDeviceIdStatus() {
        return this.f34184b;
    }

    public int getAuthGenDataStatus() {
        return this.f34183a;
    }

    public int getAuthSerialIdStatus() {
        return this.f34185c;
    }

    public int getOtherDataStatus() {
        return this.f34186d;
    }

    public int getStatusByKey(String str) {
        if (!TextUtils.isEmpty(str)) {
            str.hashCode();
            switch (str) {
                case "authority_serial_id":
                    return this.f34185c;
                case "authority_device_id":
                    return this.f34184b;
                case "authority_general_data":
                    return this.f34183a;
                case "authority_other":
                    return this.f34186d;
            }
        }
        return 1;
    }
}
