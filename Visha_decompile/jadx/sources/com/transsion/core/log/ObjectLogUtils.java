package com.transsion.core.log;

import android.os.Environment;
import android.util.Log;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import defpackage.sa1;
import defpackage.xj1;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
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
import org.apache.commons.lang3.BooleanUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ObjectLogUtils {
    public static final char[] o = {'V', 'D', 'I', 'W', 'E', 'A'};
    public static final String p = System.getProperty("file.separator");
    public static final String q = System.getProperty("line.separator");
    public final int a;
    public final int b;
    public final int c;
    public ExecutorService d;
    public final String e;
    public final String f;
    public final String g;
    public final int h;
    public final Format i;
    public final String j;
    public final String k;
    public final String l;
    public a m;
    public int n;

    public static class a {
        public boolean a = false;
        public boolean b = true;
        public String c = null;
        public boolean d = true;
        public boolean e = true;
        public boolean f = false;
        public boolean g = true;
        public int h = 2;
        public int i = 2;
        public String j;
        public String k;

        public ObjectLogUtils m() {
            return new ObjectLogUtils(this);
        }

        public a n(boolean z) {
            this.g = z;
            return this;
        }

        public a o(boolean z) {
            this.b = z;
            return this;
        }

        public a p(String str) {
            if (ObjectLogUtils.p(str)) {
                this.c = "";
                this.d = true;
            } else {
                this.c = str;
                this.d = false;
            }
            return this;
        }

        public a q(boolean z) {
            this.e = z;
            return this;
        }

        public a r(boolean z) {
            this.a = z;
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("switch: ");
            sb.append(this.a);
            sb.append(ObjectLogUtils.q);
            sb.append("console: ");
            sb.append(this.b);
            sb.append(ObjectLogUtils.q);
            sb.append("tag: ");
            sb.append(this.d ? "null" : this.c);
            sb.append(ObjectLogUtils.q);
            sb.append("head: ");
            sb.append(this.e);
            sb.append(ObjectLogUtils.q);
            sb.append("file: ");
            sb.append(this.f);
            sb.append(ObjectLogUtils.q);
            sb.append("dir: ");
            String str = this.k;
            if (str == null) {
                str = this.j;
            }
            sb.append(str);
            sb.append(ObjectLogUtils.q);
            sb.append("border: ");
            sb.append(this.g);
            sb.append(ObjectLogUtils.q);
            sb.append("consoleFilter: ");
            sb.append(ObjectLogUtils.o[this.h - 2]);
            sb.append(ObjectLogUtils.q);
            sb.append("fileFilter: ");
            sb.append(ObjectLogUtils.o[this.i - 2]);
            return sb.toString();
        }
    }

    public static boolean e(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    public static boolean f(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.isFile();
        }
        if (!e(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static String k(String str) {
        try {
            if (str.startsWith("{")) {
                str = new JSONObject(str).toString(4);
            } else if (str.startsWith("[")) {
                str = new JSONArray(str).toString(4);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return str;
    }

    public static boolean p(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static void s(int i, String str, String str2) {
        Log.println(i, str, str2);
    }

    public void A(String str, Object... objArr) {
        r(5, str, objArr);
    }

    public final String d(String str) {
        if (!this.m.g) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : str.split(q)) {
            sb.append("| ");
            sb.append(str2);
            sb.append(q);
        }
        return sb.toString();
    }

    public void g(Object obj) {
        r(3, this.m.c, obj);
    }

    public void h(String str, Object... objArr) {
        r(3, str, objArr);
    }

    public void i(Object obj) {
        r(6, this.m.c, obj);
    }

    public void j(String str, Object... objArr) {
        r(6, str, objArr);
    }

    public final String l(String str) {
        try {
            StreamSource streamSource = new StreamSource(new StringReader(str));
            StreamResult streamResult = new StreamResult(new StringWriter());
            Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
            transformerNewTransformer.setOutputProperty("indent", BooleanUtils.YES);
            transformerNewTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");
            transformerNewTransformer.transform(streamSource, streamResult);
            return streamResult.getWriter().toString().replaceFirst(">", ">" + q);
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public a m() {
        return this.m;
    }

    public void n(Object obj) {
        r(4, this.m.c, obj);
    }

    public void o(String str, Object... objArr) {
        r(4, str, objArr);
    }

    public void q(String str, String str2) {
        r(35, str, str2);
    }

    public final void r(int i, String str, Object... objArr) {
        try {
            if (!Log.isLoggable(str.length() > 23 ? str.substring(0, 23) : str, 3)) {
                if (!this.m.a) {
                    return;
                }
                if (!this.m.b && !this.m.f) {
                    return;
                }
            }
            int i2 = i & 15;
            int i3 = i & 240;
            if (i2 >= this.m.h || i2 >= this.m.i) {
                String[] strArrW = w(str);
                String strV = v(i3, objArr);
                if (this.m.b && i2 >= this.m.h) {
                    t(i2, strArrW[0], strArrW[1], strV);
                }
                if ((this.m.f || i3 == 16) && i2 >= this.m.i) {
                    u(i2, strArrW[0], strArrW[2] + strV);
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void t(int i, String str, String str2, String str3) {
        if (this.m.e) {
            s(i, str, "\n" + str2);
        } else {
            s(i, str, " \n");
        }
        if (this.m.g) {
            s(i, str, "|---------------------------------------------------------------------------------------------------");
            str3 = d(str3);
        }
        int length = str3.length();
        int i2 = length / FlacTagCreator.DEFAULT_PADDING;
        if (i2 > 0) {
            int i3 = FlacTagCreator.DEFAULT_PADDING;
            s(i, str, str3.substring(0, FlacTagCreator.DEFAULT_PADDING));
            int i4 = 1;
            while (i4 < i2) {
                int i5 = i3 + FlacTagCreator.DEFAULT_PADDING;
                String strSubstring = str3.substring(i3, i5);
                if (this.m.g) {
                    strSubstring = "| " + strSubstring;
                }
                s(i, str, strSubstring);
                i4++;
                i3 = i5;
            }
            String strSubstring2 = str3.substring(i3, length);
            if (this.m.g) {
                strSubstring2 = "| " + strSubstring2;
            }
            s(i, str, strSubstring2);
        } else {
            s(i, str, str3);
        }
        if (this.m.g) {
            s(i, str, "|---------------------------------------------------------------------------------------------------");
        }
    }

    public final void u(int i, final String str, String str2) {
        String str3 = this.i.format(new Date(System.currentTimeMillis()));
        String strSubstring = str3.substring(0, 5);
        String strSubstring2 = str3.substring(6);
        if (this.m.j == null) {
            if (!"mounted".equals(Environment.getExternalStorageState()) || sa1.a(xj1.a()) == null) {
                a aVar = this.m;
                StringBuilder sb = new StringBuilder();
                sb.append(xj1.a().getCacheDir());
                String str4 = p;
                sb.append(str4);
                sb.append("log");
                sb.append(str4);
                aVar.j = sb.toString();
            } else {
                a aVar2 = this.m;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(sa1.a(xj1.a()));
                String str5 = p;
                sb2.append(str5);
                sb2.append("log");
                sb2.append(str5);
                aVar2.j = sb2.toString();
            }
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(this.m.k == null ? this.m.j : this.m.k);
        sb3.append(strSubstring);
        sb3.append(".txt");
        final String string = sb3.toString();
        if (!f(string)) {
            Log.e(str, "log to " + string + " failed!");
            return;
        }
        final String str6 = strSubstring2 + o[i - 2] + "/" + str + str2 + q;
        if (this.d == null) {
            this.d = Executors.newSingleThreadExecutor();
        }
        this.d.execute(new Runnable() {
            @Override
            public void run() throws Throwable {
                BufferedWriter bufferedWriter;
                IOException e;
                BufferedWriter bufferedWriter2 = null;
                try {
                    try {
                        try {
                            bufferedWriter = new BufferedWriter(new FileWriter(string, true));
                            try {
                                bufferedWriter.write(str6);
                                Log.d(str, "log to " + string + " success!");
                                bufferedWriter.close();
                            } catch (IOException e2) {
                                e = e2;
                                e.printStackTrace();
                                Log.e(str, "log to " + string + " failed!");
                                if (bufferedWriter != null) {
                                    bufferedWriter.close();
                                }
                            }
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    } catch (IOException e4) {
                        bufferedWriter = null;
                        e = e4;
                    } catch (Throwable th) {
                        th = th;
                        if (bufferedWriter2 != null) {
                            try {
                                bufferedWriter2.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedWriter2 = bufferedWriter;
                }
            }
        });
    }

    public final String v(int i, Object... objArr) {
        if (objArr == null) {
            return "Log with null object.";
        }
        if (objArr.length == 1) {
            Object obj = objArr[0];
            String string = obj != null ? obj.toString() : "null";
            if (i == 32) {
                return k(string);
            }
            return i == 48 ? l(string) : string;
        }
        StringBuilder sb = new StringBuilder();
        int length = objArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            Object obj2 = objArr[i2];
            sb.append("args");
            sb.append("[");
            sb.append(i2);
            sb.append("]");
            sb.append(" = ");
            sb.append(obj2 == null ? "null" : obj2.toString());
            sb.append(q);
        }
        return sb.toString();
    }

    public final String[] w(String str) {
        String str2;
        if (this.m.d || this.m.e) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[this.n + 5];
            String className = stackTraceElement.getClassName();
            String[] strArrSplit = className.split("\\.");
            if (strArrSplit.length > 0) {
                className = strArrSplit[strArrSplit.length - 1];
            }
            if (className.contains("$")) {
                className = className.split("\\$")[0];
            }
            if (this.m.d && p(str)) {
                str = className;
            }
            if (this.m.e) {
                String string = new Formatter().format("%s, %s(%s.java:%d)", Thread.currentThread().getName(), stackTraceElement.getMethodName(), className, Integer.valueOf(stackTraceElement.getLineNumber())).toString();
                return new String[]{str, string + q, " [" + string + "]: "};
            }
            str2 = str;
        } else {
            str2 = this.m.c;
        }
        return new String[]{str2, "", ": "};
    }

    public void x(int i) {
        this.n = i;
    }

    public void y(String str, Object... objArr) {
        r(2, str, objArr);
    }

    public void z(Object obj) {
        r(5, this.m.c, obj);
    }

    public ObjectLogUtils(a aVar) {
        this.a = 16;
        this.b = 32;
        this.c = 48;
        this.e = "|---------------------------------------------------------------------------------------------------";
        this.f = "| ";
        this.g = "|---------------------------------------------------------------------------------------------------";
        this.h = FlacTagCreator.DEFAULT_PADDING;
        this.i = new SimpleDateFormat("MM-dd HH:mm:ss.SSS ", Locale.getDefault());
        this.j = "Log with null object.";
        this.k = "null";
        this.l = "args";
        new a();
        this.n = 0;
        this.m = aVar;
    }
}
