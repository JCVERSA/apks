package cn.com.custommma.mobile.tracking.util;

import android.content.Context;
import android.text.TextUtils;
import defpackage.asc;
import defpackage.kf1;
import defpackage.na1;
import defpackage.ng9;
import defpackage.qx8;
import defpackage.rd7;
import defpackage.rq5;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;

public abstract class SdkConfigUpdateUtil {
    public static qx8 a = null;
    public static String b = null;
    public static boolean c = false;

    public static boolean e(Map map, String str) {
        try {
            Long l = (Long) map.get(str);
            if (l != null) {
                return System.currentTimeMillis() - l.longValue() >= 86400000;
            }
            map.put(str, Long.valueOf(System.currentTimeMillis()));
            return true;
        } catch (Exception unused) {
            return true;
        }
    }

    public static boolean f(Context context) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jA = ng9.a(context, "cn.com.mma.mobile.tracking.mgmi_ssp_other", "mgmi_ssp_updateTime");
            if (jCurrentTimeMillis >= jA) {
                return (na1.i(context, 1) && ((jCurrentTimeMillis - jA) > 86400000L ? 1 : ((jCurrentTimeMillis - jA) == 86400000L ? 0 : -1)) >= 0) || (na1.i(context, 0) && ((jCurrentTimeMillis - jA) > 259200000L ? 1 : ((jCurrentTimeMillis - jA) == 259200000L ? 0 : -1)) >= 0);
            }
            ng9.e(context, "cn.com.mma.mobile.tracking.mgmi_ssp_other", "mgmi_ssp_updateTime", jCurrentTimeMillis);
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    public static qx8 g(Context context) throws Throwable {
        qx8 qx8Var = a;
        if (qx8Var == null || qx8Var.b == null) {
            qx8 qx8VarH = h(context);
            a = qx8VarH;
            if (qx8VarH == null && !TextUtils.isEmpty(b)) {
                j(context, b);
            }
        }
        return a;
    }

    public static qx8 h(Context context) throws Throwable {
        InputStream inputStream;
        InputStream byteArrayInputStream;
        qx8 qx8VarA;
        try {
            String strD = ng9.d(context, "cn.com.mma.mobile.tracking.mgmi_ssp_sdkconfig", "mgmi_ssp_trackingConfig");
            try {
                byteArrayInputStream = !TextUtils.isEmpty(strD) ? new ByteArrayInputStream(strD.getBytes()) : context.getAssets().open("ssp_mma_sdk_config.xml");
                if (byteArrayInputStream != null) {
                    try {
                        try {
                            qx8VarA = asc.a(byteArrayInputStream);
                            try {
                                i(qx8VarA);
                            } catch (Exception unused) {
                                if (byteArrayInputStream != null) {
                                }
                                return qx8VarA;
                            }
                        } catch (Throwable th) {
                            inputStream = byteArrayInputStream;
                            th = th;
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            throw th;
                        }
                    } catch (Exception unused2) {
                        qx8VarA = null;
                    }
                } else {
                    qx8VarA = null;
                }
                if (byteArrayInputStream != null) {
                    byteArrayInputStream.close();
                }
            } catch (Exception unused3) {
                byteArrayInputStream = null;
                qx8VarA = null;
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
            }
            return qx8VarA;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void i(qx8 qx8Var) {
        if (qx8Var != null) {
            try {
                rd7 rd7Var = qx8Var.a;
                if (rd7Var != null) {
                    if (!TextUtils.isEmpty(rd7Var.a)) {
                        kf1.a = Integer.parseInt(qx8Var.a.a);
                    }
                    if (!TextUtils.isEmpty(qx8Var.a.b)) {
                        kf1.b = Integer.parseInt(qx8Var.a.b);
                    }
                    if (TextUtils.isEmpty(qx8Var.a.c)) {
                        return;
                    }
                    kf1.c = Integer.parseInt(qx8Var.a.c);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static synchronized void j(final Context context, final String str) {
        if (c) {
            return;
        }
        if (!TextUtils.isEmpty(str) && f(context)) {
            b = str;
            c = true;
            new Thread(new Runnable() {
                @Override
                public void run() {
                    byte[] bArrC;
                    try {
                        try {
                            if (DeviceInfoUtil.w(context) && (bArrC = a.b().c(str)) != null) {
                                qx8 unused = SdkConfigUpdateUtil.a = asc.a(new ByteArrayInputStream(bArrC));
                                if (SdkConfigUpdateUtil.a != null && SdkConfigUpdateUtil.a.b != null && SdkConfigUpdateUtil.a.b.size() > 0) {
                                    String str2 = new String(bArrC);
                                    if (!TextUtils.isEmpty(str2)) {
                                        ng9.g(context, "cn.com.mma.mobile.tracking.mgmi_ssp_sdkconfig", "mgmi_ssp_trackingConfig", str2);
                                        ng9.e(context, "cn.com.mma.mobile.tracking.mgmi_ssp_other", "mgmi_ssp_updateTime", System.currentTimeMillis());
                                        rq5.a("Successful update sdkconfig files");
                                    }
                                    SdkConfigUpdateUtil.i(SdkConfigUpdateUtil.a);
                                }
                            }
                        } catch (Exception e) {
                            rq5.d("Online update sdkconfig failed!:" + e.getMessage());
                        }
                    } finally {
                        boolean unused2 = SdkConfigUpdateUtil.c = false;
                    }
                }
            }).start();
        }
    }
}
