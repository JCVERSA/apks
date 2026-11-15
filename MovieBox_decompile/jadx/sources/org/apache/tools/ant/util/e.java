package org.apache.tools.ant.util;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.apache.tools.ant.BuildException;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

public class e {

    private static final d f68407a = d.k();

    private static SAXParserFactory f68408b = null;

    private static SAXParserFactory f68409c = null;

    private static DocumentBuilderFactory f68410d = null;

    private static BuildException a(SAXException sAXException) {
        Exception exception = sAXException.getException();
        return exception != null ? new BuildException(exception) : new BuildException(sAXException);
    }

    public static synchronized SAXParserFactory b() {
        try {
            if (f68409c == null) {
                SAXParserFactory sAXParserFactoryD = d();
                f68409c = sAXParserFactoryD;
                sAXParserFactoryD.setNamespaceAware(true);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f68409c;
    }

    public static XMLReader c() {
        try {
            return e(b()).getXMLReader();
        } catch (SAXException e10) {
            throw a(e10);
        }
    }

    public static SAXParserFactory d() {
        try {
            return SAXParserFactory.newInstance();
        } catch (FactoryConfigurationError e10) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("XML parser factory has not been configured correctly: ");
            stringBuffer.append(e10.getMessage());
            throw new BuildException(stringBuffer.toString(), e10);
        }
    }

    private static SAXParser e(SAXParserFactory sAXParserFactory) {
        try {
            return sAXParserFactory.newSAXParser();
        } catch (ParserConfigurationException e10) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Cannot create parser for the given configuration: ");
            stringBuffer.append(e10.getMessage());
            throw new BuildException(stringBuffer.toString(), e10);
        } catch (SAXException e11) {
            throw a(e11);
        }
    }
}
