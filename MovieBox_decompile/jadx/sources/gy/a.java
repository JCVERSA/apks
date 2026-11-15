package gy;

import ir.ac.iust.htmlchardet.Charsets;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import uz.h;

public abstract class a {
    private static Document a(byte[] bArr, String str) {
        return rz.a.b(new String(bArr, Charset.forName(str)));
    }

    public static String b(byte[] bArr, boolean... zArr) {
        Document documentA;
        byte[] bytes = null;
        if (zArr == null || zArr.length <= 0 || !zArr[0]) {
            documentA = null;
        } else {
            documentA = a(bArr, "ISO-8859-1");
            String strD = d(documentA);
            if (Charsets.isValid(strD)) {
                return Charsets.normalize(strD);
            }
        }
        String strE = e(bArr);
        if (strE.equalsIgnoreCase("UTF-8")) {
            return Charsets.normalize(strE);
        }
        if (documentA == null) {
            documentA = a(bArr, "ISO-8859-1");
        }
        try {
            bytes = documentA.W0().getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException unused) {
        }
        if (bytes != null && bytes.length >= 40) {
            bArr = bytes;
        }
        return Charsets.normalize(c(bArr));
    }

    private static String c(byte[] bArr) {
        hy.a aVar = new hy.a();
        aVar.d(bArr);
        return aVar.b().getName();
    }

    private static String d(Document document) {
        for (Element element : document.R0("meta")) {
            String strG = element.g("charset");
            if (Charsets.isValid(strG)) {
                return strG;
            }
            String strG2 = element.g("content");
            if (strG2.contains("charset")) {
                String strTrim = strG2.substring(strG2.indexOf("charset=") + 8, strG2.length()).trim();
                if (Charsets.isValid(strTrim)) {
                    return strTrim;
                }
            }
        }
        return null;
    }

    private static String e(byte[] bArr) {
        h hVar = new h(0);
        hVar.i(bArr, bArr.length, false);
        hVar.a();
        return hVar.g()[0];
    }
}
