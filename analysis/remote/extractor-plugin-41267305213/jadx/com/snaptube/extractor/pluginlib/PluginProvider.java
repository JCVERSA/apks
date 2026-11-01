package com.snaptube.extractor.pluginlib;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultRenderersFactory;
import com.snaptube.extractor.pluginlib.common.AvailabilityChecker;
import com.snaptube.extractor.pluginlib.sites.DeezerVideoExtractor;
import com.snaptube.extractor.pluginlib.sites.Facebook;
import com.snaptube.extractor.pluginlib.sites.GoogleSearchVideoExtractor;
import com.snaptube.extractor.pluginlib.sites.ShazamVideoExtractor;
import com.snaptube.extractor.pluginlib.sites.TidalVideoExtractor;
import com.snaptube.extractor.pluginlib.sites.Youtube;
import com.snaptube.extractor.pluginlib.utils.PluginContextUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import o.af3;
import o.b00;
import o.b64;
import o.bb9;
import o.bd3;
import o.e13;
import o.fc3;
import o.g73;
import o.ha3;
import o.hc1;
import o.hd2;
import o.hi7;
import o.id8;
import o.im3;
import o.kd3;
import o.kf1;
import o.ld2;
import o.ma3;
import o.ma9;
import o.mg5;
import o.nt3;
import o.pa3;
import o.pn;
import o.q83;
import o.qk6;
import o.ro7;
import o.ui3;
import o.um8;
import o.v58;
import o.w06;
import o.wc2;
import o.wc3;
import o.x06;
import o.xm3;
import o.yj7;
import o.zg3;
import o.zm8;

public class PluginProvider {
    private static final String SITE_TYPE_ALL = "all";
    private static final String SITE_TYPE_OWN = "own";
    private static final Map<String, fc3> sExtractors = new HashMap();
    private static boolean sIsInited;
    private static volatile ui3 sVideoAudioMuxWrapper;

    public class a implements xm3.c {
        public final Context a;
        public final ld2 b;

        public a(Context context, ld2 ld2Var) {
            this.a = context;
            this.b = ld2Var;
        }

        @Override
        public Object a(Class cls) {
            if (cls == ha3.class) {
                return new pn();
            }
            if (cls == ma3.class) {
                return AvailabilityChecker.with(this.a);
            }
            if (cls == kf1.class) {
                return new bb9();
            }
            if (cls == zg3.class) {
                return qk6.k();
            }
            if (cls == af3.class) {
                return this.b;
            }
            if (cls == kd3.class) {
                return new hd2();
            }
            if (cls == bd3.class) {
                return new nt3();
            }
            if (cls == pa3.class) {
                return b00.k();
            }
            if (cls == wc3.class) {
                return q83.i();
            }
            return null;
        }
    }

    public PluginProvider() {
        init(PluginContextUtil.getAppContext());
    }

    public static void a() {
        lambda$preloadYouTubeJsCode$0();
    }

    public static void b() {
        triggerYouTubeJsCodeDownload();
    }

    public static void init(Context context) {
        if (sIsInited) {
            return;
        }
        sIsInited = true;
        xm3.d().j(new a(context, new ld2()));
        preloadYouTubeJsCode();
    }

    private boolean isUnSupportedVersion(Context context) {
        int iA = um8.a(context);
        return (iA > 0 && iA <= 4665010) || iA == 4712410;
    }

    private static void lambda$preloadYouTubeJsCode$0() {
        wc2.a(new x06());
    }

    private static void preloadYouTubeJsCode() {
        new Handler(Looper.getMainLooper()).postDelayed(new w06(), DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    }

    private static void triggerYouTubeJsCodeDownload() {
        if (xm3.d().g().h()) {
            try {
                com.snaptube.extractor.pluginlib.sites.youtube.a.i().k("jNQXAC9IVRw");
            } catch (Throwable unused) {
            }
        }
    }

    public fc3 getExtractor() {
        return getExtractor(SITE_TYPE_ALL);
    }

    public fc3 getExtractor(String str) {
        Map<String, fc3> map = sExtractors;
        fc3 fc3Var = map.get(str);
        if (fc3Var == null) {
            synchronized (this) {
                try {
                    fc3Var = map.get(str);
                    if (fc3Var == null) {
                        LinkedList linkedList = new LinkedList();
                        if (!isUnSupportedVersion(PluginContextUtil.getAppContext()) && !SITE_TYPE_OWN.equals(str)) {
                            Youtube youtube = new Youtube();
                            b64 b64Var = new b64();
                            hc1 hc1Var = new hc1();
                            linkedList.add(youtube);
                            linkedList.add(new Facebook());
                            linkedList.add(new v58());
                            linkedList.add(b64Var);
                            linkedList.add(hc1Var);
                            if (g73.f()) {
                                linkedList.add(new ShazamVideoExtractor());
                                linkedList.add(new ro7());
                                linkedList.add(new DeezerVideoExtractor());
                                linkedList.add(new TidalVideoExtractor());
                            }
                            linkedList.add(new ma9());
                            linkedList.add(new hi7());
                            linkedList.add(new zm8());
                            linkedList.add(new id8(youtube, hc1Var));
                            linkedList.add(new mg5());
                            linkedList.add(new im3());
                            linkedList.add(new GoogleSearchVideoExtractor(youtube));
                            linkedList.add(new e13(new ExtractorWrapper(new ArrayList(linkedList))));
                            linkedList.add(new yj7());
                        }
                        ExtractorWrapper extractorWrapper = new ExtractorWrapper(linkedList);
                        map.put(str, extractorWrapper);
                        fc3Var = extractorWrapper;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return fc3Var;
    }

    public ui3 getVideoAudioMux() {
        ui3 videoAudioMuxImpl = sVideoAudioMuxWrapper;
        if (videoAudioMuxImpl == null) {
            synchronized (this) {
                try {
                    if (sVideoAudioMuxWrapper == null) {
                        videoAudioMuxImpl = new VideoAudioMuxImpl();
                        sVideoAudioMuxWrapper = videoAudioMuxImpl;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return videoAudioMuxImpl;
    }
}
