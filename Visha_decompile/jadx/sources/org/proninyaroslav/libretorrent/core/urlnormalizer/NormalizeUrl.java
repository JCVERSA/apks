package org.proninyaroslav.libretorrent.core.urlnormalizer;

import androidx.webkit.ProxyConfig;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.util.HashMap;

public class NormalizeUrl {
    public static final HashMap a;

    public static class Options {
        public boolean a = true;
        public String b = ProxyConfig.MATCH_HTTP;
        public boolean c = true;
        public String[] d = {"utm_\\w+"};
        public boolean e = true;
        public String[] f = new String[0];
        public boolean g = true;
        public boolean h = true;
        public boolean i = false;
        public boolean j = false;
        public boolean k = false;
        public boolean l = false;
        public boolean m = true;
    }

    static {
        HashMap map = new HashMap();
        a = map;
        map.put(ProxyConfig.MATCH_HTTP, 80);
        map.put(ProxyConfig.MATCH_HTTPS, Integer.valueOf(TranSceneConfig.SCENE_TYPE_GAME_FF_KILL));
        map.put("ftp", 21);
    }
}
