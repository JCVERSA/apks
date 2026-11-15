package com.cloud.tupdate.net.utils;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.g1a;
import defpackage.y45;
import java.util.Map;
import java.util.TimeZone;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\u0007\u001a\u00020\u00062\u0010\u0010\u0005\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ%\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\t¢\u0006\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/cloud/tupdate/net/utils/CollectionUtil;", "", MethodDecl.initName, "()V", "", "map", "", "d", "(Ljava/util/Map;)Z", "", "info", "c", "(Ljava/lang/String;)Z", "", "b", "(Ljava/util/Map;)Ljava/lang/String;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()Ljava/lang/String;", "Ljava/lang/String;", "zoneStr", "tupdate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class CollectionUtil {
    public static final CollectionUtil a = new CollectionUtil();

    public static String zoneStr = "";

    private CollectionUtil() {
    }

    public final String a() {
        if (!c(zoneStr)) {
            String str = zoneStr;
            y45.g(str);
            return str;
        }
        TimeZone timeZone = TimeZone.getDefault();
        String id = timeZone.getID();
        if (c(id)) {
            String displayName = timeZone.getDisplayName(false, 0);
            if (c(displayName)) {
                zoneStr = "";
                id = "unknown";
            } else {
                zoneStr = displayName;
                id = displayName;
            }
            y45.i(id, "{\n            val name =…e\n            }\n        }");
        } else {
            zoneStr = id;
            y45.i(id, "{\n            zoneStr = …\n            id\n        }");
        }
        return id;
    }

    public final String b(Map map) {
        if (map == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (Map.Entry entry : map.entrySet()) {
            stringBuffer.append(((String) entry.getKey()) + '=' + entry.getValue());
            stringBuffer.append("&");
        }
        String string = stringBuffer.toString();
        y45.i(string, "sb.toString()");
        if (!g1a.D(string, "&", false, 2, null)) {
            return string;
        }
        String strSubstring = string.substring(0, string.length() - 2);
        y45.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final boolean c(String info) {
        return info == null || info.length() == 0;
    }

    public final boolean d(Map map) {
        return (map == null || map.isEmpty()) ? false : true;
    }
}
