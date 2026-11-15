package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class g {

    static HashMap f6985b;

    private HashMap f6986a = new HashMap();

    static {
        HashMap map = new HashMap();
        f6985b = map;
        try {
            map.put("KeyAttribute", e.class.getConstructor(null));
            f6985b.put("KeyPosition", h.class.getConstructor(null));
            f6985b.put("KeyCycle", f.class.getConstructor(null));
            f6985b.put("KeyTimeCycle", j.class.getConstructor(null));
            f6985b.put("KeyTrigger", k.class.getConstructor(null));
        } catch (NoSuchMethodException e10) {
            Log.e("KeyFrames", "unable to load", e10);
        }
    }

    public g() {
    }

    public void a(m mVar) {
        ArrayList arrayList = (ArrayList) this.f6986a.get(-1);
        if (arrayList != null) {
            mVar.b(arrayList);
        }
    }

    public void b(m mVar) {
        ArrayList arrayList = (ArrayList) this.f6986a.get(Integer.valueOf(mVar.f7069c));
        if (arrayList != null) {
            mVar.b(arrayList);
        }
        ArrayList<d> arrayList2 = (ArrayList) this.f6986a.get(-1);
        if (arrayList2 != null) {
            for (d dVar : arrayList2) {
                if (dVar.f(((ConstraintLayout.b) mVar.f7068b.getLayoutParams()).f7358c0)) {
                    mVar.a(dVar);
                }
            }
        }
    }

    public void c(d dVar) {
        if (!this.f6986a.containsKey(Integer.valueOf(dVar.f6942b))) {
            this.f6986a.put(Integer.valueOf(dVar.f6942b), new ArrayList());
        }
        ArrayList arrayList = (ArrayList) this.f6986a.get(Integer.valueOf(dVar.f6942b));
        if (arrayList != null) {
            arrayList.add(dVar);
        }
    }

    public ArrayList d(int i10) {
        return (ArrayList) this.f6986a.get(Integer.valueOf(i10));
    }

    public g(Context context, XmlPullParser xmlPullParser) {
        Exception e10;
        d dVar;
        HashMap map;
        HashMap map2;
        try {
            int eventType = xmlPullParser.getEventType();
            d dVar2 = null;
            while (eventType != 1) {
                if (eventType != 2) {
                    if (eventType == 3 && "KeyFrameSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                } else {
                    String name = xmlPullParser.getName();
                    if (f6985b.containsKey(name)) {
                        try {
                            Constructor constructor = (Constructor) f6985b.get(name);
                            if (constructor != null) {
                                dVar = (d) constructor.newInstance(null);
                                try {
                                    dVar.e(context, Xml.asAttributeSet(xmlPullParser));
                                    c(dVar);
                                } catch (Exception e11) {
                                    e10 = e11;
                                    Log.e("KeyFrames", "unable to create ", e10);
                                }
                                dVar2 = dVar;
                            } else {
                                throw new NullPointerException("Keymaker for " + name + " not found");
                            }
                        } catch (Exception e12) {
                            d dVar3 = dVar2;
                            e10 = e12;
                            dVar = dVar3;
                        }
                        Log.e("KeyFrames", "unable to create ", e10);
                        dVar2 = dVar;
                    } else if (name.equalsIgnoreCase("CustomAttribute")) {
                        if (dVar2 != null && (map2 = dVar2.f6945e) != null) {
                            ConstraintAttribute.i(context, xmlPullParser, map2);
                        }
                    } else if (name.equalsIgnoreCase("CustomMethod") && dVar2 != null && (map = dVar2.f6945e) != null) {
                        ConstraintAttribute.i(context, xmlPullParser, map);
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e13) {
            e13.printStackTrace();
        } catch (XmlPullParserException e14) {
            e14.printStackTrace();
        }
    }
}
