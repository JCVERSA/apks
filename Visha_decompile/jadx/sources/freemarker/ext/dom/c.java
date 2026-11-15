package freemarker.ext.dom;

import defpackage.c95;
import defpackage.d95;
import defpackage.e95;
import defpackage.f95;
import defpackage.g95;
import defpackage.gc7;
import defpackage.orc;
import defpackage.zfa;
import defpackage.zm1;
import freemarker.template.TemplateModelException;
import freemarker.template.utility.UndeclaredThrowableException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.jaxen.BaseXPath;
import org.jaxen.FunctionContext;
import org.jaxen.JaxenException;
import org.jaxen.NamespaceContext;
import org.jaxen.Navigator;
import org.jaxen.VariableContext;

public class c implements orc {
    public static final zm1 a = new c95(1);
    public static final ArrayList b = new ArrayList();
    public static final NamespaceContext c = new d95();
    public static final VariableContext d = new e95();
    public static final FunctionContext e = new f95();
    public static final zm1 f = new zm1(1);
    public static final Navigator g = new g95();

    @Override
    public zfa a(Object obj, String str) throws TemplateModelException {
        BaseXPath baseXPath;
        try {
            Map map = (Map) a.b();
            synchronized (map) {
                try {
                    baseXPath = (BaseXPath) map.get(str);
                    if (baseXPath == null) {
                        baseXPath = new BaseXPath(str, g);
                        baseXPath.setNamespaceContext(c);
                        baseXPath.setFunctionContext(e);
                        baseXPath.setVariableContext(d);
                        map.put(str, baseXPath);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (obj == null) {
                obj = b;
            }
            List listSelectNodes = baseXPath.selectNodes(obj);
            if (listSelectNodes.size() == 1) {
                return gc7.b.c(listSelectNodes.get(0));
            }
            NodeListModel nodeListModel = new NodeListModel(listSelectNodes, (d) null);
            nodeListModel.xpathSupport = this;
            return nodeListModel;
        } catch (JaxenException e2) {
            throw new TemplateModelException((Exception) e2);
        } catch (UndeclaredThrowableException e3) {
            Throwable undeclaredThrowable = e3.getUndeclaredThrowable();
            if (undeclaredThrowable instanceof TemplateModelException) {
                throw ((TemplateModelException) undeclaredThrowable);
            }
            throw e3;
        }
    }
}
