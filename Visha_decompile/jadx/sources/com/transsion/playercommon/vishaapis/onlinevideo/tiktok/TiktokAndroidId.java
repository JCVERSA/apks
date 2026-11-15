package com.transsion.playercommon.vishaapis.onlinevideo.tiktok;

import android.app.Application;
import android.provider.Settings;
import com.blankj.utilcode.util.Utils;
import com.transsion.utils.deviceinfo.a;
import defpackage.r0a;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0005H\u0007J\b\u0010\u0007\u001a\u00020\u0005H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/transsion/playercommon/vishaapis/onlinevideo/tiktok/TiktokAndroidId;", "", MethodDecl.initName, "()V", "cachedAndroidId", "", "get", "readAndroidId", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TiktokAndroidId {
    public static final TiktokAndroidId INSTANCE = new TiktokAndroidId();
    private static volatile String cachedAndroidId;

    private TiktokAndroidId() {
    }

    public static final String get() {
        a.C0257a c0257a = a.d;
        String strA = c0257a.a();
        if (!r0a.g(strA)) {
            return strA;
        }
        String str = cachedAndroidId;
        if (str != null) {
            return str;
        }
        synchronized (TiktokAndroidId.class) {
            String strA2 = c0257a.a();
            if (!r0a.g(strA2)) {
                return strA2;
            }
            String str2 = cachedAndroidId;
            if (str2 != null) {
                return str2;
            }
            String androidId = INSTANCE.readAndroidId();
            cachedAndroidId = androidId;
            return androidId;
        }
    }

    private final String readAndroidId() {
        String string;
        try {
            Application applicationA = Utils.a();
            return (applicationA == null || (string = Settings.Secure.getString(applicationA.getContentResolver(), "android_id")) == null) ? "" : string;
        } catch (Exception unused) {
            return "";
        }
    }
}
