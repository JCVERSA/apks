package com.wandoujia.download.utils;

import com.snaptube.extractor.pluginlib.models.Format;
import java.util.HashMap;
import kotlin.b;
import o.or3;
import o.t14;
import o.xf8;

public final class DownloadExtraParser {
    public final String a;
    public final t14 b = b.b(new DownloadExtraParser$extraMap$2(this));

    public DownloadExtraParser(String str) {
        this.a = str;
    }

    public static final String a(DownloadExtraParser downloadExtraParser) {
        return downloadExtraParser.a;
    }

    public final HashMap b() {
        return (HashMap) this.b.getValue();
    }

    public final String c(String str) {
        Object obj;
        or3.f(str, "key");
        HashMap mapB = b();
        if (mapB == null || (obj = mapB.get(str)) == null) {
            return null;
        }
        return (String) (obj instanceof String ? obj : null);
    }

    public final xf8 d() {
        String strC = c("itag");
        String strC2 = c("video_playback_config");
        String strC3 = c(Format.Fields.LAST_MODIFIED);
        if (strC == null || strC.length() == 0 || strC2 == null || strC2.length() == 0 || strC3 == null || strC3.length() == 0) {
            return null;
        }
        return new xf8(strC, strC3, strC2);
    }
}
