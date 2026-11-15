package com.blankj.utilcode.util;

import android.app.Application;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import defpackage.ubc;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.text.StringSubstitutor;

public abstract class LogUtils {
    public static SimpleDateFormat e;
    public static final char[] a = {'V', 'D', 'I', 'W', 'E', 'A'};
    public static final String b = System.getProperty("file.separator");
    public static final String c = System.getProperty("line.separator");
    public static final b d = new b();
    public static final ExecutorService f = Executors.newSingleThreadExecutor();
    public static final SimpleArrayMap g = new SimpleArrayMap();

    public class a implements FilenameFilter {
        @Override
        public boolean accept(File file, String str) {
            return LogUtils.y(str);
        }
    }

    public static final class b {
        public String a;
        public String b;
        public String c;
        public String d;
        public boolean e;
        public boolean f;
        public String g;
        public boolean h;
        public boolean i;
        public boolean j;
        public boolean k;
        public boolean l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public final String r;
        public final h.a s;

        public static e d(b bVar) {
            bVar.getClass();
            return null;
        }

        public static c f(b bVar) {
            bVar.getClass();
            return null;
        }

        public static f g(b bVar) {
            bVar.getClass();
            return null;
        }

        public final char h() {
            return LogUtils.a[this.m - 2];
        }

        public final String i() {
            String str = this.b;
            return str == null ? this.a : str;
        }

        public final String j() {
            return this.d;
        }

        public final char k() {
            return LogUtils.a[this.n - 2];
        }

        public final String l() {
            return this.c;
        }

        public final String m() {
            return h.D(this.g) ? "" : this.g;
        }

        public final String n() {
            String str = this.r;
            return str == null ? "" : str.replace(StringUtils.PROCESS_POSTFIX_DELIMITER, "_");
        }

        public final int o() {
            return this.q;
        }

        public final int p() {
            return this.o;
        }

        public final int q() {
            return this.p;
        }

        public final boolean r() {
            return this.f;
        }

        public final boolean s() {
            return this.j;
        }

        public final boolean t() {
            return this.k;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("process: ");
            sb.append(n());
            sb.append(LogUtils.c);
            sb.append("logSwitch: ");
            sb.append(v());
            sb.append(LogUtils.c);
            sb.append("consoleSwitch: ");
            sb.append(r());
            sb.append(LogUtils.c);
            sb.append("tag: ");
            sb.append(m().equals("") ? "null" : m());
            sb.append(LogUtils.c);
            sb.append("headSwitch: ");
            sb.append(u());
            sb.append(LogUtils.c);
            sb.append("fileSwitch: ");
            sb.append(s());
            sb.append(LogUtils.c);
            sb.append("dir: ");
            sb.append(i());
            sb.append(LogUtils.c);
            sb.append("filePrefix: ");
            sb.append(l());
            sb.append(LogUtils.c);
            sb.append("borderSwitch: ");
            sb.append(t());
            sb.append(LogUtils.c);
            sb.append("singleTagSwitch: ");
            sb.append(w());
            sb.append(LogUtils.c);
            sb.append("consoleFilter: ");
            sb.append(h());
            sb.append(LogUtils.c);
            sb.append("fileFilter: ");
            sb.append(k());
            sb.append(LogUtils.c);
            sb.append("stackDeep: ");
            sb.append(p());
            sb.append(LogUtils.c);
            sb.append("stackOffset: ");
            sb.append(q());
            sb.append(LogUtils.c);
            sb.append("saveDays: ");
            sb.append(o());
            sb.append(LogUtils.c);
            sb.append("formatter: ");
            sb.append(LogUtils.g);
            sb.append(LogUtils.c);
            sb.append("fileWriter: ");
            sb.append((Object) null);
            sb.append(LogUtils.c);
            sb.append("onConsoleOutputListener: ");
            sb.append((Object) null);
            sb.append(LogUtils.c);
            sb.append("onFileOutputListener: ");
            sb.append((Object) null);
            sb.append(LogUtils.c);
            sb.append("fileExtraHeader: ");
            sb.append(this.s.c());
            return sb.toString();
        }

        public final boolean u() {
            return this.i;
        }

        public final boolean v() {
            return this.e;
        }

        public final boolean w() {
            return this.l;
        }

        public final b x(boolean z) {
            this.k = z;
            return this;
        }

        public final b y(int i) {
            this.m = i;
            return this;
        }

        public final b z(int i) {
            this.n = i;
            return this;
        }

        public b() {
            this.a = "";
            this.c = "util";
            this.d = ".txt";
            this.e = true;
            this.f = true;
            this.g = "";
            this.h = true;
            this.i = true;
            this.j = false;
            this.k = true;
            this.l = true;
            this.m = 2;
            this.n = 2;
            this.o = 1;
            this.p = 0;
            this.q = -1;
            this.r = h.l();
            this.s = new h.a("Log");
            try {
                Application applicationA = Utils.a();
                if (applicationA == null) {
                    this.a = LogUtils.b + "data" + LogUtils.b + "local" + LogUtils.b + "tmp" + LogUtils.b + "log" + LogUtils.b;
                } else if (!h.B() || applicationA.getExternalFilesDir(null) == null) {
                    this.a = applicationA.getFilesDir() + LogUtils.b + "log" + LogUtils.b;
                } else {
                    this.a = applicationA.getExternalFilesDir(null) + LogUtils.b + "log" + LogUtils.b;
                }
            } catch (Exception e) {
                Log.e("LogUtils", "Config " + e.toString());
            }
        }
    }

    public interface c {
    }

    public static final class d {
        public static String a(Object obj) {
            if (obj instanceof Object[]) {
                return Arrays.deepToString((Object[]) obj);
            }
            if (obj instanceof boolean[]) {
                return Arrays.toString((boolean[]) obj);
            }
            if (obj instanceof byte[]) {
                return Arrays.toString((byte[]) obj);
            }
            if (obj instanceof char[]) {
                return Arrays.toString((char[]) obj);
            }
            if (obj instanceof double[]) {
                return Arrays.toString((double[]) obj);
            }
            if (obj instanceof float[]) {
                return Arrays.toString((float[]) obj);
            }
            if (obj instanceof int[]) {
                return Arrays.toString((int[]) obj);
            }
            if (obj instanceof long[]) {
                return Arrays.toString((long[]) obj);
            }
            if (obj instanceof short[]) {
                return Arrays.toString((short[]) obj);
            }
            throw new IllegalArgumentException("Array has incompatible type: " + obj.getClass());
        }

        public static String b(Bundle bundle) {
            Iterator<String> it = bundle.keySet().iterator();
            if (!it.hasNext()) {
                return "Bundle {}";
            }
            StringBuilder sb = new StringBuilder(128);
            sb.append("Bundle { ");
            while (true) {
                String next = it.next();
                Object obj = bundle.get(next);
                sb.append(next);
                sb.append('=');
                if (obj instanceof Bundle) {
                    sb.append(obj == bundle ? "(this Bundle)" : b((Bundle) obj));
                } else {
                    sb.append(LogUtils.p(obj));
                }
                if (!it.hasNext()) {
                    sb.append(" }");
                    return sb.toString();
                }
                sb.append(',');
                sb.append(' ');
            }
        }

        public static void c(ClipData clipData, StringBuilder sb) {
            ClipData.Item itemAt = clipData.getItemAt(0);
            if (itemAt == null) {
                sb.append("ClipData.Item {}");
                return;
            }
            sb.append("ClipData.Item { ");
            String htmlText = itemAt.getHtmlText();
            if (htmlText != null) {
                sb.append("H:");
                sb.append(htmlText);
                sb.append(StringSubstitutor.DEFAULT_VAR_END);
                return;
            }
            CharSequence text = itemAt.getText();
            if (text != null) {
                sb.append("T:");
                sb.append(text);
                sb.append(StringSubstitutor.DEFAULT_VAR_END);
                return;
            }
            Uri uri = itemAt.getUri();
            if (uri != null) {
                sb.append("U:");
                sb.append(uri);
                sb.append(StringSubstitutor.DEFAULT_VAR_END);
                return;
            }
            Intent intent = itemAt.getIntent();
            if (intent == null) {
                sb.append("NULL");
                sb.append(StringSubstitutor.DEFAULT_VAR_END);
            } else {
                sb.append("I:");
                sb.append(e(intent));
                sb.append(StringSubstitutor.DEFAULT_VAR_END);
            }
        }

        public static String d(String str) {
            try {
                StreamSource streamSource = new StreamSource(new StringReader(str));
                StreamResult streamResult = new StreamResult(new StringWriter());
                Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
                transformerNewTransformer.setOutputProperty("indent", BooleanUtils.YES);
                transformerNewTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "2");
                transformerNewTransformer.transform(streamSource, streamResult);
                return streamResult.getWriter().toString().replaceFirst(">", ">" + LogUtils.c);
            } catch (Exception e) {
                e.printStackTrace();
                return str;
            }
        }

        public static String e(Intent intent) {
            boolean z;
            StringBuilder sb = new StringBuilder(128);
            sb.append("Intent { ");
            String action = intent.getAction();
            boolean z2 = false;
            boolean z3 = true;
            if (action != null) {
                sb.append("act=");
                sb.append(action);
                z = false;
            } else {
                z = true;
            }
            Set<String> categories = intent.getCategories();
            if (categories != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("cat=[");
                for (String str : categories) {
                    if (!z3) {
                        sb.append(',');
                    }
                    sb.append(str);
                    z3 = false;
                }
                sb.append("]");
                z = false;
            }
            Uri data = intent.getData();
            if (data != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("dat=");
                sb.append(data);
                z = false;
            }
            String type = intent.getType();
            if (type != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("typ=");
                sb.append(type);
                z = false;
            }
            int flags = intent.getFlags();
            if (flags != 0) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("flg=0x");
                sb.append(Integer.toHexString(flags));
                z = false;
            }
            String str2 = intent.getPackage();
            if (str2 != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("pkg=");
                sb.append(str2);
                z = false;
            }
            ComponentName component = intent.getComponent();
            if (component != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("cmp=");
                sb.append(component.flattenToShortString());
                z = false;
            }
            Rect sourceBounds = intent.getSourceBounds();
            if (sourceBounds != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("bnds=");
                sb.append(sourceBounds.toShortString());
                z = false;
            }
            ClipData clipData = intent.getClipData();
            if (clipData != null) {
                if (!z) {
                    sb.append(' ');
                }
                c(clipData, sb);
                z = false;
            }
            Bundle extras = intent.getExtras();
            if (extras != null) {
                if (!z) {
                    sb.append(' ');
                }
                sb.append("extras={");
                sb.append(b(extras));
                sb.append('}');
            } else {
                z2 = z;
            }
            Intent selector = intent.getSelector();
            if (selector != null) {
                if (!z2) {
                    sb.append(' ');
                }
                sb.append("sel={");
                sb.append(selector == intent ? "(this Intent)" : e(selector));
                sb.append(StringSubstitutor.DEFAULT_VAR_END);
            }
            sb.append(" }");
            return sb.toString();
        }

        public static String f(Object obj) {
            if (obj instanceof CharSequence) {
                return h.h(obj.toString());
            }
            try {
                return h.o().toJson(obj);
            } catch (Throwable unused) {
                return obj.toString();
            }
        }

        public static String g(Object obj) {
            return h(obj, -1);
        }

        public static String h(Object obj, int i) {
            if (obj.getClass().isArray()) {
                return a(obj);
            }
            if (obj instanceof Throwable) {
                return h.n((Throwable) obj);
            }
            if (obj instanceof Bundle) {
                return b((Bundle) obj);
            }
            if (obj instanceof Intent) {
                return e((Intent) obj);
            }
            if (i == 32) {
                return f(obj);
            }
            return i == 48 ? d(obj.toString()) : obj.toString();
        }
    }

    public interface e {
    }

    public interface f {
    }

    public static final class g {
        public String a;
        public String[] b;
        public String c;

        public g(String str, String[] strArr, String str2) {
            this.a = str;
            this.b = strArr;
            this.c = str2;
        }
    }

    public static void A(int i, String str, String str2) {
        Log.println(i, str, str2);
        b.d(d);
    }

    public static void B(int i, String str, String[] strArr, String str2) {
        if (d.w()) {
            H(i, str, K(i, str, strArr, str2));
            return;
        }
        D(i, str, true);
        F(i, str, strArr);
        G(i, str, str2);
        D(i, str, false);
    }

    public static void C(int i, String str, String str2) {
        Date date = new Date();
        String str3 = u().format(date);
        String strSubstring = str3.substring(0, 10);
        String strS = s(date);
        if (!h(strS, strSubstring)) {
            Log.e("LogUtils", "create " + strS + " failed!");
            return;
        }
        x(strS, str3.substring(11) + a[i - 2] + "/" + str + str2 + c);
    }

    public static void D(int i, String str, boolean z) {
        if (d.t()) {
            A(i, str, z ? "┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────" : "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────");
        }
    }

    public static void E(String str, String str2) {
        b bVar = d;
        bVar.s.a("Date of Log", str2);
        x(str, bVar.s.toString());
    }

    public static void F(int i, String str, String[] strArr) {
        if (strArr != null) {
            for (String str2 : strArr) {
                if (d.t()) {
                    str2 = "│ " + str2;
                }
                A(i, str, str2);
            }
            if (d.t()) {
                A(i, str, "├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄");
            }
        }
    }

    public static void G(int i, String str, String str2) {
        int length = str2.length();
        int i2 = length / 1100;
        if (i2 <= 0) {
            I(i, str, str2);
            return;
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i4 + 1100;
            I(i, str, str2.substring(i4, i5));
            i3++;
            i4 = i5;
        }
        if (i4 != length) {
            I(i, str, str2.substring(i4, length));
        }
    }

    public static void H(int i, String str, String str2) {
        int length = str2.length();
        b bVar = d;
        int i2 = 1100;
        int i3 = bVar.t() ? (length - 113) / 1100 : length / 1100;
        if (i3 <= 0) {
            A(i, str, str2);
            return;
        }
        int i4 = 1;
        if (!bVar.t()) {
            A(i, str, str2.substring(0, 1100));
            while (i4 < i3) {
                StringBuilder sb = new StringBuilder();
                sb.append(" ");
                sb.append(c);
                int i5 = i2 + 1100;
                sb.append(str2.substring(i2, i5));
                A(i, str, sb.toString());
                i4++;
                i2 = i5;
            }
            if (i2 != length) {
                A(i, str, " " + c + str2.substring(i2, length));
                return;
            }
            return;
        }
        A(i, str, str2.substring(0, 1100) + c + "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────");
        while (i4 < i3) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" ");
            String str3 = c;
            sb2.append(str3);
            sb2.append("┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────");
            sb2.append(str3);
            sb2.append("│ ");
            int i6 = i2 + 1100;
            sb2.append(str2.substring(i2, i6));
            sb2.append(str3);
            sb2.append("└────────────────────────────────────────────────────────────────────────────────────────────────────────────────");
            A(i, str, sb2.toString());
            i4++;
            i2 = i6;
        }
        if (i2 != length - 113) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(" ");
            String str4 = c;
            sb3.append(str4);
            sb3.append("┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────");
            sb3.append(str4);
            sb3.append("│ ");
            sb3.append(str2.substring(i2, length));
            A(i, str, sb3.toString());
        }
    }

    public static void I(int i, String str, String str2) {
        if (!d.t()) {
            A(i, str, str2);
            return;
        }
        for (String str3 : str2.split(c)) {
            A(i, str, "│ " + str3);
        }
    }

    public static String J(int i, Object... objArr) {
        String string;
        if (objArr != null) {
            if (objArr.length == 1) {
                string = o(i, objArr[0]);
            } else {
                StringBuilder sb = new StringBuilder();
                int length = objArr.length;
                for (int i2 = 0; i2 < length; i2++) {
                    Object obj = objArr[i2];
                    sb.append("args");
                    sb.append("[");
                    sb.append(i2);
                    sb.append("]");
                    sb.append(" = ");
                    sb.append(p(obj));
                    sb.append(c);
                }
                string = sb.toString();
            }
        } else {
            string = "null";
        }
        return string.length() == 0 ? "log nothing" : string;
    }

    public static String K(int i, String str, String[] strArr, String str2) {
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        if (d.t()) {
            sb.append(" ");
            String str3 = c;
            sb.append(str3);
            sb.append("┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────");
            sb.append(str3);
            if (strArr != null) {
                for (String str4 : strArr) {
                    sb.append("│ ");
                    sb.append(str4);
                    sb.append(c);
                }
                sb.append("├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄");
                sb.append(c);
            }
            String[] strArrSplit = str2.split(c);
            int length = strArrSplit.length;
            while (i2 < length) {
                String str5 = strArrSplit[i2];
                sb.append("│ ");
                sb.append(str5);
                sb.append(c);
                i2++;
            }
            sb.append("└────────────────────────────────────────────────────────────────────────────────────────────────────────────────");
        } else {
            if (strArr != null) {
                sb.append(" ");
                sb.append(c);
                int length2 = strArr.length;
                while (i2 < length2) {
                    sb.append(strArr[i2]);
                    sb.append(c);
                    i2++;
                }
            }
            sb.append(str2);
        }
        return sb.toString();
    }

    public static g L(String str) {
        b bVar = d;
        if (bVar.h || bVar.u()) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            int iQ = bVar.q() + 3;
            if (iQ >= stackTrace.length) {
                String strT = t(stackTrace[3]);
                if (bVar.h && h.D(str)) {
                    int iIndexOf = strT.indexOf(46);
                    str = iIndexOf == -1 ? strT : strT.substring(0, iIndexOf);
                }
                return new g(str, null, ": ");
            }
            StackTraceElement stackTraceElement = stackTrace[iQ];
            String strT2 = t(stackTraceElement);
            if (bVar.h && h.D(str)) {
                int iIndexOf2 = strT2.indexOf(46);
                str = iIndexOf2 == -1 ? strT2 : strT2.substring(0, iIndexOf2);
            }
            if (bVar.u()) {
                String name = Thread.currentThread().getName();
                Formatter formatter = new Formatter();
                try {
                    String string = formatter.format("%s, %s.%s(%s:%d)", name, stackTraceElement.getClassName(), stackTraceElement.getMethodName(), strT2, Integer.valueOf(stackTraceElement.getLineNumber())).toString();
                    String str2 = " [" + string + "]: ";
                    if (bVar.p() <= 1) {
                        g gVar = new g(str, new String[]{string}, str2);
                        formatter.close();
                        return gVar;
                    }
                    int iMin = Math.min(bVar.p(), stackTrace.length - iQ);
                    String[] strArr = new String[iMin];
                    strArr[0] = string;
                    String string2 = formatter.format("%" + (name.length() + 2) + "s", "").toString();
                    for (int i = 1; i < iMin; i++) {
                        StackTraceElement stackTraceElement2 = stackTrace[i + iQ];
                        strArr[i] = formatter.format("%s%s.%s(%s:%d)", string2, stackTraceElement2.getClassName(), stackTraceElement2.getMethodName(), t(stackTraceElement2), Integer.valueOf(stackTraceElement2.getLineNumber())).toString();
                    }
                    g gVar2 = new g(str, strArr, str2);
                    formatter.close();
                    return gVar2;
                } catch (Throwable th) {
                    try {
                        formatter.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        } else {
            str = bVar.m();
        }
        return new g(str, null, ": ");
    }

    public static void M(Object... objArr) {
        z(2, d.m(), objArr);
    }

    public static void N(String str, Object... objArr) {
        z(2, str, objArr);
    }

    public static void O(Object... objArr) {
        z(5, d.m(), objArr);
    }

    public static void P(String str, Object... objArr) {
        z(5, str, objArr);
    }

    public static boolean h(String str, String str2) {
        File file = new File(str);
        if (file.exists()) {
            return file.isFile();
        }
        if (!h.c(file.getParentFile())) {
            return false;
        }
        try {
            k(str, str2);
            boolean zCreateNewFile = file.createNewFile();
            if (zCreateNewFile) {
                E(str, str2);
            }
            return zCreateNewFile;
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void i(Object... objArr) {
        z(3, d.m(), objArr);
    }

    public static void j(String str, Object... objArr) {
        z(3, str, objArr);
    }

    public static void k(String str, String str2) {
        File[] fileArrListFiles;
        b bVar = d;
        if (bVar.o() > 0 && (fileArrListFiles = new File(str).getParentFile().listFiles(new a())) != null && fileArrListFiles.length > 0) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy_MM_dd", Locale.getDefault());
            try {
                long time = simpleDateFormat.parse(str2).getTime() - (((long) bVar.o()) * 86400000);
                for (final File file : fileArrListFiles) {
                    String name = file.getName();
                    name.length();
                    if (simpleDateFormat.parse(n(name)).getTime() <= time) {
                        f.execute(new Runnable() {
                            @Override
                            public void run() {
                                if (file.delete()) {
                                    return;
                                }
                                Log.e("LogUtils", "delete " + file + " failed!");
                            }
                        });
                    }
                }
            } catch (ParseException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void l(Object... objArr) {
        z(6, d.m(), objArr);
    }

    public static void m(String str, Object... objArr) {
        z(6, str, objArr);
    }

    public static String n(String str) {
        Matcher matcher = Pattern.compile("[0-9]{4}_[0-9]{2}_[0-9]{2}").matcher(str);
        return matcher.find() ? matcher.group() : "";
    }

    public static String o(int i, Object obj) {
        if (obj == null) {
            return "null";
        }
        if (i == 32) {
            return d.h(obj, 32);
        }
        return i == 48 ? d.h(obj, 48) : p(obj);
    }

    public static String p(Object obj) {
        if (obj == null) {
            return "null";
        }
        SimpleArrayMap simpleArrayMap = g;
        if (!simpleArrayMap.isEmpty()) {
            ubc.a(simpleArrayMap.get(q(obj)));
        }
        return d.g(obj);
    }

    public static Class q(Object obj) {
        String string;
        Class<?> cls = obj.getClass();
        if (cls.isAnonymousClass() || cls.isSynthetic()) {
            Type[] genericInterfaces = cls.getGenericInterfaces();
            if (genericInterfaces.length == 1) {
                Type rawType = genericInterfaces[0];
                while (rawType instanceof ParameterizedType) {
                    rawType = ((ParameterizedType) rawType).getRawType();
                }
                string = rawType.toString();
            } else {
                Type genericSuperclass = cls.getGenericSuperclass();
                while (genericSuperclass instanceof ParameterizedType) {
                    genericSuperclass = ((ParameterizedType) genericSuperclass).getRawType();
                }
                string = genericSuperclass.toString();
            }
            if (string.startsWith("class ")) {
                string = string.substring(6);
            } else if (string.startsWith("interface ")) {
                string = string.substring(10);
            }
            try {
                return Class.forName(string);
            } catch (ClassNotFoundException e2) {
                e2.printStackTrace();
            }
        }
        return cls;
    }

    public static b r() {
        return d;
    }

    public static String s(Date date) {
        String strSubstring = u().format(date).substring(0, 10);
        StringBuilder sb = new StringBuilder();
        b bVar = d;
        sb.append(bVar.i());
        sb.append(bVar.l());
        sb.append("_");
        sb.append(strSubstring);
        sb.append("_");
        sb.append(bVar.n());
        sb.append(bVar.j());
        return sb.toString();
    }

    public static String t(StackTraceElement stackTraceElement) {
        String fileName = stackTraceElement.getFileName();
        if (fileName != null) {
            return fileName;
        }
        String className = stackTraceElement.getClassName();
        String[] strArrSplit = className.split("\\.");
        if (strArrSplit.length > 0) {
            className = strArrSplit[strArrSplit.length - 1];
        }
        int iIndexOf = className.indexOf(36);
        if (iIndexOf != -1) {
            className = className.substring(0, iIndexOf);
        }
        return className + ".java";
    }

    public static SimpleDateFormat u() {
        if (e == null) {
            e = new SimpleDateFormat("yyyy_MM_dd HH:mm:ss.SSS ", Locale.getDefault());
        }
        return e;
    }

    public static void v(Object... objArr) {
        z(4, d.m(), objArr);
    }

    public static void w(String str, Object... objArr) {
        z(4, str, objArr);
    }

    public static void x(String str, String str2) {
        b bVar = d;
        b.f(bVar);
        h.P(str, str2, true);
        b.g(bVar);
    }

    public static boolean y(String str) {
        return str.matches("^" + d.l() + "_[0-9]{4}_[0-9]{2}_[0-9]{2}_.*$");
    }

    public static void z(int i, String str, Object... objArr) {
        b bVar = d;
        if (bVar.v()) {
            final int i2 = i & 15;
            int i3 = i & 240;
            if (bVar.r() || bVar.s() || i3 == 16) {
                if (i2 >= bVar.m || i2 >= bVar.n) {
                    final g gVarL = L(str);
                    final String strJ = J(i3, objArr);
                    if (bVar.r() && i3 != 16 && i2 >= bVar.m) {
                        B(i2, gVarL.a, gVarL.b, strJ);
                    }
                    if ((bVar.s() || i3 == 16) && i2 >= bVar.n) {
                        f.execute(new Runnable() {
                            @Override
                            public void run() {
                                LogUtils.C(i2, gVarL.a, gVarL.c + strJ);
                            }
                        });
                    }
                }
            }
        }
    }
}
