package com.mbridge.msdk.dycreator.engine;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class a {

    private static final Class[] f33986e = {Context.class, AttributeSet.class};

    private static final HashMap<String, Constructor> f33987f = new HashMap<>();

    private static String f33988g = "com.mbridge.msdk.dycreator.baseview.MB";

    protected final Context f33990b;

    private long f33992d;

    private final boolean f33989a = true;

    private final Object[] f33991c = new Object[2];

    public a(Context context) {
        this.f33990b = context;
    }

    public Context a() {
        return this.f33990b;
    }

    protected View b(String str, AttributeSet attributeSet) throws ClassNotFoundException {
        return (str.equals("MBStarLevelLayoutView") || str.equals("LuckPan")) ? a(str, "", attributeSet) : a(str, f33988g, attributeSet);
    }

    public View a(String str, ViewGroup viewGroup) {
        return a(str, viewGroup, viewGroup != null);
    }

    public View a(String str, ViewGroup viewGroup, boolean z10) {
        this.f33992d = System.currentTimeMillis();
        System.out.println("INFLATING from resource: " + str);
        return a(a(str), viewGroup, z10);
    }

    private void b(XmlPullParser xmlPullParser, View view, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if ("requestFocus".equals(name)) {
                    a(xmlPullParser, view);
                } else if ("include".equals(name)) {
                    if (xmlPullParser.getDepth() != 0) {
                        a(xmlPullParser, view, attributeSet);
                    } else {
                        throw new InflateException("<include /> cannot be the root element");
                    }
                } else if (!"merge".equals(name)) {
                    View viewA = a(name, attributeSet);
                    ViewGroup viewGroup = (ViewGroup) view;
                    ViewGroup.LayoutParams layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSet);
                    b(xmlPullParser, viewA, attributeSet);
                    viewGroup.addView(viewA, layoutParamsGenerateLayoutParams);
                } else {
                    throw new InflateException("<merge /> must be the root element");
                }
            }
        }
    }

    public XmlPullParser a(String str) {
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        try {
            xmlPullParserNewPullParser.setInput(new FileInputStream(str), "utf-8");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return xmlPullParserNewPullParser;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.view.View, android.view.ViewGroup, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [android.view.View] */
    public View a(XmlPullParser xmlPullParser, ViewGroup viewGroup, boolean z10) {
        int next;
        ViewGroup.LayoutParams layoutParamsGenerateLayoutParams;
        synchronized (this.f33991c) {
            try {
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
                this.f33991c[0] = this.f33990b;
                do {
                    try {
                        next = xmlPullParser.next();
                        if (next == 2) {
                            break;
                        }
                    } catch (IOException e10) {
                        InflateException inflateException = new InflateException(xmlPullParser.getPositionDescription() + ": " + e10.getMessage());
                        inflateException.initCause(e10);
                        throw inflateException;
                    } catch (XmlPullParserException e11) {
                        InflateException inflateException2 = new InflateException(e11.getMessage());
                        inflateException2.initCause(e11);
                        throw inflateException2;
                    }
                } while (next != 1);
                if (next == 2) {
                    String name = xmlPullParser.getName();
                    PrintStream printStream = System.out;
                    printStream.println("**************************");
                    printStream.println("Creating root view: " + name);
                    printStream.println("**************************");
                    if (!"merge".equals(name)) {
                        View viewA = a(name, attributeSetAsAttributeSet);
                        if (viewGroup != 0) {
                            printStream.println("Creating params from root: " + ((Object) viewGroup));
                            layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSetAsAttributeSet);
                            if (!z10) {
                                viewA.setLayoutParams(layoutParamsGenerateLayoutParams);
                            }
                        } else {
                            layoutParamsGenerateLayoutParams = null;
                        }
                        printStream.println("-----> start inflating children");
                        b(xmlPullParser, viewA, attributeSetAsAttributeSet);
                        printStream.println("-----> done inflating children");
                        if (viewGroup != 0 && z10) {
                            viewGroup.addView(viewA, layoutParamsGenerateLayoutParams);
                        }
                        if (viewGroup == 0 || !z10) {
                            viewGroup = viewA;
                        }
                    } else if (viewGroup != 0 && z10) {
                        b(xmlPullParser, viewGroup, attributeSetAsAttributeSet);
                    } else {
                        throw new InflateException("<merge /> can be used only with a valid ViewGroup root and attachToRoot=true");
                    }
                } else {
                    throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return viewGroup;
    }

    public final View a(String str, String str2, AttributeSet attributeSet) throws InflateException, ClassNotFoundException {
        String str3;
        HashMap<String, Constructor> map = f33987f;
        Constructor<?> constructor = map.get(str);
        Class<?> clsLoadClass = null;
        if (constructor == null) {
            try {
                ClassLoader classLoader = this.f33990b.getClassLoader();
                if (str2 != null) {
                    str3 = str2 + str;
                } else {
                    str3 = str;
                }
                clsLoadClass = classLoader.loadClass(str3);
                constructor = clsLoadClass.getConstructor(f33986e);
                map.put(str, constructor);
            } catch (ClassNotFoundException e10) {
                throw e10;
            } catch (NoSuchMethodException e11) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(attributeSet.getPositionDescription());
                sb2.append(": Error inflating class ");
                if (str2 != null) {
                    str = str2 + str;
                }
                sb2.append(str);
                InflateException inflateException = new InflateException(sb2.toString());
                inflateException.initCause(e11);
                throw inflateException;
            } catch (Exception e12) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(attributeSet.getPositionDescription());
                sb3.append(": Error inflating class ");
                sb3.append(clsLoadClass == null ? "<unknown>" : clsLoadClass.getName());
                InflateException inflateException2 = new InflateException(sb3.toString());
                inflateException2.initCause(e12);
                throw inflateException2;
            }
        }
        Object[] objArr = this.f33991c;
        objArr[1] = attributeSet;
        return (View) constructor.newInstance(objArr);
    }

    View a(String str, AttributeSet attributeSet) {
        View viewA;
        if (str.equals(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW)) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        PrintStream printStream = System.out;
        printStream.println("******** Creating view: " + str);
        try {
            if (-1 == str.indexOf(46)) {
                viewA = b(str, attributeSet);
            } else {
                viewA = a(str, (String) null, attributeSet);
            }
            printStream.println("Created view is: " + viewA);
            return viewA;
        } catch (InflateException e10) {
            throw e10;
        } catch (ClassNotFoundException e11) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException.initCause(e11);
            throw inflateException;
        } catch (Exception e12) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException2.initCause(e12);
            throw inflateException2;
        }
    }

    private void a(XmlPullParser xmlPullParser, View view) throws XmlPullParserException, IOException {
        int next;
        view.requestFocus();
        int depth = xmlPullParser.getDepth();
        do {
            next = xmlPullParser.next();
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
        } while (next != 1);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x007c A[Catch: all -> 0x0065, PHI: r8
      0x007c: PHI (r8v4 android.view.ViewGroup$LayoutParams) = (r8v3 android.view.ViewGroup$LayoutParams), (r8v5 android.view.ViewGroup$LayoutParams) binds: [B:31:0x007a, B:26:0x0071] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #2 {all -> 0x0065, blocks: (B:13:0x0044, B:14:0x0048, B:19:0x0055, B:21:0x0061, B:24:0x0067, B:33:0x007f, B:32:0x007c, B:42:0x009d, B:43:0x009e, B:44:0x00b8, B:25:0x006d, B:30:0x0076), top: B:52:0x0044, inners: #1 }] */
    private void a(XmlPullParser xmlPullParser, View view, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int next;
        ViewGroup.LayoutParams layoutParamsGenerateLayoutParams;
        int next2;
        if (view instanceof ViewGroup) {
            int attributeResourceValue = attributeSet.getAttributeResourceValue(null, TtmlNode.TAG_LAYOUT, 0);
            if (attributeResourceValue == 0) {
                String attributeValue = attributeSet.getAttributeValue(null, TtmlNode.TAG_LAYOUT);
                if (attributeValue == null) {
                    throw new InflateException("You must specifiy a layout in the include tag: <include layout=\"@layout/layoutID\" />");
                }
                throw new InflateException("You must specifiy a valid layout reference. The layout ID " + attributeValue + " is not valid.");
            }
            XmlResourceParser layout = a().getResources().getLayout(attributeResourceValue);
            try {
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(layout);
                do {
                    next = layout.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next == 2) {
                    String name = layout.getName();
                    if ("merge".equals(name)) {
                        b(layout, view, attributeSetAsAttributeSet);
                    } else {
                        View viewA = a(name, attributeSetAsAttributeSet);
                        ViewGroup viewGroup = (ViewGroup) view;
                        try {
                            layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSet);
                            if (layoutParamsGenerateLayoutParams != null) {
                                viewA.setLayoutParams(layoutParamsGenerateLayoutParams);
                            }
                        } catch (RuntimeException unused) {
                            layoutParamsGenerateLayoutParams = viewGroup.generateLayoutParams(attributeSetAsAttributeSet);
                            if (layoutParamsGenerateLayoutParams != null) {
                                viewA.setLayoutParams(layoutParamsGenerateLayoutParams);
                            }
                        }
                        b(layout, viewA, attributeSetAsAttributeSet);
                        viewGroup.addView(viewA);
                    }
                    layout.close();
                    int depth = xmlPullParser.getDepth();
                    do {
                        next2 = xmlPullParser.next();
                        if (next2 == 3 && xmlPullParser.getDepth() <= depth) {
                            return;
                        }
                    } while (next2 != 1);
                    return;
                }
                throw new InflateException(layout.getPositionDescription() + ": No start tag found!");
            } catch (Throwable th2) {
                layout.close();
                throw th2;
            }
        }
        throw new InflateException("<include /> can only be used inside of a ViewGroup");
    }
}
