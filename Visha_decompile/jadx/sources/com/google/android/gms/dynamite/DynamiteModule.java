package com.google.android.gms.dynamite;

import android.content.ContentProviderClient;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import com.alibaba.android.arouter.utils.Consts;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.transsion.livecaption.constant.ICode;
import dalvik.system.DelegateLastClassLoader;
import defpackage.aj4;
import defpackage.d28;
import defpackage.dl1;
import defpackage.gvg;
import defpackage.jc7;
import defpackage.tbj;
import defpackage.wd8;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

public final class DynamiteModule {
    public static Boolean h = null;
    public static String i = null;
    public static boolean j = false;
    public static int k = -1;
    public static Boolean l;
    public static zzp r;
    public static zzq s;
    public final Context a;
    public static final ThreadLocal m = new ThreadLocal();
    public static final ThreadLocal n = new gvg();
    public static final a.InterfaceC0094a o = new c();
    public static final a b = new d();
    public static final a c = new e();
    public static final a d = new f();
    public static final a e = new g();
    public static final a f = new h();
    public static final a g = new i();
    public static final a p = new j();
    public static final a q = new b();

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {

        @NonNull
        public static ClassLoader sClassLoader;
    }

    public static class LoadingException extends Exception {
        public LoadingException(String str, Throwable th, byte[] bArr) {
            super(str, th);
        }

        public LoadingException(String str, byte[] bArr) {
            super(str);
        }
    }

    public interface a {

        public interface InterfaceC0094a {
            int a(Context context, String str);

            int b(Context context, String str, boolean z);
        }

        public static class b {
            public int a = 0;
            public int b = 0;
            public int c = 0;
        }

        b a(Context context, String str, InterfaceC0094a interfaceC0094a);
    }

    public DynamiteModule(Context context) {
        wd8.l(context);
        this.a = context;
    }

    public static int a(Context context, String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 61);
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(".ModuleDescriptor");
            Class<?> clsLoadClass = classLoader.loadClass(sb.toString());
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (jc7.a(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            String strValueOf = String.valueOf(declaredField.get(null));
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 50 + String.valueOf(str).length() + 1);
            sb2.append("Module descriptor id '");
            sb2.append(strValueOf);
            sb2.append("' didn't match expected id '");
            sb2.append(str);
            sb2.append("'");
            Log.e("DynamiteModule", sb2.toString());
            return 0;
        } catch (ClassNotFoundException unused) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 45);
            sb3.append("Local module descriptor class for ");
            sb3.append(str);
            sb3.append(" not found.");
            Log.w("DynamiteModule", sb3.toString());
            return 0;
        } catch (Exception e2) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e2.getMessage())));
            return 0;
        }
    }

    public static int c(Context context, String str) {
        return f(context, str, false);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0265 A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:105:0x0270 A[Catch: all -> 0x026e, TRY_ENTER, TryCatch #7 {, blocks: (B:35:0x00ef, B:37:0x00f5, B:38:0x00f7, B:105:0x0270, B:106:0x0278), top: B:156:0x00ef }] */
    /* JADX WARN: Code duplicated, block: B:125:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:126:0x02db  */
    /* JADX WARN: Code duplicated, block: B:129:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:134:0x02f6 A[Catch: all -> 0x00c1, TryCatch #0 {all -> 0x00c1, blocks: (B:5:0x0043, B:9:0x00ba, B:16:0x00c6, B:19:0x00cc, B:32:0x00ea, B:109:0x027b, B:110:0x0286, B:118:0x0296, B:120:0x02be, B:122:0x02cd, B:132:0x02ed, B:133:0x02f5, B:113:0x0289, B:114:0x028a, B:115:0x0292, B:134:0x02f6, B:135:0x0317, B:136:0x0318, B:137:0x0368), top: B:149:0x0043 }] */
    /* JADX WARN: Code duplicated, block: B:150:0x0135 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:156:0x00ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:19:0x00cc A[Catch: all -> 0x00c1, TRY_LEAVE, TryCatch #0 {all -> 0x00c1, blocks: (B:5:0x0043, B:9:0x00ba, B:16:0x00c6, B:19:0x00cc, B:32:0x00ea, B:109:0x027b, B:110:0x0286, B:118:0x0296, B:120:0x02be, B:122:0x02cd, B:132:0x02ed, B:133:0x02f5, B:113:0x0289, B:114:0x028a, B:115:0x0292, B:134:0x02f6, B:135:0x0317, B:136:0x0318, B:137:0x0368), top: B:149:0x0043 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:23:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:26:0x00df  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:31:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f5 A[Catch: all -> 0x026e, TryCatch #7 {, blocks: (B:35:0x00ef, B:37:0x00f5, B:38:0x00f7, B:105:0x0270, B:106:0x0278), top: B:156:0x00ef }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00fa A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TRY_ENTER, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0101 A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:47:0x013a A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TRY_ENTER, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:77:0x01b9 A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:82:0x01c5 A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:84:0x01fc A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0203 A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:88:0x020b A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:89:0x021a A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0223 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x0225 A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0235 A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:96:0x024a A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0253 A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:99:0x025c A[Catch: all -> 0x0173, LoadingException -> 0x0178, RemoteException -> 0x017d, TryCatch #8 {RemoteException -> 0x017d, LoadingException -> 0x0178, all -> 0x0173, blocks: (B:34:0x00ee, B:40:0x00fa, B:42:0x0101, B:43:0x0134, B:47:0x013a, B:49:0x0142, B:51:0x0146, B:52:0x0152, B:59:0x015f, B:67:0x0195, B:69:0x019d, B:70:0x01a4, B:71:0x01ac, B:66:0x0182, B:74:0x01af, B:75:0x01b0, B:76:0x01b8, B:77:0x01b9, B:78:0x01c1, B:81:0x01c4, B:82:0x01c5, B:84:0x01fc, B:86:0x0203, B:88:0x020b, B:94:0x0244, B:96:0x024a, B:97:0x0253, B:98:0x025b, B:89:0x021a, B:90:0x0222, B:92:0x0225, B:93:0x0235, B:99:0x025c, B:100:0x0264, B:101:0x0265, B:102:0x026d, B:108:0x027a), top: B:157:0x00ee }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r30v0, types: [com.google.android.gms.dynamite.DynamiteModule$a] */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v9, types: [android.content.Context] */
    public static DynamiteModule e(Context context, a aVar, String str) throws LoadingException {
        ?? r4;
        int i2;
        DynamiteModule dynamiteModuleJ;
        Cursor cursor;
        int i3;
        Boolean bool;
        zzp zzpVarL;
        int iZzi;
        IObjectWrapper iObjectWrapperZze;
        Object objUnwrap;
        tbj tbjVar;
        zzq zzqVar;
        tbj tbjVar2;
        boolean z;
        IObjectWrapper iObjectWrapperZze2;
        Cursor cursor2;
        String str2 = StringUtils.PROCESS_POSTFIX_DELIMITER;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new LoadingException("null application Context", null);
        }
        ThreadLocal threadLocal = m;
        tbj tbjVar3 = (tbj) threadLocal.get();
        tbj tbjVar4 = new tbj(null);
        threadLocal.set(tbjVar4);
        ThreadLocal threadLocal2 = n;
        Long l2 = (Long) threadLocal2.get();
        long jLongValue = l2.longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.uptimeMillis()));
            a.b bVarA = aVar.a(context, str, o);
            int i4 = bVarA.a;
            int i5 = bVarA.b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 26 + String.valueOf(i4).length() + 19 + String.valueOf(str).length() + 1 + String.valueOf(i5).length());
            sb.append("Considering local module ");
            sb.append(str);
            sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            sb.append(i4);
            sb.append(" and remote module ");
            sb.append(str);
            sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            sb.append(i5);
            Log.i("DynamiteModule", sb.toString());
            int i6 = bVarA.c;
            if (i6 != 0) {
                if (i6 != -1) {
                    if (i6 == 1 || bVarA.b != 0) {
                        if (i6 == -1) {
                            DynamiteModule dynamiteModuleJ2 = j(applicationContext, str);
                            if (jLongValue == 0) {
                                threadLocal2.remove();
                            } else {
                                threadLocal2.set(l2);
                            }
                            cursor2 = tbjVar4.a;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            threadLocal.set(tbjVar3);
                            return dynamiteModuleJ2;
                        }
                        if (i6 == 1) {
                            StringBuilder sb2 = new StringBuilder(String.valueOf(i6).length() + 36);
                            sb2.append("VersionPolicy returned invalid code:");
                            sb2.append(i6);
                            throw new LoadingException(sb2.toString(), null);
                        }
                        try {
                            try {
                                i3 = bVarA.b;
                                try {
                                    synchronized (DynamiteModule.class) {
                                        if (g(context)) {
                                            throw new LoadingException("Remote loading disabled", null);
                                        }
                                        bool = h;
                                    }
                                    if (bool != null) {
                                        throw new LoadingException("Failed to determine which loading route to use.", null);
                                    }
                                    if (bool.booleanValue()) {
                                        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(i3).length());
                                        sb3.append("Selected remote version of ");
                                        sb3.append(str);
                                        sb3.append(", version >= ");
                                        sb3.append(i3);
                                        Log.i("DynamiteModule", sb3.toString());
                                        synchronized (DynamiteModule.class) {
                                            zzqVar = s;
                                        }
                                        if (zzqVar != null) {
                                            throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                                        }
                                        tbjVar2 = (tbj) threadLocal.get();
                                        if (tbjVar2 != null || tbjVar2.a == null) {
                                            throw new LoadingException("No result cursor", null);
                                        }
                                        Context applicationContext2 = context.getApplicationContext();
                                        Cursor cursor3 = tbjVar2.a;
                                        ObjectWrapper.wrap(null);
                                        synchronized (DynamiteModule.class) {
                                            z = k >= 2;
                                        }
                                        if (z) {
                                            Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                            iObjectWrapperZze2 = zzqVar.zzf(ObjectWrapper.wrap(applicationContext2), str, i3, ObjectWrapper.wrap(cursor3));
                                        } else {
                                            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                            iObjectWrapperZze2 = zzqVar.zze(ObjectWrapper.wrap(applicationContext2), str, i3, ObjectWrapper.wrap(cursor3));
                                        }
                                        Context context2 = (Context) ObjectWrapper.unwrap(iObjectWrapperZze2);
                                        if (context2 == null) {
                                            throw new LoadingException("Failed to get module context", null);
                                        }
                                        dynamiteModuleJ = new DynamiteModule(context2);
                                    } else {
                                        StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(i3).length());
                                        sb4.append("Selected remote version of ");
                                        sb4.append(str);
                                        sb4.append(", version >= ");
                                        sb4.append(i3);
                                        Log.i("DynamiteModule", sb4.toString());
                                        zzpVarL = l(context);
                                        if (zzpVarL != null) {
                                            throw new LoadingException("Failed to create IDynamiteLoader.", null);
                                        }
                                        iZzi = zzpVarL.zzi();
                                        if (iZzi >= 3) {
                                            tbjVar = (tbj) threadLocal.get();
                                            if (tbjVar != null) {
                                                throw new LoadingException("No cached result cursor holder", null);
                                            }
                                            iObjectWrapperZze = zzpVarL.zzk(ObjectWrapper.wrap(context), str, i3, ObjectWrapper.wrap(tbjVar.a));
                                        } else if (iZzi == 2) {
                                            Log.w("DynamiteModule", "IDynamite loader version = 2");
                                            iObjectWrapperZze = zzpVarL.zzg(ObjectWrapper.wrap(context), str, i3);
                                        } else {
                                            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                            iObjectWrapperZze = zzpVarL.zze(ObjectWrapper.wrap(context), str, i3);
                                        }
                                        objUnwrap = ObjectWrapper.unwrap(iObjectWrapperZze);
                                        if (objUnwrap != null) {
                                            throw new LoadingException("Failed to load remote module.", null);
                                        }
                                        dynamiteModuleJ = new DynamiteModule((Context) objUnwrap);
                                    }
                                    if (jLongValue == 0) {
                                        n.remove();
                                    } else {
                                        n.set(l2);
                                    }
                                    cursor = tbjVar4.a;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    m.set(tbjVar3);
                                    return dynamiteModuleJ;
                                } catch (RemoteException e2) {
                                    throw new LoadingException("Failed to load remote module.", e2, null);
                                } catch (LoadingException e3) {
                                    throw e3;
                                } catch (Throwable th) {
                                    dl1.a(context, th);
                                    throw new LoadingException("Failed to load remote module.", th, null);
                                }
                            } catch (LoadingException e4) {
                                e = e4;
                                r4 = context;
                                String message = e.getMessage();
                                StringBuilder sb5 = new StringBuilder(String.valueOf(message).length() + 30);
                                sb5.append("Failed to load remote module: ");
                                sb5.append(message);
                                Log.w("DynamiteModule", sb5.toString());
                                i2 = bVarA.a;
                                if (i2 != 0 || aVar.a(r4, str, new k(i2, 0)).c != -1) {
                                    throw new LoadingException("Remote load failed. No local fallback found.", e, null);
                                }
                                dynamiteModuleJ = j(applicationContext, str);
                            }
                        } catch (LoadingException e5) {
                            e = e5;
                            r4 = str2;
                            String message2 = e.getMessage();
                            StringBuilder sb6 = new StringBuilder(String.valueOf(message2).length() + 30);
                            sb6.append("Failed to load remote module: ");
                            sb6.append(message2);
                            Log.w("DynamiteModule", sb6.toString());
                            i2 = bVarA.a;
                            if (i2 != 0) {
                            }
                            throw new LoadingException("Remote load failed. No local fallback found.", e, null);
                        }
                    }
                } else if (bVarA.a != 0) {
                    i6 = -1;
                    if (i6 == 1) {
                    }
                    if (i6 == -1) {
                        DynamiteModule dynamiteModuleJ3 = j(applicationContext, str);
                        if (jLongValue == 0) {
                            threadLocal2.remove();
                        } else {
                            threadLocal2.set(l2);
                        }
                        cursor2 = tbjVar4.a;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        threadLocal.set(tbjVar3);
                        return dynamiteModuleJ3;
                    }
                    if (i6 == 1) {
                        StringBuilder sb7 = new StringBuilder(String.valueOf(i6).length() + 36);
                        sb7.append("VersionPolicy returned invalid code:");
                        sb7.append(i6);
                        throw new LoadingException(sb7.toString(), null);
                    }
                    i3 = bVarA.b;
                    synchronized (DynamiteModule.class) {
                        if (g(context)) {
                            throw new LoadingException("Remote loading disabled", null);
                        }
                        bool = h;
                        if (bool != null) {
                            throw new LoadingException("Failed to determine which loading route to use.", null);
                        }
                        if (bool.booleanValue()) {
                            StringBuilder sb8 = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(i3).length());
                            sb8.append("Selected remote version of ");
                            sb8.append(str);
                            sb8.append(", version >= ");
                            sb8.append(i3);
                            Log.i("DynamiteModule", sb8.toString());
                            synchronized (DynamiteModule.class) {
                                zzqVar = s;
                                if (zzqVar != null) {
                                    throw new LoadingException("DynamiteLoaderV2 was not cached.", null);
                                }
                                tbjVar2 = (tbj) threadLocal.get();
                                if (tbjVar2 != null) {
                                }
                                throw new LoadingException("No result cursor", null);
                            }
                        }
                        StringBuilder sb9 = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(i3).length());
                        sb9.append("Selected remote version of ");
                        sb9.append(str);
                        sb9.append(", version >= ");
                        sb9.append(i3);
                        Log.i("DynamiteModule", sb9.toString());
                        zzpVarL = l(context);
                        if (zzpVarL != null) {
                            throw new LoadingException("Failed to create IDynamiteLoader.", null);
                        }
                        iZzi = zzpVarL.zzi();
                        if (iZzi >= 3) {
                            tbjVar = (tbj) threadLocal.get();
                            if (tbjVar != null) {
                                throw new LoadingException("No cached result cursor holder", null);
                            }
                            iObjectWrapperZze = zzpVarL.zzk(ObjectWrapper.wrap(context), str, i3, ObjectWrapper.wrap(tbjVar.a));
                        } else if (iZzi == 2) {
                            Log.w("DynamiteModule", "IDynamite loader version = 2");
                            iObjectWrapperZze = zzpVarL.zzg(ObjectWrapper.wrap(context), str, i3);
                        } else {
                            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                            iObjectWrapperZze = zzpVarL.zze(ObjectWrapper.wrap(context), str, i3);
                        }
                        objUnwrap = ObjectWrapper.unwrap(iObjectWrapperZze);
                        if (objUnwrap != null) {
                            throw new LoadingException("Failed to load remote module.", null);
                        }
                        dynamiteModuleJ = new DynamiteModule((Context) objUnwrap);
                        if (jLongValue == 0) {
                            n.remove();
                        } else {
                            n.set(l2);
                        }
                        cursor = tbjVar4.a;
                        if (cursor != null) {
                            cursor.close();
                        }
                        m.set(tbjVar3);
                        return dynamiteModuleJ;
                    }
                }
            }
            int i7 = bVarA.a;
            int i8 = bVarA.b;
            StringBuilder sb10 = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(i7).length() + 23 + String.valueOf(i8).length() + 1);
            sb10.append("No acceptable module ");
            sb10.append(str);
            sb10.append(" found. Local version is ");
            sb10.append(i7);
            sb10.append(" and remote version is ");
            sb10.append(i8);
            sb10.append(Consts.DOT);
            throw new LoadingException(sb10.toString(), null);
        } catch (Throwable th2) {
            if (jLongValue == 0) {
                n.remove();
            } else {
                n.set(l2);
            }
            Cursor cursor4 = tbjVar4.a;
            if (cursor4 != null) {
                cursor4.close();
            }
            m.set(tbjVar3);
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x009b A[Catch: all -> 0x003a, TryCatch #7 {, blocks: (B:10:0x002a, B:12:0x0036, B:50:0x00a4, B:17:0x003f, B:19:0x0045, B:21:0x004b, B:26:0x0051, B:28:0x0055, B:32:0x005f, B:34:0x0067, B:37:0x006e, B:41:0x0083, B:42:0x008b, B:40:0x0075, B:45:0x008e, B:48:0x0091, B:49:0x009b, B:18:0x0042), top: B:134:0x002a, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x016e A[Catch: all -> 0x00d8, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x00d8, blocks: (B:4:0x0006, B:58:0x00cd, B:60:0x00d3, B:67:0x00ff, B:95:0x0160, B:99:0x016e, B:117:0x01c8, B:118:0x01cb, B:112:0x01c0, B:65:0x00dc, B:120:0x01cd, B:5:0x0007, B:8:0x000d, B:9:0x0029, B:56:0x00ca, B:22:0x004c, B:43:0x008c, B:46:0x008f, B:53:0x00a7, B:57:0x00cc, B:55:0x00a9), top: B:133:0x0006, inners: #0, #10 }] */
    public static int f(Context context, String str, boolean z) {
        Throwable th;
        RemoteException e2;
        Cursor cursor;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = h;
                Cursor cursor2 = null;
                int iZzf = 0;
                if (bool == null) {
                    try {
                        Field declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                        synchronized (declaredField.getDeclaringClass()) {
                            ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                            if (classLoader == ClassLoader.getSystemClassLoader()) {
                                bool = Boolean.FALSE;
                            } else if (classLoader != null) {
                                try {
                                    k(classLoader);
                                } catch (LoadingException unused) {
                                }
                                bool = Boolean.TRUE;
                            } else {
                                if (!g(context)) {
                                    return 0;
                                }
                                if (j) {
                                    declaredField.set(null, ClassLoader.getSystemClassLoader());
                                    bool = Boolean.FALSE;
                                } else {
                                    Boolean bool2 = Boolean.TRUE;
                                    if (bool2.equals(null)) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    } else {
                                        try {
                                            int iH = h(context, str, z, true);
                                            String str2 = i;
                                            if (str2 != null && !str2.isEmpty()) {
                                                ClassLoader classLoaderA = com.google.android.gms.dynamite.a.a();
                                                if (classLoaderA == null) {
                                                    String str3 = i;
                                                    wd8.l(str3);
                                                    classLoaderA = new DelegateLastClassLoader(str3, ClassLoader.getSystemClassLoader());
                                                }
                                                k(classLoaderA);
                                                declaredField.set(null, classLoaderA);
                                                h = bool2;
                                                return iH;
                                            }
                                            return iH;
                                        } catch (LoadingException unused2) {
                                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                                            bool = Boolean.FALSE;
                                        }
                                    }
                                }
                            }
                            h = bool;
                        }
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e3) {
                        String string = e3.toString();
                        StringBuilder sb = new StringBuilder(string.length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(string);
                        Log.w("DynamiteModule", sb.toString());
                        bool = Boolean.FALSE;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return h(context, str, z, false);
                    } catch (LoadingException e4) {
                        String message = e4.getMessage();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(message).length() + 42);
                        sb2.append("Failed to retrieve remote module version: ");
                        sb2.append(message);
                        Log.w("DynamiteModule", sb2.toString());
                        return 0;
                    }
                }
                zzp zzpVarL = l(context);
                try {
                    if (zzpVarL != null) {
                        try {
                            int iZzi = zzpVarL.zzi();
                            if (iZzi >= 3) {
                                tbj tbjVar = (tbj) m.get();
                                if (tbjVar == null || (cursor = tbjVar.a) == null) {
                                    Cursor cursor3 = (Cursor) ObjectWrapper.unwrap(zzpVarL.zzj(ObjectWrapper.wrap(context), str, z, ((Long) n.get()).longValue()));
                                    if (cursor3 != null) {
                                        try {
                                            if (cursor3.moveToFirst()) {
                                                int i2 = cursor3.getInt(0);
                                                cursor2 = (i2 <= 0 || !i(cursor3)) ? cursor3 : null;
                                                if (cursor2 != null) {
                                                    cursor2.close();
                                                }
                                                iZzf = i2;
                                            } else {
                                                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                                if (cursor3 != null) {
                                                    cursor3.close();
                                                }
                                            }
                                        } catch (RemoteException e5) {
                                            e2 = e5;
                                            cursor2 = cursor3;
                                            String message2 = e2.getMessage();
                                            StringBuilder sb3 = new StringBuilder(String.valueOf(message2).length() + 42);
                                            sb3.append("Failed to retrieve remote module version: ");
                                            sb3.append(message2);
                                            Log.w("DynamiteModule", sb3.toString());
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            cursor2 = cursor3;
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            throw th;
                                        }
                                    } else {
                                        Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                        if (cursor3 != null) {
                                            cursor3.close();
                                        }
                                    }
                                } else {
                                    iZzf = cursor.getInt(0);
                                }
                            } else if (iZzi == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                iZzf = zzpVarL.zzh(ObjectWrapper.wrap(context), str, z);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                iZzf = zzpVarL.zzf(ObjectWrapper.wrap(context), str, z);
                            }
                        } catch (RemoteException e6) {
                            e2 = e6;
                        }
                    }
                    return iZzf;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            dl1.a(context, th4);
            throw th4;
        }
    }

    public static boolean g(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(l)) {
            return true;
        }
        boolean z = false;
        if (l == null) {
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", true != d28.i() ? 0 : 268435456);
            if (aj4.g().i(context, 10000000) == 0 && providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                z = true;
            }
            l = Boolean.valueOf(z);
            if (z && (applicationInfo = providerInfoResolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                j = true;
            }
        }
        if (!z) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0161 A[Catch: all -> 0x0141, TryCatch #1 {all -> 0x0141, blocks: (B:60:0x00f0, B:62:0x00f6, B:65:0x00fe, B:79:0x012a, B:83:0x0133, B:87:0x0139, B:88:0x0140, B:97:0x014d, B:98:0x015b, B:100:0x015d, B:102:0x0161, B:103:0x0183, B:104:0x0184), top: B:109:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0184 A[Catch: all -> 0x0141, TRY_LEAVE, TryCatch #1 {all -> 0x0141, blocks: (B:60:0x00f0, B:62:0x00f6, B:65:0x00fe, B:79:0x012a, B:83:0x0133, B:87:0x0139, B:88:0x0140, B:97:0x014d, B:98:0x015b, B:100:0x015d, B:102:0x0161, B:103:0x0183, B:104:0x0184), top: B:109:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0187  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 9, insn: 0x0145: MOVE (r2 I:??[OBJECT, ARRAY]) = (r9 I:??[OBJECT, ARRAY]), block:B:93:0x0145 */
    public static int h(Context context, String str, boolean z, boolean z2) throws Throwable {
        Cursor cursor;
        MatrixCursor matrixCursor;
        Cursor cursor2 = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        try {
            try {
                boolean z3 = true;
                Uri uriBuild = new Uri.Builder().scheme(ICode.CALL.CALL_KEY_CONTENT).authority("com.google.android.gms.chimera").path(true != z ? "api" : "api_force_staging").appendPath(str).appendQueryParameter("requestStartUptime", String.valueOf(((Long) n.get()).longValue())).build();
                ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(uriBuild);
                boolean z4 = false;
                if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                    matrixCursor = null;
                } else {
                    try {
                        Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(uriBuild, null, null, null, null);
                        if (cursorQuery == null) {
                            contentProviderClientAcquireUnstableContentProviderClient.release();
                            matrixCursor = null;
                        } else {
                            try {
                                int count = cursorQuery.getCount();
                                int columnCount = cursorQuery.getColumnCount();
                                matrixCursor = new MatrixCursor(cursorQuery.getColumnNames(), count);
                                for (int i2 = 0; i2 < count; i2++) {
                                    if (!cursorQuery.moveToPosition(i2)) {
                                        throw new RemoteException("Cursor read incomplete (ContentProvider dead?)");
                                    }
                                    Object[] objArr4 = new Object[columnCount];
                                    for (int i3 = 0; i3 < columnCount; i3++) {
                                        int type = cursorQuery.getType(i3);
                                        if (type == 0) {
                                            objArr4[i3] = null;
                                        } else if (type == 1) {
                                            objArr4[i3] = Long.valueOf(cursorQuery.getLong(i3));
                                        } else if (type == 2) {
                                            objArr4[i3] = Double.valueOf(cursorQuery.getDouble(i3));
                                        } else if (type == 3) {
                                            objArr4[i3] = cursorQuery.getString(i3);
                                        } else {
                                            if (type != 4) {
                                                throw new RemoteException("Unknown column type");
                                            }
                                            objArr4[i3] = cursorQuery.getBlob(i3);
                                        }
                                    }
                                    matrixCursor.addRow(objArr4);
                                }
                                cursorQuery.close();
                                contentProviderClientAcquireUnstableContentProviderClient.release();
                            } catch (Throwable th) {
                                try {
                                    cursorQuery.close();
                                    throw th;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                    throw th;
                                }
                            }
                        }
                    } catch (RemoteException unused) {
                    } catch (Throwable th3) {
                        contentProviderClientAcquireUnstableContentProviderClient.release();
                        throw th3;
                    }
                }
                if (matrixCursor != null) {
                    try {
                        if (matrixCursor.moveToFirst()) {
                            int i4 = matrixCursor.getInt(0);
                            if (i4 > 0) {
                                synchronized (DynamiteModule.class) {
                                    try {
                                        i = matrixCursor.getString(2);
                                        int columnIndex = matrixCursor.getColumnIndex("loaderVersion");
                                        if (columnIndex >= 0) {
                                            k = matrixCursor.getInt(columnIndex);
                                        }
                                        int columnIndex2 = matrixCursor.getColumnIndex("disableStandaloneDynamiteLoader2");
                                        if (columnIndex2 >= 0) {
                                            if (matrixCursor.getInt(columnIndex2) == 0) {
                                                z3 = false;
                                            }
                                            j = z3;
                                            z4 = z3;
                                        }
                                    } catch (Throwable th4) {
                                        throw th4;
                                    }
                                }
                                if (i(matrixCursor)) {
                                    matrixCursor = null;
                                }
                            }
                            if (z2 && z4) {
                                throw new LoadingException("forcing fallback to container DynamiteLoader impl", objArr2 == true ? 1 : 0);
                            }
                            if (matrixCursor != null) {
                                matrixCursor.close();
                            }
                            return i4;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        if (!(e instanceof LoadingException)) {
                            throw e;
                        }
                        String message = e.getMessage();
                        StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 25);
                        sb.append("V2 version check failed: ");
                        sb.append(message);
                        throw new LoadingException(sb.toString(), e, objArr == true ? 1 : 0);
                    }
                }
                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                throw new LoadingException("Failed to connect to dynamite module ContentResolver.", objArr3 == true ? 1 : 0);
            } catch (Throwable th5) {
                th = th5;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            if (!(e instanceof LoadingException)) {
                throw e;
            }
            String message2 = e.getMessage();
            StringBuilder sb2 = new StringBuilder(String.valueOf(message2).length() + 25);
            sb2.append("V2 version check failed: ");
            sb2.append(message2);
            throw new LoadingException(sb2.toString(), e, objArr == true ? 1 : 0);
        } catch (Throwable th6) {
            th = th6;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    public static boolean i(Cursor cursor) {
        tbj tbjVar = (tbj) m.get();
        if (tbjVar == null || tbjVar.a != null) {
            return false;
        }
        tbjVar.a = cursor;
        return true;
    }

    public static DynamiteModule j(Context context, String str) {
        Log.i("DynamiteModule", "Selected local version of ".concat(String.valueOf(str)));
        return new DynamiteModule(context);
    }

    public static void k(ClassLoader classLoader) throws LoadingException {
        zzq zzqVar;
        byte[] bArr = null;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(null).newInstance(null);
            if (iBinder == null) {
                zzqVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzqVar = iInterfaceQueryLocalInterface instanceof zzq ? (zzq) iInterfaceQueryLocalInterface : new zzq(iBinder);
            }
            s = zzqVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            throw new LoadingException("Failed to instantiate dynamite loader", e2, bArr);
        }
    }

    public static zzp l(Context context) {
        zzp zzpVar;
        synchronized (DynamiteModule.class) {
            zzp zzpVar2 = r;
            if (zzpVar2 != null) {
                return zzpVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    zzpVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    zzpVar = iInterfaceQueryLocalInterface instanceof zzp ? (zzp) iInterfaceQueryLocalInterface : new zzp(iBinder);
                }
                if (zzpVar != null) {
                    r = zzpVar;
                    return zzpVar;
                }
            } catch (Exception e2) {
                String message = e2.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 45);
                sb.append("Failed to load IDynamiteLoader from GmsCore: ");
                sb.append(message);
                Log.e("DynamiteModule", sb.toString());
            }
            return null;
        }
    }

    public Context b() {
        return this.a;
    }

    public IBinder d(String str) throws LoadingException {
        try {
            return (IBinder) this.a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e2) {
            throw new LoadingException("Failed to instantiate module class: ".concat(String.valueOf(str)), e2, null);
        }
    }
}
