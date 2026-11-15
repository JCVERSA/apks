package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import freemarker.core.Environment;
import freemarker.core._MiscTemplateException;
import freemarker.template.Template;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public class js7 implements afa {
    public final Set d;
    public final List e;
    public final Set f;

    public js7(Set set, List list) {
        this.d = set == null ? Collections.EMPTY_SET : set;
        if (list == null) {
            this.f = Collections.EMPTY_SET;
            this.e = Collections.EMPTY_LIST;
            return;
        }
        this.f = new HashSet();
        this.e = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String strSubstring = (String) it.next();
            strSubstring = strSubstring.startsWith("/") ? strSubstring.substring(1) : strSubstring;
            if (strSubstring.endsWith("*")) {
                this.e.add(strSubstring.substring(0, strSubstring.length() - 1));
            } else {
                this.f.add(strSubstring);
            }
        }
    }

    @Override
    public Class a(String str, Environment environment, Template template) throws _MiscTemplateException {
        String strC = c(template);
        if (strC != null && (this.f.contains(strC) || b(strC))) {
            return afa.b.a(str, environment, template);
        }
        if (!this.d.contains(str)) {
            throw new _MiscTemplateException(environment, new Object[]{"Instantiating ", str, " is not allowed in the template for security reasons. (If you run into this problem when using ?new in a template, you may want to check the \"", "new_builtin_class_resolver", "\" setting in the FreeMarker configuration.)"});
        }
        try {
            return hx0.d(str);
        } catch (ClassNotFoundException e) {
            throw new _MiscTemplateException(e, environment);
        }
    }

    public final boolean b(String str) {
        for (int i = 0; i < this.e.size(); i++) {
            if (str.startsWith((String) this.e.get(i))) {
                return true;
            }
        }
        return false;
    }

    public String c(Template template) {
        String strY0;
        if (template == null || (strY0 = template.y0()) == null) {
            return null;
        }
        String strP = strY0.indexOf(37) != -1 ? n0a.P(n0a.P(n0a.P(n0a.P(n0a.P(n0a.P(strY0, "%2e", Consts.DOT, false, false), "%2E", Consts.DOT, false, false), "%2f", "/", false, false), "%2F", "/", false, false), "%5c", "\\", false, false), "%5C", "\\", false, false) : strY0;
        int iIndexOf = strP.indexOf(FileTree.PARENT_DIR);
        if (iIndexOf != -1) {
            int i = iIndexOf - 1;
            byte bCharAt = i >= 0 ? strP.charAt(i) : (byte) -1;
            int i2 = iIndexOf + 2;
            byte bCharAt2 = i2 < strP.length() ? strP.charAt(i2) : (byte) -1;
            if ((bCharAt == -1 || bCharAt == 47 || bCharAt == 92) && (bCharAt2 == -1 || bCharAt2 == 47 || bCharAt2 == 92)) {
                return null;
            }
        }
        return strY0.startsWith("/") ? strY0.substring(1) : strY0;
    }
}
