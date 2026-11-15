package com.bytedance.sdk.openadsdk.core.Ym.Sj.Sj;

import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.io.IOException;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class Sj {
    public static com.bytedance.sdk.openadsdk.core.Ym.TKC Sj(Context context, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i10;
        Context context2;
        String str;
        HiB.Sj sj2;
        String str2;
        String str3;
        byte b10;
        Context context3 = context;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        String str4 = "HTMLResource";
        String str5 = "IFrameResource";
        int i11 = 2;
        int i12 = 3;
        if (context3 == null) {
            HiB.Sj(xmlPullParser);
            return null;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i13 = displayMetrics.widthPixels;
        int i14 = displayMetrics.heightPixels;
        float f10 = displayMetrics.density;
        int i15 = (int) (i13 / f10);
        int i16 = (int) (i14 / f10);
        float f11 = Float.MIN_VALUE;
        com.bytedance.sdk.openadsdk.core.Ym.TKC tkc = null;
        while (true) {
            if (xmlPullParser.getEventType() == i12 && xmlPullParser.getName().equals("CompanionAds")) {
                return tkc;
            }
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == i11) {
                String str6 = "Companion";
                if (xmlPullParser.getName().equals("Companion")) {
                    String str7 = HiB.Jcg;
                    int iSP = HiB.sP(xmlPullParser2.getAttributeValue(str7, "width"));
                    int iSP2 = HiB.sP(xmlPullParser2.getAttributeValue(str7, "height"));
                    if (iSP < 300 || iSP2 < 250) {
                        i10 = 2;
                        HiB.Sj(xmlPullParser);
                        i11 = i10;
                        str5 = str5;
                        str4 = str4;
                        i15 = i15;
                        i12 = i12;
                        context3 = context3;
                        xmlPullParser2 = xmlPullParser2;
                        i16 = i16;
                    } else {
                        HiB.Sj sj3 = new HiB.Sj();
                        while (true) {
                            if (xmlPullParser.getEventType() == i12 && xmlPullParser.getName().equals(str6)) {
                                if (!TextUtils.isEmpty(sj3.Sj) && sj3.Jcg >= f11) {
                                    com.bytedance.sdk.openadsdk.core.Ym.TKC tkc2 = new com.bytedance.sdk.openadsdk.core.Ym.TKC(iSP, iSP2, sj3.sP, sj3.TKC, sj3.Sj, sj3.HiB, sj3.vS, sj3.EjP);
                                    f11 = sj3.Jcg;
                                    tkc = tkc2;
                                }
                                context3 = context;
                                xmlPullParser2 = xmlPullParser;
                                i16 = i16;
                                i15 = i15;
                                i11 = 2;
                                i12 = 3;
                            } else {
                                i16 = i16;
                                i15 = i15;
                                xmlPullParser.next();
                                if (xmlPullParser.getEventType() == 2) {
                                    String name = xmlPullParser.getName();
                                    name.hashCode();
                                    byte b11 = -1;
                                    switch (name.hashCode()) {
                                        case -375340334:
                                            if (name.equals(str5)) {
                                                b10 = 0;
                                                b11 = b10;
                                                break;
                                            }
                                            break;
                                        case -348198615:
                                            if (name.equals("CompanionClickThrough")) {
                                                b10 = 1;
                                                b11 = b10;
                                                break;
                                            }
                                            break;
                                        case 611554000:
                                            if (name.equals("TrackingEvents")) {
                                                b11 = 2;
                                            }
                                            break;
                                        case 676623548:
                                            if (name.equals("StaticResource")) {
                                                b11 = 3;
                                            }
                                            break;
                                        case 1877773523:
                                            if (name.equals("CompanionClickTracking")) {
                                                b10 = 4;
                                                b11 = b10;
                                                break;
                                            }
                                            break;
                                        case 1928285401:
                                            if (name.equals(str4)) {
                                                b10 = 5;
                                                b11 = b10;
                                                break;
                                            }
                                            break;
                                    }
                                    switch (b11) {
                                        case 0:
                                            str3 = str4;
                                            String str8 = str5;
                                            HiB.Sj sj4 = sj3;
                                            str2 = str6;
                                            Point pointSj = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.Sj(context, iSP, iSP2, com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.HTML_RESOURCE);
                                            int i17 = pointSj.x;
                                            int i18 = pointSj.y;
                                            com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP sPVar = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.IFRAME_RESOURCE;
                                            com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0247Sj enumC0247Sj = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0247Sj.NONE;
                                            float fSj = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj(i15, i16, i17, i18, sPVar, enumC0247Sj);
                                            String strSP = HiB.sP(xmlPullParser, str8);
                                            if (!TextUtils.isEmpty(strSP) && fSj > sj4.Jcg && fSj > f11) {
                                                sj4.Jcg = fSj;
                                                sj4.Sj(strSP, enumC0247Sj, sPVar);
                                                sj3 = sj4;
                                                str5 = str8;
                                                str6 = str2;
                                                str4 = str3;
                                            } else {
                                                HiB.Sj(xmlPullParser, str8, 3);
                                                sj3 = sj4;
                                                str5 = str8;
                                                str6 = str2;
                                                str4 = str3;
                                                i12 = 3;
                                            }
                                            break;
                                        case 1:
                                            str3 = str4;
                                            sj3.EjP = HiB.sP(xmlPullParser, "CompanionClickThrough");
                                            str5 = str5;
                                            str4 = str3;
                                            break;
                                        case 2:
                                            context2 = context;
                                            str3 = str4;
                                            str = str5;
                                            sj2 = sj3;
                                            str2 = str6;
                                            while (true) {
                                                if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("TrackingEvents")) {
                                                    sj3 = sj2;
                                                    str5 = str;
                                                    str6 = str2;
                                                    str4 = str3;
                                                    break;
                                                } else if (xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals("Tracking")) {
                                                    sj2.sP(HiB.sP(xmlPullParser, "Tracking"));
                                                }
                                            }
                                            break;
                                        case 3:
                                            context2 = context;
                                            str = str5;
                                            sj2 = sj3;
                                            str2 = str6;
                                            com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0247Sj enumC0247Sj2 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0247Sj.NONE;
                                            String lowerCase = xmlPullParser.getAttributeValue(HiB.Jcg, "creativeType").toLowerCase();
                                            Set<String> set = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.Sj;
                                            com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0247Sj enumC0247Sj3 = set.contains(lowerCase) ? com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0247Sj.IMAGE : com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0247Sj.JAVASCRIPT;
                                            com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP sPVar2 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.STATIC_RESOURCE;
                                            Point pointSj2 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.Sj(context2, iSP, iSP2, sPVar2);
                                            str3 = str4;
                                            float fSj2 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj(i15, i16, pointSj2.x, pointSj2.y, sPVar2, enumC0247Sj3);
                                            String strSP2 = (set.contains(lowerCase) || com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.contains(lowerCase)) ? HiB.sP(xmlPullParser, "StaticResource") : null;
                                            if (fSj2 >= sj2.Jcg && fSj2 > f11 && !TextUtils.isEmpty(strSP2)) {
                                                sj2.Jcg = fSj2;
                                                sj2.Sj(strSP2, enumC0247Sj3, sPVar2);
                                                sj3 = sj2;
                                                str5 = str;
                                                str6 = str2;
                                                str4 = str3;
                                            } else {
                                                HiB.Sj(xmlPullParser, "StaticResource", 3);
                                                i12 = 3;
                                                sj3 = sj2;
                                                str5 = str;
                                                str6 = str2;
                                                str4 = str3;
                                            }
                                            break;
                                        case 4:
                                            sj3.Sj(HiB.sP(xmlPullParser, "CompanionClickTracking"));
                                            str5 = str5;
                                            break;
                                        case 5:
                                            com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP sPVar3 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.sP.HTML_RESOURCE;
                                            Point pointSj3 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.Sj(context, iSP, iSP2, sPVar3);
                                            int i19 = pointSj3.x;
                                            int i20 = pointSj3.y;
                                            com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0247Sj enumC0247Sj4 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj.EnumC0247Sj.NONE;
                                            String str9 = str5;
                                            HiB.Sj sj5 = sj3;
                                            String str10 = str6;
                                            float fSj3 = com.bytedance.sdk.openadsdk.core.Ym.TKC.Sj(i15, i16, i19, i20, sPVar3, enumC0247Sj4);
                                            String strSP3 = HiB.sP(xmlPullParser, str4);
                                            if (!TextUtils.isEmpty(strSP3) && fSj3 > sj5.Jcg && fSj3 > f11) {
                                                sj5.Jcg = fSj3;
                                                sj5.Sj(strSP3, enumC0247Sj4, sPVar3);
                                                sj3 = sj5;
                                                str5 = str9;
                                                str6 = str10;
                                            } else {
                                                HiB.Sj(xmlPullParser, str4, 3);
                                                i12 = 3;
                                                sj3 = sj5;
                                                str5 = str9;
                                                str6 = str10;
                                            }
                                            break;
                                        default:
                                            HiB.Sj(xmlPullParser);
                                            context2 = context;
                                            str3 = str4;
                                            str = str5;
                                            sj2 = sj3;
                                            str2 = str6;
                                            sj3 = sj2;
                                            str5 = str;
                                            str6 = str2;
                                            str4 = str3;
                                            break;
                                    }
                                }
                                i12 = 3;
                            }
                        }
                    }
                }
            }
            i10 = i11;
            i11 = i10;
            str5 = str5;
            str4 = str4;
            i15 = i15;
            i12 = i12;
            context3 = context3;
            xmlPullParser2 = xmlPullParser2;
            i16 = i16;
        }
    }
}
