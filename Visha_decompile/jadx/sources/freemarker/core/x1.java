package freemarker.core;

import androidx.core.app.NotificationCompat;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import defpackage.ifa;
import java.io.Writer;
import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;
import org.greenrobot.greendao.generator.Schema;

public abstract class x1 {
    public static final Set a;

    static {
        TreeSet treeSet = new TreeSet();
        treeSet.add("assign");
        treeSet.add("attempt");
        treeSet.add("break");
        treeSet.add(NotificationCompat.CATEGORY_CALL);
        treeSet.add("case");
        treeSet.add("comment");
        treeSet.add("compress");
        treeSet.add(Schema.DEFAULT_NAME);
        treeSet.add("else");
        treeSet.add("elseif");
        treeSet.add("elseIf");
        treeSet.add("escape");
        treeSet.add("fallback");
        treeSet.add("flush");
        treeSet.add("foreach");
        treeSet.add("forEach");
        treeSet.add("ftl");
        treeSet.add("function");
        treeSet.add("global");
        treeSet.add("if");
        treeSet.add("import");
        treeSet.add("include");
        treeSet.add("items");
        treeSet.add("list");
        treeSet.add("local");
        treeSet.add("lt");
        treeSet.add("macro");
        treeSet.add("nested");
        treeSet.add("noescape");
        treeSet.add("noEscape");
        treeSet.add("noparse");
        treeSet.add("noParse");
        treeSet.add("nt");
        treeSet.add("recover");
        treeSet.add("recurse");
        treeSet.add("return");
        treeSet.add("rt");
        treeSet.add("sep");
        treeSet.add("setting");
        treeSet.add("stop");
        treeSet.add(ClientABTestDTOKt.SWITCH);
        treeSet.add("t");
        treeSet.add("transform");
        treeSet.add("visit");
        a = Collections.unmodifiableSet(treeSet);
    }

    public static Set a(Configurable configurable, boolean z) {
        return configurable.z(z);
    }

    public static ifa[] b(Environment environment) {
        return environment.N0();
    }

    public static void c(ifa[] ifaVarArr, boolean z, Writer writer) {
        Environment.C1(ifaVarArr, z, writer);
    }
}
