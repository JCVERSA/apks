package com.transsion.core.log;

import android.util.Log;
import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
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

public abstract class LogUtils {
    public static ExecutorService b;
    public static String c;
    public static String d;
    public static final char[] a = {'V', 'D', 'I', 'W', 'E', 'A'};
    public static boolean e = false;
    public static boolean f = true;
    public static String g = AbstractID3v1Tag.TAG;
    public static boolean h = true;
    public static boolean i = true;
    public static boolean j = false;
    public static boolean k = true;
    public static int l = 2;
    public static int m = 2;
    public static final String n = System.getProperty("file.separator");
    public static final String o = System.getProperty("line.separator");
    public static final Format p = new SimpleDateFormat("MM-dd HH:mm:ss.SSS ", Locale.getDefault());

    public static String a(String str) {
        if (!k) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : str.split(o)) {
            sb.append("| ");
            sb.append(str2);
            sb.append(o);
        }
        return sb.toString();
    }

    public static boolean b(File file) {
        return file != null && (!file.exists() ? !file.mkdirs() : !file.isDirectory());
    }

    public static boolean c(String str) {
        File file = new File(str);
        if (file.exists()) {
            return file.isFile();
        }
        if (!b(file.getParentFile())) {
            return false;
        }
        try {
            return file.createNewFile();
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void d(String str, Object... objArr) {
        j(3, str, objArr);
    }

    public static void e(String str, Object... objArr) {
        j(6, str, objArr);
    }

    public static String f(String str) {
        try {
            if (str.startsWith("{")) {
                str = new JSONObject(str).toString(4);
            } else if (str.startsWith("[")) {
                str = new JSONArray(str).toString(4);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return str;
    }

    public static String g(String str) {
        try {
            StreamSource streamSource = new StreamSource(new StringReader(str));
            StreamResult streamResult = new StreamResult(new StringWriter());
            Transformer transformerNewTransformer = TransformerFactory.newInstance().newTransformer();
            transformerNewTransformer.setOutputProperty("indent", BooleanUtils.YES);
            transformerNewTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");
            transformerNewTransformer.transform(streamSource, streamResult);
            return streamResult.getWriter().toString().replaceFirst(">", ">" + o);
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static void h(Object obj) {
        j(4, g, obj);
    }

    public static boolean i(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isWhitespace(str.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static void j(int i2, String str, Object... objArr) {
        String strSubstring = str.length() > 23 ? str.substring(0, 23) : str;
        if (!xj1.e() && !Log.isLoggable(strSubstring, 3)) {
            if (!e) {
                return;
            }
            if (!f && !j) {
                return;
            }
        }
        int i3 = i2 & 15;
        int i4 = i2 & 240;
        if (i3 >= l || i3 >= m) {
            String[] strArrO = o(str);
            String strN = n(i4, objArr);
            if (f && i3 >= l) {
                l(i3, strArrO[0], strArrO[1], strN);
            }
            if ((j || i4 == 16) && i3 >= m) {
                m(i3, strArrO[0], strArrO[2] + strN);
            }
        }
    }

    public static void k(int i2, String str, String str2) {
        Log.println(i2, str, str2);
    }

    public static void l(int i2, String str, String str2, String str3) {
        if (i) {
            k(i2, str, "\n" + str2);
        } else {
            k(i2, str, " \n");
        }
        if (k) {
            k(i2, str, "|---------------------------------------------------------------------------------------------------");
            str3 = a(str3);
        }
        int length = str3.length();
        int i3 = length / FlacTagCreator.DEFAULT_PADDING;
        if (i3 > 0) {
            int i4 = FlacTagCreator.DEFAULT_PADDING;
            k(i2, str, str3.substring(0, FlacTagCreator.DEFAULT_PADDING));
            int i5 = 1;
            while (i5 < i3) {
                int i6 = i4 + FlacTagCreator.DEFAULT_PADDING;
                String strSubstring = str3.substring(i4, i6);
                if (k) {
                    strSubstring = "| " + strSubstring;
                }
                k(i2, str, strSubstring);
                i5++;
                i4 = i6;
            }
            String strSubstring2 = str3.substring(i4, length);
            if (k) {
                strSubstring2 = "| " + strSubstring2;
            }
            k(i2, str, strSubstring2);
        } else {
            k(i2, str, str3);
        }
        if (k) {
            k(i2, str, "|---------------------------------------------------------------------------------------------------");
        }
    }

    public static void m(int i2, final String str, String str2) {
        String str3 = p.format(new Date(System.currentTimeMillis()));
        String strSubstring = str3.substring(0, 5);
        String strSubstring2 = str3.substring(6);
        StringBuilder sb = new StringBuilder();
        String str4 = d;
        if (str4 == null) {
            str4 = c;
        }
        sb.append(str4);
        sb.append(strSubstring);
        sb.append(".txt");
        final String string = sb.toString();
        if (!c(string)) {
            Log.e(str, "log to " + string + " failed!");
            return;
        }
        final String str5 = strSubstring2 + a[i2 - 2] + "/" + str + str2 + o;
        if (b == null) {
            b = Executors.newSingleThreadExecutor();
        }
        b.execute(new Runnable() {
            @Override
            public void run() throws Throwable {
                BufferedWriter bufferedWriter;
                IOException e2;
                BufferedWriter bufferedWriter2 = null;
                try {
                    try {
                        try {
                            bufferedWriter = new BufferedWriter(new FileWriter(string, true));
                            try {
                                bufferedWriter.write(str5);
                                Log.d(str, "log to " + string + " success!");
                                bufferedWriter.close();
                            } catch (IOException e3) {
                                e2 = e3;
                                e2.printStackTrace();
                                Log.e(str, "log to " + string + " failed!");
                                if (bufferedWriter != null) {
                                    bufferedWriter.close();
                                }
                            }
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    } catch (IOException e5) {
                        bufferedWriter = null;
                        e2 = e5;
                    } catch (Throwable th) {
                        th = th;
                        if (bufferedWriter2 != null) {
                            try {
                                bufferedWriter2.close();
                            } catch (IOException e6) {
                                e6.printStackTrace();
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

    public static String n(int i2, Object... objArr) {
        if (objArr == null) {
            return "Log with null object.";
        }
        if (objArr.length == 1) {
            Object obj = objArr[0];
            String string = obj != null ? obj.toString() : "null";
            if (i2 == 32) {
                return f(string);
            }
            return i2 == 48 ? g(string) : string;
        }
        StringBuilder sb = new StringBuilder();
        int length = objArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            Object obj2 = objArr[i3];
            sb.append("args");
            sb.append("[");
            sb.append(i3);
            sb.append("]");
            sb.append(" = ");
            sb.append(obj2 == null ? "null" : obj2.toString());
            sb.append(o);
        }
        return sb.toString();
    }

    public static String[] o(String str) {
        if (h || i) {
            StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[5];
            String className = stackTraceElement.getClassName();
            String[] strArrSplit = className.split("\\.");
            if (strArrSplit.length > 0) {
                className = strArrSplit[strArrSplit.length - 1];
            }
            if (className.contains("$")) {
                className = className.split("\\$")[0];
            }
            if (h && i(str)) {
                str = className;
            }
            if (i) {
                String string = new Formatter().format("%s, %s(%s.java:%d)", Thread.currentThread().getName(), stackTraceElement.getMethodName(), className, Integer.valueOf(stackTraceElement.getLineNumber())).toString();
                return new String[]{str, string + o, " [" + string + "]: "};
            }
        } else {
            str = g;
        }
        return new String[]{str, "", ": "};
    }

    public static void p(String str, Object... objArr) {
        j(5, str, objArr);
    }
}
