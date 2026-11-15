package com.transsion.core.log;

import android.os.Environment;
import android.util.Log;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.core.utils.b;
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
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ObjectLogUtils {

    private static final char[] f42855o = {'V', 'D', 'I', 'W', 'E', 'A'};

    private static final String f42856p = System.getProperty("file.separator");

    private static final String f42857q = System.getProperty("line.separator");

    private final int f42858a;

    private final int f42859b;

    private final int f42860c;

    private ExecutorService f42861d;

    private final String f42862e;

    private final String f42863f;

    private final String f42864g;

    private final int f42865h;

    private final Format f42866i;

    private final String f42867j;

    private final String f42868k;

    private final String f42869l;

    a f42870m;

    private int f42871n;

    public static class a {

        private boolean f42872a = false;

        private boolean f42873b = true;

        private String f42874c = null;

        private boolean f42875d = true;

        private boolean f42876e = true;

        private boolean f42877f = false;

        private boolean f42878g = true;

        private int f42879h = 2;

        private int f42880i = 2;

        private String f42881j;

        private String f42882k;

        public ObjectLogUtils m() {
            return new ObjectLogUtils(this);
        }

        public a n(boolean z10) {
            this.f42878g = z10;
            return this;
        }

        public a o(boolean z10) {
            this.f42873b = z10;
            return this;
        }

        public a p(String str) {
            if (ObjectLogUtils.p(str)) {
                this.f42874c = "";
                this.f42875d = true;
            } else {
                this.f42874c = str;
                this.f42875d = false;
            }
            return this;
        }

        public a q(boolean z10) {
            this.f42876e = z10;
            return this;
        }

        public a r(boolean z10) {
            this.f42872a = z10;
            return this;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("switch: ");
            sb2.append(this.f42872a);
            sb2.append(ObjectLogUtils.f42857q);
            sb2.append("console: ");
            sb2.append(this.f42873b);
            sb2.append(ObjectLogUtils.f42857q);
            sb2.append("tag: ");
            sb2.append(this.f42875d ? "null" : this.f42874c);
            sb2.append(ObjectLogUtils.f42857q);
            sb2.append("head: ");
            sb2.append(this.f42876e);
            sb2.append(ObjectLogUtils.f42857q);
            sb2.append("file: ");
            sb2.append(this.f42877f);
            sb2.append(ObjectLogUtils.f42857q);
            sb2.append("dir: ");
            String str = this.f42882k;
            if (str == null) {
                str = this.f42881j;
            }
            sb2.append(str);
            sb2.append(ObjectLogUtils.f42857q);
            sb2.append("border: ");
            sb2.append(this.f42878g);
            sb2.append(ObjectLogUtils.f42857q);
            sb2.append("consoleFilter: ");
            sb2.append(ObjectLogUtils.f42855o[this.f42879h - 2]);
            sb2.append(ObjectLogUtils.f42857q);
            sb2.append("fileFilter: ");
            sb2.append(ObjectLogUtils.f42855o[this.f42880i - 2]);
            return sb2.toString();
        }
    }

    private String d(String str) {
        if (!this.f42870m.f42878g) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : str.split(f42857q)) {
            sb2.append("| ");
            sb2.append(str2);
            sb2.append(f42857q);
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
            return streamResult.getWriter().toString().replaceFirst(">", ">" + f42857q);
        } catch (Exception e10) {
            e10.printStackTrace();
            return str;
        }
    }

    public static boolean p(String str) {
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

    private void r(int i10, String str, Object... objArr) {
        try {
            if (!Log.isLoggable(str.length() > 23 ? str.substring(0, 23) : str, 3)) {
                if (!this.f42870m.f42872a) {
                    return;
                }
                if (!this.f42870m.f42873b && !this.f42870m.f42877f) {
                    return;
                }
            }
            int i11 = i10 & 15;
            int i12 = i10 & 240;
            if (i11 >= this.f42870m.f42879h || i11 >= this.f42870m.f42880i) {
                String[] strArrW = w(str);
                String strV = v(i12, objArr);
                if (this.f42870m.f42873b && i11 >= this.f42870m.f42879h) {
                    t(i11, strArrW[0], strArrW[1], strV);
                }
                if ((this.f42870m.f42877f || i12 == 16) && i11 >= this.f42870m.f42880i) {
                    u(i11, strArrW[0], strArrW[2] + strV);
                }
            }
        } catch (Exception unused) {
        }
    }

    private static void s(int i10, String str, String str2) {
        Log.println(i10, str, str2);
    }

    private void t(int i10, String str, String str2, String str3) {
        if (this.f42870m.f42876e) {
            s(i10, str, "\n" + str2);
        } else {
            s(i10, str, " \n");
        }
        if (this.f42870m.f42878g) {
            s(i10, str, "|---------------------------------------------------------------------------------------------------");
            str3 = d(str3);
        }
        int length = str3.length();
        int i11 = length / 4000;
        if (i11 > 0) {
            int i12 = 4000;
            s(i10, str, str3.substring(0, 4000));
            int i13 = 1;
            while (i13 < i11) {
                int i14 = i12 + 4000;
                String strSubstring = str3.substring(i12, i14);
                if (this.f42870m.f42878g) {
                    strSubstring = "| " + strSubstring;
                }
                s(i10, str, strSubstring);
                i13++;
                i12 = i14;
            }
            String strSubstring2 = str3.substring(i12, length);
            if (this.f42870m.f42878g) {
                strSubstring2 = "| " + strSubstring2;
            }
            s(i10, str, strSubstring2);
        } else {
            s(i10, str, str3);
        }
        if (this.f42870m.f42878g) {
            s(i10, str, "|---------------------------------------------------------------------------------------------------");
        }
    }

    private void u(int i10, final String str, String str2) {
        String str3 = this.f42866i.format(new Date(System.currentTimeMillis()));
        String strSubstring = str3.substring(0, 5);
        String strSubstring2 = str3.substring(6);
        if (this.f42870m.f42881j == null) {
            if (!"mounted".equals(Environment.getExternalStorageState()) || b.a(yj.a.a()) == null) {
                a aVar = this.f42870m;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(yj.a.a().getCacheDir());
                String str4 = f42856p;
                sb2.append(str4);
                sb2.append("log");
                sb2.append(str4);
                aVar.f42881j = sb2.toString();
            } else {
                a aVar2 = this.f42870m;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(b.a(yj.a.a()));
                String str5 = f42856p;
                sb3.append(str5);
                sb3.append("log");
                sb3.append(str5);
                aVar2.f42881j = sb3.toString();
            }
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.f42870m.f42882k == null ? this.f42870m.f42881j : this.f42870m.f42882k);
        sb4.append(strSubstring);
        sb4.append(".txt");
        final String string = sb4.toString();
        if (!f(string)) {
            Log.e(str, "log to " + string + " failed!");
            return;
        }
        final String str6 = strSubstring2 + f42855o[i10 - 2] + "/" + str + str2 + f42857q;
        if (this.f42861d == null) {
            this.f42861d = Executors.newSingleThreadExecutor();
        }
        this.f42861d.execute(new Runnable() {
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

    private String v(int i10, Object... objArr) {
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
            sb2.append(f42857q);
        }
        return sb2.toString();
    }

    private String[] w(String str) {
        if (this.f42870m.f42875d || this.f42870m.f42876e) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[this.f42871n + 5];
            String className = stackTraceElement.getClassName();
            String[] strArrSplit = className.split("\\.");
            if (strArrSplit.length > 0) {
                className = strArrSplit[strArrSplit.length - 1];
            }
            if (className.contains("$")) {
                className = className.split("\\$")[0];
            }
            if (this.f42870m.f42875d && p(str)) {
                str = className;
            }
            if (this.f42870m.f42876e) {
                String string = new Formatter().format("%s, %s(%s.java:%d)", Thread.currentThread().getName(), stackTraceElement.getMethodName(), className, Integer.valueOf(stackTraceElement.getLineNumber())).toString();
                return new String[]{str, string + f42857q, " [" + string + "]: "};
            }
        } else {
            str = this.f42870m.f42874c;
        }
        return new String[]{str, "", ": "};
    }

    public void A(String str, Object... objArr) {
        r(5, str, objArr);
    }

    public void g(Object obj) {
        r(3, this.f42870m.f42874c, obj);
    }

    public void h(String str, Object... objArr) {
        r(3, str, objArr);
    }

    public void i(Object obj) {
        r(6, this.f42870m.f42874c, obj);
    }

    public void j(String str, Object... objArr) {
        r(6, str, objArr);
    }

    public a m() {
        return this.f42870m;
    }

    public void n(Object obj) {
        r(4, this.f42870m.f42874c, obj);
    }

    public void o(String str, Object... objArr) {
        r(4, str, objArr);
    }

    public void q(String str, String str2) {
        r(35, str, str2);
    }

    public void x(int i10) {
        this.f42871n = i10;
    }

    public void y(String str, Object... objArr) {
        r(2, str, objArr);
    }

    public void z(Object obj) {
        r(5, this.f42870m.f42874c, obj);
    }

    private ObjectLogUtils(a aVar) {
        this.f42858a = 16;
        this.f42859b = 32;
        this.f42860c = 48;
        this.f42862e = "|---------------------------------------------------------------------------------------------------";
        this.f42863f = "| ";
        this.f42864g = "|---------------------------------------------------------------------------------------------------";
        this.f42865h = 4000;
        this.f42866i = new SimpleDateFormat("MM-dd HH:mm:ss.SSS ", Locale.getDefault());
        this.f42867j = "Log with null object.";
        this.f42868k = "null";
        this.f42869l = NativeComponentConstants.KEY_COMPONENT_EVENT_ARGS;
        new a();
        this.f42871n = 0;
        this.f42870m = aVar;
    }
}
