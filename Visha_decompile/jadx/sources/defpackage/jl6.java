package defpackage;

import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;

public final class jl6 {
    public static final jl6 a = new jl6();

    public final String a(String str) {
        if (str == null || j1a.o0(str)) {
            LogUtils.O("UriParseHelper", "extractMediaLibraryIdFromUrl: input url is null or blank");
            return null;
        }
        String string = j1a.i1(str).toString();
        LogUtils.i("UriParseHelper", "extractMediaLibraryIdFromUrl: url=" + string);
        String strU0 = j1a.U0(string, '#', string);
        String strC = j1a.W(strU0, '?', false, 2, null) ? c(j1a.W0(strU0, '?', null, 2, null)) : null;
        if (strC != null && !j1a.o0(strC)) {
            LogUtils.v("UriParseHelper", "extractMediaLibraryIdFromUrl: got from fragment=" + strC);
            return strC;
        }
        String strC2 = j1a.W(string, '?', false, 2, null) ? c(j1a.W0(string, '?', null, 2, null)) : null;
        if (strC2 == null || j1a.o0(strC2)) {
            LogUtils.O("UriParseHelper", "extractMediaLibraryIdFromUrl: mediaLibraryId not found");
            return null;
        }
        LogUtils.v("UriParseHelper", "extractMediaLibraryIdFromUrl: got from query=" + strC2);
        return strC2;
    }

    public final String b(String str) {
        int i;
        if (str == null || j1a.o0(str)) {
            Log.w("UriParseHelper", "getCompleteShareUrl: input uri is null or blank");
            return null;
        }
        int iM0 = j1a.m0(str, "share_url=", 0, true, 2, null);
        if (iM0 < 0 || (i = iM0 + 10) >= str.length()) {
            return null;
        }
        String strSubstring = str.substring(i);
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final String c(String str) {
        String strSubstring;
        String strDecode;
        int i;
        if (str == null || j1a.o0(str)) {
            return null;
        }
        for (String str2 : j1a.O0(str, new String[]{"&"}, false, 0, 6, null)) {
            if (!j1a.o0(str2)) {
                int iL0 = j1a.l0(str2, '=', 0, false, 6, null);
                if (iL0 >= 0) {
                    strSubstring = str2.substring(0, iL0);
                    y45.i(strSubstring, "substring(...)");
                } else {
                    strSubstring = str2;
                }
                if (iL0 < 0 || (i = iL0 + 1) > str2.length() - 1) {
                    strDecode = "";
                } else {
                    strDecode = str2.substring(i);
                    y45.i(strDecode, "substring(...)");
                }
                if (g1a.E(strSubstring, "mediaLibraryId", true)) {
                    try {
                        strDecode = URLDecoder.decode(strDecode, StandardCharsets.UTF_8.name());
                    } catch (Exception e) {
                        LogUtils.l("UriParseHelper", "parseQueryForMediaLibraryId: decode exception=" + e.getMessage());
                    }
                    if (j1a.o0(strDecode)) {
                        return null;
                    }
                    return strDecode;
                }
            }
        }
        return null;
    }
}
