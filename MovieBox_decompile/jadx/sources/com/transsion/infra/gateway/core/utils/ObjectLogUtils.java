package com.transsion.infra.gateway.core.utils;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.Field;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Formatter;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ObjectLogUtils {

    private static final char[] f44641o = {'V', 'D', 'I', 'W', 'E', 'A'};

    private static final String f44642p = System.getProperty("file.separator");

    private static final String f44643q = System.getProperty("line.separator");

    private final int f44644a;

    private final int f44645b;

    private final int f44646c;

    private ExecutorService f44647d;

    private final String f44648e;

    private final String f44649f;

    private final String f44650g;

    private final int f44651h;

    private final Format f44652i;

    private final String f44653j;

    private final String f44654k;

    private final String f44655l;

    a f44656m;

    private int f44657n;

    public static class a {

        private boolean f44658a = false;

        private boolean f44659b = true;

        private String f44660c = null;

        private boolean f44661d = true;

        private boolean f44662e = true;

        private boolean f44663f = false;

        private boolean f44664g = true;

        private int f44665h = 2;

        private int f44666i = 2;

        private String f44667j;

        private String f44668k;

        public ObjectLogUtils m() {
            return new ObjectLogUtils(this);
        }

        public a n(boolean z10) {
            this.f44664g = z10;
            return this;
        }

        public a o(String str) {
            if (ObjectLogUtils.q(str)) {
                this.f44660c = "";
                this.f44661d = true;
            } else {
                this.f44660c = str;
                this.f44661d = false;
            }
            return this;
        }

        public a p(boolean z10) {
            this.f44662e = z10;
            return this;
        }

        public a q(boolean z10) {
            this.f44658a = z10;
            return this;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("switch: ");
            sb2.append(this.f44658a);
            sb2.append(ObjectLogUtils.f44643q);
            sb2.append("console: ");
            sb2.append(this.f44659b);
            sb2.append(ObjectLogUtils.f44643q);
            sb2.append("tag: ");
            sb2.append(this.f44661d ? "null" : this.f44660c);
            sb2.append(ObjectLogUtils.f44643q);
            sb2.append("head: ");
            sb2.append(this.f44662e);
            sb2.append(ObjectLogUtils.f44643q);
            sb2.append("file: ");
            sb2.append(this.f44663f);
            sb2.append(ObjectLogUtils.f44643q);
            sb2.append("dir: ");
            String str = this.f44668k;
            if (str == null) {
                str = this.f44667j;
            }
            sb2.append(str);
            sb2.append(ObjectLogUtils.f44643q);
            sb2.append("border: ");
            sb2.append(this.f44664g);
            sb2.append(ObjectLogUtils.f44643q);
            sb2.append("consoleFilter: ");
            sb2.append(ObjectLogUtils.f44641o[this.f44665h - 2]);
            sb2.append(ObjectLogUtils.f44643q);
            sb2.append("fileFilter: ");
            sb2.append(ObjectLogUtils.f44641o[this.f44666i - 2]);
            return sb2.toString();
        }
    }

    private String d(String str) {
        if (!this.f44656m.f44664g) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : str.split(f44643q)) {
            sb2.append("| ");
            sb2.append(str2);
            sb2.append(f44643q);
        }
        return sb2.toString();
    }

    private static boolean e(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    private static boolean f(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.isFile();
        }
        if (!e(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private static String k(String str) {
        try {
            if (str.startsWith("{")) {
                str = new JSONObject(str).toString(4);
            } else if (str.startsWith("[")) {
                str = new JSONArray(str).toString(4);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return str;
    }

    private String l(String str) {
        try {
            StreamSource streamSource = new StreamSource(new StringReader(str));
            StreamResult streamResult = new StreamResult(new StringWriter());
            Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
            transformerNewTransformer.setOutputProperty("indent", "yes");
            transformerNewTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");
            transformerNewTransformer.transform(streamSource, streamResult);
            return streamResult.getWriter().toString().replaceFirst(">", ">" + f44643q);
        } catch (Exception e10) {
            e10.printStackTrace();
            return str;
        }
    }

    public static File n(Context context) {
        boolean z10 = true;
        try {
            Field declaredField = Environment.class.getDeclaredField("sUserRequired");
            declaredField.setAccessible(true);
            z10 = declaredField.getBoolean(new Environment());
        } catch (Exception unused) {
        }
        if (z10) {
            return null;
        }
        try {
            return context.getExternalCacheDir();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean q(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!Character.isWhitespace(str.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    private void s(int i10, String str, Object... objArr) {
        if (!Log.isLoggable(str.length() > 23 ? str.substring(0, 23) : str, 3)) {
            if (!this.f44656m.f44658a) {
                return;
            }
            if (!this.f44656m.f44659b && !this.f44656m.f44663f) {
                return;
            }
        }
        int i11 = i10 & 15;
        int i12 = i10 & 240;
        if (i11 >= this.f44656m.f44665h || i11 >= this.f44656m.f44666i) {
            String[] strArrX = x(str);
            String strW = w(i12, objArr);
            if (this.f44656m.f44659b && i11 >= this.f44656m.f44665h) {
                u(i11, strArrX[0], strArrX[1], strW);
            }
            if ((this.f44656m.f44663f || i12 == 16) && i11 >= this.f44656m.f44666i) {
                v(i11, strArrX[0], strArrX[2] + strW);
            }
        }
    }

    private static void t(int i10, String str, String str2) {
        Log.println(i10, str, str2);
    }

    private void u(int i10, String str, String str2, String str3) {
        if (this.f44656m.f44662e) {
            t(i10, str, "\n" + str2);
        } else {
            t(i10, str, " \n");
        }
        if (this.f44656m.f44664g) {
            t(i10, str, "|---------------------------------------------------------------------------------------------------");
            str3 = d(str3);
        }
        int length = str3.length();
        int i11 = length / 4000;
        if (i11 > 0) {
            int i12 = 4000;
            t(i10, str, str3.substring(0, 4000));
            int i13 = 1;
            while (i13 < i11) {
                int i14 = i12 + 4000;
                String strSubstring = str3.substring(i12, i14);
                if (this.f44656m.f44664g) {
                    strSubstring = "| " + strSubstring;
                }
                t(i10, str, strSubstring);
                i13++;
                i12 = i14;
            }
            String strSubstring2 = str3.substring(i12, length);
            if (this.f44656m.f44664g) {
                strSubstring2 = "| " + strSubstring2;
            }
            t(i10, str, strSubstring2);
        } else {
            t(i10, str, str3);
        }
        if (this.f44656m.f44664g) {
            t(i10, str, "|---------------------------------------------------------------------------------------------------");
        }
    }

    private void v(int i10, final String str, String str2) {
        String str3 = this.f44652i.format(new Date(System.currentTimeMillis()));
        String strSubstring = str3.substring(0, 5);
        String strSubstring2 = str3.substring(6);
        if (this.f44656m.f44667j == null) {
            if (!"mounted".equals(Environment.getExternalStorageState()) || n(com.transsion.infra.gateway.core.utils.a.a()) == null) {
                a aVar = this.f44656m;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(com.transsion.infra.gateway.core.utils.a.a().getCacheDir());
                String str4 = f44642p;
                sb2.append(str4);
                sb2.append("log");
                sb2.append(str4);
                aVar.f44667j = sb2.toString();
            } else {
                a aVar2 = this.f44656m;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(n(com.transsion.infra.gateway.core.utils.a.a()));
                String str5 = f44642p;
                sb3.append(str5);
                sb3.append("log");
                sb3.append(str5);
                aVar2.f44667j = sb3.toString();
            }
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.f44656m.f44668k == null ? this.f44656m.f44667j : this.f44656m.f44668k);
        sb4.append(strSubstring);
        sb4.append(".txt");
        final String string = sb4.toString();
        if (!f(string)) {
            Log.e(str, "log to " + string + " failed!");
            return;
        }
        final String str6 = strSubstring2 + f44641o[i10 - 2] + "/" + str + str2 + f44643q;
        if (this.f44647d == null) {
            this.f44647d = Executors.newSingleThreadExecutor();
        }
        this.f44647d.execute(new Runnable() {
            /* JADX WARN: Code duplicated, block: B:30:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override
            public void run() throws Throwable {
                BufferedWriter bufferedWriter;
                IOException e10;
                BufferedWriter bufferedWriter2 = null;
                try {
                    try {
                        try {
                            bufferedWriter = new BufferedWriter(new FileWriter(string, true));
                            try {
                                bufferedWriter.write(str6);
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append("log to ");
                                sb5.append(string);
                                sb5.append(" success!");
                                bufferedWriter.close();
                            } catch (IOException e11) {
                                e10 = e11;
                                e10.printStackTrace();
                                Log.e(str, "log to " + string + " failed!");
                                if (bufferedWriter != null) {
                                    bufferedWriter.close();
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedWriter2 = bufferedWriter;
                            if (bufferedWriter2 != null) {
                                try {
                                    bufferedWriter2.close();
                                } catch (IOException e12) {
                                    e12.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e13) {
                        bufferedWriter = null;
                        e10 = e13;
                    } catch (Throwable th3) {
                        th = th3;
                        if (bufferedWriter2 != null) {
                            bufferedWriter2.close();
                        }
                        throw th;
                    }
                } catch (IOException e14) {
                    e14.printStackTrace();
                }
            }
        });
    }

    private String w(int i10, Object... objArr) {
        if (objArr == null) {
            return "Log with null object.";
        }
        if (objArr.length == 1) {
            Object obj = objArr[0];
            String string = obj != null ? obj.toString() : "null";
            if (i10 == 32) {
                return k(string);
            }
            return i10 == 48 ? l(string) : string;
        }
        StringBuilder sb2 = new StringBuilder();
        int length = objArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            Object obj2 = objArr[i11];
            sb2.append(NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS);
            sb2.append("[");
            sb2.append(i11);
            sb2.append("]");
            sb2.append(" = ");
            sb2.append(obj2 == null ? "null" : obj2.toString());
            sb2.append(f44643q);
        }
        return sb2.toString();
    }

    private String[] x(String str) {
        if (this.f44656m.f44661d || this.f44656m.f44662e) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[this.f44657n + 5];
            String className = stackTraceElement.getClassName();
            String[] strArrSplit = className.split("\\.");
            if (strArrSplit.length > 0) {
                className = strArrSplit[strArrSplit.length - 1];
            }
            if (className.contains("$")) {
                className = className.split("\\$")[0];
            }
            if (this.f44656m.f44661d && q(str)) {
                str = className;
            }
            if (this.f44656m.f44662e) {
                String string = new Formatter().format("%s, %s(%s.java:%d)", Thread.currentThread().getName(), stackTraceElement.getMethodName(), className, Integer.valueOf(stackTraceElement.getLineNumber())).toString();
                return new String[]{str, string + f44643q, " [" + string + "]: "};
            }
        } else {
            str = this.f44656m.f44660c;
        }
        return new String[]{str, "", ": "};
    }

    public void A(String str, Object... objArr) {
        s(5, str, objArr);
    }

    public void g(Object obj) {
        s(3, this.f44656m.f44660c, obj);
    }

    public void h(String str, Object... objArr) {
        s(3, str, objArr);
    }

    public void i(Object obj) {
        s(6, this.f44656m.f44660c, obj);
    }

    public void j(String str, Object... objArr) {
        s(6, str, objArr);
    }

    public a m() {
        return this.f44656m;
    }

    public void o(Object obj) {
        s(4, this.f44656m.f44660c, obj);
    }

    public void p(String str, Object... objArr) {
        s(4, str, objArr);
    }

    public void r(String str, String str2) {
        s(35, str, str2);
    }

    public void y(int i10) {
        this.f44657n = i10;
    }

    public void z(String str, Object... objArr) {
        s(2, str, objArr);
    }

    private ObjectLogUtils(a aVar) {
        this.f44644a = 16;
        this.f44645b = 32;
        this.f44646c = 48;
        this.f44648e = "|---------------------------------------------------------------------------------------------------";
        this.f44649f = "| ";
        this.f44650g = "|---------------------------------------------------------------------------------------------------";
        this.f44651h = 4000;
        this.f44652i = new SimpleDateFormat("MM-dd HH:mm:ss.SSS ", Locale.getDefault());
        this.f44653j = "Log with null object.";
        this.f44654k = "null";
        this.f44655l = NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS;
        new a();
        this.f44657n = 0;
        this.f44656m = aVar;
    }
}
