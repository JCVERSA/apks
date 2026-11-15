package com.transsion.sdk.oneid.data;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import defpackage.p6d;
import java.io.Serializable;

public class RomInfo extends OneBaseInfo implements Serializable {
    public String api;
    public String aver;
    public String build_id;
    public String build_spv;
    public String buildt;
    public String buildv;
    public String fp;
    public String gsmv;
    public String osver;

    public RomInfo(Context context) {
        this.aver = "";
        this.api = "";
        this.buildv = "";
        this.buildt = "";
        this.osver = "";
        this.build_id = "";
        this.build_spv = "";
        this.gsmv = "";
        this.fp = "";
        this.aver = Build.VERSION.RELEASE;
        this.api = "" + Build.VERSION.SDK_INT;
        try {
            this.buildv = p6d.e(context, "ro.product.build.id");
        } catch (Exception unused) {
        }
        try {
            this.buildt = p6d.e(context, "ro.system.build.date.utc");
        } catch (Exception unused2) {
        }
        try {
            String strE = p6d.e(context, "ro.tranos.version");
            this.osver = strE;
            if (TextUtils.isEmpty(strE)) {
                this.osver = p6d.e(context, "ro.os_product.version");
            }
        } catch (Exception unused3) {
        }
        try {
            this.build_id = p6d.e(context, "ro.system.build.id");
        } catch (Exception unused4) {
        }
        try {
            this.build_spv = p6d.e(context, "ro.vendor.build.security_patch");
        } catch (Exception unused5) {
        }
        try {
            this.gsmv = p6d.e(context, "gsm.version.baseband");
        } catch (Exception unused6) {
        }
        try {
            this.fp = p6d.e(context, "ro.build.fingerprint");
        } catch (Exception unused7) {
        }
    }
}
