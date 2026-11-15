package defpackage;

import android.util.Xml;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import cn.com.custommma.mobile.tracking.viewability.origin.ViewAbilityStats;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.lzy.okgo.cookie.SerializableCookie;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import org.mozilla.javascript.ES6Iterator;
import org.xmlpull.v1.XmlPullParser;

public abstract class asc {
    public static qx8 a(InputStream inputStream) {
        qx8 qx8Var;
        qx8 qx8Var2;
        try {
            XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
            xmlPullParserNewPullParser.setInput(inputStream, "UTF-8");
            qx8 qx8Var3 = null;
            va1 va1Var = null;
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            zf zfVar = null;
            td3 td3Var = null;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                if (eventType == 0) {
                    va1 va1Var2 = va1Var;
                    boolean z4 = z;
                    qx8Var3 = new qx8();
                    va1Var = va1Var2;
                    z = z4;
                } else if (eventType == 2) {
                    try {
                        String name = xmlPullParserNewPullParser.getName();
                        if ("offlineCache".equals(name)) {
                            qx8Var3.a = new rd7();
                        }
                        if (qx8Var3.a != null) {
                            if (SessionDescription.ATTR_LENGTH.equals(name)) {
                                qx8Var3.a.a = xmlPullParserNewPullParser.nextText();
                            }
                            if ("queueExpirationSecs".equals(name)) {
                                qx8Var3.a.b = xmlPullParserNewPullParser.nextText();
                            }
                            if ("timeout".equals(name)) {
                                qx8Var3.a.c = xmlPullParserNewPullParser.nextText();
                            }
                        } else {
                            va1Var = va1Var;
                        }
                        if (name.equals("viewability")) {
                            qx8Var3.c = new sbc();
                        }
                        if (name.equals("intervalTime")) {
                            qx8Var3.c.a = Integer.valueOf(xmlPullParserNewPullParser.nextText()).intValue();
                        }
                        if (name.equals("viewabilityFrame")) {
                            qx8Var3.c.b = Integer.valueOf(xmlPullParserNewPullParser.nextText()).intValue();
                        }
                        if (name.equals("viewabilityTime")) {
                            qx8Var3.c.c = Integer.valueOf(xmlPullParserNewPullParser.nextText()).intValue();
                        }
                        if (name.equals("viewabilityVideoTime")) {
                            qx8Var3.c.d = Integer.valueOf(xmlPullParserNewPullParser.nextText()).intValue();
                        }
                        if (name.equals("maxExpirationSecs")) {
                            qx8Var3.c.e = Integer.valueOf(xmlPullParserNewPullParser.nextText()).intValue();
                        }
                        if (name.equals("maxAmount")) {
                            qx8Var3.c.f = Integer.valueOf(xmlPullParserNewPullParser.nextText()).intValue();
                        }
                        if ("companies".equals(name)) {
                            qx8Var3.b = new ArrayList();
                        }
                        va1Var = (qx8Var3.b == null || !"company".equals(name)) ? va1Var : new va1();
                        if (va1Var != null) {
                            if ("name".equals(name) && va1Var.a == null) {
                                va1Var.a = xmlPullParserNewPullParser.nextText();
                            }
                            if ("jsurl".equals(name) && va1Var.d == null) {
                                va1Var.d = xmlPullParserNewPullParser.nextText();
                            }
                            if ("jsname".equals(name) && va1Var.c == null) {
                                va1Var.c = xmlPullParserNewPullParser.nextText();
                            }
                            if (SerializableCookie.DOMAIN.equals(name)) {
                                va1Var.b = new sw2();
                            }
                            if (va1Var.b != null && "url".equals(name)) {
                                va1Var.b.a = xmlPullParserNewPullParser.nextText();
                            }
                            if ("signature".equals(name)) {
                                va1Var.e = new yi9();
                            }
                            if (va1Var.e != null) {
                                if ("publicKey".equals(name)) {
                                    va1Var.e.a = xmlPullParserNewPullParser.nextText();
                                }
                                if ("paramKey".equals(name)) {
                                    va1Var.e.b = xmlPullParserNewPullParser.nextText();
                                }
                            }
                            if (ClientABTestDTOKt.SWITCH.equals(name)) {
                                va1Var.f = new v7a();
                            }
                            if (va1Var.f != null) {
                                if ("isTrackLocation".equals(name)) {
                                    va1Var.f.a = Boolean.parseBoolean(xmlPullParserNewPullParser.nextText());
                                }
                                if ("offlineCacheExpiration".equals(name)) {
                                    va1Var.f.b = xmlPullParserNewPullParser.nextText();
                                }
                                if ("viewabilityTrackPolicy".equals(name)) {
                                    va1Var.f.d = Integer.parseInt(xmlPullParserNewPullParser.nextText());
                                }
                                if ("encrypt".equals(name)) {
                                    va1Var.f.c = new HashMap();
                                }
                                if (va1Var.f.c != null && ("MAC".equals(name) || "IDA".equals(name) || "IMEI".equals(name) || "ANDROIDID".equals(name))) {
                                    va1Var.f.c.put(name, xmlPullParserNewPullParser.nextText());
                                }
                            }
                            if ("applist".equals(name)) {
                                va1Var.k = new tf();
                            }
                            if (va1Var.k != null) {
                                if ("uploadUrl".equals(name)) {
                                    va1Var.k.a = xmlPullParserNewPullParser.nextText();
                                }
                                if ("uploadTime".equals(name)) {
                                    va1Var.k.b = Integer.parseInt(xmlPullParserNewPullParser.nextText());
                                }
                                if ("usegzip".equals(name)) {
                                    va1Var.k.c = Boolean.parseBoolean(xmlPullParserNewPullParser.nextText());
                                }
                            }
                            if ("config".equals(name)) {
                                va1Var.g = new pe1();
                            }
                            if (va1Var.g != null) {
                                if ("arguments".equals(name)) {
                                    va1Var.g.a = new ArrayList();
                                }
                                if ("argument".equals(name)) {
                                    zfVar = new zf();
                                }
                                if (zfVar != null) {
                                    if ("key".equals(name)) {
                                        qx8Var2 = qx8Var3;
                                        try {
                                            zfVar.a = xmlPullParserNewPullParser.nextText();
                                        } catch (Exception e) {
                                            e = e;
                                            qx8Var = qx8Var2;
                                            e.printStackTrace();
                                            return qx8Var;
                                        }
                                    } else {
                                        qx8Var2 = qx8Var3;
                                    }
                                    if (ES6Iterator.VALUE_PROPERTY.equals(name)) {
                                        zfVar.b = xmlPullParserNewPullParser.nextText();
                                    }
                                    if ("urlEncode".equals(name)) {
                                        zfVar.c = Boolean.parseBoolean(xmlPullParserNewPullParser.nextText());
                                    }
                                    if ("isRequired".equals(name)) {
                                        zfVar.d = Boolean.parseBoolean(xmlPullParserNewPullParser.nextText());
                                    }
                                } else {
                                    qx8Var2 = qx8Var3;
                                }
                                if ("events".equals(name)) {
                                    va1Var.g.b = new ArrayList();
                                }
                                if (va1Var.g.b != null && NotificationCompat.CATEGORY_EVENT.equals(name)) {
                                    td3Var = new td3();
                                }
                                if (td3Var != null) {
                                    if ("key".equals(name)) {
                                        td3Var.a = xmlPullParserNewPullParser.nextText();
                                    }
                                    if (ES6Iterator.VALUE_PROPERTY.equals(name)) {
                                        td3Var.b = xmlPullParserNewPullParser.nextText();
                                    }
                                    if ("urlEncode".equals(name)) {
                                        td3Var.c = Boolean.parseBoolean(xmlPullParserNewPullParser.nextText());
                                    }
                                }
                                if (name.equals(ViewAbilityStats.ADPLACEMENT)) {
                                    va1Var.g.c = new HashMap();
                                    z = true;
                                } else {
                                    z = z;
                                }
                                if (name.equals("viewabilityarguments")) {
                                    va1Var.g.d = new HashMap();
                                    z2 = true;
                                }
                                if (name.equals("sensorarguments")) {
                                    va1Var.g.e = new HashMap();
                                    z3 = true;
                                }
                            } else {
                                qx8Var2 = qx8Var3;
                            }
                            if ("separator".equals(name)) {
                                va1Var.h = xmlPullParserNewPullParser.nextText();
                            }
                            if ("adidurl".equals(name)) {
                                va1Var.l = xmlPullParserNewPullParser.nextText();
                            }
                            if ("antidevice".equals(name)) {
                                va1Var.m = xmlPullParserNewPullParser.nextText();
                            }
                            if ("equalizer".equals(name)) {
                                va1Var.i = xmlPullParserNewPullParser.nextText();
                            }
                            if ("timeStampUseSecond".equals(name)) {
                                va1Var.j = Boolean.parseBoolean(xmlPullParserNewPullParser.nextText());
                            }
                            qx8Var3 = qx8Var2;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        qx8Var2 = qx8Var3;
                    }
                } else if (eventType != 3) {
                    continue;
                } else {
                    try {
                        String name2 = xmlPullParserNewPullParser.getName();
                        if ("company".equals(name2)) {
                            qx8Var3.b.add(va1Var);
                            va1Var = null;
                        }
                        if ("argument".equals(name2)) {
                            if (z) {
                                va1Var.g.c.put(zfVar.a, zfVar);
                            } else if (z2) {
                                va1Var.g.d.put(zfVar.a, zfVar);
                            } else if (z3) {
                                va1Var.g.e.put(zfVar.a, zfVar);
                            } else {
                                va1Var.g.a.add(zfVar);
                            }
                            zfVar = null;
                        }
                        if (name2.equals(ViewAbilityStats.ADPLACEMENT)) {
                            z = false;
                            zfVar = null;
                        }
                        if (name2.equals("viewabilityarguments")) {
                            z2 = false;
                            zfVar = null;
                        }
                        if (name2.equals("sensorarguments")) {
                            z3 = false;
                            zfVar = null;
                        }
                        if (NotificationCompat.CATEGORY_EVENT.equals(name2)) {
                            va1Var.g.b.add(td3Var);
                            td3Var = null;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        qx8Var = qx8Var3;
                        e.printStackTrace();
                        return qx8Var;
                    }
                }
            }
            return qx8Var3;
        } catch (Exception e4) {
            e = e4;
            qx8Var = null;
        }
    }
}
