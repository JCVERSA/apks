package b;

import android.util.Base64;
import android.util.Xml;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.xmlpull.v1.XmlPullParser;

public final class c {

    public Object f239a;

    public Object f240b;

    public Object f241c;

    public Object f242d;

    public Object f243e;

    public c(int i2) {
        if (i2 != 1) {
            this.f239a = new e();
            this.f240b = new e();
            this.f241c = new e();
            this.f242d = new e();
            this.f243e = new f[32];
        }
    }

    public final String a(int i2) {
        String strSubstring = "";
        if (i2 == 0) {
            if (((String) this.f239a) == null && ((String) this.f240b) == null) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            Object obj = this.f239a;
            sb.append(((String) obj) == null ? "" : (String) obj);
            sb.append(" ");
            Object obj2 = this.f240b;
            sb.append(((String) obj2) != null ? (String) obj2 : "");
            return sb.toString();
        }
        if (i2 != 1) {
            if (i2 == 2) {
                return (String) this.f241c;
            }
            if (i2 != 3) {
                return null;
            }
            return (String) this.f242d;
        }
        if (((String) this.f239a) == null && ((String) this.f240b) == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        Object obj3 = this.f240b;
        sb2.append(((String) obj3) == null ? "" : (String) obj3);
        sb2.append(" ");
        Object obj4 = this.f239a;
        if (((String) obj4) != null && !((String) obj4).isEmpty()) {
            strSubstring = ((String) this.f239a).substring(0, 1);
        }
        sb2.append(strSubstring);
        return sb2.toString();
    }

    public final void b(InputStream inputStream, String str, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean zEquals;
        boolean z7;
        this.f242d = null;
        this.f241c = null;
        this.f240b = null;
        this.f239a = null;
        this.f243e = null;
        int i2 = 3;
        try {
            if ("fb2".equals(str)) {
                XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
                xmlPullParserNewPullParser.setInput(inputStream, null);
                int eventType = xmlPullParserNewPullParser.getEventType();
                String str2 = null;
                boolean z8 = false;
                boolean z9 = false;
                boolean z10 = false;
                boolean z11 = false;
                boolean z12 = false;
                boolean z13 = false;
                boolean z14 = false;
                for (int i3 = 1; eventType != i3; i3 = 1) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (name != null) {
                        name = name.toLowerCase();
                    }
                    boolean z15 = z8;
                    if (xmlPullParserNewPullParser.getEventType() != i2) {
                        if (xmlPullParserNewPullParser.getEventType() == 2) {
                            if (z9) {
                                if (!z10) {
                                    if ("image".equals(name)) {
                                        String attributeValue = xmlPullParserNewPullParser.getAttributeValue(0);
                                        if (attributeValue != null) {
                                            attributeValue = attributeValue.substring(1);
                                        }
                                        zEquals = z15;
                                        str2 = attributeValue;
                                    } else if ("book-title".equals(name)) {
                                        z7 = z15;
                                        z11 = true;
                                    } else if ("author".equals(name)) {
                                        z7 = z15;
                                        z10 = true;
                                    } else if ("genre".equals(name)) {
                                        zEquals = z15;
                                        z14 = true;
                                    }
                                    z7 = zEquals;
                                } else if ("first-name".equals(name)) {
                                    z7 = z15;
                                    z12 = true;
                                } else if ("last-name".equals(name)) {
                                    z7 = z15;
                                    z13 = true;
                                }
                            } else if ("title-info".equals(name)) {
                                z7 = z15;
                                z9 = true;
                            } else if ("binary".equals(name) && str2 != null) {
                                zEquals = str2.equals(xmlPullParserNewPullParser.getAttributeValue(null, "id"));
                                z7 = zEquals;
                            }
                        } else if (xmlPullParserNewPullParser.getEventType() == 4) {
                            if (z11) {
                                this.f241c = xmlPullParserNewPullParser.getText();
                                z7 = z15;
                                z11 = false;
                            } else if (z12) {
                                this.f239a = xmlPullParserNewPullParser.getText();
                            } else if (z13) {
                                this.f240b = xmlPullParserNewPullParser.getText();
                            } else if (z14) {
                                String text = xmlPullParserNewPullParser.getText();
                                if (text.startsWith("sf")) {
                                    this.f242d = "Science Fiction & Fantasy";
                                } else if (text.startsWith("det") || text.startsWith("thriller")) {
                                    this.f242d = "Detectives & Thrillers";
                                } else if (text.startsWith("prose")) {
                                    this.f242d = "Prose";
                                } else if (text.startsWith("love")) {
                                    this.f242d = "Romance";
                                } else if (text.startsWith("adv")) {
                                    this.f242d = "Adventure";
                                } else if (text.startsWith("child")) {
                                    this.f242d = "Children's";
                                } else if (text.startsWith("antique")) {
                                    this.f242d = "Antique literature";
                                } else if (text.startsWith("sci")) {
                                    this.f242d = "Scientific-educational";
                                } else if (text.startsWith("comp")) {
                                    this.f242d = "Computers & Internet";
                                } else if (text.startsWith("ref")) {
                                    this.f242d = "Reference";
                                } else if (text.startsWith("nonf")) {
                                    this.f242d = "Nonfiction";
                                } else if (text.startsWith("religion")) {
                                    this.f242d = "Religion & Inspiration";
                                } else if (text.startsWith("humor")) {
                                    this.f242d = "Humor";
                                } else if (text.startsWith("home")) {
                                    this.f242d = "Home & Family";
                                } else {
                                    this.f242d = text;
                                }
                            } else if (z15) {
                                this.f243e = Base64.decode(xmlPullParserNewPullParser.getText(), 0);
                                return;
                            }
                        }
                        z7 = z15;
                    } else {
                        if ("title-info".equals(name)) {
                            if (z2 && str2 != null) {
                                z7 = z15;
                                z9 = false;
                            }
                            return;
                        }
                        if ("author".equals(name)) {
                            z7 = z15;
                            z10 = false;
                        } else if (name != null && name.contains("-name")) {
                            z7 = z15;
                            z12 = false;
                            z13 = false;
                        } else if ("book-title".equals(name)) {
                            z7 = z15;
                            z11 = false;
                        } else if ("binary".equals(name)) {
                            z7 = false;
                        } else if ("genre".equals(name)) {
                            zEquals = z15;
                            z14 = false;
                            z7 = zEquals;
                        } else {
                            z7 = z15;
                        }
                    }
                    eventType = xmlPullParserNewPullParser.next();
                    z8 = z7;
                    i2 = 3;
                }
                return;
            }
            if (!"epub".equals(str)) {
                return;
            }
            ZipInputStream zipInputStream = new ZipInputStream(inputStream);
            boolean z16 = false;
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    return;
                }
                String lowerCase = nextEntry.getName().toLowerCase();
                if (lowerCase.endsWith(".opf")) {
                    XmlPullParser xmlPullParserNewPullParser2 = Xml.newPullParser();
                    xmlPullParserNewPullParser2.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
                    xmlPullParserNewPullParser2.setInput(zipInputStream, null);
                    boolean z17 = false;
                    boolean z18 = false;
                    boolean z19 = false;
                    for (int eventType2 = xmlPullParserNewPullParser2.getEventType(); eventType2 != 1; eventType2 = xmlPullParserNewPullParser2.next()) {
                        String name2 = xmlPullParserNewPullParser2.getName();
                        if (name2 != null) {
                            name2 = name2.toLowerCase();
                        }
                        if (xmlPullParserNewPullParser2.getEventType() == 3) {
                            if ("metadata".equals(name2)) {
                                break;
                            }
                        } else {
                            if (xmlPullParserNewPullParser2.getEventType() == 2) {
                                if (z17) {
                                    if ("title".equals(name2)) {
                                        z5 = true;
                                        z4 = z17;
                                        z6 = false;
                                    } else if ("creator".equals(name2)) {
                                        z4 = z17;
                                        z5 = false;
                                        z6 = true;
                                    }
                                    z19 = z6;
                                    z17 = z4;
                                    z18 = z5;
                                } else {
                                    if ("metadata".equals(name2)) {
                                        z3 = true;
                                    }
                                    z17 = z3;
                                    z5 = false;
                                    z4 = z17;
                                    z6 = false;
                                    z19 = z6;
                                    z17 = z4;
                                    z18 = z5;
                                }
                            } else if (xmlPullParserNewPullParser2.getEventType() == 4) {
                                if (z18) {
                                    this.f241c = xmlPullParserNewPullParser2.getText();
                                } else if (z19) {
                                    this.f240b = xmlPullParserNewPullParser2.getText();
                                }
                            }
                        }
                        z3 = z17;
                        z17 = z3;
                        z5 = false;
                        z4 = z17;
                        z6 = false;
                        z19 = z6;
                        z17 = z4;
                        z18 = z5;
                    }
                    if (z2 && ((byte[]) this.f243e) == null) {
                        z16 = true;
                    }
                    return;
                }
                if (((byte[]) this.f243e) == null && z2 && (("cover.jpg".equals(lowerCase) || "cover.jpeg".equals(lowerCase)) && nextEntry.getSize() < 819200)) {
                    this.f243e = new byte[(int) nextEntry.getSize()];
                    int i4 = 0;
                    do {
                        Object obj = this.f243e;
                        int i5 = zipInputStream.read((byte[]) obj, i4, ((byte[]) obj).length - i4);
                        if (i5 < 0) {
                            break;
                        } else {
                            i4 += i5;
                        }
                    } while (i4 < ((byte[]) this.f243e).length);
                    if (z16) {
                        return;
                    }
                }
            }
        } catch (Exception unused) {
        }
    }
}
