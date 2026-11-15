package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class uA {

    public final b f19658a;

    public final List f19659b;

    public final a f19660c;

    static final class EjP extends Exception {
        EjP(String str) {
            super(str);
        }
    }

    static final class a {

        final int f19661a;

        final String f19662b;

        final String f19663c;

        final int f19664d;

        final int f19665e;

        final String f19666f;

        final List f19667g;

        private a(int i10, String str, String str2, int i11, int i12, String str3, List list) {
            this.f19661a = i10;
            this.f19662b = str;
            this.f19663c = str2;
            this.f19664d = i11;
            this.f19665e = i12;
            this.f19666f = str3;
            this.f19667g = list;
        }

        static a a(b bVar, List list) throws EjP {
            String str;
            int i10;
            int i11;
            int iIndexOf = bVar.f19669b.indexOf(UrlUtils.QUESTION_MARK);
            if (iIndexOf == -1) {
                throw new EjP("path format error, path: " + bVar.f19669b);
            }
            ArrayList arrayList = new ArrayList();
            String str2 = null;
            String strDecode = null;
            String strDecode2 = null;
            int i12 = 0;
            for (String str3 : bVar.f19669b.substring(iIndexOf + 1).split(UrlUtils.AND_MARK)) {
                String[] strArrSplit = str3.split(UrlUtils.EQUAL_MARK);
                if (strArrSplit.length == 2) {
                    if ("rk".equals(strArrSplit[0])) {
                        strDecode = Uri.decode(strArrSplit[1]);
                    } else if (CampaignEx.JSON_KEY_AD_K.equals(strArrSplit[0])) {
                        strDecode2 = Uri.decode(strArrSplit[1]);
                    } else if (strArrSplit[0].startsWith(TmcStartParams.KEY_URL_SHORT)) {
                        arrayList.add(Uri.decode(strArrSplit[1]));
                    } else if ("f".equals(strArrSplit[0]) && h6.a.t(strArrSplit[1]) == 1) {
                        i12 = 1;
                    }
                }
            }
            if (TextUtils.isEmpty(strDecode) || TextUtils.isEmpty(strDecode2)) {
                throw new EjP("rawKey or key is empty, path: " + bVar.f19669b);
            }
            if (list != null) {
                Iterator it = list.iterator();
                i11 = 0;
                int i13 = 0;
                while (it.hasNext()) {
                    c cVar = (c) it.next();
                    if (cVar != null && "Range".equalsIgnoreCase(cVar.f19671a)) {
                        int iIndexOf2 = cVar.f19672b.indexOf(UrlUtils.EQUAL_MARK);
                        if (iIndexOf2 == -1) {
                            throw new EjP("Range format error, Range: " + cVar.f19672b);
                        }
                        if (!"bytes".equalsIgnoreCase(cVar.f19672b.substring(0, iIndexOf2).trim())) {
                            throw new EjP("Range format error, Range: " + cVar.f19672b);
                        }
                        String strSubstring = cVar.f19672b.substring(iIndexOf2 + 1);
                        if (strSubstring.contains(",")) {
                            throw new EjP("Range format error, Range: " + cVar.f19672b);
                        }
                        int iIndexOf3 = strSubstring.indexOf("-");
                        if (iIndexOf3 == -1) {
                            throw new EjP("Range format error, Range: " + cVar.f19672b);
                        }
                        String strTrim = strSubstring.substring(0, iIndexOf3).trim();
                        String strTrim2 = strSubstring.substring(iIndexOf3 + 1).trim();
                        try {
                            if (strTrim.length() > 0) {
                                i11 = Integer.parseInt(strTrim);
                            }
                            if (strTrim2.length() > 0 && i11 > (i13 = Integer.parseInt(strTrim2))) {
                                throw new EjP("Range format error, Range: " + cVar.f19672b);
                            }
                            str2 = cVar.f19672b;
                        } catch (NumberFormatException unused) {
                            throw new EjP("Range format error, Range: " + cVar.f19672b);
                        }
                    }
                }
                i10 = i13;
                str = str2;
            } else {
                str = null;
                i10 = 0;
                i11 = 0;
            }
            if (!arrayList.isEmpty()) {
                return new a(i12, strDecode, strDecode2, i11, i10, str, arrayList);
            }
            throw new EjP("no url found: path: " + bVar.f19669b);
        }

        public String toString() {
            return "Extra{flag=" + this.f19661a + ", rawKey='" + this.f19662b + "', key='" + this.f19663c + "', from=" + this.f19664d + ", to=" + this.f19665e + ", urls=" + this.f19667g + '}';
        }
    }

    static final class b {

        final String f19668a;

        final String f19669b;

        final String f19670c;

        private b(String str, String str2, String str3) {
            this.f19668a = str;
            this.f19669b = str2;
            this.f19670c = str3;
        }

        static b a(String str) throws EjP {
            int iIndexOf = str.indexOf(32);
            if (iIndexOf == -1) {
                throw new EjP("request line format error, line: ".concat(str));
            }
            int iLastIndexOf = str.lastIndexOf(32);
            if (iLastIndexOf <= iIndexOf) {
                throw new EjP("request line format error, line: ".concat(str));
            }
            String strTrim = str.substring(0, iIndexOf).trim();
            String strTrim2 = str.substring(iIndexOf + 1, iLastIndexOf).trim();
            String strTrim3 = str.substring(iLastIndexOf + 1).trim();
            if (strTrim.length() == 0 || strTrim2.length() == 0 || strTrim3.length() == 0) {
                throw new EjP("request line format error, line: ".concat(str));
            }
            return new b(strTrim, strTrim2, strTrim3);
        }

        public String toString() {
            return "RequestLine{method='" + this.f19668a + "', path='" + this.f19669b + "', version='" + this.f19670c + "'}";
        }
    }

    public static final class c {

        public final String f19671a;

        public final String f19672b;

        public c(String str, String str2) {
            this.f19671a = str;
            this.f19672b = str2;
        }

        static c a(String str) throws EjP {
            int iIndexOf = str.indexOf(":");
            if (iIndexOf == -1) {
                throw new EjP("request header format error, header: ".concat(str));
            }
            String strTrim = str.substring(0, iIndexOf).trim();
            String strTrim2 = str.substring(iIndexOf + 1).trim();
            if (strTrim.length() == 0 || strTrim2.length() == 0) {
                throw new EjP("request header format error, header: ".concat(str));
            }
            return new c(strTrim, strTrim2);
        }

        public String toString() {
            return "Header{name='" + this.f19671a + "', value='" + this.f19672b + "'}";
        }
    }

    public uA(b bVar, List list, a aVar) {
        this.f19658a = bVar;
        this.f19659b = list;
        this.f19660c = aVar;
    }

    public static uA a(InputStream inputStream) throws EjP, IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, h6.a.f61295b));
        ArrayList arrayList = new ArrayList();
        b bVarA = null;
        while (true) {
            String line = bufferedReader.readLine();
            if (TextUtils.isEmpty(line)) {
                break;
            }
            String strTrim = line.trim();
            if (bVarA == null) {
                bVarA = b.a(strTrim);
            } else {
                arrayList.add(c.a(strTrim));
            }
        }
        if (bVarA != null) {
            return new uA(bVarA, arrayList, a.a(bVarA, arrayList));
        }
        throw new EjP("request line is null");
    }

    public String toString() {
        return "Request{requestLine=" + this.f19658a + ", headers=" + this.f19659b + ", extra=" + this.f19660c + '}';
    }
}
