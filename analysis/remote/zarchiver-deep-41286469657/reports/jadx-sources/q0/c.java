package q0;

import android.util.Xml;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class c {

    public static class a {

        public String f1374a;

        public String f1375b;

        public String f1376c;
    }

    public static a a(InputStream inputStream) {
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        a aVar = null;
        while (true) {
            try {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    break;
                }
                if ("meta.xml".equals(nextEntry.getName())) {
                    if (aVar == null) {
                        aVar = new a();
                    }
                    c(zipInputStream, aVar);
                    break;
                }
                if ("docProps/app.xml".equals(nextEntry.getName()) || "docProps/core.xml".equals(nextEntry.getName())) {
                    if (aVar == null) {
                        aVar = new a();
                    }
                    b(zipInputStream, aVar);
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                n0.e.d(zipInputStream);
                throw th;
            }
        }
        n0.e.d(zipInputStream);
        return aVar;
    }

    public static void b(ZipInputStream zipInputStream, a aVar) throws XmlPullParserException, IOException {
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
        xmlPullParserNewPullParser.setInput(zipInputStream, null);
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
            if (xmlPullParserNewPullParser.getEventType() == 3) {
                if (xmlPullParserNewPullParser.getName().equalsIgnoreCase("coreProperties")) {
                    return;
                }
            } else if (xmlPullParserNewPullParser.getEventType() == 2) {
                String name = xmlPullParserNewPullParser.getName();
                if (("creator".equalsIgnoreCase(name) && aVar.f1374a == null) || "lastModifiedBy".equalsIgnoreCase(name)) {
                    z2 = true;
                    z3 = false;
                } else if ("Pages".equalsIgnoreCase(name)) {
                    z2 = false;
                    z3 = true;
                } else {
                    z2 = false;
                    z3 = false;
                    if ("title".equalsIgnoreCase(name)) {
                        z4 = true;
                    }
                }
                z4 = false;
            } else if (xmlPullParserNewPullParser.getEventType() == 4) {
                if (z2) {
                    aVar.f1374a = xmlPullParserNewPullParser.getText();
                } else if (z3) {
                    aVar.f1376c = xmlPullParserNewPullParser.getText();
                } else if (z4) {
                    aVar.f1375b = xmlPullParserNewPullParser.getText();
                }
            }
        }
    }

    public static void c(ZipInputStream zipInputStream, a aVar) throws XmlPullParserException, IOException {
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
        xmlPullParserNewPullParser.setInput(zipInputStream, null);
        boolean z2 = false;
        boolean z3 = false;
        for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
            if (xmlPullParserNewPullParser.getEventType() == 3) {
                if (xmlPullParserNewPullParser.getName().equalsIgnoreCase("meta")) {
                    return;
                }
            } else if (xmlPullParserNewPullParser.getEventType() == 2) {
                String name = xmlPullParserNewPullParser.getName();
                if (("initial-creator".equalsIgnoreCase(name) && aVar.f1374a == null) || "creator".equalsIgnoreCase(name)) {
                    z2 = true;
                } else if ("title".equalsIgnoreCase(name)) {
                    z2 = false;
                    z3 = true;
                } else {
                    if ("document-statistic".equalsIgnoreCase(name)) {
                        int attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                        for (int i2 = 0; i2 < attributeCount; i2++) {
                            if ("page-count".equals(xmlPullParserNewPullParser.getAttributeName(i2))) {
                                aVar.f1376c = xmlPullParserNewPullParser.getAttributeValue(i2);
                                break;
                            }
                        }
                    }
                    z2 = false;
                }
                z3 = false;
            } else if (xmlPullParserNewPullParser.getEventType() == 4) {
                if (z2) {
                    aVar.f1374a = xmlPullParserNewPullParser.getText();
                } else if (z3) {
                    aVar.f1375b = xmlPullParserNewPullParser.getText();
                }
            }
        }
    }
}
