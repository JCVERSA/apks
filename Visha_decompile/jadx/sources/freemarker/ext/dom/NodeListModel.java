package freemarker.ext.dom;

import defpackage.e1d;
import defpackage.g17;
import defpackage.gc7;
import defpackage.mga;
import defpackage.n0a;
import defpackage.nga;
import defpackage.ofa;
import defpackage.orc;
import defpackage.zfa;
import freemarker.core.Environment;
import freemarker.template.SimpleScalar;
import freemarker.template.SimpleSequence;
import freemarker.template.TemplateModelException;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

class NodeListModel extends SimpleSequence implements ofa, e1d {
    public static gc7 b = new g17();
    static Class class$freemarker$template$TemplateBooleanModel;
    static Class class$freemarker$template$TemplateDateModel;
    static Class class$freemarker$template$TemplateNodeModel;
    static Class class$freemarker$template$TemplateNumberModel;
    static Class class$freemarker$template$TemplateScalarModel;
    d contextNode;
    orc xpathSupport;

    public NodeListModel(Node node) {
        this(d.q(node));
    }

    public static Class class$(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public final Object[] b(String str) {
        return new Object[]{"This XML query result can't be used as ", str, " because for that it had to contain exactly 1 XML node, but it contains ", new Integer(size()), " nodes. That is, the constructing XML query has found ", isEmpty() ? "no matches." : "multiple matches."};
    }

    public final List c() {
        int size = size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(((d) get(i)).b);
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object[] explainTypeError(Class[] clsArr) throws Throwable {
        Class cls;
        Class cls2;
        Class cls3;
        Class cls4;
        Class cls5;
        for (Class cls6 : clsArr) {
            Class cls7 = class$freemarker$template$TemplateScalarModel;
            if (cls7 == null) {
                cls = cls7;
                Class clsClass$ = class$("freemarker.template.TemplateScalarModel");
                class$freemarker$template$TemplateScalarModel = clsClass$;
                cls = clsClass$;
            }
            cls = cls7;
            if (!cls.isAssignableFrom(cls6)) {
                Class cls8 = class$freemarker$template$TemplateDateModel;
                if (cls8 == null) {
                    cls2 = cls8;
                    Class clsClass$2 = class$("freemarker.template.TemplateDateModel");
                    class$freemarker$template$TemplateDateModel = clsClass$2;
                    cls2 = clsClass$2;
                }
                cls2 = cls8;
                if (!cls2.isAssignableFrom(cls6)) {
                    Class cls9 = class$freemarker$template$TemplateNumberModel;
                    if (cls9 == null) {
                        cls3 = cls9;
                        Class clsClass$3 = class$("freemarker.template.TemplateNumberModel");
                        class$freemarker$template$TemplateNumberModel = clsClass$3;
                        cls3 = clsClass$3;
                    }
                    cls3 = cls9;
                    if (!cls3.isAssignableFrom(cls6)) {
                        Class cls10 = class$freemarker$template$TemplateBooleanModel;
                        if (cls10 == null) {
                            cls4 = cls10;
                            Class clsClass$4 = class$("freemarker.template.TemplateBooleanModel");
                            class$freemarker$template$TemplateBooleanModel = clsClass$4;
                            cls4 = clsClass$4;
                        }
                        cls4 = cls10;
                        if (!cls4.isAssignableFrom(cls6)) {
                            Class cls11 = class$freemarker$template$TemplateNodeModel;
                            if (cls11 == null) {
                                cls5 = cls11;
                                Class clsClass$5 = class$("freemarker.template.TemplateNodeModel");
                                class$freemarker$template$TemplateNodeModel = clsClass$5;
                                cls5 = clsClass$5;
                            }
                            cls5 = cls11;
                            if (cls5.isAssignableFrom(cls6)) {
                                return b("node");
                            }
                        }
                    }
                }
            }
            return b("string");
        }
        return null;
    }

    public NodeListModel filterByName(String str) throws TemplateModelException {
        NodeListModel nodeListModel = new NodeListModel(this.contextNode);
        int size = size();
        if (size == 0) {
            return nodeListModel;
        }
        Environment environmentY0 = Environment.y0();
        for (int i = 0; i < size; i++) {
            d dVar = (d) get(i);
            if ((dVar instanceof b) && ((b) dVar).s(str, environmentY0)) {
                nodeListModel.add(dVar);
            }
        }
        return nodeListModel;
    }

    @Override
    public zfa get(String str) throws TemplateModelException {
        nga ngaVar;
        if (size() == 1) {
            return ((d) get(0)).get(str);
        }
        if (str.startsWith("@@") && (str.equals("@@markup") || str.equals("@@nested_markup") || str.equals("@@text"))) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < size(); i++) {
                stringBuffer.append(((mga) ((d) get(i)).get(str)).getAsString());
            }
            return new SimpleScalar(stringBuffer.toString());
        }
        if (n0a.B(str) || ((str.startsWith("@") && n0a.B(str.substring(1))) || str.equals("*") || str.equals("**") || str.equals("@@") || str.equals("@*"))) {
            NodeListModel nodeListModel = new NodeListModel(this.contextNode);
            for (int i2 = 0; i2 < size(); i2++) {
                d dVar = (d) get(i2);
                if ((dVar instanceof b) && (ngaVar = (nga) ((b) dVar).get(str)) != null) {
                    int size = ngaVar.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        nodeListModel.add(ngaVar.get(i3));
                    }
                }
            }
            return nodeListModel.size() == 1 ? nodeListModel.get(0) : nodeListModel;
        }
        orc xPathSupport = getXPathSupport();
        if (xPathSupport != null) {
            return xPathSupport.a(size() == 0 ? null : c(), str);
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("Key: '");
        stringBuffer2.append(str);
        stringBuffer2.append("' is not legal for a node sequence (");
        stringBuffer2.append(getClass().getName());
        stringBuffer2.append("). This node sequence contains ");
        stringBuffer2.append(size());
        stringBuffer2.append(" node(s). ");
        stringBuffer2.append("Some keys are valid only for node sequences of size 1. ");
        stringBuffer2.append("If you use Xalan (instead of Jaxen), XPath expression keys work only with ");
        stringBuffer2.append("node lists of size 1.");
        throw new TemplateModelException(stringBuffer2.toString());
    }

    public orc getXPathSupport() throws TemplateModelException {
        if (this.xpathSupport == null) {
            d dVar = this.contextNode;
            if (dVar != null) {
                this.xpathSupport = dVar.l();
            } else if (size() > 0) {
                this.xpathSupport = ((d) get(0)).l();
            }
        }
        return this.xpathSupport;
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public NodeListModel(d dVar) {
        super(b);
        this.contextNode = dVar;
    }

    public NodeListModel(NodeList nodeList, d dVar) {
        super(b);
        for (int i = 0; i < nodeList.getLength(); i++) {
            this.list.add(nodeList.item(i));
        }
        this.contextNode = dVar;
    }

    public NodeListModel(NamedNodeMap namedNodeMap, d dVar) {
        super(b);
        for (int i = 0; i < namedNodeMap.getLength(); i++) {
            this.list.add(namedNodeMap.item(i));
        }
        this.contextNode = dVar;
    }

    public NodeListModel(List list, d dVar) {
        super(list, b);
        this.contextNode = dVar;
    }
}
