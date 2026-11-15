package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.ListIterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Regex;

public final class xlb {
    public static final xlb a;
    public static final String b;
    public static final boolean c;

    static {
        xlb xlbVar = new xlb();
        a = xlbVar;
        b = xlbVar.b("ro.tranos.version");
        c = xlbVar.c("16.1.0");
    }

    public static final String d(Context context, int i) {
        y45.j(context, "context");
        InputStream inputStreamOpenRawResource = context.getResources().openRawResource(i);
        try {
            y45.i(inputStreamOpenRawResource, "inputStream");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenRawResource, qv0.b), 8192);
            try {
                String strC = mha.c(bufferedReader);
                ly0.a(bufferedReader, null);
                ly0.a(inputStreamOpenRawResource, null);
                return strC;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ly0.a(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                ly0.a(inputStreamOpenRawResource, th3);
                throw th4;
            }
        }
    }

    public final boolean a() {
        return c;
    }

    public final String b(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("ReadRawFileUtil", "getSystemProperties Exception " + e.getMessage());
            return "";
        }
    }

    public final boolean c(String str) {
        List listK;
        List listK2;
        if (!TextUtils.isEmpty(str)) {
            String str2 = b;
            if (!TextUtils.isEmpty(str2)) {
                Pattern patternCompile = Pattern.compile("[0-9.]+");
                Matcher matcher = patternCompile.matcher(str2);
                Matcher matcher2 = patternCompile.matcher(str);
                String strGroup = "";
                String strGroup2 = "";
                while (matcher.find()) {
                    strGroup2 = matcher.group();
                    y45.i(strGroup2, "matcher.group()");
                }
                while (matcher2.find()) {
                    strGroup = matcher2.group();
                    y45.i(strGroup, "targetMatcher.group()");
                }
                if (g1a.E(strGroup2, strGroup, true)) {
                    return true;
                }
                List<String> listSplit = new Regex("\\.").split(strGroup2, 0);
                if (listSplit.isEmpty()) {
                    listK = y71.k();
                    break;
                }
                ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        listK = y71.k();
                        break;
                    }
                    if (listIterator.previous().length() != 0) {
                        listK = i81.U0(listSplit, listIterator.nextIndex() + 1);
                        break;
                    }
                }
                String[] strArr = (String[]) listK.toArray(new String[0]);
                List<String> listSplit2 = new Regex("\\.").split(strGroup, 0);
                if (listSplit2.isEmpty()) {
                    listK2 = y71.k();
                    break;
                }
                ListIterator<String> listIterator2 = listSplit2.listIterator(listSplit2.size());
                while (true) {
                    if (!listIterator2.hasPrevious()) {
                        listK2 = y71.k();
                        break;
                    }
                    if (listIterator2.previous().length() != 0) {
                        listK2 = i81.U0(listSplit2, listIterator2.nextIndex() + 1);
                        break;
                    }
                }
                String[] strArr2 = (String[]) listK2.toArray(new String[0]);
                for (int i = 0; i < strArr.length && i < strArr2.length; i++) {
                    String str3 = strArr[i];
                    y45.g(str3);
                    int i2 = Integer.parseInt(str3);
                    String str4 = strArr2[i];
                    y45.g(str4);
                    int i3 = Integer.parseInt(str4);
                    if (i2 > i3) {
                        return true;
                    }
                    if (i2 < i3) {
                        return false;
                    }
                }
                if (strArr.length > strArr2.length) {
                    int length = strArr.length;
                    for (int length2 = strArr2.length; length2 < length; length2++) {
                        String str5 = strArr[length2];
                        y45.g(str5);
                        if (Integer.parseInt(str5) >= 0) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }
}
