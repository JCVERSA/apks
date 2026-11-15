package com.transsion.sdk.oneid.data;

import android.content.Context;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import com.transsion.push.PushConstants;
import com.transsion.sdk.oneid.e;
import defpackage.p6d;
import defpackage.r6d;
import defpackage.x2d;
import java.io.File;
import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.UUID;
import org.json.JSONObject;

public class GroupFpInfo extends OneBaseInfo implements Serializable {
    public DeviceInfo device;
    public UniqueIdInfo dids;
    public EnvironInfo env;
    public FingerprintInfo fp;
    public PackageInfo pkg;
    public RomInfo rom;
    public UserIdInfo user;
    public String vaid;

    public GroupFpInfo(Context context, Handler.Callback callback) {
        String strF;
        String packageName = context.getPackageName();
        try {
            this.vaid = r6d.b(context).f(PushConstants.PROVIDER_VAID);
        } catch (Exception unused) {
        }
        try {
            String strOptString = "";
            if (TextUtils.isEmpty(this.vaid)) {
                try {
                    String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
                    if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(packageName)) {
                        this.vaid = UUID.nameUUIDFromBytes((packageName + string).replaceAll("[^a-zA-Z0-9._-]", "").getBytes(StandardCharsets.UTF_8)).toString();
                    }
                } catch (Exception unused2) {
                }
                if (TextUtils.isEmpty(this.vaid)) {
                    this.vaid = UUID.randomUUID().toString();
                }
                r6d.b(context).d(PushConstants.PROVIDER_VAID, this.vaid);
            }
            try {
                File file = new File(x2d.a());
                if (context.checkCallingOrSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0 && context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                    if (file.exists() && (strF = p6d.f(file)) != null && strF.length() > 0) {
                        p6d.i("read vaid success");
                        strOptString = new JSONObject(strF).optString(packageName, "");
                    }
                    if (!TextUtils.equals(strOptString, this.vaid)) {
                        e.a(context).e(new IdChangeInfo(PushConstants.PROVIDER_VAID, strOptString, this.vaid));
                    }
                }
            } catch (Exception e) {
                p6d.m(e.getMessage());
            }
        } catch (Exception unused3) {
        }
        this.dids = new UniqueIdInfo(context, callback);
        this.user = new UserIdInfo(context);
        this.pkg = new PackageInfo(context);
        this.env = new EnvironInfo(context);
        this.device = new DeviceInfo(context);
        this.fp = new FingerprintInfo(context);
        this.rom = new RomInfo(context);
    }
}
