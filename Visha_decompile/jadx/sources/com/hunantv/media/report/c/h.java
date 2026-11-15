package com.hunantv.media.report.c;

import android.content.Context;
import android.os.Build;
import com.alibaba.android.arouter.utils.Consts;
import com.hunantv.media.player.helper.MediaCodecHelp;
import com.mgtv.easydatasource.flowreporter.BuildConfig;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class h {
    private static String a = null;
    private static int b = -1;
    private static int c = -1;
    private static volatile String d = null;
    private static int e = -1;
    private static int f = -1;
    private static int g = -1;
    private static int h = -1;
    private static int i = -1;

    public static String a() {
        return Build.MANUFACTURER;
    }

    public static boolean b() {
        return "HUAWEI".equalsIgnoreCase(a());
    }

    public static boolean c() {
        return "HONOR".equalsIgnoreCase(a());
    }

    public static String d(Context context) {
        return context == null ? "" : context.getPackageName();
    }

    public static String e() {
        return Build.MODEL;
    }

    public static String f() {
        String str = Build.VERSION.RELEASE;
        return str == null ? "UNKNOWN" : str;
    }

    public static String g() {
        return String.valueOf(Build.VERSION.SDK_INT);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v8 */
    public static synchronized String h() {
        BufferedReader bufferedReader;
        Throwable th;
        ?? r1;
        String strSubstring;
        int iIndexOf;
        if (d == null) {
            BufferedReader bufferedReader2 = null;
            String strGroup = null;
            bufferedReader2 = null;
            try {
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/cpuinfo")), 1000);
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            c.a("theo", "chip:" + line);
                            Matcher matcher = Pattern.compile("Hardware\\s+\\:\\s*(.*)").matcher(line);
                            if (matcher.find()) {
                                strGroup = matcher.group(1);
                                break;
                            }
                        } catch (IOException e2) {
                            e = e2;
                            bufferedReader2 = bufferedReader;
                            e.printStackTrace();
                            f.a(bufferedReader2);
                            r1 = bufferedReader2;
                        } catch (Exception e3) {
                            e = e3;
                            bufferedReader2 = bufferedReader;
                            e.printStackTrace();
                            f.a(bufferedReader2);
                            r1 = bufferedReader2;
                        } catch (Throwable th2) {
                            th = th2;
                            f.a(bufferedReader);
                            throw th;
                        }
                    }
                    if (strGroup == null) {
                        strGroup = "unknown_";
                        String h264Decoder = MediaCodecHelp.getH264Decoder();
                        int iIndexOf2 = h264Decoder.indexOf(Consts.DOT);
                        if (iIndexOf2 > 0 && (iIndexOf = (strSubstring = h264Decoder.substring(iIndexOf2 + 1)).indexOf(Consts.DOT)) > 0) {
                            strGroup = "unknown_" + strSubstring.substring(0, iIndexOf);
                        }
                    }
                    f.a(bufferedReader);
                    r1 = strGroup;
                } catch (Throwable th3) {
                    bufferedReader = null;
                    th = th3;
                }
            } catch (IOException e4) {
                e = e4;
            } catch (Exception e5) {
                e = e5;
            }
            if (r1 == 0) {
                r1 = "unknown";
            }
            d = r1;
        }
        return d;
    }

    public static void i(Context context) {
        if (i < 0) {
            i = (d() && (e(context) || f(context))) ? 1 : 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
    
        if (r3 == null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String a(Context context) {
        if (a == null) {
            if (context == null) {
                return BuildConfig.VERSION_NAME;
            }
            try {
                String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionName;
                a = str;
            } catch (Exception unused) {
            }
        }
        return a;
        return BuildConfig.VERSION_NAME;
    }

    public static boolean b(Context context) {
        try {
            if (b < 0) {
                b = context.getPackageManager().hasSystemFeature("oplus.software.video.sr_support") ? 1 : 0;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return b == 1;
    }

    public static boolean c(Context context) {
        try {
            if (c < 0) {
                c = context.getPackageManager().hasSystemFeature("oplus.software.video.osie_support") ? 1 : 0;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return c == 1;
    }

    public static boolean d() {
        return "OPPO".equalsIgnoreCase(a());
    }

    public static boolean e(Context context) {
        try {
            if (e < 0) {
                e = context.getPackageManager().hasSystemFeature("oplus.video.hdr10_support") ? 1 : 0;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return e == 1 && d();
    }

    public static boolean f(Context context) {
        try {
            if (f < 0) {
                f = context.getPackageManager().hasSystemFeature("oplus.video.hdr10plus_support") ? 1 : 0;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return f == 1 && d();
    }

    public static boolean g(Context context) {
        try {
            if (g < 0) {
                g = context.getPackageManager().hasSystemFeature("oplus.video.hdrvivid_support") ? 1 : 0;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return g == 1 && d();
    }

    public static boolean h(Context context) {
        try {
            if (h < 0) {
                h = context.getPackageManager().hasSystemFeature("oplus.video.DolbyVision_support") ? 1 : 0;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return h == 1 && d();
    }

    public static boolean i() {
        return i == 1;
    }
}
