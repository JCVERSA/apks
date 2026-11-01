package j0;

import android.content.pm.PackageInfo;
import android.os.Build;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import ru.zdevs.zarchiver.ZApp;
import v0.h;

public final class g {

    public static String[] f1160a;

    public static String[] a(String str, boolean z2) {
        List<PackageInfo> listO;
        boolean zK;
        int i2 = Build.VERSION.SDK_INT;
        ArrayList arrayList = null;
        if (i2 < 33 || (listO = a0.c.o()) == null) {
            return null;
        }
        boolean z3 = !z2 || i2 >= 34;
        for (PackageInfo packageInfo : listO) {
            String str2 = str + "/" + packageInfo.packageName;
            if (!z3) {
                zK = n0.e.k(str2);
            } else if (z3) {
                zK = n0.e.j(str2);
            }
            if (zK) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(packageInfo.packageName);
            }
        }
        return arrayList != null ? (String[]) arrayList.toArray(new String[0]) : new String[0];
    }

    public static ArrayList<String> b(String str, o0.a aVar) {
        if (str.startsWith("/data/app/") || str.startsWith("/apex/")) {
            ArrayList<String> arrayList = new ArrayList<>();
            String strD = a0.c.d(str);
            int length = strD.length();
            int i2 = Build.VERSION.SDK_INT < 21 ? 61 : 47;
            if (aVar.b("pm list packages -f | grep ".concat(strD))) {
                while (true) {
                    String strK = aVar.k(true);
                    if (strK == null) {
                        break;
                    }
                    if (strK.startsWith("package:")) {
                        String strSubstring = strK.substring(8);
                        if (strSubstring.startsWith(strD)) {
                            try {
                                arrayList.add(strSubstring.substring(length, strSubstring.indexOf(i2, length + 1)));
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
            return arrayList;
        }
        if (f1160a == null) {
            synchronized (g.class) {
                ZApp zApp = ZApp.f1434c;
                if (zApp != null && f1160a == null) {
                    ArrayList arrayList2 = new ArrayList();
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(zApp.getAssets().open("tree")));
                        while (bufferedReader.ready()) {
                            arrayList2.add(bufferedReader.readLine());
                        }
                        bufferedReader.close();
                    } catch (Exception unused2) {
                    }
                    f1160a = (String[]) arrayList2.toArray(new String[0]);
                }
            }
        }
        if (f1160a == null) {
            return new ArrayList<>(0);
        }
        String[] strArrH = h.h(str, '/');
        ArrayList<String> arrayList3 = new ArrayList<>();
        int i3 = 0;
        for (String str2 : f1160a) {
            if (i3 >= strArrH.length) {
                if (i3 > 0 && str2.charAt(i3 - 1) == '/') {
                    break;
                }
                if (str2.charAt(i3) == '/') {
                    arrayList3.add(str2.substring(i3 + 1, str2.length() - 1));
                }
            } else if (str2.charAt(i3) == '/') {
                String str3 = strArrH[i3];
                if ((str2.length() - i3) - 2 == str3.length()) {
                    int i4 = i3 + 1;
                    if (str2.startsWith(str3, i4) && str2.charAt(str2.length() - 1) == '/') {
                        i3 = i4;
                    }
                }
            }
        }
        return arrayList3;
    }
}
