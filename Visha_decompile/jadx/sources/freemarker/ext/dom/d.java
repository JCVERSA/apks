package freemarker.ext.dom;

import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import defpackage.c8;
import defpackage.e1d;
import defpackage.gga;
import defpackage.h17;
import defpackage.iw2;
import defpackage.lpc;
import defpackage.lv0;
import defpackage.ml;
import defpackage.nga;
import defpackage.ofa;
import defpackage.orc;
import defpackage.pq5;
import defpackage.s6a;
import defpackage.src;
import defpackage.uu7;
import defpackage.zfa;
import defpackage.zm1;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateModelException;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import org.w3c.dom.Attr;
import org.w3c.dom.CDATASection;
import org.w3c.dom.CharacterData;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;

public abstract class d implements gga, ofa, nga, c8, lpc, e1d {
    public static final pq5 e = pq5.k("freemarker.dom");
    public static final Object f = new Object();
    public static final Map g = Collections.synchronizedMap(new WeakHashMap());
    public static orc h;
    public static Class i;
    public static Class j;
    public static Class k;
    public static Class l;
    public final Node b;
    public nga c;
    public d d;

    static {
        try {
            m();
        } catch (Exception unused) {
        }
        if (i == null) {
            pq5 pq5Var = e;
            if (pq5Var.t()) {
                pq5Var.z("No XPath support is available.");
            }
        }
    }

    public d(Node node) {
        this.b = node;
    }

    public static Class b(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public static String e(Node node) {
        if ((node instanceof Text) || (node instanceof CDATASection)) {
            return ((CharacterData) node).getData();
        }
        String string = "";
        if (!(node instanceof Element)) {
            return node instanceof Document ? e(((Document) node).getDocumentElement()) : "";
        }
        NodeList childNodes = node.getChildNodes();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(string);
            stringBuffer.append(e(childNodes.item(i2)));
            string = stringBuffer.toString();
        }
        return string;
    }

    public static void m() {
        synchronized (f) {
            i = null;
            h = null;
            try {
                p();
            } catch (Exception unused) {
            }
            if (i == null) {
                try {
                    o();
                } catch (Exception unused2) {
                }
            }
            if (i == null) {
                try {
                    n();
                } catch (Exception unused3) {
                }
            }
        }
    }

    public static void n() throws ClassNotFoundException {
        Class.forName("org.jaxen.dom.DOMXPath");
        zm1 zm1Var = c.a;
        h = (orc) c.class.newInstance();
        synchronized (f) {
            i = c.class;
        }
        pq5 pq5Var = e;
        if (pq5Var.q()) {
            pq5Var.d("Using Jaxen classes for XPath support");
        }
    }

    public static void o() throws ClassNotFoundException {
        Class.forName("com.sun.org.apache.xpath.internal.XPath");
        PrefixResolver prefixResolver = s6a.a;
        synchronized (f) {
            i = s6a.class;
        }
        pq5 pq5Var = e;
        if (pq5Var.q()) {
            pq5Var.d("Using Sun's internal Xalan classes for XPath support");
        }
    }

    public static void p() throws ClassNotFoundException {
        Class.forName("org.apache.xpath.XPath");
        org.apache.xml.utils.PrefixResolver prefixResolver = src.a;
        synchronized (f) {
            i = src.class;
        }
        pq5 pq5Var = e;
        if (pq5Var.q()) {
            pq5Var.d("Using Xalan classes for XPath support");
        }
    }

    public static d q(Node node) {
        if (node == null) {
            return null;
        }
        switch (node.getNodeType()) {
            case 1:
                return new b((Element) node);
            case 2:
                return new ml((Attr) node);
            case 3:
            case 4:
            case 8:
                return new lv0((CharacterData) node);
            case 5:
            case 6:
            default:
                return null;
            case 7:
                return new uu7((ProcessingInstruction) node);
            case 9:
                return new a((Document) node);
            case 10:
                return new iw2((DocumentType) node);
        }
    }

    @Override
    public gga a() {
        if (this.d == null) {
            Node parentNode = this.b.getParentNode();
            if (parentNode == null) {
                Node node = this.b;
                if (node instanceof Attr) {
                    parentNode = ((Attr) node).getOwnerElement();
                }
            }
            this.d = q(parentNode);
        }
        return this.d;
    }

    public String c() {
        return d();
    }

    public boolean equals(Object obj) {
        return obj != null && obj.getClass() == getClass() && ((d) obj).b.equals(this.b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object[] explainTypeError(Class[] clsArr) throws Throwable {
        Class cls;
        Class cls2;
        Class cls3;
        for (Class cls4 : clsArr) {
            Class cls5 = j;
            if (cls5 == null) {
                cls = cls5;
                Class clsB = b("freemarker.template.TemplateDateModel");
                j = clsB;
                cls = clsB;
            }
            cls = cls5;
            if (!cls.isAssignableFrom(cls4)) {
                Class cls6 = k;
                if (cls6 == null) {
                    cls2 = cls6;
                    Class clsB2 = b("freemarker.template.TemplateNumberModel");
                    k = clsB2;
                    cls2 = clsB2;
                }
                cls2 = cls6;
                if (!cls2.isAssignableFrom(cls4)) {
                    Class cls7 = l;
                    if (cls7 == null) {
                        cls3 = cls7;
                        Class clsB3 = b("freemarker.template.TemplateBooleanModel");
                        l = clsB3;
                        cls3 = clsB3;
                    }
                    cls3 = cls7;
                    if (!cls3.isAssignableFrom(cls4)) {
                    }
                }
            }
            return new Object[]{"XML node values are always strings (text), that is, they can't be used as number, date/time/datetime or boolean without explicit conversion (such as someNode?number, someNode?datetime.xs, someNode?date.xs, someNode?time.xs, someNode?boolean)."};
        }
        return null;
    }

    @Override
    public String g() {
        short nodeType = this.b.getNodeType();
        if (nodeType != 2 && nodeType != 1) {
            return null;
        }
        String namespaceURI = this.b.getNamespaceURI();
        if (namespaceURI == null && nodeType == 1) {
            return "";
        }
        if ("".equals(namespaceURI) && nodeType == 2) {
            return null;
        }
        return namespaceURI;
    }

    public zfa get(String str) throws TemplateModelException {
        if (str.startsWith("@@")) {
            if (str.equals("@@text")) {
                return new SimpleScalar(e(this.b));
            }
            if (str.equals("@@namespace")) {
                String namespaceURI = this.b.getNamespaceURI();
                if (namespaceURI == null) {
                    return null;
                }
                return new SimpleScalar(namespaceURI);
            }
            if (str.equals("@@local_name")) {
                String localName = this.b.getLocalName();
                if (localName == null) {
                    localName = d();
                }
                return new SimpleScalar(localName);
            }
            if (str.equals("@@markup")) {
                StringBuffer stringBuffer = new StringBuffer();
                new h17(this.b).f(this.b, stringBuffer);
                return new SimpleScalar(stringBuffer.toString());
            }
            if (str.equals("@@nested_markup")) {
                StringBuffer stringBuffer2 = new StringBuffer();
                new h17(this.b).g(this.b.getChildNodes(), stringBuffer2);
                return new SimpleScalar(stringBuffer2.toString());
            }
            if (str.equals("@@qname")) {
                String strC = c();
                if (strC == null) {
                    return null;
                }
                return new SimpleScalar(strC);
            }
        }
        orc orcVarL = l();
        if (orcVarL != null) {
            return orcVarL.a(this.b, str);
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append("Can't try to resolve the XML query key, because no XPath support is available. It's either malformed or an XPath expression: ");
        stringBuffer3.append(str);
        throw new TemplateModelException(stringBuffer3.toString());
    }

    @Override
    public Object getAdaptedObject(Class cls) {
        return this.b;
    }

    @Override
    public Object getWrappedObject() {
        return this.b;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override
    public final String i() throws TemplateModelException {
        short nodeType = this.b.getNodeType();
        switch (nodeType) {
            case 1:
                return "element";
            case 2:
                return "attribute";
            case 3:
            case 4:
                return "text";
            case 5:
                return "entity_reference";
            case 6:
                return "entity";
            case 7:
                return "pi";
            case 8:
                return "comment";
            case 9:
                return "document";
            case 10:
                return "document_type";
            case 11:
                return "document_fragment";
            case 12:
                return "notation";
            default:
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unknown node type: ");
                stringBuffer.append((int) nodeType);
                stringBuffer.append(". This should be impossible!");
                throw new TemplateModelException(stringBuffer.toString());
        }
    }

    @Override
    public nga k() {
        if (this.c == null) {
            this.c = new NodeListModel(this.b.getChildNodes(), this);
        }
        return this.c;
    }

    public orc l() {
        orc orcVar;
        orc orcVar2 = h;
        if (orcVar2 != null) {
            return orcVar2;
        }
        Document ownerDocument = this.b.getOwnerDocument();
        if (ownerDocument == null) {
            ownerDocument = (Document) this.b;
        }
        synchronized (ownerDocument) {
            Map map = g;
            WeakReference weakReference = (WeakReference) map.get(ownerDocument);
            orcVar = weakReference != null ? (orc) weakReference.get() : null;
            if (orcVar == null) {
                try {
                    orc orcVar3 = (orc) i.newInstance();
                    try {
                        map.put(ownerDocument, new WeakReference(orcVar3));
                        orcVar = orcVar3;
                    } catch (Exception e2) {
                        e = e2;
                        orcVar = orcVar3;
                        e.h("Error instantiating xpathSupport class", e);
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            }
        }
        return orcVar;
    }

    @Override
    public final int size() {
        return 1;
    }

    @Override
    public final zfa get(int i2) {
        if (i2 == 0) {
            return this;
        }
        return null;
    }
}
