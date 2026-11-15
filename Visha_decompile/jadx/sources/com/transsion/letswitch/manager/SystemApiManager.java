package com.transsion.letswitch.manager;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.hubsdk.api.app.TranActivityManager;
import defpackage.se;
import defpackage.y45;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/transsion/letswitch/manager/SystemApiManager;", "", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "", "packageName", "", "getAppRuntimeDangerousPermissions", "(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;", "permission", "Lzfb;", "setSinglePermission", "(Ljava/lang/String;Ljava/lang/String;)V", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SystemApiManager {
    public static final SystemApiManager INSTANCE = new SystemApiManager();
    private static final String TAG = "SystemApiManager";

    private SystemApiManager() {
    }

    public final List<String> getAppRuntimeDangerousPermissions(Context context, String packageName) {
        y45.j(context, "context");
        y45.j(packageName, "packageName");
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = context.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 4096);
            String[] strArr = packageInfo.requestedPermissions;
            int[] iArr = packageInfo.requestedPermissionsFlags;
            if (strArr != null && iArr != null && strArr.length == iArr.length) {
                int length = iArr.length;
                for (int i = 0; i < length; i++) {
                    try {
                        PermissionInfo permissionInfo = packageManager.getPermissionInfo(strArr[i], 0);
                        if ((iArr[i] & 2) == 2 && (permissionInfo.protectionLevel & 1) == 1) {
                            arrayList.add(strArr[i]);
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        e.printStackTrace();
                    }
                }
            }
        } catch (Exception e2) {
            Log.i(TAG, "getAppRuntimeDangerousPermissions error: " + e2.getMessage());
        }
        return arrayList;
    }

    public final void setSinglePermission(String packageName, String permission) {
        y45.j(packageName, "packageName");
        y45.j(permission, "permission");
        if (TextUtils.isEmpty(permission)) {
            return;
        }
        try {
            Method method = PackageManager.class.getMethod("grantRuntimePermission", String.class, String.class, UserHandle.class);
            method.setAccessible(true);
            method.invoke(se.a().getPackageManager(), packageName, permission, UserHandle.getUserHandleForUid(new TranActivityManager().getCurrentUser()));
        } catch (ReflectiveOperationException e) {
            Log.i(TAG, "setSinglePermission: " + e.getMessage());
        }
    }
}
