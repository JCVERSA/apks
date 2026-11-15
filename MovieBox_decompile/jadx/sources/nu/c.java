package nu;

import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.upgradesdk.bean.RequestBean;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import javax.crypto.spec.IvParameterSpec;
import kotlin.jvm.internal.Intrinsics;
import qu.f;
import tu.h;
import tu.i;
import tu.n;

public abstract class c {

    public static String f67372a = "";

    public static String f67373b;

    /* JADX WARN: Code duplicated, block: B:120:0x01e9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:83:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:87:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:89:0x01e4  */
    public static RequestBean a() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String[] strArr;
        StringBuilder sb2;
        int length;
        int i10;
        String str7;
        Application application;
        String str8;
        String str9;
        NetworkInfo.State state;
        qu.d dVar = f.f70259o;
        b bVarE = dVar.a().e();
        long jCurrentTimeMillis = System.currentTimeMillis();
        IvParameterSpec ivParameterSpec = tu.c.f72836a;
        String strD = tu.c.d(n.g() + "Transsion" + jCurrentTimeMillis);
        if (TextUtils.isEmpty(n.f72851b)) {
            h hVar = i.f72841b;
            Application application2 = pu.a.f69263a;
            if (application2 == null) {
                Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                application2 = null;
            }
            n.f72851b = hVar.a(application2).a("KV_UPGRADE_GAID_ENCRYPT_VALUE", "");
        }
        String str10 = n.f72851b;
        String str11 = bVarE.f67359a;
        long j10 = bVarE.f67362d;
        String str12 = bVarE.f67363e;
        String str13 = bVarE.f67366h;
        String str14 = bVarE.f67367i;
        String str15 = bVarE.f67369k;
        String str16 = bVarE.f67370l;
        String str17 = bVarE.f67365g;
        if (TextUtils.isEmpty(f67372a)) {
            String packageName = dVar.a().e().f67359a;
            Intrinsics.h(packageName, "packageName");
            StringBuffer stringBuffer = new StringBuffer();
            try {
                Application application3 = pu.a.f69263a;
                if (application3 == null) {
                    Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                    application3 = null;
                }
                try {
                    PackageManager packageManager = application3.getPackageManager();
                    str = "";
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 64);
                        Intrinsics.g(packageInfo, "getPackageInfo(...)");
                        byte[] byteArray = packageInfo.signatures[0].toByteArray();
                        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                        messageDigest.reset();
                        messageDigest.update(byteArray);
                        byte[] bArrDigest = messageDigest.digest();
                        int length2 = bArrDigest.length;
                        int i11 = 0;
                        while (i11 < length2) {
                            int i12 = length2;
                            String hexString = Integer.toHexString(bArrDigest[i11] & 255);
                            str3 = str17;
                            try {
                                Intrinsics.g(hexString, "toHexString(...)");
                                String upperCase = hexString.toUpperCase(Locale.ROOT);
                                Intrinsics.g(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                                str2 = str16;
                                if (upperCase.length() == 1) {
                                    try {
                                        stringBuffer.append("0");
                                    } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException unused) {
                                    }
                                }
                                stringBuffer.append(upperCase);
                                if (i11 < bArrDigest.length - 1) {
                                    stringBuffer.append(":");
                                }
                                i11++;
                                length2 = i12;
                                str17 = str3;
                                str16 = str2;
                            } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException unused2) {
                                str2 = str16;
                            }
                        }
                    } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException unused3) {
                    }
                } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException unused4) {
                    str = "";
                }
            } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException unused5) {
                str13 = str13;
            }
            str2 = str16;
            str3 = str17;
            String string = stringBuffer.toString();
            Intrinsics.g(string, "toString(...)");
            f67372a = string;
            str4 = string;
        } else {
            str13 = str13;
            str = "";
            str2 = str16;
            str3 = str17;
            str4 = f67372a;
        }
        String str18 = bVarE.f67364f;
        String str19 = bVarE.f67371m;
        Application application4 = pu.a.f69263a;
        if (application4 == null) {
            Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
            application4 = null;
        }
        try {
            try {
                Object systemService = application4.getApplicationContext().getSystemService("connectivity");
                Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
                NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
                if (activeNetworkInfo != null) {
                    activeNetworkInfo.isAvailable();
                }
                if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                    if (networkInfo != null) {
                        NetworkInfo.State state2 = networkInfo.getState();
                        str5 = str19;
                        try {
                            str9 = (state2 == NetworkInfo.State.CONNECTED || state2 == NetworkInfo.State.CONNECTING) ? NetworkUtil.NETWORK_TYPE_WIFI : "NoNet";
                            if (networkInfo2 == null && (state = networkInfo2.getState()) != null && (state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING)) {
                                switch (activeNetworkInfo.getSubtype()) {
                                    case 1:
                                    case 2:
                                    case 4:
                                    case 7:
                                    case 11:
                                    case 16:
                                        str8 = NetworkUtil.NETWORK_TYPE_2G;
                                        break;
                                    case 3:
                                    case 5:
                                    case 6:
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 12:
                                    case 14:
                                    case 15:
                                    case 17:
                                        str8 = NetworkUtil.NETWORK_TYPE_3G;
                                        break;
                                    case 13:
                                    case 18:
                                        str8 = NetworkUtil.NETWORK_TYPE_4G;
                                        break;
                                    default:
                                        str8 = "GNET";
                                        break;
                                }
                            } else {
                                str6 = str9;
                            }
                        } catch (Exception unused6) {
                            str6 = "NoNet";
                        }
                        String str20 = bVarE.f67369k;
                        if (f67373b == null) {
                            application = pu.a.f69263a;
                            if (application == null) {
                                Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                                application = null;
                            }
                            f67373b = Settings.System.getString(application.getContentResolver(), "android_id");
                        }
                        String str21 = f67373b;
                        int i13 = Build.VERSION.SDK_INT;
                        strArr = Build.SUPPORTED_ABIS;
                        sb2 = new StringBuilder();
                        length = strArr.length;
                        for (i10 = 0; i10 < length; i10++) {
                            sb2.append(strArr[i10]);
                            if (i10 < strArr.length - 1) {
                                sb2.append(",");
                            }
                        }
                        String string2 = sb2.toString();
                        Intrinsics.g(string2, "toString(...)");
                        str7 = yj.a.a().getPackageManager().getPackageInfo(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, 0).versionName;
                        Intrinsics.e(str7);
                        return new RequestBean(str10, str11, j10, str12, str13, str14, str15, str2, str3, str4, str18, str5, str6, str20, "Transsion", jCurrentTimeMillis, strD, str21, i13, string2, str7, n.i());
                    }
                    str5 = str19;
                    if (networkInfo2 == null) {
                    }
                    str6 = str9;
                    String str22 = bVarE.f67369k;
                    if (f67373b == null) {
                        application = pu.a.f69263a;
                        if (application == null) {
                            Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                            application = null;
                        }
                        f67373b = Settings.System.getString(application.getContentResolver(), "android_id");
                    }
                    String str23 = f67373b;
                    int i14 = Build.VERSION.SDK_INT;
                    strArr = Build.SUPPORTED_ABIS;
                    sb2 = new StringBuilder();
                    length = strArr.length;
                    while (i10 < length) {
                        sb2.append(strArr[i10]);
                        if (i10 < strArr.length - 1) {
                            sb2.append(",");
                        }
                    }
                    String string3 = sb2.toString();
                    Intrinsics.g(string3, "toString(...)");
                    str7 = yj.a.a().getPackageManager().getPackageInfo(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, 0).versionName;
                    Intrinsics.e(str7);
                    return new RequestBean(str10, str11, j10, str12, str13, str14, str15, str2, str3, str4, str18, str5, str6, str22, "Transsion", jCurrentTimeMillis, strD, str23, i14, string3, str7, n.i());
                }
                str5 = str19;
                str8 = "NoNet";
                str6 = str8;
            } catch (Exception unused7) {
                str5 = str19;
            }
            str7 = yj.a.a().getPackageManager().getPackageInfo(MiniAppIpcConfig.PALM_STORE_PACKAGE_NAME, 0).versionName;
            Intrinsics.e(str7);
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            str7 = str;
        }
        String str24 = bVarE.f67369k;
        if (f67373b == null) {
            application = pu.a.f69263a;
            if (application == null) {
                Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                application = null;
            }
            f67373b = Settings.System.getString(application.getContentResolver(), "android_id");
        }
        String str25 = f67373b;
        int i15 = Build.VERSION.SDK_INT;
        strArr = Build.SUPPORTED_ABIS;
        sb2 = new StringBuilder();
        length = strArr.length;
        while (i10 < length) {
            sb2.append(strArr[i10]);
            if (i10 < strArr.length - 1) {
                sb2.append(",");
            }
        }
        String string4 = sb2.toString();
        Intrinsics.g(string4, "toString(...)");
        return new RequestBean(str10, str11, j10, str12, str13, str14, str15, str2, str3, str4, str18, str5, str6, str24, "Transsion", jCurrentTimeMillis, strD, str25, i15, string4, str7, n.i());
    }
}
