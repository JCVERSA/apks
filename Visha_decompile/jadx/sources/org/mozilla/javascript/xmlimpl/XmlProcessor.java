package org.mozilla.javascript.xmlimpl;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.apache.commons.lang3.BooleanUtils;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.ScriptRuntime;
import org.w3c.dom.Attr;
import org.w3c.dom.Comment;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

class XmlProcessor implements Serializable {
    private static final long serialVersionUID = 6903514433204808713L;
    public transient DocumentBuilderFactory b;
    public transient TransformerFactory c;
    public transient LinkedBlockingDeque d;
    private RhinoSAXErrorHandler errorHandler = new RhinoSAXErrorHandler();
    private boolean ignoreComments;
    private boolean ignoreProcessingInstructions;
    private boolean ignoreWhitespace;
    private int prettyIndent;
    private boolean prettyPrint;

    public static class RhinoSAXErrorHandler implements ErrorHandler, Serializable {
        private static final long serialVersionUID = 6918417235413084055L;

        private RhinoSAXErrorHandler() {
        }

        public final void a(SAXParseException sAXParseException) {
            throw ScriptRuntime.constructError("TypeError", sAXParseException.getMessage(), sAXParseException.getLineNumber() - 1);
        }

        @Override
        public void error(SAXParseException sAXParseException) {
            a(sAXParseException);
        }

        @Override
        public void fatalError(SAXParseException sAXParseException) {
            a(sAXParseException);
        }

        @Override
        public void warning(SAXParseException sAXParseException) {
            Context.reportWarning(sAXParseException.getMessage());
        }
    }

    public XmlProcessor() {
        setDefault();
        DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
        this.b = documentBuilderFactoryNewInstance;
        documentBuilderFactoryNewInstance.setNamespaceAware(true);
        this.b.setIgnoringComments(false);
        this.c = TransformerFactory.newInstance();
        Context currentContext = Context.getCurrentContext();
        if (currentContext == null || currentContext.hasFeature(20)) {
            e(this.b);
            f(this.c);
        }
        this.d = new LinkedBlockingDeque(Runtime.getRuntime().availableProcessors() * 2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
        this.b = documentBuilderFactoryNewInstance;
        documentBuilderFactoryNewInstance.setNamespaceAware(true);
        this.b.setIgnoringComments(false);
        this.c = TransformerFactory.newInstance();
        Context currentContext = Context.getCurrentContext();
        if (currentContext == null || currentContext.hasFeature(20)) {
            e(this.b);
            f(this.c);
        }
        this.d = new LinkedBlockingDeque(Runtime.getRuntime().availableProcessors() * 2);
    }

    public final void a(List list, Node node) {
        if (node instanceof Comment) {
            list.add(node);
        }
        if (node.getChildNodes() != null) {
            for (int i = 0; i < node.getChildNodes().getLength(); i++) {
                b(list, node.getChildNodes().item(i));
            }
        }
    }

    public final void b(List list, Node node) {
        if (node instanceof ProcessingInstruction) {
            list.add(node);
        }
        if (node.getChildNodes() != null) {
            for (int i = 0; i < node.getChildNodes().getLength(); i++) {
                b(list, node.getChildNodes().item(i));
            }
        }
    }

    public final void c(List list, Node node) {
        if (node instanceof Text) {
            Text text = (Text) node;
            text.setData(text.getData().trim());
            if (text.getData().length() == 0) {
                list.add(node);
            }
        }
        if (node.getChildNodes() != null) {
            for (int i = 0; i < node.getChildNodes().getLength(); i++) {
                c(list, node.getChildNodes().item(i));
            }
        }
    }

    public final void d(Element element, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append('\n');
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(' ');
        }
        String string = sb.toString();
        for (int i3 = 0; i3 < this.prettyIndent; i3++) {
            sb.append(' ');
        }
        String string2 = sb.toString();
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (int i4 = 0; i4 < element.getChildNodes().getLength(); i4++) {
            if (i4 == 1) {
                z = true;
            }
            if (element.getChildNodes().item(i4) instanceof Text) {
                arrayList.add(element.getChildNodes().item(i4));
            } else {
                arrayList.add(element.getChildNodes().item(i4));
                z = true;
            }
        }
        if (z) {
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                element.insertBefore(element.getOwnerDocument().createTextNode(string2), (Node) arrayList.get(i5));
            }
        }
        NodeList childNodes = element.getChildNodes();
        ArrayList arrayList2 = new ArrayList();
        for (int i6 = 0; i6 < childNodes.getLength(); i6++) {
            if (childNodes.item(i6) instanceof Element) {
                arrayList2.add((Element) childNodes.item(i6));
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            d((Element) it.next(), this.prettyIndent + i);
        }
        if (z) {
            element.appendChild(element.getOwnerDocument().createTextNode(string));
        }
    }

    public final void e(DocumentBuilderFactory documentBuilderFactory) {
        try {
            documentBuilderFactory.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
            documentBuilderFactory.setXIncludeAware(false);
            try {
                documentBuilderFactory.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
            } catch (ParserConfigurationException unused) {
            }
            try {
                documentBuilderFactory.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
            } catch (ParserConfigurationException unused2) {
            }
        } catch (ParserConfigurationException e) {
            throw new RuntimeException("XML parser (DocumentBuilderFactory) cannot be securely configured.", e);
        }
    }

    public final String ecmaToXmlString(Node node) {
        StringBuilder sb = new StringBuilder();
        if (node instanceof Text) {
            String data = ((Text) node).getData();
            if (this.prettyPrint) {
                data = data.trim();
            }
            sb.append(h(data));
            return sb.toString();
        }
        if (node instanceof Attr) {
            sb.append(escapeAttributeValue(((Attr) node).getValue()));
            return sb.toString();
        }
        if (node instanceof Comment) {
            sb.append("<!--" + ((Comment) node).getNodeValue() + "-->");
            return sb.toString();
        }
        if (!(node instanceof ProcessingInstruction)) {
            sb.append(g((Element) node));
            return sb.toString();
        }
        ProcessingInstruction processingInstruction = (ProcessingInstruction) node;
        sb.append("<?" + processingInstruction.getTarget() + " " + processingInstruction.getData() + "?>");
        return sb.toString();
    }

    public String escapeAttributeValue(Object obj) {
        String string = ScriptRuntime.toString(obj);
        if (string.length() == 0) {
            return "";
        }
        Element elementCreateElement = newDocument().createElement(CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        elementCreateElement.setAttribute("b", string);
        String strL = l(elementCreateElement);
        return strL.substring(strL.indexOf(34) + 1, strL.lastIndexOf(34));
    }

    public String escapeTextValue(Object obj) {
        if (obj instanceof XMLObjectImpl) {
            return ((XMLObjectImpl) obj).toXMLString();
        }
        String string = ScriptRuntime.toString(obj);
        if (string.length() == 0) {
            return string;
        }
        Element elementCreateElement = newDocument().createElement(CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        elementCreateElement.setTextContent(string);
        String strL = l(elementCreateElement);
        int iIndexOf = strL.indexOf(62) + 1;
        int iLastIndexOf = strL.lastIndexOf(60);
        return iIndexOf < iLastIndexOf ? strL.substring(iIndexOf, iLastIndexOf) : "";
    }

    public final void f(TransformerFactory transformerFactory) {
        try {
            transformerFactory.setFeature("http://javax.xml.XMLConstants/feature/secure-processing", true);
            try {
                transformerFactory.setAttribute("http://javax.xml.XMLConstants/property/accessExternalDTD", "");
            } catch (IllegalArgumentException unused) {
            }
            try {
                transformerFactory.setAttribute("http://javax.xml.XMLConstants/property/accessExternalStylesheet", "");
            } catch (IllegalArgumentException unused2) {
            }
        } catch (TransformerConfigurationException e) {
            throw new RuntimeException("XML parser (TransformerFactory) cannot be securely configured.", e);
        }
    }

    public final String g(Element element) {
        Element element2 = (Element) element.cloneNode(true);
        if (this.prettyPrint) {
            d(element2, 0);
        }
        return l(element2);
    }

    public final int getPrettyIndent() {
        return this.prettyIndent;
    }

    public final String h(String str) {
        return escapeTextValue(str);
    }

    public final DocumentBuilder i() throws ParserConfigurationException {
        DocumentBuilder documentBuilderNewDocumentBuilder = (DocumentBuilder) this.d.pollFirst();
        if (documentBuilderNewDocumentBuilder == null) {
            documentBuilderNewDocumentBuilder = j().newDocumentBuilder();
        }
        documentBuilderNewDocumentBuilder.setErrorHandler(this.errorHandler);
        return documentBuilderNewDocumentBuilder;
    }

    public final boolean isIgnoreComments() {
        return this.ignoreComments;
    }

    public final boolean isIgnoreProcessingInstructions() {
        return this.ignoreProcessingInstructions;
    }

    public final boolean isIgnoreWhitespace() {
        return this.ignoreWhitespace;
    }

    public final boolean isPrettyPrinting() {
        return this.prettyPrint;
    }

    public final DocumentBuilderFactory j() {
        return this.b;
    }

    public final void k(DocumentBuilder documentBuilder) {
        try {
            documentBuilder.reset();
            this.d.offerFirst(documentBuilder);
        } catch (UnsupportedOperationException unused) {
        }
    }

    public final String l(Node node) {
        DOMSource dOMSource = new DOMSource(node);
        StringWriter stringWriter = new StringWriter();
        StreamResult streamResult = new StreamResult(stringWriter);
        try {
            Transformer transformerNewTransformer = this.c.newTransformer();
            transformerNewTransformer.setOutputProperty("omit-xml-declaration", BooleanUtils.YES);
            transformerNewTransformer.setOutputProperty("indent", BooleanUtils.NO);
            transformerNewTransformer.setOutputProperty("method", StringLookupFactory.KEY_XML);
            transformerNewTransformer.transform(dOMSource, streamResult);
            return m(stringWriter.toString());
        } catch (TransformerConfigurationException e) {
            throw new RuntimeException(e);
        } catch (TransformerException e2) {
            throw new RuntimeException(e2);
        }
    }

    public final String m(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) != '\r') {
                sb.append(str.charAt(i));
            } else if (str.charAt(i + 1) != '\n') {
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    public Document newDocument() {
        DocumentBuilder documentBuilderI = null;
        try {
            try {
                documentBuilderI = i();
                Document documentNewDocument = documentBuilderI.newDocument();
                k(documentBuilderI);
                return documentNewDocument;
            } catch (ParserConfigurationException e) {
                throw new RuntimeException(e);
            }
        } catch (Throwable th) {
            if (documentBuilderI != null) {
                k(documentBuilderI);
            }
            throw th;
        }
    }

    public final void setDefault() {
        setIgnoreComments(true);
        setIgnoreProcessingInstructions(true);
        setIgnoreWhitespace(true);
        setPrettyPrinting(true);
        setPrettyIndent(2);
    }

    public final void setIgnoreComments(boolean z) {
        this.ignoreComments = z;
    }

    public final void setIgnoreProcessingInstructions(boolean z) {
        this.ignoreProcessingInstructions = z;
    }

    public final void setIgnoreWhitespace(boolean z) {
        this.ignoreWhitespace = z;
    }

    public final void setPrettyIndent(int i) {
        this.prettyIndent = i;
    }

    public final void setPrettyPrinting(boolean z) {
        this.prettyPrint = z;
    }

    public final Node toXml(String str, String str2) throws SAXException {
        try {
            try {
                try {
                    DocumentBuilder documentBuilderI = i();
                    Document document = documentBuilderI.parse(new InputSource(new StringReader("<parent xmlns=\"" + str + "\">" + str2 + "</parent>")));
                    if (this.ignoreProcessingInstructions) {
                        ArrayList<Node> arrayList = new ArrayList();
                        b(arrayList, document);
                        for (Node node : arrayList) {
                            node.getParentNode().removeChild(node);
                        }
                    }
                    if (this.ignoreComments) {
                        ArrayList<Node> arrayList2 = new ArrayList();
                        a(arrayList2, document);
                        for (Node node2 : arrayList2) {
                            node2.getParentNode().removeChild(node2);
                        }
                    }
                    if (this.ignoreWhitespace) {
                        ArrayList<Node> arrayList3 = new ArrayList();
                        c(arrayList3, document);
                        for (Node node3 : arrayList3) {
                            node3.getParentNode().removeChild(node3);
                        }
                    }
                    NodeList childNodes = document.getDocumentElement().getChildNodes();
                    if (childNodes.getLength() > 1) {
                        throw ScriptRuntime.constructError("SyntaxError", "XML objects may contain at most one node.");
                    }
                    if (childNodes.getLength() == 0) {
                        Text textCreateTextNode = document.createTextNode("");
                        k(documentBuilderI);
                        return textCreateTextNode;
                    }
                    Node nodeItem = childNodes.item(0);
                    document.getDocumentElement().removeChild(nodeItem);
                    k(documentBuilderI);
                    return nodeItem;
                } catch (ParserConfigurationException e) {
                    throw new RuntimeException(e);
                }
            } catch (IOException unused) {
                throw new RuntimeException("Unreachable.");
            }
        } catch (Throwable th) {
            if (0 != 0) {
                k(null);
            }
            throw th;
        }
    }
}
