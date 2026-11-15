package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.google.gson.Gson;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.core.deviceinfo.DeviceInfo;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.model.data.CloudConfigRes;
import java.util.Calendar;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class jo7 {
    public static volatile jo7 c;
    public OkHttpClient a;
    public Context b;

    public class a implements Interceptor {
        public a() {
        }

        @Override
        public Response intercept(Interceptor.Chain chain) {
            String str;
            String strB;
            String str2;
            String string;
            String string2;
            String str3;
            String string3;
            String simCountryIso;
            String string4;
            Request request = chain.request();
            Request.Builder builderNewBuilder = request.newBuilder();
            HttpUrl httpUrlBuild = request.url().newBuilder().build();
            String strM = ao7.a.a.m(jo7.this.b);
            if (TextUtils.isEmpty(strM)) {
                Log.d("com.palm.id.log", "OkHttp addHeader token is empty");
            }
            Request.Builder builderAddHeader = builderNewBuilder.addHeader("Req-ID", UUID.randomUUID().toString()).addHeader("Client-ID", go7.a.a.a).addHeader("Device-ID", mp7.a(jo7.this.b));
            Context context = jo7.this.b;
            try {
                str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).packageName;
            } catch (Exception e) {
                e.printStackTrace();
                str = null;
            }
            HashMap map = new HashMap();
            map.put("gaid", DeviceInfo.d());
            Resources resources = context.getResources();
            map.put("lang", resources != null ? resources.getString(R.string.xn_language) : "");
            map.put("timezone", String.valueOf(Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis()) / 3600000));
            map.put("osType", "1");
            map.put("pkgName", str);
            map.put("channel", "palmAppOrSdk");
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0);
            String string5 = sharedPreferences.getString("pkg_sign", "");
            if (TextUtils.isEmpty(string5)) {
                strB = mp7.b(context, str);
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putString("pkg_sign", strB);
                editorEdit.apply();
            } else {
                strB = string5;
            }
            map.put("pkgSign", strB);
            try {
                str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
                str2 = "";
            }
            map.put("version", str2);
            SharedPreferences sharedPreferences2 = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0);
            String string6 = sharedPreferences2.getString("device_no", null);
            if (string6 == null || "".equals(string6)) {
                String string7 = UUID.randomUUID().toString();
                SharedPreferences.Editor editorEdit2 = sharedPreferences2.edit();
                editorEdit2.putString("device_no", string7);
                editorEdit2.apply();
                string = string7;
            } else {
                string = sharedPreferences2.getString("device_no", null);
            }
            map.put("deviceNo", string);
            map.put("deviceModel", Build.MODEL + "-" + Build.BRAND);
            map.put("isNotXuanNiao", Boolean.TRUE);
            map.put("oneId", AthenaAnalytics.F(context));
            Context applicationContext = context.getApplicationContext();
            map.put("privacyVersion", applicationContext.getSharedPreferences("AccountPrefs", 0).getString("privacy_version", applicationContext.getString(R.string.xn_privacy_version)));
            Context applicationContext2 = context.getApplicationContext();
            map.put("userAgreementVersion", applicationContext2.getSharedPreferences("AccountPrefs", 0).getString("user_agreement_version", applicationContext2.getString(R.string.xn_user_agreement_version)));
            try {
                SharedPreferences sharedPreferences3 = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0);
                string2 = sharedPreferences3.getString("dcs_cpuid", null);
                if (TextUtils.isEmpty(string2)) {
                    Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.transsion.dataservice.provider/property"), null, null, new String[]{"oneid"}, null);
                    if (cursorQuery != null && cursorQuery.moveToNext()) {
                        String string8 = cursorQuery.getString(0);
                        if (!TextUtils.isEmpty(string8)) {
                            SharedPreferences.Editor editorEdit3 = sharedPreferences3.edit();
                            editorEdit3.putString("dcs_cpuid", string8);
                            editorEdit3.apply();
                            string2 = string8;
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    string2 = null;
                }
            } catch (Exception e3) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e3));
            }
            map.put("cpuId", string2);
            try {
                SharedPreferences sharedPreferences4 = context.getApplicationContext().getSharedPreferences("AccountPrefs", 0);
                str3 = null;
                try {
                    string3 = sharedPreferences4.getString("dcs_imei", null);
                    if (TextUtils.isEmpty(string3)) {
                        Cursor cursorQuery2 = context.getContentResolver().query(Uri.parse("content://com.transsion.dataservice.provider/property"), null, null, new String[]{"iid"}, null);
                        if (cursorQuery2 != null && cursorQuery2.moveToNext()) {
                            String string9 = cursorQuery2.getString(0);
                            if (!TextUtils.isEmpty(string9)) {
                                SharedPreferences.Editor editorEdit4 = sharedPreferences4.edit();
                                editorEdit4.putString("dcs_imei", string9);
                                editorEdit4.apply();
                                string3 = string9;
                            }
                        }
                        if (cursorQuery2 != null) {
                            cursorQuery2.close();
                        }
                        string3 = str3;
                    }
                } catch (Exception e4) {
                    e = e4;
                    Log.d("com.palm.id.log", Log.getStackTraceString(e));
                }
            } catch (Exception e5) {
                e = e5;
                str3 = null;
            }
            map.put(DownloadFacadeEnum.USER_IMEI, string3);
            map.put("androidVersion", Build.VERSION.RELEASE);
            try {
                simCountryIso = ((TelephonyManager) context.getSystemService("phone")).getSimCountryIso();
            } catch (Exception unused) {
                simCountryIso = str3;
            }
            map.put("countryCode", simCountryIso);
            map.put("buildModel", Build.MODEL);
            map.put("buildBrand", Build.BRAND);
            try {
                string4 = Settings.Global.getString(context.getContentResolver(), "device_name");
            } catch (Exception unused2) {
                string4 = str3;
            }
            if (TextUtils.isEmpty(string4) || TextUtils.equals(string4, "Android")) {
                string4 = Build.MODEL;
            }
            if (TextUtils.isEmpty(string4)) {
                string4 = "unknown";
            }
            map.put("deviceName", string4);
            map.put("deviceRiskTypes", "");
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                if (packageInfo != null) {
                    map.put("appInstallTime", Long.valueOf(packageInfo.firstInstallTime));
                    map.put("appUpdateTime", Long.valueOf(packageInfo.lastUpdateTime));
                }
            } catch (Exception unused3) {
            }
            return chain.proceed(builderAddHeader.addHeader("Client-Data", Base64.encodeToString(new Gson().toJson(map).getBytes(), 2)).addHeader(RtspHeaders.TIMESTAMP, String.valueOf(System.currentTimeMillis())).addHeader(RtspHeaders.AUTHORIZATION, "Bearer " + strM).addHeader("Version-ID", CloudConfigRes.getVersion(jo7.this.b)).url(httpUrlBuild).build());
        }
    }

    public jo7(Context context) {
        this.b = context.getApplicationContext();
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder.connectTimeout(30L, timeUnit).readTimeout(30L, timeUnit).addInterceptor(a());
        this.a = builder.build();
    }

    public static OkHttpClient b(Context context) {
        if (c == null) {
            synchronized (jo7.class) {
                try {
                    if (c == null) {
                        c = new jo7(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        jo7 jo7Var = c;
        jo7Var.getClass();
        jo7Var.b = context.getApplicationContext();
        return c.a;
    }

    public final Interceptor a() {
        return new a();
    }
}
