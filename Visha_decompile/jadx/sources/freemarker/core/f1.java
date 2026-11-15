package freemarker.core;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.alibaba.android.arouter.utils.Consts;
import defpackage.e0d;
import defpackage.g0d;
import defpackage.n0a;
import defpackage.q0d;
import defpackage.zfa;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModelException;
import java.util.ArrayList;
import org.apache.commons.lang3.BooleanUtils;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public abstract class f1 {
    public static final String[] a = {"Use ?date, ?time, or ?datetime to tell FreeMarker the exact type.", "If you need a particular format only once, use ?string(pattern), like ?string('dd.MM.yyyy HH:mm:ss'), to specify which fields to display. "};

    public static StringBuffer a(StringBuffer stringBuffer, t0 t0Var) {
        boolean z = ((t0Var instanceof k1) || (t0Var instanceof r1) || (t0Var instanceof i) || (t0Var instanceof c1) || (t0Var instanceof v0) || (t0Var instanceof x0) || (t0Var instanceof m0) || (t0Var instanceof n0) || (t0Var instanceof g1) || (t0Var instanceof j)) ? false : true;
        if (z) {
            stringBuffer.append('(');
        }
        stringBuffer.append(t0Var.o());
        if (z) {
            stringBuffer.append(')');
        }
        return stringBuffer;
    }

    public static String b(String str, Template template, int i, int i2) {
        return c(str, template != null ? template.E0() : null, i, i2);
    }

    public static String c(String str, String str2, int i, int i2) {
        return d(str, str2, null, false, i, i2);
    }

    public static String d(String str, String str2, String str3, boolean z, int i, int i2) {
        String string;
        String string2;
        if (i < 0) {
            string = "?eval-ed string";
            str3 = null;
        } else if (str2 != null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("template ");
            stringBuffer.append(n0a.F(str2));
            string = stringBuffer.toString();
        } else {
            string = "nameless template";
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("in ");
        stringBuffer2.append(string);
        if (str3 != null) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(" in ");
            stringBuffer3.append(z ? "function " : "macro ");
            stringBuffer3.append(n0a.D(str3));
            string2 = stringBuffer3.toString();
        } else {
            string2 = "";
        }
        stringBuffer2.append(string2);
        stringBuffer2.append(" ");
        stringBuffer2.append(str);
        stringBuffer2.append(" ");
        stringBuffer2.append(h(i, i2));
        return stringBuffer2.toString();
    }

    public static String e(e1 e1Var, int i, int i2) {
        Template templateY = e1Var.y();
        return d("at", templateY != null ? templateY.E0() : null, e1Var.q0(), e1Var.s0(), i, i2);
    }

    public static String f(Template template, int i, int i2) {
        return b("at", template, i, i2);
    }

    public static String g(String str, int i, int i2) {
        return c("in", str, i, i2);
    }

    public static String h(int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("line ");
        if (i < 0) {
            i -= -1000000001;
        }
        stringBuffer.append(i);
        stringBuffer.append(", column ");
        stringBuffer.append(i2);
        return stringBuffer.toString();
    }

    public static String i(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "";
        }
        char lowerCase = Character.toLowerCase(str.charAt(0));
        if (lowerCase == 'a' || lowerCase == 'e' || lowerCase == 'i') {
            return "an";
        }
        if (lowerCase == 'h') {
            String lowerCase2 = str.toLowerCase();
            if (lowerCase2.startsWith("has") || lowerCase2.startsWith("hi")) {
                return CmcdData.OBJECT_TYPE_AUDIO_ONLY;
            }
            return lowerCase2.startsWith("ht") ? "an" : "a(n)";
        }
        if (lowerCase == 'u' || lowerCase == 'o') {
            return "a(n)";
        }
        char cCharAt = str.length() > 1 ? str.charAt(1) : (char) 0;
        return (lowerCase != 'x' || cCharAt == 'a' || cCharAt == 'e' || cCharAt == 'i' || cCharAt == 'a' || cCharAt == 'o' || cCharAt == 'u') ? CmcdData.OBJECT_TYPE_AUDIO_ONLY : "an";
    }

    public static TemplateModelException j(String str, int i, int i2) {
        return k(str, i, i2, i2);
    }

    public static TemplateModelException k(String str, int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList(20);
        arrayList.add(str);
        arrayList.add("(");
        if (i3 != 0) {
            arrayList.add("...");
        }
        arrayList.add(") expects ");
        if (i2 == i3) {
            if (i3 == 0) {
                arrayList.add(BooleanUtils.NO);
            } else {
                arrayList.add(new Integer(i3));
            }
        } else if (i3 - i2 == 1) {
            arrayList.add(new Integer(i2));
            arrayList.add(" or ");
            arrayList.add(new Integer(i3));
        } else {
            arrayList.add(new Integer(i2));
            if (i3 != Integer.MAX_VALUE) {
                arrayList.add(" to ");
                arrayList.add(new Integer(i3));
            } else {
                arrayList.add(" or more (unlimited)");
            }
        }
        arrayList.add(" argument");
        if (i3 > 1) {
            arrayList.add("s");
        }
        arrayList.add(" but has received ");
        if (i == 0) {
            arrayList.add("none");
        } else {
            arrayList.add(new Integer(i));
        }
        arrayList.add(Consts.DOT);
        return new _TemplateModelException(arrayList.toArray());
    }

    public static TemplateModelException l(t0 t0Var, UnformattableDateException unformattableDateException) {
        return new _TemplateModelException(unformattableDateException, (Environment) null, new q0d(unformattableDateException.getMessage()).b(t0Var));
    }

    public static _TemplateModelException m(t0 t0Var, UnknownDateTypeFormattingUnsupportedException unknownDateTypeFormattingUnsupportedException) {
        return new _TemplateModelException(unknownDateTypeFormattingUnsupportedException, (Environment) null, new q0d("Can't convert the date-like value to string because it isn't known if it's a date (no time part), time or date-time value.").b(t0Var).j(a));
    }

    public static TemplateException n(String str, Environment environment) {
        return new _MiscTemplateException(environment, new Object[]{"Instantiating ", str, " is not allowed in the template for security reasons."});
    }

    public static TemplateModelException o(String str, int i, Object[] objArr) {
        return new _TemplateModelException(new Object[]{str, "(...) argument #", new Integer(i + 1), " had invalid value: ", objArr});
    }

    public static TemplateModelException p(String str, int i, zfa zfaVar) {
        return r(str, i, "number", zfaVar);
    }

    public static TemplateModelException q(String str, int i, zfa zfaVar) {
        return r(str, i, "string", zfaVar);
    }

    public static TemplateModelException r(String str, int i, String str2, zfa zfaVar) {
        return new _TemplateModelException(new Object[]{str, "(...) expects ", new e0d(str2), " as argument #", new Integer(i + 1), ", but received ", new e0d(new g0d(zfaVar)), Consts.DOT});
    }

    public static TemplateModelException s(String str, Object[] objArr) {
        return new _TemplateModelException(new Object[]{str, "(...) arguments have invalid value: ", objArr});
    }

    public static String t(String str, int i) {
        boolean z;
        if (i < 5) {
            i = 5;
        }
        int iIndexOf = str.indexOf(10);
        boolean z2 = true;
        if (iIndexOf != -1) {
            str = str.substring(0, iIndexOf);
            z = true;
        } else {
            z = false;
        }
        int iIndexOf2 = str.indexOf(13);
        if (iIndexOf2 != -1) {
            str = str.substring(0, iIndexOf2);
            z = true;
        }
        if (str.length() > i) {
            str = str.substring(0, i - 3);
        } else {
            z2 = z;
        }
        if (!z2) {
            return str;
        }
        if (!str.endsWith(Consts.DOT)) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str);
            stringBuffer.append("...");
            return stringBuffer.toString();
        }
        if (!str.endsWith(FileTree.PARENT_DIR)) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(str);
            stringBuffer2.append(FileTree.PARENT_DIR);
            return stringBuffer2.toString();
        }
        if (str.endsWith("...")) {
            return str;
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append(str);
        stringBuffer3.append(Consts.DOT);
        return stringBuffer3.toString();
    }
}
