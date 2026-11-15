package com.hunantv.media.player.utils;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.view.Window;
import com.hunantv.media.player.helper.BuildHelper;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.utils.NumericUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Field;

public class SystemUtil {
    public static final String HW_EMUI_CMD = "getprop ro.build.hw_emui_api_level";
    public static final String HW_MAGIC_CMD = "getprop ro.build.magic_api_level";
    private static final int ROOT_ERR = 2;
    private static final int ROOT_NO = 0;
    private static final int ROOT_NULL = -1;
    private static final int ROOT_YES = 1;
    private static final String TAG = "SystemUtil";
    private static final int VALUE_NOT_GET = -1;
    public static int sHwEmuiAPILevel = -1;
    private static String sPrimaryCpuAbi = null;
    private static int sRoot1 = -1;

    private static boolean checkRootMethod1() {
        return false;
    }

    private static boolean checkRootMethod2() {
        return false;
    }

    private static boolean checkRootMethod3() {
        return false;
    }

    public static int getHwEmuiAPILevel() throws Throwable {
        if (sHwEmuiAPILevel == -1) {
            String systemProperty = getSystemProperty("ro.build.magic_api_level");
            if (StringUtil.isEmpty(systemProperty)) {
                systemProperty = getSystemProperty("ro.build.hw_emui_api_level");
            }
            DebugLog.e(TAG, "getHwEmuiAPILevel str" + systemProperty);
            sHwEmuiAPILevel = NumericUtil.parseInt(systemProperty, 0);
            DebugLog.e(TAG, "getHwEmuiAPILevel int" + sHwEmuiAPILevel);
        }
        return sHwEmuiAPILevel;
    }

    public static String getPrimaryCpuAbi(Context context) {
        String str = sPrimaryCpuAbi;
        if (str != null) {
            return str;
        }
        try {
            if (BuildHelper.isApi21_LollipopOrLater()) {
                if (context == null) {
                    String str2 = Build.CPU_ABI;
                    sPrimaryCpuAbi = str2;
                    return str2;
                }
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                Field declaredField = applicationInfo.getClass().getDeclaredField("primaryCpuAbi");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(applicationInfo);
                if ((obj instanceof String) && !"".equals(((String) obj).trim())) {
                    String str3 = (String) obj;
                    sPrimaryCpuAbi = str3;
                    return str3;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        String str4 = Build.CPU_ABI;
        sPrimaryCpuAbi = str4;
        return str4;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x005e: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:25:0x005e */
    public static String getSystemProperty(String str) throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        String line;
        String str2 = "getprop " + str;
        BufferedReader bufferedReader3 = null;
        try {
            try {
                if (HW_MAGIC_CMD.equals(str2) || HW_EMUI_CMD.equals(str2)) {
                    bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(str2).getInputStream()), 1024);
                    try {
                        line = bufferedReader.readLine();
                        bufferedReader.close();
                        bufferedReader3 = bufferedReader;
                    } catch (IOException e) {
                        e = e;
                        DebugLog.e(TAG, "IOException Unable to read sysprop" + str, e);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e2) {
                                DebugLog.e(TAG, "Exception while closing InputStream", e2);
                            }
                        }
                        return null;
                    } catch (Exception e3) {
                        e = e3;
                        DebugLog.e(TAG, "Exception Unable to read sysprop " + str, e);
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e4) {
                                DebugLog.e(TAG, "Exception while closing InputStream", e4);
                            }
                        }
                        return null;
                    }
                } else {
                    line = null;
                }
                if (bufferedReader3 != null) {
                    try {
                        bufferedReader3.close();
                    } catch (IOException e5) {
                        DebugLog.e(TAG, "Exception while closing InputStream", e5);
                    }
                }
                return line;
            } catch (Throwable th) {
                th = th;
                bufferedReader3 = bufferedReader2;
                if (bufferedReader3 != null) {
                    try {
                        bufferedReader3.close();
                    } catch (IOException e6) {
                        DebugLog.e(TAG, "Exception while closing InputStream", e6);
                    }
                }
                throw th;
            }
        } catch (IOException e7) {
            e = e7;
            bufferedReader = null;
        } catch (Exception e8) {
            e = e8;
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
            if (bufferedReader3 != null) {
                bufferedReader3.close();
            }
            throw th;
        }
    }

    public static synchronized int isRoot1() {
        try {
            if (sRoot1 == -1) {
                sRoot1 = isRoot1Impl() ? 1 : 0;
            }
        } catch (Exception unused) {
            sRoot1 = 2;
        }
        return sRoot1;
    }

    private static boolean isRoot1Impl() {
        return checkRootMethod1() || checkRootMethod2() || checkRootMethod3();
    }

    public static boolean isWindowScreenOn(Activity activity) {
        Window window;
        return (activity == null || (window = activity.getWindow()) == null || (window.getAttributes().flags & 128) == 0) ? false : true;
    }
}
