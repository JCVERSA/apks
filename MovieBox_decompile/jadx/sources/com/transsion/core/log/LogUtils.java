package com.transsion.core.log;

import android.util.Log;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
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
import yj.a;

public abstract class LogUtils {

    private static ExecutorService f42840b;

    private static String f42841c;

    private static String f42842d;

    private static final char[] f42839a = {'V', 'D', 'I', 'W', 'E', 'A'};

    private static boolean f42843e = false;

    private static boolean f42844f = true;

    private static String f42845g = "TAG";

    private static boolean f42846h = true;

    private static boolean f42847i = true;

    private static boolean f42848j = false;

    private static boolean f42849k = true;

    private static int f42850l = 2;

    private static int f42851m = 2;

    private static final String f42852n = System.getProperty("file.separator");

    private static final String f42853o = System.getProperty("line.separator");

    private static final Format f42854p = new SimpleDateFormat("MM-dd HH:mm:ss.SSS ", Locale.getDefault());

    private static String a(String str) {
        if (!f42849k) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : str.split(f42853o)) {
            sb2.append("| ");
            sb2.append(str2);
            sb2.append(f42853o);
        }
        return sb2.toString();
    }

    private static boolean b(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    private static boolean c(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.isFile();
        }
        if (!b(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static void d(String str, Object... objArr) {
        j(3, str, objArr);
    }

    private static String e(String str) {
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

    private static String f(String str) {
        try {
            StreamSource streamSource = new StreamSource(new StringReader(str));
            StreamResult streamResult = new StreamResult(new StringWriter());
            Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
            transformerNewTransformer.setOutputProperty("indent", "yes");
            transformerNewTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");
            transformerNewTransformer.transform(streamSource, streamResult);
            return streamResult.getWriter().toString().replaceFirst(">", ">" + f42853o);
        } catch (Exception e10) {
            e10.printStackTrace();
            return str;
        }
    }

    public static void g(Object obj) {
        j(4, f42845g, obj);
    }

    public static void h(String str, Object... objArr) {
        j(4, str, objArr);
    }

    private static boolean i(String str) {
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

    private static void j(int i10, String str, Object... objArr) {
        String strSubstring = str.length() > 23 ? str.substring(0, 23) : str;
        if (!a.e() && !Log.isLoggable(strSubstring, 3)) {
            if (!f42843e) {
                return;
            }
            if (!f42844f && !f42848j) {
                return;
            }
        }
        int i11 = i10 & 15;
        int i12 = i10 & 240;
        if (i11 >= f42850l || i11 >= f42851m) {
            String[] strArrO = o(str);
            String strN = n(i12, objArr);
            if (f42844f && i11 >= f42850l) {
                l(i11, strArrO[0], strArrO[1], strN);
            }
            if ((f42848j || i12 == 16) && i11 >= f42851m) {
                m(i11, strArrO[0], strArrO[2] + strN);
            }
        }
    }

    private static void k(int i10, String str, String str2) {
        Log.println(i10, str, str2);
    }

    private static void l(int i10, String str, String str2, String str3) {
        if (f42847i) {
            k(i10, str, "\n" + str2);
        } else {
            k(i10, str, " \n");
        }
        if (f42849k) {
            k(i10, str, "|---------------------------------------------------------------------------------------------------");
            str3 = a(str3);
        }
        int length = str3.length();
        int i11 = length / 4000;
        if (i11 > 0) {
            int i12 = 4000;
            k(i10, str, str3.substring(0, 4000));
            int i13 = 1;
            while (i13 < i11) {
                int i14 = i12 + 4000;
                String strSubstring = str3.substring(i12, i14);
                if (f42849k) {
                    strSubstring = "| " + strSubstring;
                }
                k(i10, str, strSubstring);
                i13++;
                i12 = i14;
            }
            String strSubstring2 = str3.substring(i12, length);
            if (f42849k) {
                strSubstring2 = "| " + strSubstring2;
            }
            k(i10, str, strSubstring2);
        } else {
            k(i10, str, str3);
        }
        if (f42849k) {
            k(i10, str, "|---------------------------------------------------------------------------------------------------");
        }
    }

    private static void m(int i10, final String str, String str2) {
        String str3 = f42854p.format(new Date(System.currentTimeMillis()));
        String strSubstring = str3.substring(0, 5);
        String strSubstring2 = str3.substring(6);
        StringBuilder sb2 = new StringBuilder();
        String str4 = f42842d;
        if (str4 == null) {
            str4 = f42841c;
        }
        sb2.append(str4);
        sb2.append(strSubstring);
        sb2.append(".txt");
        final String string = sb2.toString();
        if (!c(string)) {
            Log.e(str, "log to " + string + " failed!");
            return;
        }
        final String str5 = strSubstring2 + f42839a[i10 - 2] + "/" + str + str2 + f42853o;
        if (f42840b == null) {
            f42840b = Executors.newSingleThreadExecutor();
        }
        f42840b.execute(new Runnable() {
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
                                bufferedWriter.write(str5);
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("log to ");
                                sb3.append(string);
                                sb3.append(" success!");
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

    private static String n(int i10, Object... objArr) {
        if (objArr == null) {
            return "Log with null object.";
        }
        if (objArr.length == 1) {
            Object obj = objArr[0];
            String string = obj != null ? obj.toString() : "null";
            if (i10 == 32) {
                return e(string);
            }
            return i10 == 48 ? f(string) : string;
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
            sb2.append(f42853o);
        }
        return sb2.toString();
    }

    private static String[] o(String str) {
        if (f42846h || f42847i) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[5];
            String className = stackTraceElement.getClassName();
            String[] strArrSplit = className.split("\\.");
            if (strArrSplit.length > 0) {
                className = strArrSplit[strArrSplit.length - 1];
            }
            if (className.contains("$")) {
                className = className.split("\\$")[0];
            }
            if (f42846h && i(str)) {
                str = className;
            }
            if (f42847i) {
                String string = new Formatter().format("%s, %s(%s.java:%d)", Thread.currentThread().getName(), stackTraceElement.getMethodName(), className, Integer.valueOf(stackTraceElement.getLineNumber())).toString();
                return new String[]{str, string + f42853o, " [" + string + "]: "};
            }
        } else {
            str = f42845g;
        }
        return new String[]{str, "", ": "};
    }
}
