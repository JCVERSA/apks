package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class el2 {
    public static boolean a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, TtmlNode.TAG_P);
        return xmlPullParser.next() != 3;
    }

    public static boolean b(XmlPullParser xmlPullParser) throws XmlPullParserException {
        y45.j(xmlPullParser, TtmlNode.TAG_P);
        return xmlPullParser.getEventType() == 2;
    }

    public static String c(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String text;
        y45.j(xmlPullParser, TtmlNode.TAG_P);
        if (xmlPullParser.next() == 4) {
            text = xmlPullParser.getText();
            y45.i(text, "getText(...)");
            xmlPullParser.nextTag();
        } else {
            text = "";
        }
        int length = text.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = y45.l(text.charAt(!z ? i : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        return text.subSequence(i, length + 1).toString();
    }

    public static void d(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        y45.j(xmlPullParser, "parser");
        if (xmlPullParser.getEventType() != 2) {
            throw new IllegalStateException("Check failed.");
        }
        int i = 1;
        while (i != 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }
}
