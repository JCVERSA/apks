package com.transsion.dbdata.markpoint;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import androidx.core.content.ContextCompat;
import defpackage.db3;
import defpackage.hv0;
import defpackage.i81;
import defpackage.q15;
import defpackage.se;
import defpackage.u15;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.random.Random;

public final class MarkFileTransferInfo {
    public static String b;
    public static PermissionType d;
    public static long e;
    public static Integer f;
    public static final MarkFileTransferInfo a = new MarkFileTransferInfo();
    public static String c = "vd_more";

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\f\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bj\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\r"}, d2 = {"Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;", "", "permission", "", MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "NOTIFICATION", "NEARBY", "BLUETOOTH", "LOCATION", "getPermission", "()Ljava/lang/String;", "getResult", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum PermissionType {
        NOTIFICATION("notification"),
        NEARBY("nearby"),
        BLUETOOTH("bluetooth"),
        LOCATION("location");

        private static final db3 $ENTRIES = kotlin.enums.a.a(values());
        private final String permission;

        PermissionType(String str) {
            this.permission = str;
        }

        public static db3 getEntries() {
            return $ENTRIES;
        }

        public final String getPermission() {
            return this.permission;
        }

        public final String getResult() {
            Application applicationA = se.a();
            String str = this.permission;
            boolean zI = false;
            switch (str.hashCode()) {
                case -1049482625:
                    if (str.equals("nearby") && Build.VERSION.SDK_INT >= 33) {
                        MarkFileTransferInfo markFileTransferInfo = MarkFileTransferInfo.a;
                        y45.g(applicationA);
                        zI = markFileTransferInfo.i(applicationA);
                    }
                    break;
                case 595233003:
                    if (str.equals("notification")) {
                        MarkFileTransferInfo markFileTransferInfo2 = MarkFileTransferInfo.a;
                        y45.g(applicationA);
                        zI = markFileTransferInfo2.j(applicationA);
                    }
                    break;
                case 1901043637:
                    if (str.equals("location")) {
                        MarkFileTransferInfo markFileTransferInfo3 = MarkFileTransferInfo.a;
                        y45.g(applicationA);
                        zI = markFileTransferInfo3.h(applicationA);
                    }
                    break;
                case 1968882350:
                    str.equals("bluetooth");
                    break;
            }
            return zI ? "1" : "0";
        }
    }

    public final String a() {
        return com.transsion.utils.deviceinfo.a.d.a() + System.currentTimeMillis() + b();
    }

    public final String b() {
        List listJ0 = i81.J0(i81.H0(new hv0('A', 'Z'), new hv0('a', 'z')), new hv0('0', '9'));
        u15 u15Var = new u15(1, 6);
        ArrayList arrayList = new ArrayList(z71.v(u15Var, 10));
        Iterator it = u15Var.iterator();
        while (it.hasNext()) {
            ((q15) it).nextInt();
            Character ch = (Character) i81.L0(listJ0, Random.Default);
            ch.charValue();
            arrayList.add(ch);
        }
        return i81.y0(arrayList, "", null, null, 0, null, null, 62, null);
    }

    public final Integer c() {
        return f;
    }

    public final String d() {
        return c;
    }

    public final String e() {
        String str = b;
        if (str != null) {
            return str;
        }
        String strA = a();
        b = strA;
        return strA;
    }

    public final PermissionType f() {
        return d;
    }

    public final long g() {
        return e;
    }

    public final boolean h(Context context) {
        y45.j(context, "mContext");
        return ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    public final boolean i(Context context) {
        y45.j(context, "mContext");
        return ContextCompat.checkSelfPermission(context, "android.permission.NEARBY_WIFI_DEVICES") == 0;
    }

    public final boolean j(Context context) {
        y45.j(context, "context");
        return ContextCompat.checkSelfPermission(context, "android.permission.POST_NOTIFICATIONS") == 0;
    }

    public final void k() {
        b = a();
    }

    public final void l(Integer num) {
        f = num;
    }

    public final void m(String str) {
        y45.j(str, "from");
        c = str;
        k();
    }

    public final void n(PermissionType permissionType) {
        d = permissionType;
        if (permissionType != null) {
            a.a.m(permissionType.getPermission());
            e = System.currentTimeMillis();
        }
    }
}
