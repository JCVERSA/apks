package com.mgadplus.permission;

import android.annotation.TargetApi;
import android.app.Fragment;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.transsion.playercommon.activities.BaseActivity;
import defpackage.d9d;
import defpackage.xad;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class PermissionRequestFragment extends Fragment implements Runnable {
    private int a;
    private d9d b;
    private HashMap<String, com.mgadplus.permission.b> c = new HashMap<>();
    private b d = new b();
    private boolean e;

    public static class b {
        public static volatile int a;

        public b() {
        }

        public synchronized int a() {
            int i;
            i = a;
            a = i + 1;
            return i;
        }
    }

    @TargetApi(23)
    private void a() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, com.mgadplus.permission.b> entry : this.c.entrySet()) {
            if (entry.getValue() == com.mgadplus.permission.b.DENIED) {
                arrayList.add(entry.getKey());
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Log.i("EasyPermission", "需要申请的权限：" + ((String) it.next()));
        }
        if (arrayList.isEmpty()) {
            Log.i("EasyPermission", "没有需要申请的权限，直接回调");
        } else {
            requestPermissions((String[]) arrayList.toArray(new String[arrayList.size()]), this.a);
        }
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.a = this.d.a();
        if ((!this.c.containsKey("android.permission.REQUEST_INSTALL_PACKAGES") || this.c.get("android.permission.REQUEST_INSTALL_PACKAGES") != com.mgadplus.permission.b.DENIED) && (!this.c.containsKey(BaseActivity.PERMISSION_ALERT_WINDOW) || this.c.get(BaseActivity.PERMISSION_ALERT_WINDOW) != com.mgadplus.permission.b.DENIED)) {
            a();
            return;
        }
        if (this.c.containsKey("android.permission.REQUEST_INSTALL_PACKAGES")) {
            startActivityForResult(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + getActivity().getPackageName())), this.a);
        }
        if (this.c.containsKey(BaseActivity.PERMISSION_ALERT_WINDOW)) {
            startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getActivity().getPackageName())), this.a);
        }
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.e || i != this.a) {
            return;
        }
        this.e = true;
        getActivity().getWindow().getDecorView().postDelayed(this, 500L);
    }

    @Override
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != this.a) {
            Log.i("EasyPermission", "requestCode不一致，不处理");
            return;
        }
        for (int i2 = 0; i2 < strArr.length; i2++) {
            Log.i("EasyPermission", "onRequestPermissionsResult返回状态，权限：" + strArr[i2] + "  是否授权：" + iArr[i2]);
            String str = strArr[i2];
            if ("android.permission.REQUEST_INSTALL_PACKAGES".equals(str)) {
                if (xad.b(getActivity().getApplicationContext())) {
                    this.c.put(str, com.mgadplus.permission.b.GRANT);
                } else {
                    this.c.put(str, com.mgadplus.permission.b.DENIED);
                }
            } else if (!BaseActivity.PERMISSION_ALERT_WINDOW.equals(str)) {
                this.c.put(strArr[i2], iArr[i2] == 0 ? com.mgadplus.permission.b.GRANT : com.mgadplus.permission.b.DENIED);
            } else if (xad.d(getActivity().getApplicationContext())) {
                this.c.put(str, com.mgadplus.permission.b.GRANT);
            } else {
                this.c.put(str, com.mgadplus.permission.b.DENIED);
            }
        }
        Set<Map.Entry<String, com.mgadplus.permission.b>> setEntrySet = this.c.entrySet();
        Log.i("EasyPermission", "打印最终返回结果：");
        for (Map.Entry<String, com.mgadplus.permission.b> entry : setEntrySet) {
            Log.i("EasyPermission", "权限：" + entry.getKey() + "  状态：" + entry.getValue());
        }
        getFragmentManager().beginTransaction().remove(this).commit();
    }

    @Override
    public void run() {
        a();
    }
}
